	.file	"Storable.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D PERL_CORE -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX_X64 Storable.c
# -mtune=generic -march=x86-64 -g -fverbose-asm -fno-strict-aliasing
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
	.local	local_patches
	.comm	local_patches,16,16
	.local	Context_ptr
	.comm	Context_ptr,8,8
	.section	.rodata
	.type	old_magicstr, @object
	.size	old_magicstr, 11
old_magicstr:
	.string	"perl-store"
	.type	magicstr, @object
	.size	magicstr, 5
magicstr:
	.string	"pst0"
	.type	byteorderstr, @object
	.size	byteorderstr, 9
byteorderstr:
	.byte	49
	.byte	50
	.byte	51
	.byte	52
	.byte	53
	.byte	54
	.byte	55
	.byte	56
	.byte	0
	.data
	.align 32
	.type	sv_store, @object
	.size	sv_store, 64
sv_store:
	.quad	store_ref
	.quad	store_scalar
	.quad	store_array
	.quad	store_hash
	.quad	store_tied
	.quad	store_tied_item
	.quad	store_code
	.quad	store_other
	.align 32
	.type	sv_old_retrieve, @object
	.size	sv_old_retrieve, 224
sv_old_retrieve:
	.quad	0
	.quad	retrieve_lscalar
	.quad	old_retrieve_array
	.quad	old_retrieve_hash
	.quad	retrieve_ref
	.quad	retrieve_undef
	.quad	retrieve_integer
	.quad	retrieve_double
	.quad	retrieve_byte
	.quad	retrieve_netint
	.quad	retrieve_scalar
	.quad	retrieve_tied_array
	.quad	retrieve_tied_hash
	.quad	retrieve_tied_scalar
	.quad	retrieve_other
	.quad	retrieve_other
	.quad	retrieve_other
	.quad	retrieve_other
	.quad	retrieve_other
	.quad	retrieve_other
	.quad	retrieve_other
	.quad	retrieve_other
	.quad	retrieve_other
	.quad	retrieve_other
	.quad	retrieve_other
	.quad	retrieve_other
	.quad	retrieve_other
	.quad	retrieve_other
	.align 32
	.type	sv_retrieve, @object
	.size	sv_retrieve, 224
sv_retrieve:
	.quad	0
	.quad	retrieve_lscalar
	.quad	retrieve_array
	.quad	retrieve_hash
	.quad	retrieve_ref
	.quad	retrieve_undef
	.quad	retrieve_integer
	.quad	retrieve_double
	.quad	retrieve_byte
	.quad	retrieve_netint
	.quad	retrieve_scalar
	.quad	retrieve_tied_array
	.quad	retrieve_tied_hash
	.quad	retrieve_tied_scalar
	.quad	retrieve_sv_undef
	.quad	retrieve_sv_yes
	.quad	retrieve_sv_no
	.quad	retrieve_blessed
	.quad	retrieve_idx_blessed
	.quad	retrieve_hook
	.quad	retrieve_overloaded
	.quad	retrieve_tied_key
	.quad	retrieve_tied_idx
	.quad	retrieve_utf8str
	.quad	retrieve_lutf8str
	.quad	retrieve_flag_hash
	.quad	retrieve_code
	.quad	retrieve_other
	.section	.rodata
.LC0:
	.string	"Storable::Cxt"
	.text
	.type	init_perinterp, @function
init_perinterp:
.LFB2:
	.file 1 "Storable.c"
	.loc 1 1165 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	.loc 1 1166 0
	movq	Context_ptr(%rip), %rax	# Context_ptr, tmp62
	movq	%rax, -24(%rbp)	# tmp62, cxt
.LBB2:
	movl	$255, %edi	#,
	call	Perl_newSV	#
	movq	%rax, -16(%rbp)	# tmp63, self
	movq	-16(%rbp), %rax	# self, tmp64
	movq	%rax, %rdi	# tmp64,
	call	Perl_newRV_noinc	#
	movq	%rax, -8(%rbp)	# tmp65, my_sv
	movl	$1, %esi	#,
	movl	$.LC0, %edi	#,
	call	Perl_gv_stashpv	#
	movq	%rax, %rdx	#, D.21937
	movq	-8(%rbp), %rax	# my_sv, tmp66
	movq	%rdx, %rsi	# D.21937,
	movq	%rax, %rdi	# tmp66,
	call	Perl_sv_bless	#
	movq	-16(%rbp), %rax	# self, tmp67
	movq	(%rax), %rax	# self_2->sv_any, D.21938
	movq	(%rax), %rax	# MEM[(struct XPV *)_5].xpv_pv, tmp68
	movq	%rax, -24(%rbp)	# tmp68, cxt
	movq	-24(%rbp), %rax	# cxt, tmp69
	movl	$256, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp69,
	call	memset	#
	movq	-24(%rbp), %rax	# cxt, tmp70
	movq	-8(%rbp), %rdx	# my_sv, tmp71
	movq	%rdx, 248(%rax)	# tmp71, cxt_6->my_sv
.LBE2:
	movq	-24(%rbp), %rax	# cxt, tmp73
	movq	%rax, Context_ptr(%rip)	# tmp73, Context_ptr
	.loc 1 1168 0
	movq	-24(%rbp), %rax	# cxt, tmp74
	movl	$0, 80(%rax)	#, cxt_6->netorder
	.loc 1 1169 0
	movq	-24(%rbp), %rax	# cxt, tmp75
	movl	$-1, 88(%rax)	#, cxt_6->forgive_me
	.loc 1 1170 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	init_perinterp, .-init_perinterp
	.type	reset_context, @function
reset_context:
.LFB3:
	.loc 1 1179 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# cxt, cxt
	.loc 1 1180 0
	movq	-8(%rbp), %rax	# cxt, tmp61
	movl	$0, (%rax)	#, cxt_1(D)->entry
	.loc 1 1181 0
	movq	-8(%rbp), %rax	# cxt, tmp62
	movl	$0, 112(%rax)	#, cxt_1(D)->s_dirty
	.loc 1 1182 0
	movq	-8(%rbp), %rax	# cxt, tmp63
	movl	4(%rax), %eax	# cxt_1(D)->optype, D.21941
	andl	$-4, %eax	#, D.21941
	movl	%eax, %edx	# D.21941, D.21941
	movq	-8(%rbp), %rax	# cxt, tmp64
	movl	%edx, 4(%rax)	# D.21941, cxt_1(D)->optype
	.loc 1 1183 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	reset_context, .-reset_context
	.type	init_store_context, @function
init_store_context:
.LFB4:
	.loc 1 1196 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# cxt, cxt
	movq	%rsi, -16(%rbp)	# f, f
	movl	%edx, -20(%rbp)	# optype, optype
	movl	%ecx, -24(%rbp)	# network_order, network_order
	.loc 1 1199 0
	movq	-8(%rbp), %rax	# cxt, tmp71
	movl	-24(%rbp), %edx	# network_order, tmp72
	movl	%edx, 80(%rax)	# tmp72, cxt_1(D)->netorder
	.loc 1 1200 0
	movq	-8(%rbp), %rax	# cxt, tmp73
	movl	$-1, 88(%rax)	#, cxt_1(D)->forgive_me
	.loc 1 1201 0
	movq	-8(%rbp), %rax	# cxt, tmp74
	movl	$-1, 92(%rax)	#, cxt_1(D)->deparse
	.loc 1 1202 0
	movq	-8(%rbp), %rax	# cxt, tmp75
	movq	$0, 96(%rax)	#, cxt_1(D)->eval
	.loc 1 1203 0
	movq	-8(%rbp), %rax	# cxt, tmp76
	movl	$-1, 104(%rax)	#, cxt_1(D)->canonical
	.loc 1 1204 0
	movq	-8(%rbp), %rax	# cxt, tmp77
	movq	$-1, 64(%rax)	#, cxt_1(D)->tagnum
	.loc 1 1205 0
	movq	-8(%rbp), %rax	# cxt, tmp78
	movq	$-1, 72(%rax)	#, cxt_1(D)->classnum
	.loc 1 1206 0
	movq	-8(%rbp), %rax	# cxt, tmp79
	movq	-16(%rbp), %rdx	# f, tmp80
	movq	%rdx, 216(%rax)	# tmp80, cxt_1(D)->fio
	.loc 1 1207 0
	movq	-8(%rbp), %rax	# cxt, tmp81
	movl	-20(%rbp), %edx	# optype, tmp82
	movl	%edx, 4(%rax)	# tmp82, cxt_1(D)->optype
	.loc 1 1208 0
	movq	-8(%rbp), %rax	# cxt, tmp83
	movl	$1, (%rax)	#, cxt_1(D)->entry
	.loc 1 1222 0
	call	Perl_newHV	#
	movq	-8(%rbp), %rdx	# cxt, tmp84
	movq	%rax, 8(%rdx)	# D.21942, cxt_1(D)->hseen
	.loc 1 1223 0
	movq	-8(%rbp), %rax	# cxt, tmp85
	movq	8(%rax), %rax	# cxt_1(D)->hseen, D.21942
	movq	-8(%rbp), %rdx	# cxt, tmp86
	movq	8(%rdx), %rdx	# cxt_1(D)->hseen, D.21942
	movl	12(%rdx), %edx	# _7->sv_flags, D.21943
	andl	$-536870913, %edx	#, D.21943
	movl	%edx, 12(%rax)	# D.21943, _6->sv_flags
	.loc 1 1243 0
	movq	-8(%rbp), %rax	# cxt, tmp87
	movq	8(%rax), %rax	# cxt_1(D)->hseen, D.21942
	movq	(%rax), %rax	# _10->sv_any, D.21944
	movq	$4095, 16(%rax)	#, _11->xhv_max
	.loc 1 1254 0
	call	Perl_newHV	#
	movq	-8(%rbp), %rdx	# cxt, tmp88
	movq	%rax, 40(%rdx)	# D.21942, cxt_1(D)->hclass
	.loc 1 1257 0
	movq	-8(%rbp), %rax	# cxt, tmp89
	movq	40(%rax), %rax	# cxt_1(D)->hclass, D.21942
	movq	(%rax), %rax	# _13->sv_any, D.21944
	movq	$4095, 16(%rax)	#, _14->xhv_max
	.loc 1 1269 0
	call	Perl_newHV	#
	movq	-8(%rbp), %rdx	# cxt, tmp90
	movq	%rax, 56(%rdx)	# D.21942, cxt_1(D)->hook
	.loc 1 1278 0
	call	Perl_newAV	#
	movq	-8(%rbp), %rdx	# cxt, tmp91
	movq	%rax, 16(%rdx)	# D.21945, cxt_1(D)->hook_seen
	.loc 1 1279 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	init_store_context, .-init_store_context
	.type	clean_store_context, @function
clean_store_context:
.LFB5:
	.loc 1 1287 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# cxt, cxt
	.loc 1 1298 0
	movq	-56(%rbp), %rax	# cxt, tmp71
	movq	8(%rax), %rax	# cxt_1(D)->hseen, D.21946
	testq	%rax, %rax	# D.21946
	je	.L5	#,
	.loc 1 1299 0
	movq	-56(%rbp), %rax	# cxt, tmp72
	movq	8(%rax), %rax	# cxt_1(D)->hseen, D.21946
	movq	%rax, %rdi	# D.21946,
	call	Perl_hv_iterinit	#
	.loc 1 1300 0
	jmp	.L6	#
.L7:
	.loc 1 1301 0
	movq	-40(%rbp), %rax	# he, tmp73
	movq	$PL_sv_undef, 16(%rax)	#, he_5->hent_val
.L6:
	.loc 1 1300 0 discriminator 1
	movq	-56(%rbp), %rax	# cxt, tmp74
	movq	8(%rax), %rax	# cxt_1(D)->hseen, D.21946
	movq	%rax, %rdi	# D.21946,
	call	Perl_hv_iternext	#
	movq	%rax, -40(%rbp)	# tmp75, he
	cmpq	$0, -40(%rbp)	#, he
	jne	.L7	#,
.L5:
	.loc 1 1304 0
	movq	-56(%rbp), %rax	# cxt, tmp76
	movq	40(%rax), %rax	# cxt_1(D)->hclass, D.21946
	testq	%rax, %rax	# D.21946
	je	.L8	#,
	.loc 1 1305 0
	movq	-56(%rbp), %rax	# cxt, tmp77
	movq	40(%rax), %rax	# cxt_1(D)->hclass, D.21946
	movq	%rax, %rdi	# D.21946,
	call	Perl_hv_iterinit	#
	.loc 1 1306 0
	jmp	.L9	#
.L10:
	.loc 1 1307 0
	movq	-40(%rbp), %rax	# he, tmp78
	movq	$PL_sv_undef, 16(%rax)	#, he_9->hent_val
.L9:
	.loc 1 1306 0 discriminator 1
	movq	-56(%rbp), %rax	# cxt, tmp79
	movq	40(%rax), %rax	# cxt_1(D)->hclass, D.21946
	movq	%rax, %rdi	# D.21946,
	call	Perl_hv_iternext	#
	movq	%rax, -40(%rbp)	# tmp80, he
	cmpq	$0, -40(%rbp)	#, he
	jne	.L10	#,
.L8:
	.loc 1 1320 0
	movq	-56(%rbp), %rax	# cxt, tmp81
	movq	8(%rax), %rax	# cxt_1(D)->hseen, D.21946
	testq	%rax, %rax	# D.21946
	je	.L11	#,
.LBB3:
	.loc 1 1321 0
	movq	-56(%rbp), %rax	# cxt, tmp82
	movq	8(%rax), %rax	# cxt_1(D)->hseen, tmp83
	movq	%rax, -32(%rbp)	# tmp83, hseen
	.loc 1 1322 0
	movq	-56(%rbp), %rax	# cxt, tmp84
	movq	$0, 8(%rax)	#, cxt_1(D)->hseen
	.loc 1 1323 0
	movq	-32(%rbp), %rax	# hseen, tmp85
	movq	%rax, %rdi	# tmp85,
	call	Perl_hv_undef	#
	.loc 1 1324 0
	movq	-32(%rbp), %rax	# hseen, tmp86
	movq	%rax, %rdi	# tmp86,
	call	Perl_sv_free	#
.L11:
.LBE3:
	.loc 1 1327 0
	movq	-56(%rbp), %rax	# cxt, tmp87
	movq	40(%rax), %rax	# cxt_1(D)->hclass, D.21946
	testq	%rax, %rax	# D.21946
	je	.L12	#,
.LBB4:
	.loc 1 1328 0
	movq	-56(%rbp), %rax	# cxt, tmp88
	movq	40(%rax), %rax	# cxt_1(D)->hclass, tmp89
	movq	%rax, -24(%rbp)	# tmp89, hclass
	.loc 1 1329 0
	movq	-56(%rbp), %rax	# cxt, tmp90
	movq	$0, 40(%rax)	#, cxt_1(D)->hclass
	.loc 1 1330 0
	movq	-24(%rbp), %rax	# hclass, tmp91
	movq	%rax, %rdi	# tmp91,
	call	Perl_hv_undef	#
	.loc 1 1331 0
	movq	-24(%rbp), %rax	# hclass, tmp92
	movq	%rax, %rdi	# tmp92,
	call	Perl_sv_free	#
.L12:
.LBE4:
	.loc 1 1334 0
	movq	-56(%rbp), %rax	# cxt, tmp93
	movq	56(%rax), %rax	# cxt_1(D)->hook, D.21946
	testq	%rax, %rax	# D.21946
	je	.L13	#,
.LBB5:
	.loc 1 1335 0
	movq	-56(%rbp), %rax	# cxt, tmp94
	movq	56(%rax), %rax	# cxt_1(D)->hook, tmp95
	movq	%rax, -16(%rbp)	# tmp95, hook
	.loc 1 1336 0
	movq	-56(%rbp), %rax	# cxt, tmp96
	movq	$0, 56(%rax)	#, cxt_1(D)->hook
	.loc 1 1337 0
	movq	-16(%rbp), %rax	# hook, tmp97
	movq	%rax, %rdi	# tmp97,
	call	Perl_hv_undef	#
	.loc 1 1338 0
	movq	-16(%rbp), %rax	# hook, tmp98
	movq	%rax, %rdi	# tmp98,
	call	Perl_sv_free	#
.L13:
.LBE5:
	.loc 1 1341 0
	movq	-56(%rbp), %rax	# cxt, tmp99
	movq	16(%rax), %rax	# cxt_1(D)->hook_seen, D.21947
	testq	%rax, %rax	# D.21947
	je	.L14	#,
.LBB6:
	.loc 1 1342 0
	movq	-56(%rbp), %rax	# cxt, tmp100
	movq	16(%rax), %rax	# cxt_1(D)->hook_seen, tmp101
	movq	%rax, -8(%rbp)	# tmp101, hook_seen
	.loc 1 1343 0
	movq	-56(%rbp), %rax	# cxt, tmp102
	movq	$0, 16(%rax)	#, cxt_1(D)->hook_seen
	.loc 1 1344 0
	movq	-8(%rbp), %rax	# hook_seen, tmp103
	movq	%rax, %rdi	# tmp103,
	call	Perl_av_undef	#
	.loc 1 1345 0
	movq	-8(%rbp), %rax	# hook_seen, tmp104
	movq	%rax, %rdi	# tmp104,
	call	Perl_sv_free	#
.L14:
.LBE6:
	.loc 1 1348 0
	movq	-56(%rbp), %rax	# cxt, tmp105
	movl	$-1, 88(%rax)	#, cxt_1(D)->forgive_me
	.loc 1 1349 0
	movq	-56(%rbp), %rax	# cxt, tmp106
	movl	$-1, 92(%rax)	#, cxt_1(D)->deparse
	.loc 1 1350 0
	movq	-56(%rbp), %rax	# cxt, tmp107
	movq	96(%rax), %rax	# cxt_1(D)->eval, D.21948
	testq	%rax, %rax	# D.21948
	je	.L15	#,
	.loc 1 1351 0
	movq	-56(%rbp), %rax	# cxt, tmp108
	movq	96(%rax), %rax	# cxt_1(D)->eval, D.21948
	movq	%rax, %rdi	# D.21948,
	call	Perl_sv_free	#
.L15:
	.loc 1 1353 0
	movq	-56(%rbp), %rax	# cxt, tmp109
	movq	$0, 96(%rax)	#, cxt_1(D)->eval
	.loc 1 1354 0
	movq	-56(%rbp), %rax	# cxt, tmp110
	movl	$-1, 104(%rax)	#, cxt_1(D)->canonical
	.loc 1 1356 0
	movq	-56(%rbp), %rax	# cxt, tmp111
	movq	%rax, %rdi	# tmp111,
	call	reset_context	#
	.loc 1 1357 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	clean_store_context, .-clean_store_context
	.type	init_retrieve_context, @function
init_retrieve_context:
.LFB6:
	.loc 1 1365 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# cxt, cxt
	movl	%esi, -12(%rbp)	# optype, optype
	movl	%edx, -16(%rbp)	# is_tainted, is_tainted
	.loc 1 1377 0
	call	Perl_newHV	#
	movq	-8(%rbp), %rdx	# cxt, tmp64
	movq	%rax, 56(%rdx)	# D.21949, cxt_3(D)->hook
	.loc 1 1386 0
	movq	-8(%rbp), %rax	# cxt, tmp65
	movq	232(%rax), %rax	# cxt_3(D)->retrieve_vtbl, D.21950
	.loc 1 1387 0
	cmpq	$sv_old_retrieve, %rax	#, D.21950
	jne	.L17	#,
	.loc 1 1387 0 is_stmt 0 discriminator 1
	call	Perl_newHV	#
	jmp	.L18	#
.L17:
	.loc 1 1387 0 discriminator 2
	movl	$0, %eax	#, iftmp.0
.L18:
	.loc 1 1386 0 is_stmt 1
	movq	-8(%rbp), %rdx	# cxt, tmp66
	movq	%rax, 8(%rdx)	# iftmp.0, cxt_3(D)->hseen
	.loc 1 1389 0
	call	Perl_newAV	#
	movq	-8(%rbp), %rdx	# cxt, tmp67
	movq	%rax, 24(%rdx)	# D.21951, cxt_3(D)->aseen
	.loc 1 1390 0
	movq	-8(%rbp), %rax	# cxt, tmp68
	movq	$-1, 32(%rax)	#, cxt_3(D)->where_is_undef
	.loc 1 1391 0
	call	Perl_newAV	#
	movq	-8(%rbp), %rdx	# cxt, tmp69
	movq	%rax, 48(%rdx)	# D.21951, cxt_3(D)->aclass
	.loc 1 1392 0
	movq	-8(%rbp), %rax	# cxt, tmp70
	movq	$0, 64(%rax)	#, cxt_3(D)->tagnum
	.loc 1 1393 0
	movq	-8(%rbp), %rax	# cxt, tmp71
	movq	$0, 72(%rax)	#, cxt_3(D)->classnum
	.loc 1 1394 0
	movq	-8(%rbp), %rax	# cxt, tmp72
	movl	-12(%rbp), %edx	# optype, tmp73
	movl	%edx, 4(%rax)	# tmp73, cxt_3(D)->optype
	.loc 1 1395 0
	movq	-8(%rbp), %rax	# cxt, tmp74
	movl	-16(%rbp), %edx	# is_tainted, tmp75
	movl	%edx, 84(%rax)	# tmp75, cxt_3(D)->s_tainted
	.loc 1 1396 0
	movq	-8(%rbp), %rax	# cxt, tmp76
	movl	$1, (%rax)	#, cxt_3(D)->entry
	.loc 1 1403 0
	movq	-8(%rbp), %rax	# cxt, tmp77
	movl	$-1, 108(%rax)	#, cxt_3(D)->accept_future_minor
	.loc 1 1404 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	init_retrieve_context, .-init_retrieve_context
	.type	clean_retrieve_context, @function
clean_retrieve_context:
.LFB7:
	.loc 1 1412 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# cxt, cxt
	.loc 1 1417 0
	movq	-40(%rbp), %rax	# cxt, tmp63
	movq	24(%rax), %rax	# cxt_1(D)->aseen, D.21952
	testq	%rax, %rax	# D.21952
	je	.L20	#,
.LBB7:
	.loc 1 1418 0
	movq	-40(%rbp), %rax	# cxt, tmp64
	movq	24(%rax), %rax	# cxt_1(D)->aseen, tmp65
	movq	%rax, -32(%rbp)	# tmp65, aseen
	.loc 1 1419 0
	movq	-40(%rbp), %rax	# cxt, tmp66
	movq	$0, 24(%rax)	#, cxt_1(D)->aseen
	.loc 1 1420 0
	movq	-32(%rbp), %rax	# aseen, tmp67
	movq	%rax, %rdi	# tmp67,
	call	Perl_av_undef	#
	.loc 1 1421 0
	movq	-32(%rbp), %rax	# aseen, tmp68
	movq	%rax, %rdi	# tmp68,
	call	Perl_sv_free	#
.L20:
.LBE7:
	.loc 1 1423 0
	movq	-40(%rbp), %rax	# cxt, tmp69
	movq	$-1, 32(%rax)	#, cxt_1(D)->where_is_undef
	.loc 1 1425 0
	movq	-40(%rbp), %rax	# cxt, tmp70
	movq	48(%rax), %rax	# cxt_1(D)->aclass, D.21952
	testq	%rax, %rax	# D.21952
	je	.L21	#,
.LBB8:
	.loc 1 1426 0
	movq	-40(%rbp), %rax	# cxt, tmp71
	movq	48(%rax), %rax	# cxt_1(D)->aclass, tmp72
	movq	%rax, -24(%rbp)	# tmp72, aclass
	.loc 1 1427 0
	movq	-40(%rbp), %rax	# cxt, tmp73
	movq	$0, 48(%rax)	#, cxt_1(D)->aclass
	.loc 1 1428 0
	movq	-24(%rbp), %rax	# aclass, tmp74
	movq	%rax, %rdi	# tmp74,
	call	Perl_av_undef	#
	.loc 1 1429 0
	movq	-24(%rbp), %rax	# aclass, tmp75
	movq	%rax, %rdi	# tmp75,
	call	Perl_sv_free	#
.L21:
.LBE8:
	.loc 1 1432 0
	movq	-40(%rbp), %rax	# cxt, tmp76
	movq	56(%rax), %rax	# cxt_1(D)->hook, D.21953
	testq	%rax, %rax	# D.21953
	je	.L22	#,
.LBB9:
	.loc 1 1433 0
	movq	-40(%rbp), %rax	# cxt, tmp77
	movq	56(%rax), %rax	# cxt_1(D)->hook, tmp78
	movq	%rax, -16(%rbp)	# tmp78, hook
	.loc 1 1434 0
	movq	-40(%rbp), %rax	# cxt, tmp79
	movq	$0, 56(%rax)	#, cxt_1(D)->hook
	.loc 1 1435 0
	movq	-16(%rbp), %rax	# hook, tmp80
	movq	%rax, %rdi	# tmp80,
	call	Perl_hv_undef	#
	.loc 1 1436 0
	movq	-16(%rbp), %rax	# hook, tmp81
	movq	%rax, %rdi	# tmp81,
	call	Perl_sv_free	#
.L22:
.LBE9:
	.loc 1 1439 0
	movq	-40(%rbp), %rax	# cxt, tmp82
	movq	8(%rax), %rax	# cxt_1(D)->hseen, D.21953
	testq	%rax, %rax	# D.21953
	je	.L23	#,
.LBB10:
	.loc 1 1440 0
	movq	-40(%rbp), %rax	# cxt, tmp83
	movq	8(%rax), %rax	# cxt_1(D)->hseen, tmp84
	movq	%rax, -8(%rbp)	# tmp84, hseen
	.loc 1 1441 0
	movq	-40(%rbp), %rax	# cxt, tmp85
	movq	$0, 8(%rax)	#, cxt_1(D)->hseen
	.loc 1 1442 0
	movq	-8(%rbp), %rax	# hseen, tmp86
	movq	%rax, %rdi	# tmp86,
	call	Perl_hv_undef	#
	.loc 1 1443 0
	movq	-8(%rbp), %rax	# hseen, tmp87
	movq	%rax, %rdi	# tmp87,
	call	Perl_sv_free	#
.L23:
.LBE10:
	.loc 1 1452 0
	movq	-40(%rbp), %rax	# cxt, tmp88
	movl	$-1, 108(%rax)	#, cxt_1(D)->accept_future_minor
	.loc 1 1454 0
	movq	-40(%rbp), %rax	# cxt, tmp89
	movq	%rax, %rdi	# tmp89,
	call	reset_context	#
	.loc 1 1455 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	clean_retrieve_context, .-clean_retrieve_context
	.type	clean_context, @function
clean_context:
.LFB8:
	.loc 1 1463 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# cxt, cxt
	.loc 1 1468 0
	movq	-40(%rbp), %rax	# cxt, tmp64
	movl	116(%rax), %eax	# cxt_1(D)->membuf_ro, D.21954
	testl	%eax, %eax	# D.21954
	je	.L25	#,
.LBB11:
	.loc 1 1469 0
	movq	-40(%rbp), %rax	# cxt, tmp65
	movl	$0, 116(%rax)	#, cxt_1(D)->membuf_ro
	movq	-40(%rbp), %rax	# cxt, tmp66
	movq	-40(%rbp), %rdx	# cxt, tmp67
	movq	184(%rdx), %rcx	# cxt_1(D)->msaved, tmp68
	movq	%rcx, 152(%rax)	# tmp68, cxt_1(D)->membuf
	movq	192(%rdx), %rcx	# cxt_1(D)->msaved, tmp69
	movq	%rcx, 160(%rax)	# tmp69, cxt_1(D)->membuf
	movq	200(%rdx), %rcx	# cxt_1(D)->msaved, tmp70
	movq	%rcx, 168(%rax)	# tmp70, cxt_1(D)->membuf
	movq	208(%rdx), %rdx	# cxt_1(D)->msaved, tmp71
	movq	%rdx, 176(%rax)	# tmp71, cxt_1(D)->membuf
	movq	-40(%rbp), %rax	# cxt, tmp72
	movq	152(%rax), %rdx	# cxt_1(D)->membuf, tmp73
	movq	%rdx, -32(%rbp)	# tmp73, D.10517
	movq	160(%rax), %rdx	# cxt_1(D)->membuf, tmp74
	movq	%rdx, -24(%rbp)	# tmp74, D.10517
	movq	168(%rax), %rdx	# cxt_1(D)->membuf, tmp75
	movq	%rdx, -16(%rbp)	# tmp75, D.10517
	movq	176(%rax), %rax	# cxt_1(D)->membuf, tmp76
	movq	%rax, -8(%rbp)	# tmp76, D.10517
.L25:
.LBE11:
	.loc 1 1473 0
	movq	-40(%rbp), %rax	# cxt, tmp77
	movl	4(%rax), %eax	# cxt_1(D)->optype, D.21954
	andl	$2, %eax	#, D.21954
	testl	%eax, %eax	# D.21954
	je	.L26	#,
	.loc 1 1474 0
	movq	-40(%rbp), %rax	# cxt, tmp78
	movq	%rax, %rdi	# tmp78,
	call	clean_retrieve_context	#
	jmp	.L24	#
.L26:
	.loc 1 1475 0
	movq	-40(%rbp), %rax	# cxt, tmp79
	movl	4(%rax), %eax	# cxt_1(D)->optype, D.21954
	andl	$1, %eax	#, D.21954
	testl	%eax, %eax	# D.21954
	je	.L28	#,
	.loc 1 1476 0
	movq	-40(%rbp), %rax	# cxt, tmp80
	movq	%rax, %rdi	# tmp80,
	call	clean_store_context	#
	jmp	.L24	#
.L28:
	.loc 1 1478 0
	movq	-40(%rbp), %rax	# cxt, tmp81
	movq	%rax, %rdi	# tmp81,
	call	reset_context	#
.L24:
	.loc 1 1482 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	clean_context, .-clean_context
	.type	allocate_context, @function
allocate_context:
.LFB9:
	.loc 1 1491 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# parent_cxt, parent_cxt
.LBB12:
	.loc 1 1498 0
	movl	$255, %edi	#,
	call	Perl_newSV	#
	movq	%rax, -24(%rbp)	# tmp65, self
	movq	-24(%rbp), %rax	# self, tmp66
	movq	%rax, %rdi	# tmp66,
	call	Perl_newRV_noinc	#
	movq	%rax, -16(%rbp)	# tmp67, my_sv
	movl	$1, %esi	#,
	movl	$.LC0, %edi	#,
	call	Perl_gv_stashpv	#
	movq	%rax, %rdx	#, D.21955
	movq	-16(%rbp), %rax	# my_sv, tmp68
	movq	%rdx, %rsi	# D.21955,
	movq	%rax, %rdi	# tmp68,
	call	Perl_sv_bless	#
	movq	-24(%rbp), %rax	# self, tmp69
	movq	(%rax), %rax	# self_1->sv_any, D.21956
	movq	(%rax), %rax	# MEM[(struct XPV *)_4].xpv_pv, tmp70
	movq	%rax, -8(%rbp)	# tmp70, cxt
	movq	-8(%rbp), %rax	# cxt, tmp71
	movl	$256, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp71,
	call	memset	#
	movq	-8(%rbp), %rax	# cxt, tmp72
	movq	-16(%rbp), %rdx	# my_sv, tmp73
	movq	%rdx, 248(%rax)	# tmp73, cxt_5->my_sv
.LBE12:
	.loc 1 1499 0
	movq	-40(%rbp), %rax	# parent_cxt, tmp75
	movq	248(%rax), %rdx	# parent_cxt_7(D)->my_sv, D.21957
	movq	-8(%rbp), %rax	# cxt, tmp76
	movq	%rdx, 240(%rax)	# D.21957, cxt_5->prev
	.loc 1 1500 0
	movq	-8(%rbp), %rax	# cxt, tmp77
	movq	%rax, Context_ptr(%rip)	# tmp77, Context_ptr
	.loc 1 1504 0
	movq	-8(%rbp), %rax	# cxt, D.21958
	.loc 1 1505 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	allocate_context, .-allocate_context
	.type	free_context, @function
free_context:
.LFB10:
	.loc 1 1514 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# cxt, cxt
	.loc 1 1515 0
	movq	-24(%rbp), %rax	# cxt, tmp66
	movq	240(%rax), %rax	# cxt_2(D)->prev, D.21959
	testq	%rax, %rax	# D.21959
	je	.L32	#,
	.loc 1 1515 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# cxt, tmp67
	movq	240(%rax), %rax	# cxt_2(D)->prev, D.21959
	movq	(%rax), %rax	# _4->sv_any, D.21960
	movq	(%rax), %rax	# MEM[(struct XRV *)_5].xrv_rv, D.21959
	movq	(%rax), %rax	# _6->sv_any, D.21960
	movq	(%rax), %rax	# MEM[(struct XPV *)_7].xpv_pv, iftmp.1
	jmp	.L33	#
.L32:
	.loc 1 1515 0 discriminator 2
	movl	$0, %eax	#, iftmp.1
.L33:
	.loc 1 1515 0 discriminator 3
	movq	%rax, -8(%rbp)	# iftmp.1, prev
	.loc 1 1522 0 is_stmt 1 discriminator 3
	movq	-24(%rbp), %rax	# cxt, tmp68
	movq	248(%rax), %rax	# cxt_2(D)->my_sv, D.21959
	movq	%rax, %rdi	# D.21959,
	call	Perl_sv_free	#
	.loc 1 1523 0 discriminator 3
	movq	-8(%rbp), %rax	# prev, tmp69
	movq	%rax, Context_ptr(%rip)	# tmp69, Context_ptr
	.loc 1 1526 0 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	free_context, .-free_context
	.globl	is_storing
	.type	is_storing, @function
is_storing:
.LFB11:
	.loc 1 1538 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1539 0
	movq	Context_ptr(%rip), %rax	# Context_ptr, tmp65
	movq	%rax, -8(%rbp)	# tmp65, cxt
	.loc 1 1541 0
	movq	-8(%rbp), %rax	# cxt, tmp66
	movl	(%rax), %eax	# cxt_2->entry, D.21961
	testl	%eax, %eax	# D.21961
	je	.L35	#,
	.loc 1 1541 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# cxt, tmp67
	movl	4(%rax), %eax	# cxt_2->optype, D.21961
	andl	$1, %eax	#, D.21961
	testl	%eax, %eax	# D.21961
	je	.L35	#,
	.loc 1 1541 0 discriminator 3
	movl	$1, %eax	#, iftmp.2
	jmp	.L36	#
.L35:
	.loc 1 1541 0 discriminator 2
	movl	$0, %eax	#, iftmp.2
.L36:
	.loc 1 1542 0 is_stmt 1 discriminator 4
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	is_storing, .-is_storing
	.globl	is_retrieving
	.type	is_retrieving, @function
is_retrieving:
.LFB12:
	.loc 1 1550 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1551 0
	movq	Context_ptr(%rip), %rax	# Context_ptr, tmp65
	movq	%rax, -8(%rbp)	# tmp65, cxt
	.loc 1 1553 0
	movq	-8(%rbp), %rax	# cxt, tmp66
	movl	(%rax), %eax	# cxt_2->entry, D.21962
	testl	%eax, %eax	# D.21962
	je	.L39	#,
	.loc 1 1553 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# cxt, tmp67
	movl	4(%rax), %eax	# cxt_2->optype, D.21962
	andl	$2, %eax	#, D.21962
	testl	%eax, %eax	# D.21962
	je	.L39	#,
	.loc 1 1553 0 discriminator 3
	movl	$1, %eax	#, iftmp.3
	jmp	.L40	#
.L39:
	.loc 1 1553 0 discriminator 2
	movl	$0, %eax	#, iftmp.3
.L40:
	.loc 1 1554 0 is_stmt 1 discriminator 4
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	is_retrieving, .-is_retrieving
	.globl	last_op_in_netorder
	.type	last_op_in_netorder, @function
last_op_in_netorder:
.LFB13:
	.loc 1 1565 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1566 0
	movq	Context_ptr(%rip), %rax	# Context_ptr, tmp61
	movq	%rax, -8(%rbp)	# tmp61, cxt
	.loc 1 1568 0
	movq	-8(%rbp), %rax	# cxt, tmp62
	movl	80(%rax), %eax	# cxt_1->netorder, D.21963
	.loc 1 1569 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	last_op_in_netorder, .-last_op_in_netorder
	.type	pkg_fetchmeth, @function
pkg_fetchmeth:
.LFB14:
	.loc 1 1588 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# cache, cache
	movq	%rsi, -32(%rbp)	# pkg, pkg
	movq	%rdx, -40(%rbp)	# method, method
	.loc 1 1597 0
	movq	-40(%rbp), %rcx	# method, tmp75
	movq	-32(%rbp), %rax	# pkg, tmp76
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp75,
	movq	%rax, %rdi	# tmp76,
	call	Perl_gv_fetchmethod_autoload	#
	movq	%rax, -8(%rbp)	# tmp77, gv
	.loc 1 1598 0
	cmpq	$0, -8(%rbp)	#, gv
	je	.L45	#,
	.loc 1 1598 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# gv, tmp78
	movl	12(%rax), %eax	# gv_5->sv_flags, D.21964
	movzbl	%al, %eax	# D.21964, D.21964
	cmpl	$13, %eax	#, D.21964
	jne	.L45	#,
	.loc 1 1599 0 is_stmt 1
	movq	-8(%rbp), %rax	# gv, tmp79
	movq	(%rax), %rax	# gv_5->sv_any, D.21965
	movq	56(%rax), %rax	# _8->xgv_gp, D.21966
	movq	56(%rax), %rax	# _9->gp_cv, D.21967
	movq	%rax, %rdi	# D.21967,
	call	Perl_newRV	#
	movq	%rax, -16(%rbp)	# tmp80, sv
	jmp	.L46	#
.L45:
	.loc 1 1602 0
	movl	$PL_sv_undef, %edi	#,
	call	Perl_newSVsv	#
	movq	%rax, -16(%rbp)	# tmp81, sv
.L46:
	.loc 1 1611 0
	movq	-32(%rbp), %rax	# pkg, tmp82
	movq	(%rax), %rax	# pkg_3(D)->sv_any, D.21968
	movq	80(%rax), %rax	# _13->xhv_name, D.21969
	movq	%rax, %rdi	# D.21969,
	call	strlen	#
	movl	%eax, %edx	# D.21970, D.21971
	movq	-32(%rbp), %rax	# pkg, tmp83
	movq	(%rax), %rax	# pkg_3(D)->sv_any, D.21968
	movq	80(%rax), %rsi	# _17->xhv_name, D.21969
	movq	-16(%rbp), %rcx	# sv, tmp84
	movq	-24(%rbp), %rax	# cache, tmp85
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# tmp85,
	call	Perl_hv_store	#
	.loc 1 1613 0
	movq	-16(%rbp), %rax	# sv, tmp86
	movl	12(%rax), %eax	# sv_1->sv_flags, D.21964
	andl	$118423552, %eax	#, D.21964
	testl	%eax, %eax	# D.21964
	je	.L47	#,
	.loc 1 1613 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# sv, iftmp.4
	jmp	.L48	#
.L47:
	.loc 1 1613 0 discriminator 2
	movl	$0, %eax	#, iftmp.4
.L48:
	.loc 1 1614 0 is_stmt 1 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	pkg_fetchmeth, .-pkg_fetchmeth
	.type	pkg_hide, @function
pkg_hide:
.LFB15:
	.loc 1 1626 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# cache, cache
	movq	%rsi, -32(%rbp)	# pkg, pkg
	movq	%rdx, -40(%rbp)	# method, method
	.loc 1 1627 0
	movl	$PL_sv_undef, %edi	#,
	call	Perl_newSVsv	#
	movq	%rax, %rbx	#, D.21973
	.loc 1 1628 0
	movq	-32(%rbp), %rax	# pkg, tmp66
	movq	(%rax), %rax	# pkg_2(D)->sv_any, D.21974
	movq	80(%rax), %rax	# _3->xhv_name, D.21975
	movq	%rax, %rdi	# D.21975,
	call	strlen	#
	.loc 1 1627 0
	movl	%eax, %edx	# D.21976, D.21977
	.loc 1 1628 0
	movq	-32(%rbp), %rax	# pkg, tmp67
	movq	(%rax), %rax	# pkg_2(D)->sv_any, D.21974
	movq	80(%rax), %rsi	# _7->xhv_name, D.21975
	.loc 1 1627 0
	movq	-24(%rbp), %rax	# cache, tmp68
	movl	$0, %r8d	#,
	movq	%rbx, %rcx	# D.21973,
	movq	%rax, %rdi	# tmp68,
	call	Perl_hv_store	#
	.loc 1 1629 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	pkg_hide, .-pkg_hide
	.type	pkg_uncache, @function
pkg_uncache:
.LFB16:
	.loc 1 1641 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# cache, cache
	movq	%rsi, -16(%rbp)	# pkg, pkg
	movq	%rdx, -24(%rbp)	# method, method
	.loc 1 1642 0
	movq	-16(%rbp), %rax	# pkg, tmp65
	movq	(%rax), %rax	# pkg_1(D)->sv_any, D.21978
	movq	80(%rax), %rax	# _2->xhv_name, D.21979
	movq	%rax, %rdi	# D.21979,
	call	strlen	#
	movl	%eax, %edx	# D.21980, D.21981
	movq	-16(%rbp), %rax	# pkg, tmp66
	movq	(%rax), %rax	# pkg_1(D)->sv_any, D.21978
	movq	80(%rax), %rsi	# _6->xhv_name, D.21979
	movq	-8(%rbp), %rax	# cache, tmp67
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp67,
	call	Perl_hv_delete	#
	.loc 1 1643 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	pkg_uncache, .-pkg_uncache
	.type	pkg_can, @function
pkg_can:
.LFB17:
	.loc 1 1658 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# cache, cache
	movq	%rsi, -32(%rbp)	# pkg, pkg
	movq	%rdx, -40(%rbp)	# method, method
	.loc 1 1672 0
	movq	-32(%rbp), %rax	# pkg, tmp69
	movq	(%rax), %rax	# pkg_2(D)->sv_any, D.21983
	movq	80(%rax), %rax	# _3->xhv_name, D.21984
	movq	%rax, %rdi	# D.21984,
	call	strlen	#
	movl	%eax, %edx	# D.21985, D.21986
	movq	-32(%rbp), %rax	# pkg, tmp70
	movq	(%rax), %rax	# pkg_2(D)->sv_any, D.21983
	movq	80(%rax), %rsi	# _7->xhv_name, D.21984
	movq	-24(%rbp), %rax	# cache, tmp71
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp71,
	call	Perl_hv_fetch	#
	movq	%rax, -16(%rbp)	# tmp72, svh
	.loc 1 1673 0
	cmpq	$0, -16(%rbp)	#, svh
	je	.L53	#,
	.loc 1 1674 0
	movq	-16(%rbp), %rax	# svh, tmp73
	movq	(%rax), %rax	# *svh_10, tmp74
	movq	%rax, -8(%rbp)	# tmp74, sv
	.loc 1 1675 0
	movq	-8(%rbp), %rax	# sv, tmp75
	movl	12(%rax), %eax	# sv_11->sv_flags, D.21987
	andl	$118423552, %eax	#, D.21987
	testl	%eax, %eax	# D.21987
	jne	.L54	#,
	.loc 1 1677 0
	movl	$0, %eax	#, D.21982
	jmp	.L55	#
.L54:
	.loc 1 1681 0
	movq	-8(%rbp), %rax	# sv, D.21982
	jmp	.L55	#
.L53:
	.loc 1 1686 0
	movq	-40(%rbp), %rdx	# method, tmp76
	movq	-32(%rbp), %rcx	# pkg, tmp77
	movq	-24(%rbp), %rax	# cache, tmp78
	movq	%rcx, %rsi	# tmp77,
	movq	%rax, %rdi	# tmp78,
	call	pkg_fetchmeth	#
.L55:
	.loc 1 1687 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	pkg_can, .-pkg_can
	.type	scalar_call, @function
scalar_call:
.LFB18:
	.loc 1 1702 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# obj, obj
	movq	%rsi, -64(%rbp)	# hook, hook
	movl	%edx, -68(%rbp)	# cloning, cloning
	movq	%rcx, -80(%rbp)	# av, av
	movl	%r8d, -72(%rbp)	# flags, flags
	.loc 1 1703 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 1705 0
	movq	$0, -32(%rbp)	#, sv
	.loc 1 1709 0
	call	Perl_push_scope	#
	.loc 1 1710 0
	movl	$PL_tmps_floor, %edi	#,
	call	Perl_save_int	#
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.5
	movl	%eax, PL_tmps_floor(%rip)	# PL_tmps_ix.5, PL_tmps_floor
.LBB13:
	.loc 1 1712 0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.6
	addq	$4, %rax	#, PL_markstack_ptr.7
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.7, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.8
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.9
	cmpq	%rax, %rdx	# PL_markstack_max.9, PL_markstack_ptr.8
	jne	.L57	#,
	.loc 1 1712 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L57:
	.loc 1 1712 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.10
	movq	%rbx, %rcx	# sp, sp.11
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.12
	subq	%rdx, %rcx	# PL_stack_base.13, D.21988
	movq	%rcx, %rdx	# D.21988, D.21988
	sarq	$3, %rdx	#, tmp120
	movl	%edx, (%rax)	# D.21989, *PL_markstack_ptr.10_17
.LBE13:
.LBB14:
	.loc 1 1713 0 is_stmt 1 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.14
	movq	%rax, %rdx	# PL_stack_max.14, PL_stack_max.15
	movq	%rbx, %rax	# sp, sp.16
	subq	%rax, %rdx	# sp.16, D.21988
	movq	%rdx, %rax	# D.21988, D.21988
	cmpq	$7, %rax	#, D.21988
	jg	.L58	#,
	.loc 1 1713 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L58:
	.loc 1 1713 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-56(%rbp), %rax	# obj, tmp121
	movq	%rax, (%rbx)	# tmp121, *sp_30
.LBE14:
.LBB15:
	.loc 1 1714 0 is_stmt 1 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.17
	movq	%rax, %rdx	# PL_stack_max.17, PL_stack_max.18
	movq	%rbx, %rax	# sp, sp.19
	subq	%rax, %rdx	# sp.19, D.21988
	movq	%rdx, %rax	# D.21988, D.21988
	cmpq	$7, %rax	#, D.21988
	jg	.L59	#,
	.loc 1 1714 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L59:
	.loc 1 1714 0 discriminator 2
	addq	$8, %rbx	#, sp
	movl	-68(%rbp), %eax	# cloning, tmp122
	cltq
	movq	%rax, %rdi	# D.21988,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.21991,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.21991, *sp_38
.LBE15:
	.loc 1 1715 0 is_stmt 1 discriminator 2
	cmpq	$0, -80(%rbp)	#, av
	je	.L60	#,
.LBB16:
	.loc 1 1716 0
	movq	-80(%rbp), %rax	# av, tmp123
	movq	(%rax), %rax	# av_44(D)->sv_any, D.21992
	movq	(%rax), %rax	# _45->xav_array, tmp124
	movq	%rax, -24(%rbp)	# tmp124, ary
	.loc 1 1717 0
	movq	-80(%rbp), %rax	# av, tmp125
	movq	(%rax), %rax	# av_44(D)->sv_any, D.21992
	movq	8(%rax), %rax	# _47->xav_fill, D.21988
	addl	$1, %eax	#, D.21993
	movl	%eax, -40(%rbp)	# D.21993, cnt
.LBB17:
	.loc 1 1719 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.20
	movq	%rax, %rdx	# PL_stack_max.20, PL_stack_max.21
	movq	%rbx, %rax	# sp, sp.22
	subq	%rax, %rdx	# sp.22, D.21988
	movq	%rdx, %rax	# D.21988, D.21988
	cmpq	$7, %rax	#, D.21988
	jg	.L61	#,
	.loc 1 1719 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L61:
	.loc 1 1719 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-24(%rbp), %rax	# ary, tmp126
	movq	(%rax), %rax	# *ary_46, D.21991
	movq	%rax, (%rbx)	# D.21991, *sp_57
.LBE17:
	.loc 1 1720 0 is_stmt 1 discriminator 2
	movl	$1, -44(%rbp)	#, i
	jmp	.L62	#
.L64:
.LBB18:
	.loc 1 1723 0
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.23
	movq	%rax, %rdx	# PL_stack_max.23, PL_stack_max.24
	movq	%rbx, %rax	# sp, sp.25
	subq	%rax, %rdx	# sp.25, D.21988
	movq	%rdx, %rax	# D.21988, D.21988
	cmpq	$7, %rax	#, D.21988
	jg	.L63	#,
	.loc 1 1723 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L63:
	.loc 1 1723 0 discriminator 2
	addq	$8, %rbx	#, sp
	movl	-44(%rbp), %eax	# i, tmp127
	cltq
	leaq	0(,%rax,8), %rdx	#, D.21994
	movq	-24(%rbp), %rax	# ary, tmp128
	addq	%rdx, %rax	# D.21994, D.21995
	movq	(%rax), %rax	# *_69, D.21991
	movq	%rax, %rdi	# D.21991,
	call	Perl_newRV	#
	movq	%rax, %rdi	# D.21991,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.21991, *sp_66
.LBE18:
	.loc 1 1720 0 is_stmt 1 discriminator 2
	addl	$1, -44(%rbp)	#, i
.L62:
	.loc 1 1720 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp129
	cmpl	-40(%rbp), %eax	# cnt, tmp129
	jl	.L64	#,
.L60:
.LBE16:
	.loc 1 1726 0 is_stmt 1
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 1729 0
	movl	-72(%rbp), %edx	# flags, tmp130
	movq	-64(%rbp), %rax	# hook, tmp131
	movl	%edx, %esi	# tmp130,
	movq	%rax, %rdi	# tmp131,
	call	Perl_call_sv	#
	movl	%eax, -36(%rbp)	# tmp132, count
	.loc 1 1732 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 1734 0
	cmpl	$0, -36(%rbp)	#, count
	je	.L65	#,
	.loc 1 1735 0
	movq	%rbx, %rax	# sp, sp.26
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.26_79, tmp133
	movq	%rax, -32(%rbp)	# tmp133, sv
	.loc 1 1736 0
	movq	-32(%rbp), %rax	# sv, tmp134
	movq	%rax, PL_Sv(%rip)	# tmp134, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.28
	testq	%rax, %rax	# PL_Sv.28
	je	.L65	#,
	.loc 1 1736 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.29
	movl	8(%rax), %edx	# PL_Sv.29_83->sv_refcnt, D.21996
	addl	$1, %edx	#, D.21996
	movl	%edx, 8(%rax)	# D.21996, PL_Sv.29_83->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.29_83->sv_refcnt, D.21996
	testl	%eax, %eax	# D.21996
	je	.L65	#,
	.loc 1 1736 0
	nop
.L65:
	.loc 1 1739 0 is_stmt 1
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 1740 0
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.30
	movl	PL_tmps_floor(%rip), %eax	# PL_tmps_floor, PL_tmps_floor.31
	cmpl	%eax, %edx	# PL_tmps_floor.31, PL_tmps_ix.30
	jle	.L67	#,
	.loc 1 1740 0 is_stmt 0 discriminator 1
	call	Perl_free_tmps	#
.L67:
	.loc 1 1741 0 is_stmt 1
	call	Perl_pop_scope	#
	.loc 1 1743 0
	movq	-32(%rbp), %rax	# sv, D.21991
	.loc 1 1744 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	scalar_call, .-scalar_call
	.type	array_call, @function
array_call:
.LFB19:
	.loc 1 1757 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# obj, obj
	movq	%rsi, -64(%rbp)	# hook, hook
	movl	%edx, -68(%rbp)	# cloning, cloning
	.loc 1 1758 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 1765 0
	call	Perl_push_scope	#
	.loc 1 1766 0
	movl	$PL_tmps_floor, %edi	#,
	call	Perl_save_int	#
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.32
	movl	%eax, PL_tmps_floor(%rip)	# PL_tmps_ix.32, PL_tmps_floor
.LBB19:
	.loc 1 1768 0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.33
	addq	$4, %rax	#, PL_markstack_ptr.34
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.34, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.35
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.36
	cmpq	%rax, %rdx	# PL_markstack_max.36, PL_markstack_ptr.35
	jne	.L70	#,
	.loc 1 1768 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L70:
	.loc 1 1768 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.37
	movq	%rbx, %rcx	# sp, sp.38
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.39
	subq	%rdx, %rcx	# PL_stack_base.40, D.21997
	movq	%rcx, %rdx	# D.21997, D.21997
	sarq	$3, %rdx	#, tmp99
	movl	%edx, (%rax)	# D.21998, *PL_markstack_ptr.37_11
.LBE19:
.LBB20:
	.loc 1 1769 0 is_stmt 1 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.41
	movq	%rax, %rdx	# PL_stack_max.41, PL_stack_max.42
	movq	%rbx, %rax	# sp, sp.43
	subq	%rax, %rdx	# sp.43, D.21997
	movq	%rdx, %rax	# D.21997, D.21997
	cmpq	$7, %rax	#, D.21997
	jg	.L71	#,
	.loc 1 1769 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L71:
	.loc 1 1769 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-56(%rbp), %rax	# obj, tmp100
	movq	%rax, (%rbx)	# tmp100, *sp_24
.LBE20:
.LBB21:
	.loc 1 1770 0 is_stmt 1 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.44
	movq	%rax, %rdx	# PL_stack_max.44, PL_stack_max.45
	movq	%rbx, %rax	# sp, sp.46
	subq	%rax, %rdx	# sp.46, D.21997
	movq	%rdx, %rax	# D.21997, D.21997
	cmpq	$7, %rax	#, D.21997
	jg	.L72	#,
	.loc 1 1770 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L72:
	.loc 1 1770 0 discriminator 2
	addq	$8, %rbx	#, sp
	movl	-68(%rbp), %eax	# cloning, tmp101
	cltq
	movq	%rax, %rdi	# D.21997,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.22000,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.22000, *sp_32
.LBE21:
	.loc 1 1771 0 is_stmt 1 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 1773 0 discriminator 2
	movq	-64(%rbp), %rax	# hook, tmp102
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp102,
	call	Perl_call_sv	#
	movl	%eax, -36(%rbp)	# tmp103, count
	.loc 1 1775 0 discriminator 2
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 1777 0 discriminator 2
	call	Perl_newAV	#
	movq	%rax, -32(%rbp)	# tmp104, av
	.loc 1 1778 0 discriminator 2
	movl	-36(%rbp), %eax	# count, tmp108
	subl	$1, %eax	#, tmp107
	movl	%eax, -40(%rbp)	# tmp107, i
	jmp	.L73	#
.L76:
.LBB22:
	.loc 1 1779 0
	movq	%rbx, %rax	# sp, sp.47
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.47_43, tmp109
	movq	%rax, -24(%rbp)	# tmp109, sv
	.loc 1 1780 0
	movq	-24(%rbp), %rax	# sv, tmp110
	movq	%rax, PL_Sv(%rip)	# tmp110, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.49
	testq	%rax, %rax	# PL_Sv.49
	je	.L75	#,
	.loc 1 1780 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.50
	movl	8(%rax), %edx	# PL_Sv.50_47->sv_refcnt, D.22001
	addl	$1, %edx	#, D.22001
	movl	%edx, 8(%rax)	# D.22001, PL_Sv.50_47->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.50_47->sv_refcnt, D.22001
	testl	%eax, %eax	# D.22001
	je	.L75	#,
	.loc 1 1780 0
	nop
.L75:
	.loc 1 1780 0 discriminator 4
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.51
	movl	-40(%rbp), %ecx	# i, tmp111
	movq	-32(%rbp), %rax	# av, tmp112
	movl	%ecx, %esi	# tmp111,
	movq	%rax, %rdi	# tmp112,
	call	Perl_av_store	#
.LBE22:
	.loc 1 1778 0 is_stmt 1 discriminator 4
	subl	$1, -40(%rbp)	#, i
.L73:
	.loc 1 1778 0 is_stmt 0 discriminator 1
	cmpl	$0, -40(%rbp)	#, i
	jns	.L76	#,
	.loc 1 1783 0 is_stmt 1
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 1784 0
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.52
	movl	PL_tmps_floor(%rip), %eax	# PL_tmps_floor, PL_tmps_floor.53
	cmpl	%eax, %edx	# PL_tmps_floor.53, PL_tmps_ix.52
	jle	.L77	#,
	.loc 1 1784 0 is_stmt 0 discriminator 1
	call	Perl_free_tmps	#
.L77:
	.loc 1 1785 0 is_stmt 1
	call	Perl_pop_scope	#
	.loc 1 1787 0
	movq	-32(%rbp), %rax	# av, D.22002
	.loc 1 1788 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	array_call, .-array_call
	.section	.rodata
	.align 8
.LC1:
	.string	"Unable to record new classname"
	.text
	.type	known_class, @function
known_class:
.LFB20:
	.loc 1 1804 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# cxt, cxt
	movq	%rsi, -32(%rbp)	# name, name
	movl	%edx, -36(%rbp)	# len, len
	movq	%rcx, -48(%rbp)	# classnum, classnum
	.loc 1 1806 0
	movq	-24(%rbp), %rax	# cxt, tmp71
	movq	40(%rax), %rax	# cxt_2(D)->hclass, tmp72
	movq	%rax, -16(%rbp)	# tmp72, hclass
	.loc 1 1815 0
	movl	-36(%rbp), %edx	# len, tmp73
	movq	-32(%rbp), %rsi	# name, tmp74
	movq	-16(%rbp), %rax	# hclass, tmp75
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp75,
	call	Perl_hv_fetch	#
	movq	%rax, -8(%rbp)	# tmp76, svh
	.loc 1 1816 0
	cmpq	$0, -8(%rbp)	#, svh
	je	.L80	#,
	.loc 1 1817 0
	movq	-8(%rbp), %rax	# svh, tmp77
	movq	(%rax), %rax	# *svh_6, D.22004
	movl	%eax, %edx	# D.22005, D.22003
	movq	-48(%rbp), %rax	# classnum, tmp78
	movl	%edx, (%rax)	# D.22003, *classnum_10(D)
	.loc 1 1818 0
	movl	$1, %eax	#, D.22003
	jmp	.L81	#
.L80:
	.loc 1 1825 0
	movq	-24(%rbp), %rax	# cxt, tmp79
	movq	72(%rax), %rax	# cxt_2(D)->classnum, D.22005
	leaq	1(%rax), %rdx	#, D.22005
	movq	-24(%rbp), %rax	# cxt, tmp80
	movq	%rdx, 72(%rax)	# D.22005, cxt_2(D)->classnum
	.loc 1 1826 0
	movq	-24(%rbp), %rax	# cxt, tmp81
	movq	72(%rax), %rax	# cxt_2(D)->classnum, D.22005
	movq	%rax, %rcx	# D.22005, D.22004
	movl	-36(%rbp), %edx	# len, tmp82
	movq	-32(%rbp), %rsi	# name, tmp83
	movq	-16(%rbp), %rax	# hclass, tmp84
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# tmp84,
	call	Perl_hv_store	#
	testq	%rax, %rax	# D.22006
	jne	.L82	#,
.LBB23:
	.loc 1 1827 0
	movq	-24(%rbp), %rax	# cxt, tmp85
	movl	$1, 112(%rax)	#, cxt_2(D)->s_dirty
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L82:
.LBE23:
	.loc 1 1829 0
	movq	-24(%rbp), %rax	# cxt, tmp86
	movq	72(%rax), %rax	# cxt_2(D)->classnum, D.22005
	movl	%eax, %edx	# D.22005, D.22003
	movq	-48(%rbp), %rax	# classnum, tmp87
	movl	%edx, (%rax)	# D.22003, *classnum_10(D)
	.loc 1 1830 0
	movl	$0, %eax	#, D.22003
.L81:
	.loc 1 1831 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	known_class, .-known_class
	.type	store_ref, @function
store_ref:
.LFB21:
	.loc 1 1844 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# cxt, cxt
	movq	%rsi, -48(%rbp)	# sv, sv
	.loc 1 1851 0
	movq	-48(%rbp), %rax	# sv, tmp154
	movq	(%rax), %rax	# sv_2(D)->sv_any, D.22009
	movq	(%rax), %rax	# MEM[(struct XRV *)_3].xrv_rv, tmp155
	movq	%rax, -48(%rbp)	# tmp155, sv
	.loc 1 1853 0
	movq	-48(%rbp), %rax	# sv, tmp156
	movl	12(%rax), %eax	# sv_4->sv_flags, D.22010
	andl	$4096, %eax	#, D.22010
	testl	%eax, %eax	# D.22010
	je	.L84	#,
.LBB24:
	.loc 1 1854 0
	movq	-48(%rbp), %rax	# sv, tmp157
	movq	(%rax), %rax	# sv_4->sv_any, D.22009
	movq	48(%rax), %rax	# MEM[(struct XPVMG *)_7].xmg_stash, tmp158
	movq	%rax, -8(%rbp)	# tmp158, stash
	.loc 1 1855 0
	cmpq	$0, -8(%rbp)	#, stash
	je	.L85	#,
	.loc 1 1855 0 is_stmt 0 discriminator 1
	movq	PL_amagic_generation(%rip), %rax	# PL_amagic_generation, PL_amagic_generation.54
	testq	%rax, %rax	# PL_amagic_generation.54
	je	.L85	#,
	movq	-8(%rbp), %rax	# stash, tmp159
	movq	%rax, %rdi	# tmp159,
	call	Perl_Gv_AMupdate	#
	testb	%al, %al	# D.22011
	je	.L85	#,
	.loc 1 1857 0 is_stmt 1
	movq	-40(%rbp), %rax	# cxt, tmp160
	movq	216(%rax), %rax	# cxt_11(D)->fio, D.22012
	testq	%rax, %rax	# D.22012
	jne	.L86	#,
	.loc 1 1857 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# cxt, tmp161
	movq	168(%rax), %rdx	# cxt_11(D)->membuf.aptr, D.22013
	movq	-40(%rbp), %rax	# cxt, tmp162
	movq	176(%rax), %rax	# cxt_11(D)->membuf.aend, D.22013
	cmpq	%rax, %rdx	# D.22013, D.22013
	jae	.L87	#,
	movq	-40(%rbp), %rax	# cxt, tmp163
	movq	168(%rax), %rax	# cxt_11(D)->membuf.aptr, D.22013
	leaq	1(%rax), %rcx	#, D.22013
	movq	-40(%rbp), %rdx	# cxt, tmp164
	movq	%rcx, 168(%rdx)	# D.22013, cxt_11(D)->membuf.aptr
	movb	$20, (%rax)	#, *_16
	jmp	.L89	#
.L87:
.LBB25:
	.loc 1 1857 0 discriminator 2
	movq	-40(%rbp), %rax	# cxt, tmp165
	movq	160(%rax), %rax	# cxt_11(D)->membuf.asiz, D.22014
	addl	$8192, %eax	#, D.22015
	andl	$-8192, %eax	#, tmp166
	movl	%eax, -32(%rbp)	# tmp166, nsz
	movq	-40(%rbp), %rax	# cxt, tmp167
	movq	168(%rax), %rax	# cxt_11(D)->membuf.aptr, D.22013
	movq	%rax, %rdx	# D.22013, D.22016
	movq	-40(%rbp), %rax	# cxt, tmp168
	movq	152(%rax), %rax	# cxt_11(D)->membuf.arena, D.22013
	subq	%rax, %rdx	# D.22016, D.22016
	movq	%rdx, %rax	# D.22016, D.22016
	movl	%eax, -28(%rbp)	# D.22016, offset
	movl	-32(%rbp), %eax	# nsz, tmp169
	movslq	%eax, %rdx	# tmp169, D.22014
	movq	-40(%rbp), %rax	# cxt, tmp170
	movq	152(%rax), %rax	# cxt_11(D)->membuf.arena, D.22013
	movq	%rdx, %rsi	# D.22014,
	movq	%rax, %rdi	# D.22013,
	call	Perl_safesysrealloc	#
	movq	-40(%rbp), %rdx	# cxt, tmp171
	movq	%rax, 152(%rdx)	# D.22009, cxt_11(D)->membuf.arena
	movl	-32(%rbp), %eax	# nsz, tmp172
	movslq	%eax, %rdx	# tmp172, D.22014
	movq	-40(%rbp), %rax	# cxt, tmp173
	movq	%rdx, 160(%rax)	# D.22014, cxt_11(D)->membuf.asiz
	movq	-40(%rbp), %rax	# cxt, tmp174
	movq	152(%rax), %rdx	# cxt_11(D)->membuf.arena, D.22013
	movl	-28(%rbp), %eax	# offset, tmp175
	cltq
	addq	%rax, %rdx	# D.22017, D.22013
	movq	-40(%rbp), %rax	# cxt, tmp176
	movq	%rdx, 168(%rax)	# D.22013, cxt_11(D)->membuf.aptr
	movq	-40(%rbp), %rax	# cxt, tmp177
	movq	152(%rax), %rdx	# cxt_11(D)->membuf.arena, D.22013
	movl	-32(%rbp), %eax	# nsz, tmp178
	cltq
	addq	%rax, %rdx	# D.22017, D.22013
	movq	-40(%rbp), %rax	# cxt, tmp179
	movq	%rdx, 176(%rax)	# D.22013, cxt_11(D)->membuf.aend
.LBE25:
	movq	-40(%rbp), %rax	# cxt, tmp181
	movq	168(%rax), %rax	# cxt_11(D)->membuf.aptr, D.22013
	leaq	1(%rax), %rcx	#, D.22013
	movq	-40(%rbp), %rdx	# cxt, tmp182
	movq	%rcx, 168(%rdx)	# D.22013, cxt_11(D)->membuf.aptr
	movb	$20, (%rax)	#, *_41
	jmp	.L91	#
.L86:
	movq	-40(%rbp), %rax	# cxt, tmp183
	movq	216(%rax), %rax	# cxt_11(D)->fio, D.22012
	movl	$20, %esi	#,
	movq	%rax, %rdi	# D.22012,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22008
	jne	.L89	#,
	.loc 1 1857 0 discriminator 1
	movl	$-1, %eax	#, D.22008
	jmp	.L90	#
.L89:
	.loc 1 1857 0 discriminator 2
	jmp	.L91	#
.L85:
	.loc 1 1859 0 is_stmt 1
	movq	-40(%rbp), %rax	# cxt, tmp184
	movq	216(%rax), %rax	# cxt_11(D)->fio, D.22012
	testq	%rax, %rax	# D.22012
	jne	.L92	#,
	.loc 1 1859 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# cxt, tmp185
	movq	168(%rax), %rdx	# cxt_11(D)->membuf.aptr, D.22013
	movq	-40(%rbp), %rax	# cxt, tmp186
	movq	176(%rax), %rax	# cxt_11(D)->membuf.aend, D.22013
	cmpq	%rax, %rdx	# D.22013, D.22013
	jae	.L93	#,
	movq	-40(%rbp), %rax	# cxt, tmp187
	movq	168(%rax), %rax	# cxt_11(D)->membuf.aptr, D.22013
	leaq	1(%rax), %rcx	#, D.22013
	movq	-40(%rbp), %rdx	# cxt, tmp188
	movq	%rcx, 168(%rdx)	# D.22013, cxt_11(D)->membuf.aptr
	movb	$4, (%rax)	#, *_50
	jmp	.L91	#
.L93:
.LBB26:
	.loc 1 1859 0 discriminator 2
	movq	-40(%rbp), %rax	# cxt, tmp189
	movq	160(%rax), %rax	# cxt_11(D)->membuf.asiz, D.22014
	addl	$8192, %eax	#, D.22015
	andl	$-8192, %eax	#, tmp190
	movl	%eax, -24(%rbp)	# tmp190, nsz
	movq	-40(%rbp), %rax	# cxt, tmp191
	movq	168(%rax), %rax	# cxt_11(D)->membuf.aptr, D.22013
	movq	%rax, %rdx	# D.22013, D.22016
	movq	-40(%rbp), %rax	# cxt, tmp192
	movq	152(%rax), %rax	# cxt_11(D)->membuf.arena, D.22013
	subq	%rax, %rdx	# D.22016, D.22016
	movq	%rdx, %rax	# D.22016, D.22016
	movl	%eax, -20(%rbp)	# D.22016, offset
	movl	-24(%rbp), %eax	# nsz, tmp193
	movslq	%eax, %rdx	# tmp193, D.22014
	movq	-40(%rbp), %rax	# cxt, tmp194
	movq	152(%rax), %rax	# cxt_11(D)->membuf.arena, D.22013
	movq	%rdx, %rsi	# D.22014,
	movq	%rax, %rdi	# D.22013,
	call	Perl_safesysrealloc	#
	movq	-40(%rbp), %rdx	# cxt, tmp195
	movq	%rax, 152(%rdx)	# D.22009, cxt_11(D)->membuf.arena
	movl	-24(%rbp), %eax	# nsz, tmp196
	movslq	%eax, %rdx	# tmp196, D.22014
	movq	-40(%rbp), %rax	# cxt, tmp197
	movq	%rdx, 160(%rax)	# D.22014, cxt_11(D)->membuf.asiz
	movq	-40(%rbp), %rax	# cxt, tmp198
	movq	152(%rax), %rdx	# cxt_11(D)->membuf.arena, D.22013
	movl	-20(%rbp), %eax	# offset, tmp199
	cltq
	addq	%rax, %rdx	# D.22017, D.22013
	movq	-40(%rbp), %rax	# cxt, tmp200
	movq	%rdx, 168(%rax)	# D.22013, cxt_11(D)->membuf.aptr
	movq	-40(%rbp), %rax	# cxt, tmp201
	movq	152(%rax), %rdx	# cxt_11(D)->membuf.arena, D.22013
	movl	-24(%rbp), %eax	# nsz, tmp202
	cltq
	addq	%rax, %rdx	# D.22017, D.22013
	movq	-40(%rbp), %rax	# cxt, tmp203
	movq	%rdx, 176(%rax)	# D.22013, cxt_11(D)->membuf.aend
.LBE26:
	movq	-40(%rbp), %rax	# cxt, tmp205
	movq	168(%rax), %rax	# cxt_11(D)->membuf.aptr, D.22013
	leaq	1(%rax), %rcx	#, D.22013
	movq	-40(%rbp), %rdx	# cxt, tmp206
	movq	%rcx, 168(%rdx)	# D.22013, cxt_11(D)->membuf.aptr
	movb	$4, (%rax)	#, *_75
.LBE24:
	jmp	.L95	#
.L92:
.LBB27:
	movq	-40(%rbp), %rax	# cxt, tmp207
	movq	216(%rax), %rax	# cxt_11(D)->fio, D.22012
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.22012,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22008
	jne	.L91	#,
	.loc 1 1859 0 discriminator 1
	movl	$-1, %eax	#, D.22008
	jmp	.L90	#
.L91:
.LBE27:
	jmp	.L95	#
.L84:
	.loc 1 1861 0 is_stmt 1
	movq	-40(%rbp), %rax	# cxt, tmp208
	movq	216(%rax), %rax	# cxt_11(D)->fio, D.22012
	testq	%rax, %rax	# D.22012
	jne	.L96	#,
	.loc 1 1861 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# cxt, tmp209
	movq	168(%rax), %rdx	# cxt_11(D)->membuf.aptr, D.22013
	movq	-40(%rbp), %rax	# cxt, tmp210
	movq	176(%rax), %rax	# cxt_11(D)->membuf.aend, D.22013
	cmpq	%rax, %rdx	# D.22013, D.22013
	jae	.L97	#,
	movq	-40(%rbp), %rax	# cxt, tmp211
	movq	168(%rax), %rax	# cxt_11(D)->membuf.aptr, D.22013
	leaq	1(%rax), %rcx	#, D.22013
	movq	-40(%rbp), %rdx	# cxt, tmp212
	movq	%rcx, 168(%rdx)	# D.22013, cxt_11(D)->membuf.aptr
	movb	$4, (%rax)	#, *_84
	jmp	.L95	#
.L97:
.LBB28:
	.loc 1 1861 0 discriminator 2
	movq	-40(%rbp), %rax	# cxt, tmp213
	movq	160(%rax), %rax	# cxt_11(D)->membuf.asiz, D.22014
	addl	$8192, %eax	#, D.22015
	andl	$-8192, %eax	#, tmp214
	movl	%eax, -16(%rbp)	# tmp214, nsz
	movq	-40(%rbp), %rax	# cxt, tmp215
	movq	168(%rax), %rax	# cxt_11(D)->membuf.aptr, D.22013
	movq	%rax, %rdx	# D.22013, D.22016
	movq	-40(%rbp), %rax	# cxt, tmp216
	movq	152(%rax), %rax	# cxt_11(D)->membuf.arena, D.22013
	subq	%rax, %rdx	# D.22016, D.22016
	movq	%rdx, %rax	# D.22016, D.22016
	movl	%eax, -12(%rbp)	# D.22016, offset
	movl	-16(%rbp), %eax	# nsz, tmp217
	movslq	%eax, %rdx	# tmp217, D.22014
	movq	-40(%rbp), %rax	# cxt, tmp218
	movq	152(%rax), %rax	# cxt_11(D)->membuf.arena, D.22013
	movq	%rdx, %rsi	# D.22014,
	movq	%rax, %rdi	# D.22013,
	call	Perl_safesysrealloc	#
	movq	-40(%rbp), %rdx	# cxt, tmp219
	movq	%rax, 152(%rdx)	# D.22009, cxt_11(D)->membuf.arena
	movl	-16(%rbp), %eax	# nsz, tmp220
	movslq	%eax, %rdx	# tmp220, D.22014
	movq	-40(%rbp), %rax	# cxt, tmp221
	movq	%rdx, 160(%rax)	# D.22014, cxt_11(D)->membuf.asiz
	movq	-40(%rbp), %rax	# cxt, tmp222
	movq	152(%rax), %rdx	# cxt_11(D)->membuf.arena, D.22013
	movl	-12(%rbp), %eax	# offset, tmp223
	cltq
	addq	%rax, %rdx	# D.22017, D.22013
	movq	-40(%rbp), %rax	# cxt, tmp224
	movq	%rdx, 168(%rax)	# D.22013, cxt_11(D)->membuf.aptr
	movq	-40(%rbp), %rax	# cxt, tmp225
	movq	152(%rax), %rdx	# cxt_11(D)->membuf.arena, D.22013
	movl	-16(%rbp), %eax	# nsz, tmp226
	cltq
	addq	%rax, %rdx	# D.22017, D.22013
	movq	-40(%rbp), %rax	# cxt, tmp227
	movq	%rdx, 176(%rax)	# D.22013, cxt_11(D)->membuf.aend
.LBE28:
	movq	-40(%rbp), %rax	# cxt, tmp229
	movq	168(%rax), %rax	# cxt_11(D)->membuf.aptr, D.22013
	leaq	1(%rax), %rcx	#, D.22013
	movq	-40(%rbp), %rdx	# cxt, tmp230
	movq	%rcx, 168(%rdx)	# D.22013, cxt_11(D)->membuf.aptr
	movb	$4, (%rax)	#, *_109
	jmp	.L95	#
.L96:
	movq	-40(%rbp), %rax	# cxt, tmp231
	movq	216(%rax), %rax	# cxt_11(D)->fio, D.22012
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.22012,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22008
	jne	.L95	#,
	.loc 1 1861 0 discriminator 1
	movl	$-1, %eax	#, D.22008
	jmp	.L90	#
.L95:
	.loc 1 1863 0 is_stmt 1
	movq	-48(%rbp), %rdx	# sv, tmp232
	movq	-40(%rbp), %rax	# cxt, tmp233
	movq	%rdx, %rsi	# tmp232,
	movq	%rax, %rdi	# tmp233,
	call	store	#
.L90:
	.loc 1 1864 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	store_ref, .-store_ref
	.section	.rodata
	.align 8
.LC2:
	.string	"Can't determine type of %s(0x%lx)"
	.text
	.type	store_scalar, @function
store_scalar:
.LFB22:
	.loc 1 1878 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$296, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -280(%rbp)	# cxt, cxt
	movq	%rsi, -288(%rbp)	# sv, sv
	.loc 1 1882 0
	movq	-288(%rbp), %rax	# sv, tmp1022
	movl	12(%rax), %eax	# sv_12(D)->sv_flags, tmp1023
	movl	%eax, -252(%rbp)	# tmp1023, flags
	.loc 1 1892 0
	movl	-252(%rbp), %eax	# flags, tmp1024
	andl	$118423552, %eax	#, D.22019
	testl	%eax, %eax	# D.22019
	jne	.L100	#,
	.loc 1 1893 0
	cmpq	$PL_sv_undef, -288(%rbp)	#, sv
	jne	.L101	#,
	.loc 1 1895 0
	movq	-280(%rbp), %rax	# cxt, tmp1025
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	testq	%rax, %rax	# D.22020
	jne	.L102	#,
	.loc 1 1895 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp1026
	movq	168(%rax), %rdx	# cxt_15(D)->membuf.aptr, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1027
	movq	176(%rax), %rax	# cxt_15(D)->membuf.aend, D.22021
	cmpq	%rax, %rdx	# D.22021, D.22021
	jae	.L103	#,
	movq	-280(%rbp), %rax	# cxt, tmp1028
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	leaq	1(%rax), %rcx	#, D.22021
	movq	-280(%rbp), %rdx	# cxt, tmp1029
	movq	%rcx, 168(%rdx)	# D.22021, cxt_15(D)->membuf.aptr
	movb	$14, (%rax)	#, *_20
	jmp	.L105	#
.L103:
.LBB29:
	.loc 1 1895 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1030
	movq	160(%rax), %rax	# cxt_15(D)->membuf.asiz, D.22022
	addl	$8192, %eax	#, D.22023
	andl	$-8192, %eax	#, tmp1031
	movl	%eax, -248(%rbp)	# tmp1031, nsz
	movq	-280(%rbp), %rax	# cxt, tmp1032
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movq	%rax, %rdx	# D.22021, D.22024
	movq	-280(%rbp), %rax	# cxt, tmp1033
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	subq	%rax, %rdx	# D.22024, D.22024
	movq	%rdx, %rax	# D.22024, D.22024
	movl	%eax, -244(%rbp)	# D.22024, offset
	movl	-248(%rbp), %eax	# nsz, tmp1034
	movslq	%eax, %rdx	# tmp1034, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1035
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	movq	%rdx, %rsi	# D.22022,
	movq	%rax, %rdi	# D.22021,
	call	Perl_safesysrealloc	#
	movq	-280(%rbp), %rdx	# cxt, tmp1036
	movq	%rax, 152(%rdx)	# D.22025, cxt_15(D)->membuf.arena
	movl	-248(%rbp), %eax	# nsz, tmp1037
	movslq	%eax, %rdx	# tmp1037, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1038
	movq	%rdx, 160(%rax)	# D.22022, cxt_15(D)->membuf.asiz
	movq	-280(%rbp), %rax	# cxt, tmp1039
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-244(%rbp), %eax	# offset, tmp1040
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1041
	movq	%rdx, 168(%rax)	# D.22021, cxt_15(D)->membuf.aptr
	movq	-280(%rbp), %rax	# cxt, tmp1042
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-248(%rbp), %eax	# nsz, tmp1043
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1044
	movq	%rdx, 176(%rax)	# D.22021, cxt_15(D)->membuf.aend
.LBE29:
	movq	-280(%rbp), %rax	# cxt, tmp1046
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	leaq	1(%rax), %rcx	#, D.22021
	movq	-280(%rbp), %rdx	# cxt, tmp1047
	movq	%rcx, 168(%rdx)	# D.22021, cxt_15(D)->membuf.aptr
	movb	$14, (%rax)	#, *_45
	jmp	.L105	#
.L102:
	movq	-280(%rbp), %rax	# cxt, tmp1048
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	movl	$14, %esi	#,
	movq	%rax, %rdi	# D.22020,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22018
	jne	.L105	#,
	.loc 1 1895 0 discriminator 1
	movl	$-1, %eax	#, D.22018
	jmp	.L244	#
.L101:
	.loc 1 1898 0 is_stmt 1
	movq	-280(%rbp), %rax	# cxt, tmp1049
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	testq	%rax, %rax	# D.22020
	jne	.L107	#,
	.loc 1 1898 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp1050
	movq	168(%rax), %rdx	# cxt_15(D)->membuf.aptr, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1051
	movq	176(%rax), %rax	# cxt_15(D)->membuf.aend, D.22021
	cmpq	%rax, %rdx	# D.22021, D.22021
	jae	.L108	#,
	movq	-280(%rbp), %rax	# cxt, tmp1052
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	leaq	1(%rax), %rcx	#, D.22021
	movq	-280(%rbp), %rdx	# cxt, tmp1053
	movq	%rcx, 168(%rdx)	# D.22021, cxt_15(D)->membuf.aptr
	movb	$5, (%rax)	#, *_54
	jmp	.L105	#
.L108:
.LBB30:
	.loc 1 1898 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1054
	movq	160(%rax), %rax	# cxt_15(D)->membuf.asiz, D.22022
	addl	$8192, %eax	#, D.22023
	andl	$-8192, %eax	#, tmp1055
	movl	%eax, -240(%rbp)	# tmp1055, nsz
	movq	-280(%rbp), %rax	# cxt, tmp1056
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movq	%rax, %rdx	# D.22021, D.22024
	movq	-280(%rbp), %rax	# cxt, tmp1057
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	subq	%rax, %rdx	# D.22024, D.22024
	movq	%rdx, %rax	# D.22024, D.22024
	movl	%eax, -236(%rbp)	# D.22024, offset
	movl	-240(%rbp), %eax	# nsz, tmp1058
	movslq	%eax, %rdx	# tmp1058, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1059
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	movq	%rdx, %rsi	# D.22022,
	movq	%rax, %rdi	# D.22021,
	call	Perl_safesysrealloc	#
	movq	-280(%rbp), %rdx	# cxt, tmp1060
	movq	%rax, 152(%rdx)	# D.22025, cxt_15(D)->membuf.arena
	movl	-240(%rbp), %eax	# nsz, tmp1061
	movslq	%eax, %rdx	# tmp1061, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1062
	movq	%rdx, 160(%rax)	# D.22022, cxt_15(D)->membuf.asiz
	movq	-280(%rbp), %rax	# cxt, tmp1063
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-236(%rbp), %eax	# offset, tmp1064
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1065
	movq	%rdx, 168(%rax)	# D.22021, cxt_15(D)->membuf.aptr
	movq	-280(%rbp), %rax	# cxt, tmp1066
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-240(%rbp), %eax	# nsz, tmp1067
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1068
	movq	%rdx, 176(%rax)	# D.22021, cxt_15(D)->membuf.aend
.LBE30:
	movq	-280(%rbp), %rax	# cxt, tmp1070
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	leaq	1(%rax), %rcx	#, D.22021
	movq	-280(%rbp), %rdx	# cxt, tmp1071
	movq	%rcx, 168(%rdx)	# D.22021, cxt_15(D)->membuf.aptr
	movb	$5, (%rax)	#, *_79
	jmp	.L105	#
.L107:
	movq	-280(%rbp), %rax	# cxt, tmp1072
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	movl	$5, %esi	#,
	movq	%rax, %rdi	# D.22020,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22018
	jne	.L105	#,
	.loc 1 1898 0 discriminator 1
	movl	$-1, %eax	#, D.22018
	jmp	.L244	#
.L105:
	.loc 1 1900 0 is_stmt 1
	movl	$0, %eax	#, D.22018
	jmp	.L244	#
.L100:
	.loc 1 1934 0
	movl	-252(%rbp), %eax	# flags, tmp1073
	andl	$8781824, %eax	#, D.22019
	cmpl	$8781824, %eax	#, D.22019
	jne	.L110	#,
	.loc 1 1935 0
	cmpq	$PL_sv_yes, -288(%rbp)	#, sv
	jne	.L111	#,
	.loc 1 1937 0
	movq	-280(%rbp), %rax	# cxt, tmp1074
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	testq	%rax, %rax	# D.22020
	jne	.L112	#,
	.loc 1 1937 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp1075
	movq	168(%rax), %rdx	# cxt_15(D)->membuf.aptr, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1076
	movq	176(%rax), %rax	# cxt_15(D)->membuf.aend, D.22021
	cmpq	%rax, %rdx	# D.22021, D.22021
	jae	.L113	#,
	movq	-280(%rbp), %rax	# cxt, tmp1077
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	leaq	1(%rax), %rcx	#, D.22021
	movq	-280(%rbp), %rdx	# cxt, tmp1078
	movq	%rcx, 168(%rdx)	# D.22021, cxt_15(D)->membuf.aptr
	movb	$15, (%rax)	#, *_90
	jmp	.L115	#
.L113:
.LBB31:
	.loc 1 1937 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1079
	movq	160(%rax), %rax	# cxt_15(D)->membuf.asiz, D.22022
	addl	$8192, %eax	#, D.22023
	andl	$-8192, %eax	#, tmp1080
	movl	%eax, -232(%rbp)	# tmp1080, nsz
	movq	-280(%rbp), %rax	# cxt, tmp1081
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movq	%rax, %rdx	# D.22021, D.22024
	movq	-280(%rbp), %rax	# cxt, tmp1082
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	subq	%rax, %rdx	# D.22024, D.22024
	movq	%rdx, %rax	# D.22024, D.22024
	movl	%eax, -228(%rbp)	# D.22024, offset
	movl	-232(%rbp), %eax	# nsz, tmp1083
	movslq	%eax, %rdx	# tmp1083, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1084
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	movq	%rdx, %rsi	# D.22022,
	movq	%rax, %rdi	# D.22021,
	call	Perl_safesysrealloc	#
	movq	-280(%rbp), %rdx	# cxt, tmp1085
	movq	%rax, 152(%rdx)	# D.22025, cxt_15(D)->membuf.arena
	movl	-232(%rbp), %eax	# nsz, tmp1086
	movslq	%eax, %rdx	# tmp1086, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1087
	movq	%rdx, 160(%rax)	# D.22022, cxt_15(D)->membuf.asiz
	movq	-280(%rbp), %rax	# cxt, tmp1088
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-228(%rbp), %eax	# offset, tmp1089
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1090
	movq	%rdx, 168(%rax)	# D.22021, cxt_15(D)->membuf.aptr
	movq	-280(%rbp), %rax	# cxt, tmp1091
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-232(%rbp), %eax	# nsz, tmp1092
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1093
	movq	%rdx, 176(%rax)	# D.22021, cxt_15(D)->membuf.aend
.LBE31:
	movq	-280(%rbp), %rax	# cxt, tmp1095
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	leaq	1(%rax), %rcx	#, D.22021
	movq	-280(%rbp), %rdx	# cxt, tmp1096
	movq	%rcx, 168(%rdx)	# D.22021, cxt_15(D)->membuf.aptr
	movb	$15, (%rax)	#, *_115
	jmp	.L115	#
.L112:
	movq	-280(%rbp), %rax	# cxt, tmp1097
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	movl	$15, %esi	#,
	movq	%rax, %rdi	# D.22020,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22018
	jne	.L115	#,
	.loc 1 1937 0 discriminator 1
	movl	$-1, %eax	#, D.22018
	jmp	.L244	#
.L111:
	.loc 1 1938 0 is_stmt 1
	cmpq	$PL_sv_no, -288(%rbp)	#, sv
	jne	.L116	#,
	.loc 1 1940 0
	movq	-280(%rbp), %rax	# cxt, tmp1098
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	testq	%rax, %rax	# D.22020
	jne	.L117	#,
	.loc 1 1940 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp1099
	movq	168(%rax), %rdx	# cxt_15(D)->membuf.aptr, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1100
	movq	176(%rax), %rax	# cxt_15(D)->membuf.aend, D.22021
	cmpq	%rax, %rdx	# D.22021, D.22021
	jae	.L118	#,
	movq	-280(%rbp), %rax	# cxt, tmp1101
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	leaq	1(%rax), %rcx	#, D.22021
	movq	-280(%rbp), %rdx	# cxt, tmp1102
	movq	%rcx, 168(%rdx)	# D.22021, cxt_15(D)->membuf.aptr
	movb	$16, (%rax)	#, *_124
	jmp	.L115	#
.L118:
.LBB32:
	.loc 1 1940 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1103
	movq	160(%rax), %rax	# cxt_15(D)->membuf.asiz, D.22022
	addl	$8192, %eax	#, D.22023
	andl	$-8192, %eax	#, tmp1104
	movl	%eax, -224(%rbp)	# tmp1104, nsz
	movq	-280(%rbp), %rax	# cxt, tmp1105
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movq	%rax, %rdx	# D.22021, D.22024
	movq	-280(%rbp), %rax	# cxt, tmp1106
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	subq	%rax, %rdx	# D.22024, D.22024
	movq	%rdx, %rax	# D.22024, D.22024
	movl	%eax, -220(%rbp)	# D.22024, offset
	movl	-224(%rbp), %eax	# nsz, tmp1107
	movslq	%eax, %rdx	# tmp1107, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1108
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	movq	%rdx, %rsi	# D.22022,
	movq	%rax, %rdi	# D.22021,
	call	Perl_safesysrealloc	#
	movq	-280(%rbp), %rdx	# cxt, tmp1109
	movq	%rax, 152(%rdx)	# D.22025, cxt_15(D)->membuf.arena
	movl	-224(%rbp), %eax	# nsz, tmp1110
	movslq	%eax, %rdx	# tmp1110, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1111
	movq	%rdx, 160(%rax)	# D.22022, cxt_15(D)->membuf.asiz
	movq	-280(%rbp), %rax	# cxt, tmp1112
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-220(%rbp), %eax	# offset, tmp1113
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1114
	movq	%rdx, 168(%rax)	# D.22021, cxt_15(D)->membuf.aptr
	movq	-280(%rbp), %rax	# cxt, tmp1115
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-224(%rbp), %eax	# nsz, tmp1116
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1117
	movq	%rdx, 176(%rax)	# D.22021, cxt_15(D)->membuf.aend
.LBE32:
	movq	-280(%rbp), %rax	# cxt, tmp1119
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	leaq	1(%rax), %rcx	#, D.22021
	movq	-280(%rbp), %rdx	# cxt, tmp1120
	movq	%rcx, 168(%rdx)	# D.22021, cxt_15(D)->membuf.aptr
	movb	$16, (%rax)	#, *_149
	jmp	.L115	#
.L117:
	movq	-280(%rbp), %rax	# cxt, tmp1121
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	movl	$16, %esi	#,
	movq	%rax, %rdi	# D.22020,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22018
	jne	.L115	#,
	.loc 1 1940 0 discriminator 1
	movl	$-1, %eax	#, D.22018
	jmp	.L244	#
.L116:
	.loc 1 1942 0 is_stmt 1
	movq	-288(%rbp), %rax	# sv, tmp1122
	movl	12(%rax), %eax	# sv_12(D)->sv_flags, D.22019
	andl	$262144, %eax	#, D.22019
	testl	%eax, %eax	# D.22019
	je	.L120	#,
	.loc 1 1942 0 is_stmt 0 discriminator 1
	movq	-288(%rbp), %rax	# sv, tmp1123
	movq	(%rax), %rax	# sv_12(D)->sv_any, D.22025
	movq	8(%rax), %rax	# MEM[(struct XPV *)_156].xpv_cur, len.56
	movq	%rax, -32(%rbp)	# len.56, len
	movq	-288(%rbp), %rax	# sv, tmp1124
	movq	(%rax), %rax	# sv_12(D)->sv_any, D.22025
	movq	(%rax), %rax	# MEM[(struct XPV *)_158].xpv_pv, iftmp.55
	jmp	.L121	#
.L120:
	.loc 1 1942 0 discriminator 2
	leaq	-32(%rbp), %rcx	#, tmp1125
	movq	-288(%rbp), %rax	# sv, tmp1126
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp1125,
	movq	%rax, %rdi	# tmp1126,
	call	Perl_sv_2pv_flags	#
.L121:
	.loc 1 1942 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.55, pv
	.loc 1 1943 0 is_stmt 1 discriminator 3
	jmp	.L122	#
.L110:
	.loc 1 1945 0
	movl	-252(%rbp), %eax	# flags, tmp1127
	andl	$262144, %eax	#, D.22019
	testl	%eax, %eax	# D.22019
	je	.L123	#,
	.loc 1 1947 0
	jmp	.L124	#
.L123:
	.loc 1 1956 0
	movl	-252(%rbp), %eax	# flags, tmp1128
	andl	$65536, %eax	#, D.22019
	.loc 1 1948 0
	testl	%eax, %eax	# D.22019
	je	.L125	#,
	.loc 1 1959 0
	movq	-288(%rbp), %rax	# sv, tmp1129
	movl	12(%rax), %eax	# sv_12(D)->sv_flags, D.22019
	andl	$65536, %eax	#, D.22019
	testl	%eax, %eax	# D.22019
	je	.L126	#,
	.loc 1 1959 0 is_stmt 0 discriminator 1
	movq	-288(%rbp), %rax	# sv, tmp1130
	movq	(%rax), %rax	# sv_12(D)->sv_any, D.22025
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_166].xiv_iv, iftmp.57
	jmp	.L127	#
.L126:
	.loc 1 1959 0 discriminator 2
	movq	-288(%rbp), %rax	# sv, tmp1131
	movq	%rax, %rdi	# tmp1131,
	call	Perl_sv_2iv	#
.L127:
	.loc 1 1959 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.57, iv
.L128:
	.loc 1 1971 0 is_stmt 1
	movl	-252(%rbp), %eax	# flags, flags.58
	testl	%eax, %eax	# flags.58
	jns	.L129	#,
	.loc 1 1971 0 is_stmt 0 discriminator 1
	movq	-288(%rbp), %rax	# sv, tmp1132
	movl	12(%rax), %eax	# sv_12(D)->sv_flags, D.22019
	andl	$65536, %eax	#, D.22019
	testl	%eax, %eax	# D.22019
	je	.L130	#,
	movq	-288(%rbp), %rax	# sv, tmp1133
	movq	(%rax), %rax	# sv_12(D)->sv_any, D.22025
	movq	24(%rax), %rax	# MEM[(struct XPVUV *)_268].xuv_uv, D.22022
	shrq	$63, %rax	#, tmp1134
	jmp	.L131	#
.L130:
	.loc 1 1971 0 discriminator 2
	movq	-288(%rbp), %rax	# sv, tmp1135
	movq	%rax, %rdi	# tmp1135,
	call	Perl_sv_2uv	#
	shrq	$63, %rax	#, tmp1136
.L131:
	.loc 1 1971 0 discriminator 3
	testb	%al, %al	# iftmp.59
	je	.L129	#,
	.loc 1 1973 0 is_stmt 1
	jmp	.L124	#
.L129:
	.loc 1 1981 0
	movq	-40(%rbp), %rax	# iv, iv.60
	cmpq	$-128, %rax	#, iv.60
	jl	.L132	#,
	.loc 1 1981 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# iv, iv.61
	cmpq	$127, %rax	#, iv.61
	jg	.L132	#,
.LBB33:
	.loc 1 1982 0 is_stmt 1
	movq	-40(%rbp), %rax	# iv, iv.62
	addl	$-128, %eax	#, tmp1137
	movb	%al, -263(%rbp)	# tmp1137, siv
	.loc 1 1983 0
	movq	-280(%rbp), %rax	# cxt, tmp1138
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	testq	%rax, %rax	# D.22020
	jne	.L133	#,
	.loc 1 1983 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp1139
	movq	168(%rax), %rdx	# cxt_15(D)->membuf.aptr, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1140
	movq	176(%rax), %rax	# cxt_15(D)->membuf.aend, D.22021
	cmpq	%rax, %rdx	# D.22021, D.22021
	jae	.L134	#,
	movq	-280(%rbp), %rax	# cxt, tmp1141
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	leaq	1(%rax), %rcx	#, D.22021
	movq	-280(%rbp), %rdx	# cxt, tmp1142
	movq	%rcx, 168(%rdx)	# D.22021, cxt_15(D)->membuf.aptr
	movb	$8, (%rax)	#, *_284
	jmp	.L136	#
.L134:
.LBB34:
	.loc 1 1983 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1143
	movq	160(%rax), %rax	# cxt_15(D)->membuf.asiz, D.22022
	addl	$8192, %eax	#, D.22023
	andl	$-8192, %eax	#, tmp1144
	movl	%eax, -200(%rbp)	# tmp1144, nsz
	movq	-280(%rbp), %rax	# cxt, tmp1145
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movq	%rax, %rdx	# D.22021, D.22024
	movq	-280(%rbp), %rax	# cxt, tmp1146
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	subq	%rax, %rdx	# D.22024, D.22024
	movq	%rdx, %rax	# D.22024, D.22024
	movl	%eax, -196(%rbp)	# D.22024, offset
	movl	-200(%rbp), %eax	# nsz, tmp1147
	movslq	%eax, %rdx	# tmp1147, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1148
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	movq	%rdx, %rsi	# D.22022,
	movq	%rax, %rdi	# D.22021,
	call	Perl_safesysrealloc	#
	movq	-280(%rbp), %rdx	# cxt, tmp1149
	movq	%rax, 152(%rdx)	# D.22025, cxt_15(D)->membuf.arena
	movl	-200(%rbp), %eax	# nsz, tmp1150
	movslq	%eax, %rdx	# tmp1150, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1151
	movq	%rdx, 160(%rax)	# D.22022, cxt_15(D)->membuf.asiz
	movq	-280(%rbp), %rax	# cxt, tmp1152
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-196(%rbp), %eax	# offset, tmp1153
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1154
	movq	%rdx, 168(%rax)	# D.22021, cxt_15(D)->membuf.aptr
	movq	-280(%rbp), %rax	# cxt, tmp1155
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-200(%rbp), %eax	# nsz, tmp1156
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1157
	movq	%rdx, 176(%rax)	# D.22021, cxt_15(D)->membuf.aend
.LBE34:
	movq	-280(%rbp), %rax	# cxt, tmp1159
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	leaq	1(%rax), %rcx	#, D.22021
	movq	-280(%rbp), %rdx	# cxt, tmp1160
	movq	%rcx, 168(%rdx)	# D.22021, cxt_15(D)->membuf.aptr
	movb	$8, (%rax)	#, *_309
	jmp	.L136	#
.L133:
	movq	-280(%rbp), %rax	# cxt, tmp1161
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.22020,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22018
	jne	.L136	#,
	.loc 1 1983 0 discriminator 1
	movl	$-1, %eax	#, D.22018
	jmp	.L244	#
.L136:
	.loc 1 1984 0 is_stmt 1
	movq	-280(%rbp), %rax	# cxt, tmp1162
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	testq	%rax, %rax	# D.22020
	jne	.L137	#,
	.loc 1 1984 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp1163
	movq	168(%rax), %rdx	# cxt_15(D)->membuf.aptr, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1164
	movq	176(%rax), %rax	# cxt_15(D)->membuf.aend, D.22021
	cmpq	%rax, %rdx	# D.22021, D.22021
	jae	.L138	#,
	movq	-280(%rbp), %rax	# cxt, tmp1165
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	leaq	1(%rax), %rcx	#, D.22021
	movq	-280(%rbp), %rdx	# cxt, tmp1166
	movq	%rcx, 168(%rdx)	# D.22021, cxt_15(D)->membuf.aptr
	movzbl	-263(%rbp), %edx	# siv, siv.63
	movb	%dl, (%rax)	# siv.63, *_318
	jmp	.L140	#
.L138:
.LBB35:
	.loc 1 1984 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1167
	movq	160(%rax), %rax	# cxt_15(D)->membuf.asiz, D.22022
	addl	$8192, %eax	#, D.22023
	andl	$-8192, %eax	#, tmp1168
	movl	%eax, -192(%rbp)	# tmp1168, nsz
	movq	-280(%rbp), %rax	# cxt, tmp1169
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movq	%rax, %rdx	# D.22021, D.22024
	movq	-280(%rbp), %rax	# cxt, tmp1170
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	subq	%rax, %rdx	# D.22024, D.22024
	movq	%rdx, %rax	# D.22024, D.22024
	movl	%eax, -188(%rbp)	# D.22024, offset
	movl	-192(%rbp), %eax	# nsz, tmp1171
	movslq	%eax, %rdx	# tmp1171, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1172
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	movq	%rdx, %rsi	# D.22022,
	movq	%rax, %rdi	# D.22021,
	call	Perl_safesysrealloc	#
	movq	-280(%rbp), %rdx	# cxt, tmp1173
	movq	%rax, 152(%rdx)	# D.22025, cxt_15(D)->membuf.arena
	movl	-192(%rbp), %eax	# nsz, tmp1174
	movslq	%eax, %rdx	# tmp1174, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1175
	movq	%rdx, 160(%rax)	# D.22022, cxt_15(D)->membuf.asiz
	movq	-280(%rbp), %rax	# cxt, tmp1176
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-188(%rbp), %eax	# offset, tmp1177
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1178
	movq	%rdx, 168(%rax)	# D.22021, cxt_15(D)->membuf.aptr
	movq	-280(%rbp), %rax	# cxt, tmp1179
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-192(%rbp), %eax	# nsz, tmp1180
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1181
	movq	%rdx, 176(%rax)	# D.22021, cxt_15(D)->membuf.aend
.LBE35:
	movq	-280(%rbp), %rax	# cxt, tmp1183
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	leaq	1(%rax), %rcx	#, D.22021
	movq	-280(%rbp), %rdx	# cxt, tmp1184
	movq	%rcx, 168(%rdx)	# D.22021, cxt_15(D)->membuf.aptr
	movzbl	-263(%rbp), %edx	# siv, siv.64
	movb	%dl, (%rax)	# siv.64, *_344
.LBE33:
	.loc 1 1981 0 is_stmt 1 discriminator 2
	jmp	.L141	#
.L137:
.LBB36:
	.loc 1 1984 0 discriminator 2
	movzbl	-263(%rbp), %edx	# siv, D.22018
	movq	-280(%rbp), %rax	# cxt, tmp1185
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	movl	%edx, %esi	# D.22018,
	movq	%rax, %rdi	# D.22020,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22018
	jne	.L140	#,
	.loc 1 1984 0 is_stmt 0 discriminator 1
	movl	$-1, %eax	#, D.22018
	jmp	.L244	#
.L140:
.LBE36:
	.loc 1 1981 0 is_stmt 1
	jmp	.L141	#
.L132:
	.loc 1 1986 0
	movq	-280(%rbp), %rax	# cxt, tmp1186
	movl	80(%rax), %eax	# cxt_15(D)->netorder, D.22018
	testl	%eax, %eax	# D.22018
	je	.L142	#,
.LBB37:
	.loc 1 1998 0
	movl	-252(%rbp), %eax	# flags, flags.65
	.loc 1 1995 0
	testl	%eax, %eax	# flags.65
	jns	.L143	#,
	.loc 1 1998 0 discriminator 1
	movq	-288(%rbp), %rax	# sv, tmp1187
	movl	12(%rax), %eax	# sv_12(D)->sv_flags, D.22019
	andl	$65536, %eax	#, D.22019
	.loc 1 1995 0 discriminator 1
	testl	%eax, %eax	# D.22019
	je	.L144	#,
	.loc 1 1998 0
	movq	-288(%rbp), %rax	# sv, tmp1188
	movq	(%rax), %rax	# sv_12(D)->sv_any, D.22025
	movq	24(%rax), %rax	# MEM[(struct XPVUV *)_355].xuv_uv, D.22022
	cmpq	$2147483647, %rax	#, D.22022
	ja	.L124	#,
	jmp	.L143	#
.L144:
	movq	-288(%rbp), %rax	# sv, tmp1189
	movq	%rax, %rdi	# tmp1189,
	call	Perl_sv_2uv	#
	cmpq	$2147483647, %rax	#, D.22022
	ja	.L124	#,
.L143:
	.loc 1 2000 0 discriminator 1
	movq	-40(%rbp), %rax	# iv, iv.66
	.loc 1 1998 0 discriminator 1
	cmpq	$2147483647, %rax	#, iv.66
	jg	.L124	#,
	.loc 1 2000 0
	movq	-40(%rbp), %rax	# iv, iv.67
	cmpq	$2147483647, %rax	#, iv.67
	jle	.L124	#,
	.loc 1 2007 0
	movq	-40(%rbp), %rax	# iv, iv.68
	cltq
	movq	%rax, %rdi	# D.22024,
	call	Perl_my_htonl	#
	movl	%eax, -32(%rbp)	# niv.69, niv
	.loc 1 2009 0
	movq	-280(%rbp), %rax	# cxt, tmp1190
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	testq	%rax, %rax	# D.22020
	jne	.L146	#,
	.loc 1 2009 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp1191
	movq	168(%rax), %rdx	# cxt_15(D)->membuf.aptr, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1192
	movq	176(%rax), %rax	# cxt_15(D)->membuf.aend, D.22021
	cmpq	%rax, %rdx	# D.22021, D.22021
	jae	.L147	#,
	movq	-280(%rbp), %rax	# cxt, tmp1193
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	leaq	1(%rax), %rcx	#, D.22021
	movq	-280(%rbp), %rdx	# cxt, tmp1194
	movq	%rcx, 168(%rdx)	# D.22021, cxt_15(D)->membuf.aptr
	movb	$9, (%rax)	#, *_369
	jmp	.L149	#
.L147:
.LBB38:
	.loc 1 2009 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1195
	movq	160(%rax), %rax	# cxt_15(D)->membuf.asiz, D.22022
	addl	$8192, %eax	#, D.22023
	andl	$-8192, %eax	#, tmp1196
	movl	%eax, -184(%rbp)	# tmp1196, nsz
	movq	-280(%rbp), %rax	# cxt, tmp1197
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movq	%rax, %rdx	# D.22021, D.22024
	movq	-280(%rbp), %rax	# cxt, tmp1198
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	subq	%rax, %rdx	# D.22024, D.22024
	movq	%rdx, %rax	# D.22024, D.22024
	movl	%eax, -180(%rbp)	# D.22024, offset
	movl	-184(%rbp), %eax	# nsz, tmp1199
	movslq	%eax, %rdx	# tmp1199, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1200
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	movq	%rdx, %rsi	# D.22022,
	movq	%rax, %rdi	# D.22021,
	call	Perl_safesysrealloc	#
	movq	-280(%rbp), %rdx	# cxt, tmp1201
	movq	%rax, 152(%rdx)	# D.22025, cxt_15(D)->membuf.arena
	movl	-184(%rbp), %eax	# nsz, tmp1202
	movslq	%eax, %rdx	# tmp1202, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1203
	movq	%rdx, 160(%rax)	# D.22022, cxt_15(D)->membuf.asiz
	movq	-280(%rbp), %rax	# cxt, tmp1204
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-180(%rbp), %eax	# offset, tmp1205
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1206
	movq	%rdx, 168(%rax)	# D.22021, cxt_15(D)->membuf.aptr
	movq	-280(%rbp), %rax	# cxt, tmp1207
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-184(%rbp), %eax	# nsz, tmp1208
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1209
	movq	%rdx, 176(%rax)	# D.22021, cxt_15(D)->membuf.aend
.LBE38:
	movq	-280(%rbp), %rax	# cxt, tmp1211
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	leaq	1(%rax), %rcx	#, D.22021
	movq	-280(%rbp), %rdx	# cxt, tmp1212
	movq	%rcx, 168(%rdx)	# D.22021, cxt_15(D)->membuf.aptr
	movb	$9, (%rax)	#, *_394
	jmp	.L149	#
.L146:
	movq	-280(%rbp), %rax	# cxt, tmp1213
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	movl	$9, %esi	#,
	movq	%rax, %rdi	# D.22020,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22018
	jne	.L149	#,
	.loc 1 2009 0 discriminator 1
	movl	$-1, %eax	#, D.22018
	jmp	.L244	#
.L149:
	.loc 1 2010 0 is_stmt 1
	movq	-280(%rbp), %rax	# cxt, tmp1214
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	testq	%rax, %rax	# D.22020
	jne	.L151	#,
.LBB39:
	.loc 1 2010 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp1215
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	leaq	4(%rax), %rdx	#, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1216
	movq	176(%rax), %rax	# cxt_15(D)->membuf.aend, D.22021
	cmpq	%rax, %rdx	# D.22021, D.22021
	jbe	.L152	#,
.LBB40:
	movq	-280(%rbp), %rax	# cxt, tmp1217
	movq	160(%rax), %rax	# cxt_15(D)->membuf.asiz, D.22022
	addl	$8195, %eax	#, D.22023
	andl	$-8192, %eax	#, tmp1218
	movl	%eax, -176(%rbp)	# tmp1218, nsz
	movq	-280(%rbp), %rax	# cxt, tmp1219
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movq	%rax, %rdx	# D.22021, D.22024
	movq	-280(%rbp), %rax	# cxt, tmp1220
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	subq	%rax, %rdx	# D.22024, D.22024
	movq	%rdx, %rax	# D.22024, D.22024
	movl	%eax, -172(%rbp)	# D.22024, offset
	movl	-176(%rbp), %eax	# nsz, tmp1221
	movslq	%eax, %rdx	# tmp1221, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1222
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	movq	%rdx, %rsi	# D.22022,
	movq	%rax, %rdi	# D.22021,
	call	Perl_safesysrealloc	#
	movq	-280(%rbp), %rdx	# cxt, tmp1223
	movq	%rax, 152(%rdx)	# D.22025, cxt_15(D)->membuf.arena
	movl	-176(%rbp), %eax	# nsz, tmp1224
	movslq	%eax, %rdx	# tmp1224, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1225
	movq	%rdx, 160(%rax)	# D.22022, cxt_15(D)->membuf.asiz
	movq	-280(%rbp), %rax	# cxt, tmp1226
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-172(%rbp), %eax	# offset, tmp1227
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1228
	movq	%rdx, 168(%rax)	# D.22021, cxt_15(D)->membuf.aptr
	movq	-280(%rbp), %rax	# cxt, tmp1229
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-176(%rbp), %eax	# nsz, tmp1230
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1231
	movq	%rdx, 176(%rax)	# D.22021, cxt_15(D)->membuf.aend
.L152:
.LBE40:
	.loc 1 2010 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1233
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movq	%rax, %rdx	# D.22021, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1234
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	andq	$-4, %rax	#, D.22022
	cmpq	%rax, %rdx	# D.22022, D.22022
	jne	.L153	#,
	.loc 1 2010 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp1235
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movl	-32(%rbp), %edx	# niv, niv.70
	movl	%edx, (%rax)	# niv.70, MEM[(int *)_430]
	jmp	.L154	#
.L153:
	.loc 1 2010 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1236
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movl	-32(%rbp), %edx	# MEM[(char * {ref-all})&niv], D.22018
	movl	%edx, (%rax)	# D.22018, MEM[(char * {ref-all})_432]
.L154:
	.loc 1 2010 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp1237
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	leaq	4(%rax), %rdx	#, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1238
	movq	%rdx, 168(%rax)	# D.22021, cxt_15(D)->membuf.aptr
.LBE39:
	jmp	.L155	#
.L151:
	.loc 1 2010 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1240
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	leaq	-32(%rbp), %rcx	#, tmp1241
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp1241,
	movq	%rax, %rdi	# D.22020,
	call	Perl_PerlIO_write	#
	cmpq	$4, %rax	#, D.22024
	je	.L155	#,
	.loc 1 2010 0 discriminator 1
	movl	$-1, %eax	#, D.22018
	jmp	.L244	#
.L155:
.LBE37:
	jmp	.L115	#
.L142:
	.loc 1 2013 0 is_stmt 1
	movq	-280(%rbp), %rax	# cxt, tmp1242
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	testq	%rax, %rax	# D.22020
	jne	.L156	#,
	.loc 1 2013 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp1243
	movq	168(%rax), %rdx	# cxt_15(D)->membuf.aptr, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1244
	movq	176(%rax), %rax	# cxt_15(D)->membuf.aend, D.22021
	cmpq	%rax, %rdx	# D.22021, D.22021
	jae	.L157	#,
	movq	-280(%rbp), %rax	# cxt, tmp1245
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	leaq	1(%rax), %rcx	#, D.22021
	movq	-280(%rbp), %rdx	# cxt, tmp1246
	movq	%rcx, 168(%rdx)	# D.22021, cxt_15(D)->membuf.aptr
	movb	$6, (%rax)	#, *_444
	jmp	.L159	#
.L157:
.LBB41:
	.loc 1 2013 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1247
	movq	160(%rax), %rax	# cxt_15(D)->membuf.asiz, D.22022
	addl	$8192, %eax	#, D.22023
	andl	$-8192, %eax	#, tmp1248
	movl	%eax, -168(%rbp)	# tmp1248, nsz
	movq	-280(%rbp), %rax	# cxt, tmp1249
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movq	%rax, %rdx	# D.22021, D.22024
	movq	-280(%rbp), %rax	# cxt, tmp1250
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	subq	%rax, %rdx	# D.22024, D.22024
	movq	%rdx, %rax	# D.22024, D.22024
	movl	%eax, -164(%rbp)	# D.22024, offset
	movl	-168(%rbp), %eax	# nsz, tmp1251
	movslq	%eax, %rdx	# tmp1251, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1252
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	movq	%rdx, %rsi	# D.22022,
	movq	%rax, %rdi	# D.22021,
	call	Perl_safesysrealloc	#
	movq	-280(%rbp), %rdx	# cxt, tmp1253
	movq	%rax, 152(%rdx)	# D.22025, cxt_15(D)->membuf.arena
	movl	-168(%rbp), %eax	# nsz, tmp1254
	movslq	%eax, %rdx	# tmp1254, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1255
	movq	%rdx, 160(%rax)	# D.22022, cxt_15(D)->membuf.asiz
	movq	-280(%rbp), %rax	# cxt, tmp1256
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-164(%rbp), %eax	# offset, tmp1257
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1258
	movq	%rdx, 168(%rax)	# D.22021, cxt_15(D)->membuf.aptr
	movq	-280(%rbp), %rax	# cxt, tmp1259
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-168(%rbp), %eax	# nsz, tmp1260
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1261
	movq	%rdx, 176(%rax)	# D.22021, cxt_15(D)->membuf.aend
.LBE41:
	movq	-280(%rbp), %rax	# cxt, tmp1263
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	leaq	1(%rax), %rcx	#, D.22021
	movq	-280(%rbp), %rdx	# cxt, tmp1264
	movq	%rcx, 168(%rdx)	# D.22021, cxt_15(D)->membuf.aptr
	movb	$6, (%rax)	#, *_469
	jmp	.L159	#
.L156:
	movq	-280(%rbp), %rax	# cxt, tmp1265
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	movl	$6, %esi	#,
	movq	%rax, %rdi	# D.22020,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22018
	jne	.L159	#,
	.loc 1 2013 0 discriminator 1
	movl	$-1, %eax	#, D.22018
	jmp	.L244	#
.L159:
	.loc 1 2014 0 is_stmt 1
	movq	-280(%rbp), %rax	# cxt, tmp1266
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	testq	%rax, %rax	# D.22020
	jne	.L160	#,
.LBB42:
	.loc 1 2014 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp1267
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	leaq	8(%rax), %rdx	#, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1268
	movq	176(%rax), %rax	# cxt_15(D)->membuf.aend, D.22021
	cmpq	%rax, %rdx	# D.22021, D.22021
	jbe	.L161	#,
.LBB43:
	movq	-280(%rbp), %rax	# cxt, tmp1269
	movq	160(%rax), %rax	# cxt_15(D)->membuf.asiz, D.22022
	addl	$8199, %eax	#, D.22023
	andl	$-8192, %eax	#, tmp1270
	movl	%eax, -160(%rbp)	# tmp1270, nsz
	movq	-280(%rbp), %rax	# cxt, tmp1271
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movq	%rax, %rdx	# D.22021, D.22024
	movq	-280(%rbp), %rax	# cxt, tmp1272
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	subq	%rax, %rdx	# D.22024, D.22024
	movq	%rdx, %rax	# D.22024, D.22024
	movl	%eax, -156(%rbp)	# D.22024, offset
	movl	-160(%rbp), %eax	# nsz, tmp1273
	movslq	%eax, %rdx	# tmp1273, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1274
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	movq	%rdx, %rsi	# D.22022,
	movq	%rax, %rdi	# D.22021,
	call	Perl_safesysrealloc	#
	movq	-280(%rbp), %rdx	# cxt, tmp1275
	movq	%rax, 152(%rdx)	# D.22025, cxt_15(D)->membuf.arena
	movl	-160(%rbp), %eax	# nsz, tmp1276
	movslq	%eax, %rdx	# tmp1276, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1277
	movq	%rdx, 160(%rax)	# D.22022, cxt_15(D)->membuf.asiz
	movq	-280(%rbp), %rax	# cxt, tmp1278
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-156(%rbp), %eax	# offset, tmp1279
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1280
	movq	%rdx, 168(%rax)	# D.22021, cxt_15(D)->membuf.aptr
	movq	-280(%rbp), %rax	# cxt, tmp1281
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-160(%rbp), %eax	# nsz, tmp1282
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1283
	movq	%rdx, 176(%rax)	# D.22021, cxt_15(D)->membuf.aend
.L161:
.LBE43:
	.loc 1 2014 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1285
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movq	-40(%rbp), %rdx	# MEM[(char * {ref-all})&iv], D.22024
	movq	%rdx, (%rax)	# D.22024, MEM[(char * {ref-all})_500]
	movq	-280(%rbp), %rax	# cxt, tmp1286
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	leaq	8(%rax), %rdx	#, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1287
	movq	%rdx, 168(%rax)	# D.22021, cxt_15(D)->membuf.aptr
.LBE42:
	jmp	.L115	#
.L160:
	movq	-280(%rbp), %rax	# cxt, tmp1289
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	leaq	-40(%rbp), %rcx	#, tmp1290
	movl	$8, %edx	#,
	movq	%rcx, %rsi	# tmp1290,
	movq	%rax, %rdi	# D.22020,
	call	Perl_PerlIO_write	#
	cmpq	$8, %rax	#, D.22024
	je	.L115	#,
	.loc 1 2014 0 discriminator 1
	movl	$-1, %eax	#, D.22018
	jmp	.L244	#
.L141:
	jmp	.L115	#
.L125:
	.loc 1 2018 0 is_stmt 1
	movl	-252(%rbp), %eax	# flags, tmp1291
	andl	$131072, %eax	#, D.22019
	testl	%eax, %eax	# D.22019
	je	.L162	#,
.LBB44:
	.loc 1 2031 0
	movq	-288(%rbp), %rax	# sv, tmp1292
	movl	12(%rax), %eax	# sv_12(D)->sv_flags, D.22019
	andl	$16777216, %eax	#, D.22019
	testl	%eax, %eax	# D.22019
	jne	.L163	#,
	.loc 1 2031 0 is_stmt 0 discriminator 1
	movq	-288(%rbp), %rax	# sv, tmp1293
	movl	12(%rax), %eax	# sv_12(D)->sv_flags, D.22019
	andl	$131072, %eax	#, D.22019
	testl	%eax, %eax	# D.22019
	jne	.L164	#,
	.loc 1 2031 0 discriminator 2
	movq	-288(%rbp), %rax	# sv, tmp1294
	movl	12(%rax), %eax	# sv_12(D)->sv_flags, D.22019
	andl	$262144, %eax	#, D.22019
	testl	%eax, %eax	# D.22019
	je	.L163	#,
.L164:
	.loc 1 2031 0 discriminator 1
	movq	-288(%rbp), %rax	# sv, tmp1295
	movl	12(%rax), %eax	# sv_12(D)->sv_flags, D.22019
	andl	$65536, %eax	#, D.22019
	testl	%eax, %eax	# D.22019
	jne	.L163	#,
	.loc 1 2031 0 discriminator 2
	movq	-288(%rbp), %rax	# sv, tmp1297
	movq	%rax, %rdi	# tmp1297,
	call	Perl_sv_2iv	#
.L163:
	.loc 1 2032 0 is_stmt 1
	movq	-288(%rbp), %rax	# sv, tmp1298
	movl	12(%rax), %eax	# sv_12(D)->sv_flags, D.22019
	andl	$-2147418112, %eax	#, D.22019
	cmpl	$65536, %eax	#, D.22019
	jne	.L166	#,
	.loc 1 2033 0
	movq	-288(%rbp), %rax	# sv, tmp1299
	movl	12(%rax), %eax	# sv_12(D)->sv_flags, D.22019
	andl	$65536, %eax	#, D.22019
	testl	%eax, %eax	# D.22019
	je	.L167	#,
	.loc 1 2033 0 is_stmt 0 discriminator 1
	movq	-288(%rbp), %rax	# sv, tmp1300
	movq	(%rax), %rax	# sv_12(D)->sv_any, D.22025
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_185].xiv_iv, iftmp.72
	jmp	.L168	#
.L167:
	.loc 1 2033 0 discriminator 2
	movq	-288(%rbp), %rax	# sv, tmp1301
	movq	%rax, %rdi	# tmp1301,
	call	Perl_sv_2iv	#
.L168:
	.loc 1 2033 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.72, iv
	jmp	.L128	#
.L166:
	.loc 1 2036 0 is_stmt 1
	movq	-288(%rbp), %rax	# sv, tmp1302
	movl	12(%rax), %eax	# sv_12(D)->sv_flags, D.22019
	andl	$131072, %eax	#, D.22019
	testl	%eax, %eax	# D.22019
	je	.L169	#,
	.loc 1 2036 0 is_stmt 0 discriminator 1
	movq	-288(%rbp), %rax	# sv, tmp1303
	movq	(%rax), %rax	# sv_12(D)->sv_any, D.22025
	movq	32(%rax), %rax	# MEM[(struct XPVNV *)_190].xnv_nv, iftmp.73
	jmp	.L170	#
.L169:
	.loc 1 2036 0 discriminator 2
	movq	-288(%rbp), %rax	# sv, tmp1304
	movq	%rax, %rdi	# tmp1304,
	call	Perl_sv_2nv	#
	movsd	%xmm0, -296(%rbp)	#, %sfp
	movq	-296(%rbp), %rax	# %sfp, iftmp.73
.L170:
	.loc 1 2036 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.73, nv
	.loc 1 2039 0 is_stmt 1 discriminator 3
	movq	-280(%rbp), %rax	# cxt, tmp1305
	movl	80(%rax), %eax	# cxt_15(D)->netorder, D.22018
	testl	%eax, %eax	# D.22018
	jne	.L124	#,
	.loc 1 2044 0
	movq	-280(%rbp), %rax	# cxt, tmp1306
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	testq	%rax, %rax	# D.22020
	jne	.L172	#,
	.loc 1 2044 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp1307
	movq	168(%rax), %rdx	# cxt_15(D)->membuf.aptr, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1308
	movq	176(%rax), %rax	# cxt_15(D)->membuf.aend, D.22021
	cmpq	%rax, %rdx	# D.22021, D.22021
	jae	.L173	#,
	movq	-280(%rbp), %rax	# cxt, tmp1309
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	leaq	1(%rax), %rcx	#, D.22021
	movq	-280(%rbp), %rdx	# cxt, tmp1310
	movq	%rcx, 168(%rdx)	# D.22021, cxt_15(D)->membuf.aptr
	movb	$7, (%rax)	#, *_198
	jmp	.L175	#
.L173:
.LBB45:
	.loc 1 2044 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1311
	movq	160(%rax), %rax	# cxt_15(D)->membuf.asiz, D.22022
	addl	$8192, %eax	#, D.22023
	andl	$-8192, %eax	#, tmp1312
	movl	%eax, -216(%rbp)	# tmp1312, nsz
	movq	-280(%rbp), %rax	# cxt, tmp1313
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movq	%rax, %rdx	# D.22021, D.22024
	movq	-280(%rbp), %rax	# cxt, tmp1314
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	subq	%rax, %rdx	# D.22024, D.22024
	movq	%rdx, %rax	# D.22024, D.22024
	movl	%eax, -212(%rbp)	# D.22024, offset
	movl	-216(%rbp), %eax	# nsz, tmp1315
	movslq	%eax, %rdx	# tmp1315, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1316
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	movq	%rdx, %rsi	# D.22022,
	movq	%rax, %rdi	# D.22021,
	call	Perl_safesysrealloc	#
	movq	-280(%rbp), %rdx	# cxt, tmp1317
	movq	%rax, 152(%rdx)	# D.22025, cxt_15(D)->membuf.arena
	movl	-216(%rbp), %eax	# nsz, tmp1318
	movslq	%eax, %rdx	# tmp1318, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1319
	movq	%rdx, 160(%rax)	# D.22022, cxt_15(D)->membuf.asiz
	movq	-280(%rbp), %rax	# cxt, tmp1320
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-212(%rbp), %eax	# offset, tmp1321
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1322
	movq	%rdx, 168(%rax)	# D.22021, cxt_15(D)->membuf.aptr
	movq	-280(%rbp), %rax	# cxt, tmp1323
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-216(%rbp), %eax	# nsz, tmp1324
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1325
	movq	%rdx, 176(%rax)	# D.22021, cxt_15(D)->membuf.aend
.LBE45:
	movq	-280(%rbp), %rax	# cxt, tmp1327
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	leaq	1(%rax), %rcx	#, D.22021
	movq	-280(%rbp), %rdx	# cxt, tmp1328
	movq	%rcx, 168(%rdx)	# D.22021, cxt_15(D)->membuf.aptr
	movb	$7, (%rax)	#, *_223
	jmp	.L175	#
.L172:
	movq	-280(%rbp), %rax	# cxt, tmp1329
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	movl	$7, %esi	#,
	movq	%rax, %rdi	# D.22020,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22018
	jne	.L175	#,
	.loc 1 2044 0 discriminator 1
	movl	$-1, %eax	#, D.22018
	jmp	.L244	#
.L175:
	.loc 1 2045 0 is_stmt 1
	movq	-280(%rbp), %rax	# cxt, tmp1330
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	testq	%rax, %rax	# D.22020
	jne	.L177	#,
.LBB46:
	.loc 1 2045 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp1331
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	leaq	8(%rax), %rdx	#, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1332
	movq	176(%rax), %rax	# cxt_15(D)->membuf.aend, D.22021
	cmpq	%rax, %rdx	# D.22021, D.22021
	jbe	.L178	#,
.LBB47:
	movq	-280(%rbp), %rax	# cxt, tmp1333
	movq	160(%rax), %rax	# cxt_15(D)->membuf.asiz, D.22022
	addl	$8199, %eax	#, D.22023
	andl	$-8192, %eax	#, tmp1334
	movl	%eax, -208(%rbp)	# tmp1334, nsz
	movq	-280(%rbp), %rax	# cxt, tmp1335
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movq	%rax, %rdx	# D.22021, D.22024
	movq	-280(%rbp), %rax	# cxt, tmp1336
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	subq	%rax, %rdx	# D.22024, D.22024
	movq	%rdx, %rax	# D.22024, D.22024
	movl	%eax, -204(%rbp)	# D.22024, offset
	movl	-208(%rbp), %eax	# nsz, tmp1337
	movslq	%eax, %rdx	# tmp1337, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1338
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	movq	%rdx, %rsi	# D.22022,
	movq	%rax, %rdi	# D.22021,
	call	Perl_safesysrealloc	#
	movq	-280(%rbp), %rdx	# cxt, tmp1339
	movq	%rax, 152(%rdx)	# D.22025, cxt_15(D)->membuf.arena
	movl	-208(%rbp), %eax	# nsz, tmp1340
	movslq	%eax, %rdx	# tmp1340, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1341
	movq	%rdx, 160(%rax)	# D.22022, cxt_15(D)->membuf.asiz
	movq	-280(%rbp), %rax	# cxt, tmp1342
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-204(%rbp), %eax	# offset, tmp1343
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1344
	movq	%rdx, 168(%rax)	# D.22021, cxt_15(D)->membuf.aptr
	movq	-280(%rbp), %rax	# cxt, tmp1345
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-208(%rbp), %eax	# nsz, tmp1346
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1347
	movq	%rdx, 176(%rax)	# D.22021, cxt_15(D)->membuf.aend
.L178:
.LBE47:
	.loc 1 2045 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1349
	movq	168(%rax), %rdx	# cxt_15(D)->membuf.aptr, D.22021
	movq	-32(%rbp), %rax	# MEM[(char * {ref-all})&nv], D.22027
	movq	%rax, (%rdx)	# D.22027, MEM[(char * {ref-all})_254]
	movq	-280(%rbp), %rax	# cxt, tmp1350
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	leaq	8(%rax), %rdx	#, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1351
	movq	%rdx, 168(%rax)	# D.22021, cxt_15(D)->membuf.aptr
.LBE46:
	jmp	.L179	#
.L177:
	movq	-280(%rbp), %rax	# cxt, tmp1353
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	leaq	-32(%rbp), %rcx	#, tmp1354
	movl	$8, %edx	#,
	movq	%rcx, %rsi	# tmp1354,
	movq	%rax, %rdi	# D.22020,
	call	Perl_PerlIO_write	#
	cmpq	$8, %rax	#, D.22024
	je	.L179	#,
	.loc 1 2045 0 discriminator 1
	movl	$-1, %eax	#, D.22018
	jmp	.L244	#
.L179:
.LBE44:
	jmp	.L115	#
.L162:
	.loc 1 2049 0 is_stmt 1
	movl	-252(%rbp), %eax	# flags, tmp1355
	andl	$117440512, %eax	#, D.22019
	testl	%eax, %eax	# D.22019
	je	.L180	#,
.L124:
.LBB48:
	.loc 1 2053 0
	movq	-288(%rbp), %rax	# sv, tmp1356
	movl	12(%rax), %eax	# sv_12(D)->sv_flags, D.22019
	andl	$262144, %eax	#, D.22019
	testl	%eax, %eax	# D.22019
	je	.L181	#,
	.loc 1 2053 0 is_stmt 0 discriminator 1
	movq	-288(%rbp), %rax	# sv, tmp1357
	movq	(%rax), %rax	# sv_12(D)->sv_any, D.22025
	movq	8(%rax), %rax	# MEM[(struct XPV *)_510].xpv_cur, len.75
	movq	%rax, -32(%rbp)	# len.75, len
	movq	-288(%rbp), %rax	# sv, tmp1358
	movq	(%rax), %rax	# sv_12(D)->sv_any, D.22025
	movq	(%rax), %rax	# MEM[(struct XPV *)_512].xpv_pv, iftmp.74
	jmp	.L182	#
.L181:
	.loc 1 2053 0 discriminator 2
	leaq	-32(%rbp), %rcx	#, tmp1359
	movq	-288(%rbp), %rax	# sv, tmp1360
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp1359,
	movq	%rax, %rdi	# tmp1360,
	call	Perl_sv_2pv_flags	#
.L182:
	.loc 1 2053 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.74, pv
.L122:
	.loc 1 2061 0 is_stmt 1
	movq	-32(%rbp), %rax	# len, len.76
	movl	%eax, -260(%rbp)	# wlen.77, wlen
	.loc 1 2062 0
	movq	-288(%rbp), %rax	# sv, tmp1361
	movl	12(%rax), %eax	# sv_12(D)->sv_flags, D.22019
	andl	$536870912, %eax	#, D.22019
	testl	%eax, %eax	# D.22019
	je	.L183	#,
	.loc 1 2063 0
	movl	-260(%rbp), %eax	# wlen, wlen.78
	cmpl	$255, %eax	#, wlen.78
	jg	.L184	#,
.LBB49:
	.loc 1 2063 0 is_stmt 0 discriminator 1
	movl	-260(%rbp), %eax	# wlen, wlen.79
	movb	%al, -262(%rbp)	# wlen.79, clen
	movq	-280(%rbp), %rax	# cxt, tmp1362
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	testq	%rax, %rax	# D.22020
	jne	.L185	#,
	movq	-280(%rbp), %rax	# cxt, tmp1363
	movq	168(%rax), %rdx	# cxt_15(D)->membuf.aptr, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1364
	movq	176(%rax), %rax	# cxt_15(D)->membuf.aend, D.22021
	cmpq	%rax, %rdx	# D.22021, D.22021
	jae	.L186	#,
	movq	-280(%rbp), %rax	# cxt, tmp1365
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	leaq	1(%rax), %rcx	#, D.22021
	movq	-280(%rbp), %rdx	# cxt, tmp1366
	movq	%rcx, 168(%rdx)	# D.22021, cxt_15(D)->membuf.aptr
	movb	$23, (%rax)	#, *_527
	jmp	.L188	#
.L186:
.LBB50:
	.loc 1 2063 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1367
	movq	160(%rax), %rax	# cxt_15(D)->membuf.asiz, D.22022
	addl	$8192, %eax	#, D.22023
	andl	$-8192, %eax	#, tmp1368
	movl	%eax, -152(%rbp)	# tmp1368, nsz
	movq	-280(%rbp), %rax	# cxt, tmp1369
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movq	%rax, %rdx	# D.22021, D.22024
	movq	-280(%rbp), %rax	# cxt, tmp1370
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	subq	%rax, %rdx	# D.22024, D.22024
	movq	%rdx, %rax	# D.22024, D.22024
	movl	%eax, -148(%rbp)	# D.22024, offset
	movl	-152(%rbp), %eax	# nsz, tmp1371
	movslq	%eax, %rdx	# tmp1371, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1372
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	movq	%rdx, %rsi	# D.22022,
	movq	%rax, %rdi	# D.22021,
	call	Perl_safesysrealloc	#
	movq	-280(%rbp), %rdx	# cxt, tmp1373
	movq	%rax, 152(%rdx)	# D.22025, cxt_15(D)->membuf.arena
	movl	-152(%rbp), %eax	# nsz, tmp1374
	movslq	%eax, %rdx	# tmp1374, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1375
	movq	%rdx, 160(%rax)	# D.22022, cxt_15(D)->membuf.asiz
	movq	-280(%rbp), %rax	# cxt, tmp1376
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-148(%rbp), %eax	# offset, tmp1377
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1378
	movq	%rdx, 168(%rax)	# D.22021, cxt_15(D)->membuf.aptr
	movq	-280(%rbp), %rax	# cxt, tmp1379
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-152(%rbp), %eax	# nsz, tmp1380
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1381
	movq	%rdx, 176(%rax)	# D.22021, cxt_15(D)->membuf.aend
.LBE50:
	movq	-280(%rbp), %rax	# cxt, tmp1383
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	leaq	1(%rax), %rcx	#, D.22021
	movq	-280(%rbp), %rdx	# cxt, tmp1384
	movq	%rcx, 168(%rdx)	# D.22021, cxt_15(D)->membuf.aptr
	movb	$23, (%rax)	#, *_552
	jmp	.L188	#
.L185:
	movq	-280(%rbp), %rax	# cxt, tmp1385
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	movl	$23, %esi	#,
	movq	%rax, %rdi	# D.22020,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22018
	jne	.L188	#,
	.loc 1 2063 0 discriminator 1
	movl	$-1, %eax	#, D.22018
	jmp	.L244	#
.L188:
	.loc 1 2063 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1386
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	testq	%rax, %rax	# D.22020
	jne	.L190	#,
	.loc 1 2063 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp1387
	movq	168(%rax), %rdx	# cxt_15(D)->membuf.aptr, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1388
	movq	176(%rax), %rax	# cxt_15(D)->membuf.aend, D.22021
	cmpq	%rax, %rdx	# D.22021, D.22021
	jae	.L191	#,
	movq	-280(%rbp), %rax	# cxt, tmp1389
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	leaq	1(%rax), %rcx	#, D.22021
	movq	-280(%rbp), %rdx	# cxt, tmp1390
	movq	%rcx, 168(%rdx)	# D.22021, cxt_15(D)->membuf.aptr
	movzbl	-262(%rbp), %edx	# clen, clen.80
	movb	%dl, (%rax)	# clen.80, *_561
	jmp	.L193	#
.L191:
.LBB51:
	.loc 1 2063 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1391
	movq	160(%rax), %rax	# cxt_15(D)->membuf.asiz, D.22022
	addl	$8192, %eax	#, D.22023
	andl	$-8192, %eax	#, tmp1392
	movl	%eax, -144(%rbp)	# tmp1392, nsz
	movq	-280(%rbp), %rax	# cxt, tmp1393
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movq	%rax, %rdx	# D.22021, D.22024
	movq	-280(%rbp), %rax	# cxt, tmp1394
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	subq	%rax, %rdx	# D.22024, D.22024
	movq	%rdx, %rax	# D.22024, D.22024
	movl	%eax, -140(%rbp)	# D.22024, offset
	movl	-144(%rbp), %eax	# nsz, tmp1395
	movslq	%eax, %rdx	# tmp1395, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1396
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	movq	%rdx, %rsi	# D.22022,
	movq	%rax, %rdi	# D.22021,
	call	Perl_safesysrealloc	#
	movq	-280(%rbp), %rdx	# cxt, tmp1397
	movq	%rax, 152(%rdx)	# D.22025, cxt_15(D)->membuf.arena
	movl	-144(%rbp), %eax	# nsz, tmp1398
	movslq	%eax, %rdx	# tmp1398, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1399
	movq	%rdx, 160(%rax)	# D.22022, cxt_15(D)->membuf.asiz
	movq	-280(%rbp), %rax	# cxt, tmp1400
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-140(%rbp), %eax	# offset, tmp1401
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1402
	movq	%rdx, 168(%rax)	# D.22021, cxt_15(D)->membuf.aptr
	movq	-280(%rbp), %rax	# cxt, tmp1403
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-144(%rbp), %eax	# nsz, tmp1404
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1405
	movq	%rdx, 176(%rax)	# D.22021, cxt_15(D)->membuf.aend
.LBE51:
	movq	-280(%rbp), %rax	# cxt, tmp1407
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	leaq	1(%rax), %rcx	#, D.22021
	movq	-280(%rbp), %rdx	# cxt, tmp1408
	movq	%rcx, 168(%rdx)	# D.22021, cxt_15(D)->membuf.aptr
	movzbl	-262(%rbp), %edx	# clen, clen.81
	movb	%dl, (%rax)	# clen.81, *_587
	jmp	.L193	#
.L190:
	movzbl	-262(%rbp), %edx	# clen, D.22018
	movq	-280(%rbp), %rax	# cxt, tmp1409
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	movl	%edx, %esi	# D.22018,
	movq	%rax, %rdi	# D.22020,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22018
	jne	.L193	#,
	.loc 1 2063 0 discriminator 1
	movl	$-1, %eax	#, D.22018
	jmp	.L244	#
.L193:
	.loc 1 2063 0 discriminator 2
	movl	-260(%rbp), %eax	# wlen, wlen.82
	testl	%eax, %eax	# wlen.82
	je	.L194	#,
	.loc 1 2063 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp1410
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	testq	%rax, %rax	# D.22020
	jne	.L195	#,
.LBB52:
	movq	-280(%rbp), %rax	# cxt, tmp1411
	movq	168(%rax), %rdx	# cxt_15(D)->membuf.aptr, D.22021
	movl	-260(%rbp), %eax	# wlen, wlen.83
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1412
	movq	176(%rax), %rax	# cxt_15(D)->membuf.aend, D.22021
	cmpq	%rax, %rdx	# D.22021, D.22021
	jbe	.L196	#,
.LBB53:
	movq	-280(%rbp), %rax	# cxt, tmp1413
	movq	160(%rax), %rax	# cxt_15(D)->membuf.asiz, D.22022
	movl	%eax, %edx	# D.22022, D.22023
	movl	-260(%rbp), %eax	# wlen, wlen.84
	addl	%edx, %eax	# D.22023, D.22023
	addl	$8191, %eax	#, D.22023
	andl	$-8192, %eax	#, tmp1414
	movl	%eax, -136(%rbp)	# tmp1414, nsz
	movq	-280(%rbp), %rax	# cxt, tmp1415
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movq	%rax, %rdx	# D.22021, D.22024
	movq	-280(%rbp), %rax	# cxt, tmp1416
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	subq	%rax, %rdx	# D.22024, D.22024
	movq	%rdx, %rax	# D.22024, D.22024
	movl	%eax, -132(%rbp)	# D.22024, offset
	movl	-136(%rbp), %eax	# nsz, tmp1417
	movslq	%eax, %rdx	# tmp1417, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1418
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	movq	%rdx, %rsi	# D.22022,
	movq	%rax, %rdi	# D.22021,
	call	Perl_safesysrealloc	#
	movq	-280(%rbp), %rdx	# cxt, tmp1419
	movq	%rax, 152(%rdx)	# D.22025, cxt_15(D)->membuf.arena
	movl	-136(%rbp), %eax	# nsz, tmp1420
	movslq	%eax, %rdx	# tmp1420, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1421
	movq	%rdx, 160(%rax)	# D.22022, cxt_15(D)->membuf.asiz
	movq	-280(%rbp), %rax	# cxt, tmp1422
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-132(%rbp), %eax	# offset, tmp1423
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1424
	movq	%rdx, 168(%rax)	# D.22021, cxt_15(D)->membuf.aptr
	movq	-280(%rbp), %rax	# cxt, tmp1425
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-136(%rbp), %eax	# nsz, tmp1426
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1427
	movq	%rdx, 176(%rax)	# D.22021, cxt_15(D)->membuf.aend
.L196:
.LBE53:
	.loc 1 2063 0 discriminator 2
	movl	-260(%rbp), %eax	# wlen, wlen.86
	movslq	%eax, %rdx	# wlen.86, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1429
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movq	-24(%rbp), %rcx	# pv, tmp1430
	movq	%rcx, %rsi	# tmp1430,
	movq	%rax, %rdi	# D.22021,
	call	memcpy	#
	movq	-280(%rbp), %rax	# cxt, tmp1431
	movq	168(%rax), %rdx	# cxt_15(D)->membuf.aptr, D.22021
	movl	-260(%rbp), %eax	# wlen, wlen.87
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1432
	movq	%rdx, 168(%rax)	# D.22021, cxt_15(D)->membuf.aptr
.LBE52:
	jmp	.L194	#
.L195:
	movl	-260(%rbp), %eax	# wlen, wlen.88
	movslq	%eax, %rdx	# wlen.88, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1434
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	movq	-24(%rbp), %rcx	# pv, tmp1435
	movq	%rcx, %rsi	# tmp1435,
	movq	%rax, %rdi	# D.22020,
	call	Perl_PerlIO_write	#
	movl	-260(%rbp), %edx	# wlen, wlen.89
	movslq	%edx, %rdx	# wlen.89, D.22024
	cmpq	%rdx, %rax	# D.22024, D.22024
	je	.L194	#,
	.loc 1 2063 0 discriminator 1
	movl	$-1, %eax	#, D.22018
	jmp	.L244	#
.L194:
.LBE49:
	jmp	.L197	#
.L184:
	.loc 1 2063 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1436
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	testq	%rax, %rax	# D.22020
	jne	.L198	#,
	.loc 1 2063 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp1437
	movq	168(%rax), %rdx	# cxt_15(D)->membuf.aptr, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1438
	movq	176(%rax), %rax	# cxt_15(D)->membuf.aend, D.22021
	cmpq	%rax, %rdx	# D.22021, D.22021
	jae	.L199	#,
	movq	-280(%rbp), %rax	# cxt, tmp1439
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	leaq	1(%rax), %rcx	#, D.22021
	movq	-280(%rbp), %rdx	# cxt, tmp1440
	movq	%rcx, 168(%rdx)	# D.22021, cxt_15(D)->membuf.aptr
	movb	$24, (%rax)	#, *_645
	jmp	.L201	#
.L199:
.LBB54:
	.loc 1 2063 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1441
	movq	160(%rax), %rax	# cxt_15(D)->membuf.asiz, D.22022
	addl	$8192, %eax	#, D.22023
	andl	$-8192, %eax	#, tmp1442
	movl	%eax, -128(%rbp)	# tmp1442, nsz
	movq	-280(%rbp), %rax	# cxt, tmp1443
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movq	%rax, %rdx	# D.22021, D.22024
	movq	-280(%rbp), %rax	# cxt, tmp1444
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	subq	%rax, %rdx	# D.22024, D.22024
	movq	%rdx, %rax	# D.22024, D.22024
	movl	%eax, -124(%rbp)	# D.22024, offset
	movl	-128(%rbp), %eax	# nsz, tmp1445
	movslq	%eax, %rdx	# tmp1445, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1446
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	movq	%rdx, %rsi	# D.22022,
	movq	%rax, %rdi	# D.22021,
	call	Perl_safesysrealloc	#
	movq	-280(%rbp), %rdx	# cxt, tmp1447
	movq	%rax, 152(%rdx)	# D.22025, cxt_15(D)->membuf.arena
	movl	-128(%rbp), %eax	# nsz, tmp1448
	movslq	%eax, %rdx	# tmp1448, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1449
	movq	%rdx, 160(%rax)	# D.22022, cxt_15(D)->membuf.asiz
	movq	-280(%rbp), %rax	# cxt, tmp1450
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-124(%rbp), %eax	# offset, tmp1451
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1452
	movq	%rdx, 168(%rax)	# D.22021, cxt_15(D)->membuf.aptr
	movq	-280(%rbp), %rax	# cxt, tmp1453
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-128(%rbp), %eax	# nsz, tmp1454
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1455
	movq	%rdx, 176(%rax)	# D.22021, cxt_15(D)->membuf.aend
.LBE54:
	movq	-280(%rbp), %rax	# cxt, tmp1457
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	leaq	1(%rax), %rcx	#, D.22021
	movq	-280(%rbp), %rdx	# cxt, tmp1458
	movq	%rcx, 168(%rdx)	# D.22021, cxt_15(D)->membuf.aptr
	movb	$24, (%rax)	#, *_670
	jmp	.L201	#
.L198:
	movq	-280(%rbp), %rax	# cxt, tmp1459
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	movl	$24, %esi	#,
	movq	%rax, %rdi	# D.22020,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22018
	jne	.L201	#,
	.loc 1 2063 0 discriminator 1
	movl	$-1, %eax	#, D.22018
	jmp	.L244	#
.L201:
	.loc 1 2063 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1460
	movl	80(%rax), %eax	# cxt_15(D)->netorder, D.22018
	testl	%eax, %eax	# D.22018
	je	.L202	#,
.LBB55:
	.loc 1 2063 0 discriminator 1
	movl	-260(%rbp), %eax	# wlen, wlen.90
	cltq
	movq	%rax, %rdi	# D.22024,
	call	Perl_my_htonl	#
	movl	%eax, -256(%rbp)	# y.91, y
	movq	-280(%rbp), %rax	# cxt, tmp1461
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	testq	%rax, %rax	# D.22020
	jne	.L203	#,
.LBB56:
	movq	-280(%rbp), %rax	# cxt, tmp1462
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	leaq	4(%rax), %rdx	#, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1463
	movq	176(%rax), %rax	# cxt_15(D)->membuf.aend, D.22021
	cmpq	%rax, %rdx	# D.22021, D.22021
	jbe	.L204	#,
.LBB57:
	movq	-280(%rbp), %rax	# cxt, tmp1464
	movq	160(%rax), %rax	# cxt_15(D)->membuf.asiz, D.22022
	addl	$8195, %eax	#, D.22023
	andl	$-8192, %eax	#, tmp1465
	movl	%eax, -120(%rbp)	# tmp1465, nsz
	movq	-280(%rbp), %rax	# cxt, tmp1466
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movq	%rax, %rdx	# D.22021, D.22024
	movq	-280(%rbp), %rax	# cxt, tmp1467
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	subq	%rax, %rdx	# D.22024, D.22024
	movq	%rdx, %rax	# D.22024, D.22024
	movl	%eax, -116(%rbp)	# D.22024, offset
	movl	-120(%rbp), %eax	# nsz, tmp1468
	movslq	%eax, %rdx	# tmp1468, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1469
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	movq	%rdx, %rsi	# D.22022,
	movq	%rax, %rdi	# D.22021,
	call	Perl_safesysrealloc	#
	movq	-280(%rbp), %rdx	# cxt, tmp1470
	movq	%rax, 152(%rdx)	# D.22025, cxt_15(D)->membuf.arena
	movl	-120(%rbp), %eax	# nsz, tmp1471
	movslq	%eax, %rdx	# tmp1471, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1472
	movq	%rdx, 160(%rax)	# D.22022, cxt_15(D)->membuf.asiz
	movq	-280(%rbp), %rax	# cxt, tmp1473
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-116(%rbp), %eax	# offset, tmp1474
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1475
	movq	%rdx, 168(%rax)	# D.22021, cxt_15(D)->membuf.aptr
	movq	-280(%rbp), %rax	# cxt, tmp1476
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-120(%rbp), %eax	# nsz, tmp1477
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1478
	movq	%rdx, 176(%rax)	# D.22021, cxt_15(D)->membuf.aend
.L204:
.LBE57:
	.loc 1 2063 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1480
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movq	%rax, %rdx	# D.22021, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1481
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	andq	$-4, %rax	#, D.22022
	cmpq	%rax, %rdx	# D.22022, D.22022
	jne	.L205	#,
	.loc 1 2063 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp1482
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movl	-256(%rbp), %edx	# y, y.92
	movl	%edx, (%rax)	# y.92, MEM[(int *)_711]
	jmp	.L206	#
.L205:
	.loc 1 2063 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1483
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movl	-256(%rbp), %edx	# MEM[(char * {ref-all})&y], D.22018
	movl	%edx, (%rax)	# D.22018, MEM[(char * {ref-all})_713]
.L206:
	.loc 1 2063 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp1484
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	leaq	4(%rax), %rdx	#, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1485
	movq	%rdx, 168(%rax)	# D.22021, cxt_15(D)->membuf.aptr
.LBE56:
	jmp	.L207	#
.L203:
	.loc 1 2063 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1487
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	leaq	-256(%rbp), %rcx	#, tmp1488
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp1488,
	movq	%rax, %rdi	# D.22020,
	call	Perl_PerlIO_write	#
	cmpq	$4, %rax	#, D.22024
	je	.L207	#,
	.loc 1 2063 0 discriminator 1
	movl	$-1, %eax	#, D.22018
.LBE55:
	jmp	.L244	#
.L207:
	jmp	.L208	#
.L202:
	.loc 1 2063 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1489
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	testq	%rax, %rax	# D.22020
	jne	.L209	#,
.LBB58:
	.loc 1 2063 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp1490
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	leaq	4(%rax), %rdx	#, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1491
	movq	176(%rax), %rax	# cxt_15(D)->membuf.aend, D.22021
	cmpq	%rax, %rdx	# D.22021, D.22021
	jbe	.L210	#,
.LBB59:
	movq	-280(%rbp), %rax	# cxt, tmp1492
	movq	160(%rax), %rax	# cxt_15(D)->membuf.asiz, D.22022
	addl	$8195, %eax	#, D.22023
	andl	$-8192, %eax	#, tmp1493
	movl	%eax, -112(%rbp)	# tmp1493, nsz
	movq	-280(%rbp), %rax	# cxt, tmp1494
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movq	%rax, %rdx	# D.22021, D.22024
	movq	-280(%rbp), %rax	# cxt, tmp1495
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	subq	%rax, %rdx	# D.22024, D.22024
	movq	%rdx, %rax	# D.22024, D.22024
	movl	%eax, -108(%rbp)	# D.22024, offset
	movl	-112(%rbp), %eax	# nsz, tmp1496
	movslq	%eax, %rdx	# tmp1496, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1497
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	movq	%rdx, %rsi	# D.22022,
	movq	%rax, %rdi	# D.22021,
	call	Perl_safesysrealloc	#
	movq	-280(%rbp), %rdx	# cxt, tmp1498
	movq	%rax, 152(%rdx)	# D.22025, cxt_15(D)->membuf.arena
	movl	-112(%rbp), %eax	# nsz, tmp1499
	movslq	%eax, %rdx	# tmp1499, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1500
	movq	%rdx, 160(%rax)	# D.22022, cxt_15(D)->membuf.asiz
	movq	-280(%rbp), %rax	# cxt, tmp1501
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-108(%rbp), %eax	# offset, tmp1502
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1503
	movq	%rdx, 168(%rax)	# D.22021, cxt_15(D)->membuf.aptr
	movq	-280(%rbp), %rax	# cxt, tmp1504
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-112(%rbp), %eax	# nsz, tmp1505
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1506
	movq	%rdx, 176(%rax)	# D.22021, cxt_15(D)->membuf.aend
.L210:
.LBE59:
	.loc 1 2063 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1508
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movq	%rax, %rdx	# D.22021, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1509
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	andq	$-4, %rax	#, D.22022
	cmpq	%rax, %rdx	# D.22022, D.22022
	jne	.L211	#,
	.loc 1 2063 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp1510
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movl	-260(%rbp), %edx	# wlen, wlen.93
	movl	%edx, (%rax)	# wlen.93, MEM[(int *)_752]
	jmp	.L212	#
.L211:
	.loc 1 2063 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1511
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movl	-260(%rbp), %edx	# MEM[(char * {ref-all})&wlen], D.22018
	movl	%edx, (%rax)	# D.22018, MEM[(char * {ref-all})_754]
.L212:
	.loc 1 2063 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp1512
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	leaq	4(%rax), %rdx	#, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1513
	movq	%rdx, 168(%rax)	# D.22021, cxt_15(D)->membuf.aptr
.LBE58:
	jmp	.L208	#
.L209:
	.loc 1 2063 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1515
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	leaq	-260(%rbp), %rcx	#, tmp1516
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp1516,
	movq	%rax, %rdi	# D.22020,
	call	Perl_PerlIO_write	#
	cmpq	$4, %rax	#, D.22024
	je	.L208	#,
	.loc 1 2063 0 discriminator 1
	movl	$-1, %eax	#, D.22018
	jmp	.L244	#
.L208:
	.loc 1 2063 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1517
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	testq	%rax, %rax	# D.22020
	jne	.L213	#,
.LBB60:
	.loc 1 2063 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp1518
	movq	168(%rax), %rdx	# cxt_15(D)->membuf.aptr, D.22021
	movl	-260(%rbp), %eax	# wlen, wlen.94
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1519
	movq	176(%rax), %rax	# cxt_15(D)->membuf.aend, D.22021
	cmpq	%rax, %rdx	# D.22021, D.22021
	jbe	.L214	#,
.LBB61:
	movq	-280(%rbp), %rax	# cxt, tmp1520
	movq	160(%rax), %rax	# cxt_15(D)->membuf.asiz, D.22022
	movl	%eax, %edx	# D.22022, D.22023
	movl	-260(%rbp), %eax	# wlen, wlen.95
	addl	%edx, %eax	# D.22023, D.22023
	addl	$8191, %eax	#, D.22023
	andl	$-8192, %eax	#, tmp1521
	movl	%eax, -104(%rbp)	# tmp1521, nsz
	movq	-280(%rbp), %rax	# cxt, tmp1522
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movq	%rax, %rdx	# D.22021, D.22024
	movq	-280(%rbp), %rax	# cxt, tmp1523
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	subq	%rax, %rdx	# D.22024, D.22024
	movq	%rdx, %rax	# D.22024, D.22024
	movl	%eax, -100(%rbp)	# D.22024, offset
	movl	-104(%rbp), %eax	# nsz, tmp1524
	movslq	%eax, %rdx	# tmp1524, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1525
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	movq	%rdx, %rsi	# D.22022,
	movq	%rax, %rdi	# D.22021,
	call	Perl_safesysrealloc	#
	movq	-280(%rbp), %rdx	# cxt, tmp1526
	movq	%rax, 152(%rdx)	# D.22025, cxt_15(D)->membuf.arena
	movl	-104(%rbp), %eax	# nsz, tmp1527
	movslq	%eax, %rdx	# tmp1527, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1528
	movq	%rdx, 160(%rax)	# D.22022, cxt_15(D)->membuf.asiz
	movq	-280(%rbp), %rax	# cxt, tmp1529
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-100(%rbp), %eax	# offset, tmp1530
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1531
	movq	%rdx, 168(%rax)	# D.22021, cxt_15(D)->membuf.aptr
	movq	-280(%rbp), %rax	# cxt, tmp1532
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-104(%rbp), %eax	# nsz, tmp1533
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1534
	movq	%rdx, 176(%rax)	# D.22021, cxt_15(D)->membuf.aend
.L214:
.LBE61:
	.loc 1 2063 0 discriminator 2
	movl	-260(%rbp), %eax	# wlen, wlen.97
	movslq	%eax, %rdx	# wlen.97, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1536
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movq	-24(%rbp), %rcx	# pv, tmp1537
	movq	%rcx, %rsi	# tmp1537,
	movq	%rax, %rdi	# D.22021,
	call	memcpy	#
	movq	-280(%rbp), %rax	# cxt, tmp1538
	movq	168(%rax), %rdx	# cxt_15(D)->membuf.aptr, D.22021
	movl	-260(%rbp), %eax	# wlen, wlen.98
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1539
	movq	%rdx, 168(%rax)	# D.22021, cxt_15(D)->membuf.aptr
.LBE60:
	jmp	.L197	#
.L213:
	movl	-260(%rbp), %eax	# wlen, wlen.99
	movslq	%eax, %rdx	# wlen.99, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1541
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	movq	-24(%rbp), %rcx	# pv, tmp1542
	movq	%rcx, %rsi	# tmp1542,
	movq	%rax, %rdi	# D.22020,
	call	Perl_PerlIO_write	#
	movl	-260(%rbp), %edx	# wlen, wlen.100
	movslq	%edx, %rdx	# wlen.100, D.22024
	cmpq	%rdx, %rax	# D.22024, D.22024
	je	.L197	#,
	.loc 1 2063 0 discriminator 1
	movl	$-1, %eax	#, D.22018
	jmp	.L244	#
.L183:
	.loc 1 2065 0 is_stmt 1
	movl	-260(%rbp), %eax	# wlen, wlen.101
	cmpl	$255, %eax	#, wlen.101
	jg	.L215	#,
.LBB62:
	.loc 1 2065 0 is_stmt 0 discriminator 1
	movl	-260(%rbp), %eax	# wlen, wlen.102
	movb	%al, -261(%rbp)	# wlen.102, clen
	movq	-280(%rbp), %rax	# cxt, tmp1543
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	testq	%rax, %rax	# D.22020
	jne	.L216	#,
	movq	-280(%rbp), %rax	# cxt, tmp1544
	movq	168(%rax), %rdx	# cxt_15(D)->membuf.aptr, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1545
	movq	176(%rax), %rax	# cxt_15(D)->membuf.aend, D.22021
	cmpq	%rax, %rdx	# D.22021, D.22021
	jae	.L217	#,
	movq	-280(%rbp), %rax	# cxt, tmp1546
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	leaq	1(%rax), %rcx	#, D.22021
	movq	-280(%rbp), %rdx	# cxt, tmp1547
	movq	%rcx, 168(%rdx)	# D.22021, cxt_15(D)->membuf.aptr
	movb	$10, (%rax)	#, *_815
	jmp	.L219	#
.L217:
.LBB63:
	.loc 1 2065 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1548
	movq	160(%rax), %rax	# cxt_15(D)->membuf.asiz, D.22022
	addl	$8192, %eax	#, D.22023
	andl	$-8192, %eax	#, tmp1549
	movl	%eax, -96(%rbp)	# tmp1549, nsz
	movq	-280(%rbp), %rax	# cxt, tmp1550
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movq	%rax, %rdx	# D.22021, D.22024
	movq	-280(%rbp), %rax	# cxt, tmp1551
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	subq	%rax, %rdx	# D.22024, D.22024
	movq	%rdx, %rax	# D.22024, D.22024
	movl	%eax, -92(%rbp)	# D.22024, offset
	movl	-96(%rbp), %eax	# nsz, tmp1552
	movslq	%eax, %rdx	# tmp1552, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1553
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	movq	%rdx, %rsi	# D.22022,
	movq	%rax, %rdi	# D.22021,
	call	Perl_safesysrealloc	#
	movq	-280(%rbp), %rdx	# cxt, tmp1554
	movq	%rax, 152(%rdx)	# D.22025, cxt_15(D)->membuf.arena
	movl	-96(%rbp), %eax	# nsz, tmp1555
	movslq	%eax, %rdx	# tmp1555, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1556
	movq	%rdx, 160(%rax)	# D.22022, cxt_15(D)->membuf.asiz
	movq	-280(%rbp), %rax	# cxt, tmp1557
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-92(%rbp), %eax	# offset, tmp1558
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1559
	movq	%rdx, 168(%rax)	# D.22021, cxt_15(D)->membuf.aptr
	movq	-280(%rbp), %rax	# cxt, tmp1560
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-96(%rbp), %eax	# nsz, tmp1561
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1562
	movq	%rdx, 176(%rax)	# D.22021, cxt_15(D)->membuf.aend
.LBE63:
	movq	-280(%rbp), %rax	# cxt, tmp1564
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	leaq	1(%rax), %rcx	#, D.22021
	movq	-280(%rbp), %rdx	# cxt, tmp1565
	movq	%rcx, 168(%rdx)	# D.22021, cxt_15(D)->membuf.aptr
	movb	$10, (%rax)	#, *_840
	jmp	.L219	#
.L216:
	movq	-280(%rbp), %rax	# cxt, tmp1566
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	movl	$10, %esi	#,
	movq	%rax, %rdi	# D.22020,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22018
	jne	.L219	#,
	.loc 1 2065 0 discriminator 1
	movl	$-1, %eax	#, D.22018
	jmp	.L244	#
.L219:
	.loc 1 2065 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1567
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	testq	%rax, %rax	# D.22020
	jne	.L220	#,
	.loc 1 2065 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp1568
	movq	168(%rax), %rdx	# cxt_15(D)->membuf.aptr, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1569
	movq	176(%rax), %rax	# cxt_15(D)->membuf.aend, D.22021
	cmpq	%rax, %rdx	# D.22021, D.22021
	jae	.L221	#,
	movq	-280(%rbp), %rax	# cxt, tmp1570
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	leaq	1(%rax), %rcx	#, D.22021
	movq	-280(%rbp), %rdx	# cxt, tmp1571
	movq	%rcx, 168(%rdx)	# D.22021, cxt_15(D)->membuf.aptr
	movzbl	-261(%rbp), %edx	# clen, clen.103
	movb	%dl, (%rax)	# clen.103, *_849
	jmp	.L223	#
.L221:
.LBB64:
	.loc 1 2065 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1572
	movq	160(%rax), %rax	# cxt_15(D)->membuf.asiz, D.22022
	addl	$8192, %eax	#, D.22023
	andl	$-8192, %eax	#, tmp1573
	movl	%eax, -88(%rbp)	# tmp1573, nsz
	movq	-280(%rbp), %rax	# cxt, tmp1574
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movq	%rax, %rdx	# D.22021, D.22024
	movq	-280(%rbp), %rax	# cxt, tmp1575
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	subq	%rax, %rdx	# D.22024, D.22024
	movq	%rdx, %rax	# D.22024, D.22024
	movl	%eax, -84(%rbp)	# D.22024, offset
	movl	-88(%rbp), %eax	# nsz, tmp1576
	movslq	%eax, %rdx	# tmp1576, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1577
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	movq	%rdx, %rsi	# D.22022,
	movq	%rax, %rdi	# D.22021,
	call	Perl_safesysrealloc	#
	movq	-280(%rbp), %rdx	# cxt, tmp1578
	movq	%rax, 152(%rdx)	# D.22025, cxt_15(D)->membuf.arena
	movl	-88(%rbp), %eax	# nsz, tmp1579
	movslq	%eax, %rdx	# tmp1579, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1580
	movq	%rdx, 160(%rax)	# D.22022, cxt_15(D)->membuf.asiz
	movq	-280(%rbp), %rax	# cxt, tmp1581
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-84(%rbp), %eax	# offset, tmp1582
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1583
	movq	%rdx, 168(%rax)	# D.22021, cxt_15(D)->membuf.aptr
	movq	-280(%rbp), %rax	# cxt, tmp1584
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-88(%rbp), %eax	# nsz, tmp1585
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1586
	movq	%rdx, 176(%rax)	# D.22021, cxt_15(D)->membuf.aend
.LBE64:
	movq	-280(%rbp), %rax	# cxt, tmp1588
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	leaq	1(%rax), %rcx	#, D.22021
	movq	-280(%rbp), %rdx	# cxt, tmp1589
	movq	%rcx, 168(%rdx)	# D.22021, cxt_15(D)->membuf.aptr
	movzbl	-261(%rbp), %edx	# clen, clen.104
	movb	%dl, (%rax)	# clen.104, *_875
	jmp	.L223	#
.L220:
	movzbl	-261(%rbp), %edx	# clen, D.22018
	movq	-280(%rbp), %rax	# cxt, tmp1590
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	movl	%edx, %esi	# D.22018,
	movq	%rax, %rdi	# D.22020,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22018
	jne	.L223	#,
	.loc 1 2065 0 discriminator 1
	movl	$-1, %eax	#, D.22018
	jmp	.L244	#
.L223:
	.loc 1 2065 0 discriminator 2
	movl	-260(%rbp), %eax	# wlen, wlen.105
	testl	%eax, %eax	# wlen.105
	je	.L224	#,
	.loc 1 2065 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp1591
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	testq	%rax, %rax	# D.22020
	jne	.L225	#,
.LBB65:
	movq	-280(%rbp), %rax	# cxt, tmp1592
	movq	168(%rax), %rdx	# cxt_15(D)->membuf.aptr, D.22021
	movl	-260(%rbp), %eax	# wlen, wlen.106
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1593
	movq	176(%rax), %rax	# cxt_15(D)->membuf.aend, D.22021
	cmpq	%rax, %rdx	# D.22021, D.22021
	jbe	.L226	#,
.LBB66:
	movq	-280(%rbp), %rax	# cxt, tmp1594
	movq	160(%rax), %rax	# cxt_15(D)->membuf.asiz, D.22022
	movl	%eax, %edx	# D.22022, D.22023
	movl	-260(%rbp), %eax	# wlen, wlen.107
	addl	%edx, %eax	# D.22023, D.22023
	addl	$8191, %eax	#, D.22023
	andl	$-8192, %eax	#, tmp1595
	movl	%eax, -80(%rbp)	# tmp1595, nsz
	movq	-280(%rbp), %rax	# cxt, tmp1596
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movq	%rax, %rdx	# D.22021, D.22024
	movq	-280(%rbp), %rax	# cxt, tmp1597
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	subq	%rax, %rdx	# D.22024, D.22024
	movq	%rdx, %rax	# D.22024, D.22024
	movl	%eax, -76(%rbp)	# D.22024, offset
	movl	-80(%rbp), %eax	# nsz, tmp1598
	movslq	%eax, %rdx	# tmp1598, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1599
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	movq	%rdx, %rsi	# D.22022,
	movq	%rax, %rdi	# D.22021,
	call	Perl_safesysrealloc	#
	movq	-280(%rbp), %rdx	# cxt, tmp1600
	movq	%rax, 152(%rdx)	# D.22025, cxt_15(D)->membuf.arena
	movl	-80(%rbp), %eax	# nsz, tmp1601
	movslq	%eax, %rdx	# tmp1601, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1602
	movq	%rdx, 160(%rax)	# D.22022, cxt_15(D)->membuf.asiz
	movq	-280(%rbp), %rax	# cxt, tmp1603
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-76(%rbp), %eax	# offset, tmp1604
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1605
	movq	%rdx, 168(%rax)	# D.22021, cxt_15(D)->membuf.aptr
	movq	-280(%rbp), %rax	# cxt, tmp1606
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-80(%rbp), %eax	# nsz, tmp1607
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1608
	movq	%rdx, 176(%rax)	# D.22021, cxt_15(D)->membuf.aend
.L226:
.LBE66:
	.loc 1 2065 0 discriminator 2
	movl	-260(%rbp), %eax	# wlen, wlen.109
	movslq	%eax, %rdx	# wlen.109, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1610
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movq	-24(%rbp), %rcx	# pv, tmp1611
	movq	%rcx, %rsi	# tmp1611,
	movq	%rax, %rdi	# D.22021,
	call	memcpy	#
	movq	-280(%rbp), %rax	# cxt, tmp1612
	movq	168(%rax), %rdx	# cxt_15(D)->membuf.aptr, D.22021
	movl	-260(%rbp), %eax	# wlen, wlen.110
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1613
	movq	%rdx, 168(%rax)	# D.22021, cxt_15(D)->membuf.aptr
.LBE65:
	jmp	.L224	#
.L225:
	movl	-260(%rbp), %eax	# wlen, wlen.111
	movslq	%eax, %rdx	# wlen.111, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1615
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	movq	-24(%rbp), %rcx	# pv, tmp1616
	movq	%rcx, %rsi	# tmp1616,
	movq	%rax, %rdi	# D.22020,
	call	Perl_PerlIO_write	#
	movl	-260(%rbp), %edx	# wlen, wlen.112
	movslq	%edx, %rdx	# wlen.112, D.22024
	cmpq	%rdx, %rax	# D.22024, D.22024
	je	.L224	#,
	.loc 1 2065 0 discriminator 1
	movl	$-1, %eax	#, D.22018
	jmp	.L244	#
.L224:
.LBE62:
	jmp	.L197	#
.L215:
	.loc 1 2065 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1617
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	testq	%rax, %rax	# D.22020
	jne	.L227	#,
	.loc 1 2065 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp1618
	movq	168(%rax), %rdx	# cxt_15(D)->membuf.aptr, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1619
	movq	176(%rax), %rax	# cxt_15(D)->membuf.aend, D.22021
	cmpq	%rax, %rdx	# D.22021, D.22021
	jae	.L228	#,
	movq	-280(%rbp), %rax	# cxt, tmp1620
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	leaq	1(%rax), %rcx	#, D.22021
	movq	-280(%rbp), %rdx	# cxt, tmp1621
	movq	%rcx, 168(%rdx)	# D.22021, cxt_15(D)->membuf.aptr
	movb	$1, (%rax)	#, *_933
	jmp	.L230	#
.L228:
.LBB67:
	.loc 1 2065 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1622
	movq	160(%rax), %rax	# cxt_15(D)->membuf.asiz, D.22022
	addl	$8192, %eax	#, D.22023
	andl	$-8192, %eax	#, tmp1623
	movl	%eax, -72(%rbp)	# tmp1623, nsz
	movq	-280(%rbp), %rax	# cxt, tmp1624
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movq	%rax, %rdx	# D.22021, D.22024
	movq	-280(%rbp), %rax	# cxt, tmp1625
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	subq	%rax, %rdx	# D.22024, D.22024
	movq	%rdx, %rax	# D.22024, D.22024
	movl	%eax, -68(%rbp)	# D.22024, offset
	movl	-72(%rbp), %eax	# nsz, tmp1626
	movslq	%eax, %rdx	# tmp1626, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1627
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	movq	%rdx, %rsi	# D.22022,
	movq	%rax, %rdi	# D.22021,
	call	Perl_safesysrealloc	#
	movq	-280(%rbp), %rdx	# cxt, tmp1628
	movq	%rax, 152(%rdx)	# D.22025, cxt_15(D)->membuf.arena
	movl	-72(%rbp), %eax	# nsz, tmp1629
	movslq	%eax, %rdx	# tmp1629, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1630
	movq	%rdx, 160(%rax)	# D.22022, cxt_15(D)->membuf.asiz
	movq	-280(%rbp), %rax	# cxt, tmp1631
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-68(%rbp), %eax	# offset, tmp1632
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1633
	movq	%rdx, 168(%rax)	# D.22021, cxt_15(D)->membuf.aptr
	movq	-280(%rbp), %rax	# cxt, tmp1634
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-72(%rbp), %eax	# nsz, tmp1635
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1636
	movq	%rdx, 176(%rax)	# D.22021, cxt_15(D)->membuf.aend
.LBE67:
	movq	-280(%rbp), %rax	# cxt, tmp1638
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	leaq	1(%rax), %rcx	#, D.22021
	movq	-280(%rbp), %rdx	# cxt, tmp1639
	movq	%rcx, 168(%rdx)	# D.22021, cxt_15(D)->membuf.aptr
	movb	$1, (%rax)	#, *_958
	jmp	.L230	#
.L227:
	movq	-280(%rbp), %rax	# cxt, tmp1640
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.22020,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22018
	jne	.L230	#,
	.loc 1 2065 0 discriminator 1
	movl	$-1, %eax	#, D.22018
	jmp	.L244	#
.L230:
	.loc 1 2065 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1641
	movl	80(%rax), %eax	# cxt_15(D)->netorder, D.22018
	testl	%eax, %eax	# D.22018
	je	.L231	#,
.LBB68:
	.loc 1 2065 0 discriminator 1
	movl	-260(%rbp), %eax	# wlen, wlen.113
	cltq
	movq	%rax, %rdi	# D.22024,
	call	Perl_my_htonl	#
	movl	%eax, -256(%rbp)	# y.114, y
	movq	-280(%rbp), %rax	# cxt, tmp1642
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	testq	%rax, %rax	# D.22020
	jne	.L232	#,
.LBB69:
	movq	-280(%rbp), %rax	# cxt, tmp1643
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	leaq	4(%rax), %rdx	#, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1644
	movq	176(%rax), %rax	# cxt_15(D)->membuf.aend, D.22021
	cmpq	%rax, %rdx	# D.22021, D.22021
	jbe	.L233	#,
.LBB70:
	movq	-280(%rbp), %rax	# cxt, tmp1645
	movq	160(%rax), %rax	# cxt_15(D)->membuf.asiz, D.22022
	addl	$8195, %eax	#, D.22023
	andl	$-8192, %eax	#, tmp1646
	movl	%eax, -64(%rbp)	# tmp1646, nsz
	movq	-280(%rbp), %rax	# cxt, tmp1647
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movq	%rax, %rdx	# D.22021, D.22024
	movq	-280(%rbp), %rax	# cxt, tmp1648
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	subq	%rax, %rdx	# D.22024, D.22024
	movq	%rdx, %rax	# D.22024, D.22024
	movl	%eax, -60(%rbp)	# D.22024, offset
	movl	-64(%rbp), %eax	# nsz, tmp1649
	movslq	%eax, %rdx	# tmp1649, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1650
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	movq	%rdx, %rsi	# D.22022,
	movq	%rax, %rdi	# D.22021,
	call	Perl_safesysrealloc	#
	movq	-280(%rbp), %rdx	# cxt, tmp1651
	movq	%rax, 152(%rdx)	# D.22025, cxt_15(D)->membuf.arena
	movl	-64(%rbp), %eax	# nsz, tmp1652
	movslq	%eax, %rdx	# tmp1652, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1653
	movq	%rdx, 160(%rax)	# D.22022, cxt_15(D)->membuf.asiz
	movq	-280(%rbp), %rax	# cxt, tmp1654
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-60(%rbp), %eax	# offset, tmp1655
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1656
	movq	%rdx, 168(%rax)	# D.22021, cxt_15(D)->membuf.aptr
	movq	-280(%rbp), %rax	# cxt, tmp1657
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-64(%rbp), %eax	# nsz, tmp1658
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1659
	movq	%rdx, 176(%rax)	# D.22021, cxt_15(D)->membuf.aend
.L233:
.LBE70:
	.loc 1 2065 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1661
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movq	%rax, %rdx	# D.22021, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1662
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	andq	$-4, %rax	#, D.22022
	cmpq	%rax, %rdx	# D.22022, D.22022
	jne	.L234	#,
	.loc 1 2065 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp1663
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movl	-256(%rbp), %edx	# y, y.115
	movl	%edx, (%rax)	# y.115, MEM[(int *)_999]
	jmp	.L235	#
.L234:
	.loc 1 2065 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1664
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movl	-256(%rbp), %edx	# MEM[(char * {ref-all})&y], D.22018
	movl	%edx, (%rax)	# D.22018, MEM[(char * {ref-all})_1001]
.L235:
	.loc 1 2065 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp1665
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	leaq	4(%rax), %rdx	#, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1666
	movq	%rdx, 168(%rax)	# D.22021, cxt_15(D)->membuf.aptr
.LBE69:
	jmp	.L236	#
.L232:
	.loc 1 2065 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1668
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	leaq	-256(%rbp), %rcx	#, tmp1669
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp1669,
	movq	%rax, %rdi	# D.22020,
	call	Perl_PerlIO_write	#
	cmpq	$4, %rax	#, D.22024
	je	.L236	#,
	.loc 1 2065 0 discriminator 1
	movl	$-1, %eax	#, D.22018
.LBE68:
	.loc 1 2063 0 is_stmt 1 discriminator 1
	jmp	.L244	#
.L236:
	jmp	.L237	#
.L231:
	.loc 1 2065 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1670
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	testq	%rax, %rax	# D.22020
	jne	.L238	#,
.LBB71:
	.loc 1 2065 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp1671
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	leaq	4(%rax), %rdx	#, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1672
	movq	176(%rax), %rax	# cxt_15(D)->membuf.aend, D.22021
	cmpq	%rax, %rdx	# D.22021, D.22021
	jbe	.L239	#,
.LBB72:
	movq	-280(%rbp), %rax	# cxt, tmp1673
	movq	160(%rax), %rax	# cxt_15(D)->membuf.asiz, D.22022
	addl	$8195, %eax	#, D.22023
	andl	$-8192, %eax	#, tmp1674
	movl	%eax, -56(%rbp)	# tmp1674, nsz
	movq	-280(%rbp), %rax	# cxt, tmp1675
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movq	%rax, %rdx	# D.22021, D.22024
	movq	-280(%rbp), %rax	# cxt, tmp1676
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	subq	%rax, %rdx	# D.22024, D.22024
	movq	%rdx, %rax	# D.22024, D.22024
	movl	%eax, -52(%rbp)	# D.22024, offset
	movl	-56(%rbp), %eax	# nsz, tmp1677
	movslq	%eax, %rdx	# tmp1677, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1678
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	movq	%rdx, %rsi	# D.22022,
	movq	%rax, %rdi	# D.22021,
	call	Perl_safesysrealloc	#
	movq	-280(%rbp), %rdx	# cxt, tmp1679
	movq	%rax, 152(%rdx)	# D.22025, cxt_15(D)->membuf.arena
	movl	-56(%rbp), %eax	# nsz, tmp1680
	movslq	%eax, %rdx	# tmp1680, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1681
	movq	%rdx, 160(%rax)	# D.22022, cxt_15(D)->membuf.asiz
	movq	-280(%rbp), %rax	# cxt, tmp1682
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-52(%rbp), %eax	# offset, tmp1683
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1684
	movq	%rdx, 168(%rax)	# D.22021, cxt_15(D)->membuf.aptr
	movq	-280(%rbp), %rax	# cxt, tmp1685
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-56(%rbp), %eax	# nsz, tmp1686
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1687
	movq	%rdx, 176(%rax)	# D.22021, cxt_15(D)->membuf.aend
.L239:
.LBE72:
	.loc 1 2065 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1689
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movq	%rax, %rdx	# D.22021, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1690
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	andq	$-4, %rax	#, D.22022
	cmpq	%rax, %rdx	# D.22022, D.22022
	jne	.L240	#,
	.loc 1 2065 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp1691
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movl	-260(%rbp), %edx	# wlen, wlen.116
	movl	%edx, (%rax)	# wlen.116, MEM[(int *)_1040]
	jmp	.L241	#
.L240:
	.loc 1 2065 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1692
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movl	-260(%rbp), %edx	# MEM[(char * {ref-all})&wlen], D.22018
	movl	%edx, (%rax)	# D.22018, MEM[(char * {ref-all})_1042]
.L241:
	.loc 1 2065 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp1693
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	leaq	4(%rax), %rdx	#, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1694
	movq	%rdx, 168(%rax)	# D.22021, cxt_15(D)->membuf.aptr
.LBE71:
	jmp	.L237	#
.L238:
	.loc 1 2065 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1696
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	leaq	-260(%rbp), %rcx	#, tmp1697
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp1697,
	movq	%rax, %rdi	# D.22020,
	call	Perl_PerlIO_write	#
	cmpq	$4, %rax	#, D.22024
	je	.L237	#,
	.loc 1 2065 0 discriminator 1
	movl	$-1, %eax	#, D.22018
	jmp	.L244	#
.L237:
	.loc 1 2065 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1698
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	testq	%rax, %rax	# D.22020
	jne	.L242	#,
.LBB73:
	.loc 1 2065 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp1699
	movq	168(%rax), %rdx	# cxt_15(D)->membuf.aptr, D.22021
	movl	-260(%rbp), %eax	# wlen, wlen.117
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1700
	movq	176(%rax), %rax	# cxt_15(D)->membuf.aend, D.22021
	cmpq	%rax, %rdx	# D.22021, D.22021
	jbe	.L243	#,
.LBB74:
	movq	-280(%rbp), %rax	# cxt, tmp1701
	movq	160(%rax), %rax	# cxt_15(D)->membuf.asiz, D.22022
	movl	%eax, %edx	# D.22022, D.22023
	movl	-260(%rbp), %eax	# wlen, wlen.118
	addl	%edx, %eax	# D.22023, D.22023
	addl	$8191, %eax	#, D.22023
	andl	$-8192, %eax	#, tmp1702
	movl	%eax, -48(%rbp)	# tmp1702, nsz
	movq	-280(%rbp), %rax	# cxt, tmp1703
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movq	%rax, %rdx	# D.22021, D.22024
	movq	-280(%rbp), %rax	# cxt, tmp1704
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	subq	%rax, %rdx	# D.22024, D.22024
	movq	%rdx, %rax	# D.22024, D.22024
	movl	%eax, -44(%rbp)	# D.22024, offset
	movl	-48(%rbp), %eax	# nsz, tmp1705
	movslq	%eax, %rdx	# tmp1705, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1706
	movq	152(%rax), %rax	# cxt_15(D)->membuf.arena, D.22021
	movq	%rdx, %rsi	# D.22022,
	movq	%rax, %rdi	# D.22021,
	call	Perl_safesysrealloc	#
	movq	-280(%rbp), %rdx	# cxt, tmp1707
	movq	%rax, 152(%rdx)	# D.22025, cxt_15(D)->membuf.arena
	movl	-48(%rbp), %eax	# nsz, tmp1708
	movslq	%eax, %rdx	# tmp1708, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1709
	movq	%rdx, 160(%rax)	# D.22022, cxt_15(D)->membuf.asiz
	movq	-280(%rbp), %rax	# cxt, tmp1710
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-44(%rbp), %eax	# offset, tmp1711
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1712
	movq	%rdx, 168(%rax)	# D.22021, cxt_15(D)->membuf.aptr
	movq	-280(%rbp), %rax	# cxt, tmp1713
	movq	152(%rax), %rdx	# cxt_15(D)->membuf.arena, D.22021
	movl	-48(%rbp), %eax	# nsz, tmp1714
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1715
	movq	%rdx, 176(%rax)	# D.22021, cxt_15(D)->membuf.aend
.L243:
.LBE74:
	.loc 1 2065 0 discriminator 2
	movl	-260(%rbp), %eax	# wlen, wlen.120
	movslq	%eax, %rdx	# wlen.120, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1717
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22021
	movq	-24(%rbp), %rcx	# pv, tmp1718
	movq	%rcx, %rsi	# tmp1718,
	movq	%rax, %rdi	# D.22021,
	call	memcpy	#
	movq	-280(%rbp), %rax	# cxt, tmp1719
	movq	168(%rax), %rdx	# cxt_15(D)->membuf.aptr, D.22021
	movl	-260(%rbp), %eax	# wlen, wlen.121
	cltq
	addq	%rax, %rdx	# D.22026, D.22021
	movq	-280(%rbp), %rax	# cxt, tmp1720
	movq	%rdx, 168(%rax)	# D.22021, cxt_15(D)->membuf.aptr
.LBE73:
	jmp	.L197	#
.L242:
	movl	-260(%rbp), %eax	# wlen, wlen.122
	movslq	%eax, %rdx	# wlen.122, D.22022
	movq	-280(%rbp), %rax	# cxt, tmp1722
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22020
	movq	-24(%rbp), %rcx	# pv, tmp1723
	movq	%rcx, %rsi	# tmp1723,
	movq	%rax, %rdi	# D.22020,
	call	Perl_PerlIO_write	#
	movl	-260(%rbp), %edx	# wlen, wlen.123
	movslq	%edx, %rdx	# wlen.123, D.22024
	cmpq	%rdx, %rax	# D.22024, D.22024
	je	.L197	#,
	.loc 1 2065 0 discriminator 1
	movl	$-1, %eax	#, D.22018
	jmp	.L244	#
.L197:
.LBE48:
	jmp	.L115	#
.L180:
.LBB75:
	.loc 1 2069 0 is_stmt 1
	movq	-280(%rbp), %rax	# cxt, tmp1724
	movl	$1, 112(%rax)	#, cxt_15(D)->s_dirty
	movq	-288(%rbp), %rbx	# sv, sv.124
	movq	-288(%rbp), %rax	# sv, tmp1725
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1725,
	call	Perl_sv_reftype	#
	movq	%rbx, %rdx	# sv.124,
	movq	%rax, %rsi	# D.22021,
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L115:
.LBE75:
	.loc 1 2072 0
	movl	$0, %eax	#, D.22018
.L244:
	.loc 1 2073 0
	addq	$296, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	store_scalar, .-store_scalar
	.type	store_array, @function
store_array:
.LFB23:
	.loc 1 2084 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# cxt, cxt
	movq	%rsi, -80(%rbp)	# av, av
	.loc 1 2086 0
	movq	-80(%rbp), %rax	# av, tmp206
	movq	%rax, %rdi	# tmp206,
	call	Perl_av_len	#
	addl	$1, %eax	#, len.125
	movl	%eax, -56(%rbp)	# len.125, len
	.loc 1 2096 0
	movq	-72(%rbp), %rax	# cxt, tmp207
	movq	216(%rax), %rax	# cxt_6(D)->fio, D.22034
	testq	%rax, %rax	# D.22034
	jne	.L246	#,
	.loc 1 2096 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# cxt, tmp208
	movq	168(%rax), %rdx	# cxt_6(D)->membuf.aptr, D.22035
	movq	-72(%rbp), %rax	# cxt, tmp209
	movq	176(%rax), %rax	# cxt_6(D)->membuf.aend, D.22035
	cmpq	%rax, %rdx	# D.22035, D.22035
	jae	.L247	#,
	movq	-72(%rbp), %rax	# cxt, tmp210
	movq	168(%rax), %rax	# cxt_6(D)->membuf.aptr, D.22035
	leaq	1(%rax), %rcx	#, D.22035
	movq	-72(%rbp), %rdx	# cxt, tmp211
	movq	%rcx, 168(%rdx)	# D.22035, cxt_6(D)->membuf.aptr
	movb	$2, (%rax)	#, *_11
	jmp	.L249	#
.L247:
.LBB76:
	.loc 1 2096 0 discriminator 2
	movq	-72(%rbp), %rax	# cxt, tmp212
	movq	160(%rax), %rax	# cxt_6(D)->membuf.asiz, D.22036
	addl	$8192, %eax	#, D.22037
	andl	$-8192, %eax	#, tmp213
	movl	%eax, -44(%rbp)	# tmp213, nsz
	movq	-72(%rbp), %rax	# cxt, tmp214
	movq	168(%rax), %rax	# cxt_6(D)->membuf.aptr, D.22035
	movq	%rax, %rdx	# D.22035, D.22038
	movq	-72(%rbp), %rax	# cxt, tmp215
	movq	152(%rax), %rax	# cxt_6(D)->membuf.arena, D.22035
	subq	%rax, %rdx	# D.22038, D.22038
	movq	%rdx, %rax	# D.22038, D.22038
	movl	%eax, -40(%rbp)	# D.22038, offset
	movl	-44(%rbp), %eax	# nsz, tmp216
	movslq	%eax, %rdx	# tmp216, D.22036
	movq	-72(%rbp), %rax	# cxt, tmp217
	movq	152(%rax), %rax	# cxt_6(D)->membuf.arena, D.22035
	movq	%rdx, %rsi	# D.22036,
	movq	%rax, %rdi	# D.22035,
	call	Perl_safesysrealloc	#
	movq	-72(%rbp), %rdx	# cxt, tmp218
	movq	%rax, 152(%rdx)	# D.22039, cxt_6(D)->membuf.arena
	movl	-44(%rbp), %eax	# nsz, tmp219
	movslq	%eax, %rdx	# tmp219, D.22036
	movq	-72(%rbp), %rax	# cxt, tmp220
	movq	%rdx, 160(%rax)	# D.22036, cxt_6(D)->membuf.asiz
	movq	-72(%rbp), %rax	# cxt, tmp221
	movq	152(%rax), %rdx	# cxt_6(D)->membuf.arena, D.22035
	movl	-40(%rbp), %eax	# offset, tmp222
	cltq
	addq	%rax, %rdx	# D.22040, D.22035
	movq	-72(%rbp), %rax	# cxt, tmp223
	movq	%rdx, 168(%rax)	# D.22035, cxt_6(D)->membuf.aptr
	movq	-72(%rbp), %rax	# cxt, tmp224
	movq	152(%rax), %rdx	# cxt_6(D)->membuf.arena, D.22035
	movl	-44(%rbp), %eax	# nsz, tmp225
	cltq
	addq	%rax, %rdx	# D.22040, D.22035
	movq	-72(%rbp), %rax	# cxt, tmp226
	movq	%rdx, 176(%rax)	# D.22035, cxt_6(D)->membuf.aend
.LBE76:
	movq	-72(%rbp), %rax	# cxt, tmp228
	movq	168(%rax), %rax	# cxt_6(D)->membuf.aptr, D.22035
	leaq	1(%rax), %rcx	#, D.22035
	movq	-72(%rbp), %rdx	# cxt, tmp229
	movq	%rcx, 168(%rdx)	# D.22035, cxt_6(D)->membuf.aptr
	movb	$2, (%rax)	#, *_36
	jmp	.L249	#
.L246:
	movq	-72(%rbp), %rax	# cxt, tmp230
	movq	216(%rax), %rax	# cxt_6(D)->fio, D.22034
	movl	$2, %esi	#,
	movq	%rax, %rdi	# D.22034,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22033
	jne	.L249	#,
	.loc 1 2096 0 discriminator 1
	movl	$-1, %eax	#, D.22033
	jmp	.L270	#
.L249:
	.loc 1 2097 0 is_stmt 1
	movq	-72(%rbp), %rax	# cxt, tmp231
	movl	80(%rax), %eax	# cxt_6(D)->netorder, D.22033
	testl	%eax, %eax	# D.22033
	je	.L251	#,
.LBB77:
	.loc 1 2097 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# len, len.126
	cltq
	movq	%rax, %rdi	# D.22038,
	call	Perl_my_htonl	#
	movl	%eax, -52(%rbp)	# y.127, y
	movq	-72(%rbp), %rax	# cxt, tmp232
	movq	216(%rax), %rax	# cxt_6(D)->fio, D.22034
	testq	%rax, %rax	# D.22034
	jne	.L252	#,
.LBB78:
	movq	-72(%rbp), %rax	# cxt, tmp233
	movq	168(%rax), %rax	# cxt_6(D)->membuf.aptr, D.22035
	leaq	4(%rax), %rdx	#, D.22035
	movq	-72(%rbp), %rax	# cxt, tmp234
	movq	176(%rax), %rax	# cxt_6(D)->membuf.aend, D.22035
	cmpq	%rax, %rdx	# D.22035, D.22035
	jbe	.L253	#,
.LBB79:
	movq	-72(%rbp), %rax	# cxt, tmp235
	movq	160(%rax), %rax	# cxt_6(D)->membuf.asiz, D.22036
	addl	$8195, %eax	#, D.22037
	andl	$-8192, %eax	#, tmp236
	movl	%eax, -36(%rbp)	# tmp236, nsz
	movq	-72(%rbp), %rax	# cxt, tmp237
	movq	168(%rax), %rax	# cxt_6(D)->membuf.aptr, D.22035
	movq	%rax, %rdx	# D.22035, D.22038
	movq	-72(%rbp), %rax	# cxt, tmp238
	movq	152(%rax), %rax	# cxt_6(D)->membuf.arena, D.22035
	subq	%rax, %rdx	# D.22038, D.22038
	movq	%rdx, %rax	# D.22038, D.22038
	movl	%eax, -32(%rbp)	# D.22038, offset
	movl	-36(%rbp), %eax	# nsz, tmp239
	movslq	%eax, %rdx	# tmp239, D.22036
	movq	-72(%rbp), %rax	# cxt, tmp240
	movq	152(%rax), %rax	# cxt_6(D)->membuf.arena, D.22035
	movq	%rdx, %rsi	# D.22036,
	movq	%rax, %rdi	# D.22035,
	call	Perl_safesysrealloc	#
	movq	-72(%rbp), %rdx	# cxt, tmp241
	movq	%rax, 152(%rdx)	# D.22039, cxt_6(D)->membuf.arena
	movl	-36(%rbp), %eax	# nsz, tmp242
	movslq	%eax, %rdx	# tmp242, D.22036
	movq	-72(%rbp), %rax	# cxt, tmp243
	movq	%rdx, 160(%rax)	# D.22036, cxt_6(D)->membuf.asiz
	movq	-72(%rbp), %rax	# cxt, tmp244
	movq	152(%rax), %rdx	# cxt_6(D)->membuf.arena, D.22035
	movl	-32(%rbp), %eax	# offset, tmp245
	cltq
	addq	%rax, %rdx	# D.22040, D.22035
	movq	-72(%rbp), %rax	# cxt, tmp246
	movq	%rdx, 168(%rax)	# D.22035, cxt_6(D)->membuf.aptr
	movq	-72(%rbp), %rax	# cxt, tmp247
	movq	152(%rax), %rdx	# cxt_6(D)->membuf.arena, D.22035
	movl	-36(%rbp), %eax	# nsz, tmp248
	cltq
	addq	%rax, %rdx	# D.22040, D.22035
	movq	-72(%rbp), %rax	# cxt, tmp249
	movq	%rdx, 176(%rax)	# D.22035, cxt_6(D)->membuf.aend
.L253:
.LBE79:
	.loc 1 2097 0 discriminator 2
	movq	-72(%rbp), %rax	# cxt, tmp251
	movq	168(%rax), %rax	# cxt_6(D)->membuf.aptr, D.22035
	movq	%rax, %rdx	# D.22035, D.22036
	movq	-72(%rbp), %rax	# cxt, tmp252
	movq	168(%rax), %rax	# cxt_6(D)->membuf.aptr, D.22035
	andq	$-4, %rax	#, D.22036
	cmpq	%rax, %rdx	# D.22036, D.22036
	jne	.L254	#,
	.loc 1 2097 0 discriminator 1
	movq	-72(%rbp), %rax	# cxt, tmp253
	movq	168(%rax), %rax	# cxt_6(D)->membuf.aptr, D.22035
	movl	-52(%rbp), %edx	# y, y.128
	movl	%edx, (%rax)	# y.128, MEM[(int *)_77]
	jmp	.L255	#
.L254:
	.loc 1 2097 0 discriminator 2
	movq	-72(%rbp), %rax	# cxt, tmp254
	movq	168(%rax), %rax	# cxt_6(D)->membuf.aptr, D.22035
	movl	-52(%rbp), %edx	# MEM[(char * {ref-all})&y], D.22033
	movl	%edx, (%rax)	# D.22033, MEM[(char * {ref-all})_79]
.L255:
	.loc 1 2097 0 discriminator 1
	movq	-72(%rbp), %rax	# cxt, tmp255
	movq	168(%rax), %rax	# cxt_6(D)->membuf.aptr, D.22035
	leaq	4(%rax), %rdx	#, D.22035
	movq	-72(%rbp), %rax	# cxt, tmp256
	movq	%rdx, 168(%rax)	# D.22035, cxt_6(D)->membuf.aptr
.LBE78:
	jmp	.L256	#
.L252:
	.loc 1 2097 0 discriminator 2
	movq	-72(%rbp), %rax	# cxt, tmp258
	movq	216(%rax), %rax	# cxt_6(D)->fio, D.22034
	leaq	-52(%rbp), %rcx	#, tmp259
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp259,
	movq	%rax, %rdi	# D.22034,
	call	Perl_PerlIO_write	#
	cmpq	$4, %rax	#, D.22038
	je	.L256	#,
	.loc 1 2097 0 discriminator 1
	movl	$-1, %eax	#, D.22033
	jmp	.L270	#
.L256:
.LBE77:
	jmp	.L257	#
.L251:
	.loc 1 2097 0 discriminator 2
	movq	-72(%rbp), %rax	# cxt, tmp260
	movq	216(%rax), %rax	# cxt_6(D)->fio, D.22034
	testq	%rax, %rax	# D.22034
	jne	.L258	#,
.LBB80:
	.loc 1 2097 0 discriminator 1
	movq	-72(%rbp), %rax	# cxt, tmp261
	movq	168(%rax), %rax	# cxt_6(D)->membuf.aptr, D.22035
	leaq	4(%rax), %rdx	#, D.22035
	movq	-72(%rbp), %rax	# cxt, tmp262
	movq	176(%rax), %rax	# cxt_6(D)->membuf.aend, D.22035
	cmpq	%rax, %rdx	# D.22035, D.22035
	jbe	.L259	#,
.LBB81:
	movq	-72(%rbp), %rax	# cxt, tmp263
	movq	160(%rax), %rax	# cxt_6(D)->membuf.asiz, D.22036
	addl	$8195, %eax	#, D.22037
	andl	$-8192, %eax	#, tmp264
	movl	%eax, -28(%rbp)	# tmp264, nsz
	movq	-72(%rbp), %rax	# cxt, tmp265
	movq	168(%rax), %rax	# cxt_6(D)->membuf.aptr, D.22035
	movq	%rax, %rdx	# D.22035, D.22038
	movq	-72(%rbp), %rax	# cxt, tmp266
	movq	152(%rax), %rax	# cxt_6(D)->membuf.arena, D.22035
	subq	%rax, %rdx	# D.22038, D.22038
	movq	%rdx, %rax	# D.22038, D.22038
	movl	%eax, -24(%rbp)	# D.22038, offset
	movl	-28(%rbp), %eax	# nsz, tmp267
	movslq	%eax, %rdx	# tmp267, D.22036
	movq	-72(%rbp), %rax	# cxt, tmp268
	movq	152(%rax), %rax	# cxt_6(D)->membuf.arena, D.22035
	movq	%rdx, %rsi	# D.22036,
	movq	%rax, %rdi	# D.22035,
	call	Perl_safesysrealloc	#
	movq	-72(%rbp), %rdx	# cxt, tmp269
	movq	%rax, 152(%rdx)	# D.22039, cxt_6(D)->membuf.arena
	movl	-28(%rbp), %eax	# nsz, tmp270
	movslq	%eax, %rdx	# tmp270, D.22036
	movq	-72(%rbp), %rax	# cxt, tmp271
	movq	%rdx, 160(%rax)	# D.22036, cxt_6(D)->membuf.asiz
	movq	-72(%rbp), %rax	# cxt, tmp272
	movq	152(%rax), %rdx	# cxt_6(D)->membuf.arena, D.22035
	movl	-24(%rbp), %eax	# offset, tmp273
	cltq
	addq	%rax, %rdx	# D.22040, D.22035
	movq	-72(%rbp), %rax	# cxt, tmp274
	movq	%rdx, 168(%rax)	# D.22035, cxt_6(D)->membuf.aptr
	movq	-72(%rbp), %rax	# cxt, tmp275
	movq	152(%rax), %rdx	# cxt_6(D)->membuf.arena, D.22035
	movl	-28(%rbp), %eax	# nsz, tmp276
	cltq
	addq	%rax, %rdx	# D.22040, D.22035
	movq	-72(%rbp), %rax	# cxt, tmp277
	movq	%rdx, 176(%rax)	# D.22035, cxt_6(D)->membuf.aend
.L259:
.LBE81:
	.loc 1 2097 0 discriminator 2
	movq	-72(%rbp), %rax	# cxt, tmp279
	movq	168(%rax), %rax	# cxt_6(D)->membuf.aptr, D.22035
	movq	%rax, %rdx	# D.22035, D.22036
	movq	-72(%rbp), %rax	# cxt, tmp280
	movq	168(%rax), %rax	# cxt_6(D)->membuf.aptr, D.22035
	andq	$-4, %rax	#, D.22036
	cmpq	%rax, %rdx	# D.22036, D.22036
	jne	.L260	#,
	.loc 1 2097 0 discriminator 1
	movq	-72(%rbp), %rax	# cxt, tmp281
	movq	168(%rax), %rax	# cxt_6(D)->membuf.aptr, D.22035
	movl	-56(%rbp), %edx	# len, len.129
	movl	%edx, (%rax)	# len.129, MEM[(int *)_118]
	jmp	.L261	#
.L260:
	.loc 1 2097 0 discriminator 2
	movq	-72(%rbp), %rax	# cxt, tmp282
	movq	168(%rax), %rax	# cxt_6(D)->membuf.aptr, D.22035
	movl	-56(%rbp), %edx	# MEM[(char * {ref-all})&len], D.22033
	movl	%edx, (%rax)	# D.22033, MEM[(char * {ref-all})_120]
.L261:
	.loc 1 2097 0 discriminator 1
	movq	-72(%rbp), %rax	# cxt, tmp283
	movq	168(%rax), %rax	# cxt_6(D)->membuf.aptr, D.22035
	leaq	4(%rax), %rdx	#, D.22035
	movq	-72(%rbp), %rax	# cxt, tmp284
	movq	%rdx, 168(%rax)	# D.22035, cxt_6(D)->membuf.aptr
.LBE80:
	jmp	.L257	#
.L258:
	.loc 1 2097 0 discriminator 2
	movq	-72(%rbp), %rax	# cxt, tmp286
	movq	216(%rax), %rax	# cxt_6(D)->fio, D.22034
	leaq	-56(%rbp), %rcx	#, tmp287
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp287,
	movq	%rax, %rdi	# D.22034,
	call	Perl_PerlIO_write	#
	cmpq	$4, %rax	#, D.22038
	je	.L257	#,
	.loc 1 2097 0 discriminator 1
	movl	$-1, %eax	#, D.22033
	jmp	.L270	#
.L257:
	.loc 1 2104 0 is_stmt 1
	movl	$0, -48(%rbp)	#, i
	jmp	.L262	#
.L269:
	.loc 1 2105 0
	movl	-48(%rbp), %ecx	# i, tmp288
	movq	-80(%rbp), %rax	# av, tmp289
	movl	$0, %edx	#,
	movl	%ecx, %esi	# tmp288,
	movq	%rax, %rdi	# tmp289,
	call	Perl_av_fetch	#
	movq	%rax, -8(%rbp)	# tmp290, sav
	.loc 1 2106 0
	cmpq	$0, -8(%rbp)	#, sav
	jne	.L263	#,
.LBB82:
	.loc 1 2108 0
	movq	-72(%rbp), %rax	# cxt, tmp291
	movq	64(%rax), %rax	# cxt_6(D)->tagnum, D.22038
	leaq	1(%rax), %rdx	#, D.22038
	movq	-72(%rbp), %rax	# cxt, tmp292
	movq	%rdx, 64(%rax)	# D.22038, cxt_6(D)->tagnum
	movq	-72(%rbp), %rax	# cxt, tmp293
	movq	216(%rax), %rax	# cxt_6(D)->fio, D.22034
	testq	%rax, %rax	# D.22034
	jne	.L264	#,
	.loc 1 2108 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# cxt, tmp294
	movq	168(%rax), %rdx	# cxt_6(D)->membuf.aptr, D.22035
	movq	-72(%rbp), %rax	# cxt, tmp295
	movq	176(%rax), %rax	# cxt_6(D)->membuf.aend, D.22035
	cmpq	%rax, %rdx	# D.22035, D.22035
	jae	.L265	#,
	movq	-72(%rbp), %rax	# cxt, tmp296
	movq	168(%rax), %rax	# cxt_6(D)->membuf.aptr, D.22035
	leaq	1(%rax), %rcx	#, D.22035
	movq	-72(%rbp), %rdx	# cxt, tmp297
	movq	%rcx, 168(%rdx)	# D.22035, cxt_6(D)->membuf.aptr
	movb	$14, (%rax)	#, *_137
	jmp	.L267	#
.L265:
.LBB83:
	.loc 1 2108 0 discriminator 2
	movq	-72(%rbp), %rax	# cxt, tmp298
	movq	160(%rax), %rax	# cxt_6(D)->membuf.asiz, D.22036
	addl	$8192, %eax	#, D.22037
	andl	$-8192, %eax	#, tmp299
	movl	%eax, -20(%rbp)	# tmp299, nsz
	movq	-72(%rbp), %rax	# cxt, tmp300
	movq	168(%rax), %rax	# cxt_6(D)->membuf.aptr, D.22035
	movq	%rax, %rdx	# D.22035, D.22038
	movq	-72(%rbp), %rax	# cxt, tmp301
	movq	152(%rax), %rax	# cxt_6(D)->membuf.arena, D.22035
	subq	%rax, %rdx	# D.22038, D.22038
	movq	%rdx, %rax	# D.22038, D.22038
	movl	%eax, -16(%rbp)	# D.22038, offset
	movl	-20(%rbp), %eax	# nsz, tmp302
	movslq	%eax, %rdx	# tmp302, D.22036
	movq	-72(%rbp), %rax	# cxt, tmp303
	movq	152(%rax), %rax	# cxt_6(D)->membuf.arena, D.22035
	movq	%rdx, %rsi	# D.22036,
	movq	%rax, %rdi	# D.22035,
	call	Perl_safesysrealloc	#
	movq	-72(%rbp), %rdx	# cxt, tmp304
	movq	%rax, 152(%rdx)	# D.22039, cxt_6(D)->membuf.arena
	movl	-20(%rbp), %eax	# nsz, tmp305
	movslq	%eax, %rdx	# tmp305, D.22036
	movq	-72(%rbp), %rax	# cxt, tmp306
	movq	%rdx, 160(%rax)	# D.22036, cxt_6(D)->membuf.asiz
	movq	-72(%rbp), %rax	# cxt, tmp307
	movq	152(%rax), %rdx	# cxt_6(D)->membuf.arena, D.22035
	movl	-16(%rbp), %eax	# offset, tmp308
	cltq
	addq	%rax, %rdx	# D.22040, D.22035
	movq	-72(%rbp), %rax	# cxt, tmp309
	movq	%rdx, 168(%rax)	# D.22035, cxt_6(D)->membuf.aptr
	movq	-72(%rbp), %rax	# cxt, tmp310
	movq	152(%rax), %rdx	# cxt_6(D)->membuf.arena, D.22035
	movl	-20(%rbp), %eax	# nsz, tmp311
	cltq
	addq	%rax, %rdx	# D.22040, D.22035
	movq	-72(%rbp), %rax	# cxt, tmp312
	movq	%rdx, 176(%rax)	# D.22035, cxt_6(D)->membuf.aend
.LBE83:
	movq	-72(%rbp), %rax	# cxt, tmp314
	movq	168(%rax), %rax	# cxt_6(D)->membuf.aptr, D.22035
	leaq	1(%rax), %rcx	#, D.22035
	movq	-72(%rbp), %rdx	# cxt, tmp315
	movq	%rcx, 168(%rdx)	# D.22035, cxt_6(D)->membuf.aptr
	movb	$14, (%rax)	#, *_162
.LBE82:
	.loc 1 2109 0 is_stmt 1 discriminator 2
	jmp	.L268	#
.L264:
.LBB84:
	.loc 1 2108 0 discriminator 2
	movq	-72(%rbp), %rax	# cxt, tmp316
	movq	216(%rax), %rax	# cxt_6(D)->fio, D.22034
	movl	$14, %esi	#,
	movq	%rax, %rdi	# D.22034,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22033
	jne	.L267	#,
	.loc 1 2108 0 is_stmt 0 discriminator 1
	movl	$-1, %eax	#, D.22033
	jmp	.L270	#
.L267:
.LBE84:
	.loc 1 2109 0 is_stmt 1
	jmp	.L268	#
.L263:
	.loc 1 2112 0
	movq	-8(%rbp), %rax	# sav, tmp317
	movq	(%rax), %rdx	# *sav_130, D.22041
	movq	-72(%rbp), %rax	# cxt, tmp318
	movq	%rdx, %rsi	# D.22041,
	movq	%rax, %rdi	# tmp318,
	call	store	#
	movl	%eax, -12(%rbp)	# tmp319, ret
	cmpl	$0, -12(%rbp)	#, ret
	je	.L268	#,
	.loc 1 2113 0
	movl	-12(%rbp), %eax	# ret, D.22033
	jmp	.L270	#
.L268:
	.loc 1 2104 0
	addl	$1, -48(%rbp)	#, i
.L262:
	.loc 1 2104 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# len, len.130
	cmpl	%eax, -48(%rbp)	# len.130, i
	jl	.L269	#,
	.loc 1 2118 0 is_stmt 1
	movl	$0, %eax	#, D.22033
.L270:
	.loc 1 2119 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	store_array, .-store_array
	.section	.rodata
.LC3:
	.string	"Storable::canonical"
	.text
	.type	store_hash, @function
store_hash:
.LFB24:
	.loc 1 2164 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$288, %rsp	#,
	movq	%rdi, -280(%rbp)	# cxt, cxt
	movq	%rsi, -288(%rbp)	# hv, hv
	.loc 1 2167 0
	movq	-288(%rbp), %rax	# hv, tmp661
	movq	(%rax), %rax	# hv_33(D)->sv_any, D.22043
	movq	24(%rax), %rax	# _34->xhv_keys, D.22044
	.loc 1 2165 0
	movl	%eax, -256(%rbp)	# len.131, len
	.loc 1 2172 0
	movl	$0, -240(%rbp)	#, ret
	.loc 1 2175 0
	movq	-288(%rbp), %rax	# hv, tmp662
	movl	12(%rax), %eax	# hv_33(D)->sv_flags, D.22045
	andl	$8388608, %eax	#, D.22045
	.loc 1 2179 0
	testl	%eax, %eax	# D.22045
	jne	.L272	#,
	.loc 1 2177 0 discriminator 2
	movq	-288(%rbp), %rax	# hv, tmp663
	movl	12(%rax), %eax	# hv_33(D)->sv_flags, D.22045
	.loc 1 2179 0 discriminator 2
	testl	%eax, %eax	# D.22046
	jns	.L273	#,
.L272:
	.loc 1 2179 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.132
	jmp	.L274	#
.L273:
	.loc 1 2179 0 discriminator 3
	movl	$0, %eax	#, iftmp.132
.L274:
	.loc 1 2175 0 is_stmt 1
	movl	%eax, -236(%rbp)	# iftmp.132, flagged_hash
	.loc 1 2180 0
	movq	-288(%rbp), %rax	# hv, tmp664
	movl	12(%rax), %eax	# hv_33(D)->sv_flags, D.22045
	andl	$8388608, %eax	#, D.22045
	testl	%eax, %eax	# D.22045
	setne	%al	#, D.22047
	movb	%al, -257(%rbp)	# D.22047, hash_flags
	.loc 1 2194 0
	cmpl	$0, -236(%rbp)	#, flagged_hash
	je	.L275	#,
	.loc 1 2195 0
	movq	-280(%rbp), %rax	# cxt, tmp665
	movq	216(%rax), %rax	# cxt_49(D)->fio, D.22048
	testq	%rax, %rax	# D.22048
	jne	.L276	#,
	.loc 1 2195 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp666
	movq	168(%rax), %rdx	# cxt_49(D)->membuf.aptr, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp667
	movq	176(%rax), %rax	# cxt_49(D)->membuf.aend, D.22049
	cmpq	%rax, %rdx	# D.22049, D.22049
	jae	.L277	#,
	movq	-280(%rbp), %rax	# cxt, tmp668
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	leaq	1(%rax), %rcx	#, D.22049
	movq	-280(%rbp), %rdx	# cxt, tmp669
	movq	%rcx, 168(%rdx)	# D.22049, cxt_49(D)->membuf.aptr
	movb	$25, (%rax)	#, *_54
	jmp	.L279	#
.L277:
.LBB85:
	.loc 1 2195 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp670
	movq	160(%rax), %rax	# cxt_49(D)->membuf.asiz, D.22050
	addl	$8192, %eax	#, D.22051
	andl	$-8192, %eax	#, tmp671
	movl	%eax, -232(%rbp)	# tmp671, nsz
	movq	-280(%rbp), %rax	# cxt, tmp672
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	movq	%rax, %rdx	# D.22049, D.22044
	movq	-280(%rbp), %rax	# cxt, tmp673
	movq	152(%rax), %rax	# cxt_49(D)->membuf.arena, D.22049
	subq	%rax, %rdx	# D.22044, D.22044
	movq	%rdx, %rax	# D.22044, D.22044
	movl	%eax, -228(%rbp)	# D.22044, offset
	movl	-232(%rbp), %eax	# nsz, tmp674
	movslq	%eax, %rdx	# tmp674, D.22050
	movq	-280(%rbp), %rax	# cxt, tmp675
	movq	152(%rax), %rax	# cxt_49(D)->membuf.arena, D.22049
	movq	%rdx, %rsi	# D.22050,
	movq	%rax, %rdi	# D.22049,
	call	Perl_safesysrealloc	#
	movq	-280(%rbp), %rdx	# cxt, tmp676
	movq	%rax, 152(%rdx)	# D.22052, cxt_49(D)->membuf.arena
	movl	-232(%rbp), %eax	# nsz, tmp677
	movslq	%eax, %rdx	# tmp677, D.22050
	movq	-280(%rbp), %rax	# cxt, tmp678
	movq	%rdx, 160(%rax)	# D.22050, cxt_49(D)->membuf.asiz
	movq	-280(%rbp), %rax	# cxt, tmp679
	movq	152(%rax), %rdx	# cxt_49(D)->membuf.arena, D.22049
	movl	-228(%rbp), %eax	# offset, tmp680
	cltq
	addq	%rax, %rdx	# D.22053, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp681
	movq	%rdx, 168(%rax)	# D.22049, cxt_49(D)->membuf.aptr
	movq	-280(%rbp), %rax	# cxt, tmp682
	movq	152(%rax), %rdx	# cxt_49(D)->membuf.arena, D.22049
	movl	-232(%rbp), %eax	# nsz, tmp683
	cltq
	addq	%rax, %rdx	# D.22053, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp684
	movq	%rdx, 176(%rax)	# D.22049, cxt_49(D)->membuf.aend
.LBE85:
	movq	-280(%rbp), %rax	# cxt, tmp686
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	leaq	1(%rax), %rcx	#, D.22049
	movq	-280(%rbp), %rdx	# cxt, tmp687
	movq	%rcx, 168(%rdx)	# D.22049, cxt_49(D)->membuf.aptr
	movb	$25, (%rax)	#, *_79
	jmp	.L279	#
.L276:
	movq	-280(%rbp), %rax	# cxt, tmp688
	movq	216(%rax), %rax	# cxt_49(D)->fio, D.22048
	movl	$25, %esi	#,
	movq	%rax, %rdi	# D.22048,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22042
	jne	.L279	#,
	.loc 1 2195 0 discriminator 1
	movl	$-1, %eax	#, D.22042
	jmp	.L380	#
.L279:
	.loc 1 2196 0 is_stmt 1
	movq	-280(%rbp), %rax	# cxt, tmp689
	movq	216(%rax), %rax	# cxt_49(D)->fio, D.22048
	testq	%rax, %rax	# D.22048
	jne	.L281	#,
	.loc 1 2196 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp690
	movq	168(%rax), %rdx	# cxt_49(D)->membuf.aptr, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp691
	movq	176(%rax), %rax	# cxt_49(D)->membuf.aend, D.22049
	cmpq	%rax, %rdx	# D.22049, D.22049
	jae	.L282	#,
	movq	-280(%rbp), %rax	# cxt, tmp692
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	leaq	1(%rax), %rcx	#, D.22049
	movq	-280(%rbp), %rdx	# cxt, tmp693
	movq	%rcx, 168(%rdx)	# D.22049, cxt_49(D)->membuf.aptr
	movzbl	-257(%rbp), %edx	# hash_flags, hash_flags.133
	movb	%dl, (%rax)	# hash_flags.133, *_88
	jmp	.L284	#
.L282:
.LBB86:
	.loc 1 2196 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp694
	movq	160(%rax), %rax	# cxt_49(D)->membuf.asiz, D.22050
	addl	$8192, %eax	#, D.22051
	andl	$-8192, %eax	#, tmp695
	movl	%eax, -224(%rbp)	# tmp695, nsz
	movq	-280(%rbp), %rax	# cxt, tmp696
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	movq	%rax, %rdx	# D.22049, D.22044
	movq	-280(%rbp), %rax	# cxt, tmp697
	movq	152(%rax), %rax	# cxt_49(D)->membuf.arena, D.22049
	subq	%rax, %rdx	# D.22044, D.22044
	movq	%rdx, %rax	# D.22044, D.22044
	movl	%eax, -220(%rbp)	# D.22044, offset
	movl	-224(%rbp), %eax	# nsz, tmp698
	movslq	%eax, %rdx	# tmp698, D.22050
	movq	-280(%rbp), %rax	# cxt, tmp699
	movq	152(%rax), %rax	# cxt_49(D)->membuf.arena, D.22049
	movq	%rdx, %rsi	# D.22050,
	movq	%rax, %rdi	# D.22049,
	call	Perl_safesysrealloc	#
	movq	-280(%rbp), %rdx	# cxt, tmp700
	movq	%rax, 152(%rdx)	# D.22052, cxt_49(D)->membuf.arena
	movl	-224(%rbp), %eax	# nsz, tmp701
	movslq	%eax, %rdx	# tmp701, D.22050
	movq	-280(%rbp), %rax	# cxt, tmp702
	movq	%rdx, 160(%rax)	# D.22050, cxt_49(D)->membuf.asiz
	movq	-280(%rbp), %rax	# cxt, tmp703
	movq	152(%rax), %rdx	# cxt_49(D)->membuf.arena, D.22049
	movl	-220(%rbp), %eax	# offset, tmp704
	cltq
	addq	%rax, %rdx	# D.22053, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp705
	movq	%rdx, 168(%rax)	# D.22049, cxt_49(D)->membuf.aptr
	movq	-280(%rbp), %rax	# cxt, tmp706
	movq	152(%rax), %rdx	# cxt_49(D)->membuf.arena, D.22049
	movl	-224(%rbp), %eax	# nsz, tmp707
	cltq
	addq	%rax, %rdx	# D.22053, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp708
	movq	%rdx, 176(%rax)	# D.22049, cxt_49(D)->membuf.aend
.LBE86:
	movq	-280(%rbp), %rax	# cxt, tmp710
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	leaq	1(%rax), %rcx	#, D.22049
	movq	-280(%rbp), %rdx	# cxt, tmp711
	movq	%rcx, 168(%rdx)	# D.22049, cxt_49(D)->membuf.aptr
	movzbl	-257(%rbp), %edx	# hash_flags, hash_flags.134
	movb	%dl, (%rax)	# hash_flags.134, *_114
	jmp	.L284	#
.L281:
	movzbl	-257(%rbp), %edx	# hash_flags, D.22042
	movq	-280(%rbp), %rax	# cxt, tmp712
	movq	216(%rax), %rax	# cxt_49(D)->fio, D.22048
	movl	%edx, %esi	# D.22042,
	movq	%rax, %rdi	# D.22048,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22042
	jne	.L284	#,
	.loc 1 2196 0 discriminator 1
	movl	$-1, %eax	#, D.22042
	jmp	.L380	#
.L275:
	.loc 1 2198 0 is_stmt 1
	movq	-280(%rbp), %rax	# cxt, tmp713
	movq	216(%rax), %rax	# cxt_49(D)->fio, D.22048
	testq	%rax, %rax	# D.22048
	jne	.L285	#,
	.loc 1 2198 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp714
	movq	168(%rax), %rdx	# cxt_49(D)->membuf.aptr, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp715
	movq	176(%rax), %rax	# cxt_49(D)->membuf.aend, D.22049
	cmpq	%rax, %rdx	# D.22049, D.22049
	jae	.L286	#,
	movq	-280(%rbp), %rax	# cxt, tmp716
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	leaq	1(%rax), %rcx	#, D.22049
	movq	-280(%rbp), %rdx	# cxt, tmp717
	movq	%rcx, 168(%rdx)	# D.22049, cxt_49(D)->membuf.aptr
	movb	$3, (%rax)	#, *_125
	jmp	.L284	#
.L286:
.LBB87:
	.loc 1 2198 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp718
	movq	160(%rax), %rax	# cxt_49(D)->membuf.asiz, D.22050
	addl	$8192, %eax	#, D.22051
	andl	$-8192, %eax	#, tmp719
	movl	%eax, -216(%rbp)	# tmp719, nsz
	movq	-280(%rbp), %rax	# cxt, tmp720
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	movq	%rax, %rdx	# D.22049, D.22044
	movq	-280(%rbp), %rax	# cxt, tmp721
	movq	152(%rax), %rax	# cxt_49(D)->membuf.arena, D.22049
	subq	%rax, %rdx	# D.22044, D.22044
	movq	%rdx, %rax	# D.22044, D.22044
	movl	%eax, -212(%rbp)	# D.22044, offset
	movl	-216(%rbp), %eax	# nsz, tmp722
	movslq	%eax, %rdx	# tmp722, D.22050
	movq	-280(%rbp), %rax	# cxt, tmp723
	movq	152(%rax), %rax	# cxt_49(D)->membuf.arena, D.22049
	movq	%rdx, %rsi	# D.22050,
	movq	%rax, %rdi	# D.22049,
	call	Perl_safesysrealloc	#
	movq	-280(%rbp), %rdx	# cxt, tmp724
	movq	%rax, 152(%rdx)	# D.22052, cxt_49(D)->membuf.arena
	movl	-216(%rbp), %eax	# nsz, tmp725
	movslq	%eax, %rdx	# tmp725, D.22050
	movq	-280(%rbp), %rax	# cxt, tmp726
	movq	%rdx, 160(%rax)	# D.22050, cxt_49(D)->membuf.asiz
	movq	-280(%rbp), %rax	# cxt, tmp727
	movq	152(%rax), %rdx	# cxt_49(D)->membuf.arena, D.22049
	movl	-212(%rbp), %eax	# offset, tmp728
	cltq
	addq	%rax, %rdx	# D.22053, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp729
	movq	%rdx, 168(%rax)	# D.22049, cxt_49(D)->membuf.aptr
	movq	-280(%rbp), %rax	# cxt, tmp730
	movq	152(%rax), %rdx	# cxt_49(D)->membuf.arena, D.22049
	movl	-216(%rbp), %eax	# nsz, tmp731
	cltq
	addq	%rax, %rdx	# D.22053, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp732
	movq	%rdx, 176(%rax)	# D.22049, cxt_49(D)->membuf.aend
.LBE87:
	movq	-280(%rbp), %rax	# cxt, tmp734
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	leaq	1(%rax), %rcx	#, D.22049
	movq	-280(%rbp), %rdx	# cxt, tmp735
	movq	%rcx, 168(%rdx)	# D.22049, cxt_49(D)->membuf.aptr
	movb	$3, (%rax)	#, *_150
	jmp	.L284	#
.L285:
	movq	-280(%rbp), %rax	# cxt, tmp736
	movq	216(%rax), %rax	# cxt_49(D)->fio, D.22048
	movl	$3, %esi	#,
	movq	%rax, %rdi	# D.22048,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22042
	jne	.L284	#,
	.loc 1 2198 0 discriminator 1
	movl	$-1, %eax	#, D.22042
	jmp	.L380	#
.L284:
	.loc 1 2200 0 is_stmt 1
	movq	-280(%rbp), %rax	# cxt, tmp737
	movl	80(%rax), %eax	# cxt_49(D)->netorder, D.22042
	testl	%eax, %eax	# D.22042
	je	.L288	#,
.LBB88:
	.loc 1 2200 0 is_stmt 0 discriminator 1
	movl	-256(%rbp), %eax	# len, len.135
	cltq
	movq	%rax, %rdi	# D.22044,
	call	Perl_my_htonl	#
	movl	%eax, -120(%rbp)	# y.136, y
	movq	-280(%rbp), %rax	# cxt, tmp738
	movq	216(%rax), %rax	# cxt_49(D)->fio, D.22048
	testq	%rax, %rax	# D.22048
	jne	.L289	#,
.LBB89:
	movq	-280(%rbp), %rax	# cxt, tmp739
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	leaq	4(%rax), %rdx	#, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp740
	movq	176(%rax), %rax	# cxt_49(D)->membuf.aend, D.22049
	cmpq	%rax, %rdx	# D.22049, D.22049
	jbe	.L290	#,
.LBB90:
	movq	-280(%rbp), %rax	# cxt, tmp741
	movq	160(%rax), %rax	# cxt_49(D)->membuf.asiz, D.22050
	addl	$8195, %eax	#, D.22051
	andl	$-8192, %eax	#, tmp742
	movl	%eax, -208(%rbp)	# tmp742, nsz
	movq	-280(%rbp), %rax	# cxt, tmp743
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	movq	%rax, %rdx	# D.22049, D.22044
	movq	-280(%rbp), %rax	# cxt, tmp744
	movq	152(%rax), %rax	# cxt_49(D)->membuf.arena, D.22049
	subq	%rax, %rdx	# D.22044, D.22044
	movq	%rdx, %rax	# D.22044, D.22044
	movl	%eax, -204(%rbp)	# D.22044, offset
	movl	-208(%rbp), %eax	# nsz, tmp745
	movslq	%eax, %rdx	# tmp745, D.22050
	movq	-280(%rbp), %rax	# cxt, tmp746
	movq	152(%rax), %rax	# cxt_49(D)->membuf.arena, D.22049
	movq	%rdx, %rsi	# D.22050,
	movq	%rax, %rdi	# D.22049,
	call	Perl_safesysrealloc	#
	movq	-280(%rbp), %rdx	# cxt, tmp747
	movq	%rax, 152(%rdx)	# D.22052, cxt_49(D)->membuf.arena
	movl	-208(%rbp), %eax	# nsz, tmp748
	movslq	%eax, %rdx	# tmp748, D.22050
	movq	-280(%rbp), %rax	# cxt, tmp749
	movq	%rdx, 160(%rax)	# D.22050, cxt_49(D)->membuf.asiz
	movq	-280(%rbp), %rax	# cxt, tmp750
	movq	152(%rax), %rdx	# cxt_49(D)->membuf.arena, D.22049
	movl	-204(%rbp), %eax	# offset, tmp751
	cltq
	addq	%rax, %rdx	# D.22053, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp752
	movq	%rdx, 168(%rax)	# D.22049, cxt_49(D)->membuf.aptr
	movq	-280(%rbp), %rax	# cxt, tmp753
	movq	152(%rax), %rdx	# cxt_49(D)->membuf.arena, D.22049
	movl	-208(%rbp), %eax	# nsz, tmp754
	cltq
	addq	%rax, %rdx	# D.22053, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp755
	movq	%rdx, 176(%rax)	# D.22049, cxt_49(D)->membuf.aend
.L290:
.LBE90:
	.loc 1 2200 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp757
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	movq	%rax, %rdx	# D.22049, D.22050
	movq	-280(%rbp), %rax	# cxt, tmp758
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	andq	$-4, %rax	#, D.22050
	cmpq	%rax, %rdx	# D.22050, D.22050
	jne	.L291	#,
	.loc 1 2200 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp759
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	movl	-120(%rbp), %edx	# y, y.137
	movl	%edx, (%rax)	# y.137, MEM[(int *)_191]
	jmp	.L292	#
.L291:
	.loc 1 2200 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp760
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	movl	-120(%rbp), %edx	# MEM[(char * {ref-all})&y], D.22042
	movl	%edx, (%rax)	# D.22042, MEM[(char * {ref-all})_193]
.L292:
	.loc 1 2200 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp761
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	leaq	4(%rax), %rdx	#, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp762
	movq	%rdx, 168(%rax)	# D.22049, cxt_49(D)->membuf.aptr
.LBE89:
	jmp	.L293	#
.L289:
	.loc 1 2200 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp764
	movq	216(%rax), %rax	# cxt_49(D)->fio, D.22048
	leaq	-120(%rbp), %rcx	#, tmp765
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp765,
	movq	%rax, %rdi	# D.22048,
	call	Perl_PerlIO_write	#
	cmpq	$4, %rax	#, D.22044
	je	.L293	#,
	.loc 1 2200 0 discriminator 1
	movl	$-1, %eax	#, D.22042
	jmp	.L380	#
.L293:
.LBE88:
	jmp	.L294	#
.L288:
	.loc 1 2200 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp766
	movq	216(%rax), %rax	# cxt_49(D)->fio, D.22048
	testq	%rax, %rax	# D.22048
	jne	.L295	#,
.LBB91:
	.loc 1 2200 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp767
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	leaq	4(%rax), %rdx	#, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp768
	movq	176(%rax), %rax	# cxt_49(D)->membuf.aend, D.22049
	cmpq	%rax, %rdx	# D.22049, D.22049
	jbe	.L296	#,
.LBB92:
	movq	-280(%rbp), %rax	# cxt, tmp769
	movq	160(%rax), %rax	# cxt_49(D)->membuf.asiz, D.22050
	addl	$8195, %eax	#, D.22051
	andl	$-8192, %eax	#, tmp770
	movl	%eax, -200(%rbp)	# tmp770, nsz
	movq	-280(%rbp), %rax	# cxt, tmp771
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	movq	%rax, %rdx	# D.22049, D.22044
	movq	-280(%rbp), %rax	# cxt, tmp772
	movq	152(%rax), %rax	# cxt_49(D)->membuf.arena, D.22049
	subq	%rax, %rdx	# D.22044, D.22044
	movq	%rdx, %rax	# D.22044, D.22044
	movl	%eax, -196(%rbp)	# D.22044, offset
	movl	-200(%rbp), %eax	# nsz, tmp773
	movslq	%eax, %rdx	# tmp773, D.22050
	movq	-280(%rbp), %rax	# cxt, tmp774
	movq	152(%rax), %rax	# cxt_49(D)->membuf.arena, D.22049
	movq	%rdx, %rsi	# D.22050,
	movq	%rax, %rdi	# D.22049,
	call	Perl_safesysrealloc	#
	movq	-280(%rbp), %rdx	# cxt, tmp775
	movq	%rax, 152(%rdx)	# D.22052, cxt_49(D)->membuf.arena
	movl	-200(%rbp), %eax	# nsz, tmp776
	movslq	%eax, %rdx	# tmp776, D.22050
	movq	-280(%rbp), %rax	# cxt, tmp777
	movq	%rdx, 160(%rax)	# D.22050, cxt_49(D)->membuf.asiz
	movq	-280(%rbp), %rax	# cxt, tmp778
	movq	152(%rax), %rdx	# cxt_49(D)->membuf.arena, D.22049
	movl	-196(%rbp), %eax	# offset, tmp779
	cltq
	addq	%rax, %rdx	# D.22053, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp780
	movq	%rdx, 168(%rax)	# D.22049, cxt_49(D)->membuf.aptr
	movq	-280(%rbp), %rax	# cxt, tmp781
	movq	152(%rax), %rdx	# cxt_49(D)->membuf.arena, D.22049
	movl	-200(%rbp), %eax	# nsz, tmp782
	cltq
	addq	%rax, %rdx	# D.22053, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp783
	movq	%rdx, 176(%rax)	# D.22049, cxt_49(D)->membuf.aend
.L296:
.LBE92:
	.loc 1 2200 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp785
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	movq	%rax, %rdx	# D.22049, D.22050
	movq	-280(%rbp), %rax	# cxt, tmp786
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	andq	$-4, %rax	#, D.22050
	cmpq	%rax, %rdx	# D.22050, D.22050
	jne	.L297	#,
	.loc 1 2200 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp787
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	movl	-256(%rbp), %edx	# len, len.138
	movl	%edx, (%rax)	# len.138, MEM[(int *)_232]
	jmp	.L298	#
.L297:
	.loc 1 2200 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp788
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	movl	-256(%rbp), %edx	# MEM[(char * {ref-all})&len], D.22042
	movl	%edx, (%rax)	# D.22042, MEM[(char * {ref-all})_234]
.L298:
	.loc 1 2200 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp789
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	leaq	4(%rax), %rdx	#, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp790
	movq	%rdx, 168(%rax)	# D.22049, cxt_49(D)->membuf.aptr
.LBE91:
	jmp	.L294	#
.L295:
	.loc 1 2200 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp792
	movq	216(%rax), %rax	# cxt_49(D)->fio, D.22048
	leaq	-256(%rbp), %rcx	#, tmp793
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp793,
	movq	%rax, %rdi	# D.22048,
	call	Perl_PerlIO_write	#
	cmpq	$4, %rax	#, D.22044
	je	.L294	#,
	.loc 1 2200 0 discriminator 1
	movl	$-1, %eax	#, D.22042
	jmp	.L380	#
.L294:
	.loc 1 2207 0 is_stmt 1
	movq	-288(%rbp), %rax	# hv, tmp794
	movq	(%rax), %rax	# hv_33(D)->sv_any, D.22043
	movl	56(%rax), %eax	# _242->xhv_riter, tmp795
	movl	%eax, -192(%rbp)	# tmp795, riter
	.loc 1 2208 0
	movq	-288(%rbp), %rax	# hv, tmp796
	movq	(%rax), %rax	# hv_33(D)->sv_any, D.22043
	movq	64(%rax), %rax	# _244->xhv_eiter, tmp797
	movq	%rax, -72(%rbp)	# tmp797, eiter
	.loc 1 2209 0
	movq	-288(%rbp), %rax	# hv, tmp798
	movq	%rax, %rdi	# tmp798,
	call	Perl_hv_iterinit	#
	.loc 1 2223 0
	movq	-280(%rbp), %rax	# cxt, tmp799
	movl	4(%rax), %eax	# cxt_49(D)->optype, D.22042
	andl	$4, %eax	#, D.22042
	.loc 1 2222 0
	testl	%eax, %eax	# D.22042
	jne	.L299	#,
	.loc 1 2223 0
	movq	-280(%rbp), %rax	# cxt, tmp800
	movl	104(%rax), %eax	# cxt_49(D)->canonical, D.22042
	cmpl	$1, %eax	#, D.22042
	je	.L300	#,
	.loc 1 2224 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp801
	movl	104(%rax), %eax	# cxt_49(D)->canonical, D.22042
	.loc 1 2223 0 discriminator 1
	testl	%eax, %eax	# D.22042
	jns	.L299	#,
	.loc 1 2225 0
	movl	$1, %esi	#,
	movl	$.LC3, %edi	#,
	call	Perl_get_sv	#
	testq	%rax, %rax	# D.22054
	je	.L301	#,
	.loc 1 2225 0 is_stmt 0 discriminator 1
	movl	$1, %esi	#,
	movl	$.LC3, %edi	#,
	call	Perl_get_sv	#
	movl	12(%rax), %eax	# _251->sv_flags, D.22045
	andl	$262144, %eax	#, D.22045
	testl	%eax, %eax	# D.22045
	je	.L302	#,
	movl	$1, %esi	#,
	movl	$.LC3, %edi	#,
	call	Perl_get_sv	#
	movq	(%rax), %rax	# _254->sv_any, PL_Xpv.142
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.142, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.143
	testq	%rax, %rax	# PL_Xpv.143
	je	.L303	#,
	.loc 1 2225 0 discriminator 3
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.144
	movq	8(%rax), %rax	# PL_Xpv.144_257->xpv_cur, D.22050
	cmpq	$1, %rax	#, D.22050
	ja	.L304	#,
	.loc 1 2225 0 discriminator 6
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.145
	movq	8(%rax), %rax	# PL_Xpv.145_259->xpv_cur, D.22050
	testq	%rax, %rax	# D.22050
	je	.L303	#,
	.loc 1 2225 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.146
	movq	(%rax), %rax	# PL_Xpv.146_261->xpv_pv, D.22049
	movzbl	(%rax), %eax	# *_262, D.22055
	cmpb	$48, %al	#, D.22055
	je	.L303	#,
.L304:
	.loc 1 2225 0 discriminator 5
	movl	$1, %eax	#, iftmp.141
	jmp	.L305	#
.L303:
	.loc 1 2225 0 discriminator 4
	movl	$0, %eax	#, iftmp.141
.L305:
	jmp	.L311	#
.L302:
	.loc 1 2225 0 discriminator 2
	movl	$1, %esi	#,
	movl	$.LC3, %edi	#,
	call	Perl_get_sv	#
	movl	12(%rax), %eax	# _267->sv_flags, D.22045
	andl	$65536, %eax	#, D.22045
	testl	%eax, %eax	# D.22045
	je	.L307	#,
	.loc 1 2225 0 discriminator 8
	movl	$1, %esi	#,
	movl	$.LC3, %edi	#,
	call	Perl_get_sv	#
	movq	(%rax), %rax	# _270->sv_any, D.22052
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_271].xiv_iv, D.22044
	testq	%rax, %rax	# D.22044
	setne	%al	#, D.22047
	movzbl	%al, %eax	# D.22047, iftmp.147
	jmp	.L311	#
.L307:
	.loc 1 2225 0 discriminator 9
	movl	$1, %esi	#,
	movl	$.LC3, %edi	#,
	call	Perl_get_sv	#
	movl	12(%rax), %eax	# _275->sv_flags, D.22045
	andl	$131072, %eax	#, D.22045
	testl	%eax, %eax	# D.22045
	je	.L309	#,
	.loc 1 2225 0 discriminator 10
	movl	$1, %esi	#,
	movl	$.LC3, %edi	#,
	call	Perl_get_sv	#
	movq	(%rax), %rax	# _278->sv_any, D.22052
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_279].xnv_nv, D.22056
	xorpd	%xmm1, %xmm1	# tmp803
	ucomisd	%xmm1, %xmm0	# tmp803, D.22056
	setp	%dl	#, tmp802
	movl	$1, %eax	#, tmp805
	xorpd	%xmm1, %xmm1	# tmp804
	ucomisd	%xmm1, %xmm0	# tmp804, D.22056
	cmove	%edx, %eax	# tmp802,, D.22047
	movzbl	%al, %eax	# D.22047, iftmp.148
	jmp	.L311	#
.L309:
	.loc 1 2225 0 discriminator 11
	movl	$1, %esi	#,
	movl	$.LC3, %edi	#,
	call	Perl_get_sv	#
	movq	%rax, %rdi	# D.22054,
	call	Perl_sv_2bool	#
	testb	%al, %al	# D.22055
	setne	%al	#, D.22047
	movzbl	%al, %eax	# D.22047, iftmp.148
	jmp	.L311	#
.L301:
	.loc 1 2225 0 discriminator 2
	movl	$0, %eax	#, iftmp.139
.L311:
	.loc 1 2224 0 is_stmt 1
	movq	-280(%rbp), %rdx	# cxt, tmp806
	movl	%eax, 104(%rdx)	# iftmp.139, cxt_49(D)->canonical
	movq	-280(%rbp), %rax	# cxt, tmp807
	movl	104(%rax), %eax	# cxt_49(D)->canonical, D.22042
	testl	%eax, %eax	# D.22042
	je	.L299	#,
.L300:
.LBB93:
	.loc 1 2234 0
	call	Perl_newAV	#
	movq	%rax, -64(%rbp)	# tmp808, av
	.loc 1 2240 0
	movl	$0, -244(%rbp)	#, i
	jmp	.L312	#
.L313:
.LBB94:
	.loc 1 2242 0 discriminator 2
	movq	-288(%rbp), %rax	# hv, tmp809
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp809,
	call	Perl_hv_iternext_flags	#
	movq	%rax, -56(%rbp)	# tmp810, he
	.loc 1 2246 0 discriminator 2
	movq	-56(%rbp), %rax	# he, tmp811
	movq	%rax, %rdi	# tmp811,
	call	Perl_hv_iterkeysv	#
	movq	%rax, -48(%rbp)	# tmp812, key
	.loc 1 2247 0 discriminator 2
	movq	-64(%rbp), %rax	# av, tmp813
	movq	(%rax), %rax	# av_292->sv_any, D.22057
	movq	8(%rax), %rax	# _297->xav_fill, D.22044
	addl	$1, %eax	#, D.22051
	movl	%eax, %ecx	# D.22051, D.22042
	movq	-48(%rbp), %rdx	# key, tmp814
	movq	-64(%rbp), %rax	# av, tmp815
	movl	%ecx, %esi	# D.22042,
	movq	%rax, %rdi	# tmp815,
	call	Perl_av_store	#
.LBE94:
	.loc 1 2240 0 discriminator 2
	addl	$1, -244(%rbp)	#, i
.L312:
	.loc 1 2240 0 is_stmt 0 discriminator 1
	movl	-256(%rbp), %eax	# len, len.149
	cmpl	%eax, -244(%rbp)	# len.149, i
	jl	.L313	#,
	.loc 1 2250 0 is_stmt 1
	movl	-256(%rbp), %eax	# len, len.150
	movslq	%eax, %rcx	# len.150, D.22050
	movq	-64(%rbp), %rax	# av, tmp816
	movq	(%rax), %rax	# av_292->sv_any, D.22057
	movq	(%rax), %rax	# _305->xav_array, D.22049
	movl	$Perl_sv_cmp, %edx	#,
	movq	%rcx, %rsi	# D.22050,
	movq	%rax, %rdi	# D.22049,
	call	Perl_sortsv	#
	.loc 1 2252 0
	movl	$0, -244(%rbp)	#, i
	jmp	.L314	#
.L346:
.LBB95:
	.loc 1 2254 0
	movq	-288(%rbp), %rax	# hv, tmp817
	movq	(%rax), %rax	# hv_33(D)->sv_any, D.22043
	movsd	32(%rax), %xmm0	# _309->xnv_nv, D.22056
	cvttsd2si	%xmm0, %eax	# D.22056, tmp818
	movl	%eax, -188(%rbp)	# tmp818, placeholders
	.loc 1 2256 0
	movb	$0, -259(%rbp)	#, flags
	.loc 1 2260 0
	movq	-64(%rbp), %rax	# av, tmp819
	movq	%rax, %rdi	# tmp819,
	call	Perl_av_shift	#
	movq	%rax, -40(%rbp)	# tmp820, key
	.loc 1 2264 0
	movq	-40(%rbp), %rsi	# key, tmp821
	movq	-288(%rbp), %rax	# hv, tmp822
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp822,
	call	Perl_hv_fetch_ent	#
	movq	%rax, -32(%rbp)	# tmp823, he
	.loc 1 2267 0
	cmpq	$0, -32(%rbp)	#, he
	je	.L315	#,
	.loc 1 2268 0
	movq	-32(%rbp), %rax	# he, tmp824
	movq	16(%rax), %rax	# he_314->hent_val, tmp825
	movq	%rax, -104(%rbp)	# tmp825, val
	cmpq	$0, -104(%rbp)	#, val
	jne	.L316	#,
	.loc 1 2270 0
	movl	$1, %eax	#, D.22042
	jmp	.L380	#
.L315:
	.loc 1 2275 0
	movl	-188(%rbp), %eax	# placeholders, placeholders.151
	leal	-1(%rax), %edx	#, tmp826
	movl	%edx, -188(%rbp)	# tmp826, placeholders
	testl	%eax, %eax	# placeholders.151
	jns	.L318	#,
	.loc 1 2279 0
	movl	$1, %eax	#, D.22042
	jmp	.L380	#
.L318:
	.loc 1 2283 0
	movq	$PL_sv_undef, -104(%rbp)	#, val
	.loc 1 2286 0
	movb	$16, -259(%rbp)	#, flags
.L316:
	.loc 1 2298 0
	movq	-104(%rbp), %rdx	# val, tmp827
	movq	-280(%rbp), %rax	# cxt, tmp828
	movq	%rdx, %rsi	# tmp827,
	movq	%rax, %rdi	# tmp828,
	call	store	#
	movl	%eax, -240(%rbp)	# tmp829, ret
	cmpl	$0, -240(%rbp)	#, ret
	jne	.L320	#,
	.loc 1 2311 0
	movzbl	-257(%rbp), %eax	# hash_flags, D.22042
	andl	$1, %eax	#, D.22042
	testl	%eax, %eax	# D.22042
	je	.L321	#,
	.loc 1 2311 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# val, tmp830
	movl	12(%rax), %eax	# val_12->sv_flags, D.22045
	andl	$8388608, %eax	#, D.22045
	testl	%eax, %eax	# D.22045
	je	.L321	#,
	.loc 1 2312 0 is_stmt 1
	orb	$4, -259(%rbp)	#, flags
.L321:
	.loc 1 2315 0
	movq	-40(%rbp), %rax	# key, tmp831
	movl	12(%rax), %eax	# key_313->sv_flags, D.22045
	andl	$262144, %eax	#, D.22045
	testl	%eax, %eax	# D.22045
	je	.L322	#,
	.loc 1 2315 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# key, tmp832
	movq	(%rax), %rax	# key_313->sv_any, D.22052
	movq	8(%rax), %rax	# MEM[(struct XPV *)_330].xpv_cur, keylen_tmp.153
	movq	%rax, -120(%rbp)	# keylen_tmp.153, keylen_tmp
	movq	-40(%rbp), %rax	# key, tmp833
	movq	(%rax), %rax	# key_313->sv_any, D.22052
	movq	(%rax), %rax	# MEM[(struct XPV *)_332].xpv_pv, iftmp.152
	jmp	.L323	#
.L322:
	.loc 1 2315 0 discriminator 2
	leaq	-120(%rbp), %rcx	#, tmp834
	movq	-40(%rbp), %rax	# key, tmp835
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp834,
	movq	%rax, %rdi	# tmp835,
	call	Perl_sv_2pv_flags	#
.L323:
	.loc 1 2315 0 discriminator 3
	movq	%rax, -112(%rbp)	# iftmp.152, keyval
	.loc 1 2316 0 is_stmt 1 discriminator 3
	movq	-120(%rbp), %rax	# keylen_tmp, keylen_tmp.154
	movl	%eax, -252(%rbp)	# keylen.155, keylen
	.loc 1 2323 0 discriminator 3
	movq	-40(%rbp), %rax	# key, tmp836
	movl	12(%rax), %eax	# key_313->sv_flags, D.22045
	andl	$536870912, %eax	#, D.22045
	testl	%eax, %eax	# D.22045
	je	.L324	#,
.LBB96:
	.loc 1 2324 0
	movq	-112(%rbp), %rax	# keyval, tmp837
	movq	%rax, -24(%rbp)	# tmp837, keysave
	.loc 1 2325 0
	movb	$1, -248(%rbp)	#, is_utf8
	.loc 1 2330 0
	leaq	-248(%rbp), %rdx	#, tmp838
	leaq	-120(%rbp), %rcx	#, tmp839
	movq	-112(%rbp), %rax	# keyval, tmp840
	movq	%rcx, %rsi	# tmp839,
	movq	%rax, %rdi	# tmp840,
	call	Perl_bytes_from_utf8	#
	movq	%rax, -112(%rbp)	# tmp841, keyval
	.loc 1 2338 0
	movq	-112(%rbp), %rax	# keyval, tmp842
	cmpq	-24(%rbp), %rax	# keysave, tmp842
	je	.L325	#,
	.loc 1 2339 0
	movq	-120(%rbp), %rax	# keylen_tmp, keylen_tmp.156
	movl	%eax, -252(%rbp)	# keylen.157, keylen
	.loc 1 2340 0
	orb	$2, -259(%rbp)	#, flags
	jmp	.L324	#
.L325:
	.loc 1 2344 0
	orb	$1, -259(%rbp)	#, flags
.L324:
.LBE96:
	.loc 1 2349 0
	cmpl	$0, -236(%rbp)	#, flagged_hash
	je	.L327	#,
	.loc 1 2350 0
	movq	-280(%rbp), %rax	# cxt, tmp843
	movq	216(%rax), %rax	# cxt_49(D)->fio, D.22048
	testq	%rax, %rax	# D.22048
	jne	.L328	#,
	.loc 1 2350 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp844
	movq	168(%rax), %rdx	# cxt_49(D)->membuf.aptr, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp845
	movq	176(%rax), %rax	# cxt_49(D)->membuf.aend, D.22049
	cmpq	%rax, %rdx	# D.22049, D.22049
	jae	.L329	#,
	movq	-280(%rbp), %rax	# cxt, tmp846
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	leaq	1(%rax), %rcx	#, D.22049
	movq	-280(%rbp), %rdx	# cxt, tmp847
	movq	%rcx, 168(%rdx)	# D.22049, cxt_49(D)->membuf.aptr
	movzbl	-259(%rbp), %edx	# flags, flags.158
	movb	%dl, (%rax)	# flags.158, *_350
	jmp	.L327	#
.L329:
.LBB97:
	.loc 1 2350 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp848
	movq	160(%rax), %rax	# cxt_49(D)->membuf.asiz, D.22050
	addl	$8192, %eax	#, D.22051
	andl	$-8192, %eax	#, tmp849
	movl	%eax, -184(%rbp)	# tmp849, nsz
	movq	-280(%rbp), %rax	# cxt, tmp850
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	movq	%rax, %rdx	# D.22049, D.22044
	movq	-280(%rbp), %rax	# cxt, tmp851
	movq	152(%rax), %rax	# cxt_49(D)->membuf.arena, D.22049
	subq	%rax, %rdx	# D.22044, D.22044
	movq	%rdx, %rax	# D.22044, D.22044
	movl	%eax, -180(%rbp)	# D.22044, offset
	movl	-184(%rbp), %eax	# nsz, tmp852
	movslq	%eax, %rdx	# tmp852, D.22050
	movq	-280(%rbp), %rax	# cxt, tmp853
	movq	152(%rax), %rax	# cxt_49(D)->membuf.arena, D.22049
	movq	%rdx, %rsi	# D.22050,
	movq	%rax, %rdi	# D.22049,
	call	Perl_safesysrealloc	#
	movq	-280(%rbp), %rdx	# cxt, tmp854
	movq	%rax, 152(%rdx)	# D.22052, cxt_49(D)->membuf.arena
	movl	-184(%rbp), %eax	# nsz, tmp855
	movslq	%eax, %rdx	# tmp855, D.22050
	movq	-280(%rbp), %rax	# cxt, tmp856
	movq	%rdx, 160(%rax)	# D.22050, cxt_49(D)->membuf.asiz
	movq	-280(%rbp), %rax	# cxt, tmp857
	movq	152(%rax), %rdx	# cxt_49(D)->membuf.arena, D.22049
	movl	-180(%rbp), %eax	# offset, tmp858
	cltq
	addq	%rax, %rdx	# D.22053, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp859
	movq	%rdx, 168(%rax)	# D.22049, cxt_49(D)->membuf.aptr
	movq	-280(%rbp), %rax	# cxt, tmp860
	movq	152(%rax), %rdx	# cxt_49(D)->membuf.arena, D.22049
	movl	-184(%rbp), %eax	# nsz, tmp861
	cltq
	addq	%rax, %rdx	# D.22053, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp862
	movq	%rdx, 176(%rax)	# D.22049, cxt_49(D)->membuf.aend
.LBE97:
	movq	-280(%rbp), %rax	# cxt, tmp864
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	leaq	1(%rax), %rcx	#, D.22049
	movq	-280(%rbp), %rdx	# cxt, tmp865
	movq	%rcx, 168(%rdx)	# D.22049, cxt_49(D)->membuf.aptr
	movzbl	-259(%rbp), %edx	# flags, flags.159
	movb	%dl, (%rax)	# flags.159, *_376
	jmp	.L327	#
.L328:
	movzbl	-259(%rbp), %edx	# flags, D.22042
	movq	-280(%rbp), %rax	# cxt, tmp866
	movq	216(%rax), %rax	# cxt_49(D)->fio, D.22048
	movl	%edx, %esi	# D.22042,
	movq	%rax, %rdi	# D.22048,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22042
	jne	.L327	#,
	.loc 1 2350 0 discriminator 1
	movl	$-1, %eax	#, D.22042
	jmp	.L380	#
.L327:
	.loc 1 2362 0 is_stmt 1
	movq	-280(%rbp), %rax	# cxt, tmp867
	movl	80(%rax), %eax	# cxt_49(D)->netorder, D.22042
	testl	%eax, %eax	# D.22042
	je	.L331	#,
.LBB98:
	.loc 1 2362 0 is_stmt 0 discriminator 1
	movl	-252(%rbp), %eax	# keylen, keylen.160
	cltq
	movq	%rax, %rdi	# D.22044,
	call	Perl_my_htonl	#
	movl	%eax, -248(%rbp)	# y.161, y
	movq	-280(%rbp), %rax	# cxt, tmp868
	movq	216(%rax), %rax	# cxt_49(D)->fio, D.22048
	testq	%rax, %rax	# D.22048
	jne	.L332	#,
.LBB99:
	movq	-280(%rbp), %rax	# cxt, tmp869
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	leaq	4(%rax), %rdx	#, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp870
	movq	176(%rax), %rax	# cxt_49(D)->membuf.aend, D.22049
	cmpq	%rax, %rdx	# D.22049, D.22049
	jbe	.L333	#,
.LBB100:
	movq	-280(%rbp), %rax	# cxt, tmp871
	movq	160(%rax), %rax	# cxt_49(D)->membuf.asiz, D.22050
	addl	$8195, %eax	#, D.22051
	andl	$-8192, %eax	#, tmp872
	movl	%eax, -176(%rbp)	# tmp872, nsz
	movq	-280(%rbp), %rax	# cxt, tmp873
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	movq	%rax, %rdx	# D.22049, D.22044
	movq	-280(%rbp), %rax	# cxt, tmp874
	movq	152(%rax), %rax	# cxt_49(D)->membuf.arena, D.22049
	subq	%rax, %rdx	# D.22044, D.22044
	movq	%rdx, %rax	# D.22044, D.22044
	movl	%eax, -172(%rbp)	# D.22044, offset
	movl	-176(%rbp), %eax	# nsz, tmp875
	movslq	%eax, %rdx	# tmp875, D.22050
	movq	-280(%rbp), %rax	# cxt, tmp876
	movq	152(%rax), %rax	# cxt_49(D)->membuf.arena, D.22049
	movq	%rdx, %rsi	# D.22050,
	movq	%rax, %rdi	# D.22049,
	call	Perl_safesysrealloc	#
	movq	-280(%rbp), %rdx	# cxt, tmp877
	movq	%rax, 152(%rdx)	# D.22052, cxt_49(D)->membuf.arena
	movl	-176(%rbp), %eax	# nsz, tmp878
	movslq	%eax, %rdx	# tmp878, D.22050
	movq	-280(%rbp), %rax	# cxt, tmp879
	movq	%rdx, 160(%rax)	# D.22050, cxt_49(D)->membuf.asiz
	movq	-280(%rbp), %rax	# cxt, tmp880
	movq	152(%rax), %rdx	# cxt_49(D)->membuf.arena, D.22049
	movl	-172(%rbp), %eax	# offset, tmp881
	cltq
	addq	%rax, %rdx	# D.22053, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp882
	movq	%rdx, 168(%rax)	# D.22049, cxt_49(D)->membuf.aptr
	movq	-280(%rbp), %rax	# cxt, tmp883
	movq	152(%rax), %rdx	# cxt_49(D)->membuf.arena, D.22049
	movl	-176(%rbp), %eax	# nsz, tmp884
	cltq
	addq	%rax, %rdx	# D.22053, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp885
	movq	%rdx, 176(%rax)	# D.22049, cxt_49(D)->membuf.aend
.L333:
.LBE100:
	.loc 1 2362 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp887
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	movq	%rax, %rdx	# D.22049, D.22050
	movq	-280(%rbp), %rax	# cxt, tmp888
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	andq	$-4, %rax	#, D.22050
	cmpq	%rax, %rdx	# D.22050, D.22050
	jne	.L334	#,
	.loc 1 2362 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp889
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	movl	-248(%rbp), %edx	# y, y.162
	movl	%edx, (%rax)	# y.162, MEM[(int *)_419]
	jmp	.L335	#
.L334:
	.loc 1 2362 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp890
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	movl	-248(%rbp), %edx	# MEM[(char * {ref-all})&y], D.22042
	movl	%edx, (%rax)	# D.22042, MEM[(char * {ref-all})_421]
.L335:
	.loc 1 2362 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp891
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	leaq	4(%rax), %rdx	#, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp892
	movq	%rdx, 168(%rax)	# D.22049, cxt_49(D)->membuf.aptr
.LBE99:
	jmp	.L336	#
.L332:
	.loc 1 2362 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp894
	movq	216(%rax), %rax	# cxt_49(D)->fio, D.22048
	leaq	-248(%rbp), %rcx	#, tmp895
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp895,
	movq	%rax, %rdi	# D.22048,
	call	Perl_PerlIO_write	#
	cmpq	$4, %rax	#, D.22044
	je	.L336	#,
	.loc 1 2362 0 discriminator 1
	movl	$-1, %eax	#, D.22042
.LBE98:
	.loc 1 2270 0 is_stmt 1 discriminator 1
	jmp	.L380	#
.L336:
	jmp	.L337	#
.L331:
	.loc 1 2362 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp896
	movq	216(%rax), %rax	# cxt_49(D)->fio, D.22048
	testq	%rax, %rax	# D.22048
	jne	.L338	#,
.LBB101:
	.loc 1 2362 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp897
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	leaq	4(%rax), %rdx	#, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp898
	movq	176(%rax), %rax	# cxt_49(D)->membuf.aend, D.22049
	cmpq	%rax, %rdx	# D.22049, D.22049
	jbe	.L339	#,
.LBB102:
	movq	-280(%rbp), %rax	# cxt, tmp899
	movq	160(%rax), %rax	# cxt_49(D)->membuf.asiz, D.22050
	addl	$8195, %eax	#, D.22051
	andl	$-8192, %eax	#, tmp900
	movl	%eax, -168(%rbp)	# tmp900, nsz
	movq	-280(%rbp), %rax	# cxt, tmp901
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	movq	%rax, %rdx	# D.22049, D.22044
	movq	-280(%rbp), %rax	# cxt, tmp902
	movq	152(%rax), %rax	# cxt_49(D)->membuf.arena, D.22049
	subq	%rax, %rdx	# D.22044, D.22044
	movq	%rdx, %rax	# D.22044, D.22044
	movl	%eax, -164(%rbp)	# D.22044, offset
	movl	-168(%rbp), %eax	# nsz, tmp903
	movslq	%eax, %rdx	# tmp903, D.22050
	movq	-280(%rbp), %rax	# cxt, tmp904
	movq	152(%rax), %rax	# cxt_49(D)->membuf.arena, D.22049
	movq	%rdx, %rsi	# D.22050,
	movq	%rax, %rdi	# D.22049,
	call	Perl_safesysrealloc	#
	movq	-280(%rbp), %rdx	# cxt, tmp905
	movq	%rax, 152(%rdx)	# D.22052, cxt_49(D)->membuf.arena
	movl	-168(%rbp), %eax	# nsz, tmp906
	movslq	%eax, %rdx	# tmp906, D.22050
	movq	-280(%rbp), %rax	# cxt, tmp907
	movq	%rdx, 160(%rax)	# D.22050, cxt_49(D)->membuf.asiz
	movq	-280(%rbp), %rax	# cxt, tmp908
	movq	152(%rax), %rdx	# cxt_49(D)->membuf.arena, D.22049
	movl	-164(%rbp), %eax	# offset, tmp909
	cltq
	addq	%rax, %rdx	# D.22053, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp910
	movq	%rdx, 168(%rax)	# D.22049, cxt_49(D)->membuf.aptr
	movq	-280(%rbp), %rax	# cxt, tmp911
	movq	152(%rax), %rdx	# cxt_49(D)->membuf.arena, D.22049
	movl	-168(%rbp), %eax	# nsz, tmp912
	cltq
	addq	%rax, %rdx	# D.22053, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp913
	movq	%rdx, 176(%rax)	# D.22049, cxt_49(D)->membuf.aend
.L339:
.LBE102:
	.loc 1 2362 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp915
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	movq	%rax, %rdx	# D.22049, D.22050
	movq	-280(%rbp), %rax	# cxt, tmp916
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	andq	$-4, %rax	#, D.22050
	cmpq	%rax, %rdx	# D.22050, D.22050
	jne	.L340	#,
	.loc 1 2362 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp917
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	movl	-252(%rbp), %edx	# keylen, keylen.163
	movl	%edx, (%rax)	# keylen.163, MEM[(int *)_460]
	jmp	.L341	#
.L340:
	.loc 1 2362 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp918
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	movl	-252(%rbp), %edx	# MEM[(char * {ref-all})&keylen], D.22042
	movl	%edx, (%rax)	# D.22042, MEM[(char * {ref-all})_462]
.L341:
	.loc 1 2362 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp919
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	leaq	4(%rax), %rdx	#, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp920
	movq	%rdx, 168(%rax)	# D.22049, cxt_49(D)->membuf.aptr
.LBE101:
	jmp	.L337	#
.L338:
	.loc 1 2362 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp922
	movq	216(%rax), %rax	# cxt_49(D)->fio, D.22048
	leaq	-252(%rbp), %rcx	#, tmp923
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp923,
	movq	%rax, %rdi	# D.22048,
	call	Perl_PerlIO_write	#
	cmpq	$4, %rax	#, D.22044
	je	.L337	#,
	.loc 1 2362 0 discriminator 1
	movl	$-1, %eax	#, D.22042
	jmp	.L380	#
.L337:
	.loc 1 2363 0 is_stmt 1
	movl	-252(%rbp), %eax	# keylen, keylen.164
	testl	%eax, %eax	# keylen.164
	je	.L342	#,
	.loc 1 2364 0
	movq	-280(%rbp), %rax	# cxt, tmp924
	movq	216(%rax), %rax	# cxt_49(D)->fio, D.22048
	testq	%rax, %rax	# D.22048
	jne	.L343	#,
.LBB103:
	.loc 1 2364 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp925
	movq	168(%rax), %rdx	# cxt_49(D)->membuf.aptr, D.22049
	movl	-252(%rbp), %eax	# keylen, keylen.165
	cltq
	addq	%rax, %rdx	# D.22053, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp926
	movq	176(%rax), %rax	# cxt_49(D)->membuf.aend, D.22049
	cmpq	%rax, %rdx	# D.22049, D.22049
	jbe	.L344	#,
.LBB104:
	movq	-280(%rbp), %rax	# cxt, tmp927
	movq	160(%rax), %rax	# cxt_49(D)->membuf.asiz, D.22050
	movl	%eax, %edx	# D.22050, D.22051
	movl	-252(%rbp), %eax	# keylen, keylen.166
	addl	%edx, %eax	# D.22051, D.22051
	addl	$8191, %eax	#, D.22051
	andl	$-8192, %eax	#, tmp928
	movl	%eax, -160(%rbp)	# tmp928, nsz
	movq	-280(%rbp), %rax	# cxt, tmp929
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	movq	%rax, %rdx	# D.22049, D.22044
	movq	-280(%rbp), %rax	# cxt, tmp930
	movq	152(%rax), %rax	# cxt_49(D)->membuf.arena, D.22049
	subq	%rax, %rdx	# D.22044, D.22044
	movq	%rdx, %rax	# D.22044, D.22044
	movl	%eax, -156(%rbp)	# D.22044, offset
	movl	-160(%rbp), %eax	# nsz, tmp931
	movslq	%eax, %rdx	# tmp931, D.22050
	movq	-280(%rbp), %rax	# cxt, tmp932
	movq	152(%rax), %rax	# cxt_49(D)->membuf.arena, D.22049
	movq	%rdx, %rsi	# D.22050,
	movq	%rax, %rdi	# D.22049,
	call	Perl_safesysrealloc	#
	movq	-280(%rbp), %rdx	# cxt, tmp933
	movq	%rax, 152(%rdx)	# D.22052, cxt_49(D)->membuf.arena
	movl	-160(%rbp), %eax	# nsz, tmp934
	movslq	%eax, %rdx	# tmp934, D.22050
	movq	-280(%rbp), %rax	# cxt, tmp935
	movq	%rdx, 160(%rax)	# D.22050, cxt_49(D)->membuf.asiz
	movq	-280(%rbp), %rax	# cxt, tmp936
	movq	152(%rax), %rdx	# cxt_49(D)->membuf.arena, D.22049
	movl	-156(%rbp), %eax	# offset, tmp937
	cltq
	addq	%rax, %rdx	# D.22053, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp938
	movq	%rdx, 168(%rax)	# D.22049, cxt_49(D)->membuf.aptr
	movq	-280(%rbp), %rax	# cxt, tmp939
	movq	152(%rax), %rdx	# cxt_49(D)->membuf.arena, D.22049
	movl	-160(%rbp), %eax	# nsz, tmp940
	cltq
	addq	%rax, %rdx	# D.22053, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp941
	movq	%rdx, 176(%rax)	# D.22049, cxt_49(D)->membuf.aend
.L344:
.LBE104:
	.loc 1 2364 0 discriminator 2
	movl	-252(%rbp), %eax	# keylen, keylen.168
	movslq	%eax, %rdx	# keylen.168, D.22050
	movq	-280(%rbp), %rax	# cxt, tmp943
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	movq	-112(%rbp), %rcx	# keyval, tmp944
	movq	%rcx, %rsi	# tmp944,
	movq	%rax, %rdi	# D.22049,
	call	memcpy	#
	movq	-280(%rbp), %rax	# cxt, tmp945
	movq	168(%rax), %rdx	# cxt_49(D)->membuf.aptr, D.22049
	movl	-252(%rbp), %eax	# keylen, keylen.169
	cltq
	addq	%rax, %rdx	# D.22053, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp946
	movq	%rdx, 168(%rax)	# D.22049, cxt_49(D)->membuf.aptr
.LBE103:
	jmp	.L342	#
.L343:
	movl	-252(%rbp), %eax	# keylen, keylen.170
	movslq	%eax, %rdx	# keylen.170, D.22050
	movq	-280(%rbp), %rax	# cxt, tmp948
	movq	216(%rax), %rax	# cxt_49(D)->fio, D.22048
	movq	-112(%rbp), %rcx	# keyval, tmp949
	movq	%rcx, %rsi	# tmp949,
	movq	%rax, %rdi	# D.22048,
	call	Perl_PerlIO_write	#
	movl	-252(%rbp), %edx	# keylen, keylen.171
	movslq	%edx, %rdx	# keylen.171, D.22044
	cmpq	%rdx, %rax	# D.22044, D.22044
	je	.L342	#,
	.loc 1 2364 0 discriminator 1
	movl	$-1, %eax	#, D.22042
	jmp	.L380	#
.L342:
	.loc 1 2365 0 is_stmt 1
	movzbl	-259(%rbp), %eax	# flags, D.22042
	andl	$2, %eax	#, D.22042
	testl	%eax, %eax	# D.22042
	je	.L345	#,
	.loc 1 2366 0
	movq	-112(%rbp), %rax	# keyval, tmp950
	movq	%rax, %rdi	# tmp950,
	call	Perl_safesysfree	#
.L345:
.LBE95:
	.loc 1 2252 0
	addl	$1, -244(%rbp)	#, i
.L314:
	.loc 1 2252 0 is_stmt 0 discriminator 1
	movl	-256(%rbp), %eax	# len, len.172
	cmpl	%eax, -244(%rbp)	# len.172, i
	jl	.L346	#,
	.loc 1 2373 0 is_stmt 1
	movq	-64(%rbp), %rax	# av, tmp951
	movq	%rax, %rdi	# tmp951,
	call	Perl_av_undef	#
	.loc 1 2374 0
	movq	-64(%rbp), %rax	# av, tmp952
	movq	%rax, %rdi	# tmp952,
	call	Perl_sv_free	#
.LBE93:
	.loc 1 2226 0
	jmp	.L320	#
.L299:
	.loc 1 2383 0
	movl	$0, -244(%rbp)	#, i
	jmp	.L347	#
.L379:
.LBB105:
	.loc 1 2388 0
	movq	-288(%rbp), %rax	# hv, tmp953
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp953,
	call	Perl_hv_iternext_flags	#
	movq	%rax, -16(%rbp)	# tmp954, he
	.loc 1 2392 0
	cmpq	$0, -16(%rbp)	#, he
	je	.L348	#,
	.loc 1 2392 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rdx	# he, tmp955
	movq	-288(%rbp), %rax	# hv, tmp956
	movq	%rdx, %rsi	# tmp955,
	movq	%rax, %rdi	# tmp956,
	call	Perl_hv_iterval	#
	jmp	.L349	#
.L348:
	.loc 1 2392 0 discriminator 2
	movl	$0, %eax	#, iftmp.173
.L349:
	.loc 1 2392 0 discriminator 3
	movq	%rax, -88(%rbp)	# iftmp.173, val
	.loc 1 2393 0 is_stmt 1 discriminator 3
	movq	$0, -80(%rbp)	#, key_sv
	.loc 1 2396 0 discriminator 3
	cmpq	$0, -88(%rbp)	#, val
	jne	.L350	#,
	.loc 1 2397 0
	movl	$1, %eax	#, D.22042
	jmp	.L380	#
.L350:
	.loc 1 2402 0
	movzbl	-257(%rbp), %eax	# hash_flags, D.22042
	andl	$1, %eax	#, D.22042
	testl	%eax, %eax	# D.22042
	je	.L352	#,
	.loc 1 2403 0
	movq	-88(%rbp), %rax	# val, tmp957
	movl	12(%rax), %eax	# val_526->sv_flags, D.22045
	andl	$8388608, %eax	#, D.22045
	testl	%eax, %eax	# D.22045
	je	.L352	#,
	.loc 1 2402 0
	movl	$4, %eax	#, iftmp.174
	jmp	.L353	#
.L352:
	.loc 1 2402 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, iftmp.174
.L353:
	.loc 1 2402 0 discriminator 2
	movb	%al, -258(%rbp)	# iftmp.174, flags
	.loc 1 2406 0 is_stmt 1 discriminator 2
	cmpq	$PL_sv_placeholder, -88(%rbp)	#, val
	jne	.L354	#,
	.loc 1 2407 0
	orb	$16, -258(%rbp)	#, flags
	.loc 1 2408 0
	movq	$PL_sv_undef, -88(%rbp)	#, val
.L354:
	.loc 1 2417 0
	movq	-88(%rbp), %rdx	# val, tmp958
	movq	-280(%rbp), %rax	# cxt, tmp959
	movq	%rdx, %rsi	# tmp958,
	movq	%rax, %rdi	# tmp959,
	call	store	#
	movl	%eax, -240(%rbp)	# tmp960, ret
	cmpl	$0, -240(%rbp)	#, ret
	jne	.L320	#,
	.loc 1 2421 0
	movq	-16(%rbp), %rax	# he, tmp961
	movq	8(%rax), %rax	# he_523->hent_hek, tmp962
	movq	%rax, -8(%rbp)	# tmp962, hek
	.loc 1 2422 0
	movq	-8(%rbp), %rax	# hek, tmp963
	movl	4(%rax), %eax	# hek_539->hek_len, len.175
	movl	%eax, -248(%rbp)	# len.175, len
	.loc 1 2423 0
	movl	-248(%rbp), %eax	# len, len.176
	cmpl	$-2, %eax	#, len.176
	jne	.L356	#,
	.loc 1 2430 0
	movq	-16(%rbp), %rax	# he, tmp964
	movq	8(%rax), %rax	# he_523->hent_hek, D.22058
	addq	$8, %rax	#, D.22059
	movq	(%rax), %rax	# MEM[(struct SV * *)_543], tmp965
	movq	%rax, -80(%rbp)	# tmp965, key_sv
	.loc 1 2431 0
	orb	$8, -258(%rbp)	#, flags
	jmp	.L357	#
.L356:
	.loc 1 2435 0
	movq	-8(%rbp), %rax	# hek, tmp966
	movl	4(%rax), %eax	# hek_539->hek_len, D.22042
	cltq
	leaq	1(%rax), %rdx	#, D.22053
	movq	-8(%rbp), %rax	# hek, tmp968
	addq	%rdx, %rax	# D.22053, tmp967
	addq	$8, %rax	#, D.22049
	movzbl	(%rax), %eax	# MEM[(unsigned char *)_549], D.22060
	movzbl	%al, %eax	# D.22060, D.22042
	andl	$1, %eax	#, D.22042
	testl	%eax, %eax	# D.22042
	je	.L358	#,
	.loc 1 2436 0
	orb	$1, -258(%rbp)	#, flags
.L358:
	.loc 1 2437 0
	movq	-8(%rbp), %rax	# hek, tmp969
	movl	4(%rax), %eax	# hek_539->hek_len, D.22042
	cltq
	leaq	1(%rax), %rdx	#, D.22053
	movq	-8(%rbp), %rax	# hek, tmp971
	addq	%rdx, %rax	# D.22053, tmp970
	addq	$8, %rax	#, D.22049
	movzbl	(%rax), %eax	# MEM[(unsigned char *)_557], D.22060
	movzbl	%al, %eax	# D.22060, D.22042
	andl	$2, %eax	#, D.22042
	testl	%eax, %eax	# D.22042
	je	.L359	#,
	.loc 1 2438 0
	orb	$2, -258(%rbp)	#, flags
.L359:
	.loc 1 2440 0
	movq	-8(%rbp), %rax	# hek, tmp975
	addq	$8, %rax	#, tmp974
	movq	%rax, -96(%rbp)	# tmp974, key
.L357:
	.loc 1 2450 0
	cmpl	$0, -236(%rbp)	#, flagged_hash
	je	.L360	#,
	.loc 1 2451 0
	movq	-280(%rbp), %rax	# cxt, tmp976
	movq	216(%rax), %rax	# cxt_49(D)->fio, D.22048
	testq	%rax, %rax	# D.22048
	jne	.L361	#,
	.loc 1 2451 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp977
	movq	168(%rax), %rdx	# cxt_49(D)->membuf.aptr, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp978
	movq	176(%rax), %rax	# cxt_49(D)->membuf.aend, D.22049
	cmpq	%rax, %rdx	# D.22049, D.22049
	jae	.L362	#,
	movq	-280(%rbp), %rax	# cxt, tmp979
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	leaq	1(%rax), %rcx	#, D.22049
	movq	-280(%rbp), %rdx	# cxt, tmp980
	movq	%rcx, 168(%rdx)	# D.22049, cxt_49(D)->membuf.aptr
	movzbl	-258(%rbp), %edx	# flags, flags.177
	movb	%dl, (%rax)	# flags.177, *_567
	jmp	.L360	#
.L362:
.LBB106:
	.loc 1 2451 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp981
	movq	160(%rax), %rax	# cxt_49(D)->membuf.asiz, D.22050
	addl	$8192, %eax	#, D.22051
	andl	$-8192, %eax	#, tmp982
	movl	%eax, -152(%rbp)	# tmp982, nsz
	movq	-280(%rbp), %rax	# cxt, tmp983
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	movq	%rax, %rdx	# D.22049, D.22044
	movq	-280(%rbp), %rax	# cxt, tmp984
	movq	152(%rax), %rax	# cxt_49(D)->membuf.arena, D.22049
	subq	%rax, %rdx	# D.22044, D.22044
	movq	%rdx, %rax	# D.22044, D.22044
	movl	%eax, -148(%rbp)	# D.22044, offset
	movl	-152(%rbp), %eax	# nsz, tmp985
	movslq	%eax, %rdx	# tmp985, D.22050
	movq	-280(%rbp), %rax	# cxt, tmp986
	movq	152(%rax), %rax	# cxt_49(D)->membuf.arena, D.22049
	movq	%rdx, %rsi	# D.22050,
	movq	%rax, %rdi	# D.22049,
	call	Perl_safesysrealloc	#
	movq	-280(%rbp), %rdx	# cxt, tmp987
	movq	%rax, 152(%rdx)	# D.22052, cxt_49(D)->membuf.arena
	movl	-152(%rbp), %eax	# nsz, tmp988
	movslq	%eax, %rdx	# tmp988, D.22050
	movq	-280(%rbp), %rax	# cxt, tmp989
	movq	%rdx, 160(%rax)	# D.22050, cxt_49(D)->membuf.asiz
	movq	-280(%rbp), %rax	# cxt, tmp990
	movq	152(%rax), %rdx	# cxt_49(D)->membuf.arena, D.22049
	movl	-148(%rbp), %eax	# offset, tmp991
	cltq
	addq	%rax, %rdx	# D.22053, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp992
	movq	%rdx, 168(%rax)	# D.22049, cxt_49(D)->membuf.aptr
	movq	-280(%rbp), %rax	# cxt, tmp993
	movq	152(%rax), %rdx	# cxt_49(D)->membuf.arena, D.22049
	movl	-152(%rbp), %eax	# nsz, tmp994
	cltq
	addq	%rax, %rdx	# D.22053, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp995
	movq	%rdx, 176(%rax)	# D.22049, cxt_49(D)->membuf.aend
.LBE106:
	movq	-280(%rbp), %rax	# cxt, tmp997
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	leaq	1(%rax), %rcx	#, D.22049
	movq	-280(%rbp), %rdx	# cxt, tmp998
	movq	%rcx, 168(%rdx)	# D.22049, cxt_49(D)->membuf.aptr
	movzbl	-258(%rbp), %edx	# flags, flags.178
	movb	%dl, (%rax)	# flags.178, *_593
	jmp	.L360	#
.L361:
	movzbl	-258(%rbp), %edx	# flags, D.22042
	movq	-280(%rbp), %rax	# cxt, tmp999
	movq	216(%rax), %rax	# cxt_49(D)->fio, D.22048
	movl	%edx, %esi	# D.22042,
	movq	%rax, %rdi	# D.22048,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22042
	jne	.L360	#,
	.loc 1 2451 0 discriminator 1
	movl	$-1, %eax	#, D.22042
	jmp	.L380	#
.L360:
	.loc 1 2463 0 is_stmt 1
	movzbl	-258(%rbp), %eax	# flags, D.22042
	andl	$8, %eax	#, D.22042
	testl	%eax, %eax	# D.22042
	je	.L364	#,
	.loc 1 2464 0
	movq	-80(%rbp), %rdx	# key_sv, tmp1000
	movq	-280(%rbp), %rax	# cxt, tmp1001
	movq	%rdx, %rsi	# tmp1000,
	movq	%rax, %rdi	# tmp1001,
	call	store	#
	jmp	.L365	#
.L364:
	.loc 1 2466 0
	movq	-280(%rbp), %rax	# cxt, tmp1002
	movl	80(%rax), %eax	# cxt_49(D)->netorder, D.22042
	testl	%eax, %eax	# D.22042
	je	.L366	#,
.LBB107:
	.loc 1 2466 0 is_stmt 0 discriminator 1
	movl	-248(%rbp), %eax	# len, len.179
	cltq
	movq	%rax, %rdi	# D.22044,
	call	Perl_my_htonl	#
	movl	%eax, -120(%rbp)	# y.180, y
	movq	-280(%rbp), %rax	# cxt, tmp1003
	movq	216(%rax), %rax	# cxt_49(D)->fio, D.22048
	testq	%rax, %rax	# D.22048
	jne	.L367	#,
.LBB108:
	movq	-280(%rbp), %rax	# cxt, tmp1004
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	leaq	4(%rax), %rdx	#, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp1005
	movq	176(%rax), %rax	# cxt_49(D)->membuf.aend, D.22049
	cmpq	%rax, %rdx	# D.22049, D.22049
	jbe	.L368	#,
.LBB109:
	movq	-280(%rbp), %rax	# cxt, tmp1006
	movq	160(%rax), %rax	# cxt_49(D)->membuf.asiz, D.22050
	addl	$8195, %eax	#, D.22051
	andl	$-8192, %eax	#, tmp1007
	movl	%eax, -144(%rbp)	# tmp1007, nsz
	movq	-280(%rbp), %rax	# cxt, tmp1008
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	movq	%rax, %rdx	# D.22049, D.22044
	movq	-280(%rbp), %rax	# cxt, tmp1009
	movq	152(%rax), %rax	# cxt_49(D)->membuf.arena, D.22049
	subq	%rax, %rdx	# D.22044, D.22044
	movq	%rdx, %rax	# D.22044, D.22044
	movl	%eax, -140(%rbp)	# D.22044, offset
	movl	-144(%rbp), %eax	# nsz, tmp1010
	movslq	%eax, %rdx	# tmp1010, D.22050
	movq	-280(%rbp), %rax	# cxt, tmp1011
	movq	152(%rax), %rax	# cxt_49(D)->membuf.arena, D.22049
	movq	%rdx, %rsi	# D.22050,
	movq	%rax, %rdi	# D.22049,
	call	Perl_safesysrealloc	#
	movq	-280(%rbp), %rdx	# cxt, tmp1012
	movq	%rax, 152(%rdx)	# D.22052, cxt_49(D)->membuf.arena
	movl	-144(%rbp), %eax	# nsz, tmp1013
	movslq	%eax, %rdx	# tmp1013, D.22050
	movq	-280(%rbp), %rax	# cxt, tmp1014
	movq	%rdx, 160(%rax)	# D.22050, cxt_49(D)->membuf.asiz
	movq	-280(%rbp), %rax	# cxt, tmp1015
	movq	152(%rax), %rdx	# cxt_49(D)->membuf.arena, D.22049
	movl	-140(%rbp), %eax	# offset, tmp1016
	cltq
	addq	%rax, %rdx	# D.22053, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp1017
	movq	%rdx, 168(%rax)	# D.22049, cxt_49(D)->membuf.aptr
	movq	-280(%rbp), %rax	# cxt, tmp1018
	movq	152(%rax), %rdx	# cxt_49(D)->membuf.arena, D.22049
	movl	-144(%rbp), %eax	# nsz, tmp1019
	cltq
	addq	%rax, %rdx	# D.22053, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp1020
	movq	%rdx, 176(%rax)	# D.22049, cxt_49(D)->membuf.aend
.L368:
.LBE109:
	.loc 1 2466 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1022
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	movq	%rax, %rdx	# D.22049, D.22050
	movq	-280(%rbp), %rax	# cxt, tmp1023
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	andq	$-4, %rax	#, D.22050
	cmpq	%rax, %rdx	# D.22050, D.22050
	jne	.L369	#,
	.loc 1 2466 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp1024
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	movl	-120(%rbp), %edx	# y, y.181
	movl	%edx, (%rax)	# y.181, MEM[(int *)_638]
	jmp	.L370	#
.L369:
	.loc 1 2466 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1025
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	movl	-120(%rbp), %edx	# MEM[(char * {ref-all})&y], D.22042
	movl	%edx, (%rax)	# D.22042, MEM[(char * {ref-all})_640]
.L370:
	.loc 1 2466 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp1026
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	leaq	4(%rax), %rdx	#, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp1027
	movq	%rdx, 168(%rax)	# D.22049, cxt_49(D)->membuf.aptr
.LBE108:
	jmp	.L371	#
.L367:
	.loc 1 2466 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1029
	movq	216(%rax), %rax	# cxt_49(D)->fio, D.22048
	leaq	-120(%rbp), %rcx	#, tmp1030
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp1030,
	movq	%rax, %rdi	# D.22048,
	call	Perl_PerlIO_write	#
	cmpq	$4, %rax	#, D.22044
	je	.L371	#,
	.loc 1 2466 0 discriminator 1
	movl	$-1, %eax	#, D.22042
.LBE107:
	.loc 1 2397 0 is_stmt 1 discriminator 1
	jmp	.L380	#
.L371:
	jmp	.L372	#
.L366:
	.loc 1 2466 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1031
	movq	216(%rax), %rax	# cxt_49(D)->fio, D.22048
	testq	%rax, %rax	# D.22048
	jne	.L373	#,
.LBB110:
	.loc 1 2466 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp1032
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	leaq	4(%rax), %rdx	#, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp1033
	movq	176(%rax), %rax	# cxt_49(D)->membuf.aend, D.22049
	cmpq	%rax, %rdx	# D.22049, D.22049
	jbe	.L374	#,
.LBB111:
	movq	-280(%rbp), %rax	# cxt, tmp1034
	movq	160(%rax), %rax	# cxt_49(D)->membuf.asiz, D.22050
	addl	$8195, %eax	#, D.22051
	andl	$-8192, %eax	#, tmp1035
	movl	%eax, -136(%rbp)	# tmp1035, nsz
	movq	-280(%rbp), %rax	# cxt, tmp1036
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	movq	%rax, %rdx	# D.22049, D.22044
	movq	-280(%rbp), %rax	# cxt, tmp1037
	movq	152(%rax), %rax	# cxt_49(D)->membuf.arena, D.22049
	subq	%rax, %rdx	# D.22044, D.22044
	movq	%rdx, %rax	# D.22044, D.22044
	movl	%eax, -132(%rbp)	# D.22044, offset
	movl	-136(%rbp), %eax	# nsz, tmp1038
	movslq	%eax, %rdx	# tmp1038, D.22050
	movq	-280(%rbp), %rax	# cxt, tmp1039
	movq	152(%rax), %rax	# cxt_49(D)->membuf.arena, D.22049
	movq	%rdx, %rsi	# D.22050,
	movq	%rax, %rdi	# D.22049,
	call	Perl_safesysrealloc	#
	movq	-280(%rbp), %rdx	# cxt, tmp1040
	movq	%rax, 152(%rdx)	# D.22052, cxt_49(D)->membuf.arena
	movl	-136(%rbp), %eax	# nsz, tmp1041
	movslq	%eax, %rdx	# tmp1041, D.22050
	movq	-280(%rbp), %rax	# cxt, tmp1042
	movq	%rdx, 160(%rax)	# D.22050, cxt_49(D)->membuf.asiz
	movq	-280(%rbp), %rax	# cxt, tmp1043
	movq	152(%rax), %rdx	# cxt_49(D)->membuf.arena, D.22049
	movl	-132(%rbp), %eax	# offset, tmp1044
	cltq
	addq	%rax, %rdx	# D.22053, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp1045
	movq	%rdx, 168(%rax)	# D.22049, cxt_49(D)->membuf.aptr
	movq	-280(%rbp), %rax	# cxt, tmp1046
	movq	152(%rax), %rdx	# cxt_49(D)->membuf.arena, D.22049
	movl	-136(%rbp), %eax	# nsz, tmp1047
	cltq
	addq	%rax, %rdx	# D.22053, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp1048
	movq	%rdx, 176(%rax)	# D.22049, cxt_49(D)->membuf.aend
.L374:
.LBE111:
	.loc 1 2466 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1050
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	movq	%rax, %rdx	# D.22049, D.22050
	movq	-280(%rbp), %rax	# cxt, tmp1051
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	andq	$-4, %rax	#, D.22050
	cmpq	%rax, %rdx	# D.22050, D.22050
	jne	.L375	#,
	.loc 1 2466 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp1052
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	movl	-248(%rbp), %edx	# len, len.182
	movl	%edx, (%rax)	# len.182, MEM[(int *)_679]
	jmp	.L376	#
.L375:
	.loc 1 2466 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1053
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	movl	-248(%rbp), %edx	# MEM[(char * {ref-all})&len], D.22042
	movl	%edx, (%rax)	# D.22042, MEM[(char * {ref-all})_681]
.L376:
	.loc 1 2466 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp1054
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	leaq	4(%rax), %rdx	#, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp1055
	movq	%rdx, 168(%rax)	# D.22049, cxt_49(D)->membuf.aptr
.LBE110:
	jmp	.L372	#
.L373:
	.loc 1 2466 0 discriminator 2
	movq	-280(%rbp), %rax	# cxt, tmp1057
	movq	216(%rax), %rax	# cxt_49(D)->fio, D.22048
	leaq	-248(%rbp), %rcx	#, tmp1058
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp1058,
	movq	%rax, %rdi	# D.22048,
	call	Perl_PerlIO_write	#
	cmpq	$4, %rax	#, D.22044
	je	.L372	#,
	.loc 1 2466 0 discriminator 1
	movl	$-1, %eax	#, D.22042
	jmp	.L380	#
.L372:
	.loc 1 2467 0 is_stmt 1
	movl	-248(%rbp), %eax	# len, len.183
	testl	%eax, %eax	# len.183
	je	.L365	#,
	.loc 1 2468 0
	movq	-280(%rbp), %rax	# cxt, tmp1059
	movq	216(%rax), %rax	# cxt_49(D)->fio, D.22048
	testq	%rax, %rax	# D.22048
	jne	.L377	#,
.LBB112:
	.loc 1 2468 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# cxt, tmp1060
	movq	168(%rax), %rdx	# cxt_49(D)->membuf.aptr, D.22049
	movl	-248(%rbp), %eax	# len, len.184
	cltq
	addq	%rax, %rdx	# D.22053, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp1061
	movq	176(%rax), %rax	# cxt_49(D)->membuf.aend, D.22049
	cmpq	%rax, %rdx	# D.22049, D.22049
	jbe	.L378	#,
.LBB113:
	movq	-280(%rbp), %rax	# cxt, tmp1062
	movq	160(%rax), %rax	# cxt_49(D)->membuf.asiz, D.22050
	movl	%eax, %edx	# D.22050, D.22051
	movl	-248(%rbp), %eax	# len, len.185
	addl	%edx, %eax	# D.22051, D.22051
	addl	$8191, %eax	#, D.22051
	andl	$-8192, %eax	#, tmp1063
	movl	%eax, -128(%rbp)	# tmp1063, nsz
	movq	-280(%rbp), %rax	# cxt, tmp1064
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	movq	%rax, %rdx	# D.22049, D.22044
	movq	-280(%rbp), %rax	# cxt, tmp1065
	movq	152(%rax), %rax	# cxt_49(D)->membuf.arena, D.22049
	subq	%rax, %rdx	# D.22044, D.22044
	movq	%rdx, %rax	# D.22044, D.22044
	movl	%eax, -124(%rbp)	# D.22044, offset
	movl	-128(%rbp), %eax	# nsz, tmp1066
	movslq	%eax, %rdx	# tmp1066, D.22050
	movq	-280(%rbp), %rax	# cxt, tmp1067
	movq	152(%rax), %rax	# cxt_49(D)->membuf.arena, D.22049
	movq	%rdx, %rsi	# D.22050,
	movq	%rax, %rdi	# D.22049,
	call	Perl_safesysrealloc	#
	movq	-280(%rbp), %rdx	# cxt, tmp1068
	movq	%rax, 152(%rdx)	# D.22052, cxt_49(D)->membuf.arena
	movl	-128(%rbp), %eax	# nsz, tmp1069
	movslq	%eax, %rdx	# tmp1069, D.22050
	movq	-280(%rbp), %rax	# cxt, tmp1070
	movq	%rdx, 160(%rax)	# D.22050, cxt_49(D)->membuf.asiz
	movq	-280(%rbp), %rax	# cxt, tmp1071
	movq	152(%rax), %rdx	# cxt_49(D)->membuf.arena, D.22049
	movl	-124(%rbp), %eax	# offset, tmp1072
	cltq
	addq	%rax, %rdx	# D.22053, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp1073
	movq	%rdx, 168(%rax)	# D.22049, cxt_49(D)->membuf.aptr
	movq	-280(%rbp), %rax	# cxt, tmp1074
	movq	152(%rax), %rdx	# cxt_49(D)->membuf.arena, D.22049
	movl	-128(%rbp), %eax	# nsz, tmp1075
	cltq
	addq	%rax, %rdx	# D.22053, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp1076
	movq	%rdx, 176(%rax)	# D.22049, cxt_49(D)->membuf.aend
.L378:
.LBE113:
	.loc 1 2468 0 discriminator 2
	movl	-248(%rbp), %eax	# len, len.187
	movslq	%eax, %rdx	# len.187, D.22050
	movq	-280(%rbp), %rax	# cxt, tmp1078
	movq	168(%rax), %rax	# cxt_49(D)->membuf.aptr, D.22049
	movq	-96(%rbp), %rcx	# key, tmp1079
	movq	%rcx, %rsi	# tmp1079,
	movq	%rax, %rdi	# D.22049,
	call	memcpy	#
	movq	-280(%rbp), %rax	# cxt, tmp1080
	movq	168(%rax), %rdx	# cxt_49(D)->membuf.aptr, D.22049
	movl	-248(%rbp), %eax	# len, len.188
	cltq
	addq	%rax, %rdx	# D.22053, D.22049
	movq	-280(%rbp), %rax	# cxt, tmp1081
	movq	%rdx, 168(%rax)	# D.22049, cxt_49(D)->membuf.aptr
.LBE112:
	jmp	.L365	#
.L377:
	movl	-248(%rbp), %eax	# len, len.189
	movslq	%eax, %rdx	# len.189, D.22050
	movq	-280(%rbp), %rax	# cxt, tmp1083
	movq	216(%rax), %rax	# cxt_49(D)->fio, D.22048
	movq	-96(%rbp), %rcx	# key, tmp1084
	movq	%rcx, %rsi	# tmp1084,
	movq	%rax, %rdi	# D.22048,
	call	Perl_PerlIO_write	#
	movl	-248(%rbp), %edx	# len, len.190
	movslq	%edx, %rdx	# len.190, D.22044
	cmpq	%rdx, %rax	# D.22044, D.22044
	je	.L365	#,
	.loc 1 2468 0 discriminator 1
	movl	$-1, %eax	#, D.22042
	jmp	.L380	#
.L365:
.LBE105:
	.loc 1 2383 0 is_stmt 1 discriminator 3
	addl	$1, -244(%rbp)	#, i
.L347:
	.loc 1 2383 0 is_stmt 0 discriminator 1
	movl	-256(%rbp), %eax	# len, len.191
	cmpl	%eax, -244(%rbp)	# len.191, i
	jl	.L379	#,
.L320:
	.loc 1 2476 0 is_stmt 1
	movq	-288(%rbp), %rax	# hv, tmp1085
	movq	(%rax), %rax	# hv_33(D)->sv_any, D.22043
	movl	-192(%rbp), %edx	# riter, tmp1086
	movl	%edx, 56(%rax)	# tmp1086, _737->xhv_riter
	.loc 1 2477 0
	movq	-288(%rbp), %rax	# hv, tmp1087
	movq	(%rax), %rax	# hv_33(D)->sv_any, D.22043
	movq	-72(%rbp), %rdx	# eiter, tmp1088
	movq	%rdx, 64(%rax)	# tmp1088, _738->xhv_eiter
	.loc 1 2479 0
	movl	-240(%rbp), %eax	# ret, D.22042
.L380:
	.loc 1 2480 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	store_hash, .-store_hash
	.section	.rodata
.LC5:
	.string	"Storable::Deparse"
.LC7:
	.string	"B::Deparse"
.LC8:
	.string	"new"
	.align 8
.LC9:
	.string	"Unexpected return value from B::Deparse::new\n"
.LC10:
	.string	"coderef2text"
	.align 8
.LC11:
	.string	"Unexpected return value from B::Deparse::coderef2text\n"
	.align 8
.LC12:
	.string	"The result of B::Deparse::coderef2text was empty - maybe you're trying to serialize an XS function?\n"
	.text
	.type	store_code, @function
store_code:
.LFB25:
	.loc 1 2491 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$144, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -136(%rbp)	# cxt, cxt
	movq	%rsi, -144(%rbp)	# cv, cv
	.loc 1 2498 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 2506 0
	movq	-136(%rbp), %rax	# cxt, tmp475
	movl	92(%rax), %eax	# cxt_17(D)->deparse, D.22063
	.loc 1 2505 0
	testl	%eax, %eax	# D.22063
	je	.L382	#,
	.loc 1 2507 0
	movq	-136(%rbp), %rax	# cxt, tmp476
	movl	92(%rax), %eax	# cxt_17(D)->deparse, D.22063
	.loc 1 2506 0
	testl	%eax, %eax	# D.22063
	jns	.L383	#,
	.loc 1 2508 0
	movl	$1, %esi	#,
	movl	$.LC5, %edi	#,
	call	Perl_get_sv	#
	testq	%rax, %rax	# D.22064
	je	.L384	#,
	.loc 1 2508 0 is_stmt 0 discriminator 1
	movl	$1, %esi	#,
	movl	$.LC5, %edi	#,
	call	Perl_get_sv	#
	movl	12(%rax), %eax	# _21->sv_flags, D.22065
	andl	$262144, %eax	#, D.22065
	testl	%eax, %eax	# D.22065
	je	.L385	#,
	movl	$1, %esi	#,
	movl	$.LC5, %edi	#,
	call	Perl_get_sv	#
	movq	(%rax), %rax	# _24->sv_any, PL_Xpv.195
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.195, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.196
	testq	%rax, %rax	# PL_Xpv.196
	je	.L386	#,
	.loc 1 2508 0 discriminator 3
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.197
	movq	8(%rax), %rax	# PL_Xpv.197_27->xpv_cur, D.22066
	cmpq	$1, %rax	#, D.22066
	ja	.L387	#,
	.loc 1 2508 0 discriminator 6
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.198
	movq	8(%rax), %rax	# PL_Xpv.198_29->xpv_cur, D.22066
	testq	%rax, %rax	# D.22066
	je	.L386	#,
	.loc 1 2508 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.199
	movq	(%rax), %rax	# PL_Xpv.199_31->xpv_pv, D.22067
	movzbl	(%rax), %eax	# *_32, D.22068
	cmpb	$48, %al	#, D.22068
	je	.L386	#,
.L387:
	.loc 1 2508 0 discriminator 5
	movl	$1, %eax	#, iftmp.194
	jmp	.L388	#
.L386:
	.loc 1 2508 0 discriminator 4
	movl	$0, %eax	#, iftmp.194
.L388:
	jmp	.L394	#
.L385:
	.loc 1 2508 0 discriminator 2
	movl	$1, %esi	#,
	movl	$.LC5, %edi	#,
	call	Perl_get_sv	#
	movl	12(%rax), %eax	# _37->sv_flags, D.22065
	andl	$65536, %eax	#, D.22065
	testl	%eax, %eax	# D.22065
	je	.L390	#,
	.loc 1 2508 0 discriminator 8
	movl	$1, %esi	#,
	movl	$.LC5, %edi	#,
	call	Perl_get_sv	#
	movq	(%rax), %rax	# _40->sv_any, D.22069
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_41].xiv_iv, D.22070
	testq	%rax, %rax	# D.22070
	setne	%al	#, D.22071
	movzbl	%al, %eax	# D.22071, iftmp.200
	jmp	.L394	#
.L390:
	.loc 1 2508 0 discriminator 9
	movl	$1, %esi	#,
	movl	$.LC5, %edi	#,
	call	Perl_get_sv	#
	movl	12(%rax), %eax	# _45->sv_flags, D.22065
	andl	$131072, %eax	#, D.22065
	testl	%eax, %eax	# D.22065
	je	.L392	#,
	.loc 1 2508 0 discriminator 10
	movl	$1, %esi	#,
	movl	$.LC5, %edi	#,
	call	Perl_get_sv	#
	movq	(%rax), %rax	# _48->sv_any, D.22069
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_49].xnv_nv, D.22072
	xorpd	%xmm1, %xmm1	# tmp478
	ucomisd	%xmm1, %xmm0	# tmp478, D.22072
	setp	%dl	#, tmp477
	movl	$1, %eax	#, tmp480
	xorpd	%xmm1, %xmm1	# tmp479
	ucomisd	%xmm1, %xmm0	# tmp479, D.22072
	cmove	%edx, %eax	# tmp477,, D.22071
	movzbl	%al, %eax	# D.22071, iftmp.201
	jmp	.L394	#
.L392:
	.loc 1 2508 0 discriminator 11
	movl	$1, %esi	#,
	movl	$.LC5, %edi	#,
	call	Perl_get_sv	#
	movq	%rax, %rdi	# D.22064,
	call	Perl_sv_2bool	#
	testb	%al, %al	# D.22068
	setne	%al	#, D.22071
	movzbl	%al, %eax	# D.22071, iftmp.201
	jmp	.L394	#
.L384:
	.loc 1 2508 0 discriminator 2
	movl	$0, %eax	#, iftmp.192
.L394:
	.loc 1 2507 0 is_stmt 1
	movq	-136(%rbp), %rdx	# cxt, tmp481
	movl	%eax, 92(%rdx)	# iftmp.192, cxt_17(D)->deparse
	movq	-136(%rbp), %rax	# cxt, tmp482
	movl	92(%rax), %eax	# cxt_17(D)->deparse, D.22063
	testl	%eax, %eax	# D.22063
	jne	.L383	#,
.L382:
	.loc 1 2510 0
	movq	-144(%rbp), %rdx	# cv, tmp483
	movq	-136(%rbp), %rax	# cxt, tmp484
	movq	%rdx, %rsi	# tmp483,
	movq	%rax, %rdi	# tmp484,
	call	store_other	#
	jmp	.L452	#
.L383:
	.loc 1 2518 0
	movabsq	$4603669611090668421, %rax	#, tmp485
	movq	%rax, -152(%rbp)	# tmp485, %sfp
	movsd	-152(%rbp), %xmm0	# %sfp,
	call	Perl_newSVnv	#
	movq	%rax, %r12	#, D.22064
	movl	$10, %esi	#,
	movl	$.LC7, %edi	#,
	call	Perl_newSVpvn	#
	movq	%r12, %rdx	# D.22064,
	movq	%rax, %rsi	# D.22064,
	movl	$2, %edi	#,
	movl	$0, %eax	#,
	call	Perl_load_module	#
	.loc 1 2520 0
	call	Perl_push_scope	#
	.loc 1 2521 0
	movl	$PL_tmps_floor, %edi	#,
	call	Perl_save_int	#
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.202
	movl	%eax, PL_tmps_floor(%rip)	# PL_tmps_ix.202, PL_tmps_floor
.LBB114:
	.loc 1 2527 0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.203
	addq	$4, %rax	#, PL_markstack_ptr.204
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.204, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.205
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.206
	cmpq	%rax, %rdx	# PL_markstack_max.206, PL_markstack_ptr.205
	jne	.L396	#,
	.loc 1 2527 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L396:
	.loc 1 2527 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.207
	movq	%rbx, %rcx	# sp, sp.208
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.209
	subq	%rdx, %rcx	# PL_stack_base.210, D.22070
	movq	%rcx, %rdx	# D.22070, D.22070
	sarq	$3, %rdx	#, tmp486
	movl	%edx, (%rax)	# D.22063, *PL_markstack_ptr.207_69
.LBE114:
.LBB115:
	.loc 1 2528 0 is_stmt 1 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.211
	movq	%rax, %rdx	# PL_stack_max.211, PL_stack_max.212
	movq	%rbx, %rax	# sp, sp.213
	subq	%rax, %rdx	# sp.213, D.22070
	movq	%rdx, %rax	# D.22070, D.22070
	cmpq	$7, %rax	#, D.22070
	jg	.L397	#,
	.loc 1 2528 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L397:
	.loc 1 2528 0 discriminator 2
	addq	$8, %rbx	#, sp
	movl	$10, %esi	#,
	movl	$.LC7, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, %rdi	# D.22064,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.22064, *sp_82
.LBE115:
	.loc 1 2529 0 is_stmt 1 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 2530 0 discriminator 2
	movl	$0, %esi	#,
	movl	$.LC8, %edi	#,
	call	Perl_call_method	#
	movl	%eax, -104(%rbp)	# tmp487, count
	.loc 1 2531 0 discriminator 2
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 2532 0 discriminator 2
	cmpl	$1, -104(%rbp)	#, count
	je	.L398	#,
.LBB116:
	.loc 1 2533 0
	movq	-136(%rbp), %rax	# cxt, tmp488
	movl	$1, 112(%rax)	#, cxt_17(D)->s_dirty
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L398:
.LBE116:
	.loc 1 2534 0
	movq	%rbx, %rax	# sp, sp.214
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.214_88, tmp489
	movq	%rax, -32(%rbp)	# tmp489, bdeparse
.LBB117:
	.loc 1 2540 0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.215
	addq	$4, %rax	#, PL_markstack_ptr.216
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.216, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.217
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.218
	cmpq	%rax, %rdx	# PL_markstack_max.218, PL_markstack_ptr.217
	jne	.L399	#,
	.loc 1 2540 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L399:
	.loc 1 2540 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.219
	movq	%rbx, %rcx	# sp, sp.220
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.221
	subq	%rdx, %rcx	# PL_stack_base.222, D.22070
	movq	%rcx, %rdx	# D.22070, D.22070
	sarq	$3, %rdx	#, tmp490
	movl	%edx, (%rax)	# D.22063, *PL_markstack_ptr.219_95
.LBE117:
.LBB118:
	.loc 1 2541 0 is_stmt 1 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.223
	movq	%rax, %rdx	# PL_stack_max.223, PL_stack_max.224
	movq	%rbx, %rax	# sp, sp.225
	subq	%rax, %rdx	# sp.225, D.22070
	movq	%rdx, %rax	# D.22070, D.22070
	cmpq	$7, %rax	#, D.22070
	jg	.L400	#,
	.loc 1 2541 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L400:
	.loc 1 2541 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# bdeparse, tmp491
	movq	%rax, (%rbx)	# tmp491, *sp_108
.LBE118:
.LBB119:
	.loc 1 2542 0 is_stmt 1 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.226
	movq	%rax, %rdx	# PL_stack_max.226, PL_stack_max.227
	movq	%rbx, %rax	# sp, sp.228
	subq	%rax, %rdx	# sp.228, D.22070
	movq	%rdx, %rax	# D.22070, D.22070
	cmpq	$7, %rax	#, D.22070
	jg	.L401	#,
	.loc 1 2542 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L401:
	.loc 1 2542 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-144(%rbp), %rax	# cv, tmp492
	movq	%rax, %rdi	# tmp492,
	call	Perl_newRV	#
	movq	%rax, %rdi	# D.22064,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.22064, *sp_115
.LBE119:
	.loc 1 2543 0 is_stmt 1 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 2544 0 discriminator 2
	movl	$0, %esi	#,
	movl	$.LC10, %edi	#,
	call	Perl_call_method	#
	movl	%eax, -104(%rbp)	# tmp493, count
	.loc 1 2545 0 discriminator 2
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 2546 0 discriminator 2
	cmpl	$1, -104(%rbp)	#, count
	je	.L402	#,
.LBB120:
	.loc 1 2547 0
	movq	-136(%rbp), %rax	# cxt, tmp494
	movl	$1, 112(%rax)	#, cxt_17(D)->s_dirty
	movl	$.LC11, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L402:
.LBE120:
	.loc 1 2549 0
	movq	%rbx, %rax	# sp, sp.229
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.229_122, tmp495
	movq	%rax, -24(%rbp)	# tmp495, text
	.loc 1 2550 0
	movq	-24(%rbp), %rax	# text, tmp496
	movq	(%rax), %rax	# text_124->sv_any, D.22069
	movq	16(%rax), %rax	# MEM[(struct XPV *)_125].xpv_len, D.22066
	movl	%eax, -112(%rbp)	# len.230, len
	.loc 1 2551 0
	movq	-24(%rbp), %rax	# text, tmp497
	movl	12(%rax), %eax	# text_124->sv_flags, D.22065
	andl	$262144, %eax	#, D.22065
	testl	%eax, %eax	# D.22065
	je	.L403	#,
	.loc 1 2551 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# text, tmp498
	movq	(%rax), %rax	# text_124->sv_any, D.22069
	movq	(%rax), %rax	# MEM[(struct XPV *)_130].xpv_pv, iftmp.231
	jmp	.L404	#
.L403:
	.loc 1 2551 0 discriminator 2
	movq	-24(%rbp), %rax	# text, tmp499
	movq	%rax, %rdi	# tmp499,
	call	Perl_sv_2pv_nolen	#
.L404:
	.loc 1 2551 0 discriminator 3
	movq	%rax, %rdi	# iftmp.231,
	call	strlen	#
	movl	%eax, -100(%rbp)	# D.22066, reallen
	.loc 1 2558 0 is_stmt 1 discriminator 3
	movl	-112(%rbp), %eax	# len, len.232
	testl	%eax, %eax	# len.232
	je	.L405	#,
	.loc 1 2558 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# text, tmp500
	movl	12(%rax), %eax	# text_124->sv_flags, D.22065
	andl	$262144, %eax	#, D.22065
	testl	%eax, %eax	# D.22065
	je	.L406	#,
	movq	-24(%rbp), %rax	# text, tmp501
	movq	(%rax), %rax	# text_124->sv_any, D.22069
	movq	(%rax), %rax	# MEM[(struct XPV *)_138].xpv_pv, iftmp.233
	jmp	.L407	#
.L406:
	.loc 1 2558 0 discriminator 2
	movq	-24(%rbp), %rax	# text, tmp502
	movq	%rax, %rdi	# tmp502,
	call	Perl_sv_2pv_nolen	#
.L407:
	.loc 1 2558 0 discriminator 3
	movl	-100(%rbp), %edx	# reallen, tmp503
	movslq	%edx, %rdx	# tmp503, D.22074
	subq	$1, %rdx	#, D.22074
	addq	%rdx, %rax	# D.22074, D.22067
	movzbl	(%rax), %eax	# *_143, D.22068
	cmpb	$59, %al	#, D.22068
	jne	.L408	#,
.L405:
.LBB121:
	.loc 1 2559 0 is_stmt 1
	movq	-136(%rbp), %rax	# cxt, tmp504
	movl	$1, 112(%rax)	#, cxt_17(D)->s_dirty
	movl	$.LC12, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L408:
.LBE121:
	.loc 1 2566 0
	movq	-136(%rbp), %rax	# cxt, tmp505
	movq	216(%rax), %rax	# cxt_17(D)->fio, D.22075
	testq	%rax, %rax	# D.22075
	jne	.L409	#,
	.loc 1 2566 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# cxt, tmp506
	movq	168(%rax), %rdx	# cxt_17(D)->membuf.aptr, D.22067
	movq	-136(%rbp), %rax	# cxt, tmp507
	movq	176(%rax), %rax	# cxt_17(D)->membuf.aend, D.22067
	cmpq	%rax, %rdx	# D.22067, D.22067
	jae	.L410	#,
	movq	-136(%rbp), %rax	# cxt, tmp508
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22067
	leaq	1(%rax), %rcx	#, D.22067
	movq	-136(%rbp), %rdx	# cxt, tmp509
	movq	%rcx, 168(%rdx)	# D.22067, cxt_17(D)->membuf.aptr
	movb	$26, (%rax)	#, *_149
	jmp	.L412	#
.L410:
.LBB122:
	.loc 1 2566 0 discriminator 2
	movq	-136(%rbp), %rax	# cxt, tmp510
	movq	160(%rax), %rax	# cxt_17(D)->membuf.asiz, D.22066
	addl	$8192, %eax	#, D.22076
	andl	$-8192, %eax	#, tmp511
	movl	%eax, -96(%rbp)	# tmp511, nsz
	movq	-136(%rbp), %rax	# cxt, tmp512
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22067
	movq	%rax, %rdx	# D.22067, D.22070
	movq	-136(%rbp), %rax	# cxt, tmp513
	movq	152(%rax), %rax	# cxt_17(D)->membuf.arena, D.22067
	subq	%rax, %rdx	# D.22070, D.22070
	movq	%rdx, %rax	# D.22070, D.22070
	movl	%eax, -92(%rbp)	# D.22070, offset
	movl	-96(%rbp), %eax	# nsz, tmp514
	movslq	%eax, %rdx	# tmp514, D.22066
	movq	-136(%rbp), %rax	# cxt, tmp515
	movq	152(%rax), %rax	# cxt_17(D)->membuf.arena, D.22067
	movq	%rdx, %rsi	# D.22066,
	movq	%rax, %rdi	# D.22067,
	call	Perl_safesysrealloc	#
	movq	-136(%rbp), %rdx	# cxt, tmp516
	movq	%rax, 152(%rdx)	# D.22069, cxt_17(D)->membuf.arena
	movl	-96(%rbp), %eax	# nsz, tmp517
	movslq	%eax, %rdx	# tmp517, D.22066
	movq	-136(%rbp), %rax	# cxt, tmp518
	movq	%rdx, 160(%rax)	# D.22066, cxt_17(D)->membuf.asiz
	movq	-136(%rbp), %rax	# cxt, tmp519
	movq	152(%rax), %rdx	# cxt_17(D)->membuf.arena, D.22067
	movl	-92(%rbp), %eax	# offset, tmp520
	cltq
	addq	%rax, %rdx	# D.22074, D.22067
	movq	-136(%rbp), %rax	# cxt, tmp521
	movq	%rdx, 168(%rax)	# D.22067, cxt_17(D)->membuf.aptr
	movq	-136(%rbp), %rax	# cxt, tmp522
	movq	152(%rax), %rdx	# cxt_17(D)->membuf.arena, D.22067
	movl	-96(%rbp), %eax	# nsz, tmp523
	cltq
	addq	%rax, %rdx	# D.22074, D.22067
	movq	-136(%rbp), %rax	# cxt, tmp524
	movq	%rdx, 176(%rax)	# D.22067, cxt_17(D)->membuf.aend
.LBE122:
	movq	-136(%rbp), %rax	# cxt, tmp526
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22067
	leaq	1(%rax), %rcx	#, D.22067
	movq	-136(%rbp), %rdx	# cxt, tmp527
	movq	%rcx, 168(%rdx)	# D.22067, cxt_17(D)->membuf.aptr
	movb	$26, (%rax)	#, *_174
	jmp	.L412	#
.L409:
	movq	-136(%rbp), %rax	# cxt, tmp528
	movq	216(%rax), %rax	# cxt_17(D)->fio, D.22075
	movl	$26, %esi	#,
	movq	%rax, %rdi	# D.22075,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22063
	jne	.L412	#,
	.loc 1 2566 0 discriminator 1
	movl	$-1, %eax	#, D.22063
	jmp	.L452	#
.L412:
	.loc 1 2567 0 is_stmt 1
	movq	-136(%rbp), %rax	# cxt, tmp529
	movq	64(%rax), %rax	# cxt_17(D)->tagnum, D.22070
	leaq	1(%rax), %rdx	#, D.22070
	movq	-136(%rbp), %rax	# cxt, tmp530
	movq	%rdx, 64(%rax)	# D.22070, cxt_17(D)->tagnum
	.loc 1 2575 0
	movl	-112(%rbp), %eax	# len, len.234
	cmpl	$255, %eax	#, len.234
	jg	.L413	#,
.LBB123:
	.loc 1 2575 0 is_stmt 0 discriminator 1
	movl	-112(%rbp), %eax	# len, len.235
	movb	%al, -113(%rbp)	# len.235, clen
	movq	-136(%rbp), %rax	# cxt, tmp531
	movq	216(%rax), %rax	# cxt_17(D)->fio, D.22075
	testq	%rax, %rax	# D.22075
	jne	.L414	#,
	movq	-136(%rbp), %rax	# cxt, tmp532
	movq	168(%rax), %rdx	# cxt_17(D)->membuf.aptr, D.22067
	movq	-136(%rbp), %rax	# cxt, tmp533
	movq	176(%rax), %rax	# cxt_17(D)->membuf.aend, D.22067
	cmpq	%rax, %rdx	# D.22067, D.22067
	jae	.L415	#,
	movq	-136(%rbp), %rax	# cxt, tmp534
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22067
	leaq	1(%rax), %rcx	#, D.22067
	movq	-136(%rbp), %rdx	# cxt, tmp535
	movq	%rcx, 168(%rdx)	# D.22067, cxt_17(D)->membuf.aptr
	movb	$10, (%rax)	#, *_188
	jmp	.L417	#
.L415:
.LBB124:
	.loc 1 2575 0 discriminator 2
	movq	-136(%rbp), %rax	# cxt, tmp536
	movq	160(%rax), %rax	# cxt_17(D)->membuf.asiz, D.22066
	addl	$8192, %eax	#, D.22076
	andl	$-8192, %eax	#, tmp537
	movl	%eax, -88(%rbp)	# tmp537, nsz
	movq	-136(%rbp), %rax	# cxt, tmp538
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22067
	movq	%rax, %rdx	# D.22067, D.22070
	movq	-136(%rbp), %rax	# cxt, tmp539
	movq	152(%rax), %rax	# cxt_17(D)->membuf.arena, D.22067
	subq	%rax, %rdx	# D.22070, D.22070
	movq	%rdx, %rax	# D.22070, D.22070
	movl	%eax, -84(%rbp)	# D.22070, offset
	movl	-88(%rbp), %eax	# nsz, tmp540
	movslq	%eax, %rdx	# tmp540, D.22066
	movq	-136(%rbp), %rax	# cxt, tmp541
	movq	152(%rax), %rax	# cxt_17(D)->membuf.arena, D.22067
	movq	%rdx, %rsi	# D.22066,
	movq	%rax, %rdi	# D.22067,
	call	Perl_safesysrealloc	#
	movq	-136(%rbp), %rdx	# cxt, tmp542
	movq	%rax, 152(%rdx)	# D.22069, cxt_17(D)->membuf.arena
	movl	-88(%rbp), %eax	# nsz, tmp543
	movslq	%eax, %rdx	# tmp543, D.22066
	movq	-136(%rbp), %rax	# cxt, tmp544
	movq	%rdx, 160(%rax)	# D.22066, cxt_17(D)->membuf.asiz
	movq	-136(%rbp), %rax	# cxt, tmp545
	movq	152(%rax), %rdx	# cxt_17(D)->membuf.arena, D.22067
	movl	-84(%rbp), %eax	# offset, tmp546
	cltq
	addq	%rax, %rdx	# D.22074, D.22067
	movq	-136(%rbp), %rax	# cxt, tmp547
	movq	%rdx, 168(%rax)	# D.22067, cxt_17(D)->membuf.aptr
	movq	-136(%rbp), %rax	# cxt, tmp548
	movq	152(%rax), %rdx	# cxt_17(D)->membuf.arena, D.22067
	movl	-88(%rbp), %eax	# nsz, tmp549
	cltq
	addq	%rax, %rdx	# D.22074, D.22067
	movq	-136(%rbp), %rax	# cxt, tmp550
	movq	%rdx, 176(%rax)	# D.22067, cxt_17(D)->membuf.aend
.LBE124:
	movq	-136(%rbp), %rax	# cxt, tmp552
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22067
	leaq	1(%rax), %rcx	#, D.22067
	movq	-136(%rbp), %rdx	# cxt, tmp553
	movq	%rcx, 168(%rdx)	# D.22067, cxt_17(D)->membuf.aptr
	movb	$10, (%rax)	#, *_213
	jmp	.L417	#
.L414:
	movq	-136(%rbp), %rax	# cxt, tmp554
	movq	216(%rax), %rax	# cxt_17(D)->fio, D.22075
	movl	$10, %esi	#,
	movq	%rax, %rdi	# D.22075,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22063
	jne	.L417	#,
	.loc 1 2575 0 discriminator 1
	movl	$-1, %eax	#, D.22063
	jmp	.L452	#
.L417:
	.loc 1 2575 0 discriminator 2
	movq	-136(%rbp), %rax	# cxt, tmp555
	movq	216(%rax), %rax	# cxt_17(D)->fio, D.22075
	testq	%rax, %rax	# D.22075
	jne	.L418	#,
	.loc 1 2575 0 discriminator 1
	movq	-136(%rbp), %rax	# cxt, tmp556
	movq	168(%rax), %rdx	# cxt_17(D)->membuf.aptr, D.22067
	movq	-136(%rbp), %rax	# cxt, tmp557
	movq	176(%rax), %rax	# cxt_17(D)->membuf.aend, D.22067
	cmpq	%rax, %rdx	# D.22067, D.22067
	jae	.L419	#,
	movq	-136(%rbp), %rax	# cxt, tmp558
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22067
	leaq	1(%rax), %rcx	#, D.22067
	movq	-136(%rbp), %rdx	# cxt, tmp559
	movq	%rcx, 168(%rdx)	# D.22067, cxt_17(D)->membuf.aptr
	movzbl	-113(%rbp), %edx	# clen, clen.236
	movb	%dl, (%rax)	# clen.236, *_222
	jmp	.L421	#
.L419:
.LBB125:
	.loc 1 2575 0 discriminator 2
	movq	-136(%rbp), %rax	# cxt, tmp560
	movq	160(%rax), %rax	# cxt_17(D)->membuf.asiz, D.22066
	addl	$8192, %eax	#, D.22076
	andl	$-8192, %eax	#, tmp561
	movl	%eax, -80(%rbp)	# tmp561, nsz
	movq	-136(%rbp), %rax	# cxt, tmp562
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22067
	movq	%rax, %rdx	# D.22067, D.22070
	movq	-136(%rbp), %rax	# cxt, tmp563
	movq	152(%rax), %rax	# cxt_17(D)->membuf.arena, D.22067
	subq	%rax, %rdx	# D.22070, D.22070
	movq	%rdx, %rax	# D.22070, D.22070
	movl	%eax, -76(%rbp)	# D.22070, offset
	movl	-80(%rbp), %eax	# nsz, tmp564
	movslq	%eax, %rdx	# tmp564, D.22066
	movq	-136(%rbp), %rax	# cxt, tmp565
	movq	152(%rax), %rax	# cxt_17(D)->membuf.arena, D.22067
	movq	%rdx, %rsi	# D.22066,
	movq	%rax, %rdi	# D.22067,
	call	Perl_safesysrealloc	#
	movq	-136(%rbp), %rdx	# cxt, tmp566
	movq	%rax, 152(%rdx)	# D.22069, cxt_17(D)->membuf.arena
	movl	-80(%rbp), %eax	# nsz, tmp567
	movslq	%eax, %rdx	# tmp567, D.22066
	movq	-136(%rbp), %rax	# cxt, tmp568
	movq	%rdx, 160(%rax)	# D.22066, cxt_17(D)->membuf.asiz
	movq	-136(%rbp), %rax	# cxt, tmp569
	movq	152(%rax), %rdx	# cxt_17(D)->membuf.arena, D.22067
	movl	-76(%rbp), %eax	# offset, tmp570
	cltq
	addq	%rax, %rdx	# D.22074, D.22067
	movq	-136(%rbp), %rax	# cxt, tmp571
	movq	%rdx, 168(%rax)	# D.22067, cxt_17(D)->membuf.aptr
	movq	-136(%rbp), %rax	# cxt, tmp572
	movq	152(%rax), %rdx	# cxt_17(D)->membuf.arena, D.22067
	movl	-80(%rbp), %eax	# nsz, tmp573
	cltq
	addq	%rax, %rdx	# D.22074, D.22067
	movq	-136(%rbp), %rax	# cxt, tmp574
	movq	%rdx, 176(%rax)	# D.22067, cxt_17(D)->membuf.aend
.LBE125:
	movq	-136(%rbp), %rax	# cxt, tmp576
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22067
	leaq	1(%rax), %rcx	#, D.22067
	movq	-136(%rbp), %rdx	# cxt, tmp577
	movq	%rcx, 168(%rdx)	# D.22067, cxt_17(D)->membuf.aptr
	movzbl	-113(%rbp), %edx	# clen, clen.237
	movb	%dl, (%rax)	# clen.237, *_248
	jmp	.L421	#
.L418:
	movzbl	-113(%rbp), %edx	# clen, D.22063
	movq	-136(%rbp), %rax	# cxt, tmp578
	movq	216(%rax), %rax	# cxt_17(D)->fio, D.22075
	movl	%edx, %esi	# D.22063,
	movq	%rax, %rdi	# D.22075,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22063
	jne	.L421	#,
	.loc 1 2575 0 discriminator 1
	movl	$-1, %eax	#, D.22063
	jmp	.L452	#
.L421:
	.loc 1 2575 0 discriminator 2
	movl	-112(%rbp), %eax	# len, len.238
	testl	%eax, %eax	# len.238
	je	.L422	#,
	.loc 1 2575 0 discriminator 1
	movq	-136(%rbp), %rax	# cxt, tmp579
	movq	216(%rax), %rax	# cxt_17(D)->fio, D.22075
	testq	%rax, %rax	# D.22075
	jne	.L423	#,
.LBB126:
	movq	-136(%rbp), %rax	# cxt, tmp580
	movq	168(%rax), %rdx	# cxt_17(D)->membuf.aptr, D.22067
	movl	-112(%rbp), %eax	# len, len.239
	cltq
	addq	%rax, %rdx	# D.22074, D.22067
	movq	-136(%rbp), %rax	# cxt, tmp581
	movq	176(%rax), %rax	# cxt_17(D)->membuf.aend, D.22067
	cmpq	%rax, %rdx	# D.22067, D.22067
	jbe	.L424	#,
.LBB127:
	movq	-136(%rbp), %rax	# cxt, tmp582
	movq	160(%rax), %rax	# cxt_17(D)->membuf.asiz, D.22066
	movl	%eax, %edx	# D.22066, D.22076
	movl	-112(%rbp), %eax	# len, len.240
	addl	%edx, %eax	# D.22076, D.22076
	addl	$8191, %eax	#, D.22076
	andl	$-8192, %eax	#, tmp583
	movl	%eax, -72(%rbp)	# tmp583, nsz
	movq	-136(%rbp), %rax	# cxt, tmp584
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22067
	movq	%rax, %rdx	# D.22067, D.22070
	movq	-136(%rbp), %rax	# cxt, tmp585
	movq	152(%rax), %rax	# cxt_17(D)->membuf.arena, D.22067
	subq	%rax, %rdx	# D.22070, D.22070
	movq	%rdx, %rax	# D.22070, D.22070
	movl	%eax, -68(%rbp)	# D.22070, offset
	movl	-72(%rbp), %eax	# nsz, tmp586
	movslq	%eax, %rdx	# tmp586, D.22066
	movq	-136(%rbp), %rax	# cxt, tmp587
	movq	152(%rax), %rax	# cxt_17(D)->membuf.arena, D.22067
	movq	%rdx, %rsi	# D.22066,
	movq	%rax, %rdi	# D.22067,
	call	Perl_safesysrealloc	#
	movq	-136(%rbp), %rdx	# cxt, tmp588
	movq	%rax, 152(%rdx)	# D.22069, cxt_17(D)->membuf.arena
	movl	-72(%rbp), %eax	# nsz, tmp589
	movslq	%eax, %rdx	# tmp589, D.22066
	movq	-136(%rbp), %rax	# cxt, tmp590
	movq	%rdx, 160(%rax)	# D.22066, cxt_17(D)->membuf.asiz
	movq	-136(%rbp), %rax	# cxt, tmp591
	movq	152(%rax), %rdx	# cxt_17(D)->membuf.arena, D.22067
	movl	-68(%rbp), %eax	# offset, tmp592
	cltq
	addq	%rax, %rdx	# D.22074, D.22067
	movq	-136(%rbp), %rax	# cxt, tmp593
	movq	%rdx, 168(%rax)	# D.22067, cxt_17(D)->membuf.aptr
	movq	-136(%rbp), %rax	# cxt, tmp594
	movq	152(%rax), %rdx	# cxt_17(D)->membuf.arena, D.22067
	movl	-72(%rbp), %eax	# nsz, tmp595
	cltq
	addq	%rax, %rdx	# D.22074, D.22067
	movq	-136(%rbp), %rax	# cxt, tmp596
	movq	%rdx, 176(%rax)	# D.22067, cxt_17(D)->membuf.aend
.L424:
.LBE127:
	.loc 1 2575 0 discriminator 2
	movl	-112(%rbp), %eax	# len, len.242
	movslq	%eax, %rbx	# len.242, D.22066
	movq	-24(%rbp), %rax	# text, tmp598
	movl	12(%rax), %eax	# text_124->sv_flags, D.22065
	andl	$262144, %eax	#, D.22065
	testl	%eax, %eax	# D.22065
	je	.L425	#,
	.loc 1 2575 0 discriminator 1
	movq	-24(%rbp), %rax	# text, tmp599
	movq	(%rax), %rax	# text_124->sv_any, D.22069
	movq	(%rax), %rax	# MEM[(struct XPV *)_291].xpv_pv, iftmp.243
	jmp	.L426	#
.L425:
	.loc 1 2575 0 discriminator 2
	movq	-24(%rbp), %rax	# text, tmp600
	movq	%rax, %rdi	# tmp600,
	call	Perl_sv_2pv_nolen	#
.L426:
	.loc 1 2575 0 discriminator 1
	movq	-136(%rbp), %rdx	# cxt, tmp601
	movq	168(%rdx), %rcx	# cxt_17(D)->membuf.aptr, D.22067
	movq	%rbx, %rdx	# D.22066,
	movq	%rax, %rsi	# iftmp.243,
	movq	%rcx, %rdi	# D.22067,
	call	memcpy	#
	movq	-136(%rbp), %rax	# cxt, tmp602
	movq	168(%rax), %rdx	# cxt_17(D)->membuf.aptr, D.22067
	movl	-112(%rbp), %eax	# len, len.244
	cltq
	addq	%rax, %rdx	# D.22074, D.22067
	movq	-136(%rbp), %rax	# cxt, tmp603
	movq	%rdx, 168(%rax)	# D.22067, cxt_17(D)->membuf.aptr
.LBE126:
	jmp	.L422	#
.L423:
	.loc 1 2575 0 discriminator 2
	movl	-112(%rbp), %eax	# len, len.245
	movslq	%eax, %rbx	# len.245, D.22066
	movq	-24(%rbp), %rax	# text, tmp605
	movl	12(%rax), %eax	# text_124->sv_flags, D.22065
	andl	$262144, %eax	#, D.22065
	testl	%eax, %eax	# D.22065
	je	.L427	#,
	.loc 1 2575 0 discriminator 1
	movq	-24(%rbp), %rax	# text, tmp606
	movq	(%rax), %rax	# text_124->sv_any, D.22069
	movq	(%rax), %rax	# MEM[(struct XPV *)_304].xpv_pv, iftmp.246
	jmp	.L428	#
.L427:
	.loc 1 2575 0 discriminator 2
	movq	-24(%rbp), %rax	# text, tmp607
	movq	%rax, %rdi	# tmp607,
	call	Perl_sv_2pv_nolen	#
.L428:
	.loc 1 2575 0 discriminator 3
	movq	-136(%rbp), %rdx	# cxt, tmp608
	movq	216(%rdx), %rcx	# cxt_17(D)->fio, D.22075
	movq	%rbx, %rdx	# D.22066,
	movq	%rax, %rsi	# iftmp.246,
	movq	%rcx, %rdi	# D.22075,
	call	Perl_PerlIO_write	#
	movl	-112(%rbp), %edx	# len, len.247
	movslq	%edx, %rdx	# len.247, D.22070
	cmpq	%rdx, %rax	# D.22070, D.22070
	je	.L422	#,
	.loc 1 2575 0 discriminator 1
	movl	$-1, %eax	#, D.22063
	jmp	.L452	#
.L422:
.LBE123:
	jmp	.L429	#
.L413:
	.loc 1 2575 0 discriminator 2
	movq	-136(%rbp), %rax	# cxt, tmp609
	movq	216(%rax), %rax	# cxt_17(D)->fio, D.22075
	testq	%rax, %rax	# D.22075
	jne	.L430	#,
	.loc 1 2575 0 discriminator 1
	movq	-136(%rbp), %rax	# cxt, tmp610
	movq	168(%rax), %rdx	# cxt_17(D)->membuf.aptr, D.22067
	movq	-136(%rbp), %rax	# cxt, tmp611
	movq	176(%rax), %rax	# cxt_17(D)->membuf.aend, D.22067
	cmpq	%rax, %rdx	# D.22067, D.22067
	jae	.L431	#,
	movq	-136(%rbp), %rax	# cxt, tmp612
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22067
	leaq	1(%rax), %rcx	#, D.22067
	movq	-136(%rbp), %rdx	# cxt, tmp613
	movq	%rcx, 168(%rdx)	# D.22067, cxt_17(D)->membuf.aptr
	movb	$1, (%rax)	#, *_316
	jmp	.L433	#
.L431:
.LBB128:
	.loc 1 2575 0 discriminator 2
	movq	-136(%rbp), %rax	# cxt, tmp614
	movq	160(%rax), %rax	# cxt_17(D)->membuf.asiz, D.22066
	addl	$8192, %eax	#, D.22076
	andl	$-8192, %eax	#, tmp615
	movl	%eax, -64(%rbp)	# tmp615, nsz
	movq	-136(%rbp), %rax	# cxt, tmp616
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22067
	movq	%rax, %rdx	# D.22067, D.22070
	movq	-136(%rbp), %rax	# cxt, tmp617
	movq	152(%rax), %rax	# cxt_17(D)->membuf.arena, D.22067
	subq	%rax, %rdx	# D.22070, D.22070
	movq	%rdx, %rax	# D.22070, D.22070
	movl	%eax, -60(%rbp)	# D.22070, offset
	movl	-64(%rbp), %eax	# nsz, tmp618
	movslq	%eax, %rdx	# tmp618, D.22066
	movq	-136(%rbp), %rax	# cxt, tmp619
	movq	152(%rax), %rax	# cxt_17(D)->membuf.arena, D.22067
	movq	%rdx, %rsi	# D.22066,
	movq	%rax, %rdi	# D.22067,
	call	Perl_safesysrealloc	#
	movq	-136(%rbp), %rdx	# cxt, tmp620
	movq	%rax, 152(%rdx)	# D.22069, cxt_17(D)->membuf.arena
	movl	-64(%rbp), %eax	# nsz, tmp621
	movslq	%eax, %rdx	# tmp621, D.22066
	movq	-136(%rbp), %rax	# cxt, tmp622
	movq	%rdx, 160(%rax)	# D.22066, cxt_17(D)->membuf.asiz
	movq	-136(%rbp), %rax	# cxt, tmp623
	movq	152(%rax), %rdx	# cxt_17(D)->membuf.arena, D.22067
	movl	-60(%rbp), %eax	# offset, tmp624
	cltq
	addq	%rax, %rdx	# D.22074, D.22067
	movq	-136(%rbp), %rax	# cxt, tmp625
	movq	%rdx, 168(%rax)	# D.22067, cxt_17(D)->membuf.aptr
	movq	-136(%rbp), %rax	# cxt, tmp626
	movq	152(%rax), %rdx	# cxt_17(D)->membuf.arena, D.22067
	movl	-64(%rbp), %eax	# nsz, tmp627
	cltq
	addq	%rax, %rdx	# D.22074, D.22067
	movq	-136(%rbp), %rax	# cxt, tmp628
	movq	%rdx, 176(%rax)	# D.22067, cxt_17(D)->membuf.aend
.LBE128:
	movq	-136(%rbp), %rax	# cxt, tmp630
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22067
	leaq	1(%rax), %rcx	#, D.22067
	movq	-136(%rbp), %rdx	# cxt, tmp631
	movq	%rcx, 168(%rdx)	# D.22067, cxt_17(D)->membuf.aptr
	movb	$1, (%rax)	#, *_341
	jmp	.L433	#
.L430:
	movq	-136(%rbp), %rax	# cxt, tmp632
	movq	216(%rax), %rax	# cxt_17(D)->fio, D.22075
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.22075,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22063
	jne	.L433	#,
	.loc 1 2575 0 discriminator 1
	movl	$-1, %eax	#, D.22063
	jmp	.L452	#
.L433:
	.loc 1 2575 0 discriminator 2
	movq	-136(%rbp), %rax	# cxt, tmp633
	movl	80(%rax), %eax	# cxt_17(D)->netorder, D.22063
	testl	%eax, %eax	# D.22063
	je	.L434	#,
.LBB129:
	.loc 1 2575 0 discriminator 1
	movl	-112(%rbp), %eax	# len, len.248
	cltq
	movq	%rax, %rdi	# D.22070,
	call	Perl_my_htonl	#
	movl	%eax, -108(%rbp)	# y.249, y
	movq	-136(%rbp), %rax	# cxt, tmp634
	movq	216(%rax), %rax	# cxt_17(D)->fio, D.22075
	testq	%rax, %rax	# D.22075
	jne	.L435	#,
.LBB130:
	movq	-136(%rbp), %rax	# cxt, tmp635
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22067
	leaq	4(%rax), %rdx	#, D.22067
	movq	-136(%rbp), %rax	# cxt, tmp636
	movq	176(%rax), %rax	# cxt_17(D)->membuf.aend, D.22067
	cmpq	%rax, %rdx	# D.22067, D.22067
	jbe	.L436	#,
.LBB131:
	movq	-136(%rbp), %rax	# cxt, tmp637
	movq	160(%rax), %rax	# cxt_17(D)->membuf.asiz, D.22066
	addl	$8195, %eax	#, D.22076
	andl	$-8192, %eax	#, tmp638
	movl	%eax, -56(%rbp)	# tmp638, nsz
	movq	-136(%rbp), %rax	# cxt, tmp639
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22067
	movq	%rax, %rdx	# D.22067, D.22070
	movq	-136(%rbp), %rax	# cxt, tmp640
	movq	152(%rax), %rax	# cxt_17(D)->membuf.arena, D.22067
	subq	%rax, %rdx	# D.22070, D.22070
	movq	%rdx, %rax	# D.22070, D.22070
	movl	%eax, -52(%rbp)	# D.22070, offset
	movl	-56(%rbp), %eax	# nsz, tmp641
	movslq	%eax, %rdx	# tmp641, D.22066
	movq	-136(%rbp), %rax	# cxt, tmp642
	movq	152(%rax), %rax	# cxt_17(D)->membuf.arena, D.22067
	movq	%rdx, %rsi	# D.22066,
	movq	%rax, %rdi	# D.22067,
	call	Perl_safesysrealloc	#
	movq	-136(%rbp), %rdx	# cxt, tmp643
	movq	%rax, 152(%rdx)	# D.22069, cxt_17(D)->membuf.arena
	movl	-56(%rbp), %eax	# nsz, tmp644
	movslq	%eax, %rdx	# tmp644, D.22066
	movq	-136(%rbp), %rax	# cxt, tmp645
	movq	%rdx, 160(%rax)	# D.22066, cxt_17(D)->membuf.asiz
	movq	-136(%rbp), %rax	# cxt, tmp646
	movq	152(%rax), %rdx	# cxt_17(D)->membuf.arena, D.22067
	movl	-52(%rbp), %eax	# offset, tmp647
	cltq
	addq	%rax, %rdx	# D.22074, D.22067
	movq	-136(%rbp), %rax	# cxt, tmp648
	movq	%rdx, 168(%rax)	# D.22067, cxt_17(D)->membuf.aptr
	movq	-136(%rbp), %rax	# cxt, tmp649
	movq	152(%rax), %rdx	# cxt_17(D)->membuf.arena, D.22067
	movl	-56(%rbp), %eax	# nsz, tmp650
	cltq
	addq	%rax, %rdx	# D.22074, D.22067
	movq	-136(%rbp), %rax	# cxt, tmp651
	movq	%rdx, 176(%rax)	# D.22067, cxt_17(D)->membuf.aend
.L436:
.LBE131:
	.loc 1 2575 0 discriminator 2
	movq	-136(%rbp), %rax	# cxt, tmp653
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22067
	movq	%rax, %rdx	# D.22067, D.22066
	movq	-136(%rbp), %rax	# cxt, tmp654
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22067
	andq	$-4, %rax	#, D.22066
	cmpq	%rax, %rdx	# D.22066, D.22066
	jne	.L437	#,
	.loc 1 2575 0 discriminator 1
	movq	-136(%rbp), %rax	# cxt, tmp655
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22067
	movl	-108(%rbp), %edx	# y, y.250
	movl	%edx, (%rax)	# y.250, MEM[(int *)_382]
	jmp	.L438	#
.L437:
	.loc 1 2575 0 discriminator 2
	movq	-136(%rbp), %rax	# cxt, tmp656
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22067
	movl	-108(%rbp), %edx	# MEM[(char * {ref-all})&y], D.22063
	movl	%edx, (%rax)	# D.22063, MEM[(char * {ref-all})_384]
.L438:
	.loc 1 2575 0 discriminator 1
	movq	-136(%rbp), %rax	# cxt, tmp657
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22067
	leaq	4(%rax), %rdx	#, D.22067
	movq	-136(%rbp), %rax	# cxt, tmp658
	movq	%rdx, 168(%rax)	# D.22067, cxt_17(D)->membuf.aptr
.LBE130:
	jmp	.L439	#
.L435:
	.loc 1 2575 0 discriminator 2
	movq	-136(%rbp), %rax	# cxt, tmp660
	movq	216(%rax), %rax	# cxt_17(D)->fio, D.22075
	leaq	-108(%rbp), %rcx	#, tmp661
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp661,
	movq	%rax, %rdi	# D.22075,
	call	Perl_PerlIO_write	#
	cmpq	$4, %rax	#, D.22070
	je	.L439	#,
	.loc 1 2575 0 discriminator 1
	movl	$-1, %eax	#, D.22063
	jmp	.L452	#
.L439:
.LBE129:
	jmp	.L440	#
.L434:
	.loc 1 2575 0 discriminator 2
	movq	-136(%rbp), %rax	# cxt, tmp662
	movq	216(%rax), %rax	# cxt_17(D)->fio, D.22075
	testq	%rax, %rax	# D.22075
	jne	.L441	#,
.LBB132:
	.loc 1 2575 0 discriminator 1
	movq	-136(%rbp), %rax	# cxt, tmp663
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22067
	leaq	4(%rax), %rdx	#, D.22067
	movq	-136(%rbp), %rax	# cxt, tmp664
	movq	176(%rax), %rax	# cxt_17(D)->membuf.aend, D.22067
	cmpq	%rax, %rdx	# D.22067, D.22067
	jbe	.L442	#,
.LBB133:
	movq	-136(%rbp), %rax	# cxt, tmp665
	movq	160(%rax), %rax	# cxt_17(D)->membuf.asiz, D.22066
	addl	$8195, %eax	#, D.22076
	andl	$-8192, %eax	#, tmp666
	movl	%eax, -48(%rbp)	# tmp666, nsz
	movq	-136(%rbp), %rax	# cxt, tmp667
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22067
	movq	%rax, %rdx	# D.22067, D.22070
	movq	-136(%rbp), %rax	# cxt, tmp668
	movq	152(%rax), %rax	# cxt_17(D)->membuf.arena, D.22067
	subq	%rax, %rdx	# D.22070, D.22070
	movq	%rdx, %rax	# D.22070, D.22070
	movl	%eax, -44(%rbp)	# D.22070, offset
	movl	-48(%rbp), %eax	# nsz, tmp669
	movslq	%eax, %rdx	# tmp669, D.22066
	movq	-136(%rbp), %rax	# cxt, tmp670
	movq	152(%rax), %rax	# cxt_17(D)->membuf.arena, D.22067
	movq	%rdx, %rsi	# D.22066,
	movq	%rax, %rdi	# D.22067,
	call	Perl_safesysrealloc	#
	movq	-136(%rbp), %rdx	# cxt, tmp671
	movq	%rax, 152(%rdx)	# D.22069, cxt_17(D)->membuf.arena
	movl	-48(%rbp), %eax	# nsz, tmp672
	movslq	%eax, %rdx	# tmp672, D.22066
	movq	-136(%rbp), %rax	# cxt, tmp673
	movq	%rdx, 160(%rax)	# D.22066, cxt_17(D)->membuf.asiz
	movq	-136(%rbp), %rax	# cxt, tmp674
	movq	152(%rax), %rdx	# cxt_17(D)->membuf.arena, D.22067
	movl	-44(%rbp), %eax	# offset, tmp675
	cltq
	addq	%rax, %rdx	# D.22074, D.22067
	movq	-136(%rbp), %rax	# cxt, tmp676
	movq	%rdx, 168(%rax)	# D.22067, cxt_17(D)->membuf.aptr
	movq	-136(%rbp), %rax	# cxt, tmp677
	movq	152(%rax), %rdx	# cxt_17(D)->membuf.arena, D.22067
	movl	-48(%rbp), %eax	# nsz, tmp678
	cltq
	addq	%rax, %rdx	# D.22074, D.22067
	movq	-136(%rbp), %rax	# cxt, tmp679
	movq	%rdx, 176(%rax)	# D.22067, cxt_17(D)->membuf.aend
.L442:
.LBE133:
	.loc 1 2575 0 discriminator 2
	movq	-136(%rbp), %rax	# cxt, tmp681
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22067
	movq	%rax, %rdx	# D.22067, D.22066
	movq	-136(%rbp), %rax	# cxt, tmp682
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22067
	andq	$-4, %rax	#, D.22066
	cmpq	%rax, %rdx	# D.22066, D.22066
	jne	.L443	#,
	.loc 1 2575 0 discriminator 1
	movq	-136(%rbp), %rax	# cxt, tmp683
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22067
	movl	-112(%rbp), %edx	# len, len.251
	movl	%edx, (%rax)	# len.251, MEM[(int *)_423]
	jmp	.L444	#
.L443:
	.loc 1 2575 0 discriminator 2
	movq	-136(%rbp), %rax	# cxt, tmp684
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22067
	movl	-112(%rbp), %edx	# MEM[(char * {ref-all})&len], D.22063
	movl	%edx, (%rax)	# D.22063, MEM[(char * {ref-all})_425]
.L444:
	.loc 1 2575 0 discriminator 1
	movq	-136(%rbp), %rax	# cxt, tmp685
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22067
	leaq	4(%rax), %rdx	#, D.22067
	movq	-136(%rbp), %rax	# cxt, tmp686
	movq	%rdx, 168(%rax)	# D.22067, cxt_17(D)->membuf.aptr
.LBE132:
	jmp	.L440	#
.L441:
	.loc 1 2575 0 discriminator 2
	movq	-136(%rbp), %rax	# cxt, tmp688
	movq	216(%rax), %rax	# cxt_17(D)->fio, D.22075
	leaq	-112(%rbp), %rcx	#, tmp689
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp689,
	movq	%rax, %rdi	# D.22075,
	call	Perl_PerlIO_write	#
	cmpq	$4, %rax	#, D.22070
	je	.L440	#,
	.loc 1 2575 0 discriminator 1
	movl	$-1, %eax	#, D.22063
	jmp	.L452	#
.L440:
	.loc 1 2575 0 discriminator 2
	movq	-136(%rbp), %rax	# cxt, tmp690
	movq	216(%rax), %rax	# cxt_17(D)->fio, D.22075
	testq	%rax, %rax	# D.22075
	jne	.L445	#,
.LBB134:
	.loc 1 2575 0 discriminator 1
	movq	-136(%rbp), %rax	# cxt, tmp691
	movq	168(%rax), %rdx	# cxt_17(D)->membuf.aptr, D.22067
	movl	-112(%rbp), %eax	# len, len.252
	cltq
	addq	%rax, %rdx	# D.22074, D.22067
	movq	-136(%rbp), %rax	# cxt, tmp692
	movq	176(%rax), %rax	# cxt_17(D)->membuf.aend, D.22067
	cmpq	%rax, %rdx	# D.22067, D.22067
	jbe	.L446	#,
.LBB135:
	movq	-136(%rbp), %rax	# cxt, tmp693
	movq	160(%rax), %rax	# cxt_17(D)->membuf.asiz, D.22066
	movl	%eax, %edx	# D.22066, D.22076
	movl	-112(%rbp), %eax	# len, len.253
	addl	%edx, %eax	# D.22076, D.22076
	addl	$8191, %eax	#, D.22076
	andl	$-8192, %eax	#, tmp694
	movl	%eax, -40(%rbp)	# tmp694, nsz
	movq	-136(%rbp), %rax	# cxt, tmp695
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22067
	movq	%rax, %rdx	# D.22067, D.22070
	movq	-136(%rbp), %rax	# cxt, tmp696
	movq	152(%rax), %rax	# cxt_17(D)->membuf.arena, D.22067
	subq	%rax, %rdx	# D.22070, D.22070
	movq	%rdx, %rax	# D.22070, D.22070
	movl	%eax, -36(%rbp)	# D.22070, offset
	movl	-40(%rbp), %eax	# nsz, tmp697
	movslq	%eax, %rdx	# tmp697, D.22066
	movq	-136(%rbp), %rax	# cxt, tmp698
	movq	152(%rax), %rax	# cxt_17(D)->membuf.arena, D.22067
	movq	%rdx, %rsi	# D.22066,
	movq	%rax, %rdi	# D.22067,
	call	Perl_safesysrealloc	#
	movq	-136(%rbp), %rdx	# cxt, tmp699
	movq	%rax, 152(%rdx)	# D.22069, cxt_17(D)->membuf.arena
	movl	-40(%rbp), %eax	# nsz, tmp700
	movslq	%eax, %rdx	# tmp700, D.22066
	movq	-136(%rbp), %rax	# cxt, tmp701
	movq	%rdx, 160(%rax)	# D.22066, cxt_17(D)->membuf.asiz
	movq	-136(%rbp), %rax	# cxt, tmp702
	movq	152(%rax), %rdx	# cxt_17(D)->membuf.arena, D.22067
	movl	-36(%rbp), %eax	# offset, tmp703
	cltq
	addq	%rax, %rdx	# D.22074, D.22067
	movq	-136(%rbp), %rax	# cxt, tmp704
	movq	%rdx, 168(%rax)	# D.22067, cxt_17(D)->membuf.aptr
	movq	-136(%rbp), %rax	# cxt, tmp705
	movq	152(%rax), %rdx	# cxt_17(D)->membuf.arena, D.22067
	movl	-40(%rbp), %eax	# nsz, tmp706
	cltq
	addq	%rax, %rdx	# D.22074, D.22067
	movq	-136(%rbp), %rax	# cxt, tmp707
	movq	%rdx, 176(%rax)	# D.22067, cxt_17(D)->membuf.aend
.L446:
.LBE135:
	.loc 1 2575 0 discriminator 2
	movl	-112(%rbp), %eax	# len, len.255
	movslq	%eax, %rbx	# len.255, D.22066
	movq	-24(%rbp), %rax	# text, tmp709
	movl	12(%rax), %eax	# text_124->sv_flags, D.22065
	andl	$262144, %eax	#, D.22065
	testl	%eax, %eax	# D.22065
	je	.L447	#,
	.loc 1 2575 0 discriminator 1
	movq	-24(%rbp), %rax	# text, tmp710
	movq	(%rax), %rax	# text_124->sv_any, D.22069
	movq	(%rax), %rax	# MEM[(struct XPV *)_468].xpv_pv, iftmp.256
	jmp	.L448	#
.L447:
	.loc 1 2575 0 discriminator 2
	movq	-24(%rbp), %rax	# text, tmp711
	movq	%rax, %rdi	# tmp711,
	call	Perl_sv_2pv_nolen	#
.L448:
	.loc 1 2575 0 discriminator 1
	movq	-136(%rbp), %rdx	# cxt, tmp712
	movq	168(%rdx), %rcx	# cxt_17(D)->membuf.aptr, D.22067
	movq	%rbx, %rdx	# D.22066,
	movq	%rax, %rsi	# iftmp.256,
	movq	%rcx, %rdi	# D.22067,
	call	memcpy	#
	movq	-136(%rbp), %rax	# cxt, tmp713
	movq	168(%rax), %rdx	# cxt_17(D)->membuf.aptr, D.22067
	movl	-112(%rbp), %eax	# len, len.257
	cltq
	addq	%rax, %rdx	# D.22074, D.22067
	movq	-136(%rbp), %rax	# cxt, tmp714
	movq	%rdx, 168(%rax)	# D.22067, cxt_17(D)->membuf.aptr
.LBE134:
	jmp	.L429	#
.L445:
	.loc 1 2575 0 discriminator 2
	movl	-112(%rbp), %eax	# len, len.258
	movslq	%eax, %rbx	# len.258, D.22066
	movq	-24(%rbp), %rax	# text, tmp716
	movl	12(%rax), %eax	# text_124->sv_flags, D.22065
	andl	$262144, %eax	#, D.22065
	testl	%eax, %eax	# D.22065
	je	.L449	#,
	.loc 1 2575 0 discriminator 1
	movq	-24(%rbp), %rax	# text, tmp717
	movq	(%rax), %rax	# text_124->sv_any, D.22069
	movq	(%rax), %rax	# MEM[(struct XPV *)_481].xpv_pv, iftmp.259
	jmp	.L450	#
.L449:
	.loc 1 2575 0 discriminator 2
	movq	-24(%rbp), %rax	# text, tmp718
	movq	%rax, %rdi	# tmp718,
	call	Perl_sv_2pv_nolen	#
.L450:
	.loc 1 2575 0 discriminator 3
	movq	-136(%rbp), %rdx	# cxt, tmp719
	movq	216(%rdx), %rcx	# cxt_17(D)->fio, D.22075
	movq	%rbx, %rdx	# D.22066,
	movq	%rax, %rsi	# iftmp.259,
	movq	%rcx, %rdi	# D.22075,
	call	Perl_PerlIO_write	#
	movl	-112(%rbp), %edx	# len, len.260
	movslq	%edx, %rdx	# len.260, D.22070
	cmpq	%rdx, %rax	# D.22070, D.22070
	je	.L429	#,
	.loc 1 2575 0 discriminator 1
	movl	$-1, %eax	#, D.22063
	jmp	.L452	#
.L429:
	.loc 1 2577 0 is_stmt 1
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.261
	movl	PL_tmps_floor(%rip), %eax	# PL_tmps_floor, PL_tmps_floor.262
	cmpl	%eax, %edx	# PL_tmps_floor.262, PL_tmps_ix.261
	jle	.L451	#,
	.loc 1 2577 0 is_stmt 0 discriminator 1
	call	Perl_free_tmps	#
.L451:
	.loc 1 2578 0 is_stmt 1
	call	Perl_pop_scope	#
	.loc 1 2582 0
	movl	$0, %eax	#, D.22063
.L452:
	.loc 1 2584 0
	addq	$144, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	store_code, .-store_code
	.section	.rodata
.LC13:
	.string	"array"
.LC14:
	.string	"scalar"
.LC15:
	.string	"hash"
	.align 8
.LC16:
	.string	"No magic '%c' found while storing tied %s"
	.text
	.type	store_tied, @function
store_tied:
.LFB26:
	.loc 1 2595 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# cxt, cxt
	movq	%rsi, -80(%rbp)	# sv, sv
	.loc 1 2597 0
	movq	$0, -16(%rbp)	#, obj
	.loc 1 2598 0
	movl	$0, -48(%rbp)	#, ret
	.loc 1 2599 0
	movq	-80(%rbp), %rax	# sv, tmp156
	movl	12(%rax), %eax	# sv_8(D)->sv_flags, D.22085
	andl	$255, %eax	#, tmp157
	movl	%eax, -44(%rbp)	# tmp157, svt
	.loc 1 2600 0
	movb	$80, -49(%rbp)	#, mtype
	.loc 1 2614 0
	cmpl	$11, -44(%rbp)	#, svt
	jne	.L454	#,
	.loc 1 2616 0
	movq	-72(%rbp), %rax	# cxt, tmp158
	movq	216(%rax), %rax	# cxt_13(D)->fio, D.22086
	testq	%rax, %rax	# D.22086
	jne	.L455	#,
	.loc 1 2616 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# cxt, tmp159
	movq	168(%rax), %rdx	# cxt_13(D)->membuf.aptr, D.22087
	movq	-72(%rbp), %rax	# cxt, tmp160
	movq	176(%rax), %rax	# cxt_13(D)->membuf.aend, D.22087
	cmpq	%rax, %rdx	# D.22087, D.22087
	jae	.L456	#,
	movq	-72(%rbp), %rax	# cxt, tmp161
	movq	168(%rax), %rax	# cxt_13(D)->membuf.aptr, D.22087
	leaq	1(%rax), %rcx	#, D.22087
	movq	-72(%rbp), %rdx	# cxt, tmp162
	movq	%rcx, 168(%rdx)	# D.22087, cxt_13(D)->membuf.aptr
	movb	$12, (%rax)	#, *_18
	jmp	.L458	#
.L456:
.LBB136:
	.loc 1 2616 0 discriminator 2
	movq	-72(%rbp), %rax	# cxt, tmp163
	movq	160(%rax), %rax	# cxt_13(D)->membuf.asiz, D.22088
	addl	$8192, %eax	#, D.22089
	andl	$-8192, %eax	#, tmp164
	movl	%eax, -40(%rbp)	# tmp164, nsz
	movq	-72(%rbp), %rax	# cxt, tmp165
	movq	168(%rax), %rax	# cxt_13(D)->membuf.aptr, D.22087
	movq	%rax, %rdx	# D.22087, D.22090
	movq	-72(%rbp), %rax	# cxt, tmp166
	movq	152(%rax), %rax	# cxt_13(D)->membuf.arena, D.22087
	subq	%rax, %rdx	# D.22090, D.22090
	movq	%rdx, %rax	# D.22090, D.22090
	movl	%eax, -36(%rbp)	# D.22090, offset
	movl	-40(%rbp), %eax	# nsz, tmp167
	movslq	%eax, %rdx	# tmp167, D.22088
	movq	-72(%rbp), %rax	# cxt, tmp168
	movq	152(%rax), %rax	# cxt_13(D)->membuf.arena, D.22087
	movq	%rdx, %rsi	# D.22088,
	movq	%rax, %rdi	# D.22087,
	call	Perl_safesysrealloc	#
	movq	-72(%rbp), %rdx	# cxt, tmp169
	movq	%rax, 152(%rdx)	# D.22091, cxt_13(D)->membuf.arena
	movl	-40(%rbp), %eax	# nsz, tmp170
	movslq	%eax, %rdx	# tmp170, D.22088
	movq	-72(%rbp), %rax	# cxt, tmp171
	movq	%rdx, 160(%rax)	# D.22088, cxt_13(D)->membuf.asiz
	movq	-72(%rbp), %rax	# cxt, tmp172
	movq	152(%rax), %rdx	# cxt_13(D)->membuf.arena, D.22087
	movl	-36(%rbp), %eax	# offset, tmp173
	cltq
	addq	%rax, %rdx	# D.22092, D.22087
	movq	-72(%rbp), %rax	# cxt, tmp174
	movq	%rdx, 168(%rax)	# D.22087, cxt_13(D)->membuf.aptr
	movq	-72(%rbp), %rax	# cxt, tmp175
	movq	152(%rax), %rdx	# cxt_13(D)->membuf.arena, D.22087
	movl	-40(%rbp), %eax	# nsz, tmp176
	cltq
	addq	%rax, %rdx	# D.22092, D.22087
	movq	-72(%rbp), %rax	# cxt, tmp177
	movq	%rdx, 176(%rax)	# D.22087, cxt_13(D)->membuf.aend
.LBE136:
	movq	-72(%rbp), %rax	# cxt, tmp179
	movq	168(%rax), %rax	# cxt_13(D)->membuf.aptr, D.22087
	leaq	1(%rax), %rcx	#, D.22087
	movq	-72(%rbp), %rdx	# cxt, tmp180
	movq	%rcx, 168(%rdx)	# D.22087, cxt_13(D)->membuf.aptr
	movb	$12, (%rax)	#, *_43
	jmp	.L458	#
.L455:
	movq	-72(%rbp), %rax	# cxt, tmp181
	movq	216(%rax), %rax	# cxt_13(D)->fio, D.22086
	movl	$12, %esi	#,
	movq	%rax, %rdi	# D.22086,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22084
	jne	.L458	#,
	.loc 1 2616 0 discriminator 1
	movl	$-1, %eax	#, D.22084
	jmp	.L459	#
.L454:
	.loc 1 2617 0 is_stmt 1
	cmpl	$10, -44(%rbp)	#, svt
	jne	.L460	#,
	.loc 1 2619 0
	movq	-72(%rbp), %rax	# cxt, tmp182
	movq	216(%rax), %rax	# cxt_13(D)->fio, D.22086
	testq	%rax, %rax	# D.22086
	jne	.L461	#,
	.loc 1 2619 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# cxt, tmp183
	movq	168(%rax), %rdx	# cxt_13(D)->membuf.aptr, D.22087
	movq	-72(%rbp), %rax	# cxt, tmp184
	movq	176(%rax), %rax	# cxt_13(D)->membuf.aend, D.22087
	cmpq	%rax, %rdx	# D.22087, D.22087
	jae	.L462	#,
	movq	-72(%rbp), %rax	# cxt, tmp185
	movq	168(%rax), %rax	# cxt_13(D)->membuf.aptr, D.22087
	leaq	1(%rax), %rcx	#, D.22087
	movq	-72(%rbp), %rdx	# cxt, tmp186
	movq	%rcx, 168(%rdx)	# D.22087, cxt_13(D)->membuf.aptr
	movb	$11, (%rax)	#, *_52
	jmp	.L458	#
.L462:
.LBB137:
	.loc 1 2619 0 discriminator 2
	movq	-72(%rbp), %rax	# cxt, tmp187
	movq	160(%rax), %rax	# cxt_13(D)->membuf.asiz, D.22088
	addl	$8192, %eax	#, D.22089
	andl	$-8192, %eax	#, tmp188
	movl	%eax, -32(%rbp)	# tmp188, nsz
	movq	-72(%rbp), %rax	# cxt, tmp189
	movq	168(%rax), %rax	# cxt_13(D)->membuf.aptr, D.22087
	movq	%rax, %rdx	# D.22087, D.22090
	movq	-72(%rbp), %rax	# cxt, tmp190
	movq	152(%rax), %rax	# cxt_13(D)->membuf.arena, D.22087
	subq	%rax, %rdx	# D.22090, D.22090
	movq	%rdx, %rax	# D.22090, D.22090
	movl	%eax, -28(%rbp)	# D.22090, offset
	movl	-32(%rbp), %eax	# nsz, tmp191
	movslq	%eax, %rdx	# tmp191, D.22088
	movq	-72(%rbp), %rax	# cxt, tmp192
	movq	152(%rax), %rax	# cxt_13(D)->membuf.arena, D.22087
	movq	%rdx, %rsi	# D.22088,
	movq	%rax, %rdi	# D.22087,
	call	Perl_safesysrealloc	#
	movq	-72(%rbp), %rdx	# cxt, tmp193
	movq	%rax, 152(%rdx)	# D.22091, cxt_13(D)->membuf.arena
	movl	-32(%rbp), %eax	# nsz, tmp194
	movslq	%eax, %rdx	# tmp194, D.22088
	movq	-72(%rbp), %rax	# cxt, tmp195
	movq	%rdx, 160(%rax)	# D.22088, cxt_13(D)->membuf.asiz
	movq	-72(%rbp), %rax	# cxt, tmp196
	movq	152(%rax), %rdx	# cxt_13(D)->membuf.arena, D.22087
	movl	-28(%rbp), %eax	# offset, tmp197
	cltq
	addq	%rax, %rdx	# D.22092, D.22087
	movq	-72(%rbp), %rax	# cxt, tmp198
	movq	%rdx, 168(%rax)	# D.22087, cxt_13(D)->membuf.aptr
	movq	-72(%rbp), %rax	# cxt, tmp199
	movq	152(%rax), %rdx	# cxt_13(D)->membuf.arena, D.22087
	movl	-32(%rbp), %eax	# nsz, tmp200
	cltq
	addq	%rax, %rdx	# D.22092, D.22087
	movq	-72(%rbp), %rax	# cxt, tmp201
	movq	%rdx, 176(%rax)	# D.22087, cxt_13(D)->membuf.aend
.LBE137:
	movq	-72(%rbp), %rax	# cxt, tmp203
	movq	168(%rax), %rax	# cxt_13(D)->membuf.aptr, D.22087
	leaq	1(%rax), %rcx	#, D.22087
	movq	-72(%rbp), %rdx	# cxt, tmp204
	movq	%rcx, 168(%rdx)	# D.22087, cxt_13(D)->membuf.aptr
	movb	$11, (%rax)	#, *_77
	jmp	.L458	#
.L461:
	movq	-72(%rbp), %rax	# cxt, tmp205
	movq	216(%rax), %rax	# cxt_13(D)->fio, D.22086
	movl	$11, %esi	#,
	movq	%rax, %rdi	# D.22086,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22084
	jne	.L458	#,
	.loc 1 2619 0 discriminator 1
	movl	$-1, %eax	#, D.22084
	jmp	.L459	#
.L460:
	.loc 1 2622 0 is_stmt 1
	movq	-72(%rbp), %rax	# cxt, tmp206
	movq	216(%rax), %rax	# cxt_13(D)->fio, D.22086
	testq	%rax, %rax	# D.22086
	jne	.L464	#,
	.loc 1 2622 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# cxt, tmp207
	movq	168(%rax), %rdx	# cxt_13(D)->membuf.aptr, D.22087
	movq	-72(%rbp), %rax	# cxt, tmp208
	movq	176(%rax), %rax	# cxt_13(D)->membuf.aend, D.22087
	cmpq	%rax, %rdx	# D.22087, D.22087
	jae	.L465	#,
	movq	-72(%rbp), %rax	# cxt, tmp209
	movq	168(%rax), %rax	# cxt_13(D)->membuf.aptr, D.22087
	leaq	1(%rax), %rcx	#, D.22087
	movq	-72(%rbp), %rdx	# cxt, tmp210
	movq	%rcx, 168(%rdx)	# D.22087, cxt_13(D)->membuf.aptr
	movb	$13, (%rax)	#, *_86
	jmp	.L467	#
.L465:
.LBB138:
	.loc 1 2622 0 discriminator 2
	movq	-72(%rbp), %rax	# cxt, tmp211
	movq	160(%rax), %rax	# cxt_13(D)->membuf.asiz, D.22088
	addl	$8192, %eax	#, D.22089
	andl	$-8192, %eax	#, tmp212
	movl	%eax, -24(%rbp)	# tmp212, nsz
	movq	-72(%rbp), %rax	# cxt, tmp213
	movq	168(%rax), %rax	# cxt_13(D)->membuf.aptr, D.22087
	movq	%rax, %rdx	# D.22087, D.22090
	movq	-72(%rbp), %rax	# cxt, tmp214
	movq	152(%rax), %rax	# cxt_13(D)->membuf.arena, D.22087
	subq	%rax, %rdx	# D.22090, D.22090
	movq	%rdx, %rax	# D.22090, D.22090
	movl	%eax, -20(%rbp)	# D.22090, offset
	movl	-24(%rbp), %eax	# nsz, tmp215
	movslq	%eax, %rdx	# tmp215, D.22088
	movq	-72(%rbp), %rax	# cxt, tmp216
	movq	152(%rax), %rax	# cxt_13(D)->membuf.arena, D.22087
	movq	%rdx, %rsi	# D.22088,
	movq	%rax, %rdi	# D.22087,
	call	Perl_safesysrealloc	#
	movq	-72(%rbp), %rdx	# cxt, tmp217
	movq	%rax, 152(%rdx)	# D.22091, cxt_13(D)->membuf.arena
	movl	-24(%rbp), %eax	# nsz, tmp218
	movslq	%eax, %rdx	# tmp218, D.22088
	movq	-72(%rbp), %rax	# cxt, tmp219
	movq	%rdx, 160(%rax)	# D.22088, cxt_13(D)->membuf.asiz
	movq	-72(%rbp), %rax	# cxt, tmp220
	movq	152(%rax), %rdx	# cxt_13(D)->membuf.arena, D.22087
	movl	-20(%rbp), %eax	# offset, tmp221
	cltq
	addq	%rax, %rdx	# D.22092, D.22087
	movq	-72(%rbp), %rax	# cxt, tmp222
	movq	%rdx, 168(%rax)	# D.22087, cxt_13(D)->membuf.aptr
	movq	-72(%rbp), %rax	# cxt, tmp223
	movq	152(%rax), %rdx	# cxt_13(D)->membuf.arena, D.22087
	movl	-24(%rbp), %eax	# nsz, tmp224
	cltq
	addq	%rax, %rdx	# D.22092, D.22087
	movq	-72(%rbp), %rax	# cxt, tmp225
	movq	%rdx, 176(%rax)	# D.22087, cxt_13(D)->membuf.aend
.LBE138:
	movq	-72(%rbp), %rax	# cxt, tmp227
	movq	168(%rax), %rax	# cxt_13(D)->membuf.aptr, D.22087
	leaq	1(%rax), %rcx	#, D.22087
	movq	-72(%rbp), %rdx	# cxt, tmp228
	movq	%rcx, 168(%rdx)	# D.22087, cxt_13(D)->membuf.aptr
	movb	$13, (%rax)	#, *_111
	jmp	.L467	#
.L464:
	movq	-72(%rbp), %rax	# cxt, tmp229
	movq	216(%rax), %rax	# cxt_13(D)->fio, D.22086
	movl	$13, %esi	#,
	movq	%rax, %rdi	# D.22086,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22084
	jne	.L467	#,
	.loc 1 2622 0 discriminator 1
	movl	$-1, %eax	#, D.22084
	jmp	.L459	#
.L467:
	.loc 1 2623 0 is_stmt 1
	movb	$113, -49(%rbp)	#, mtype
.L458:
	.loc 1 2626 0
	movsbl	-49(%rbp), %edx	# mtype, D.22084
	movq	-80(%rbp), %rax	# sv, tmp230
	movl	%edx, %esi	# D.22084,
	movq	%rax, %rdi	# tmp230,
	call	Perl_mg_find	#
	movq	%rax, -8(%rbp)	# tmp231, mg
	cmpq	$0, -8(%rbp)	#, mg
	jne	.L468	#,
.LBB139:
	.loc 1 2627 0
	movq	-72(%rbp), %rax	# cxt, tmp232
	movl	$1, 112(%rax)	#, cxt_13(D)->s_dirty
	cmpl	$11, -44(%rbp)	#, svt
	je	.L469	#,
	.loc 1 2627 0 is_stmt 0 discriminator 1
	cmpl	$10, -44(%rbp)	#, svt
	jne	.L470	#,
	movl	$.LC13, %eax	#, iftmp.264
	jmp	.L472	#
.L470:
	.loc 1 2627 0 discriminator 2
	movl	$.LC14, %eax	#, iftmp.264
	jmp	.L472	#
.L469:
	movl	$.LC15, %eax	#, iftmp.263
.L472:
	.loc 1 2627 0 discriminator 3
	movsbl	-49(%rbp), %ecx	# mtype, D.22084
	movq	%rax, %rdx	# iftmp.263,
	movl	%ecx, %esi	# D.22084,
	movl	$.LC16, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L468:
.LBE139:
	.loc 1 2644 0 is_stmt 1
	movq	-8(%rbp), %rax	# mg, tmp233
	movq	24(%rax), %rax	# mg_118->mg_obj, D.22093
	testq	%rax, %rax	# D.22093
	je	.L473	#,
	.loc 1 2644 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# mg, tmp234
	movq	24(%rax), %rax	# mg_118->mg_obj, iftmp.265
	jmp	.L474	#
.L473:
	.loc 1 2644 0 discriminator 2
	movl	$0, %edi	#,
	call	Perl_newSV	#
.L474:
	.loc 1 2644 0 discriminator 3
	movq	%rax, -16(%rbp)	# iftmp.265, obj
	.loc 1 2645 0 is_stmt 1 discriminator 3
	movq	-16(%rbp), %rdx	# obj, tmp235
	movq	-72(%rbp), %rax	# cxt, tmp236
	movq	%rdx, %rsi	# tmp235,
	movq	%rax, %rdi	# tmp236,
	call	store	#
	movl	%eax, -48(%rbp)	# tmp237, ret
	cmpl	$0, -48(%rbp)	#, ret
	je	.L475	#,
	.loc 1 2646 0
	movl	-48(%rbp), %eax	# ret, D.22084
	jmp	.L459	#
.L475:
	.loc 1 2650 0
	movl	$0, %eax	#, D.22084
.L459:
	.loc 1 2651 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	store_tied, .-store_tied
	.section	.rodata
	.align 8
.LC17:
	.string	"No magic 'p' found while storing reference to tied item"
	.text
	.type	store_tied_item, @function
store_tied_item:
.LFB27:
	.loc 1 2666 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# cxt, cxt
	movq	%rsi, -80(%rbp)	# sv, sv
	.loc 1 2672 0
	movq	-80(%rbp), %rax	# sv, tmp205
	movl	$112, %esi	#,
	movq	%rax, %rdi	# tmp205,
	call	Perl_mg_find	#
	movq	%rax, -8(%rbp)	# tmp206, mg
	cmpq	$0, -8(%rbp)	#, mg
	jne	.L477	#,
.LBB140:
	.loc 1 2673 0
	movq	-72(%rbp), %rax	# cxt, tmp207
	movl	$1, 112(%rax)	#, cxt_5(D)->s_dirty
	movl	$.LC17, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L477:
.LBE140:
	.loc 1 2679 0
	movq	-8(%rbp), %rax	# mg, tmp208
	movq	32(%rax), %rax	# mg_4->mg_ptr, D.22099
	testq	%rax, %rax	# D.22099
	je	.L478	#,
	.loc 1 2681 0
	movq	-72(%rbp), %rax	# cxt, tmp209
	movq	216(%rax), %rax	# cxt_5(D)->fio, D.22100
	testq	%rax, %rax	# D.22100
	jne	.L479	#,
	.loc 1 2681 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# cxt, tmp210
	movq	168(%rax), %rdx	# cxt_5(D)->membuf.aptr, D.22099
	movq	-72(%rbp), %rax	# cxt, tmp211
	movq	176(%rax), %rax	# cxt_5(D)->membuf.aend, D.22099
	cmpq	%rax, %rdx	# D.22099, D.22099
	jae	.L480	#,
	movq	-72(%rbp), %rax	# cxt, tmp212
	movq	168(%rax), %rax	# cxt_5(D)->membuf.aptr, D.22099
	leaq	1(%rax), %rcx	#, D.22099
	movq	-72(%rbp), %rdx	# cxt, tmp213
	movq	%rcx, 168(%rdx)	# D.22099, cxt_5(D)->membuf.aptr
	movb	$21, (%rax)	#, *_11
	jmp	.L482	#
.L480:
.LBB141:
	.loc 1 2681 0 discriminator 2
	movq	-72(%rbp), %rax	# cxt, tmp214
	movq	160(%rax), %rax	# cxt_5(D)->membuf.asiz, D.22101
	addl	$8192, %eax	#, D.22102
	andl	$-8192, %eax	#, tmp215
	movl	%eax, -44(%rbp)	# tmp215, nsz
	movq	-72(%rbp), %rax	# cxt, tmp216
	movq	168(%rax), %rax	# cxt_5(D)->membuf.aptr, D.22099
	movq	%rax, %rdx	# D.22099, D.22103
	movq	-72(%rbp), %rax	# cxt, tmp217
	movq	152(%rax), %rax	# cxt_5(D)->membuf.arena, D.22099
	subq	%rax, %rdx	# D.22103, D.22103
	movq	%rdx, %rax	# D.22103, D.22103
	movl	%eax, -40(%rbp)	# D.22103, offset
	movl	-44(%rbp), %eax	# nsz, tmp218
	movslq	%eax, %rdx	# tmp218, D.22101
	movq	-72(%rbp), %rax	# cxt, tmp219
	movq	152(%rax), %rax	# cxt_5(D)->membuf.arena, D.22099
	movq	%rdx, %rsi	# D.22101,
	movq	%rax, %rdi	# D.22099,
	call	Perl_safesysrealloc	#
	movq	-72(%rbp), %rdx	# cxt, tmp220
	movq	%rax, 152(%rdx)	# D.22104, cxt_5(D)->membuf.arena
	movl	-44(%rbp), %eax	# nsz, tmp221
	movslq	%eax, %rdx	# tmp221, D.22101
	movq	-72(%rbp), %rax	# cxt, tmp222
	movq	%rdx, 160(%rax)	# D.22101, cxt_5(D)->membuf.asiz
	movq	-72(%rbp), %rax	# cxt, tmp223
	movq	152(%rax), %rdx	# cxt_5(D)->membuf.arena, D.22099
	movl	-40(%rbp), %eax	# offset, tmp224
	cltq
	addq	%rax, %rdx	# D.22105, D.22099
	movq	-72(%rbp), %rax	# cxt, tmp225
	movq	%rdx, 168(%rax)	# D.22099, cxt_5(D)->membuf.aptr
	movq	-72(%rbp), %rax	# cxt, tmp226
	movq	152(%rax), %rdx	# cxt_5(D)->membuf.arena, D.22099
	movl	-44(%rbp), %eax	# nsz, tmp227
	cltq
	addq	%rax, %rdx	# D.22105, D.22099
	movq	-72(%rbp), %rax	# cxt, tmp228
	movq	%rdx, 176(%rax)	# D.22099, cxt_5(D)->membuf.aend
.LBE141:
	movq	-72(%rbp), %rax	# cxt, tmp230
	movq	168(%rax), %rax	# cxt_5(D)->membuf.aptr, D.22099
	leaq	1(%rax), %rcx	#, D.22099
	movq	-72(%rbp), %rdx	# cxt, tmp231
	movq	%rcx, 168(%rdx)	# D.22099, cxt_5(D)->membuf.aptr
	movb	$21, (%rax)	#, *_36
	jmp	.L482	#
.L479:
	movq	-72(%rbp), %rax	# cxt, tmp232
	movq	216(%rax), %rax	# cxt_5(D)->fio, D.22100
	movl	$21, %esi	#,
	movq	%rax, %rdi	# D.22100,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22098
	jne	.L482	#,
	.loc 1 2681 0 discriminator 1
	movl	$-1, %eax	#, D.22098
	jmp	.L483	#
.L482:
	.loc 1 2684 0 is_stmt 1
	movq	-8(%rbp), %rax	# mg, tmp233
	movq	24(%rax), %rdx	# mg_4->mg_obj, D.22106
	movq	-72(%rbp), %rax	# cxt, tmp234
	movq	%rdx, %rsi	# D.22106,
	movq	%rax, %rdi	# tmp234,
	call	store	#
	movl	%eax, -36(%rbp)	# tmp235, ret
	cmpl	$0, -36(%rbp)	#, ret
	je	.L484	#,
	.loc 1 2685 0
	movl	-36(%rbp), %eax	# ret, D.22098
	jmp	.L483	#
.L484:
	.loc 1 2689 0
	movq	-8(%rbp), %rax	# mg, tmp236
	movq	32(%rax), %rdx	# mg_4->mg_ptr, D.22099
	movq	-72(%rbp), %rax	# cxt, tmp237
	movq	%rdx, %rsi	# D.22099,
	movq	%rax, %rdi	# tmp237,
	call	store	#
	movl	%eax, -36(%rbp)	# tmp238, ret
	cmpl	$0, -36(%rbp)	#, ret
	je	.L485	#,
	.loc 1 2690 0
	movl	-36(%rbp), %eax	# ret, D.22098
	jmp	.L483	#
.L478:
.LBB142:
	.loc 1 2692 0
	movq	-8(%rbp), %rax	# mg, tmp239
	movl	40(%rax), %eax	# mg_4->mg_len, idx.266
	movl	%eax, -52(%rbp)	# idx.266, idx
	.loc 1 2695 0
	movq	-72(%rbp), %rax	# cxt, tmp240
	movq	216(%rax), %rax	# cxt_5(D)->fio, D.22100
	testq	%rax, %rax	# D.22100
	jne	.L486	#,
	.loc 1 2695 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# cxt, tmp241
	movq	168(%rax), %rdx	# cxt_5(D)->membuf.aptr, D.22099
	movq	-72(%rbp), %rax	# cxt, tmp242
	movq	176(%rax), %rax	# cxt_5(D)->membuf.aend, D.22099
	cmpq	%rax, %rdx	# D.22099, D.22099
	jae	.L487	#,
	movq	-72(%rbp), %rax	# cxt, tmp243
	movq	168(%rax), %rax	# cxt_5(D)->membuf.aptr, D.22099
	leaq	1(%rax), %rcx	#, D.22099
	movq	-72(%rbp), %rdx	# cxt, tmp244
	movq	%rcx, 168(%rdx)	# D.22099, cxt_5(D)->membuf.aptr
	movb	$22, (%rax)	#, *_52
	jmp	.L489	#
.L487:
.LBB143:
	.loc 1 2695 0 discriminator 2
	movq	-72(%rbp), %rax	# cxt, tmp245
	movq	160(%rax), %rax	# cxt_5(D)->membuf.asiz, D.22101
	addl	$8192, %eax	#, D.22102
	andl	$-8192, %eax	#, tmp246
	movl	%eax, -32(%rbp)	# tmp246, nsz
	movq	-72(%rbp), %rax	# cxt, tmp247
	movq	168(%rax), %rax	# cxt_5(D)->membuf.aptr, D.22099
	movq	%rax, %rdx	# D.22099, D.22103
	movq	-72(%rbp), %rax	# cxt, tmp248
	movq	152(%rax), %rax	# cxt_5(D)->membuf.arena, D.22099
	subq	%rax, %rdx	# D.22103, D.22103
	movq	%rdx, %rax	# D.22103, D.22103
	movl	%eax, -28(%rbp)	# D.22103, offset
	movl	-32(%rbp), %eax	# nsz, tmp249
	movslq	%eax, %rdx	# tmp249, D.22101
	movq	-72(%rbp), %rax	# cxt, tmp250
	movq	152(%rax), %rax	# cxt_5(D)->membuf.arena, D.22099
	movq	%rdx, %rsi	# D.22101,
	movq	%rax, %rdi	# D.22099,
	call	Perl_safesysrealloc	#
	movq	-72(%rbp), %rdx	# cxt, tmp251
	movq	%rax, 152(%rdx)	# D.22104, cxt_5(D)->membuf.arena
	movl	-32(%rbp), %eax	# nsz, tmp252
	movslq	%eax, %rdx	# tmp252, D.22101
	movq	-72(%rbp), %rax	# cxt, tmp253
	movq	%rdx, 160(%rax)	# D.22101, cxt_5(D)->membuf.asiz
	movq	-72(%rbp), %rax	# cxt, tmp254
	movq	152(%rax), %rdx	# cxt_5(D)->membuf.arena, D.22099
	movl	-28(%rbp), %eax	# offset, tmp255
	cltq
	addq	%rax, %rdx	# D.22105, D.22099
	movq	-72(%rbp), %rax	# cxt, tmp256
	movq	%rdx, 168(%rax)	# D.22099, cxt_5(D)->membuf.aptr
	movq	-72(%rbp), %rax	# cxt, tmp257
	movq	152(%rax), %rdx	# cxt_5(D)->membuf.arena, D.22099
	movl	-32(%rbp), %eax	# nsz, tmp258
	cltq
	addq	%rax, %rdx	# D.22105, D.22099
	movq	-72(%rbp), %rax	# cxt, tmp259
	movq	%rdx, 176(%rax)	# D.22099, cxt_5(D)->membuf.aend
.LBE143:
	movq	-72(%rbp), %rax	# cxt, tmp261
	movq	168(%rax), %rax	# cxt_5(D)->membuf.aptr, D.22099
	leaq	1(%rax), %rcx	#, D.22099
	movq	-72(%rbp), %rdx	# cxt, tmp262
	movq	%rcx, 168(%rdx)	# D.22099, cxt_5(D)->membuf.aptr
	movb	$22, (%rax)	#, *_77
	jmp	.L489	#
.L486:
	movq	-72(%rbp), %rax	# cxt, tmp263
	movq	216(%rax), %rax	# cxt_5(D)->fio, D.22100
	movl	$22, %esi	#,
	movq	%rax, %rdi	# D.22100,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22098
	jne	.L489	#,
	.loc 1 2695 0 discriminator 1
	movl	$-1, %eax	#, D.22098
	jmp	.L483	#
.L489:
	.loc 1 2698 0 is_stmt 1
	movq	-8(%rbp), %rax	# mg, tmp264
	movq	24(%rax), %rdx	# mg_4->mg_obj, D.22106
	movq	-72(%rbp), %rax	# cxt, tmp265
	movq	%rdx, %rsi	# D.22106,
	movq	%rax, %rdi	# tmp265,
	call	store	#
	movl	%eax, -36(%rbp)	# tmp266, ret
	cmpl	$0, -36(%rbp)	#, ret
	je	.L491	#,
	.loc 1 2699 0
	movl	-36(%rbp), %eax	# ret, D.22098
	jmp	.L483	#
.L491:
	.loc 1 2703 0
	movq	-72(%rbp), %rax	# cxt, tmp267
	movl	80(%rax), %eax	# cxt_5(D)->netorder, D.22098
	testl	%eax, %eax	# D.22098
	je	.L492	#,
.LBB144:
	.loc 1 2703 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# idx, idx.267
	cltq
	movq	%rax, %rdi	# D.22103,
	call	Perl_my_htonl	#
	movl	%eax, -48(%rbp)	# y.268, y
	movq	-72(%rbp), %rax	# cxt, tmp268
	movq	216(%rax), %rax	# cxt_5(D)->fio, D.22100
	testq	%rax, %rax	# D.22100
	jne	.L493	#,
.LBB145:
	movq	-72(%rbp), %rax	# cxt, tmp269
	movq	168(%rax), %rax	# cxt_5(D)->membuf.aptr, D.22099
	leaq	4(%rax), %rdx	#, D.22099
	movq	-72(%rbp), %rax	# cxt, tmp270
	movq	176(%rax), %rax	# cxt_5(D)->membuf.aend, D.22099
	cmpq	%rax, %rdx	# D.22099, D.22099
	jbe	.L494	#,
.LBB146:
	movq	-72(%rbp), %rax	# cxt, tmp271
	movq	160(%rax), %rax	# cxt_5(D)->membuf.asiz, D.22101
	addl	$8195, %eax	#, D.22102
	andl	$-8192, %eax	#, tmp272
	movl	%eax, -24(%rbp)	# tmp272, nsz
	movq	-72(%rbp), %rax	# cxt, tmp273
	movq	168(%rax), %rax	# cxt_5(D)->membuf.aptr, D.22099
	movq	%rax, %rdx	# D.22099, D.22103
	movq	-72(%rbp), %rax	# cxt, tmp274
	movq	152(%rax), %rax	# cxt_5(D)->membuf.arena, D.22099
	subq	%rax, %rdx	# D.22103, D.22103
	movq	%rdx, %rax	# D.22103, D.22103
	movl	%eax, -20(%rbp)	# D.22103, offset
	movl	-24(%rbp), %eax	# nsz, tmp275
	movslq	%eax, %rdx	# tmp275, D.22101
	movq	-72(%rbp), %rax	# cxt, tmp276
	movq	152(%rax), %rax	# cxt_5(D)->membuf.arena, D.22099
	movq	%rdx, %rsi	# D.22101,
	movq	%rax, %rdi	# D.22099,
	call	Perl_safesysrealloc	#
	movq	-72(%rbp), %rdx	# cxt, tmp277
	movq	%rax, 152(%rdx)	# D.22104, cxt_5(D)->membuf.arena
	movl	-24(%rbp), %eax	# nsz, tmp278
	movslq	%eax, %rdx	# tmp278, D.22101
	movq	-72(%rbp), %rax	# cxt, tmp279
	movq	%rdx, 160(%rax)	# D.22101, cxt_5(D)->membuf.asiz
	movq	-72(%rbp), %rax	# cxt, tmp280
	movq	152(%rax), %rdx	# cxt_5(D)->membuf.arena, D.22099
	movl	-20(%rbp), %eax	# offset, tmp281
	cltq
	addq	%rax, %rdx	# D.22105, D.22099
	movq	-72(%rbp), %rax	# cxt, tmp282
	movq	%rdx, 168(%rax)	# D.22099, cxt_5(D)->membuf.aptr
	movq	-72(%rbp), %rax	# cxt, tmp283
	movq	152(%rax), %rdx	# cxt_5(D)->membuf.arena, D.22099
	movl	-24(%rbp), %eax	# nsz, tmp284
	cltq
	addq	%rax, %rdx	# D.22105, D.22099
	movq	-72(%rbp), %rax	# cxt, tmp285
	movq	%rdx, 176(%rax)	# D.22099, cxt_5(D)->membuf.aend
.L494:
.LBE146:
	.loc 1 2703 0 discriminator 2
	movq	-72(%rbp), %rax	# cxt, tmp287
	movq	168(%rax), %rax	# cxt_5(D)->membuf.aptr, D.22099
	movq	%rax, %rdx	# D.22099, D.22101
	movq	-72(%rbp), %rax	# cxt, tmp288
	movq	168(%rax), %rax	# cxt_5(D)->membuf.aptr, D.22099
	andq	$-4, %rax	#, D.22101
	cmpq	%rax, %rdx	# D.22101, D.22101
	jne	.L495	#,
	.loc 1 2703 0 discriminator 1
	movq	-72(%rbp), %rax	# cxt, tmp289
	movq	168(%rax), %rax	# cxt_5(D)->membuf.aptr, D.22099
	movl	-48(%rbp), %edx	# y, y.269
	movl	%edx, (%rax)	# y.269, MEM[(int *)_121]
	jmp	.L496	#
.L495:
	.loc 1 2703 0 discriminator 2
	movq	-72(%rbp), %rax	# cxt, tmp290
	movq	168(%rax), %rax	# cxt_5(D)->membuf.aptr, D.22099
	movl	-48(%rbp), %edx	# MEM[(char * {ref-all})&y], D.22098
	movl	%edx, (%rax)	# D.22098, MEM[(char * {ref-all})_123]
.L496:
	.loc 1 2703 0 discriminator 1
	movq	-72(%rbp), %rax	# cxt, tmp291
	movq	168(%rax), %rax	# cxt_5(D)->membuf.aptr, D.22099
	leaq	4(%rax), %rdx	#, D.22099
	movq	-72(%rbp), %rax	# cxt, tmp292
	movq	%rdx, 168(%rax)	# D.22099, cxt_5(D)->membuf.aptr
.LBE145:
	jmp	.L497	#
.L493:
	.loc 1 2703 0 discriminator 2
	movq	-72(%rbp), %rax	# cxt, tmp294
	movq	216(%rax), %rax	# cxt_5(D)->fio, D.22100
	leaq	-48(%rbp), %rcx	#, tmp295
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp295,
	movq	%rax, %rdi	# D.22100,
	call	Perl_PerlIO_write	#
	cmpq	$4, %rax	#, D.22103
	je	.L497	#,
	.loc 1 2703 0 discriminator 1
	movl	$-1, %eax	#, D.22098
.LBE144:
	.loc 1 2695 0 is_stmt 1 discriminator 1
	jmp	.L483	#
.L497:
	jmp	.L485	#
.L492:
	.loc 1 2703 0 discriminator 2
	movq	-72(%rbp), %rax	# cxt, tmp296
	movq	216(%rax), %rax	# cxt_5(D)->fio, D.22100
	testq	%rax, %rax	# D.22100
	jne	.L499	#,
.LBB147:
	.loc 1 2703 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# cxt, tmp297
	movq	168(%rax), %rax	# cxt_5(D)->membuf.aptr, D.22099
	leaq	4(%rax), %rdx	#, D.22099
	movq	-72(%rbp), %rax	# cxt, tmp298
	movq	176(%rax), %rax	# cxt_5(D)->membuf.aend, D.22099
	cmpq	%rax, %rdx	# D.22099, D.22099
	jbe	.L500	#,
.LBB148:
	movq	-72(%rbp), %rax	# cxt, tmp299
	movq	160(%rax), %rax	# cxt_5(D)->membuf.asiz, D.22101
	addl	$8195, %eax	#, D.22102
	andl	$-8192, %eax	#, tmp300
	movl	%eax, -16(%rbp)	# tmp300, nsz
	movq	-72(%rbp), %rax	# cxt, tmp301
	movq	168(%rax), %rax	# cxt_5(D)->membuf.aptr, D.22099
	movq	%rax, %rdx	# D.22099, D.22103
	movq	-72(%rbp), %rax	# cxt, tmp302
	movq	152(%rax), %rax	# cxt_5(D)->membuf.arena, D.22099
	subq	%rax, %rdx	# D.22103, D.22103
	movq	%rdx, %rax	# D.22103, D.22103
	movl	%eax, -12(%rbp)	# D.22103, offset
	movl	-16(%rbp), %eax	# nsz, tmp303
	movslq	%eax, %rdx	# tmp303, D.22101
	movq	-72(%rbp), %rax	# cxt, tmp304
	movq	152(%rax), %rax	# cxt_5(D)->membuf.arena, D.22099
	movq	%rdx, %rsi	# D.22101,
	movq	%rax, %rdi	# D.22099,
	call	Perl_safesysrealloc	#
	movq	-72(%rbp), %rdx	# cxt, tmp305
	movq	%rax, 152(%rdx)	# D.22104, cxt_5(D)->membuf.arena
	movl	-16(%rbp), %eax	# nsz, tmp306
	movslq	%eax, %rdx	# tmp306, D.22101
	movq	-72(%rbp), %rax	# cxt, tmp307
	movq	%rdx, 160(%rax)	# D.22101, cxt_5(D)->membuf.asiz
	movq	-72(%rbp), %rax	# cxt, tmp308
	movq	152(%rax), %rdx	# cxt_5(D)->membuf.arena, D.22099
	movl	-12(%rbp), %eax	# offset, tmp309
	cltq
	addq	%rax, %rdx	# D.22105, D.22099
	movq	-72(%rbp), %rax	# cxt, tmp310
	movq	%rdx, 168(%rax)	# D.22099, cxt_5(D)->membuf.aptr
	movq	-72(%rbp), %rax	# cxt, tmp311
	movq	152(%rax), %rdx	# cxt_5(D)->membuf.arena, D.22099
	movl	-16(%rbp), %eax	# nsz, tmp312
	cltq
	addq	%rax, %rdx	# D.22105, D.22099
	movq	-72(%rbp), %rax	# cxt, tmp313
	movq	%rdx, 176(%rax)	# D.22099, cxt_5(D)->membuf.aend
.L500:
.LBE148:
	.loc 1 2703 0 discriminator 2
	movq	-72(%rbp), %rax	# cxt, tmp315
	movq	168(%rax), %rax	# cxt_5(D)->membuf.aptr, D.22099
	movq	%rax, %rdx	# D.22099, D.22101
	movq	-72(%rbp), %rax	# cxt, tmp316
	movq	168(%rax), %rax	# cxt_5(D)->membuf.aptr, D.22099
	andq	$-4, %rax	#, D.22101
	cmpq	%rax, %rdx	# D.22101, D.22101
	jne	.L501	#,
	.loc 1 2703 0 discriminator 1
	movq	-72(%rbp), %rax	# cxt, tmp317
	movq	168(%rax), %rax	# cxt_5(D)->membuf.aptr, D.22099
	movl	-52(%rbp), %edx	# idx, idx.270
	movl	%edx, (%rax)	# idx.270, MEM[(int *)_162]
	jmp	.L502	#
.L501:
	.loc 1 2703 0 discriminator 2
	movq	-72(%rbp), %rax	# cxt, tmp318
	movq	168(%rax), %rax	# cxt_5(D)->membuf.aptr, D.22099
	movl	-52(%rbp), %edx	# MEM[(char * {ref-all})&idx], D.22098
	movl	%edx, (%rax)	# D.22098, MEM[(char * {ref-all})_164]
.L502:
	.loc 1 2703 0 discriminator 1
	movq	-72(%rbp), %rax	# cxt, tmp319
	movq	168(%rax), %rax	# cxt_5(D)->membuf.aptr, D.22099
	leaq	4(%rax), %rdx	#, D.22099
	movq	-72(%rbp), %rax	# cxt, tmp320
	movq	%rdx, 168(%rax)	# D.22099, cxt_5(D)->membuf.aptr
.LBE147:
	jmp	.L485	#
.L499:
	.loc 1 2703 0 discriminator 2
	movq	-72(%rbp), %rax	# cxt, tmp322
	movq	216(%rax), %rax	# cxt_5(D)->fio, D.22100
	leaq	-52(%rbp), %rcx	#, tmp323
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp323,
	movq	%rax, %rdi	# D.22100,
	call	Perl_PerlIO_write	#
	cmpq	$4, %rax	#, D.22103
	je	.L485	#,
	.loc 1 2703 0 discriminator 1
	movl	$-1, %eax	#, D.22098
	jmp	.L483	#
.L485:
.LBE142:
	.loc 1 2708 0 is_stmt 1
	movl	$0, %eax	#, D.22098
.L483:
	.loc 1 2709 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	store_tied_item, .-store_tied_item
	.section	.rodata
	.align 8
.LC18:
	.string	"Unexpected object type (%d) in store_hook()"
.LC19:
	.string	"cloning"
.LC20:
	.string	"storing"
	.align 8
.LC21:
	.string	"Too late to ignore hooks for %s class \"%s\""
.LC22:
	.string	"STORABLE_freeze"
	.align 8
.LC23:
	.string	"Item #%d returned by STORABLE_freeze for %s is not a reference"
	.align 8
.LC24:
	.string	"Could not serialize item #%d from hook in %s"
	.align 8
.LC25:
	.string	"No magic '%c' found while storing ref to tied %s with hook"
	.text
	.type	store_hook, @function
store_hook:
.LFB28:
	.loc 1 2763 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$368, %rsp	#,
	movq	%rdi, -328(%rbp)	# cxt, cxt
	movq	%rsi, -336(%rbp)	# sv, sv
	movl	%edx, -340(%rbp)	# type, type
	movq	%rcx, -352(%rbp)	# pkg, pkg
	movq	%r8, -360(%rbp)	# hook, hook
	.loc 1 2774 0
	movl	$0, -296(%rbp)	#, recursed
	.loc 1 2778 0
	movq	-328(%rbp), %rax	# cxt, tmp987
	movl	4(%rax), %eax	# cxt_26(D)->optype, D.22108
	andl	$4, %eax	#, tmp988
	movl	%eax, -288(%rbp)	# tmp988, clone
	.loc 1 2779 0
	movb	$0, -318(%rbp)	#, mtype
	.loc 1 2780 0
	movb	$0, -317(%rbp)	#, eflags
	.loc 1 2788 0
	movl	-340(%rbp), %eax	# type, type
	cmpl	$2, %eax	#, type
	je	.L505	#,
	cmpl	$2, %eax	#, type
	jg	.L506	#,
	cmpl	$1, %eax	#, type
	je	.L507	#,
	jmp	.L504	#
.L506:
	cmpl	$3, %eax	#, type
	je	.L508	#,
	cmpl	$4, %eax	#, type
	je	.L509	#,
	jmp	.L504	#
.L507:
	.loc 1 2790 0
	movl	$0, -292(%rbp)	#, obj_type
	.loc 1 2791 0
	jmp	.L510	#
.L505:
	.loc 1 2793 0
	movl	$1, -292(%rbp)	#, obj_type
	.loc 1 2794 0
	jmp	.L510	#
.L508:
	.loc 1 2796 0
	movl	$2, -292(%rbp)	#, obj_type
	.loc 1 2797 0
	jmp	.L510	#
.L509:
	.loc 1 2812 0
	movl	$3, -292(%rbp)	#, obj_type
	.loc 1 2813 0
	movq	-336(%rbp), %rax	# sv, tmp990
	movl	12(%rax), %eax	# sv_36(D)->sv_flags, D.22109
	movzbl	%al, %eax	# D.22109, D.22109
	cmpl	$10, %eax	#, D.22109
	je	.L512	#,
	cmpl	$11, %eax	#, D.22109
	jne	.L658	#,
	.loc 1 2815 0
	movb	$6, -317(%rbp)	#, eflags
	.loc 1 2816 0
	movb	$80, -318(%rbp)	#, mtype
	.loc 1 2817 0
	jmp	.L514	#
.L512:
	.loc 1 2819 0
	movb	$5, -317(%rbp)	#, eflags
	.loc 1 2820 0
	movb	$80, -318(%rbp)	#, mtype
	.loc 1 2821 0
	jmp	.L514	#
.L658:
	.loc 1 2823 0
	movb	$4, -317(%rbp)	#, eflags
	.loc 1 2824 0
	movb	$113, -318(%rbp)	#, mtype
	.loc 1 2825 0
	nop
.L514:
	.loc 1 2827 0
	jmp	.L510	#
.L504:
.LBB149:
	.loc 1 2829 0
	movq	-328(%rbp), %rax	# cxt, tmp991
	movl	$1, 112(%rax)	#, cxt_26(D)->s_dirty
	movl	-340(%rbp), %eax	# type, tmp992
	movl	%eax, %esi	# tmp992,
	movl	$.LC18, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L510:
.LBE149:
	.loc 1 2831 0
	movl	-292(%rbp), %eax	# obj_type, tmp993
	orl	$64, %eax	#, D.22110
	movb	%al, -319(%rbp)	# D.22110, flags
	.loc 1 2833 0
	movq	-352(%rbp), %rax	# pkg, tmp994
	movq	(%rax), %rax	# pkg_49(D)->sv_any, D.22111
	movq	80(%rax), %rax	# _50->xhv_name, tmp995
	movq	%rax, -64(%rbp)	# tmp995, class
	.loc 1 2834 0
	movq	-64(%rbp), %rax	# class, tmp996
	movq	%rax, %rdi	# tmp996,
	call	strlen	#
	movl	%eax, -312(%rbp)	# len.271, len
	.loc 1 2851 0
	movq	-336(%rbp), %rax	# sv, tmp997
	movq	%rax, %rdi	# tmp997,
	call	Perl_newRV_noinc	#
	movq	%rax, -56(%rbp)	# tmp998, Perl_ref
	.loc 1 2852 0
	movl	-288(%rbp), %edx	# clone, tmp999
	movq	-360(%rbp), %rcx	# hook, tmp1000
	movq	-56(%rbp), %rax	# Perl_ref, tmp1001
	movq	%rcx, %rsi	# tmp1000,
	movq	%rax, %rdi	# tmp1001,
	call	array_call	#
	movq	%rax, -48(%rbp)	# tmp1002, av
	.loc 1 2853 0
	movq	-56(%rbp), %rax	# Perl_ref, tmp1003
	movq	(%rax), %rax	# Perl_ref_54->sv_any, D.22113
	movq	$0, (%rax)	#, MEM[(struct XRV *)_57].xrv_rv
	.loc 1 2854 0
	movq	-56(%rbp), %rax	# Perl_ref, tmp1004
	movq	%rax, %rdi	# tmp1004,
	call	Perl_sv_free	#
	.loc 1 2856 0
	movq	-48(%rbp), %rax	# av, tmp1005
	movq	(%rax), %rax	# av_56->sv_any, D.22114
	movq	8(%rax), %rax	# _58->xav_fill, D.22115
	addl	$1, %eax	#, D.22116
	movl	%eax, -284(%rbp)	# D.22116, count
	.loc 1 2868 0
	cmpl	$0, -284(%rbp)	#, count
	jne	.L515	#,
	.loc 1 2873 0
	movl	-312(%rbp), %edx	# len, len.272
	movq	-328(%rbp), %rax	# cxt, tmp1006
	movq	40(%rax), %rax	# cxt_26(D)->hclass, D.22117
	movq	-64(%rbp), %rsi	# class, tmp1007
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.22117,
	call	Perl_hv_fetch	#
	testq	%rax, %rax	# D.22118
	je	.L516	#,
.LBB150:
	.loc 1 2874 0
	movq	-328(%rbp), %rax	# cxt, tmp1008
	movl	$1, 112(%rax)	#, cxt_26(D)->s_dirty
	movq	-328(%rbp), %rax	# cxt, tmp1009
	movl	4(%rax), %eax	# cxt_26(D)->optype, D.22108
	andl	$4, %eax	#, D.22108
	testl	%eax, %eax	# D.22108
	je	.L517	#,
	.loc 1 2874 0 is_stmt 0 discriminator 1
	movl	$.LC19, %eax	#, iftmp.273
	jmp	.L518	#
.L517:
	.loc 1 2874 0 discriminator 2
	movl	$.LC20, %eax	#, iftmp.273
.L518:
	.loc 1 2874 0 discriminator 3
	movq	-64(%rbp), %rdx	# class, tmp1010
	movq	%rax, %rsi	# iftmp.273,
	movl	$.LC21, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L516:
.LBE150:
	.loc 1 2877 0 is_stmt 1
	movq	-328(%rbp), %rax	# cxt, tmp1011
	movq	56(%rax), %rax	# cxt_26(D)->hook, D.22117
	movq	-352(%rbp), %rcx	# pkg, tmp1012
	movl	$.LC22, %edx	#,
	movq	%rcx, %rsi	# tmp1012,
	movq	%rax, %rdi	# D.22117,
	call	pkg_hide	#
	.loc 1 2882 0
	movq	-352(%rbp), %rcx	# pkg, tmp1013
	movl	-340(%rbp), %edx	# type, tmp1014
	movq	-336(%rbp), %rsi	# sv, tmp1015
	movq	-328(%rbp), %rax	# cxt, tmp1016
	movq	%rax, %rdi	# tmp1016,
	call	store_blessed	#
	jmp	.L657	#
.L515:
	.loc 1 2889 0
	movq	-48(%rbp), %rax	# av, tmp1017
	movq	(%rax), %rax	# av_56->sv_any, D.22114
	movq	(%rax), %rax	# _72->xav_array, tmp1018
	movq	%rax, -40(%rbp)	# tmp1018, ary
	.loc 1 2890 0
	movq	-40(%rbp), %rax	# ary, tmp1019
	movq	(%rax), %rax	# *ary_73, D.22119
	movl	12(%rax), %eax	# _74->sv_flags, D.22109
	andl	$262144, %eax	#, D.22109
	testl	%eax, %eax	# D.22109
	je	.L520	#,
	.loc 1 2890 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# ary, tmp1020
	movq	(%rax), %rax	# *ary_73, D.22119
	movq	(%rax), %rax	# _77->sv_any, D.22113
	movq	8(%rax), %rax	# MEM[(struct XPV *)_78].xpv_cur, len2.275
	movq	%rax, -88(%rbp)	# len2.275, len2
	movq	-40(%rbp), %rax	# ary, tmp1021
	movq	(%rax), %rax	# *ary_73, D.22119
	movq	(%rax), %rax	# _80->sv_any, D.22113
	movq	(%rax), %rax	# MEM[(struct XPV *)_81].xpv_pv, iftmp.274
	jmp	.L521	#
.L520:
	.loc 1 2890 0 discriminator 2
	movq	-40(%rbp), %rax	# ary, tmp1022
	movq	(%rax), %rax	# *ary_73, D.22119
	leaq	-88(%rbp), %rcx	#, tmp1023
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp1023,
	movq	%rax, %rdi	# D.22119,
	call	Perl_sv_2pv_flags	#
.L521:
	.loc 1 2890 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.274, pv
	.loc 1 2905 0 is_stmt 1 discriminator 3
	movl	$1, -300(%rbp)	#, i
	jmp	.L522	#
.L547:
.LBB151:
	.loc 1 2907 0
	movl	-300(%rbp), %eax	# i, tmp1024
	cltq
	leaq	0(,%rax,8), %rdx	#, D.22112
	movq	-40(%rbp), %rax	# ary, tmp1025
	addq	%rdx, %rax	# D.22112, D.22118
	movq	(%rax), %rax	# *_89, tmp1026
	movq	%rax, -24(%rbp)	# tmp1026, rsv
	.loc 1 2909 0
	movq	-328(%rbp), %rax	# cxt, tmp1027
	movq	16(%rax), %rax	# cxt_26(D)->hook_seen, tmp1028
	movq	%rax, -16(%rbp)	# tmp1028, av_hook
	.loc 1 2911 0
	movq	-24(%rbp), %rax	# rsv, tmp1029
	movl	12(%rax), %eax	# rsv_90->sv_flags, D.22109
	andl	$524288, %eax	#, D.22109
	testl	%eax, %eax	# D.22109
	jne	.L523	#,
.LBB152:
	.loc 1 2912 0
	movq	-328(%rbp), %rax	# cxt, tmp1030
	movl	$1, 112(%rax)	#, cxt_26(D)->s_dirty
	movq	-64(%rbp), %rdx	# class, tmp1031
	movl	-300(%rbp), %eax	# i, tmp1032
	movl	%eax, %esi	# tmp1032,
	movl	$.LC23, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L523:
.LBE152:
	.loc 1 2914 0
	movq	-24(%rbp), %rax	# rsv, tmp1033
	movq	(%rax), %rax	# rsv_90->sv_any, D.22113
	movq	(%rax), %rax	# MEM[(struct XRV *)_94].xrv_rv, xsv.276
	movq	%rax, -80(%rbp)	# xsv.276, xsv
	.loc 1 2921 0
	movq	-328(%rbp), %rax	# cxt, tmp1034
	movq	8(%rax), %rax	# cxt_26(D)->hseen, D.22117
	leaq	-80(%rbp), %rsi	#, tmp1035
	movl	$0, %ecx	#,
	movl	$8, %edx	#,
	movq	%rax, %rdi	# D.22117,
	call	Perl_hv_fetch	#
	movq	%rax, -72(%rbp)	# tmp1036, svh
	cmpq	$0, -72(%rbp)	#, svh
	je	.L524	#,
	.loc 1 2922 0
	jmp	.L525	#
.L524:
	.loc 1 2938 0
	movl	-296(%rbp), %eax	# recursed, recursed.277
	leal	1(%rax), %edx	#, tmp1037
	movl	%edx, -296(%rbp)	# tmp1037, recursed
	testl	%eax, %eax	# recursed.277
	jne	.L526	#,
	.loc 1 2939 0
	movq	-328(%rbp), %rax	# cxt, tmp1038
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	testq	%rax, %rax	# D.22120
	jne	.L527	#,
	.loc 1 2939 0 is_stmt 0 discriminator 1
	movq	-328(%rbp), %rax	# cxt, tmp1039
	movq	168(%rax), %rdx	# cxt_26(D)->membuf.aptr, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1040
	movq	176(%rax), %rax	# cxt_26(D)->membuf.aend, D.22121
	cmpq	%rax, %rdx	# D.22121, D.22121
	jae	.L528	#,
	movq	-328(%rbp), %rax	# cxt, tmp1041
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	leaq	1(%rax), %rcx	#, D.22121
	movq	-328(%rbp), %rdx	# cxt, tmp1042
	movq	%rcx, 168(%rdx)	# D.22121, cxt_26(D)->membuf.aptr
	movb	$19, (%rax)	#, *_104
	jmp	.L530	#
.L528:
.LBB153:
	.loc 1 2939 0 discriminator 2
	movq	-328(%rbp), %rax	# cxt, tmp1043
	movq	160(%rax), %rax	# cxt_26(D)->membuf.asiz, D.22112
	addl	$8192, %eax	#, D.22116
	andl	$-8192, %eax	#, tmp1044
	movl	%eax, -280(%rbp)	# tmp1044, nsz
	movq	-328(%rbp), %rax	# cxt, tmp1045
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movq	%rax, %rdx	# D.22121, D.22115
	movq	-328(%rbp), %rax	# cxt, tmp1046
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	subq	%rax, %rdx	# D.22115, D.22115
	movq	%rdx, %rax	# D.22115, D.22115
	movl	%eax, -276(%rbp)	# D.22115, offset
	movl	-280(%rbp), %eax	# nsz, tmp1047
	movslq	%eax, %rdx	# tmp1047, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1048
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	movq	%rdx, %rsi	# D.22112,
	movq	%rax, %rdi	# D.22121,
	call	Perl_safesysrealloc	#
	movq	-328(%rbp), %rdx	# cxt, tmp1049
	movq	%rax, 152(%rdx)	# D.22113, cxt_26(D)->membuf.arena
	movl	-280(%rbp), %eax	# nsz, tmp1050
	movslq	%eax, %rdx	# tmp1050, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1051
	movq	%rdx, 160(%rax)	# D.22112, cxt_26(D)->membuf.asiz
	movq	-328(%rbp), %rax	# cxt, tmp1052
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-276(%rbp), %eax	# offset, tmp1053
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1054
	movq	%rdx, 168(%rax)	# D.22121, cxt_26(D)->membuf.aptr
	movq	-328(%rbp), %rax	# cxt, tmp1055
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-280(%rbp), %eax	# nsz, tmp1056
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1057
	movq	%rdx, 176(%rax)	# D.22121, cxt_26(D)->membuf.aend
.LBE153:
	movq	-328(%rbp), %rax	# cxt, tmp1059
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	leaq	1(%rax), %rcx	#, D.22121
	movq	-328(%rbp), %rdx	# cxt, tmp1060
	movq	%rcx, 168(%rdx)	# D.22121, cxt_26(D)->membuf.aptr
	movb	$19, (%rax)	#, *_129
	jmp	.L530	#
.L527:
	movq	-328(%rbp), %rax	# cxt, tmp1061
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	movl	$19, %esi	#,
	movq	%rax, %rdi	# D.22120,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22108
	jne	.L530	#,
	.loc 1 2939 0 discriminator 1
	movl	$-1, %eax	#, D.22108
	jmp	.L657	#
.L530:
	.loc 1 2940 0 is_stmt 1
	movq	-328(%rbp), %rax	# cxt, tmp1062
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	testq	%rax, %rax	# D.22120
	jne	.L532	#,
	.loc 1 2940 0 is_stmt 0 discriminator 1
	movq	-328(%rbp), %rax	# cxt, tmp1063
	movq	168(%rax), %rdx	# cxt_26(D)->membuf.aptr, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1064
	movq	176(%rax), %rax	# cxt_26(D)->membuf.aend, D.22121
	cmpq	%rax, %rdx	# D.22121, D.22121
	jae	.L533	#,
	movq	-328(%rbp), %rax	# cxt, tmp1065
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	leaq	1(%rax), %rcx	#, D.22121
	movq	-328(%rbp), %rdx	# cxt, tmp1066
	movq	%rcx, 168(%rdx)	# D.22121, cxt_26(D)->membuf.aptr
	movzbl	-319(%rbp), %edx	# flags, flags.278
	movb	%dl, (%rax)	# flags.278, *_138
	jmp	.L535	#
.L533:
.LBB154:
	.loc 1 2940 0 discriminator 2
	movq	-328(%rbp), %rax	# cxt, tmp1067
	movq	160(%rax), %rax	# cxt_26(D)->membuf.asiz, D.22112
	addl	$8192, %eax	#, D.22116
	andl	$-8192, %eax	#, tmp1068
	movl	%eax, -272(%rbp)	# tmp1068, nsz
	movq	-328(%rbp), %rax	# cxt, tmp1069
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movq	%rax, %rdx	# D.22121, D.22115
	movq	-328(%rbp), %rax	# cxt, tmp1070
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	subq	%rax, %rdx	# D.22115, D.22115
	movq	%rdx, %rax	# D.22115, D.22115
	movl	%eax, -268(%rbp)	# D.22115, offset
	movl	-272(%rbp), %eax	# nsz, tmp1071
	movslq	%eax, %rdx	# tmp1071, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1072
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	movq	%rdx, %rsi	# D.22112,
	movq	%rax, %rdi	# D.22121,
	call	Perl_safesysrealloc	#
	movq	-328(%rbp), %rdx	# cxt, tmp1073
	movq	%rax, 152(%rdx)	# D.22113, cxt_26(D)->membuf.arena
	movl	-272(%rbp), %eax	# nsz, tmp1074
	movslq	%eax, %rdx	# tmp1074, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1075
	movq	%rdx, 160(%rax)	# D.22112, cxt_26(D)->membuf.asiz
	movq	-328(%rbp), %rax	# cxt, tmp1076
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-268(%rbp), %eax	# offset, tmp1077
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1078
	movq	%rdx, 168(%rax)	# D.22121, cxt_26(D)->membuf.aptr
	movq	-328(%rbp), %rax	# cxt, tmp1079
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-272(%rbp), %eax	# nsz, tmp1080
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1081
	movq	%rdx, 176(%rax)	# D.22121, cxt_26(D)->membuf.aend
.LBE154:
	movq	-328(%rbp), %rax	# cxt, tmp1083
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	leaq	1(%rax), %rcx	#, D.22121
	movq	-328(%rbp), %rdx	# cxt, tmp1084
	movq	%rcx, 168(%rdx)	# D.22121, cxt_26(D)->membuf.aptr
	movzbl	-319(%rbp), %edx	# flags, flags.279
	movb	%dl, (%rax)	# flags.279, *_164
	jmp	.L535	#
.L532:
	movzbl	-319(%rbp), %edx	# flags, D.22108
	movq	-328(%rbp), %rax	# cxt, tmp1085
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	movl	%edx, %esi	# D.22108,
	movq	%rax, %rdi	# D.22120,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22108
	jne	.L535	#,
	.loc 1 2940 0 discriminator 1
	movl	$-1, %eax	#, D.22108
	jmp	.L657	#
.L535:
	.loc 1 2941 0 is_stmt 1
	cmpl	$3, -292(%rbp)	#, obj_type
	jne	.L536	#,
	.loc 1 2942 0
	movq	-328(%rbp), %rax	# cxt, tmp1086
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	testq	%rax, %rax	# D.22120
	jne	.L537	#,
	.loc 1 2942 0 is_stmt 0 discriminator 1
	movq	-328(%rbp), %rax	# cxt, tmp1087
	movq	168(%rax), %rdx	# cxt_26(D)->membuf.aptr, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1088
	movq	176(%rax), %rax	# cxt_26(D)->membuf.aend, D.22121
	cmpq	%rax, %rdx	# D.22121, D.22121
	jae	.L538	#,
	movq	-328(%rbp), %rax	# cxt, tmp1089
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	leaq	1(%rax), %rcx	#, D.22121
	movq	-328(%rbp), %rdx	# cxt, tmp1090
	movq	%rcx, 168(%rdx)	# D.22121, cxt_26(D)->membuf.aptr
	movzbl	-317(%rbp), %edx	# eflags, eflags.280
	movb	%dl, (%rax)	# eflags.280, *_175
	jmp	.L536	#
.L538:
.LBB155:
	.loc 1 2942 0 discriminator 2
	movq	-328(%rbp), %rax	# cxt, tmp1091
	movq	160(%rax), %rax	# cxt_26(D)->membuf.asiz, D.22112
	addl	$8192, %eax	#, D.22116
	andl	$-8192, %eax	#, tmp1092
	movl	%eax, -264(%rbp)	# tmp1092, nsz
	movq	-328(%rbp), %rax	# cxt, tmp1093
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movq	%rax, %rdx	# D.22121, D.22115
	movq	-328(%rbp), %rax	# cxt, tmp1094
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	subq	%rax, %rdx	# D.22115, D.22115
	movq	%rdx, %rax	# D.22115, D.22115
	movl	%eax, -260(%rbp)	# D.22115, offset
	movl	-264(%rbp), %eax	# nsz, tmp1095
	movslq	%eax, %rdx	# tmp1095, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1096
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	movq	%rdx, %rsi	# D.22112,
	movq	%rax, %rdi	# D.22121,
	call	Perl_safesysrealloc	#
	movq	-328(%rbp), %rdx	# cxt, tmp1097
	movq	%rax, 152(%rdx)	# D.22113, cxt_26(D)->membuf.arena
	movl	-264(%rbp), %eax	# nsz, tmp1098
	movslq	%eax, %rdx	# tmp1098, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1099
	movq	%rdx, 160(%rax)	# D.22112, cxt_26(D)->membuf.asiz
	movq	-328(%rbp), %rax	# cxt, tmp1100
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-260(%rbp), %eax	# offset, tmp1101
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1102
	movq	%rdx, 168(%rax)	# D.22121, cxt_26(D)->membuf.aptr
	movq	-328(%rbp), %rax	# cxt, tmp1103
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-264(%rbp), %eax	# nsz, tmp1104
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1105
	movq	%rdx, 176(%rax)	# D.22121, cxt_26(D)->membuf.aend
.LBE155:
	movq	-328(%rbp), %rax	# cxt, tmp1107
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	leaq	1(%rax), %rcx	#, D.22121
	movq	-328(%rbp), %rdx	# cxt, tmp1108
	movq	%rcx, 168(%rdx)	# D.22121, cxt_26(D)->membuf.aptr
	movzbl	-317(%rbp), %edx	# eflags, eflags.281
	movb	%dl, (%rax)	# eflags.281, *_201
	jmp	.L536	#
.L537:
	movzbl	-317(%rbp), %edx	# eflags, D.22108
	movq	-328(%rbp), %rax	# cxt, tmp1109
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	movl	%edx, %esi	# D.22108,
	movq	%rax, %rdi	# D.22120,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22108
	jne	.L536	#,
	.loc 1 2942 0 discriminator 1
	movl	$-1, %eax	#, D.22108
	jmp	.L657	#
.L526:
	.loc 1 2944 0 is_stmt 1
	movq	-328(%rbp), %rax	# cxt, tmp1110
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	testq	%rax, %rax	# D.22120
	jne	.L540	#,
	.loc 1 2944 0 is_stmt 0 discriminator 1
	movq	-328(%rbp), %rax	# cxt, tmp1111
	movq	168(%rax), %rdx	# cxt_26(D)->membuf.aptr, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1112
	movq	176(%rax), %rax	# cxt_26(D)->membuf.aend, D.22121
	cmpq	%rax, %rdx	# D.22121, D.22121
	jae	.L541	#,
	movq	-328(%rbp), %rax	# cxt, tmp1113
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	leaq	1(%rax), %rcx	#, D.22121
	movq	-328(%rbp), %rdx	# cxt, tmp1114
	movq	%rcx, 168(%rdx)	# D.22121, cxt_26(D)->membuf.aptr
	movzbl	-319(%rbp), %edx	# flags, flags.282
	movb	%dl, (%rax)	# flags.282, *_212
	jmp	.L536	#
.L541:
.LBB156:
	.loc 1 2944 0 discriminator 2
	movq	-328(%rbp), %rax	# cxt, tmp1115
	movq	160(%rax), %rax	# cxt_26(D)->membuf.asiz, D.22112
	addl	$8192, %eax	#, D.22116
	andl	$-8192, %eax	#, tmp1116
	movl	%eax, -256(%rbp)	# tmp1116, nsz
	movq	-328(%rbp), %rax	# cxt, tmp1117
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movq	%rax, %rdx	# D.22121, D.22115
	movq	-328(%rbp), %rax	# cxt, tmp1118
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	subq	%rax, %rdx	# D.22115, D.22115
	movq	%rdx, %rax	# D.22115, D.22115
	movl	%eax, -252(%rbp)	# D.22115, offset
	movl	-256(%rbp), %eax	# nsz, tmp1119
	movslq	%eax, %rdx	# tmp1119, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1120
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	movq	%rdx, %rsi	# D.22112,
	movq	%rax, %rdi	# D.22121,
	call	Perl_safesysrealloc	#
	movq	-328(%rbp), %rdx	# cxt, tmp1121
	movq	%rax, 152(%rdx)	# D.22113, cxt_26(D)->membuf.arena
	movl	-256(%rbp), %eax	# nsz, tmp1122
	movslq	%eax, %rdx	# tmp1122, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1123
	movq	%rdx, 160(%rax)	# D.22112, cxt_26(D)->membuf.asiz
	movq	-328(%rbp), %rax	# cxt, tmp1124
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-252(%rbp), %eax	# offset, tmp1125
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1126
	movq	%rdx, 168(%rax)	# D.22121, cxt_26(D)->membuf.aptr
	movq	-328(%rbp), %rax	# cxt, tmp1127
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-256(%rbp), %eax	# nsz, tmp1128
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1129
	movq	%rdx, 176(%rax)	# D.22121, cxt_26(D)->membuf.aend
.LBE156:
	movq	-328(%rbp), %rax	# cxt, tmp1131
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	leaq	1(%rax), %rcx	#, D.22121
	movq	-328(%rbp), %rdx	# cxt, tmp1132
	movq	%rcx, 168(%rdx)	# D.22121, cxt_26(D)->membuf.aptr
	movzbl	-319(%rbp), %edx	# flags, flags.283
	movb	%dl, (%rax)	# flags.283, *_238
	jmp	.L536	#
.L540:
	movzbl	-319(%rbp), %edx	# flags, D.22108
	movq	-328(%rbp), %rax	# cxt, tmp1133
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	movl	%edx, %esi	# D.22108,
	movq	%rax, %rdi	# D.22120,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22108
	jne	.L536	#,
	.loc 1 2944 0 discriminator 1
	movl	$-1, %eax	#, D.22108
	jmp	.L657	#
.L536:
	.loc 1 2946 0 is_stmt 1
	movq	-80(%rbp), %rdx	# xsv, xsv.284
	movq	-328(%rbp), %rax	# cxt, tmp1134
	movq	%rdx, %rsi	# xsv.284,
	movq	%rax, %rdi	# tmp1134,
	call	store	#
	movl	%eax, -248(%rbp)	# tmp1135, ret
	cmpl	$0, -248(%rbp)	#, ret
	je	.L543	#,
	.loc 1 2947 0
	movl	-248(%rbp), %eax	# ret, D.22108
	jmp	.L657	#
.L543:
	.loc 1 2949 0
	movq	-328(%rbp), %rax	# cxt, tmp1136
	movq	8(%rax), %rax	# cxt_26(D)->hseen, D.22117
	leaq	-80(%rbp), %rsi	#, tmp1137
	movl	$0, %ecx	#,
	movl	$8, %edx	#,
	movq	%rax, %rdi	# D.22117,
	call	Perl_hv_fetch	#
	movq	%rax, -72(%rbp)	# tmp1138, svh
	.loc 1 2950 0
	cmpq	$0, -72(%rbp)	#, svh
	jne	.L544	#,
.LBB157:
	.loc 1 2951 0
	movq	-328(%rbp), %rax	# cxt, tmp1139
	movl	$1, 112(%rax)	#, cxt_26(D)->s_dirty
	movq	-64(%rbp), %rdx	# class, tmp1140
	movl	-300(%rbp), %eax	# i, tmp1141
	movl	%eax, %esi	# tmp1141,
	movl	$.LC24, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L544:
.LBE157:
	.loc 1 2966 0
	movq	-80(%rbp), %rax	# xsv, xsv.285
	movq	%rax, PL_Sv(%rip)	# xsv.285, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.287
	testq	%rax, %rax	# PL_Sv.287
	je	.L546	#,
	.loc 1 2966 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.288
	movl	8(%rax), %edx	# PL_Sv.288_252->sv_refcnt, D.22109
	addl	$1, %edx	#, D.22109
	movl	%edx, 8(%rax)	# D.22109, PL_Sv.288_252->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.288_252->sv_refcnt, D.22109
	testl	%eax, %eax	# D.22109
	je	.L546	#,
	.loc 1 2966 0
	nop
.L546:
	.loc 1 2966 0 discriminator 4
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.289
	movq	-16(%rbp), %rax	# av_hook, tmp1142
	movq	(%rax), %rax	# av_hook_91->sv_any, D.22114
	movq	8(%rax), %rax	# _259->xav_fill, D.22115
	addl	$1, %eax	#, D.22116
	movl	%eax, %ecx	# D.22116, D.22108
	movq	-16(%rbp), %rax	# av_hook, tmp1143
	movl	%ecx, %esi	# D.22108,
	movq	%rax, %rdi	# tmp1143,
	call	Perl_av_store	#
.L525:
	.loc 1 2976 0 is_stmt 1
	movq	-24(%rbp), %rax	# rsv, tmp1144
	movq	%rax, %rdi	# tmp1144,
	call	Perl_sv_free	#
	.loc 1 2982 0
	movl	-300(%rbp), %eax	# i, tmp1145
	cltq
	leaq	0(,%rax,8), %rdx	#, D.22112
	movq	-40(%rbp), %rax	# ary, tmp1146
	addq	%rax, %rdx	# tmp1146, D.22118
	movq	-72(%rbp), %rax	# svh, tmp1147
	movq	(%rax), %rax	# *svh_15, D.22119
	movq	%rax, (%rdx)	# D.22119, *_266
.LBE151:
	.loc 1 2905 0
	addl	$1, -300(%rbp)	#, i
.L522:
	.loc 1 2905 0 is_stmt 0 discriminator 1
	movl	-300(%rbp), %eax	# i, tmp1148
	cmpl	-284(%rbp), %eax	# count, tmp1148
	jl	.L547	#,
	.loc 1 2996 0 is_stmt 1
	movl	-312(%rbp), %edx	# len, len.290
	leaq	-308(%rbp), %rcx	#, tmp1149
	movq	-64(%rbp), %rsi	# class, tmp1150
	movq	-328(%rbp), %rax	# cxt, tmp1151
	movq	%rax, %rdi	# tmp1151,
	call	known_class	#
	testl	%eax, %eax	# D.22108
	jne	.L548	#,
	.loc 1 2998 0
	movl	$-1, -308(%rbp)	#, classnum
.L548:
	.loc 1 3007 0
	movl	-292(%rbp), %eax	# obj_type, tmp1152
	movb	%al, -319(%rbp)	# tmp1152, flags
	.loc 1 3008 0
	movl	-308(%rbp), %eax	# classnum, classnum.292
	cmpl	$-1, %eax	#, classnum.292
	jne	.L549	#,
	.loc 1 3008 0 is_stmt 0 discriminator 1
	movl	-312(%rbp), %eax	# len, len.293
	cmpl	$255, %eax	#, len.293
	setg	%al	#, iftmp.291
	jmp	.L550	#
.L549:
	.loc 1 3008 0 discriminator 2
	movl	-308(%rbp), %eax	# classnum, classnum.294
	cmpl	$255, %eax	#, classnum.294
	setg	%al	#, iftmp.291
.L550:
	.loc 1 3008 0 discriminator 3
	testb	%al, %al	# iftmp.291
	je	.L551	#,
	.loc 1 3009 0 is_stmt 1
	orb	$4, -319(%rbp)	#, flags
.L551:
	.loc 1 3010 0
	movl	-308(%rbp), %eax	# classnum, classnum.295
	cmpl	$-1, %eax	#, classnum.295
	je	.L552	#,
	.loc 1 3011 0
	orb	$32, -319(%rbp)	#, flags
.L552:
	.loc 1 3012 0
	movq	-88(%rbp), %rax	# len2, len2.296
	cmpq	$255, %rax	#, len2.296
	jbe	.L553	#,
	.loc 1 3013 0
	orb	$8, -319(%rbp)	#, flags
.L553:
	.loc 1 3014 0
	cmpl	$1, -284(%rbp)	#, count
	jle	.L554	#,
	.loc 1 3015 0
	orb	$-128, -319(%rbp)	#, flags
.L554:
	.loc 1 3016 0
	cmpl	$256, -284(%rbp)	#, count
	jle	.L555	#,
	.loc 1 3017 0
	orb	$16, -319(%rbp)	#, flags
.L555:
	.loc 1 3033 0
	cmpl	$0, -296(%rbp)	#, recursed
	jne	.L556	#,
	.loc 1 3034 0
	movq	-328(%rbp), %rax	# cxt, tmp1153
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	testq	%rax, %rax	# D.22120
	jne	.L557	#,
	.loc 1 3034 0 is_stmt 0 discriminator 1
	movq	-328(%rbp), %rax	# cxt, tmp1154
	movq	168(%rax), %rdx	# cxt_26(D)->membuf.aptr, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1155
	movq	176(%rax), %rax	# cxt_26(D)->membuf.aend, D.22121
	cmpq	%rax, %rdx	# D.22121, D.22121
	jae	.L558	#,
	movq	-328(%rbp), %rax	# cxt, tmp1156
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	leaq	1(%rax), %rcx	#, D.22121
	movq	-328(%rbp), %rdx	# cxt, tmp1157
	movq	%rcx, 168(%rdx)	# D.22121, cxt_26(D)->membuf.aptr
	movb	$19, (%rax)	#, *_288
	jmp	.L560	#
.L558:
.LBB158:
	.loc 1 3034 0 discriminator 2
	movq	-328(%rbp), %rax	# cxt, tmp1158
	movq	160(%rax), %rax	# cxt_26(D)->membuf.asiz, D.22112
	addl	$8192, %eax	#, D.22116
	andl	$-8192, %eax	#, tmp1159
	movl	%eax, -244(%rbp)	# tmp1159, nsz
	movq	-328(%rbp), %rax	# cxt, tmp1160
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movq	%rax, %rdx	# D.22121, D.22115
	movq	-328(%rbp), %rax	# cxt, tmp1161
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	subq	%rax, %rdx	# D.22115, D.22115
	movq	%rdx, %rax	# D.22115, D.22115
	movl	%eax, -240(%rbp)	# D.22115, offset
	movl	-244(%rbp), %eax	# nsz, tmp1162
	movslq	%eax, %rdx	# tmp1162, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1163
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	movq	%rdx, %rsi	# D.22112,
	movq	%rax, %rdi	# D.22121,
	call	Perl_safesysrealloc	#
	movq	-328(%rbp), %rdx	# cxt, tmp1164
	movq	%rax, 152(%rdx)	# D.22113, cxt_26(D)->membuf.arena
	movl	-244(%rbp), %eax	# nsz, tmp1165
	movslq	%eax, %rdx	# tmp1165, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1166
	movq	%rdx, 160(%rax)	# D.22112, cxt_26(D)->membuf.asiz
	movq	-328(%rbp), %rax	# cxt, tmp1167
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-240(%rbp), %eax	# offset, tmp1168
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1169
	movq	%rdx, 168(%rax)	# D.22121, cxt_26(D)->membuf.aptr
	movq	-328(%rbp), %rax	# cxt, tmp1170
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-244(%rbp), %eax	# nsz, tmp1171
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1172
	movq	%rdx, 176(%rax)	# D.22121, cxt_26(D)->membuf.aend
.LBE158:
	movq	-328(%rbp), %rax	# cxt, tmp1174
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	leaq	1(%rax), %rcx	#, D.22121
	movq	-328(%rbp), %rdx	# cxt, tmp1175
	movq	%rcx, 168(%rdx)	# D.22121, cxt_26(D)->membuf.aptr
	movb	$19, (%rax)	#, *_313
	jmp	.L560	#
.L557:
	movq	-328(%rbp), %rax	# cxt, tmp1176
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	movl	$19, %esi	#,
	movq	%rax, %rdi	# D.22120,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22108
	jne	.L560	#,
	.loc 1 3034 0 discriminator 1
	movl	$-1, %eax	#, D.22108
	jmp	.L657	#
.L560:
	.loc 1 3035 0 is_stmt 1
	movq	-328(%rbp), %rax	# cxt, tmp1177
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	testq	%rax, %rax	# D.22120
	jne	.L561	#,
	.loc 1 3035 0 is_stmt 0 discriminator 1
	movq	-328(%rbp), %rax	# cxt, tmp1178
	movq	168(%rax), %rdx	# cxt_26(D)->membuf.aptr, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1179
	movq	176(%rax), %rax	# cxt_26(D)->membuf.aend, D.22121
	cmpq	%rax, %rdx	# D.22121, D.22121
	jae	.L562	#,
	movq	-328(%rbp), %rax	# cxt, tmp1180
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	leaq	1(%rax), %rcx	#, D.22121
	movq	-328(%rbp), %rdx	# cxt, tmp1181
	movq	%rcx, 168(%rdx)	# D.22121, cxt_26(D)->membuf.aptr
	movzbl	-319(%rbp), %edx	# flags, flags.297
	movb	%dl, (%rax)	# flags.297, *_322
	jmp	.L564	#
.L562:
.LBB159:
	.loc 1 3035 0 discriminator 2
	movq	-328(%rbp), %rax	# cxt, tmp1182
	movq	160(%rax), %rax	# cxt_26(D)->membuf.asiz, D.22112
	addl	$8192, %eax	#, D.22116
	andl	$-8192, %eax	#, tmp1183
	movl	%eax, -236(%rbp)	# tmp1183, nsz
	movq	-328(%rbp), %rax	# cxt, tmp1184
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movq	%rax, %rdx	# D.22121, D.22115
	movq	-328(%rbp), %rax	# cxt, tmp1185
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	subq	%rax, %rdx	# D.22115, D.22115
	movq	%rdx, %rax	# D.22115, D.22115
	movl	%eax, -232(%rbp)	# D.22115, offset
	movl	-236(%rbp), %eax	# nsz, tmp1186
	movslq	%eax, %rdx	# tmp1186, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1187
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	movq	%rdx, %rsi	# D.22112,
	movq	%rax, %rdi	# D.22121,
	call	Perl_safesysrealloc	#
	movq	-328(%rbp), %rdx	# cxt, tmp1188
	movq	%rax, 152(%rdx)	# D.22113, cxt_26(D)->membuf.arena
	movl	-236(%rbp), %eax	# nsz, tmp1189
	movslq	%eax, %rdx	# tmp1189, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1190
	movq	%rdx, 160(%rax)	# D.22112, cxt_26(D)->membuf.asiz
	movq	-328(%rbp), %rax	# cxt, tmp1191
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-232(%rbp), %eax	# offset, tmp1192
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1193
	movq	%rdx, 168(%rax)	# D.22121, cxt_26(D)->membuf.aptr
	movq	-328(%rbp), %rax	# cxt, tmp1194
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-236(%rbp), %eax	# nsz, tmp1195
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1196
	movq	%rdx, 176(%rax)	# D.22121, cxt_26(D)->membuf.aend
.LBE159:
	movq	-328(%rbp), %rax	# cxt, tmp1198
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	leaq	1(%rax), %rcx	#, D.22121
	movq	-328(%rbp), %rdx	# cxt, tmp1199
	movq	%rcx, 168(%rdx)	# D.22121, cxt_26(D)->membuf.aptr
	movzbl	-319(%rbp), %edx	# flags, flags.298
	movb	%dl, (%rax)	# flags.298, *_348
	jmp	.L564	#
.L561:
	movzbl	-319(%rbp), %edx	# flags, D.22108
	movq	-328(%rbp), %rax	# cxt, tmp1200
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	movl	%edx, %esi	# D.22108,
	movq	%rax, %rdi	# D.22120,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22108
	jne	.L564	#,
	.loc 1 3035 0 discriminator 1
	movl	$-1, %eax	#, D.22108
	jmp	.L657	#
.L564:
	.loc 1 3036 0 is_stmt 1
	cmpl	$3, -292(%rbp)	#, obj_type
	jne	.L565	#,
	.loc 1 3037 0
	movq	-328(%rbp), %rax	# cxt, tmp1201
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	testq	%rax, %rax	# D.22120
	jne	.L566	#,
	.loc 1 3037 0 is_stmt 0 discriminator 1
	movq	-328(%rbp), %rax	# cxt, tmp1202
	movq	168(%rax), %rdx	# cxt_26(D)->membuf.aptr, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1203
	movq	176(%rax), %rax	# cxt_26(D)->membuf.aend, D.22121
	cmpq	%rax, %rdx	# D.22121, D.22121
	jae	.L567	#,
	movq	-328(%rbp), %rax	# cxt, tmp1204
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	leaq	1(%rax), %rcx	#, D.22121
	movq	-328(%rbp), %rdx	# cxt, tmp1205
	movq	%rcx, 168(%rdx)	# D.22121, cxt_26(D)->membuf.aptr
	movzbl	-317(%rbp), %edx	# eflags, eflags.299
	movb	%dl, (%rax)	# eflags.299, *_359
	jmp	.L565	#
.L567:
.LBB160:
	.loc 1 3037 0 discriminator 2
	movq	-328(%rbp), %rax	# cxt, tmp1206
	movq	160(%rax), %rax	# cxt_26(D)->membuf.asiz, D.22112
	addl	$8192, %eax	#, D.22116
	andl	$-8192, %eax	#, tmp1207
	movl	%eax, -228(%rbp)	# tmp1207, nsz
	movq	-328(%rbp), %rax	# cxt, tmp1208
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movq	%rax, %rdx	# D.22121, D.22115
	movq	-328(%rbp), %rax	# cxt, tmp1209
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	subq	%rax, %rdx	# D.22115, D.22115
	movq	%rdx, %rax	# D.22115, D.22115
	movl	%eax, -224(%rbp)	# D.22115, offset
	movl	-228(%rbp), %eax	# nsz, tmp1210
	movslq	%eax, %rdx	# tmp1210, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1211
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	movq	%rdx, %rsi	# D.22112,
	movq	%rax, %rdi	# D.22121,
	call	Perl_safesysrealloc	#
	movq	-328(%rbp), %rdx	# cxt, tmp1212
	movq	%rax, 152(%rdx)	# D.22113, cxt_26(D)->membuf.arena
	movl	-228(%rbp), %eax	# nsz, tmp1213
	movslq	%eax, %rdx	# tmp1213, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1214
	movq	%rdx, 160(%rax)	# D.22112, cxt_26(D)->membuf.asiz
	movq	-328(%rbp), %rax	# cxt, tmp1215
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-224(%rbp), %eax	# offset, tmp1216
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1217
	movq	%rdx, 168(%rax)	# D.22121, cxt_26(D)->membuf.aptr
	movq	-328(%rbp), %rax	# cxt, tmp1218
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-228(%rbp), %eax	# nsz, tmp1219
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1220
	movq	%rdx, 176(%rax)	# D.22121, cxt_26(D)->membuf.aend
.LBE160:
	movq	-328(%rbp), %rax	# cxt, tmp1222
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	leaq	1(%rax), %rcx	#, D.22121
	movq	-328(%rbp), %rdx	# cxt, tmp1223
	movq	%rcx, 168(%rdx)	# D.22121, cxt_26(D)->membuf.aptr
	movzbl	-317(%rbp), %edx	# eflags, eflags.300
	movb	%dl, (%rax)	# eflags.300, *_385
	jmp	.L565	#
.L566:
	movzbl	-317(%rbp), %edx	# eflags, D.22108
	movq	-328(%rbp), %rax	# cxt, tmp1224
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	movl	%edx, %esi	# D.22108,
	movq	%rax, %rdi	# D.22120,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22108
	jne	.L565	#,
	.loc 1 3037 0 discriminator 1
	movl	$-1, %eax	#, D.22108
	jmp	.L657	#
.L556:
	.loc 1 3039 0 is_stmt 1
	movq	-328(%rbp), %rax	# cxt, tmp1225
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	testq	%rax, %rax	# D.22120
	jne	.L569	#,
	.loc 1 3039 0 is_stmt 0 discriminator 1
	movq	-328(%rbp), %rax	# cxt, tmp1226
	movq	168(%rax), %rdx	# cxt_26(D)->membuf.aptr, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1227
	movq	176(%rax), %rax	# cxt_26(D)->membuf.aend, D.22121
	cmpq	%rax, %rdx	# D.22121, D.22121
	jae	.L570	#,
	movq	-328(%rbp), %rax	# cxt, tmp1228
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	leaq	1(%rax), %rcx	#, D.22121
	movq	-328(%rbp), %rdx	# cxt, tmp1229
	movq	%rcx, 168(%rdx)	# D.22121, cxt_26(D)->membuf.aptr
	movzbl	-319(%rbp), %edx	# flags, flags.301
	movb	%dl, (%rax)	# flags.301, *_396
	jmp	.L565	#
.L570:
.LBB161:
	.loc 1 3039 0 discriminator 2
	movq	-328(%rbp), %rax	# cxt, tmp1230
	movq	160(%rax), %rax	# cxt_26(D)->membuf.asiz, D.22112
	addl	$8192, %eax	#, D.22116
	andl	$-8192, %eax	#, tmp1231
	movl	%eax, -220(%rbp)	# tmp1231, nsz
	movq	-328(%rbp), %rax	# cxt, tmp1232
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movq	%rax, %rdx	# D.22121, D.22115
	movq	-328(%rbp), %rax	# cxt, tmp1233
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	subq	%rax, %rdx	# D.22115, D.22115
	movq	%rdx, %rax	# D.22115, D.22115
	movl	%eax, -216(%rbp)	# D.22115, offset
	movl	-220(%rbp), %eax	# nsz, tmp1234
	movslq	%eax, %rdx	# tmp1234, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1235
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	movq	%rdx, %rsi	# D.22112,
	movq	%rax, %rdi	# D.22121,
	call	Perl_safesysrealloc	#
	movq	-328(%rbp), %rdx	# cxt, tmp1236
	movq	%rax, 152(%rdx)	# D.22113, cxt_26(D)->membuf.arena
	movl	-220(%rbp), %eax	# nsz, tmp1237
	movslq	%eax, %rdx	# tmp1237, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1238
	movq	%rdx, 160(%rax)	# D.22112, cxt_26(D)->membuf.asiz
	movq	-328(%rbp), %rax	# cxt, tmp1239
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-216(%rbp), %eax	# offset, tmp1240
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1241
	movq	%rdx, 168(%rax)	# D.22121, cxt_26(D)->membuf.aptr
	movq	-328(%rbp), %rax	# cxt, tmp1242
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-220(%rbp), %eax	# nsz, tmp1243
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1244
	movq	%rdx, 176(%rax)	# D.22121, cxt_26(D)->membuf.aend
.LBE161:
	movq	-328(%rbp), %rax	# cxt, tmp1246
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	leaq	1(%rax), %rcx	#, D.22121
	movq	-328(%rbp), %rdx	# cxt, tmp1247
	movq	%rcx, 168(%rdx)	# D.22121, cxt_26(D)->membuf.aptr
	movzbl	-319(%rbp), %edx	# flags, flags.302
	movb	%dl, (%rax)	# flags.302, *_422
	jmp	.L565	#
.L569:
	movzbl	-319(%rbp), %edx	# flags, D.22108
	movq	-328(%rbp), %rax	# cxt, tmp1248
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	movl	%edx, %esi	# D.22108,
	movq	%rax, %rdi	# D.22120,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22108
	jne	.L565	#,
	.loc 1 3039 0 discriminator 1
	movl	$-1, %eax	#, D.22108
	jmp	.L657	#
.L565:
	.loc 1 3042 0 is_stmt 1
	movzbl	-319(%rbp), %eax	# flags, D.22108
	andl	$32, %eax	#, D.22108
	testl	%eax, %eax	# D.22108
	je	.L572	#,
	.loc 1 3043 0
	movzbl	-319(%rbp), %eax	# flags, D.22108
	andl	$4, %eax	#, D.22108
	testl	%eax, %eax	# D.22108
	je	.L573	#,
	.loc 1 3044 0
	movq	-328(%rbp), %rax	# cxt, tmp1249
	movl	80(%rax), %eax	# cxt_26(D)->netorder, D.22108
	testl	%eax, %eax	# D.22108
	je	.L574	#,
.LBB162:
	.loc 1 3044 0 is_stmt 0 discriminator 1
	movl	-308(%rbp), %eax	# classnum, classnum.303
	cltq
	movq	%rax, %rdi	# D.22115,
	call	Perl_my_htonl	#
	movl	%eax, -80(%rbp)	# y.304, y
	movq	-328(%rbp), %rax	# cxt, tmp1250
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	testq	%rax, %rax	# D.22120
	jne	.L575	#,
.LBB163:
	movq	-328(%rbp), %rax	# cxt, tmp1251
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	leaq	4(%rax), %rdx	#, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1252
	movq	176(%rax), %rax	# cxt_26(D)->membuf.aend, D.22121
	cmpq	%rax, %rdx	# D.22121, D.22121
	jbe	.L576	#,
.LBB164:
	movq	-328(%rbp), %rax	# cxt, tmp1253
	movq	160(%rax), %rax	# cxt_26(D)->membuf.asiz, D.22112
	addl	$8195, %eax	#, D.22116
	andl	$-8192, %eax	#, tmp1254
	movl	%eax, -212(%rbp)	# tmp1254, nsz
	movq	-328(%rbp), %rax	# cxt, tmp1255
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movq	%rax, %rdx	# D.22121, D.22115
	movq	-328(%rbp), %rax	# cxt, tmp1256
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	subq	%rax, %rdx	# D.22115, D.22115
	movq	%rdx, %rax	# D.22115, D.22115
	movl	%eax, -208(%rbp)	# D.22115, offset
	movl	-212(%rbp), %eax	# nsz, tmp1257
	movslq	%eax, %rdx	# tmp1257, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1258
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	movq	%rdx, %rsi	# D.22112,
	movq	%rax, %rdi	# D.22121,
	call	Perl_safesysrealloc	#
	movq	-328(%rbp), %rdx	# cxt, tmp1259
	movq	%rax, 152(%rdx)	# D.22113, cxt_26(D)->membuf.arena
	movl	-212(%rbp), %eax	# nsz, tmp1260
	movslq	%eax, %rdx	# tmp1260, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1261
	movq	%rdx, 160(%rax)	# D.22112, cxt_26(D)->membuf.asiz
	movq	-328(%rbp), %rax	# cxt, tmp1262
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-208(%rbp), %eax	# offset, tmp1263
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1264
	movq	%rdx, 168(%rax)	# D.22121, cxt_26(D)->membuf.aptr
	movq	-328(%rbp), %rax	# cxt, tmp1265
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-212(%rbp), %eax	# nsz, tmp1266
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1267
	movq	%rdx, 176(%rax)	# D.22121, cxt_26(D)->membuf.aend
.L576:
.LBE164:
	.loc 1 3044 0 discriminator 2
	movq	-328(%rbp), %rax	# cxt, tmp1269
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movq	%rax, %rdx	# D.22121, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1270
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	andq	$-4, %rax	#, D.22112
	cmpq	%rax, %rdx	# D.22112, D.22112
	jne	.L577	#,
	.loc 1 3044 0 discriminator 1
	movq	-328(%rbp), %rax	# cxt, tmp1271
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movl	-80(%rbp), %edx	# y, y.305
	movl	%edx, (%rax)	# y.305, MEM[(int *)_469]
	jmp	.L578	#
.L577:
	.loc 1 3044 0 discriminator 2
	movq	-328(%rbp), %rax	# cxt, tmp1272
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movl	-80(%rbp), %edx	# MEM[(char * {ref-all})&y], D.22108
	movl	%edx, (%rax)	# D.22108, MEM[(char * {ref-all})_471]
.L578:
	.loc 1 3044 0 discriminator 1
	movq	-328(%rbp), %rax	# cxt, tmp1273
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	leaq	4(%rax), %rdx	#, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1274
	movq	%rdx, 168(%rax)	# D.22121, cxt_26(D)->membuf.aptr
.LBE163:
	jmp	.L579	#
.L575:
	.loc 1 3044 0 discriminator 2
	movq	-328(%rbp), %rax	# cxt, tmp1276
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	leaq	-80(%rbp), %rcx	#, tmp1277
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp1277,
	movq	%rax, %rdi	# D.22120,
	call	Perl_PerlIO_write	#
	cmpq	$4, %rax	#, D.22115
	je	.L579	#,
	.loc 1 3044 0 discriminator 1
	movl	$-1, %eax	#, D.22108
	jmp	.L657	#
.L579:
.LBE162:
	jmp	.L588	#
.L574:
	.loc 1 3044 0 discriminator 2
	movq	-328(%rbp), %rax	# cxt, tmp1278
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	testq	%rax, %rax	# D.22120
	jne	.L581	#,
.LBB165:
	.loc 1 3044 0 discriminator 1
	movq	-328(%rbp), %rax	# cxt, tmp1279
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	leaq	4(%rax), %rdx	#, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1280
	movq	176(%rax), %rax	# cxt_26(D)->membuf.aend, D.22121
	cmpq	%rax, %rdx	# D.22121, D.22121
	jbe	.L582	#,
.LBB166:
	movq	-328(%rbp), %rax	# cxt, tmp1281
	movq	160(%rax), %rax	# cxt_26(D)->membuf.asiz, D.22112
	addl	$8195, %eax	#, D.22116
	andl	$-8192, %eax	#, tmp1282
	movl	%eax, -204(%rbp)	# tmp1282, nsz
	movq	-328(%rbp), %rax	# cxt, tmp1283
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movq	%rax, %rdx	# D.22121, D.22115
	movq	-328(%rbp), %rax	# cxt, tmp1284
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	subq	%rax, %rdx	# D.22115, D.22115
	movq	%rdx, %rax	# D.22115, D.22115
	movl	%eax, -200(%rbp)	# D.22115, offset
	movl	-204(%rbp), %eax	# nsz, tmp1285
	movslq	%eax, %rdx	# tmp1285, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1286
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	movq	%rdx, %rsi	# D.22112,
	movq	%rax, %rdi	# D.22121,
	call	Perl_safesysrealloc	#
	movq	-328(%rbp), %rdx	# cxt, tmp1287
	movq	%rax, 152(%rdx)	# D.22113, cxt_26(D)->membuf.arena
	movl	-204(%rbp), %eax	# nsz, tmp1288
	movslq	%eax, %rdx	# tmp1288, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1289
	movq	%rdx, 160(%rax)	# D.22112, cxt_26(D)->membuf.asiz
	movq	-328(%rbp), %rax	# cxt, tmp1290
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-200(%rbp), %eax	# offset, tmp1291
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1292
	movq	%rdx, 168(%rax)	# D.22121, cxt_26(D)->membuf.aptr
	movq	-328(%rbp), %rax	# cxt, tmp1293
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-204(%rbp), %eax	# nsz, tmp1294
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1295
	movq	%rdx, 176(%rax)	# D.22121, cxt_26(D)->membuf.aend
.L582:
.LBE166:
	.loc 1 3044 0 discriminator 2
	movq	-328(%rbp), %rax	# cxt, tmp1297
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movq	%rax, %rdx	# D.22121, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1298
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	andq	$-4, %rax	#, D.22112
	cmpq	%rax, %rdx	# D.22112, D.22112
	jne	.L583	#,
	.loc 1 3044 0 discriminator 1
	movq	-328(%rbp), %rax	# cxt, tmp1299
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movl	-308(%rbp), %edx	# classnum, classnum.306
	movl	%edx, (%rax)	# classnum.306, MEM[(int *)_510]
	jmp	.L584	#
.L583:
	.loc 1 3044 0 discriminator 2
	movq	-328(%rbp), %rax	# cxt, tmp1300
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movl	-308(%rbp), %edx	# MEM[(char * {ref-all})&classnum], D.22108
	movl	%edx, (%rax)	# D.22108, MEM[(char * {ref-all})_512]
.L584:
	.loc 1 3044 0 discriminator 1
	movq	-328(%rbp), %rax	# cxt, tmp1301
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	leaq	4(%rax), %rdx	#, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1302
	movq	%rdx, 168(%rax)	# D.22121, cxt_26(D)->membuf.aptr
.LBE165:
	jmp	.L588	#
.L581:
	.loc 1 3044 0 discriminator 2
	movq	-328(%rbp), %rax	# cxt, tmp1304
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	leaq	-308(%rbp), %rcx	#, tmp1305
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp1305,
	movq	%rax, %rdi	# D.22120,
	call	Perl_PerlIO_write	#
	cmpq	$4, %rax	#, D.22115
	je	.L588	#,
	.loc 1 3044 0 discriminator 1
	movl	$-1, %eax	#, D.22108
	jmp	.L657	#
.L573:
.LBB167:
	.loc 1 3046 0 is_stmt 1
	movl	-308(%rbp), %eax	# classnum, classnum.307
	movb	%al, -316(%rbp)	# classnum.307, cnum
	.loc 1 3047 0
	movq	-328(%rbp), %rax	# cxt, tmp1306
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	testq	%rax, %rax	# D.22120
	jne	.L585	#,
	.loc 1 3047 0 is_stmt 0 discriminator 1
	movq	-328(%rbp), %rax	# cxt, tmp1307
	movq	168(%rax), %rdx	# cxt_26(D)->membuf.aptr, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1308
	movq	176(%rax), %rax	# cxt_26(D)->membuf.aend, D.22121
	cmpq	%rax, %rdx	# D.22121, D.22121
	jae	.L586	#,
	movq	-328(%rbp), %rax	# cxt, tmp1309
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	leaq	1(%rax), %rcx	#, D.22121
	movq	-328(%rbp), %rdx	# cxt, tmp1310
	movq	%rcx, 168(%rdx)	# D.22121, cxt_26(D)->membuf.aptr
	movzbl	-316(%rbp), %edx	# cnum, cnum.308
	movb	%dl, (%rax)	# cnum.308, *_526
	jmp	.L580	#
.L586:
.LBB168:
	.loc 1 3047 0 discriminator 2
	movq	-328(%rbp), %rax	# cxt, tmp1311
	movq	160(%rax), %rax	# cxt_26(D)->membuf.asiz, D.22112
	addl	$8192, %eax	#, D.22116
	andl	$-8192, %eax	#, tmp1312
	movl	%eax, -196(%rbp)	# tmp1312, nsz
	movq	-328(%rbp), %rax	# cxt, tmp1313
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movq	%rax, %rdx	# D.22121, D.22115
	movq	-328(%rbp), %rax	# cxt, tmp1314
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	subq	%rax, %rdx	# D.22115, D.22115
	movq	%rdx, %rax	# D.22115, D.22115
	movl	%eax, -192(%rbp)	# D.22115, offset
	movl	-196(%rbp), %eax	# nsz, tmp1315
	movslq	%eax, %rdx	# tmp1315, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1316
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	movq	%rdx, %rsi	# D.22112,
	movq	%rax, %rdi	# D.22121,
	call	Perl_safesysrealloc	#
	movq	-328(%rbp), %rdx	# cxt, tmp1317
	movq	%rax, 152(%rdx)	# D.22113, cxt_26(D)->membuf.arena
	movl	-196(%rbp), %eax	# nsz, tmp1318
	movslq	%eax, %rdx	# tmp1318, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1319
	movq	%rdx, 160(%rax)	# D.22112, cxt_26(D)->membuf.asiz
	movq	-328(%rbp), %rax	# cxt, tmp1320
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-192(%rbp), %eax	# offset, tmp1321
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1322
	movq	%rdx, 168(%rax)	# D.22121, cxt_26(D)->membuf.aptr
	movq	-328(%rbp), %rax	# cxt, tmp1323
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-196(%rbp), %eax	# nsz, tmp1324
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1325
	movq	%rdx, 176(%rax)	# D.22121, cxt_26(D)->membuf.aend
.LBE168:
	movq	-328(%rbp), %rax	# cxt, tmp1327
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	leaq	1(%rax), %rcx	#, D.22121
	movq	-328(%rbp), %rdx	# cxt, tmp1328
	movq	%rcx, 168(%rdx)	# D.22121, cxt_26(D)->membuf.aptr
	movzbl	-316(%rbp), %edx	# cnum, cnum.309
	movb	%dl, (%rax)	# cnum.309, *_552
.LBE167:
	jmp	.L588	#
.L585:
.LBB169:
	movzbl	-316(%rbp), %edx	# cnum, D.22108
	movq	-328(%rbp), %rax	# cxt, tmp1329
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	movl	%edx, %esi	# D.22108,
	movq	%rax, %rdi	# D.22120,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22108
	jne	.L580	#,
	.loc 1 3047 0 discriminator 1
	movl	$-1, %eax	#, D.22108
	jmp	.L657	#
.L580:
.LBE169:
	jmp	.L588	#
.L572:
	.loc 1 3050 0 is_stmt 1
	movzbl	-319(%rbp), %eax	# flags, D.22108
	andl	$4, %eax	#, D.22108
	testl	%eax, %eax	# D.22108
	je	.L589	#,
	.loc 1 3051 0
	movq	-328(%rbp), %rax	# cxt, tmp1330
	movl	80(%rax), %eax	# cxt_26(D)->netorder, D.22108
	testl	%eax, %eax	# D.22108
	je	.L590	#,
.LBB170:
	.loc 1 3051 0 is_stmt 0 discriminator 1
	movl	-312(%rbp), %eax	# len, len.310
	cltq
	movq	%rax, %rdi	# D.22115,
	call	Perl_my_htonl	#
	movl	%eax, -80(%rbp)	# y.311, y
	movq	-328(%rbp), %rax	# cxt, tmp1331
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	testq	%rax, %rax	# D.22120
	jne	.L591	#,
.LBB171:
	movq	-328(%rbp), %rax	# cxt, tmp1332
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	leaq	4(%rax), %rdx	#, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1333
	movq	176(%rax), %rax	# cxt_26(D)->membuf.aend, D.22121
	cmpq	%rax, %rdx	# D.22121, D.22121
	jbe	.L592	#,
.LBB172:
	movq	-328(%rbp), %rax	# cxt, tmp1334
	movq	160(%rax), %rax	# cxt_26(D)->membuf.asiz, D.22112
	addl	$8195, %eax	#, D.22116
	andl	$-8192, %eax	#, tmp1335
	movl	%eax, -188(%rbp)	# tmp1335, nsz
	movq	-328(%rbp), %rax	# cxt, tmp1336
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movq	%rax, %rdx	# D.22121, D.22115
	movq	-328(%rbp), %rax	# cxt, tmp1337
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	subq	%rax, %rdx	# D.22115, D.22115
	movq	%rdx, %rax	# D.22115, D.22115
	movl	%eax, -184(%rbp)	# D.22115, offset
	movl	-188(%rbp), %eax	# nsz, tmp1338
	movslq	%eax, %rdx	# tmp1338, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1339
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	movq	%rdx, %rsi	# D.22112,
	movq	%rax, %rdi	# D.22121,
	call	Perl_safesysrealloc	#
	movq	-328(%rbp), %rdx	# cxt, tmp1340
	movq	%rax, 152(%rdx)	# D.22113, cxt_26(D)->membuf.arena
	movl	-188(%rbp), %eax	# nsz, tmp1341
	movslq	%eax, %rdx	# tmp1341, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1342
	movq	%rdx, 160(%rax)	# D.22112, cxt_26(D)->membuf.asiz
	movq	-328(%rbp), %rax	# cxt, tmp1343
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-184(%rbp), %eax	# offset, tmp1344
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1345
	movq	%rdx, 168(%rax)	# D.22121, cxt_26(D)->membuf.aptr
	movq	-328(%rbp), %rax	# cxt, tmp1346
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-188(%rbp), %eax	# nsz, tmp1347
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1348
	movq	%rdx, 176(%rax)	# D.22121, cxt_26(D)->membuf.aend
.L592:
.LBE172:
	.loc 1 3051 0 discriminator 2
	movq	-328(%rbp), %rax	# cxt, tmp1350
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movq	%rax, %rdx	# D.22121, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1351
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	andq	$-4, %rax	#, D.22112
	cmpq	%rax, %rdx	# D.22112, D.22112
	jne	.L593	#,
	.loc 1 3051 0 discriminator 1
	movq	-328(%rbp), %rax	# cxt, tmp1352
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movl	-80(%rbp), %edx	# y, y.312
	movl	%edx, (%rax)	# y.312, MEM[(int *)_597]
	jmp	.L594	#
.L593:
	.loc 1 3051 0 discriminator 2
	movq	-328(%rbp), %rax	# cxt, tmp1353
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movl	-80(%rbp), %edx	# MEM[(char * {ref-all})&y], D.22108
	movl	%edx, (%rax)	# D.22108, MEM[(char * {ref-all})_599]
.L594:
	.loc 1 3051 0 discriminator 1
	movq	-328(%rbp), %rax	# cxt, tmp1354
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	leaq	4(%rax), %rdx	#, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1355
	movq	%rdx, 168(%rax)	# D.22121, cxt_26(D)->membuf.aptr
.LBE171:
	jmp	.L595	#
.L591:
	.loc 1 3051 0 discriminator 2
	movq	-328(%rbp), %rax	# cxt, tmp1357
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	leaq	-80(%rbp), %rcx	#, tmp1358
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp1358,
	movq	%rax, %rdi	# D.22120,
	call	Perl_PerlIO_write	#
	cmpq	$4, %rax	#, D.22115
	je	.L595	#,
	.loc 1 3051 0 discriminator 1
	movl	$-1, %eax	#, D.22108
	jmp	.L657	#
.L595:
.LBE170:
	jmp	.L596	#
.L590:
	.loc 1 3051 0 discriminator 2
	movq	-328(%rbp), %rax	# cxt, tmp1359
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	testq	%rax, %rax	# D.22120
	jne	.L597	#,
.LBB173:
	.loc 1 3051 0 discriminator 1
	movq	-328(%rbp), %rax	# cxt, tmp1360
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	leaq	4(%rax), %rdx	#, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1361
	movq	176(%rax), %rax	# cxt_26(D)->membuf.aend, D.22121
	cmpq	%rax, %rdx	# D.22121, D.22121
	jbe	.L598	#,
.LBB174:
	movq	-328(%rbp), %rax	# cxt, tmp1362
	movq	160(%rax), %rax	# cxt_26(D)->membuf.asiz, D.22112
	addl	$8195, %eax	#, D.22116
	andl	$-8192, %eax	#, tmp1363
	movl	%eax, -180(%rbp)	# tmp1363, nsz
	movq	-328(%rbp), %rax	# cxt, tmp1364
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movq	%rax, %rdx	# D.22121, D.22115
	movq	-328(%rbp), %rax	# cxt, tmp1365
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	subq	%rax, %rdx	# D.22115, D.22115
	movq	%rdx, %rax	# D.22115, D.22115
	movl	%eax, -176(%rbp)	# D.22115, offset
	movl	-180(%rbp), %eax	# nsz, tmp1366
	movslq	%eax, %rdx	# tmp1366, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1367
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	movq	%rdx, %rsi	# D.22112,
	movq	%rax, %rdi	# D.22121,
	call	Perl_safesysrealloc	#
	movq	-328(%rbp), %rdx	# cxt, tmp1368
	movq	%rax, 152(%rdx)	# D.22113, cxt_26(D)->membuf.arena
	movl	-180(%rbp), %eax	# nsz, tmp1369
	movslq	%eax, %rdx	# tmp1369, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1370
	movq	%rdx, 160(%rax)	# D.22112, cxt_26(D)->membuf.asiz
	movq	-328(%rbp), %rax	# cxt, tmp1371
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-176(%rbp), %eax	# offset, tmp1372
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1373
	movq	%rdx, 168(%rax)	# D.22121, cxt_26(D)->membuf.aptr
	movq	-328(%rbp), %rax	# cxt, tmp1374
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-180(%rbp), %eax	# nsz, tmp1375
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1376
	movq	%rdx, 176(%rax)	# D.22121, cxt_26(D)->membuf.aend
.L598:
.LBE174:
	.loc 1 3051 0 discriminator 2
	movq	-328(%rbp), %rax	# cxt, tmp1378
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movq	%rax, %rdx	# D.22121, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1379
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	andq	$-4, %rax	#, D.22112
	cmpq	%rax, %rdx	# D.22112, D.22112
	jne	.L599	#,
	.loc 1 3051 0 discriminator 1
	movq	-328(%rbp), %rax	# cxt, tmp1380
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movl	-312(%rbp), %edx	# len, len.313
	movl	%edx, (%rax)	# len.313, MEM[(int *)_638]
	jmp	.L600	#
.L599:
	.loc 1 3051 0 discriminator 2
	movq	-328(%rbp), %rax	# cxt, tmp1381
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movl	-312(%rbp), %edx	# MEM[(char * {ref-all})&len], D.22108
	movl	%edx, (%rax)	# D.22108, MEM[(char * {ref-all})_640]
.L600:
	.loc 1 3051 0 discriminator 1
	movq	-328(%rbp), %rax	# cxt, tmp1382
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	leaq	4(%rax), %rdx	#, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1383
	movq	%rdx, 168(%rax)	# D.22121, cxt_26(D)->membuf.aptr
.LBE173:
	jmp	.L596	#
.L597:
	.loc 1 3051 0 discriminator 2
	movq	-328(%rbp), %rax	# cxt, tmp1385
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	leaq	-312(%rbp), %rcx	#, tmp1386
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp1386,
	movq	%rax, %rdi	# D.22120,
	call	Perl_PerlIO_write	#
	cmpq	$4, %rax	#, D.22115
	je	.L596	#,
	.loc 1 3051 0 discriminator 1
	movl	$-1, %eax	#, D.22108
	jmp	.L657	#
.L589:
.LBB175:
	.loc 1 3053 0 is_stmt 1
	movl	-312(%rbp), %eax	# len, len.314
	movb	%al, -315(%rbp)	# len.314, clen
	.loc 1 3054 0
	movq	-328(%rbp), %rax	# cxt, tmp1387
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	testq	%rax, %rax	# D.22120
	jne	.L601	#,
	.loc 1 3054 0 is_stmt 0 discriminator 1
	movq	-328(%rbp), %rax	# cxt, tmp1388
	movq	168(%rax), %rdx	# cxt_26(D)->membuf.aptr, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1389
	movq	176(%rax), %rax	# cxt_26(D)->membuf.aend, D.22121
	cmpq	%rax, %rdx	# D.22121, D.22121
	jae	.L602	#,
	movq	-328(%rbp), %rax	# cxt, tmp1390
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	leaq	1(%rax), %rcx	#, D.22121
	movq	-328(%rbp), %rdx	# cxt, tmp1391
	movq	%rcx, 168(%rdx)	# D.22121, cxt_26(D)->membuf.aptr
	movzbl	-315(%rbp), %edx	# clen, clen.315
	movb	%dl, (%rax)	# clen.315, *_654
	jmp	.L596	#
.L602:
.LBB176:
	.loc 1 3054 0 discriminator 2
	movq	-328(%rbp), %rax	# cxt, tmp1392
	movq	160(%rax), %rax	# cxt_26(D)->membuf.asiz, D.22112
	addl	$8192, %eax	#, D.22116
	andl	$-8192, %eax	#, tmp1393
	movl	%eax, -172(%rbp)	# tmp1393, nsz
	movq	-328(%rbp), %rax	# cxt, tmp1394
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movq	%rax, %rdx	# D.22121, D.22115
	movq	-328(%rbp), %rax	# cxt, tmp1395
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	subq	%rax, %rdx	# D.22115, D.22115
	movq	%rdx, %rax	# D.22115, D.22115
	movl	%eax, -168(%rbp)	# D.22115, offset
	movl	-172(%rbp), %eax	# nsz, tmp1396
	movslq	%eax, %rdx	# tmp1396, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1397
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	movq	%rdx, %rsi	# D.22112,
	movq	%rax, %rdi	# D.22121,
	call	Perl_safesysrealloc	#
	movq	-328(%rbp), %rdx	# cxt, tmp1398
	movq	%rax, 152(%rdx)	# D.22113, cxt_26(D)->membuf.arena
	movl	-172(%rbp), %eax	# nsz, tmp1399
	movslq	%eax, %rdx	# tmp1399, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1400
	movq	%rdx, 160(%rax)	# D.22112, cxt_26(D)->membuf.asiz
	movq	-328(%rbp), %rax	# cxt, tmp1401
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-168(%rbp), %eax	# offset, tmp1402
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1403
	movq	%rdx, 168(%rax)	# D.22121, cxt_26(D)->membuf.aptr
	movq	-328(%rbp), %rax	# cxt, tmp1404
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-172(%rbp), %eax	# nsz, tmp1405
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1406
	movq	%rdx, 176(%rax)	# D.22121, cxt_26(D)->membuf.aend
.LBE176:
	movq	-328(%rbp), %rax	# cxt, tmp1408
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	leaq	1(%rax), %rcx	#, D.22121
	movq	-328(%rbp), %rdx	# cxt, tmp1409
	movq	%rcx, 168(%rdx)	# D.22121, cxt_26(D)->membuf.aptr
	movzbl	-315(%rbp), %edx	# clen, clen.316
	movb	%dl, (%rax)	# clen.316, *_680
	jmp	.L596	#
.L601:
	movzbl	-315(%rbp), %edx	# clen, D.22108
	movq	-328(%rbp), %rax	# cxt, tmp1410
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	movl	%edx, %esi	# D.22108,
	movq	%rax, %rdi	# D.22120,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22108
	jne	.L596	#,
	.loc 1 3054 0 discriminator 1
	movl	$-1, %eax	#, D.22108
	jmp	.L657	#
.L596:
.LBE175:
	.loc 1 3056 0 is_stmt 1
	movq	-328(%rbp), %rax	# cxt, tmp1411
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	testq	%rax, %rax	# D.22120
	jne	.L604	#,
.LBB177:
	.loc 1 3056 0 is_stmt 0 discriminator 1
	movq	-328(%rbp), %rax	# cxt, tmp1412
	movq	168(%rax), %rdx	# cxt_26(D)->membuf.aptr, D.22121
	movl	-312(%rbp), %eax	# len, len.317
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1413
	movq	176(%rax), %rax	# cxt_26(D)->membuf.aend, D.22121
	cmpq	%rax, %rdx	# D.22121, D.22121
	jbe	.L605	#,
.LBB178:
	movq	-328(%rbp), %rax	# cxt, tmp1414
	movq	160(%rax), %rax	# cxt_26(D)->membuf.asiz, D.22112
	movl	%eax, %edx	# D.22112, D.22116
	movl	-312(%rbp), %eax	# len, len.318
	addl	%edx, %eax	# D.22116, D.22116
	addl	$8191, %eax	#, D.22116
	andl	$-8192, %eax	#, tmp1415
	movl	%eax, -164(%rbp)	# tmp1415, nsz
	movq	-328(%rbp), %rax	# cxt, tmp1416
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movq	%rax, %rdx	# D.22121, D.22115
	movq	-328(%rbp), %rax	# cxt, tmp1417
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	subq	%rax, %rdx	# D.22115, D.22115
	movq	%rdx, %rax	# D.22115, D.22115
	movl	%eax, -160(%rbp)	# D.22115, offset
	movl	-164(%rbp), %eax	# nsz, tmp1418
	movslq	%eax, %rdx	# tmp1418, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1419
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	movq	%rdx, %rsi	# D.22112,
	movq	%rax, %rdi	# D.22121,
	call	Perl_safesysrealloc	#
	movq	-328(%rbp), %rdx	# cxt, tmp1420
	movq	%rax, 152(%rdx)	# D.22113, cxt_26(D)->membuf.arena
	movl	-164(%rbp), %eax	# nsz, tmp1421
	movslq	%eax, %rdx	# tmp1421, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1422
	movq	%rdx, 160(%rax)	# D.22112, cxt_26(D)->membuf.asiz
	movq	-328(%rbp), %rax	# cxt, tmp1423
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-160(%rbp), %eax	# offset, tmp1424
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1425
	movq	%rdx, 168(%rax)	# D.22121, cxt_26(D)->membuf.aptr
	movq	-328(%rbp), %rax	# cxt, tmp1426
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-164(%rbp), %eax	# nsz, tmp1427
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1428
	movq	%rdx, 176(%rax)	# D.22121, cxt_26(D)->membuf.aend
.L605:
.LBE178:
	.loc 1 3056 0 discriminator 2
	movl	-312(%rbp), %eax	# len, len.320
	movslq	%eax, %rdx	# len.320, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1430
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movq	-64(%rbp), %rcx	# class, tmp1431
	movq	%rcx, %rsi	# tmp1431,
	movq	%rax, %rdi	# D.22121,
	call	memcpy	#
	movq	-328(%rbp), %rax	# cxt, tmp1432
	movq	168(%rax), %rdx	# cxt_26(D)->membuf.aptr, D.22121
	movl	-312(%rbp), %eax	# len, len.321
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1433
	movq	%rdx, 168(%rax)	# D.22121, cxt_26(D)->membuf.aptr
.LBE177:
	jmp	.L588	#
.L604:
	movl	-312(%rbp), %eax	# len, len.322
	movslq	%eax, %rdx	# len.322, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1435
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	movq	-64(%rbp), %rcx	# class, tmp1436
	movq	%rcx, %rsi	# tmp1436,
	movq	%rax, %rdi	# D.22120,
	call	Perl_PerlIO_write	#
	movl	-312(%rbp), %edx	# len, len.323
	movslq	%edx, %rdx	# len.323, D.22115
	cmpq	%rdx, %rax	# D.22115, D.22115
	je	.L588	#,
	.loc 1 3056 0 discriminator 1
	movl	$-1, %eax	#, D.22108
	jmp	.L657	#
.L588:
	.loc 1 3060 0 is_stmt 1
	movzbl	-319(%rbp), %eax	# flags, D.22108
	andl	$8, %eax	#, D.22108
	testl	%eax, %eax	# D.22108
	je	.L606	#,
.LBB179:
	.loc 1 3061 0
	movq	-88(%rbp), %rax	# len2, len2.324
	movl	%eax, -304(%rbp)	# wlen2.325, wlen2
	.loc 1 3062 0
	movq	-328(%rbp), %rax	# cxt, tmp1437
	movl	80(%rax), %eax	# cxt_26(D)->netorder, D.22108
	testl	%eax, %eax	# D.22108
	je	.L607	#,
.LBB180:
	.loc 1 3062 0 is_stmt 0 discriminator 1
	movl	-304(%rbp), %eax	# wlen2, wlen2.326
	cltq
	movq	%rax, %rdi	# D.22115,
	call	Perl_my_htonl	#
	movl	%eax, -80(%rbp)	# y.327, y
	movq	-328(%rbp), %rax	# cxt, tmp1438
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	testq	%rax, %rax	# D.22120
	jne	.L608	#,
.LBB181:
	movq	-328(%rbp), %rax	# cxt, tmp1439
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	leaq	4(%rax), %rdx	#, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1440
	movq	176(%rax), %rax	# cxt_26(D)->membuf.aend, D.22121
	cmpq	%rax, %rdx	# D.22121, D.22121
	jbe	.L609	#,
.LBB182:
	movq	-328(%rbp), %rax	# cxt, tmp1441
	movq	160(%rax), %rax	# cxt_26(D)->membuf.asiz, D.22112
	addl	$8195, %eax	#, D.22116
	andl	$-8192, %eax	#, tmp1442
	movl	%eax, -156(%rbp)	# tmp1442, nsz
	movq	-328(%rbp), %rax	# cxt, tmp1443
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movq	%rax, %rdx	# D.22121, D.22115
	movq	-328(%rbp), %rax	# cxt, tmp1444
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	subq	%rax, %rdx	# D.22115, D.22115
	movq	%rdx, %rax	# D.22115, D.22115
	movl	%eax, -152(%rbp)	# D.22115, offset
	movl	-156(%rbp), %eax	# nsz, tmp1445
	movslq	%eax, %rdx	# tmp1445, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1446
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	movq	%rdx, %rsi	# D.22112,
	movq	%rax, %rdi	# D.22121,
	call	Perl_safesysrealloc	#
	movq	-328(%rbp), %rdx	# cxt, tmp1447
	movq	%rax, 152(%rdx)	# D.22113, cxt_26(D)->membuf.arena
	movl	-156(%rbp), %eax	# nsz, tmp1448
	movslq	%eax, %rdx	# tmp1448, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1449
	movq	%rdx, 160(%rax)	# D.22112, cxt_26(D)->membuf.asiz
	movq	-328(%rbp), %rax	# cxt, tmp1450
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-152(%rbp), %eax	# offset, tmp1451
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1452
	movq	%rdx, 168(%rax)	# D.22121, cxt_26(D)->membuf.aptr
	movq	-328(%rbp), %rax	# cxt, tmp1453
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-156(%rbp), %eax	# nsz, tmp1454
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1455
	movq	%rdx, 176(%rax)	# D.22121, cxt_26(D)->membuf.aend
.L609:
.LBE182:
	.loc 1 3062 0 discriminator 2
	movq	-328(%rbp), %rax	# cxt, tmp1457
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movq	%rax, %rdx	# D.22121, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1458
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	andq	$-4, %rax	#, D.22112
	cmpq	%rax, %rdx	# D.22112, D.22112
	jne	.L610	#,
	.loc 1 3062 0 discriminator 1
	movq	-328(%rbp), %rax	# cxt, tmp1459
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movl	-80(%rbp), %edx	# y, y.328
	movl	%edx, (%rax)	# y.328, MEM[(int *)_773]
	jmp	.L611	#
.L610:
	.loc 1 3062 0 discriminator 2
	movq	-328(%rbp), %rax	# cxt, tmp1460
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movl	-80(%rbp), %edx	# MEM[(char * {ref-all})&y], D.22108
	movl	%edx, (%rax)	# D.22108, MEM[(char * {ref-all})_775]
.L611:
	.loc 1 3062 0 discriminator 1
	movq	-328(%rbp), %rax	# cxt, tmp1461
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	leaq	4(%rax), %rdx	#, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1462
	movq	%rdx, 168(%rax)	# D.22121, cxt_26(D)->membuf.aptr
.LBE181:
	jmp	.L612	#
.L608:
	.loc 1 3062 0 discriminator 2
	movq	-328(%rbp), %rax	# cxt, tmp1464
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	leaq	-80(%rbp), %rcx	#, tmp1465
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp1465,
	movq	%rax, %rdi	# D.22120,
	call	Perl_PerlIO_write	#
	cmpq	$4, %rax	#, D.22115
	je	.L612	#,
	.loc 1 3062 0 discriminator 1
	movl	$-1, %eax	#, D.22108
.LBE180:
	jmp	.L657	#
.L612:
	jmp	.L614	#
.L607:
	.loc 1 3062 0 discriminator 2
	movq	-328(%rbp), %rax	# cxt, tmp1466
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	testq	%rax, %rax	# D.22120
	jne	.L615	#,
.LBB183:
	.loc 1 3062 0 discriminator 1
	movq	-328(%rbp), %rax	# cxt, tmp1467
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	leaq	4(%rax), %rdx	#, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1468
	movq	176(%rax), %rax	# cxt_26(D)->membuf.aend, D.22121
	cmpq	%rax, %rdx	# D.22121, D.22121
	jbe	.L616	#,
.LBB184:
	movq	-328(%rbp), %rax	# cxt, tmp1469
	movq	160(%rax), %rax	# cxt_26(D)->membuf.asiz, D.22112
	addl	$8195, %eax	#, D.22116
	andl	$-8192, %eax	#, tmp1470
	movl	%eax, -148(%rbp)	# tmp1470, nsz
	movq	-328(%rbp), %rax	# cxt, tmp1471
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movq	%rax, %rdx	# D.22121, D.22115
	movq	-328(%rbp), %rax	# cxt, tmp1472
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	subq	%rax, %rdx	# D.22115, D.22115
	movq	%rdx, %rax	# D.22115, D.22115
	movl	%eax, -144(%rbp)	# D.22115, offset
	movl	-148(%rbp), %eax	# nsz, tmp1473
	movslq	%eax, %rdx	# tmp1473, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1474
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	movq	%rdx, %rsi	# D.22112,
	movq	%rax, %rdi	# D.22121,
	call	Perl_safesysrealloc	#
	movq	-328(%rbp), %rdx	# cxt, tmp1475
	movq	%rax, 152(%rdx)	# D.22113, cxt_26(D)->membuf.arena
	movl	-148(%rbp), %eax	# nsz, tmp1476
	movslq	%eax, %rdx	# tmp1476, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1477
	movq	%rdx, 160(%rax)	# D.22112, cxt_26(D)->membuf.asiz
	movq	-328(%rbp), %rax	# cxt, tmp1478
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-144(%rbp), %eax	# offset, tmp1479
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1480
	movq	%rdx, 168(%rax)	# D.22121, cxt_26(D)->membuf.aptr
	movq	-328(%rbp), %rax	# cxt, tmp1481
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-148(%rbp), %eax	# nsz, tmp1482
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1483
	movq	%rdx, 176(%rax)	# D.22121, cxt_26(D)->membuf.aend
.L616:
.LBE184:
	.loc 1 3062 0 discriminator 2
	movq	-328(%rbp), %rax	# cxt, tmp1485
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movq	%rax, %rdx	# D.22121, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1486
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	andq	$-4, %rax	#, D.22112
	cmpq	%rax, %rdx	# D.22112, D.22112
	jne	.L617	#,
	.loc 1 3062 0 discriminator 1
	movq	-328(%rbp), %rax	# cxt, tmp1487
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movl	-304(%rbp), %edx	# wlen2, wlen2.329
	movl	%edx, (%rax)	# wlen2.329, MEM[(int *)_814]
	jmp	.L618	#
.L617:
	.loc 1 3062 0 discriminator 2
	movq	-328(%rbp), %rax	# cxt, tmp1488
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movl	-304(%rbp), %edx	# MEM[(char * {ref-all})&wlen2], D.22108
	movl	%edx, (%rax)	# D.22108, MEM[(char * {ref-all})_816]
.L618:
	.loc 1 3062 0 discriminator 1
	movq	-328(%rbp), %rax	# cxt, tmp1489
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	leaq	4(%rax), %rdx	#, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1490
	movq	%rdx, 168(%rax)	# D.22121, cxt_26(D)->membuf.aptr
.LBE183:
	jmp	.L614	#
.L615:
	.loc 1 3062 0 discriminator 2
	movq	-328(%rbp), %rax	# cxt, tmp1492
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	leaq	-304(%rbp), %rcx	#, tmp1493
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp1493,
	movq	%rax, %rdi	# D.22120,
	call	Perl_PerlIO_write	#
	cmpq	$4, %rax	#, D.22115
	je	.L614	#,
	.loc 1 3062 0 discriminator 1
	movl	$-1, %eax	#, D.22108
	jmp	.L657	#
.L614:
.LBE179:
	jmp	.L619	#
.L606:
.LBB185:
	.loc 1 3064 0 is_stmt 1
	movq	-88(%rbp), %rax	# len2, len2.330
	movb	%al, -314(%rbp)	# len2.330, clen
	.loc 1 3065 0
	movq	-328(%rbp), %rax	# cxt, tmp1494
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	testq	%rax, %rax	# D.22120
	jne	.L620	#,
	.loc 1 3065 0 is_stmt 0 discriminator 1
	movq	-328(%rbp), %rax	# cxt, tmp1495
	movq	168(%rax), %rdx	# cxt_26(D)->membuf.aptr, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1496
	movq	176(%rax), %rax	# cxt_26(D)->membuf.aend, D.22121
	cmpq	%rax, %rdx	# D.22121, D.22121
	jae	.L621	#,
	movq	-328(%rbp), %rax	# cxt, tmp1497
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	leaq	1(%rax), %rcx	#, D.22121
	movq	-328(%rbp), %rdx	# cxt, tmp1498
	movq	%rcx, 168(%rdx)	# D.22121, cxt_26(D)->membuf.aptr
	movzbl	-314(%rbp), %edx	# clen, clen.331
	movb	%dl, (%rax)	# clen.331, *_830
	jmp	.L619	#
.L621:
.LBB186:
	.loc 1 3065 0 discriminator 2
	movq	-328(%rbp), %rax	# cxt, tmp1499
	movq	160(%rax), %rax	# cxt_26(D)->membuf.asiz, D.22112
	addl	$8192, %eax	#, D.22116
	andl	$-8192, %eax	#, tmp1500
	movl	%eax, -140(%rbp)	# tmp1500, nsz
	movq	-328(%rbp), %rax	# cxt, tmp1501
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movq	%rax, %rdx	# D.22121, D.22115
	movq	-328(%rbp), %rax	# cxt, tmp1502
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	subq	%rax, %rdx	# D.22115, D.22115
	movq	%rdx, %rax	# D.22115, D.22115
	movl	%eax, -136(%rbp)	# D.22115, offset
	movl	-140(%rbp), %eax	# nsz, tmp1503
	movslq	%eax, %rdx	# tmp1503, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1504
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	movq	%rdx, %rsi	# D.22112,
	movq	%rax, %rdi	# D.22121,
	call	Perl_safesysrealloc	#
	movq	-328(%rbp), %rdx	# cxt, tmp1505
	movq	%rax, 152(%rdx)	# D.22113, cxt_26(D)->membuf.arena
	movl	-140(%rbp), %eax	# nsz, tmp1506
	movslq	%eax, %rdx	# tmp1506, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1507
	movq	%rdx, 160(%rax)	# D.22112, cxt_26(D)->membuf.asiz
	movq	-328(%rbp), %rax	# cxt, tmp1508
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-136(%rbp), %eax	# offset, tmp1509
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1510
	movq	%rdx, 168(%rax)	# D.22121, cxt_26(D)->membuf.aptr
	movq	-328(%rbp), %rax	# cxt, tmp1511
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-140(%rbp), %eax	# nsz, tmp1512
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1513
	movq	%rdx, 176(%rax)	# D.22121, cxt_26(D)->membuf.aend
.LBE186:
	movq	-328(%rbp), %rax	# cxt, tmp1515
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	leaq	1(%rax), %rcx	#, D.22121
	movq	-328(%rbp), %rdx	# cxt, tmp1516
	movq	%rcx, 168(%rdx)	# D.22121, cxt_26(D)->membuf.aptr
	movzbl	-314(%rbp), %edx	# clen, clen.332
	movb	%dl, (%rax)	# clen.332, *_856
	jmp	.L619	#
.L620:
	movzbl	-314(%rbp), %edx	# clen, D.22108
	movq	-328(%rbp), %rax	# cxt, tmp1517
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	movl	%edx, %esi	# D.22108,
	movq	%rax, %rdi	# D.22120,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22108
	jne	.L619	#,
	.loc 1 3065 0 discriminator 1
	movl	$-1, %eax	#, D.22108
	jmp	.L657	#
.L619:
.LBE185:
	.loc 1 3067 0 is_stmt 1
	movq	-88(%rbp), %rax	# len2, len2.333
	testq	%rax, %rax	# len2.333
	je	.L623	#,
	.loc 1 3068 0
	movq	-328(%rbp), %rax	# cxt, tmp1518
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	testq	%rax, %rax	# D.22120
	jne	.L624	#,
.LBB187:
	.loc 1 3068 0 is_stmt 0 discriminator 1
	movq	-328(%rbp), %rax	# cxt, tmp1519
	movq	168(%rax), %rdx	# cxt_26(D)->membuf.aptr, D.22121
	movq	-88(%rbp), %rax	# len2, len2.334
	addq	%rax, %rdx	# len2.334, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1520
	movq	176(%rax), %rax	# cxt_26(D)->membuf.aend, D.22121
	cmpq	%rax, %rdx	# D.22121, D.22121
	jbe	.L625	#,
.LBB188:
	movq	-88(%rbp), %rax	# len2, len2.335
	movl	%eax, %edx	# len2.335, D.22116
	movq	-328(%rbp), %rax	# cxt, tmp1521
	movq	160(%rax), %rax	# cxt_26(D)->membuf.asiz, D.22112
	addl	%edx, %eax	# D.22116, D.22116
	addl	$8191, %eax	#, D.22116
	andl	$-8192, %eax	#, tmp1522
	movl	%eax, -132(%rbp)	# tmp1522, nsz
	movq	-328(%rbp), %rax	# cxt, tmp1523
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movq	%rax, %rdx	# D.22121, D.22115
	movq	-328(%rbp), %rax	# cxt, tmp1524
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	subq	%rax, %rdx	# D.22115, D.22115
	movq	%rdx, %rax	# D.22115, D.22115
	movl	%eax, -128(%rbp)	# D.22115, offset
	movl	-132(%rbp), %eax	# nsz, tmp1525
	movslq	%eax, %rdx	# tmp1525, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1526
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	movq	%rdx, %rsi	# D.22112,
	movq	%rax, %rdi	# D.22121,
	call	Perl_safesysrealloc	#
	movq	-328(%rbp), %rdx	# cxt, tmp1527
	movq	%rax, 152(%rdx)	# D.22113, cxt_26(D)->membuf.arena
	movl	-132(%rbp), %eax	# nsz, tmp1528
	movslq	%eax, %rdx	# tmp1528, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1529
	movq	%rdx, 160(%rax)	# D.22112, cxt_26(D)->membuf.asiz
	movq	-328(%rbp), %rax	# cxt, tmp1530
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-128(%rbp), %eax	# offset, tmp1531
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1532
	movq	%rdx, 168(%rax)	# D.22121, cxt_26(D)->membuf.aptr
	movq	-328(%rbp), %rax	# cxt, tmp1533
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-132(%rbp), %eax	# nsz, tmp1534
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1535
	movq	%rdx, 176(%rax)	# D.22121, cxt_26(D)->membuf.aend
.L625:
.LBE188:
	.loc 1 3068 0 discriminator 2
	movq	-88(%rbp), %rdx	# len2, len2.336
	movq	-328(%rbp), %rax	# cxt, tmp1537
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movq	-32(%rbp), %rcx	# pv, tmp1538
	movq	%rcx, %rsi	# tmp1538,
	movq	%rax, %rdi	# D.22121,
	call	memcpy	#
	movq	-328(%rbp), %rax	# cxt, tmp1539
	movq	168(%rax), %rdx	# cxt_26(D)->membuf.aptr, D.22121
	movq	-88(%rbp), %rax	# len2, len2.337
	addq	%rax, %rdx	# len2.337, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1540
	movq	%rdx, 168(%rax)	# D.22121, cxt_26(D)->membuf.aptr
.LBE187:
	jmp	.L623	#
.L624:
	movq	-88(%rbp), %rdx	# len2, len2.338
	movq	-328(%rbp), %rax	# cxt, tmp1542
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	movq	-32(%rbp), %rcx	# pv, tmp1543
	movq	%rcx, %rsi	# tmp1543,
	movq	%rax, %rdi	# D.22120,
	call	Perl_PerlIO_write	#
	movq	-88(%rbp), %rdx	# len2, len2.339
	cmpq	%rdx, %rax	# len2.340, D.22115
	je	.L623	#,
	.loc 1 3068 0 discriminator 1
	movl	$-1, %eax	#, D.22108
	jmp	.L657	#
.L623:
	.loc 1 3071 0 is_stmt 1
	movzbl	-319(%rbp), %eax	# flags, flags.341
	testb	%al, %al	# flags.341
	jns	.L626	#,
.LBB189:
	.loc 1 3072 0
	movl	-284(%rbp), %eax	# count, tmp1544
	subl	$1, %eax	#, len3.342
	movl	%eax, -304(%rbp)	# len3.342, len3
	.loc 1 3073 0
	movzbl	-319(%rbp), %eax	# flags, D.22108
	andl	$16, %eax	#, D.22108
	testl	%eax, %eax	# D.22108
	je	.L627	#,
	.loc 1 3074 0
	movq	-328(%rbp), %rax	# cxt, tmp1545
	movl	80(%rax), %eax	# cxt_26(D)->netorder, D.22108
	testl	%eax, %eax	# D.22108
	je	.L628	#,
.LBB190:
	.loc 1 3074 0 is_stmt 0 discriminator 1
	movl	-304(%rbp), %eax	# len3, len3.343
	cltq
	movq	%rax, %rdi	# D.22115,
	call	Perl_my_htonl	#
	movl	%eax, -80(%rbp)	# y.344, y
	movq	-328(%rbp), %rax	# cxt, tmp1546
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	testq	%rax, %rax	# D.22120
	jne	.L629	#,
.LBB191:
	movq	-328(%rbp), %rax	# cxt, tmp1547
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	leaq	4(%rax), %rdx	#, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1548
	movq	176(%rax), %rax	# cxt_26(D)->membuf.aend, D.22121
	cmpq	%rax, %rdx	# D.22121, D.22121
	jbe	.L630	#,
.LBB192:
	movq	-328(%rbp), %rax	# cxt, tmp1549
	movq	160(%rax), %rax	# cxt_26(D)->membuf.asiz, D.22112
	addl	$8195, %eax	#, D.22116
	andl	$-8192, %eax	#, tmp1550
	movl	%eax, -124(%rbp)	# tmp1550, nsz
	movq	-328(%rbp), %rax	# cxt, tmp1551
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movq	%rax, %rdx	# D.22121, D.22115
	movq	-328(%rbp), %rax	# cxt, tmp1552
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	subq	%rax, %rdx	# D.22115, D.22115
	movq	%rdx, %rax	# D.22115, D.22115
	movl	%eax, -120(%rbp)	# D.22115, offset
	movl	-124(%rbp), %eax	# nsz, tmp1553
	movslq	%eax, %rdx	# tmp1553, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1554
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	movq	%rdx, %rsi	# D.22112,
	movq	%rax, %rdi	# D.22121,
	call	Perl_safesysrealloc	#
	movq	-328(%rbp), %rdx	# cxt, tmp1555
	movq	%rax, 152(%rdx)	# D.22113, cxt_26(D)->membuf.arena
	movl	-124(%rbp), %eax	# nsz, tmp1556
	movslq	%eax, %rdx	# tmp1556, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1557
	movq	%rdx, 160(%rax)	# D.22112, cxt_26(D)->membuf.asiz
	movq	-328(%rbp), %rax	# cxt, tmp1558
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-120(%rbp), %eax	# offset, tmp1559
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1560
	movq	%rdx, 168(%rax)	# D.22121, cxt_26(D)->membuf.aptr
	movq	-328(%rbp), %rax	# cxt, tmp1561
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-124(%rbp), %eax	# nsz, tmp1562
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1563
	movq	%rdx, 176(%rax)	# D.22121, cxt_26(D)->membuf.aend
.L630:
.LBE192:
	.loc 1 3074 0 discriminator 2
	movq	-328(%rbp), %rax	# cxt, tmp1565
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movq	%rax, %rdx	# D.22121, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1566
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	andq	$-4, %rax	#, D.22112
	cmpq	%rax, %rdx	# D.22112, D.22112
	jne	.L631	#,
	.loc 1 3074 0 discriminator 1
	movq	-328(%rbp), %rax	# cxt, tmp1567
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movl	-80(%rbp), %edx	# y, y.345
	movl	%edx, (%rax)	# y.345, MEM[(int *)_946]
	jmp	.L632	#
.L631:
	.loc 1 3074 0 discriminator 2
	movq	-328(%rbp), %rax	# cxt, tmp1568
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movl	-80(%rbp), %edx	# MEM[(char * {ref-all})&y], D.22108
	movl	%edx, (%rax)	# D.22108, MEM[(char * {ref-all})_948]
.L632:
	.loc 1 3074 0 discriminator 1
	movq	-328(%rbp), %rax	# cxt, tmp1569
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	leaq	4(%rax), %rdx	#, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1570
	movq	%rdx, 168(%rax)	# D.22121, cxt_26(D)->membuf.aptr
.LBE191:
	jmp	.L633	#
.L629:
	.loc 1 3074 0 discriminator 2
	movq	-328(%rbp), %rax	# cxt, tmp1572
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	leaq	-80(%rbp), %rcx	#, tmp1573
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp1573,
	movq	%rax, %rdi	# D.22120,
	call	Perl_PerlIO_write	#
	cmpq	$4, %rax	#, D.22115
	je	.L633	#,
	.loc 1 3074 0 discriminator 1
	movl	$-1, %eax	#, D.22108
.LBE190:
	jmp	.L657	#
.L633:
	jmp	.L635	#
.L628:
	.loc 1 3074 0 discriminator 2
	movq	-328(%rbp), %rax	# cxt, tmp1574
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	testq	%rax, %rax	# D.22120
	jne	.L636	#,
.LBB193:
	.loc 1 3074 0 discriminator 1
	movq	-328(%rbp), %rax	# cxt, tmp1575
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	leaq	4(%rax), %rdx	#, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1576
	movq	176(%rax), %rax	# cxt_26(D)->membuf.aend, D.22121
	cmpq	%rax, %rdx	# D.22121, D.22121
	jbe	.L637	#,
.LBB194:
	movq	-328(%rbp), %rax	# cxt, tmp1577
	movq	160(%rax), %rax	# cxt_26(D)->membuf.asiz, D.22112
	addl	$8195, %eax	#, D.22116
	andl	$-8192, %eax	#, tmp1578
	movl	%eax, -116(%rbp)	# tmp1578, nsz
	movq	-328(%rbp), %rax	# cxt, tmp1579
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movq	%rax, %rdx	# D.22121, D.22115
	movq	-328(%rbp), %rax	# cxt, tmp1580
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	subq	%rax, %rdx	# D.22115, D.22115
	movq	%rdx, %rax	# D.22115, D.22115
	movl	%eax, -112(%rbp)	# D.22115, offset
	movl	-116(%rbp), %eax	# nsz, tmp1581
	movslq	%eax, %rdx	# tmp1581, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1582
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	movq	%rdx, %rsi	# D.22112,
	movq	%rax, %rdi	# D.22121,
	call	Perl_safesysrealloc	#
	movq	-328(%rbp), %rdx	# cxt, tmp1583
	movq	%rax, 152(%rdx)	# D.22113, cxt_26(D)->membuf.arena
	movl	-116(%rbp), %eax	# nsz, tmp1584
	movslq	%eax, %rdx	# tmp1584, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1585
	movq	%rdx, 160(%rax)	# D.22112, cxt_26(D)->membuf.asiz
	movq	-328(%rbp), %rax	# cxt, tmp1586
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-112(%rbp), %eax	# offset, tmp1587
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1588
	movq	%rdx, 168(%rax)	# D.22121, cxt_26(D)->membuf.aptr
	movq	-328(%rbp), %rax	# cxt, tmp1589
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-116(%rbp), %eax	# nsz, tmp1590
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1591
	movq	%rdx, 176(%rax)	# D.22121, cxt_26(D)->membuf.aend
.L637:
.LBE194:
	.loc 1 3074 0 discriminator 2
	movq	-328(%rbp), %rax	# cxt, tmp1593
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movq	%rax, %rdx	# D.22121, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1594
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	andq	$-4, %rax	#, D.22112
	cmpq	%rax, %rdx	# D.22112, D.22112
	jne	.L638	#,
	.loc 1 3074 0 discriminator 1
	movq	-328(%rbp), %rax	# cxt, tmp1595
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movl	-304(%rbp), %edx	# len3, len3.346
	movl	%edx, (%rax)	# len3.346, MEM[(int *)_987]
	jmp	.L639	#
.L638:
	.loc 1 3074 0 discriminator 2
	movq	-328(%rbp), %rax	# cxt, tmp1596
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movl	-304(%rbp), %edx	# MEM[(char * {ref-all})&len3], D.22108
	movl	%edx, (%rax)	# D.22108, MEM[(char * {ref-all})_989]
.L639:
	.loc 1 3074 0 discriminator 1
	movq	-328(%rbp), %rax	# cxt, tmp1597
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	leaq	4(%rax), %rdx	#, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1598
	movq	%rdx, 168(%rax)	# D.22121, cxt_26(D)->membuf.aptr
.LBE193:
	jmp	.L635	#
.L636:
	.loc 1 3074 0 discriminator 2
	movq	-328(%rbp), %rax	# cxt, tmp1600
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	leaq	-304(%rbp), %rcx	#, tmp1601
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp1601,
	movq	%rax, %rdi	# D.22120,
	call	Perl_PerlIO_write	#
	cmpq	$4, %rax	#, D.22115
	je	.L635	#,
	.loc 1 3074 0 discriminator 1
	movl	$-1, %eax	#, D.22108
	jmp	.L657	#
.L627:
.LBB195:
	.loc 1 3076 0 is_stmt 1
	movl	-304(%rbp), %eax	# len3, len3.347
	movb	%al, -313(%rbp)	# len3.347, clen
	.loc 1 3077 0
	movq	-328(%rbp), %rax	# cxt, tmp1602
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	testq	%rax, %rax	# D.22120
	jne	.L640	#,
	.loc 1 3077 0 is_stmt 0 discriminator 1
	movq	-328(%rbp), %rax	# cxt, tmp1603
	movq	168(%rax), %rdx	# cxt_26(D)->membuf.aptr, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1604
	movq	176(%rax), %rax	# cxt_26(D)->membuf.aend, D.22121
	cmpq	%rax, %rdx	# D.22121, D.22121
	jae	.L641	#,
	movq	-328(%rbp), %rax	# cxt, tmp1605
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	leaq	1(%rax), %rcx	#, D.22121
	movq	-328(%rbp), %rdx	# cxt, tmp1606
	movq	%rcx, 168(%rdx)	# D.22121, cxt_26(D)->membuf.aptr
	movzbl	-313(%rbp), %edx	# clen, clen.348
	movb	%dl, (%rax)	# clen.348, *_1003
	jmp	.L635	#
.L641:
.LBB196:
	.loc 1 3077 0 discriminator 2
	movq	-328(%rbp), %rax	# cxt, tmp1607
	movq	160(%rax), %rax	# cxt_26(D)->membuf.asiz, D.22112
	addl	$8192, %eax	#, D.22116
	andl	$-8192, %eax	#, tmp1608
	movl	%eax, -108(%rbp)	# tmp1608, nsz
	movq	-328(%rbp), %rax	# cxt, tmp1609
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movq	%rax, %rdx	# D.22121, D.22115
	movq	-328(%rbp), %rax	# cxt, tmp1610
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	subq	%rax, %rdx	# D.22115, D.22115
	movq	%rdx, %rax	# D.22115, D.22115
	movl	%eax, -104(%rbp)	# D.22115, offset
	movl	-108(%rbp), %eax	# nsz, tmp1611
	movslq	%eax, %rdx	# tmp1611, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1612
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	movq	%rdx, %rsi	# D.22112,
	movq	%rax, %rdi	# D.22121,
	call	Perl_safesysrealloc	#
	movq	-328(%rbp), %rdx	# cxt, tmp1613
	movq	%rax, 152(%rdx)	# D.22113, cxt_26(D)->membuf.arena
	movl	-108(%rbp), %eax	# nsz, tmp1614
	movslq	%eax, %rdx	# tmp1614, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1615
	movq	%rdx, 160(%rax)	# D.22112, cxt_26(D)->membuf.asiz
	movq	-328(%rbp), %rax	# cxt, tmp1616
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-104(%rbp), %eax	# offset, tmp1617
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1618
	movq	%rdx, 168(%rax)	# D.22121, cxt_26(D)->membuf.aptr
	movq	-328(%rbp), %rax	# cxt, tmp1619
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-108(%rbp), %eax	# nsz, tmp1620
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1621
	movq	%rdx, 176(%rax)	# D.22121, cxt_26(D)->membuf.aend
.LBE196:
	movq	-328(%rbp), %rax	# cxt, tmp1623
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	leaq	1(%rax), %rcx	#, D.22121
	movq	-328(%rbp), %rdx	# cxt, tmp1624
	movq	%rcx, 168(%rdx)	# D.22121, cxt_26(D)->membuf.aptr
	movzbl	-313(%rbp), %edx	# clen, clen.349
	movb	%dl, (%rax)	# clen.349, *_1029
	jmp	.L635	#
.L640:
	movzbl	-313(%rbp), %edx	# clen, D.22108
	movq	-328(%rbp), %rax	# cxt, tmp1625
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	movl	%edx, %esi	# D.22108,
	movq	%rax, %rdi	# D.22120,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22108
	jne	.L635	#,
	.loc 1 3077 0 discriminator 1
	movl	$-1, %eax	#, D.22108
	jmp	.L657	#
.L635:
.LBE195:
	.loc 1 3085 0 is_stmt 1
	movl	$1, -300(%rbp)	#, i
	jmp	.L643	#
.L649:
.LBB197:
	.loc 1 3086 0
	movl	-300(%rbp), %eax	# i, tmp1626
	cltq
	leaq	0(,%rax,8), %rdx	#, D.22112
	movq	-40(%rbp), %rax	# ary, tmp1627
	addq	%rdx, %rax	# D.22112, D.22118
	movq	(%rax), %rax	# *_1039, D.22119
	cltq
	movq	%rax, %rdi	# D.22115,
	call	Perl_my_htonl	#
	movl	%eax, -80(%rbp)	# tagval.350, tagval
	.loc 1 3087 0
	movq	-328(%rbp), %rax	# cxt, tmp1628
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	testq	%rax, %rax	# D.22120
	jne	.L644	#,
.LBB198:
	.loc 1 3087 0 is_stmt 0 discriminator 1
	movq	-328(%rbp), %rax	# cxt, tmp1629
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	leaq	4(%rax), %rdx	#, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1630
	movq	176(%rax), %rax	# cxt_26(D)->membuf.aend, D.22121
	cmpq	%rax, %rdx	# D.22121, D.22121
	jbe	.L645	#,
.LBB199:
	movq	-328(%rbp), %rax	# cxt, tmp1631
	movq	160(%rax), %rax	# cxt_26(D)->membuf.asiz, D.22112
	addl	$8195, %eax	#, D.22116
	andl	$-8192, %eax	#, tmp1632
	movl	%eax, -100(%rbp)	# tmp1632, nsz
	movq	-328(%rbp), %rax	# cxt, tmp1633
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movq	%rax, %rdx	# D.22121, D.22115
	movq	-328(%rbp), %rax	# cxt, tmp1634
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	subq	%rax, %rdx	# D.22115, D.22115
	movq	%rdx, %rax	# D.22115, D.22115
	movl	%eax, -96(%rbp)	# D.22115, offset
	movl	-100(%rbp), %eax	# nsz, tmp1635
	movslq	%eax, %rdx	# tmp1635, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1636
	movq	152(%rax), %rax	# cxt_26(D)->membuf.arena, D.22121
	movq	%rdx, %rsi	# D.22112,
	movq	%rax, %rdi	# D.22121,
	call	Perl_safesysrealloc	#
	movq	-328(%rbp), %rdx	# cxt, tmp1637
	movq	%rax, 152(%rdx)	# D.22113, cxt_26(D)->membuf.arena
	movl	-100(%rbp), %eax	# nsz, tmp1638
	movslq	%eax, %rdx	# tmp1638, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1639
	movq	%rdx, 160(%rax)	# D.22112, cxt_26(D)->membuf.asiz
	movq	-328(%rbp), %rax	# cxt, tmp1640
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-96(%rbp), %eax	# offset, tmp1641
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1642
	movq	%rdx, 168(%rax)	# D.22121, cxt_26(D)->membuf.aptr
	movq	-328(%rbp), %rax	# cxt, tmp1643
	movq	152(%rax), %rdx	# cxt_26(D)->membuf.arena, D.22121
	movl	-100(%rbp), %eax	# nsz, tmp1644
	cltq
	addq	%rax, %rdx	# D.22122, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1645
	movq	%rdx, 176(%rax)	# D.22121, cxt_26(D)->membuf.aend
.L645:
.LBE199:
	.loc 1 3087 0 discriminator 2
	movq	-328(%rbp), %rax	# cxt, tmp1647
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movq	%rax, %rdx	# D.22121, D.22112
	movq	-328(%rbp), %rax	# cxt, tmp1648
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	andq	$-4, %rax	#, D.22112
	cmpq	%rax, %rdx	# D.22112, D.22112
	jne	.L646	#,
	.loc 1 3087 0 discriminator 1
	movq	-328(%rbp), %rax	# cxt, tmp1649
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movl	-80(%rbp), %edx	# tagval, tagval.351
	movl	%edx, (%rax)	# tagval.351, MEM[(int *)_1077]
	jmp	.L647	#
.L646:
	.loc 1 3087 0 discriminator 2
	movq	-328(%rbp), %rax	# cxt, tmp1650
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	movl	-80(%rbp), %edx	# MEM[(char * {ref-all})&tagval], D.22108
	movl	%edx, (%rax)	# D.22108, MEM[(char * {ref-all})_1079]
.L647:
	.loc 1 3087 0 discriminator 1
	movq	-328(%rbp), %rax	# cxt, tmp1651
	movq	168(%rax), %rax	# cxt_26(D)->membuf.aptr, D.22121
	leaq	4(%rax), %rdx	#, D.22121
	movq	-328(%rbp), %rax	# cxt, tmp1652
	movq	%rdx, 168(%rax)	# D.22121, cxt_26(D)->membuf.aptr
.LBE198:
	jmp	.L648	#
.L644:
	.loc 1 3087 0 discriminator 2
	movq	-328(%rbp), %rax	# cxt, tmp1654
	movq	216(%rax), %rax	# cxt_26(D)->fio, D.22120
	leaq	-80(%rbp), %rcx	#, tmp1655
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp1655,
	movq	%rax, %rdi	# D.22120,
	call	Perl_PerlIO_write	#
	cmpq	$4, %rax	#, D.22115
	je	.L648	#,
	.loc 1 3087 0 discriminator 1
	movl	$-1, %eax	#, D.22108
.LBE197:
	jmp	.L657	#
.L648:
	.loc 1 3085 0 is_stmt 1 discriminator 1
	addl	$1, -300(%rbp)	#, i
.L643:
	movl	-300(%rbp), %eax	# i, tmp1656
	cmpl	-284(%rbp), %eax	# count, tmp1656
	jl	.L649	#,
.L626:
.LBE189:
	.loc 1 3097 0
	cmpl	$1, -284(%rbp)	#, count
	jle	.L650	#,
	.loc 1 3098 0
	movq	-48(%rbp), %rax	# av, tmp1657
	movq	(%rax), %rax	# av_56->sv_any, D.22114
	movq	$0, 8(%rax)	#, _1088->xav_fill
.L650:
	.loc 1 3099 0
	movq	-48(%rbp), %rax	# av, tmp1658
	movq	%rax, %rdi	# tmp1658,
	call	Perl_av_undef	#
	.loc 1 3100 0
	movq	-48(%rbp), %rax	# av, tmp1659
	movq	%rax, %rdi	# tmp1659,
	call	Perl_sv_free	#
	.loc 1 3106 0
	cmpl	$3, -292(%rbp)	#, obj_type
	jne	.L651	#,
.LBB200:
	.loc 1 3109 0
	movsbl	-318(%rbp), %edx	# mtype, D.22108
	movq	-336(%rbp), %rax	# sv, tmp1660
	movl	%edx, %esi	# D.22108,
	movq	%rax, %rdi	# tmp1660,
	call	Perl_mg_find	#
	movq	%rax, -8(%rbp)	# tmp1661, mg
	cmpq	$0, -8(%rbp)	#, mg
	jne	.L652	#,
.LBB201:
	.loc 1 3110 0
	movq	-336(%rbp), %rax	# sv, tmp1662
	movl	12(%rax), %eax	# sv_36(D)->sv_flags, D.22109
	andl	$255, %eax	#, tmp1663
	movl	%eax, -92(%rbp)	# tmp1663, svt
.LBB202:
	.loc 1 3111 0
	movq	-328(%rbp), %rax	# cxt, tmp1664
	movl	$1, 112(%rax)	#, cxt_26(D)->s_dirty
	cmpl	$11, -92(%rbp)	#, svt
	je	.L653	#,
	.loc 1 3111 0 is_stmt 0 discriminator 1
	cmpl	$10, -92(%rbp)	#, svt
	jne	.L654	#,
	movl	$.LC13, %eax	#, iftmp.353
	jmp	.L656	#
.L654:
	.loc 1 3111 0 discriminator 2
	movl	$.LC14, %eax	#, iftmp.353
	jmp	.L656	#
.L653:
	movl	$.LC15, %eax	#, iftmp.352
.L656:
	.loc 1 3111 0 discriminator 3
	movsbl	-318(%rbp), %ecx	# mtype, D.22108
	movq	%rax, %rdx	# iftmp.352,
	movl	%ecx, %esi	# D.22108,
	movl	$.LC25, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L652:
.LBE202:
.LBE201:
	.loc 1 3123 0 is_stmt 1
	movq	-8(%rbp), %rax	# mg, tmp1665
	movq	24(%rax), %rdx	# mg_1090->mg_obj, D.22119
	movq	-328(%rbp), %rax	# cxt, tmp1666
	movq	%rdx, %rsi	# D.22119,
	movq	%rax, %rdi	# tmp1666,
	call	store	#
	movl	%eax, -248(%rbp)	# tmp1667, ret
	cmpl	$0, -248(%rbp)	#, ret
	je	.L651	#,
	.loc 1 3124 0
	movl	-248(%rbp), %eax	# ret, D.22108
	jmp	.L657	#
.L651:
.LBE200:
	.loc 1 3127 0
	movl	$0, %eax	#, D.22108
.L657:
	.loc 1 3128 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	store_hook, .-store_hook
	.type	store_blessed, @function
store_blessed:
.LFB29:
	.loc 1 3160 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$160, %rsp	#,
	movq	%rdi, -136(%rbp)	# cxt, cxt
	movq	%rsi, -144(%rbp)	# sv, sv
	movl	%edx, -148(%rbp)	# type, type
	movq	%rcx, -160(%rbp)	# pkg, pkg
	.loc 1 3173 0
	movq	-136(%rbp), %rax	# cxt, tmp463
	movq	56(%rax), %rax	# cxt_2(D)->hook, D.22134
	movq	-160(%rbp), %rcx	# pkg, tmp464
	movl	$.LC22, %edx	#,
	movq	%rcx, %rsi	# tmp464,
	movq	%rax, %rdi	# D.22134,
	call	pkg_can	#
	movq	%rax, -16(%rbp)	# tmp465, hook
	.loc 1 3174 0
	cmpq	$0, -16(%rbp)	#, hook
	je	.L660	#,
	.loc 1 3175 0
	movq	-16(%rbp), %rdi	# hook, tmp466
	movq	-160(%rbp), %rcx	# pkg, tmp467
	movl	-148(%rbp), %edx	# type, tmp468
	movq	-144(%rbp), %rsi	# sv, tmp469
	movq	-136(%rbp), %rax	# cxt, tmp470
	movq	%rdi, %r8	# tmp466,
	movq	%rax, %rdi	# tmp470,
	call	store_hook	#
	jmp	.L714	#
.L660:
	.loc 1 3181 0
	movq	-160(%rbp), %rax	# pkg, tmp471
	movq	(%rax), %rax	# pkg_4(D)->sv_any, D.22135
	movq	80(%rax), %rax	# _9->xhv_name, tmp472
	movq	%rax, -8(%rbp)	# tmp472, class
	.loc 1 3182 0
	movq	-8(%rbp), %rax	# class, tmp473
	movq	%rax, %rdi	# tmp473,
	call	strlen	#
	movl	%eax, -116(%rbp)	# len.354, len
	.loc 1 3194 0
	movl	-116(%rbp), %edx	# len, len.355
	leaq	-112(%rbp), %rcx	#, tmp474
	movq	-8(%rbp), %rsi	# class, tmp475
	movq	-136(%rbp), %rax	# cxt, tmp476
	movq	%rax, %rdi	# tmp476,
	call	known_class	#
	testl	%eax, %eax	# D.22133
	je	.L662	#,
	.loc 1 3196 0
	movq	-136(%rbp), %rax	# cxt, tmp477
	movq	216(%rax), %rax	# cxt_2(D)->fio, D.22137
	testq	%rax, %rax	# D.22137
	jne	.L663	#,
	.loc 1 3196 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# cxt, tmp478
	movq	168(%rax), %rdx	# cxt_2(D)->membuf.aptr, D.22138
	movq	-136(%rbp), %rax	# cxt, tmp479
	movq	176(%rax), %rax	# cxt_2(D)->membuf.aend, D.22138
	cmpq	%rax, %rdx	# D.22138, D.22138
	jae	.L664	#,
	movq	-136(%rbp), %rax	# cxt, tmp480
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	leaq	1(%rax), %rcx	#, D.22138
	movq	-136(%rbp), %rdx	# cxt, tmp481
	movq	%rcx, 168(%rdx)	# D.22138, cxt_2(D)->membuf.aptr
	movb	$18, (%rax)	#, *_19
	jmp	.L666	#
.L664:
.LBB203:
	.loc 1 3196 0 discriminator 2
	movq	-136(%rbp), %rax	# cxt, tmp482
	movq	160(%rax), %rax	# cxt_2(D)->membuf.asiz, D.22136
	addl	$8192, %eax	#, D.22139
	andl	$-8192, %eax	#, tmp483
	movl	%eax, -104(%rbp)	# tmp483, nsz
	movq	-136(%rbp), %rax	# cxt, tmp484
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	movq	%rax, %rdx	# D.22138, D.22140
	movq	-136(%rbp), %rax	# cxt, tmp485
	movq	152(%rax), %rax	# cxt_2(D)->membuf.arena, D.22138
	subq	%rax, %rdx	# D.22140, D.22140
	movq	%rdx, %rax	# D.22140, D.22140
	movl	%eax, -100(%rbp)	# D.22140, offset
	movl	-104(%rbp), %eax	# nsz, tmp486
	movslq	%eax, %rdx	# tmp486, D.22136
	movq	-136(%rbp), %rax	# cxt, tmp487
	movq	152(%rax), %rax	# cxt_2(D)->membuf.arena, D.22138
	movq	%rdx, %rsi	# D.22136,
	movq	%rax, %rdi	# D.22138,
	call	Perl_safesysrealloc	#
	movq	-136(%rbp), %rdx	# cxt, tmp488
	movq	%rax, 152(%rdx)	# D.22141, cxt_2(D)->membuf.arena
	movl	-104(%rbp), %eax	# nsz, tmp489
	movslq	%eax, %rdx	# tmp489, D.22136
	movq	-136(%rbp), %rax	# cxt, tmp490
	movq	%rdx, 160(%rax)	# D.22136, cxt_2(D)->membuf.asiz
	movq	-136(%rbp), %rax	# cxt, tmp491
	movq	152(%rax), %rdx	# cxt_2(D)->membuf.arena, D.22138
	movl	-100(%rbp), %eax	# offset, tmp492
	cltq
	addq	%rax, %rdx	# D.22142, D.22138
	movq	-136(%rbp), %rax	# cxt, tmp493
	movq	%rdx, 168(%rax)	# D.22138, cxt_2(D)->membuf.aptr
	movq	-136(%rbp), %rax	# cxt, tmp494
	movq	152(%rax), %rdx	# cxt_2(D)->membuf.arena, D.22138
	movl	-104(%rbp), %eax	# nsz, tmp495
	cltq
	addq	%rax, %rdx	# D.22142, D.22138
	movq	-136(%rbp), %rax	# cxt, tmp496
	movq	%rdx, 176(%rax)	# D.22138, cxt_2(D)->membuf.aend
.LBE203:
	movq	-136(%rbp), %rax	# cxt, tmp498
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	leaq	1(%rax), %rcx	#, D.22138
	movq	-136(%rbp), %rdx	# cxt, tmp499
	movq	%rcx, 168(%rdx)	# D.22138, cxt_2(D)->membuf.aptr
	movb	$18, (%rax)	#, *_44
	jmp	.L666	#
.L663:
	movq	-136(%rbp), %rax	# cxt, tmp500
	movq	216(%rax), %rax	# cxt_2(D)->fio, D.22137
	movl	$18, %esi	#,
	movq	%rax, %rdi	# D.22137,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22133
	jne	.L666	#,
	.loc 1 3196 0 discriminator 1
	movl	$-1, %eax	#, D.22133
	jmp	.L714	#
.L666:
	.loc 1 3197 0 is_stmt 1
	movl	-112(%rbp), %eax	# classnum, classnum.356
	cmpl	$127, %eax	#, classnum.356
	jg	.L667	#,
.LBB204:
	.loc 1 3198 0
	movl	-112(%rbp), %eax	# classnum, classnum.357
	movb	%al, -120(%rbp)	# classnum.357, cnum
	.loc 1 3199 0
	movq	-136(%rbp), %rax	# cxt, tmp501
	movq	216(%rax), %rax	# cxt_2(D)->fio, D.22137
	testq	%rax, %rax	# D.22137
	jne	.L668	#,
	.loc 1 3199 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# cxt, tmp502
	movq	168(%rax), %rdx	# cxt_2(D)->membuf.aptr, D.22138
	movq	-136(%rbp), %rax	# cxt, tmp503
	movq	176(%rax), %rax	# cxt_2(D)->membuf.aend, D.22138
	cmpq	%rax, %rdx	# D.22138, D.22138
	jae	.L669	#,
	movq	-136(%rbp), %rax	# cxt, tmp504
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	leaq	1(%rax), %rcx	#, D.22138
	movq	-136(%rbp), %rdx	# cxt, tmp505
	movq	%rcx, 168(%rdx)	# D.22138, cxt_2(D)->membuf.aptr
	movzbl	-120(%rbp), %edx	# cnum, cnum.358
	movb	%dl, (%rax)	# cnum.358, *_56
	jmp	.L671	#
.L669:
.LBB205:
	.loc 1 3199 0 discriminator 2
	movq	-136(%rbp), %rax	# cxt, tmp506
	movq	160(%rax), %rax	# cxt_2(D)->membuf.asiz, D.22136
	addl	$8192, %eax	#, D.22139
	andl	$-8192, %eax	#, tmp507
	movl	%eax, -96(%rbp)	# tmp507, nsz
	movq	-136(%rbp), %rax	# cxt, tmp508
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	movq	%rax, %rdx	# D.22138, D.22140
	movq	-136(%rbp), %rax	# cxt, tmp509
	movq	152(%rax), %rax	# cxt_2(D)->membuf.arena, D.22138
	subq	%rax, %rdx	# D.22140, D.22140
	movq	%rdx, %rax	# D.22140, D.22140
	movl	%eax, -92(%rbp)	# D.22140, offset
	movl	-96(%rbp), %eax	# nsz, tmp510
	movslq	%eax, %rdx	# tmp510, D.22136
	movq	-136(%rbp), %rax	# cxt, tmp511
	movq	152(%rax), %rax	# cxt_2(D)->membuf.arena, D.22138
	movq	%rdx, %rsi	# D.22136,
	movq	%rax, %rdi	# D.22138,
	call	Perl_safesysrealloc	#
	movq	-136(%rbp), %rdx	# cxt, tmp512
	movq	%rax, 152(%rdx)	# D.22141, cxt_2(D)->membuf.arena
	movl	-96(%rbp), %eax	# nsz, tmp513
	movslq	%eax, %rdx	# tmp513, D.22136
	movq	-136(%rbp), %rax	# cxt, tmp514
	movq	%rdx, 160(%rax)	# D.22136, cxt_2(D)->membuf.asiz
	movq	-136(%rbp), %rax	# cxt, tmp515
	movq	152(%rax), %rdx	# cxt_2(D)->membuf.arena, D.22138
	movl	-92(%rbp), %eax	# offset, tmp516
	cltq
	addq	%rax, %rdx	# D.22142, D.22138
	movq	-136(%rbp), %rax	# cxt, tmp517
	movq	%rdx, 168(%rax)	# D.22138, cxt_2(D)->membuf.aptr
	movq	-136(%rbp), %rax	# cxt, tmp518
	movq	152(%rax), %rdx	# cxt_2(D)->membuf.arena, D.22138
	movl	-96(%rbp), %eax	# nsz, tmp519
	cltq
	addq	%rax, %rdx	# D.22142, D.22138
	movq	-136(%rbp), %rax	# cxt, tmp520
	movq	%rdx, 176(%rax)	# D.22138, cxt_2(D)->membuf.aend
.LBE205:
	movq	-136(%rbp), %rax	# cxt, tmp522
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	leaq	1(%rax), %rcx	#, D.22138
	movq	-136(%rbp), %rdx	# cxt, tmp523
	movq	%rcx, 168(%rdx)	# D.22138, cxt_2(D)->membuf.aptr
	movzbl	-120(%rbp), %edx	# cnum, cnum.359
	movb	%dl, (%rax)	# cnum.359, *_82
.LBE204:
	jmp	.L687	#
.L668:
.LBB206:
	movzbl	-120(%rbp), %edx	# cnum, D.22133
	movq	-136(%rbp), %rax	# cxt, tmp524
	movq	216(%rax), %rax	# cxt_2(D)->fio, D.22137
	movl	%edx, %esi	# D.22133,
	movq	%rax, %rdi	# D.22137,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22133
	jne	.L671	#,
	.loc 1 3199 0 discriminator 1
	movl	$-1, %eax	#, D.22133
	jmp	.L714	#
.L671:
.LBE206:
	jmp	.L687	#
.L667:
.LBB207:
	.loc 1 3201 0 is_stmt 1
	movb	$-128, -119(%rbp)	#, flag
	.loc 1 3202 0
	movq	-136(%rbp), %rax	# cxt, tmp525
	movq	216(%rax), %rax	# cxt_2(D)->fio, D.22137
	testq	%rax, %rax	# D.22137
	jne	.L673	#,
	.loc 1 3202 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# cxt, tmp526
	movq	168(%rax), %rdx	# cxt_2(D)->membuf.aptr, D.22138
	movq	-136(%rbp), %rax	# cxt, tmp527
	movq	176(%rax), %rax	# cxt_2(D)->membuf.aend, D.22138
	cmpq	%rax, %rdx	# D.22138, D.22138
	jae	.L674	#,
	movq	-136(%rbp), %rax	# cxt, tmp528
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	leaq	1(%rax), %rcx	#, D.22138
	movq	-136(%rbp), %rdx	# cxt, tmp529
	movq	%rcx, 168(%rdx)	# D.22138, cxt_2(D)->membuf.aptr
	movzbl	-119(%rbp), %edx	# flag, flag.360
	movb	%dl, (%rax)	# flag.360, *_94
	jmp	.L676	#
.L674:
.LBB208:
	.loc 1 3202 0 discriminator 2
	movq	-136(%rbp), %rax	# cxt, tmp530
	movq	160(%rax), %rax	# cxt_2(D)->membuf.asiz, D.22136
	addl	$8192, %eax	#, D.22139
	andl	$-8192, %eax	#, tmp531
	movl	%eax, -88(%rbp)	# tmp531, nsz
	movq	-136(%rbp), %rax	# cxt, tmp532
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	movq	%rax, %rdx	# D.22138, D.22140
	movq	-136(%rbp), %rax	# cxt, tmp533
	movq	152(%rax), %rax	# cxt_2(D)->membuf.arena, D.22138
	subq	%rax, %rdx	# D.22140, D.22140
	movq	%rdx, %rax	# D.22140, D.22140
	movl	%eax, -84(%rbp)	# D.22140, offset
	movl	-88(%rbp), %eax	# nsz, tmp534
	movslq	%eax, %rdx	# tmp534, D.22136
	movq	-136(%rbp), %rax	# cxt, tmp535
	movq	152(%rax), %rax	# cxt_2(D)->membuf.arena, D.22138
	movq	%rdx, %rsi	# D.22136,
	movq	%rax, %rdi	# D.22138,
	call	Perl_safesysrealloc	#
	movq	-136(%rbp), %rdx	# cxt, tmp536
	movq	%rax, 152(%rdx)	# D.22141, cxt_2(D)->membuf.arena
	movl	-88(%rbp), %eax	# nsz, tmp537
	movslq	%eax, %rdx	# tmp537, D.22136
	movq	-136(%rbp), %rax	# cxt, tmp538
	movq	%rdx, 160(%rax)	# D.22136, cxt_2(D)->membuf.asiz
	movq	-136(%rbp), %rax	# cxt, tmp539
	movq	152(%rax), %rdx	# cxt_2(D)->membuf.arena, D.22138
	movl	-84(%rbp), %eax	# offset, tmp540
	cltq
	addq	%rax, %rdx	# D.22142, D.22138
	movq	-136(%rbp), %rax	# cxt, tmp541
	movq	%rdx, 168(%rax)	# D.22138, cxt_2(D)->membuf.aptr
	movq	-136(%rbp), %rax	# cxt, tmp542
	movq	152(%rax), %rdx	# cxt_2(D)->membuf.arena, D.22138
	movl	-88(%rbp), %eax	# nsz, tmp543
	cltq
	addq	%rax, %rdx	# D.22142, D.22138
	movq	-136(%rbp), %rax	# cxt, tmp544
	movq	%rdx, 176(%rax)	# D.22138, cxt_2(D)->membuf.aend
.LBE208:
	movq	-136(%rbp), %rax	# cxt, tmp546
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	leaq	1(%rax), %rcx	#, D.22138
	movq	-136(%rbp), %rdx	# cxt, tmp547
	movq	%rcx, 168(%rdx)	# D.22138, cxt_2(D)->membuf.aptr
	movzbl	-119(%rbp), %edx	# flag, flag.361
	movb	%dl, (%rax)	# flag.361, *_120
	jmp	.L676	#
.L673:
	movzbl	-119(%rbp), %edx	# flag, D.22133
	movq	-136(%rbp), %rax	# cxt, tmp548
	movq	216(%rax), %rax	# cxt_2(D)->fio, D.22137
	movl	%edx, %esi	# D.22133,
	movq	%rax, %rdi	# D.22137,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22133
	jne	.L676	#,
	.loc 1 3202 0 discriminator 1
	movl	$-1, %eax	#, D.22133
	jmp	.L714	#
.L676:
	.loc 1 3203 0 is_stmt 1
	movq	-136(%rbp), %rax	# cxt, tmp549
	movl	80(%rax), %eax	# cxt_2(D)->netorder, D.22133
	testl	%eax, %eax	# D.22133
	je	.L677	#,
.LBB209:
	.loc 1 3203 0 is_stmt 0 discriminator 1
	movl	-112(%rbp), %eax	# classnum, classnum.362
	cltq
	movq	%rax, %rdi	# D.22140,
	call	Perl_my_htonl	#
	movl	%eax, -108(%rbp)	# y.363, y
	movq	-136(%rbp), %rax	# cxt, tmp550
	movq	216(%rax), %rax	# cxt_2(D)->fio, D.22137
	testq	%rax, %rax	# D.22137
	jne	.L678	#,
.LBB210:
	movq	-136(%rbp), %rax	# cxt, tmp551
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	leaq	4(%rax), %rdx	#, D.22138
	movq	-136(%rbp), %rax	# cxt, tmp552
	movq	176(%rax), %rax	# cxt_2(D)->membuf.aend, D.22138
	cmpq	%rax, %rdx	# D.22138, D.22138
	jbe	.L679	#,
.LBB211:
	movq	-136(%rbp), %rax	# cxt, tmp553
	movq	160(%rax), %rax	# cxt_2(D)->membuf.asiz, D.22136
	addl	$8195, %eax	#, D.22139
	andl	$-8192, %eax	#, tmp554
	movl	%eax, -80(%rbp)	# tmp554, nsz
	movq	-136(%rbp), %rax	# cxt, tmp555
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	movq	%rax, %rdx	# D.22138, D.22140
	movq	-136(%rbp), %rax	# cxt, tmp556
	movq	152(%rax), %rax	# cxt_2(D)->membuf.arena, D.22138
	subq	%rax, %rdx	# D.22140, D.22140
	movq	%rdx, %rax	# D.22140, D.22140
	movl	%eax, -76(%rbp)	# D.22140, offset
	movl	-80(%rbp), %eax	# nsz, tmp557
	movslq	%eax, %rdx	# tmp557, D.22136
	movq	-136(%rbp), %rax	# cxt, tmp558
	movq	152(%rax), %rax	# cxt_2(D)->membuf.arena, D.22138
	movq	%rdx, %rsi	# D.22136,
	movq	%rax, %rdi	# D.22138,
	call	Perl_safesysrealloc	#
	movq	-136(%rbp), %rdx	# cxt, tmp559
	movq	%rax, 152(%rdx)	# D.22141, cxt_2(D)->membuf.arena
	movl	-80(%rbp), %eax	# nsz, tmp560
	movslq	%eax, %rdx	# tmp560, D.22136
	movq	-136(%rbp), %rax	# cxt, tmp561
	movq	%rdx, 160(%rax)	# D.22136, cxt_2(D)->membuf.asiz
	movq	-136(%rbp), %rax	# cxt, tmp562
	movq	152(%rax), %rdx	# cxt_2(D)->membuf.arena, D.22138
	movl	-76(%rbp), %eax	# offset, tmp563
	cltq
	addq	%rax, %rdx	# D.22142, D.22138
	movq	-136(%rbp), %rax	# cxt, tmp564
	movq	%rdx, 168(%rax)	# D.22138, cxt_2(D)->membuf.aptr
	movq	-136(%rbp), %rax	# cxt, tmp565
	movq	152(%rax), %rdx	# cxt_2(D)->membuf.arena, D.22138
	movl	-80(%rbp), %eax	# nsz, tmp566
	cltq
	addq	%rax, %rdx	# D.22142, D.22138
	movq	-136(%rbp), %rax	# cxt, tmp567
	movq	%rdx, 176(%rax)	# D.22138, cxt_2(D)->membuf.aend
.L679:
.LBE211:
	.loc 1 3203 0 discriminator 2
	movq	-136(%rbp), %rax	# cxt, tmp569
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	movq	%rax, %rdx	# D.22138, D.22136
	movq	-136(%rbp), %rax	# cxt, tmp570
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	andq	$-4, %rax	#, D.22136
	cmpq	%rax, %rdx	# D.22136, D.22136
	jne	.L680	#,
	.loc 1 3203 0 discriminator 1
	movq	-136(%rbp), %rax	# cxt, tmp571
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	movl	-108(%rbp), %edx	# y, y.364
	movl	%edx, (%rax)	# y.364, MEM[(int *)_163]
	jmp	.L681	#
.L680:
	.loc 1 3203 0 discriminator 2
	movq	-136(%rbp), %rax	# cxt, tmp572
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	movl	-108(%rbp), %edx	# MEM[(char * {ref-all})&y], D.22133
	movl	%edx, (%rax)	# D.22133, MEM[(char * {ref-all})_165]
.L681:
	.loc 1 3203 0 discriminator 1
	movq	-136(%rbp), %rax	# cxt, tmp573
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	leaq	4(%rax), %rdx	#, D.22138
	movq	-136(%rbp), %rax	# cxt, tmp574
	movq	%rdx, 168(%rax)	# D.22138, cxt_2(D)->membuf.aptr
.LBE210:
	jmp	.L682	#
.L678:
	.loc 1 3203 0 discriminator 2
	movq	-136(%rbp), %rax	# cxt, tmp576
	movq	216(%rax), %rax	# cxt_2(D)->fio, D.22137
	leaq	-108(%rbp), %rcx	#, tmp577
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp577,
	movq	%rax, %rdi	# D.22137,
	call	Perl_PerlIO_write	#
	cmpq	$4, %rax	#, D.22140
	je	.L682	#,
	.loc 1 3203 0 discriminator 1
	movl	$-1, %eax	#, D.22133
	jmp	.L714	#
.L682:
.LBE209:
	jmp	.L672	#
.L677:
	.loc 1 3203 0 discriminator 2
	movq	-136(%rbp), %rax	# cxt, tmp578
	movq	216(%rax), %rax	# cxt_2(D)->fio, D.22137
	testq	%rax, %rax	# D.22137
	jne	.L683	#,
.LBB212:
	.loc 1 3203 0 discriminator 1
	movq	-136(%rbp), %rax	# cxt, tmp579
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	leaq	4(%rax), %rdx	#, D.22138
	movq	-136(%rbp), %rax	# cxt, tmp580
	movq	176(%rax), %rax	# cxt_2(D)->membuf.aend, D.22138
	cmpq	%rax, %rdx	# D.22138, D.22138
	jbe	.L684	#,
.LBB213:
	movq	-136(%rbp), %rax	# cxt, tmp581
	movq	160(%rax), %rax	# cxt_2(D)->membuf.asiz, D.22136
	addl	$8195, %eax	#, D.22139
	andl	$-8192, %eax	#, tmp582
	movl	%eax, -72(%rbp)	# tmp582, nsz
	movq	-136(%rbp), %rax	# cxt, tmp583
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	movq	%rax, %rdx	# D.22138, D.22140
	movq	-136(%rbp), %rax	# cxt, tmp584
	movq	152(%rax), %rax	# cxt_2(D)->membuf.arena, D.22138
	subq	%rax, %rdx	# D.22140, D.22140
	movq	%rdx, %rax	# D.22140, D.22140
	movl	%eax, -68(%rbp)	# D.22140, offset
	movl	-72(%rbp), %eax	# nsz, tmp585
	movslq	%eax, %rdx	# tmp585, D.22136
	movq	-136(%rbp), %rax	# cxt, tmp586
	movq	152(%rax), %rax	# cxt_2(D)->membuf.arena, D.22138
	movq	%rdx, %rsi	# D.22136,
	movq	%rax, %rdi	# D.22138,
	call	Perl_safesysrealloc	#
	movq	-136(%rbp), %rdx	# cxt, tmp587
	movq	%rax, 152(%rdx)	# D.22141, cxt_2(D)->membuf.arena
	movl	-72(%rbp), %eax	# nsz, tmp588
	movslq	%eax, %rdx	# tmp588, D.22136
	movq	-136(%rbp), %rax	# cxt, tmp589
	movq	%rdx, 160(%rax)	# D.22136, cxt_2(D)->membuf.asiz
	movq	-136(%rbp), %rax	# cxt, tmp590
	movq	152(%rax), %rdx	# cxt_2(D)->membuf.arena, D.22138
	movl	-68(%rbp), %eax	# offset, tmp591
	cltq
	addq	%rax, %rdx	# D.22142, D.22138
	movq	-136(%rbp), %rax	# cxt, tmp592
	movq	%rdx, 168(%rax)	# D.22138, cxt_2(D)->membuf.aptr
	movq	-136(%rbp), %rax	# cxt, tmp593
	movq	152(%rax), %rdx	# cxt_2(D)->membuf.arena, D.22138
	movl	-72(%rbp), %eax	# nsz, tmp594
	cltq
	addq	%rax, %rdx	# D.22142, D.22138
	movq	-136(%rbp), %rax	# cxt, tmp595
	movq	%rdx, 176(%rax)	# D.22138, cxt_2(D)->membuf.aend
.L684:
.LBE213:
	.loc 1 3203 0 discriminator 2
	movq	-136(%rbp), %rax	# cxt, tmp597
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	movq	%rax, %rdx	# D.22138, D.22136
	movq	-136(%rbp), %rax	# cxt, tmp598
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	andq	$-4, %rax	#, D.22136
	cmpq	%rax, %rdx	# D.22136, D.22136
	jne	.L685	#,
	.loc 1 3203 0 discriminator 1
	movq	-136(%rbp), %rax	# cxt, tmp599
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	movl	-112(%rbp), %edx	# classnum, classnum.365
	movl	%edx, (%rax)	# classnum.365, MEM[(int *)_204]
	jmp	.L686	#
.L685:
	.loc 1 3203 0 discriminator 2
	movq	-136(%rbp), %rax	# cxt, tmp600
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	movl	-112(%rbp), %edx	# MEM[(char * {ref-all})&classnum], D.22133
	movl	%edx, (%rax)	# D.22133, MEM[(char * {ref-all})_206]
.L686:
	.loc 1 3203 0 discriminator 1
	movq	-136(%rbp), %rax	# cxt, tmp601
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	leaq	4(%rax), %rdx	#, D.22138
	movq	-136(%rbp), %rax	# cxt, tmp602
	movq	%rdx, 168(%rax)	# D.22138, cxt_2(D)->membuf.aptr
.LBE212:
	jmp	.L672	#
.L683:
	.loc 1 3203 0 discriminator 2
	movq	-136(%rbp), %rax	# cxt, tmp604
	movq	216(%rax), %rax	# cxt_2(D)->fio, D.22137
	leaq	-112(%rbp), %rcx	#, tmp605
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp605,
	movq	%rax, %rdi	# D.22137,
	call	Perl_PerlIO_write	#
	cmpq	$4, %rax	#, D.22140
	je	.L672	#,
	.loc 1 3203 0 discriminator 1
	movl	$-1, %eax	#, D.22133
	jmp	.L714	#
.L672:
.LBE207:
	jmp	.L687	#
.L662:
	.loc 1 3207 0 is_stmt 1
	movq	-136(%rbp), %rax	# cxt, tmp606
	movq	216(%rax), %rax	# cxt_2(D)->fio, D.22137
	testq	%rax, %rax	# D.22137
	jne	.L688	#,
	.loc 1 3207 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# cxt, tmp607
	movq	168(%rax), %rdx	# cxt_2(D)->membuf.aptr, D.22138
	movq	-136(%rbp), %rax	# cxt, tmp608
	movq	176(%rax), %rax	# cxt_2(D)->membuf.aend, D.22138
	cmpq	%rax, %rdx	# D.22138, D.22138
	jae	.L689	#,
	movq	-136(%rbp), %rax	# cxt, tmp609
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	leaq	1(%rax), %rcx	#, D.22138
	movq	-136(%rbp), %rdx	# cxt, tmp610
	movq	%rcx, 168(%rdx)	# D.22138, cxt_2(D)->membuf.aptr
	movb	$17, (%rax)	#, *_218
	jmp	.L691	#
.L689:
.LBB214:
	.loc 1 3207 0 discriminator 2
	movq	-136(%rbp), %rax	# cxt, tmp611
	movq	160(%rax), %rax	# cxt_2(D)->membuf.asiz, D.22136
	addl	$8192, %eax	#, D.22139
	andl	$-8192, %eax	#, tmp612
	movl	%eax, -64(%rbp)	# tmp612, nsz
	movq	-136(%rbp), %rax	# cxt, tmp613
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	movq	%rax, %rdx	# D.22138, D.22140
	movq	-136(%rbp), %rax	# cxt, tmp614
	movq	152(%rax), %rax	# cxt_2(D)->membuf.arena, D.22138
	subq	%rax, %rdx	# D.22140, D.22140
	movq	%rdx, %rax	# D.22140, D.22140
	movl	%eax, -60(%rbp)	# D.22140, offset
	movl	-64(%rbp), %eax	# nsz, tmp615
	movslq	%eax, %rdx	# tmp615, D.22136
	movq	-136(%rbp), %rax	# cxt, tmp616
	movq	152(%rax), %rax	# cxt_2(D)->membuf.arena, D.22138
	movq	%rdx, %rsi	# D.22136,
	movq	%rax, %rdi	# D.22138,
	call	Perl_safesysrealloc	#
	movq	-136(%rbp), %rdx	# cxt, tmp617
	movq	%rax, 152(%rdx)	# D.22141, cxt_2(D)->membuf.arena
	movl	-64(%rbp), %eax	# nsz, tmp618
	movslq	%eax, %rdx	# tmp618, D.22136
	movq	-136(%rbp), %rax	# cxt, tmp619
	movq	%rdx, 160(%rax)	# D.22136, cxt_2(D)->membuf.asiz
	movq	-136(%rbp), %rax	# cxt, tmp620
	movq	152(%rax), %rdx	# cxt_2(D)->membuf.arena, D.22138
	movl	-60(%rbp), %eax	# offset, tmp621
	cltq
	addq	%rax, %rdx	# D.22142, D.22138
	movq	-136(%rbp), %rax	# cxt, tmp622
	movq	%rdx, 168(%rax)	# D.22138, cxt_2(D)->membuf.aptr
	movq	-136(%rbp), %rax	# cxt, tmp623
	movq	152(%rax), %rdx	# cxt_2(D)->membuf.arena, D.22138
	movl	-64(%rbp), %eax	# nsz, tmp624
	cltq
	addq	%rax, %rdx	# D.22142, D.22138
	movq	-136(%rbp), %rax	# cxt, tmp625
	movq	%rdx, 176(%rax)	# D.22138, cxt_2(D)->membuf.aend
.LBE214:
	movq	-136(%rbp), %rax	# cxt, tmp627
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	leaq	1(%rax), %rcx	#, D.22138
	movq	-136(%rbp), %rdx	# cxt, tmp628
	movq	%rcx, 168(%rdx)	# D.22138, cxt_2(D)->membuf.aptr
	movb	$17, (%rax)	#, *_243
	jmp	.L691	#
.L688:
	movq	-136(%rbp), %rax	# cxt, tmp629
	movq	216(%rax), %rax	# cxt_2(D)->fio, D.22137
	movl	$17, %esi	#,
	movq	%rax, %rdi	# D.22137,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22133
	jne	.L691	#,
	.loc 1 3207 0 discriminator 1
	movl	$-1, %eax	#, D.22133
	jmp	.L714	#
.L691:
	.loc 1 3208 0 is_stmt 1
	movl	-116(%rbp), %eax	# len, len.366
	cmpl	$127, %eax	#, len.366
	jg	.L692	#,
.LBB215:
	.loc 1 3209 0
	movl	-116(%rbp), %eax	# len, len.367
	movb	%al, -118(%rbp)	# len.367, clen
	.loc 1 3210 0
	movq	-136(%rbp), %rax	# cxt, tmp630
	movq	216(%rax), %rax	# cxt_2(D)->fio, D.22137
	testq	%rax, %rax	# D.22137
	jne	.L693	#,
	.loc 1 3210 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# cxt, tmp631
	movq	168(%rax), %rdx	# cxt_2(D)->membuf.aptr, D.22138
	movq	-136(%rbp), %rax	# cxt, tmp632
	movq	176(%rax), %rax	# cxt_2(D)->membuf.aend, D.22138
	cmpq	%rax, %rdx	# D.22138, D.22138
	jae	.L694	#,
	movq	-136(%rbp), %rax	# cxt, tmp633
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	leaq	1(%rax), %rcx	#, D.22138
	movq	-136(%rbp), %rdx	# cxt, tmp634
	movq	%rcx, 168(%rdx)	# D.22138, cxt_2(D)->membuf.aptr
	movzbl	-118(%rbp), %edx	# clen, clen.368
	movb	%dl, (%rax)	# clen.368, *_255
	jmp	.L696	#
.L694:
.LBB216:
	.loc 1 3210 0 discriminator 2
	movq	-136(%rbp), %rax	# cxt, tmp635
	movq	160(%rax), %rax	# cxt_2(D)->membuf.asiz, D.22136
	addl	$8192, %eax	#, D.22139
	andl	$-8192, %eax	#, tmp636
	movl	%eax, -56(%rbp)	# tmp636, nsz
	movq	-136(%rbp), %rax	# cxt, tmp637
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	movq	%rax, %rdx	# D.22138, D.22140
	movq	-136(%rbp), %rax	# cxt, tmp638
	movq	152(%rax), %rax	# cxt_2(D)->membuf.arena, D.22138
	subq	%rax, %rdx	# D.22140, D.22140
	movq	%rdx, %rax	# D.22140, D.22140
	movl	%eax, -52(%rbp)	# D.22140, offset
	movl	-56(%rbp), %eax	# nsz, tmp639
	movslq	%eax, %rdx	# tmp639, D.22136
	movq	-136(%rbp), %rax	# cxt, tmp640
	movq	152(%rax), %rax	# cxt_2(D)->membuf.arena, D.22138
	movq	%rdx, %rsi	# D.22136,
	movq	%rax, %rdi	# D.22138,
	call	Perl_safesysrealloc	#
	movq	-136(%rbp), %rdx	# cxt, tmp641
	movq	%rax, 152(%rdx)	# D.22141, cxt_2(D)->membuf.arena
	movl	-56(%rbp), %eax	# nsz, tmp642
	movslq	%eax, %rdx	# tmp642, D.22136
	movq	-136(%rbp), %rax	# cxt, tmp643
	movq	%rdx, 160(%rax)	# D.22136, cxt_2(D)->membuf.asiz
	movq	-136(%rbp), %rax	# cxt, tmp644
	movq	152(%rax), %rdx	# cxt_2(D)->membuf.arena, D.22138
	movl	-52(%rbp), %eax	# offset, tmp645
	cltq
	addq	%rax, %rdx	# D.22142, D.22138
	movq	-136(%rbp), %rax	# cxt, tmp646
	movq	%rdx, 168(%rax)	# D.22138, cxt_2(D)->membuf.aptr
	movq	-136(%rbp), %rax	# cxt, tmp647
	movq	152(%rax), %rdx	# cxt_2(D)->membuf.arena, D.22138
	movl	-56(%rbp), %eax	# nsz, tmp648
	cltq
	addq	%rax, %rdx	# D.22142, D.22138
	movq	-136(%rbp), %rax	# cxt, tmp649
	movq	%rdx, 176(%rax)	# D.22138, cxt_2(D)->membuf.aend
.LBE216:
	movq	-136(%rbp), %rax	# cxt, tmp651
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	leaq	1(%rax), %rcx	#, D.22138
	movq	-136(%rbp), %rdx	# cxt, tmp652
	movq	%rcx, 168(%rdx)	# D.22138, cxt_2(D)->membuf.aptr
	movzbl	-118(%rbp), %edx	# clen, clen.369
	movb	%dl, (%rax)	# clen.369, *_281
.LBE215:
	jmp	.L697	#
.L693:
.LBB217:
	movzbl	-118(%rbp), %edx	# clen, D.22133
	movq	-136(%rbp), %rax	# cxt, tmp653
	movq	216(%rax), %rax	# cxt_2(D)->fio, D.22137
	movl	%edx, %esi	# D.22133,
	movq	%rax, %rdi	# D.22137,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22133
	jne	.L696	#,
	.loc 1 3210 0 discriminator 1
	movl	$-1, %eax	#, D.22133
	jmp	.L714	#
.L696:
.LBE217:
	jmp	.L697	#
.L692:
.LBB218:
	.loc 1 3212 0 is_stmt 1
	movb	$-128, -117(%rbp)	#, flag
	.loc 1 3213 0
	movq	-136(%rbp), %rax	# cxt, tmp654
	movq	216(%rax), %rax	# cxt_2(D)->fio, D.22137
	testq	%rax, %rax	# D.22137
	jne	.L698	#,
	.loc 1 3213 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# cxt, tmp655
	movq	168(%rax), %rdx	# cxt_2(D)->membuf.aptr, D.22138
	movq	-136(%rbp), %rax	# cxt, tmp656
	movq	176(%rax), %rax	# cxt_2(D)->membuf.aend, D.22138
	cmpq	%rax, %rdx	# D.22138, D.22138
	jae	.L699	#,
	movq	-136(%rbp), %rax	# cxt, tmp657
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	leaq	1(%rax), %rcx	#, D.22138
	movq	-136(%rbp), %rdx	# cxt, tmp658
	movq	%rcx, 168(%rdx)	# D.22138, cxt_2(D)->membuf.aptr
	movzbl	-117(%rbp), %edx	# flag, flag.370
	movb	%dl, (%rax)	# flag.370, *_293
	jmp	.L701	#
.L699:
.LBB219:
	.loc 1 3213 0 discriminator 2
	movq	-136(%rbp), %rax	# cxt, tmp659
	movq	160(%rax), %rax	# cxt_2(D)->membuf.asiz, D.22136
	addl	$8192, %eax	#, D.22139
	andl	$-8192, %eax	#, tmp660
	movl	%eax, -48(%rbp)	# tmp660, nsz
	movq	-136(%rbp), %rax	# cxt, tmp661
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	movq	%rax, %rdx	# D.22138, D.22140
	movq	-136(%rbp), %rax	# cxt, tmp662
	movq	152(%rax), %rax	# cxt_2(D)->membuf.arena, D.22138
	subq	%rax, %rdx	# D.22140, D.22140
	movq	%rdx, %rax	# D.22140, D.22140
	movl	%eax, -44(%rbp)	# D.22140, offset
	movl	-48(%rbp), %eax	# nsz, tmp663
	movslq	%eax, %rdx	# tmp663, D.22136
	movq	-136(%rbp), %rax	# cxt, tmp664
	movq	152(%rax), %rax	# cxt_2(D)->membuf.arena, D.22138
	movq	%rdx, %rsi	# D.22136,
	movq	%rax, %rdi	# D.22138,
	call	Perl_safesysrealloc	#
	movq	-136(%rbp), %rdx	# cxt, tmp665
	movq	%rax, 152(%rdx)	# D.22141, cxt_2(D)->membuf.arena
	movl	-48(%rbp), %eax	# nsz, tmp666
	movslq	%eax, %rdx	# tmp666, D.22136
	movq	-136(%rbp), %rax	# cxt, tmp667
	movq	%rdx, 160(%rax)	# D.22136, cxt_2(D)->membuf.asiz
	movq	-136(%rbp), %rax	# cxt, tmp668
	movq	152(%rax), %rdx	# cxt_2(D)->membuf.arena, D.22138
	movl	-44(%rbp), %eax	# offset, tmp669
	cltq
	addq	%rax, %rdx	# D.22142, D.22138
	movq	-136(%rbp), %rax	# cxt, tmp670
	movq	%rdx, 168(%rax)	# D.22138, cxt_2(D)->membuf.aptr
	movq	-136(%rbp), %rax	# cxt, tmp671
	movq	152(%rax), %rdx	# cxt_2(D)->membuf.arena, D.22138
	movl	-48(%rbp), %eax	# nsz, tmp672
	cltq
	addq	%rax, %rdx	# D.22142, D.22138
	movq	-136(%rbp), %rax	# cxt, tmp673
	movq	%rdx, 176(%rax)	# D.22138, cxt_2(D)->membuf.aend
.LBE219:
	movq	-136(%rbp), %rax	# cxt, tmp675
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	leaq	1(%rax), %rcx	#, D.22138
	movq	-136(%rbp), %rdx	# cxt, tmp676
	movq	%rcx, 168(%rdx)	# D.22138, cxt_2(D)->membuf.aptr
	movzbl	-117(%rbp), %edx	# flag, flag.371
	movb	%dl, (%rax)	# flag.371, *_319
	jmp	.L701	#
.L698:
	movzbl	-117(%rbp), %edx	# flag, D.22133
	movq	-136(%rbp), %rax	# cxt, tmp677
	movq	216(%rax), %rax	# cxt_2(D)->fio, D.22137
	movl	%edx, %esi	# D.22133,
	movq	%rax, %rdi	# D.22137,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22133
	jne	.L701	#,
	.loc 1 3213 0 discriminator 1
	movl	$-1, %eax	#, D.22133
	jmp	.L714	#
.L701:
	.loc 1 3214 0 is_stmt 1
	movq	-136(%rbp), %rax	# cxt, tmp678
	movl	80(%rax), %eax	# cxt_2(D)->netorder, D.22133
	testl	%eax, %eax	# D.22133
	je	.L702	#,
.LBB220:
	.loc 1 3214 0 is_stmt 0 discriminator 1
	movl	-116(%rbp), %eax	# len, len.372
	cltq
	movq	%rax, %rdi	# D.22140,
	call	Perl_my_htonl	#
	movl	%eax, -108(%rbp)	# y.373, y
	movq	-136(%rbp), %rax	# cxt, tmp679
	movq	216(%rax), %rax	# cxt_2(D)->fio, D.22137
	testq	%rax, %rax	# D.22137
	jne	.L703	#,
.LBB221:
	movq	-136(%rbp), %rax	# cxt, tmp680
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	leaq	4(%rax), %rdx	#, D.22138
	movq	-136(%rbp), %rax	# cxt, tmp681
	movq	176(%rax), %rax	# cxt_2(D)->membuf.aend, D.22138
	cmpq	%rax, %rdx	# D.22138, D.22138
	jbe	.L704	#,
.LBB222:
	movq	-136(%rbp), %rax	# cxt, tmp682
	movq	160(%rax), %rax	# cxt_2(D)->membuf.asiz, D.22136
	addl	$8195, %eax	#, D.22139
	andl	$-8192, %eax	#, tmp683
	movl	%eax, -40(%rbp)	# tmp683, nsz
	movq	-136(%rbp), %rax	# cxt, tmp684
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	movq	%rax, %rdx	# D.22138, D.22140
	movq	-136(%rbp), %rax	# cxt, tmp685
	movq	152(%rax), %rax	# cxt_2(D)->membuf.arena, D.22138
	subq	%rax, %rdx	# D.22140, D.22140
	movq	%rdx, %rax	# D.22140, D.22140
	movl	%eax, -36(%rbp)	# D.22140, offset
	movl	-40(%rbp), %eax	# nsz, tmp686
	movslq	%eax, %rdx	# tmp686, D.22136
	movq	-136(%rbp), %rax	# cxt, tmp687
	movq	152(%rax), %rax	# cxt_2(D)->membuf.arena, D.22138
	movq	%rdx, %rsi	# D.22136,
	movq	%rax, %rdi	# D.22138,
	call	Perl_safesysrealloc	#
	movq	-136(%rbp), %rdx	# cxt, tmp688
	movq	%rax, 152(%rdx)	# D.22141, cxt_2(D)->membuf.arena
	movl	-40(%rbp), %eax	# nsz, tmp689
	movslq	%eax, %rdx	# tmp689, D.22136
	movq	-136(%rbp), %rax	# cxt, tmp690
	movq	%rdx, 160(%rax)	# D.22136, cxt_2(D)->membuf.asiz
	movq	-136(%rbp), %rax	# cxt, tmp691
	movq	152(%rax), %rdx	# cxt_2(D)->membuf.arena, D.22138
	movl	-36(%rbp), %eax	# offset, tmp692
	cltq
	addq	%rax, %rdx	# D.22142, D.22138
	movq	-136(%rbp), %rax	# cxt, tmp693
	movq	%rdx, 168(%rax)	# D.22138, cxt_2(D)->membuf.aptr
	movq	-136(%rbp), %rax	# cxt, tmp694
	movq	152(%rax), %rdx	# cxt_2(D)->membuf.arena, D.22138
	movl	-40(%rbp), %eax	# nsz, tmp695
	cltq
	addq	%rax, %rdx	# D.22142, D.22138
	movq	-136(%rbp), %rax	# cxt, tmp696
	movq	%rdx, 176(%rax)	# D.22138, cxt_2(D)->membuf.aend
.L704:
.LBE222:
	.loc 1 3214 0 discriminator 2
	movq	-136(%rbp), %rax	# cxt, tmp698
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	movq	%rax, %rdx	# D.22138, D.22136
	movq	-136(%rbp), %rax	# cxt, tmp699
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	andq	$-4, %rax	#, D.22136
	cmpq	%rax, %rdx	# D.22136, D.22136
	jne	.L705	#,
	.loc 1 3214 0 discriminator 1
	movq	-136(%rbp), %rax	# cxt, tmp700
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	movl	-108(%rbp), %edx	# y, y.374
	movl	%edx, (%rax)	# y.374, MEM[(int *)_362]
	jmp	.L706	#
.L705:
	.loc 1 3214 0 discriminator 2
	movq	-136(%rbp), %rax	# cxt, tmp701
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	movl	-108(%rbp), %edx	# MEM[(char * {ref-all})&y], D.22133
	movl	%edx, (%rax)	# D.22133, MEM[(char * {ref-all})_364]
.L706:
	.loc 1 3214 0 discriminator 1
	movq	-136(%rbp), %rax	# cxt, tmp702
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	leaq	4(%rax), %rdx	#, D.22138
	movq	-136(%rbp), %rax	# cxt, tmp703
	movq	%rdx, 168(%rax)	# D.22138, cxt_2(D)->membuf.aptr
.LBE221:
	jmp	.L707	#
.L703:
	.loc 1 3214 0 discriminator 2
	movq	-136(%rbp), %rax	# cxt, tmp705
	movq	216(%rax), %rax	# cxt_2(D)->fio, D.22137
	leaq	-108(%rbp), %rcx	#, tmp706
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp706,
	movq	%rax, %rdi	# D.22137,
	call	Perl_PerlIO_write	#
	cmpq	$4, %rax	#, D.22140
	je	.L707	#,
	.loc 1 3214 0 discriminator 1
	movl	$-1, %eax	#, D.22133
	jmp	.L714	#
.L707:
.LBE220:
	jmp	.L697	#
.L702:
	.loc 1 3214 0 discriminator 2
	movq	-136(%rbp), %rax	# cxt, tmp707
	movq	216(%rax), %rax	# cxt_2(D)->fio, D.22137
	testq	%rax, %rax	# D.22137
	jne	.L708	#,
.LBB223:
	.loc 1 3214 0 discriminator 1
	movq	-136(%rbp), %rax	# cxt, tmp708
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	leaq	4(%rax), %rdx	#, D.22138
	movq	-136(%rbp), %rax	# cxt, tmp709
	movq	176(%rax), %rax	# cxt_2(D)->membuf.aend, D.22138
	cmpq	%rax, %rdx	# D.22138, D.22138
	jbe	.L709	#,
.LBB224:
	movq	-136(%rbp), %rax	# cxt, tmp710
	movq	160(%rax), %rax	# cxt_2(D)->membuf.asiz, D.22136
	addl	$8195, %eax	#, D.22139
	andl	$-8192, %eax	#, tmp711
	movl	%eax, -32(%rbp)	# tmp711, nsz
	movq	-136(%rbp), %rax	# cxt, tmp712
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	movq	%rax, %rdx	# D.22138, D.22140
	movq	-136(%rbp), %rax	# cxt, tmp713
	movq	152(%rax), %rax	# cxt_2(D)->membuf.arena, D.22138
	subq	%rax, %rdx	# D.22140, D.22140
	movq	%rdx, %rax	# D.22140, D.22140
	movl	%eax, -28(%rbp)	# D.22140, offset
	movl	-32(%rbp), %eax	# nsz, tmp714
	movslq	%eax, %rdx	# tmp714, D.22136
	movq	-136(%rbp), %rax	# cxt, tmp715
	movq	152(%rax), %rax	# cxt_2(D)->membuf.arena, D.22138
	movq	%rdx, %rsi	# D.22136,
	movq	%rax, %rdi	# D.22138,
	call	Perl_safesysrealloc	#
	movq	-136(%rbp), %rdx	# cxt, tmp716
	movq	%rax, 152(%rdx)	# D.22141, cxt_2(D)->membuf.arena
	movl	-32(%rbp), %eax	# nsz, tmp717
	movslq	%eax, %rdx	# tmp717, D.22136
	movq	-136(%rbp), %rax	# cxt, tmp718
	movq	%rdx, 160(%rax)	# D.22136, cxt_2(D)->membuf.asiz
	movq	-136(%rbp), %rax	# cxt, tmp719
	movq	152(%rax), %rdx	# cxt_2(D)->membuf.arena, D.22138
	movl	-28(%rbp), %eax	# offset, tmp720
	cltq
	addq	%rax, %rdx	# D.22142, D.22138
	movq	-136(%rbp), %rax	# cxt, tmp721
	movq	%rdx, 168(%rax)	# D.22138, cxt_2(D)->membuf.aptr
	movq	-136(%rbp), %rax	# cxt, tmp722
	movq	152(%rax), %rdx	# cxt_2(D)->membuf.arena, D.22138
	movl	-32(%rbp), %eax	# nsz, tmp723
	cltq
	addq	%rax, %rdx	# D.22142, D.22138
	movq	-136(%rbp), %rax	# cxt, tmp724
	movq	%rdx, 176(%rax)	# D.22138, cxt_2(D)->membuf.aend
.L709:
.LBE224:
	.loc 1 3214 0 discriminator 2
	movq	-136(%rbp), %rax	# cxt, tmp726
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	movq	%rax, %rdx	# D.22138, D.22136
	movq	-136(%rbp), %rax	# cxt, tmp727
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	andq	$-4, %rax	#, D.22136
	cmpq	%rax, %rdx	# D.22136, D.22136
	jne	.L710	#,
	.loc 1 3214 0 discriminator 1
	movq	-136(%rbp), %rax	# cxt, tmp728
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	movl	-116(%rbp), %edx	# len, len.375
	movl	%edx, (%rax)	# len.375, MEM[(int *)_403]
	jmp	.L711	#
.L710:
	.loc 1 3214 0 discriminator 2
	movq	-136(%rbp), %rax	# cxt, tmp729
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	movl	-116(%rbp), %edx	# MEM[(char * {ref-all})&len], D.22133
	movl	%edx, (%rax)	# D.22133, MEM[(char * {ref-all})_405]
.L711:
	.loc 1 3214 0 discriminator 1
	movq	-136(%rbp), %rax	# cxt, tmp730
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	leaq	4(%rax), %rdx	#, D.22138
	movq	-136(%rbp), %rax	# cxt, tmp731
	movq	%rdx, 168(%rax)	# D.22138, cxt_2(D)->membuf.aptr
.LBE223:
	jmp	.L697	#
.L708:
	.loc 1 3214 0 discriminator 2
	movq	-136(%rbp), %rax	# cxt, tmp733
	movq	216(%rax), %rax	# cxt_2(D)->fio, D.22137
	leaq	-116(%rbp), %rcx	#, tmp734
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp734,
	movq	%rax, %rdi	# D.22137,
	call	Perl_PerlIO_write	#
	cmpq	$4, %rax	#, D.22140
	je	.L697	#,
	.loc 1 3214 0 discriminator 1
	movl	$-1, %eax	#, D.22133
	jmp	.L714	#
.L697:
.LBE218:
	.loc 1 3216 0 is_stmt 1
	movq	-136(%rbp), %rax	# cxt, tmp735
	movq	216(%rax), %rax	# cxt_2(D)->fio, D.22137
	testq	%rax, %rax	# D.22137
	jne	.L712	#,
.LBB225:
	.loc 1 3216 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# cxt, tmp736
	movq	168(%rax), %rdx	# cxt_2(D)->membuf.aptr, D.22138
	movl	-116(%rbp), %eax	# len, len.376
	cltq
	addq	%rax, %rdx	# D.22142, D.22138
	movq	-136(%rbp), %rax	# cxt, tmp737
	movq	176(%rax), %rax	# cxt_2(D)->membuf.aend, D.22138
	cmpq	%rax, %rdx	# D.22138, D.22138
	jbe	.L713	#,
.LBB226:
	movq	-136(%rbp), %rax	# cxt, tmp738
	movq	160(%rax), %rax	# cxt_2(D)->membuf.asiz, D.22136
	movl	%eax, %edx	# D.22136, D.22139
	movl	-116(%rbp), %eax	# len, len.377
	addl	%edx, %eax	# D.22139, D.22139
	addl	$8191, %eax	#, D.22139
	andl	$-8192, %eax	#, tmp739
	movl	%eax, -24(%rbp)	# tmp739, nsz
	movq	-136(%rbp), %rax	# cxt, tmp740
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	movq	%rax, %rdx	# D.22138, D.22140
	movq	-136(%rbp), %rax	# cxt, tmp741
	movq	152(%rax), %rax	# cxt_2(D)->membuf.arena, D.22138
	subq	%rax, %rdx	# D.22140, D.22140
	movq	%rdx, %rax	# D.22140, D.22140
	movl	%eax, -20(%rbp)	# D.22140, offset
	movl	-24(%rbp), %eax	# nsz, tmp742
	movslq	%eax, %rdx	# tmp742, D.22136
	movq	-136(%rbp), %rax	# cxt, tmp743
	movq	152(%rax), %rax	# cxt_2(D)->membuf.arena, D.22138
	movq	%rdx, %rsi	# D.22136,
	movq	%rax, %rdi	# D.22138,
	call	Perl_safesysrealloc	#
	movq	-136(%rbp), %rdx	# cxt, tmp744
	movq	%rax, 152(%rdx)	# D.22141, cxt_2(D)->membuf.arena
	movl	-24(%rbp), %eax	# nsz, tmp745
	movslq	%eax, %rdx	# tmp745, D.22136
	movq	-136(%rbp), %rax	# cxt, tmp746
	movq	%rdx, 160(%rax)	# D.22136, cxt_2(D)->membuf.asiz
	movq	-136(%rbp), %rax	# cxt, tmp747
	movq	152(%rax), %rdx	# cxt_2(D)->membuf.arena, D.22138
	movl	-20(%rbp), %eax	# offset, tmp748
	cltq
	addq	%rax, %rdx	# D.22142, D.22138
	movq	-136(%rbp), %rax	# cxt, tmp749
	movq	%rdx, 168(%rax)	# D.22138, cxt_2(D)->membuf.aptr
	movq	-136(%rbp), %rax	# cxt, tmp750
	movq	152(%rax), %rdx	# cxt_2(D)->membuf.arena, D.22138
	movl	-24(%rbp), %eax	# nsz, tmp751
	cltq
	addq	%rax, %rdx	# D.22142, D.22138
	movq	-136(%rbp), %rax	# cxt, tmp752
	movq	%rdx, 176(%rax)	# D.22138, cxt_2(D)->membuf.aend
.L713:
.LBE226:
	.loc 1 3216 0 discriminator 2
	movl	-116(%rbp), %eax	# len, len.379
	movslq	%eax, %rdx	# len.379, D.22136
	movq	-136(%rbp), %rax	# cxt, tmp754
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22138
	movq	-8(%rbp), %rcx	# class, tmp755
	movq	%rcx, %rsi	# tmp755,
	movq	%rax, %rdi	# D.22138,
	call	memcpy	#
	movq	-136(%rbp), %rax	# cxt, tmp756
	movq	168(%rax), %rdx	# cxt_2(D)->membuf.aptr, D.22138
	movl	-116(%rbp), %eax	# len, len.380
	cltq
	addq	%rax, %rdx	# D.22142, D.22138
	movq	-136(%rbp), %rax	# cxt, tmp757
	movq	%rdx, 168(%rax)	# D.22138, cxt_2(D)->membuf.aptr
.LBE225:
	jmp	.L687	#
.L712:
	movl	-116(%rbp), %eax	# len, len.381
	movslq	%eax, %rdx	# len.381, D.22136
	movq	-136(%rbp), %rax	# cxt, tmp759
	movq	216(%rax), %rax	# cxt_2(D)->fio, D.22137
	movq	-8(%rbp), %rcx	# class, tmp760
	movq	%rcx, %rsi	# tmp760,
	movq	%rax, %rdi	# D.22137,
	call	Perl_PerlIO_write	#
	movl	-116(%rbp), %edx	# len, len.382
	movslq	%edx, %rdx	# len.382, D.22140
	cmpq	%rdx, %rax	# D.22140, D.22140
	je	.L687	#,
	.loc 1 3216 0 discriminator 1
	movl	$-1, %eax	#, D.22133
	jmp	.L714	#
.L687:
	.loc 1 3223 0 is_stmt 1
	movl	-148(%rbp), %eax	# type, tmp762
	cltq
	movq	sv_store(,%rax,8), %rax	# sv_store, D.22143
	movq	-144(%rbp), %rcx	# sv, tmp763
	movq	-136(%rbp), %rdx	# cxt, tmp764
	movq	%rcx, %rsi	# tmp763,
	movq	%rdx, %rdi	# tmp764,
	call	*%rax	# D.22143
.L714:
	.loc 1 3224 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	store_blessed, .-store_blessed
	.section	.rodata
.LC26:
	.string	"Storable::forgive_me"
.LC27:
	.string	"Can't store %s items"
.LC28:
	.string	"Can't store item %s(0x%lx)"
.LC29:
	.string	"You lost %s(0x%lx)%c"
	.text
	.type	store_other, @function
store_other:
.LFB30:
	.loc 1 3237 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)	# cxt, cxt
	movq	%rsi, -112(%rbp)	# sv, sv
	.loc 1 3248 0
	movq	-104(%rbp), %rax	# cxt, tmp367
	movl	88(%rax), %eax	# cxt_7(D)->forgive_me, D.22145
	.loc 1 3247 0
	testl	%eax, %eax	# D.22145
	je	.L716	#,
	.loc 1 3249 0
	movq	-104(%rbp), %rax	# cxt, tmp368
	movl	88(%rax), %eax	# cxt_7(D)->forgive_me, D.22145
	.loc 1 3248 0
	testl	%eax, %eax	# D.22145
	jns	.L717	#,
	.loc 1 3250 0
	movl	$1, %esi	#,
	movl	$.LC26, %edi	#,
	call	Perl_get_sv	#
	testq	%rax, %rax	# D.22146
	je	.L718	#,
	.loc 1 3250 0 is_stmt 0 discriminator 1
	movl	$1, %esi	#,
	movl	$.LC26, %edi	#,
	call	Perl_get_sv	#
	movl	12(%rax), %eax	# _11->sv_flags, D.22147
	andl	$262144, %eax	#, D.22147
	testl	%eax, %eax	# D.22147
	je	.L719	#,
	movl	$1, %esi	#,
	movl	$.LC26, %edi	#,
	call	Perl_get_sv	#
	movq	(%rax), %rax	# _14->sv_any, PL_Xpv.386
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.386, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.387
	testq	%rax, %rax	# PL_Xpv.387
	je	.L720	#,
	.loc 1 3250 0 discriminator 3
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.388
	movq	8(%rax), %rax	# PL_Xpv.388_17->xpv_cur, D.22148
	cmpq	$1, %rax	#, D.22148
	ja	.L721	#,
	.loc 1 3250 0 discriminator 6
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.389
	movq	8(%rax), %rax	# PL_Xpv.389_19->xpv_cur, D.22148
	testq	%rax, %rax	# D.22148
	je	.L720	#,
	.loc 1 3250 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.390
	movq	(%rax), %rax	# PL_Xpv.390_21->xpv_pv, D.22149
	movzbl	(%rax), %eax	# *_22, D.22150
	cmpb	$48, %al	#, D.22150
	je	.L720	#,
.L721:
	.loc 1 3250 0 discriminator 5
	movl	$1, %eax	#, iftmp.385
	jmp	.L722	#
.L720:
	.loc 1 3250 0 discriminator 4
	movl	$0, %eax	#, iftmp.385
.L722:
	jmp	.L728	#
.L719:
	.loc 1 3250 0 discriminator 2
	movl	$1, %esi	#,
	movl	$.LC26, %edi	#,
	call	Perl_get_sv	#
	movl	12(%rax), %eax	# _27->sv_flags, D.22147
	andl	$65536, %eax	#, D.22147
	testl	%eax, %eax	# D.22147
	je	.L724	#,
	.loc 1 3250 0 discriminator 8
	movl	$1, %esi	#,
	movl	$.LC26, %edi	#,
	call	Perl_get_sv	#
	movq	(%rax), %rax	# _30->sv_any, D.22151
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_31].xiv_iv, D.22152
	testq	%rax, %rax	# D.22152
	setne	%al	#, D.22153
	movzbl	%al, %eax	# D.22153, iftmp.391
	jmp	.L728	#
.L724:
	.loc 1 3250 0 discriminator 9
	movl	$1, %esi	#,
	movl	$.LC26, %edi	#,
	call	Perl_get_sv	#
	movl	12(%rax), %eax	# _35->sv_flags, D.22147
	andl	$131072, %eax	#, D.22147
	testl	%eax, %eax	# D.22147
	je	.L726	#,
	.loc 1 3250 0 discriminator 10
	movl	$1, %esi	#,
	movl	$.LC26, %edi	#,
	call	Perl_get_sv	#
	movq	(%rax), %rax	# _38->sv_any, D.22151
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_39].xnv_nv, D.22154
	xorpd	%xmm1, %xmm1	# tmp370
	ucomisd	%xmm1, %xmm0	# tmp370, D.22154
	setp	%dl	#, tmp369
	movl	$1, %eax	#, tmp372
	xorpd	%xmm1, %xmm1	# tmp371
	ucomisd	%xmm1, %xmm0	# tmp371, D.22154
	cmove	%edx, %eax	# tmp369,, D.22153
	movzbl	%al, %eax	# D.22153, iftmp.392
	jmp	.L728	#
.L726:
	.loc 1 3250 0 discriminator 11
	movl	$1, %esi	#,
	movl	$.LC26, %edi	#,
	call	Perl_get_sv	#
	movq	%rax, %rdi	# D.22146,
	call	Perl_sv_2bool	#
	testb	%al, %al	# D.22150
	setne	%al	#, D.22153
	movzbl	%al, %eax	# D.22153, iftmp.392
	jmp	.L728	#
.L718:
	.loc 1 3250 0 discriminator 2
	movl	$0, %eax	#, iftmp.383
.L728:
	.loc 1 3249 0 is_stmt 1
	movq	-104(%rbp), %rdx	# cxt, tmp373
	movl	%eax, 88(%rdx)	# iftmp.383, cxt_7(D)->forgive_me
	movq	-104(%rbp), %rax	# cxt, tmp374
	movl	88(%rax), %eax	# cxt_7(D)->forgive_me, D.22145
	testl	%eax, %eax	# D.22145
	jne	.L717	#,
.L716:
.LBB227:
	.loc 1 3252 0
	movq	-104(%rbp), %rax	# cxt, tmp375
	movl	$1, 112(%rax)	#, cxt_7(D)->s_dirty
	movq	-112(%rbp), %rax	# sv, tmp376
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp376,
	call	Perl_sv_reftype	#
	movq	%rax, %rsi	# D.22149,
	movl	$.LC27, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L717:
.LBE227:
	.loc 1 3254 0
	movq	-112(%rbp), %rbx	# sv, sv.393
	movq	-112(%rbp), %rax	# sv, tmp377
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp377,
	call	Perl_sv_reftype	#
	movq	%rbx, %rdx	# sv.393,
	movq	%rax, %rsi	# D.22149,
	movl	$.LC28, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warn	#
	.loc 1 3261 0
	movq	-112(%rbp), %rbx	# sv, sv.394
	movq	-112(%rbp), %rax	# sv, tmp378
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp378,
	call	Perl_sv_reftype	#
	movl	$0, %r8d	#,
	movq	%rbx, %rcx	# sv.394,
	movq	%rax, %rdx	# D.22149,
	movl	$.LC29, %esi	#,
	movl	$buf.11132, %edi	#,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 1 3264 0
	movl	$buf.11132, %edi	#,
	call	strlen	#
	movl	%eax, -80(%rbp)	# len.395, len
	.loc 1 3265 0
	movl	-80(%rbp), %eax	# len, len.396
	cmpl	$255, %eax	#, len.396
	jg	.L729	#,
.LBB228:
	.loc 1 3265 0 is_stmt 0 discriminator 1
	movl	-80(%rbp), %eax	# len, len.397
	movb	%al, -81(%rbp)	# len.397, clen
	movq	-104(%rbp), %rax	# cxt, tmp379
	movq	216(%rax), %rax	# cxt_7(D)->fio, D.22155
	testq	%rax, %rax	# D.22155
	jne	.L730	#,
	movq	-104(%rbp), %rax	# cxt, tmp380
	movq	168(%rax), %rdx	# cxt_7(D)->membuf.aptr, D.22149
	movq	-104(%rbp), %rax	# cxt, tmp381
	movq	176(%rax), %rax	# cxt_7(D)->membuf.aend, D.22149
	cmpq	%rax, %rdx	# D.22149, D.22149
	jae	.L731	#,
	movq	-104(%rbp), %rax	# cxt, tmp382
	movq	168(%rax), %rax	# cxt_7(D)->membuf.aptr, D.22149
	leaq	1(%rax), %rcx	#, D.22149
	movq	-104(%rbp), %rdx	# cxt, tmp383
	movq	%rcx, 168(%rdx)	# D.22149, cxt_7(D)->membuf.aptr
	movb	$10, (%rax)	#, *_67
	jmp	.L733	#
.L731:
.LBB229:
	.loc 1 3265 0 discriminator 2
	movq	-104(%rbp), %rax	# cxt, tmp384
	movq	160(%rax), %rax	# cxt_7(D)->membuf.asiz, D.22148
	addl	$8192, %eax	#, D.22156
	andl	$-8192, %eax	#, tmp385
	movl	%eax, -72(%rbp)	# tmp385, nsz
	movq	-104(%rbp), %rax	# cxt, tmp386
	movq	168(%rax), %rax	# cxt_7(D)->membuf.aptr, D.22149
	movq	%rax, %rdx	# D.22149, D.22152
	movq	-104(%rbp), %rax	# cxt, tmp387
	movq	152(%rax), %rax	# cxt_7(D)->membuf.arena, D.22149
	subq	%rax, %rdx	# D.22152, D.22152
	movq	%rdx, %rax	# D.22152, D.22152
	movl	%eax, -68(%rbp)	# D.22152, offset
	movl	-72(%rbp), %eax	# nsz, tmp388
	movslq	%eax, %rdx	# tmp388, D.22148
	movq	-104(%rbp), %rax	# cxt, tmp389
	movq	152(%rax), %rax	# cxt_7(D)->membuf.arena, D.22149
	movq	%rdx, %rsi	# D.22148,
	movq	%rax, %rdi	# D.22149,
	call	Perl_safesysrealloc	#
	movq	-104(%rbp), %rdx	# cxt, tmp390
	movq	%rax, 152(%rdx)	# D.22151, cxt_7(D)->membuf.arena
	movl	-72(%rbp), %eax	# nsz, tmp391
	movslq	%eax, %rdx	# tmp391, D.22148
	movq	-104(%rbp), %rax	# cxt, tmp392
	movq	%rdx, 160(%rax)	# D.22148, cxt_7(D)->membuf.asiz
	movq	-104(%rbp), %rax	# cxt, tmp393
	movq	152(%rax), %rdx	# cxt_7(D)->membuf.arena, D.22149
	movl	-68(%rbp), %eax	# offset, tmp394
	cltq
	addq	%rax, %rdx	# D.22157, D.22149
	movq	-104(%rbp), %rax	# cxt, tmp395
	movq	%rdx, 168(%rax)	# D.22149, cxt_7(D)->membuf.aptr
	movq	-104(%rbp), %rax	# cxt, tmp396
	movq	152(%rax), %rdx	# cxt_7(D)->membuf.arena, D.22149
	movl	-72(%rbp), %eax	# nsz, tmp397
	cltq
	addq	%rax, %rdx	# D.22157, D.22149
	movq	-104(%rbp), %rax	# cxt, tmp398
	movq	%rdx, 176(%rax)	# D.22149, cxt_7(D)->membuf.aend
.LBE229:
	movq	-104(%rbp), %rax	# cxt, tmp400
	movq	168(%rax), %rax	# cxt_7(D)->membuf.aptr, D.22149
	leaq	1(%rax), %rcx	#, D.22149
	movq	-104(%rbp), %rdx	# cxt, tmp401
	movq	%rcx, 168(%rdx)	# D.22149, cxt_7(D)->membuf.aptr
	movb	$10, (%rax)	#, *_92
	jmp	.L733	#
.L730:
	movq	-104(%rbp), %rax	# cxt, tmp402
	movq	216(%rax), %rax	# cxt_7(D)->fio, D.22155
	movl	$10, %esi	#,
	movq	%rax, %rdi	# D.22155,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22145
	jne	.L733	#,
	.loc 1 3265 0 discriminator 1
	movl	$-1, %eax	#, D.22145
	jmp	.L760	#
.L733:
	.loc 1 3265 0 discriminator 2
	movq	-104(%rbp), %rax	# cxt, tmp403
	movq	216(%rax), %rax	# cxt_7(D)->fio, D.22155
	testq	%rax, %rax	# D.22155
	jne	.L735	#,
	.loc 1 3265 0 discriminator 1
	movq	-104(%rbp), %rax	# cxt, tmp404
	movq	168(%rax), %rdx	# cxt_7(D)->membuf.aptr, D.22149
	movq	-104(%rbp), %rax	# cxt, tmp405
	movq	176(%rax), %rax	# cxt_7(D)->membuf.aend, D.22149
	cmpq	%rax, %rdx	# D.22149, D.22149
	jae	.L736	#,
	movq	-104(%rbp), %rax	# cxt, tmp406
	movq	168(%rax), %rax	# cxt_7(D)->membuf.aptr, D.22149
	leaq	1(%rax), %rcx	#, D.22149
	movq	-104(%rbp), %rdx	# cxt, tmp407
	movq	%rcx, 168(%rdx)	# D.22149, cxt_7(D)->membuf.aptr
	movzbl	-81(%rbp), %edx	# clen, clen.398
	movb	%dl, (%rax)	# clen.398, *_101
	jmp	.L738	#
.L736:
.LBB230:
	.loc 1 3265 0 discriminator 2
	movq	-104(%rbp), %rax	# cxt, tmp408
	movq	160(%rax), %rax	# cxt_7(D)->membuf.asiz, D.22148
	addl	$8192, %eax	#, D.22156
	andl	$-8192, %eax	#, tmp409
	movl	%eax, -64(%rbp)	# tmp409, nsz
	movq	-104(%rbp), %rax	# cxt, tmp410
	movq	168(%rax), %rax	# cxt_7(D)->membuf.aptr, D.22149
	movq	%rax, %rdx	# D.22149, D.22152
	movq	-104(%rbp), %rax	# cxt, tmp411
	movq	152(%rax), %rax	# cxt_7(D)->membuf.arena, D.22149
	subq	%rax, %rdx	# D.22152, D.22152
	movq	%rdx, %rax	# D.22152, D.22152
	movl	%eax, -60(%rbp)	# D.22152, offset
	movl	-64(%rbp), %eax	# nsz, tmp412
	movslq	%eax, %rdx	# tmp412, D.22148
	movq	-104(%rbp), %rax	# cxt, tmp413
	movq	152(%rax), %rax	# cxt_7(D)->membuf.arena, D.22149
	movq	%rdx, %rsi	# D.22148,
	movq	%rax, %rdi	# D.22149,
	call	Perl_safesysrealloc	#
	movq	-104(%rbp), %rdx	# cxt, tmp414
	movq	%rax, 152(%rdx)	# D.22151, cxt_7(D)->membuf.arena
	movl	-64(%rbp), %eax	# nsz, tmp415
	movslq	%eax, %rdx	# tmp415, D.22148
	movq	-104(%rbp), %rax	# cxt, tmp416
	movq	%rdx, 160(%rax)	# D.22148, cxt_7(D)->membuf.asiz
	movq	-104(%rbp), %rax	# cxt, tmp417
	movq	152(%rax), %rdx	# cxt_7(D)->membuf.arena, D.22149
	movl	-60(%rbp), %eax	# offset, tmp418
	cltq
	addq	%rax, %rdx	# D.22157, D.22149
	movq	-104(%rbp), %rax	# cxt, tmp419
	movq	%rdx, 168(%rax)	# D.22149, cxt_7(D)->membuf.aptr
	movq	-104(%rbp), %rax	# cxt, tmp420
	movq	152(%rax), %rdx	# cxt_7(D)->membuf.arena, D.22149
	movl	-64(%rbp), %eax	# nsz, tmp421
	cltq
	addq	%rax, %rdx	# D.22157, D.22149
	movq	-104(%rbp), %rax	# cxt, tmp422
	movq	%rdx, 176(%rax)	# D.22149, cxt_7(D)->membuf.aend
.LBE230:
	movq	-104(%rbp), %rax	# cxt, tmp424
	movq	168(%rax), %rax	# cxt_7(D)->membuf.aptr, D.22149
	leaq	1(%rax), %rcx	#, D.22149
	movq	-104(%rbp), %rdx	# cxt, tmp425
	movq	%rcx, 168(%rdx)	# D.22149, cxt_7(D)->membuf.aptr
	movzbl	-81(%rbp), %edx	# clen, clen.399
	movb	%dl, (%rax)	# clen.399, *_127
	jmp	.L738	#
.L735:
	movzbl	-81(%rbp), %edx	# clen, D.22145
	movq	-104(%rbp), %rax	# cxt, tmp426
	movq	216(%rax), %rax	# cxt_7(D)->fio, D.22155
	movl	%edx, %esi	# D.22145,
	movq	%rax, %rdi	# D.22155,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22145
	jne	.L738	#,
	.loc 1 3265 0 discriminator 1
	movl	$-1, %eax	#, D.22145
	jmp	.L760	#
.L738:
	.loc 1 3265 0 discriminator 2
	movl	-80(%rbp), %eax	# len, len.400
	testl	%eax, %eax	# len.400
	je	.L739	#,
	.loc 1 3265 0 discriminator 1
	movq	-104(%rbp), %rax	# cxt, tmp427
	movq	216(%rax), %rax	# cxt_7(D)->fio, D.22155
	testq	%rax, %rax	# D.22155
	jne	.L740	#,
.LBB231:
	movq	-104(%rbp), %rax	# cxt, tmp428
	movq	168(%rax), %rdx	# cxt_7(D)->membuf.aptr, D.22149
	movl	-80(%rbp), %eax	# len, len.401
	cltq
	addq	%rax, %rdx	# D.22157, D.22149
	movq	-104(%rbp), %rax	# cxt, tmp429
	movq	176(%rax), %rax	# cxt_7(D)->membuf.aend, D.22149
	cmpq	%rax, %rdx	# D.22149, D.22149
	jbe	.L741	#,
.LBB232:
	movq	-104(%rbp), %rax	# cxt, tmp430
	movq	160(%rax), %rax	# cxt_7(D)->membuf.asiz, D.22148
	movl	%eax, %edx	# D.22148, D.22156
	movl	-80(%rbp), %eax	# len, len.402
	addl	%edx, %eax	# D.22156, D.22156
	addl	$8191, %eax	#, D.22156
	andl	$-8192, %eax	#, tmp431
	movl	%eax, -56(%rbp)	# tmp431, nsz
	movq	-104(%rbp), %rax	# cxt, tmp432
	movq	168(%rax), %rax	# cxt_7(D)->membuf.aptr, D.22149
	movq	%rax, %rdx	# D.22149, D.22152
	movq	-104(%rbp), %rax	# cxt, tmp433
	movq	152(%rax), %rax	# cxt_7(D)->membuf.arena, D.22149
	subq	%rax, %rdx	# D.22152, D.22152
	movq	%rdx, %rax	# D.22152, D.22152
	movl	%eax, -52(%rbp)	# D.22152, offset
	movl	-56(%rbp), %eax	# nsz, tmp434
	movslq	%eax, %rdx	# tmp434, D.22148
	movq	-104(%rbp), %rax	# cxt, tmp435
	movq	152(%rax), %rax	# cxt_7(D)->membuf.arena, D.22149
	movq	%rdx, %rsi	# D.22148,
	movq	%rax, %rdi	# D.22149,
	call	Perl_safesysrealloc	#
	movq	-104(%rbp), %rdx	# cxt, tmp436
	movq	%rax, 152(%rdx)	# D.22151, cxt_7(D)->membuf.arena
	movl	-56(%rbp), %eax	# nsz, tmp437
	movslq	%eax, %rdx	# tmp437, D.22148
	movq	-104(%rbp), %rax	# cxt, tmp438
	movq	%rdx, 160(%rax)	# D.22148, cxt_7(D)->membuf.asiz
	movq	-104(%rbp), %rax	# cxt, tmp439
	movq	152(%rax), %rdx	# cxt_7(D)->membuf.arena, D.22149
	movl	-52(%rbp), %eax	# offset, tmp440
	cltq
	addq	%rax, %rdx	# D.22157, D.22149
	movq	-104(%rbp), %rax	# cxt, tmp441
	movq	%rdx, 168(%rax)	# D.22149, cxt_7(D)->membuf.aptr
	movq	-104(%rbp), %rax	# cxt, tmp442
	movq	152(%rax), %rdx	# cxt_7(D)->membuf.arena, D.22149
	movl	-56(%rbp), %eax	# nsz, tmp443
	cltq
	addq	%rax, %rdx	# D.22157, D.22149
	movq	-104(%rbp), %rax	# cxt, tmp444
	movq	%rdx, 176(%rax)	# D.22149, cxt_7(D)->membuf.aend
.L741:
.LBE232:
	.loc 1 3265 0 discriminator 2
	movl	-80(%rbp), %eax	# len, len.404
	movslq	%eax, %rdx	# len.404, D.22148
	movq	-104(%rbp), %rax	# cxt, tmp446
	movq	168(%rax), %rax	# cxt_7(D)->membuf.aptr, D.22149
	movl	$buf.11132, %esi	#,
	movq	%rax, %rdi	# D.22149,
	call	memcpy	#
	movq	-104(%rbp), %rax	# cxt, tmp447
	movq	168(%rax), %rdx	# cxt_7(D)->membuf.aptr, D.22149
	movl	-80(%rbp), %eax	# len, len.405
	cltq
	addq	%rax, %rdx	# D.22157, D.22149
	movq	-104(%rbp), %rax	# cxt, tmp448
	movq	%rdx, 168(%rax)	# D.22149, cxt_7(D)->membuf.aptr
.LBE231:
	jmp	.L739	#
.L740:
	movl	-80(%rbp), %eax	# len, len.406
	movslq	%eax, %rdx	# len.406, D.22148
	movq	-104(%rbp), %rax	# cxt, tmp450
	movq	216(%rax), %rax	# cxt_7(D)->fio, D.22155
	movl	$buf.11132, %esi	#,
	movq	%rax, %rdi	# D.22155,
	call	Perl_PerlIO_write	#
	movl	-80(%rbp), %edx	# len, len.407
	movslq	%edx, %rdx	# len.407, D.22152
	cmpq	%rdx, %rax	# D.22152, D.22152
	je	.L739	#,
	.loc 1 3265 0 discriminator 1
	movl	$-1, %eax	#, D.22145
	jmp	.L760	#
.L739:
.LBE228:
	jmp	.L742	#
.L729:
	.loc 1 3265 0 discriminator 2
	movq	-104(%rbp), %rax	# cxt, tmp451
	movq	216(%rax), %rax	# cxt_7(D)->fio, D.22155
	testq	%rax, %rax	# D.22155
	jne	.L743	#,
	.loc 1 3265 0 discriminator 1
	movq	-104(%rbp), %rax	# cxt, tmp452
	movq	168(%rax), %rdx	# cxt_7(D)->membuf.aptr, D.22149
	movq	-104(%rbp), %rax	# cxt, tmp453
	movq	176(%rax), %rax	# cxt_7(D)->membuf.aend, D.22149
	cmpq	%rax, %rdx	# D.22149, D.22149
	jae	.L744	#,
	movq	-104(%rbp), %rax	# cxt, tmp454
	movq	168(%rax), %rax	# cxt_7(D)->membuf.aptr, D.22149
	leaq	1(%rax), %rcx	#, D.22149
	movq	-104(%rbp), %rdx	# cxt, tmp455
	movq	%rcx, 168(%rdx)	# D.22149, cxt_7(D)->membuf.aptr
	movb	$1, (%rax)	#, *_185
	jmp	.L746	#
.L744:
.LBB233:
	.loc 1 3265 0 discriminator 2
	movq	-104(%rbp), %rax	# cxt, tmp456
	movq	160(%rax), %rax	# cxt_7(D)->membuf.asiz, D.22148
	addl	$8192, %eax	#, D.22156
	andl	$-8192, %eax	#, tmp457
	movl	%eax, -48(%rbp)	# tmp457, nsz
	movq	-104(%rbp), %rax	# cxt, tmp458
	movq	168(%rax), %rax	# cxt_7(D)->membuf.aptr, D.22149
	movq	%rax, %rdx	# D.22149, D.22152
	movq	-104(%rbp), %rax	# cxt, tmp459
	movq	152(%rax), %rax	# cxt_7(D)->membuf.arena, D.22149
	subq	%rax, %rdx	# D.22152, D.22152
	movq	%rdx, %rax	# D.22152, D.22152
	movl	%eax, -44(%rbp)	# D.22152, offset
	movl	-48(%rbp), %eax	# nsz, tmp460
	movslq	%eax, %rdx	# tmp460, D.22148
	movq	-104(%rbp), %rax	# cxt, tmp461
	movq	152(%rax), %rax	# cxt_7(D)->membuf.arena, D.22149
	movq	%rdx, %rsi	# D.22148,
	movq	%rax, %rdi	# D.22149,
	call	Perl_safesysrealloc	#
	movq	-104(%rbp), %rdx	# cxt, tmp462
	movq	%rax, 152(%rdx)	# D.22151, cxt_7(D)->membuf.arena
	movl	-48(%rbp), %eax	# nsz, tmp463
	movslq	%eax, %rdx	# tmp463, D.22148
	movq	-104(%rbp), %rax	# cxt, tmp464
	movq	%rdx, 160(%rax)	# D.22148, cxt_7(D)->membuf.asiz
	movq	-104(%rbp), %rax	# cxt, tmp465
	movq	152(%rax), %rdx	# cxt_7(D)->membuf.arena, D.22149
	movl	-44(%rbp), %eax	# offset, tmp466
	cltq
	addq	%rax, %rdx	# D.22157, D.22149
	movq	-104(%rbp), %rax	# cxt, tmp467
	movq	%rdx, 168(%rax)	# D.22149, cxt_7(D)->membuf.aptr
	movq	-104(%rbp), %rax	# cxt, tmp468
	movq	152(%rax), %rdx	# cxt_7(D)->membuf.arena, D.22149
	movl	-48(%rbp), %eax	# nsz, tmp469
	cltq
	addq	%rax, %rdx	# D.22157, D.22149
	movq	-104(%rbp), %rax	# cxt, tmp470
	movq	%rdx, 176(%rax)	# D.22149, cxt_7(D)->membuf.aend
.LBE233:
	movq	-104(%rbp), %rax	# cxt, tmp472
	movq	168(%rax), %rax	# cxt_7(D)->membuf.aptr, D.22149
	leaq	1(%rax), %rcx	#, D.22149
	movq	-104(%rbp), %rdx	# cxt, tmp473
	movq	%rcx, 168(%rdx)	# D.22149, cxt_7(D)->membuf.aptr
	movb	$1, (%rax)	#, *_210
	jmp	.L746	#
.L743:
	movq	-104(%rbp), %rax	# cxt, tmp474
	movq	216(%rax), %rax	# cxt_7(D)->fio, D.22155
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.22155,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22145
	jne	.L746	#,
	.loc 1 3265 0 discriminator 1
	movl	$-1, %eax	#, D.22145
	jmp	.L760	#
.L746:
	.loc 1 3265 0 discriminator 2
	movq	-104(%rbp), %rax	# cxt, tmp475
	movl	80(%rax), %eax	# cxt_7(D)->netorder, D.22145
	testl	%eax, %eax	# D.22145
	je	.L747	#,
.LBB234:
	.loc 1 3265 0 discriminator 1
	movl	-80(%rbp), %eax	# len, len.408
	cltq
	movq	%rax, %rdi	# D.22152,
	call	Perl_my_htonl	#
	movl	%eax, -76(%rbp)	# y.409, y
	movq	-104(%rbp), %rax	# cxt, tmp476
	movq	216(%rax), %rax	# cxt_7(D)->fio, D.22155
	testq	%rax, %rax	# D.22155
	jne	.L748	#,
.LBB235:
	movq	-104(%rbp), %rax	# cxt, tmp477
	movq	168(%rax), %rax	# cxt_7(D)->membuf.aptr, D.22149
	leaq	4(%rax), %rdx	#, D.22149
	movq	-104(%rbp), %rax	# cxt, tmp478
	movq	176(%rax), %rax	# cxt_7(D)->membuf.aend, D.22149
	cmpq	%rax, %rdx	# D.22149, D.22149
	jbe	.L749	#,
.LBB236:
	movq	-104(%rbp), %rax	# cxt, tmp479
	movq	160(%rax), %rax	# cxt_7(D)->membuf.asiz, D.22148
	addl	$8195, %eax	#, D.22156
	andl	$-8192, %eax	#, tmp480
	movl	%eax, -40(%rbp)	# tmp480, nsz
	movq	-104(%rbp), %rax	# cxt, tmp481
	movq	168(%rax), %rax	# cxt_7(D)->membuf.aptr, D.22149
	movq	%rax, %rdx	# D.22149, D.22152
	movq	-104(%rbp), %rax	# cxt, tmp482
	movq	152(%rax), %rax	# cxt_7(D)->membuf.arena, D.22149
	subq	%rax, %rdx	# D.22152, D.22152
	movq	%rdx, %rax	# D.22152, D.22152
	movl	%eax, -36(%rbp)	# D.22152, offset
	movl	-40(%rbp), %eax	# nsz, tmp483
	movslq	%eax, %rdx	# tmp483, D.22148
	movq	-104(%rbp), %rax	# cxt, tmp484
	movq	152(%rax), %rax	# cxt_7(D)->membuf.arena, D.22149
	movq	%rdx, %rsi	# D.22148,
	movq	%rax, %rdi	# D.22149,
	call	Perl_safesysrealloc	#
	movq	-104(%rbp), %rdx	# cxt, tmp485
	movq	%rax, 152(%rdx)	# D.22151, cxt_7(D)->membuf.arena
	movl	-40(%rbp), %eax	# nsz, tmp486
	movslq	%eax, %rdx	# tmp486, D.22148
	movq	-104(%rbp), %rax	# cxt, tmp487
	movq	%rdx, 160(%rax)	# D.22148, cxt_7(D)->membuf.asiz
	movq	-104(%rbp), %rax	# cxt, tmp488
	movq	152(%rax), %rdx	# cxt_7(D)->membuf.arena, D.22149
	movl	-36(%rbp), %eax	# offset, tmp489
	cltq
	addq	%rax, %rdx	# D.22157, D.22149
	movq	-104(%rbp), %rax	# cxt, tmp490
	movq	%rdx, 168(%rax)	# D.22149, cxt_7(D)->membuf.aptr
	movq	-104(%rbp), %rax	# cxt, tmp491
	movq	152(%rax), %rdx	# cxt_7(D)->membuf.arena, D.22149
	movl	-40(%rbp), %eax	# nsz, tmp492
	cltq
	addq	%rax, %rdx	# D.22157, D.22149
	movq	-104(%rbp), %rax	# cxt, tmp493
	movq	%rdx, 176(%rax)	# D.22149, cxt_7(D)->membuf.aend
.L749:
.LBE236:
	.loc 1 3265 0 discriminator 2
	movq	-104(%rbp), %rax	# cxt, tmp495
	movq	168(%rax), %rax	# cxt_7(D)->membuf.aptr, D.22149
	movq	%rax, %rdx	# D.22149, D.22148
	movq	-104(%rbp), %rax	# cxt, tmp496
	movq	168(%rax), %rax	# cxt_7(D)->membuf.aptr, D.22149
	andq	$-4, %rax	#, D.22148
	cmpq	%rax, %rdx	# D.22148, D.22148
	jne	.L750	#,
	.loc 1 3265 0 discriminator 1
	movq	-104(%rbp), %rax	# cxt, tmp497
	movq	168(%rax), %rax	# cxt_7(D)->membuf.aptr, D.22149
	movl	-76(%rbp), %edx	# y, y.410
	movl	%edx, (%rax)	# y.410, MEM[(int *)_251]
	jmp	.L751	#
.L750:
	.loc 1 3265 0 discriminator 2
	movq	-104(%rbp), %rax	# cxt, tmp498
	movq	168(%rax), %rax	# cxt_7(D)->membuf.aptr, D.22149
	movl	-76(%rbp), %edx	# MEM[(char * {ref-all})&y], D.22145
	movl	%edx, (%rax)	# D.22145, MEM[(char * {ref-all})_253]
.L751:
	.loc 1 3265 0 discriminator 1
	movq	-104(%rbp), %rax	# cxt, tmp499
	movq	168(%rax), %rax	# cxt_7(D)->membuf.aptr, D.22149
	leaq	4(%rax), %rdx	#, D.22149
	movq	-104(%rbp), %rax	# cxt, tmp500
	movq	%rdx, 168(%rax)	# D.22149, cxt_7(D)->membuf.aptr
.LBE235:
	jmp	.L752	#
.L748:
	.loc 1 3265 0 discriminator 2
	movq	-104(%rbp), %rax	# cxt, tmp502
	movq	216(%rax), %rax	# cxt_7(D)->fio, D.22155
	leaq	-76(%rbp), %rcx	#, tmp503
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp503,
	movq	%rax, %rdi	# D.22155,
	call	Perl_PerlIO_write	#
	cmpq	$4, %rax	#, D.22152
	je	.L752	#,
	.loc 1 3265 0 discriminator 1
	movl	$-1, %eax	#, D.22145
	jmp	.L760	#
.L752:
.LBE234:
	jmp	.L753	#
.L747:
	.loc 1 3265 0 discriminator 2
	movq	-104(%rbp), %rax	# cxt, tmp504
	movq	216(%rax), %rax	# cxt_7(D)->fio, D.22155
	testq	%rax, %rax	# D.22155
	jne	.L754	#,
.LBB237:
	.loc 1 3265 0 discriminator 1
	movq	-104(%rbp), %rax	# cxt, tmp505
	movq	168(%rax), %rax	# cxt_7(D)->membuf.aptr, D.22149
	leaq	4(%rax), %rdx	#, D.22149
	movq	-104(%rbp), %rax	# cxt, tmp506
	movq	176(%rax), %rax	# cxt_7(D)->membuf.aend, D.22149
	cmpq	%rax, %rdx	# D.22149, D.22149
	jbe	.L755	#,
.LBB238:
	movq	-104(%rbp), %rax	# cxt, tmp507
	movq	160(%rax), %rax	# cxt_7(D)->membuf.asiz, D.22148
	addl	$8195, %eax	#, D.22156
	andl	$-8192, %eax	#, tmp508
	movl	%eax, -32(%rbp)	# tmp508, nsz
	movq	-104(%rbp), %rax	# cxt, tmp509
	movq	168(%rax), %rax	# cxt_7(D)->membuf.aptr, D.22149
	movq	%rax, %rdx	# D.22149, D.22152
	movq	-104(%rbp), %rax	# cxt, tmp510
	movq	152(%rax), %rax	# cxt_7(D)->membuf.arena, D.22149
	subq	%rax, %rdx	# D.22152, D.22152
	movq	%rdx, %rax	# D.22152, D.22152
	movl	%eax, -28(%rbp)	# D.22152, offset
	movl	-32(%rbp), %eax	# nsz, tmp511
	movslq	%eax, %rdx	# tmp511, D.22148
	movq	-104(%rbp), %rax	# cxt, tmp512
	movq	152(%rax), %rax	# cxt_7(D)->membuf.arena, D.22149
	movq	%rdx, %rsi	# D.22148,
	movq	%rax, %rdi	# D.22149,
	call	Perl_safesysrealloc	#
	movq	-104(%rbp), %rdx	# cxt, tmp513
	movq	%rax, 152(%rdx)	# D.22151, cxt_7(D)->membuf.arena
	movl	-32(%rbp), %eax	# nsz, tmp514
	movslq	%eax, %rdx	# tmp514, D.22148
	movq	-104(%rbp), %rax	# cxt, tmp515
	movq	%rdx, 160(%rax)	# D.22148, cxt_7(D)->membuf.asiz
	movq	-104(%rbp), %rax	# cxt, tmp516
	movq	152(%rax), %rdx	# cxt_7(D)->membuf.arena, D.22149
	movl	-28(%rbp), %eax	# offset, tmp517
	cltq
	addq	%rax, %rdx	# D.22157, D.22149
	movq	-104(%rbp), %rax	# cxt, tmp518
	movq	%rdx, 168(%rax)	# D.22149, cxt_7(D)->membuf.aptr
	movq	-104(%rbp), %rax	# cxt, tmp519
	movq	152(%rax), %rdx	# cxt_7(D)->membuf.arena, D.22149
	movl	-32(%rbp), %eax	# nsz, tmp520
	cltq
	addq	%rax, %rdx	# D.22157, D.22149
	movq	-104(%rbp), %rax	# cxt, tmp521
	movq	%rdx, 176(%rax)	# D.22149, cxt_7(D)->membuf.aend
.L755:
.LBE238:
	.loc 1 3265 0 discriminator 2
	movq	-104(%rbp), %rax	# cxt, tmp523
	movq	168(%rax), %rax	# cxt_7(D)->membuf.aptr, D.22149
	movq	%rax, %rdx	# D.22149, D.22148
	movq	-104(%rbp), %rax	# cxt, tmp524
	movq	168(%rax), %rax	# cxt_7(D)->membuf.aptr, D.22149
	andq	$-4, %rax	#, D.22148
	cmpq	%rax, %rdx	# D.22148, D.22148
	jne	.L756	#,
	.loc 1 3265 0 discriminator 1
	movq	-104(%rbp), %rax	# cxt, tmp525
	movq	168(%rax), %rax	# cxt_7(D)->membuf.aptr, D.22149
	movl	-80(%rbp), %edx	# len, len.411
	movl	%edx, (%rax)	# len.411, MEM[(int *)_292]
	jmp	.L757	#
.L756:
	.loc 1 3265 0 discriminator 2
	movq	-104(%rbp), %rax	# cxt, tmp526
	movq	168(%rax), %rax	# cxt_7(D)->membuf.aptr, D.22149
	movl	-80(%rbp), %edx	# MEM[(char * {ref-all})&len], D.22145
	movl	%edx, (%rax)	# D.22145, MEM[(char * {ref-all})_294]
.L757:
	.loc 1 3265 0 discriminator 1
	movq	-104(%rbp), %rax	# cxt, tmp527
	movq	168(%rax), %rax	# cxt_7(D)->membuf.aptr, D.22149
	leaq	4(%rax), %rdx	#, D.22149
	movq	-104(%rbp), %rax	# cxt, tmp528
	movq	%rdx, 168(%rax)	# D.22149, cxt_7(D)->membuf.aptr
.LBE237:
	jmp	.L753	#
.L754:
	.loc 1 3265 0 discriminator 2
	movq	-104(%rbp), %rax	# cxt, tmp530
	movq	216(%rax), %rax	# cxt_7(D)->fio, D.22155
	leaq	-80(%rbp), %rcx	#, tmp531
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp531,
	movq	%rax, %rdi	# D.22155,
	call	Perl_PerlIO_write	#
	cmpq	$4, %rax	#, D.22152
	je	.L753	#,
	.loc 1 3265 0 discriminator 1
	movl	$-1, %eax	#, D.22145
	jmp	.L760	#
.L753:
	.loc 1 3265 0 discriminator 2
	movq	-104(%rbp), %rax	# cxt, tmp532
	movq	216(%rax), %rax	# cxt_7(D)->fio, D.22155
	testq	%rax, %rax	# D.22155
	jne	.L758	#,
.LBB239:
	.loc 1 3265 0 discriminator 1
	movq	-104(%rbp), %rax	# cxt, tmp533
	movq	168(%rax), %rdx	# cxt_7(D)->membuf.aptr, D.22149
	movl	-80(%rbp), %eax	# len, len.412
	cltq
	addq	%rax, %rdx	# D.22157, D.22149
	movq	-104(%rbp), %rax	# cxt, tmp534
	movq	176(%rax), %rax	# cxt_7(D)->membuf.aend, D.22149
	cmpq	%rax, %rdx	# D.22149, D.22149
	jbe	.L759	#,
.LBB240:
	movq	-104(%rbp), %rax	# cxt, tmp535
	movq	160(%rax), %rax	# cxt_7(D)->membuf.asiz, D.22148
	movl	%eax, %edx	# D.22148, D.22156
	movl	-80(%rbp), %eax	# len, len.413
	addl	%edx, %eax	# D.22156, D.22156
	addl	$8191, %eax	#, D.22156
	andl	$-8192, %eax	#, tmp536
	movl	%eax, -24(%rbp)	# tmp536, nsz
	movq	-104(%rbp), %rax	# cxt, tmp537
	movq	168(%rax), %rax	# cxt_7(D)->membuf.aptr, D.22149
	movq	%rax, %rdx	# D.22149, D.22152
	movq	-104(%rbp), %rax	# cxt, tmp538
	movq	152(%rax), %rax	# cxt_7(D)->membuf.arena, D.22149
	subq	%rax, %rdx	# D.22152, D.22152
	movq	%rdx, %rax	# D.22152, D.22152
	movl	%eax, -20(%rbp)	# D.22152, offset
	movl	-24(%rbp), %eax	# nsz, tmp539
	movslq	%eax, %rdx	# tmp539, D.22148
	movq	-104(%rbp), %rax	# cxt, tmp540
	movq	152(%rax), %rax	# cxt_7(D)->membuf.arena, D.22149
	movq	%rdx, %rsi	# D.22148,
	movq	%rax, %rdi	# D.22149,
	call	Perl_safesysrealloc	#
	movq	-104(%rbp), %rdx	# cxt, tmp541
	movq	%rax, 152(%rdx)	# D.22151, cxt_7(D)->membuf.arena
	movl	-24(%rbp), %eax	# nsz, tmp542
	movslq	%eax, %rdx	# tmp542, D.22148
	movq	-104(%rbp), %rax	# cxt, tmp543
	movq	%rdx, 160(%rax)	# D.22148, cxt_7(D)->membuf.asiz
	movq	-104(%rbp), %rax	# cxt, tmp544
	movq	152(%rax), %rdx	# cxt_7(D)->membuf.arena, D.22149
	movl	-20(%rbp), %eax	# offset, tmp545
	cltq
	addq	%rax, %rdx	# D.22157, D.22149
	movq	-104(%rbp), %rax	# cxt, tmp546
	movq	%rdx, 168(%rax)	# D.22149, cxt_7(D)->membuf.aptr
	movq	-104(%rbp), %rax	# cxt, tmp547
	movq	152(%rax), %rdx	# cxt_7(D)->membuf.arena, D.22149
	movl	-24(%rbp), %eax	# nsz, tmp548
	cltq
	addq	%rax, %rdx	# D.22157, D.22149
	movq	-104(%rbp), %rax	# cxt, tmp549
	movq	%rdx, 176(%rax)	# D.22149, cxt_7(D)->membuf.aend
.L759:
.LBE240:
	.loc 1 3265 0 discriminator 2
	movl	-80(%rbp), %eax	# len, len.415
	movslq	%eax, %rdx	# len.415, D.22148
	movq	-104(%rbp), %rax	# cxt, tmp551
	movq	168(%rax), %rax	# cxt_7(D)->membuf.aptr, D.22149
	movl	$buf.11132, %esi	#,
	movq	%rax, %rdi	# D.22149,
	call	memcpy	#
	movq	-104(%rbp), %rax	# cxt, tmp552
	movq	168(%rax), %rdx	# cxt_7(D)->membuf.aptr, D.22149
	movl	-80(%rbp), %eax	# len, len.416
	cltq
	addq	%rax, %rdx	# D.22157, D.22149
	movq	-104(%rbp), %rax	# cxt, tmp553
	movq	%rdx, 168(%rax)	# D.22149, cxt_7(D)->membuf.aptr
.LBE239:
	jmp	.L742	#
.L758:
	movl	-80(%rbp), %eax	# len, len.417
	movslq	%eax, %rdx	# len.417, D.22148
	movq	-104(%rbp), %rax	# cxt, tmp555
	movq	216(%rax), %rax	# cxt_7(D)->fio, D.22155
	movl	$buf.11132, %esi	#,
	movq	%rax, %rdi	# D.22155,
	call	Perl_PerlIO_write	#
	movl	-80(%rbp), %edx	# len, len.418
	movslq	%edx, %rdx	# len.418, D.22152
	cmpq	%rdx, %rax	# D.22152, D.22152
	je	.L742	#,
	.loc 1 3265 0 discriminator 1
	movl	$-1, %eax	#, D.22145
	jmp	.L760	#
.L742:
	.loc 1 3268 0 is_stmt 1
	movl	$0, %eax	#, D.22145
.L760:
	.loc 1 3269 0
	addq	$104, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	store_other, .-store_other
	.type	sv_type, @function
sv_type:
.LFB31:
	.loc 1 3284 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# sv, sv
	.loc 1 3285 0
	movq	-8(%rbp), %rax	# sv, tmp81
	movl	12(%rax), %eax	# sv_2(D)->sv_flags, D.22163
	movzbl	%al, %eax	# D.22163, D.22163
	cmpl	$12, %eax	#, D.22163
	ja	.L776	#,
	movl	%eax, %eax	# D.22163, tmp82
	movq	.L764(,%rax,8), %rax	#, tmp83
	jmp	*%rax	# tmp83
	.section	.rodata
	.align 8
	.align 4
.L764:
	.quad	.L763
	.quad	.L763
	.quad	.L763
	.quad	.L765
	.quad	.L765
	.quad	.L765
	.quad	.L765
	.quad	.L766
	.quad	.L767
	.quad	.L766
	.quad	.L768
	.quad	.L769
	.quad	.L770
	.text
.L763:
	.loc 1 3293 0
	movl	$1, %eax	#, D.22162
	jmp	.L771	#
.L765:
	.loc 1 3307 0
	movq	-8(%rbp), %rax	# sv, tmp84
	movl	12(%rax), %eax	# sv_2(D)->sv_flags, D.22163
	andl	$524288, %eax	#, D.22163
	testl	%eax, %eax	# D.22163
	sete	%al	#, D.22164
	movzbl	%al, %eax	# D.22164, D.22162
	jmp	.L771	#
.L766:
	.loc 1 3310 0
	movq	-8(%rbp), %rax	# sv, tmp85
	movl	12(%rax), %eax	# sv_2(D)->sv_flags, D.22163
	andl	$32768, %eax	#, D.22163
	testl	%eax, %eax	# D.22163
	je	.L767	#,
	.loc 1 3310 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# sv, tmp86
	movl	$112, %esi	#,
	movq	%rax, %rdi	# tmp86,
	call	Perl_mg_find	#
	testq	%rax, %rax	# D.22165
	je	.L767	#,
	.loc 1 3311 0 is_stmt 1
	movl	$5, %eax	#, D.22162
	jmp	.L771	#
.L767:
	.loc 1 3314 0
	movq	-8(%rbp), %rax	# sv, tmp87
	movl	12(%rax), %eax	# sv_2(D)->sv_flags, D.22163
	andl	$32768, %eax	#, D.22163
	testl	%eax, %eax	# D.22163
	je	.L772	#,
	.loc 1 3314 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# sv, tmp88
	movl	$113, %esi	#,
	movq	%rax, %rdi	# tmp88,
	call	Perl_mg_find	#
	testq	%rax, %rax	# D.22165
	je	.L772	#,
	.loc 1 3315 0 is_stmt 1
	movl	$4, %eax	#, D.22162
	jmp	.L771	#
.L772:
	.loc 1 3316 0
	movq	-8(%rbp), %rax	# sv, tmp89
	movl	12(%rax), %eax	# sv_2(D)->sv_flags, D.22163
	andl	$524288, %eax	#, D.22163
	testl	%eax, %eax	# D.22163
	sete	%al	#, D.22164
	movzbl	%al, %eax	# D.22164, D.22162
	jmp	.L771	#
.L768:
	.loc 1 3318 0
	movq	-8(%rbp), %rax	# sv, tmp90
	movl	12(%rax), %eax	# sv_2(D)->sv_flags, D.22163
	andl	$32768, %eax	#, D.22163
	testl	%eax, %eax	# D.22163
	je	.L773	#,
	.loc 1 3318 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# sv, tmp91
	movl	$80, %esi	#,
	movq	%rax, %rdi	# tmp91,
	call	Perl_mg_find	#
	testq	%rax, %rax	# D.22165
	je	.L773	#,
	.loc 1 3319 0 is_stmt 1
	movl	$4, %eax	#, D.22162
	jmp	.L771	#
.L773:
	.loc 1 3320 0
	movl	$2, %eax	#, D.22162
	jmp	.L771	#
.L769:
	.loc 1 3322 0
	movq	-8(%rbp), %rax	# sv, tmp92
	movl	12(%rax), %eax	# sv_2(D)->sv_flags, D.22163
	andl	$32768, %eax	#, D.22163
	testl	%eax, %eax	# D.22163
	je	.L774	#,
	.loc 1 3322 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# sv, tmp93
	movl	$80, %esi	#,
	movq	%rax, %rdi	# tmp93,
	call	Perl_mg_find	#
	testq	%rax, %rax	# D.22165
	je	.L774	#,
	.loc 1 3323 0 is_stmt 1
	movl	$4, %eax	#, D.22162
	jmp	.L771	#
.L774:
	.loc 1 3324 0
	movl	$3, %eax	#, D.22162
	jmp	.L771	#
.L770:
	.loc 1 3326 0
	movl	$6, %eax	#, D.22162
	jmp	.L771	#
.L776:
	.loc 1 3328 0
	nop
	.loc 1 3331 0
	movl	$7, %eax	#, D.22162
.L771:
	.loc 1 3332 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	sv_type, .-sv_type
	.type	store, @function
store:
.LFB32:
	.loc 1 3344 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# cxt, cxt
	movq	%rsi, -80(%rbp)	# sv, sv
	.loc 1 3348 0
	movq	-72(%rbp), %rax	# cxt, tmp151
	movq	8(%rax), %rax	# cxt_5(D)->hseen, tmp152
	movq	%rax, -24(%rbp)	# tmp152, hseen
	.loc 1 3364 0
	leaq	-80(%rbp), %rsi	#, tmp153
	movq	-24(%rbp), %rax	# hseen, tmp154
	movl	$0, %ecx	#,
	movl	$8, %edx	#,
	movq	%rax, %rdi	# tmp154,
	call	Perl_hv_fetch	#
	movq	%rax, -16(%rbp)	# tmp155, svh
	.loc 1 3365 0
	cmpq	$0, -16(%rbp)	#, svh
	je	.L778	#,
.LBB241:
	.loc 1 3368 0
	movq	-80(%rbp), %rax	# sv, sv.419
	cmpq	$PL_sv_undef, %rax	#, sv.419
	jne	.L779	#,
	.loc 1 3393 0
	movq	-72(%rbp), %rax	# cxt, tmp156
	movq	64(%rax), %rax	# cxt_5(D)->tagnum, D.22167
	leaq	1(%rax), %rdx	#, D.22167
	movq	-72(%rbp), %rax	# cxt, tmp157
	movq	%rdx, 64(%rax)	# D.22167, cxt_5(D)->tagnum
	.loc 1 3394 0
	movl	$1, -44(%rbp)	#, type
	jmp	.L780	#
.L779:
	.loc 1 3398 0
	movq	-16(%rbp), %rax	# svh, tmp158
	movq	(%rax), %rax	# *svh_7, D.22168
	cltq
	movq	%rax, %rdi	# D.22167,
	call	Perl_my_htonl	#
	movl	%eax, -52(%rbp)	# tagval.420, tagval
	.loc 1 3402 0
	movq	-72(%rbp), %rax	# cxt, tmp159
	movq	216(%rax), %rax	# cxt_5(D)->fio, D.22169
	testq	%rax, %rax	# D.22169
	jne	.L781	#,
	.loc 1 3402 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# cxt, tmp160
	movq	168(%rax), %rdx	# cxt_5(D)->membuf.aptr, D.22170
	movq	-72(%rbp), %rax	# cxt, tmp161
	movq	176(%rax), %rax	# cxt_5(D)->membuf.aend, D.22170
	cmpq	%rax, %rdx	# D.22170, D.22170
	jae	.L782	#,
	movq	-72(%rbp), %rax	# cxt, tmp162
	movq	168(%rax), %rax	# cxt_5(D)->membuf.aptr, D.22170
	leaq	1(%rax), %rcx	#, D.22170
	movq	-72(%rbp), %rdx	# cxt, tmp163
	movq	%rcx, 168(%rdx)	# D.22170, cxt_5(D)->membuf.aptr
	movb	$0, (%rax)	#, *_22
	jmp	.L784	#
.L782:
.LBB242:
	.loc 1 3402 0 discriminator 2
	movq	-72(%rbp), %rax	# cxt, tmp164
	movq	160(%rax), %rax	# cxt_5(D)->membuf.asiz, D.22171
	addl	$8192, %eax	#, D.22172
	andl	$-8192, %eax	#, tmp165
	movl	%eax, -40(%rbp)	# tmp165, nsz
	movq	-72(%rbp), %rax	# cxt, tmp166
	movq	168(%rax), %rax	# cxt_5(D)->membuf.aptr, D.22170
	movq	%rax, %rdx	# D.22170, D.22167
	movq	-72(%rbp), %rax	# cxt, tmp167
	movq	152(%rax), %rax	# cxt_5(D)->membuf.arena, D.22170
	subq	%rax, %rdx	# D.22167, D.22167
	movq	%rdx, %rax	# D.22167, D.22167
	movl	%eax, -36(%rbp)	# D.22167, offset
	movl	-40(%rbp), %eax	# nsz, tmp168
	movslq	%eax, %rdx	# tmp168, D.22171
	movq	-72(%rbp), %rax	# cxt, tmp169
	movq	152(%rax), %rax	# cxt_5(D)->membuf.arena, D.22170
	movq	%rdx, %rsi	# D.22171,
	movq	%rax, %rdi	# D.22170,
	call	Perl_safesysrealloc	#
	movq	-72(%rbp), %rdx	# cxt, tmp170
	movq	%rax, 152(%rdx)	# D.22173, cxt_5(D)->membuf.arena
	movl	-40(%rbp), %eax	# nsz, tmp171
	movslq	%eax, %rdx	# tmp171, D.22171
	movq	-72(%rbp), %rax	# cxt, tmp172
	movq	%rdx, 160(%rax)	# D.22171, cxt_5(D)->membuf.asiz
	movq	-72(%rbp), %rax	# cxt, tmp173
	movq	152(%rax), %rdx	# cxt_5(D)->membuf.arena, D.22170
	movl	-36(%rbp), %eax	# offset, tmp174
	cltq
	addq	%rax, %rdx	# D.22174, D.22170
	movq	-72(%rbp), %rax	# cxt, tmp175
	movq	%rdx, 168(%rax)	# D.22170, cxt_5(D)->membuf.aptr
	movq	-72(%rbp), %rax	# cxt, tmp176
	movq	152(%rax), %rdx	# cxt_5(D)->membuf.arena, D.22170
	movl	-40(%rbp), %eax	# nsz, tmp177
	cltq
	addq	%rax, %rdx	# D.22174, D.22170
	movq	-72(%rbp), %rax	# cxt, tmp178
	movq	%rdx, 176(%rax)	# D.22170, cxt_5(D)->membuf.aend
.LBE242:
	movq	-72(%rbp), %rax	# cxt, tmp180
	movq	168(%rax), %rax	# cxt_5(D)->membuf.aptr, D.22170
	leaq	1(%rax), %rcx	#, D.22170
	movq	-72(%rbp), %rdx	# cxt, tmp181
	movq	%rcx, 168(%rdx)	# D.22170, cxt_5(D)->membuf.aptr
	movb	$0, (%rax)	#, *_47
	jmp	.L784	#
.L781:
	movq	-72(%rbp), %rax	# cxt, tmp182
	movq	216(%rax), %rax	# cxt_5(D)->fio, D.22169
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.22169,
	call	PerlIO_putc	#
	cmpl	$-1, %eax	#, D.22166
	jne	.L784	#,
	.loc 1 3402 0 discriminator 1
	movl	$-1, %eax	#, D.22166
	jmp	.L791	#
.L784:
	.loc 1 3403 0 is_stmt 1
	movq	-72(%rbp), %rax	# cxt, tmp183
	movq	216(%rax), %rax	# cxt_5(D)->fio, D.22169
	testq	%rax, %rax	# D.22169
	jne	.L786	#,
.LBB243:
	.loc 1 3403 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# cxt, tmp184
	movq	168(%rax), %rax	# cxt_5(D)->membuf.aptr, D.22170
	leaq	4(%rax), %rdx	#, D.22170
	movq	-72(%rbp), %rax	# cxt, tmp185
	movq	176(%rax), %rax	# cxt_5(D)->membuf.aend, D.22170
	cmpq	%rax, %rdx	# D.22170, D.22170
	jbe	.L787	#,
.LBB244:
	movq	-72(%rbp), %rax	# cxt, tmp186
	movq	160(%rax), %rax	# cxt_5(D)->membuf.asiz, D.22171
	addl	$8195, %eax	#, D.22172
	andl	$-8192, %eax	#, tmp187
	movl	%eax, -32(%rbp)	# tmp187, nsz
	movq	-72(%rbp), %rax	# cxt, tmp188
	movq	168(%rax), %rax	# cxt_5(D)->membuf.aptr, D.22170
	movq	%rax, %rdx	# D.22170, D.22167
	movq	-72(%rbp), %rax	# cxt, tmp189
	movq	152(%rax), %rax	# cxt_5(D)->membuf.arena, D.22170
	subq	%rax, %rdx	# D.22167, D.22167
	movq	%rdx, %rax	# D.22167, D.22167
	movl	%eax, -28(%rbp)	# D.22167, offset
	movl	-32(%rbp), %eax	# nsz, tmp190
	movslq	%eax, %rdx	# tmp190, D.22171
	movq	-72(%rbp), %rax	# cxt, tmp191
	movq	152(%rax), %rax	# cxt_5(D)->membuf.arena, D.22170
	movq	%rdx, %rsi	# D.22171,
	movq	%rax, %rdi	# D.22170,
	call	Perl_safesysrealloc	#
	movq	-72(%rbp), %rdx	# cxt, tmp192
	movq	%rax, 152(%rdx)	# D.22173, cxt_5(D)->membuf.arena
	movl	-32(%rbp), %eax	# nsz, tmp193
	movslq	%eax, %rdx	# tmp193, D.22171
	movq	-72(%rbp), %rax	# cxt, tmp194
	movq	%rdx, 160(%rax)	# D.22171, cxt_5(D)->membuf.asiz
	movq	-72(%rbp), %rax	# cxt, tmp195
	movq	152(%rax), %rdx	# cxt_5(D)->membuf.arena, D.22170
	movl	-28(%rbp), %eax	# offset, tmp196
	cltq
	addq	%rax, %rdx	# D.22174, D.22170
	movq	-72(%rbp), %rax	# cxt, tmp197
	movq	%rdx, 168(%rax)	# D.22170, cxt_5(D)->membuf.aptr
	movq	-72(%rbp), %rax	# cxt, tmp198
	movq	152(%rax), %rdx	# cxt_5(D)->membuf.arena, D.22170
	movl	-32(%rbp), %eax	# nsz, tmp199
	cltq
	addq	%rax, %rdx	# D.22174, D.22170
	movq	-72(%rbp), %rax	# cxt, tmp200
	movq	%rdx, 176(%rax)	# D.22170, cxt_5(D)->membuf.aend
.L787:
.LBE244:
	.loc 1 3403 0 discriminator 2
	movq	-72(%rbp), %rax	# cxt, tmp202
	movq	168(%rax), %rax	# cxt_5(D)->membuf.aptr, D.22170
	movq	%rax, %rdx	# D.22170, D.22171
	movq	-72(%rbp), %rax	# cxt, tmp203
	movq	168(%rax), %rax	# cxt_5(D)->membuf.aptr, D.22170
	andq	$-4, %rax	#, D.22171
	cmpq	%rax, %rdx	# D.22171, D.22171
	jne	.L788	#,
	.loc 1 3403 0 discriminator 1
	movq	-72(%rbp), %rax	# cxt, tmp204
	movq	168(%rax), %rax	# cxt_5(D)->membuf.aptr, D.22170
	movl	-52(%rbp), %edx	# tagval, tagval.421
	movl	%edx, (%rax)	# tagval.421, MEM[(int *)_83]
	jmp	.L789	#
.L788:
	.loc 1 3403 0 discriminator 2
	movq	-72(%rbp), %rax	# cxt, tmp205
	movq	168(%rax), %rax	# cxt_5(D)->membuf.aptr, D.22170
	movl	-52(%rbp), %edx	# MEM[(char * {ref-all})&tagval], D.22166
	movl	%edx, (%rax)	# D.22166, MEM[(char * {ref-all})_85]
.L789:
	.loc 1 3403 0 discriminator 1
	movq	-72(%rbp), %rax	# cxt, tmp206
	movq	168(%rax), %rax	# cxt_5(D)->membuf.aptr, D.22170
	leaq	4(%rax), %rdx	#, D.22170
	movq	-72(%rbp), %rax	# cxt, tmp207
	movq	%rdx, 168(%rax)	# D.22170, cxt_5(D)->membuf.aptr
.LBE243:
	jmp	.L790	#
.L786:
	.loc 1 3403 0 discriminator 2
	movq	-72(%rbp), %rax	# cxt, tmp209
	movq	216(%rax), %rax	# cxt_5(D)->fio, D.22169
	leaq	-52(%rbp), %rcx	#, tmp210
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp210,
	movq	%rax, %rdi	# D.22169,
	call	Perl_PerlIO_write	#
	cmpq	$4, %rax	#, D.22167
	je	.L790	#,
	.loc 1 3403 0 discriminator 1
	movl	$-1, %eax	#, D.22166
	jmp	.L791	#
.L790:
	.loc 1 3404 0 is_stmt 1
	movl	$0, %eax	#, D.22166
	jmp	.L791	#
.L778:
.LBE241:
	.loc 1 3418 0
	movq	-72(%rbp), %rax	# cxt, tmp211
	movq	64(%rax), %rax	# cxt_5(D)->tagnum, D.22167
	leaq	1(%rax), %rdx	#, D.22167
	movq	-72(%rbp), %rax	# cxt, tmp212
	movq	%rdx, 64(%rax)	# D.22167, cxt_5(D)->tagnum
	.loc 1 3420 0
	movq	-72(%rbp), %rax	# cxt, tmp213
	movq	64(%rax), %rax	# cxt_5(D)->tagnum, D.22167
	.loc 1 3419 0
	movq	%rax, %rdx	# D.22167, D.22168
	leaq	-80(%rbp), %rsi	#, tmp214
	movq	-24(%rbp), %rax	# hseen, tmp215
	movl	$0, %r8d	#,
	movq	%rdx, %rcx	# D.22168,
	movl	$8, %edx	#,
	movq	%rax, %rdi	# tmp215,
	call	Perl_hv_store	#
	testq	%rax, %rax	# D.22175
	jne	.L792	#,
	.loc 1 3421 0
	movl	$-1, %eax	#, D.22166
	jmp	.L791	#
.L792:
	.loc 1 3428 0
	movq	-80(%rbp), %rax	# sv, sv.422
	movq	%rax, %rdi	# sv.422,
	call	sv_type	#
	movl	%eax, -44(%rbp)	# tmp216, type
.L780:
	.loc 1 3434 0
	movq	-80(%rbp), %rax	# sv, sv.423
	movl	12(%rax), %eax	# sv.423_102->sv_flags, D.22176
	andl	$4096, %eax	#, D.22176
	testl	%eax, %eax	# D.22176
	je	.L793	#,
.LBB245:
	.loc 1 3435 0
	movq	-80(%rbp), %rax	# sv, sv.424
	movq	(%rax), %rax	# sv.424_105->sv_any, D.22173
	movq	48(%rax), %rax	# MEM[(struct XPVMG *)_106].xmg_stash, tmp217
	movq	%rax, -8(%rbp)	# tmp217, pkg
	.loc 1 3436 0
	movq	-80(%rbp), %rsi	# sv, sv.425
	movq	-8(%rbp), %rcx	# pkg, tmp218
	movl	-44(%rbp), %edx	# type, tmp219
	movq	-72(%rbp), %rax	# cxt, tmp220
	movq	%rax, %rdi	# tmp220,
	call	store_blessed	#
	movl	%eax, -48(%rbp)	# tmp221, ret
.LBE245:
	jmp	.L794	#
.L793:
	.loc 1 3438 0
	movl	-44(%rbp), %eax	# type, tmp223
	cltq
	movq	sv_store(,%rax,8), %rax	# sv_store, D.22177
	movq	-80(%rbp), %rcx	# sv, sv.426
	movq	-72(%rbp), %rdx	# cxt, tmp224
	movq	%rcx, %rsi	# sv.426,
	movq	%rdx, %rdi	# tmp224,
	call	*%rax	# D.22177
	movl	%eax, -48(%rbp)	# tmp225, ret
.L794:
	.loc 1 3444 0
	movl	-48(%rbp), %eax	# ret, D.22166
.L791:
	.loc 1 3445 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	store, .-store
	.type	magic_write, @function
magic_write:
.LFB33:
	.loc 1 3459 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# cxt, cxt
	.loc 1 3510 0
	movq	-40(%rbp), %rax	# cxt, tmp102
	movl	80(%rax), %eax	# cxt_6(D)->netorder, D.22178
	testl	%eax, %eax	# D.22178
	je	.L796	#,
	.loc 1 3511 0
	movq	$network_file_header.11199, -16(%rbp)	#, header
	.loc 1 3512 0
	movq	$6, -8(%rbp)	#, length
	jmp	.L797	#
.L796:
	.loc 1 3521 0
	movq	$file_header.11200, -16(%rbp)	#, header
	.loc 1 3522 0
	movq	$19, -8(%rbp)	#, length
.L797:
	.loc 1 3526 0
	movq	-40(%rbp), %rax	# cxt, tmp103
	movq	216(%rax), %rax	# cxt_6(D)->fio, D.22179
	testq	%rax, %rax	# D.22179
	jne	.L798	#,
	.loc 1 3528 0
	addq	$4, -16(%rbp)	#, header
	.loc 1 3529 0
	movq	-8(%rbp), %rax	# length, length.427
	subq	$4, %rax	#, D.22180
	movq	%rax, -8(%rbp)	# D.22180, length
.L798:
	.loc 1 3532 0
	movq	-40(%rbp), %rax	# cxt, tmp104
	movq	216(%rax), %rax	# cxt_6(D)->fio, D.22179
	testq	%rax, %rax	# D.22179
	jne	.L799	#,
.LBB246:
	.loc 1 3532 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# cxt, tmp105
	movq	168(%rax), %rdx	# cxt_6(D)->membuf.aptr, D.22181
	movq	-8(%rbp), %rax	# length, length.428
	addq	%rax, %rdx	# length.428, D.22181
	movq	-40(%rbp), %rax	# cxt, tmp106
	movq	176(%rax), %rax	# cxt_6(D)->membuf.aend, D.22181
	cmpq	%rax, %rdx	# D.22181, D.22181
	jbe	.L800	#,
.LBB247:
	movq	-8(%rbp), %rax	# length, tmp107
	movl	%eax, %edx	# tmp107, D.22182
	movq	-40(%rbp), %rax	# cxt, tmp108
	movq	160(%rax), %rax	# cxt_6(D)->membuf.asiz, D.22180
	addl	%edx, %eax	# D.22182, D.22182
	addl	$8191, %eax	#, D.22182
	andl	$-8192, %eax	#, tmp109
	movl	%eax, -24(%rbp)	# tmp109, nsz
	movq	-40(%rbp), %rax	# cxt, tmp110
	movq	168(%rax), %rax	# cxt_6(D)->membuf.aptr, D.22181
	movq	%rax, %rdx	# D.22181, D.22183
	movq	-40(%rbp), %rax	# cxt, tmp111
	movq	152(%rax), %rax	# cxt_6(D)->membuf.arena, D.22181
	subq	%rax, %rdx	# D.22183, D.22183
	movq	%rdx, %rax	# D.22183, D.22183
	movl	%eax, -20(%rbp)	# D.22183, offset
	movl	-24(%rbp), %eax	# nsz, tmp112
	movslq	%eax, %rdx	# tmp112, D.22180
	movq	-40(%rbp), %rax	# cxt, tmp113
	movq	152(%rax), %rax	# cxt_6(D)->membuf.arena, D.22181
	movq	%rdx, %rsi	# D.22180,
	movq	%rax, %rdi	# D.22181,
	call	Perl_safesysrealloc	#
	movq	-40(%rbp), %rdx	# cxt, tmp114
	movq	%rax, 152(%rdx)	# D.22184, cxt_6(D)->membuf.arena
	movl	-24(%rbp), %eax	# nsz, tmp115
	movslq	%eax, %rdx	# tmp115, D.22180
	movq	-40(%rbp), %rax	# cxt, tmp116
	movq	%rdx, 160(%rax)	# D.22180, cxt_6(D)->membuf.asiz
	movq	-40(%rbp), %rax	# cxt, tmp117
	movq	152(%rax), %rdx	# cxt_6(D)->membuf.arena, D.22181
	movl	-20(%rbp), %eax	# offset, tmp118
	cltq
	addq	%rax, %rdx	# D.22185, D.22181
	movq	-40(%rbp), %rax	# cxt, tmp119
	movq	%rdx, 168(%rax)	# D.22181, cxt_6(D)->membuf.aptr
	movq	-40(%rbp), %rax	# cxt, tmp120
	movq	152(%rax), %rdx	# cxt_6(D)->membuf.arena, D.22181
	movl	-24(%rbp), %eax	# nsz, tmp121
	cltq
	addq	%rax, %rdx	# D.22185, D.22181
	movq	-40(%rbp), %rax	# cxt, tmp122
	movq	%rdx, 176(%rax)	# D.22181, cxt_6(D)->membuf.aend
.L800:
.LBE247:
	.loc 1 3532 0 discriminator 2
	movq	-8(%rbp), %rdx	# length, length.429
	movq	-40(%rbp), %rax	# cxt, tmp124
	movq	168(%rax), %rax	# cxt_6(D)->membuf.aptr, D.22181
	movq	-16(%rbp), %rcx	# header, tmp125
	movq	%rcx, %rsi	# tmp125,
	movq	%rax, %rdi	# D.22181,
	call	memcpy	#
	movq	-40(%rbp), %rax	# cxt, tmp126
	movq	168(%rax), %rdx	# cxt_6(D)->membuf.aptr, D.22181
	movq	-8(%rbp), %rax	# length, length.430
	addq	%rax, %rdx	# length.430, D.22181
	movq	-40(%rbp), %rax	# cxt, tmp127
	movq	%rdx, 168(%rax)	# D.22181, cxt_6(D)->membuf.aptr
.LBE246:
	jmp	.L801	#
.L799:
	movq	-8(%rbp), %rdx	# length, length.431
	movq	-40(%rbp), %rax	# cxt, tmp129
	movq	216(%rax), %rax	# cxt_6(D)->fio, D.22179
	movq	-16(%rbp), %rcx	# header, tmp130
	movq	%rcx, %rsi	# tmp130,
	movq	%rax, %rdi	# D.22179,
	call	Perl_PerlIO_write	#
	cmpq	-8(%rbp), %rax	# length, D.22183
	je	.L801	#,
	.loc 1 3532 0 discriminator 1
	movl	$-1, %eax	#, D.22178
	jmp	.L802	#
.L801:
	.loc 1 3540 0 is_stmt 1
	movl	$0, %eax	#, D.22178
.L802:
	.loc 1 3541 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	magic_write, .-magic_write
	.section	.rodata
.LC30:
	.string	"Not a reference"
	.text
	.type	do_store, @function
do_store:
.LFB34:
	.loc 1 3561 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	movq	%rsi, -32(%rbp)	# sv, sv
	movl	%edx, -36(%rbp)	# optype, optype
	movl	%ecx, -40(%rbp)	# network_order, network_order
	movq	%r8, -48(%rbp)	# res, res
	.loc 1 3562 0
	movq	Context_ptr(%rip), %rax	# Context_ptr, tmp81
	movq	%rax, -8(%rbp)	# tmp81, cxt
	.loc 1 3571 0
	orl	$1, -36(%rbp)	#, optype
	.loc 1 3578 0
	movq	-8(%rbp), %rax	# cxt, tmp82
	movl	112(%rax), %eax	# cxt_3->s_dirty, D.22186
	testl	%eax, %eax	# D.22186
	je	.L804	#,
	.loc 1 3579 0
	movq	-8(%rbp), %rax	# cxt, tmp83
	movq	%rax, %rdi	# tmp83,
	call	clean_context	#
.L804:
	.loc 1 3586 0
	movq	-8(%rbp), %rax	# cxt, tmp84
	movl	(%rax), %eax	# cxt_3->entry, D.22186
	testl	%eax, %eax	# D.22186
	je	.L805	#,
	.loc 1 3587 0
	movq	-8(%rbp), %rax	# cxt, tmp85
	movq	%rax, %rdi	# tmp85,
	call	allocate_context	#
	movq	%rax, -8(%rbp)	# tmp86, cxt
.L805:
	.loc 1 3589 0
	movq	-8(%rbp), %rax	# cxt, tmp87
	movl	(%rax), %eax	# cxt_1->entry, D.22186
	leal	1(%rax), %edx	#, D.22186
	movq	-8(%rbp), %rax	# cxt, tmp88
	movl	%edx, (%rax)	# D.22186, cxt_1->entry
	.loc 1 3601 0
	movq	-32(%rbp), %rax	# sv, tmp89
	movl	12(%rax), %eax	# sv_11(D)->sv_flags, D.22187
	andl	$524288, %eax	#, D.22187
	testl	%eax, %eax	# D.22187
	jne	.L806	#,
.LBB248:
	.loc 1 3602 0
	movq	-8(%rbp), %rax	# cxt, tmp90
	movl	$1, 112(%rax)	#, cxt_1->s_dirty
	movl	$.LC30, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L806:
.LBE248:
	.loc 1 3603 0
	movq	-32(%rbp), %rax	# sv, tmp91
	movq	(%rax), %rax	# sv_11(D)->sv_any, D.22188
	movq	(%rax), %rax	# MEM[(struct XRV *)_14].xrv_rv, tmp92
	movq	%rax, -32(%rbp)	# tmp92, sv
	.loc 1 3609 0
	cmpq	$0, -24(%rbp)	#, f
	jne	.L807	#,
.LBB249:
	.loc 1 3610 0
	movq	-8(%rbp), %rax	# cxt, tmp93
	movq	152(%rax), %rax	# cxt_1->membuf.arena, D.22189
	testq	%rax, %rax	# D.22189
	jne	.L808	#,
	.loc 1 3610 0 is_stmt 0 discriminator 1
	movl	$8192, %edi	#,
	call	Perl_safesysmalloc	#
	movq	-8(%rbp), %rdx	# cxt, tmp94
	movq	%rax, 152(%rdx)	# D.22188, cxt_1->membuf.arena
	movq	-8(%rbp), %rax	# cxt, tmp95
	movq	$8192, 160(%rax)	#, cxt_1->membuf.asiz
.L808:
	.loc 1 3610 0 discriminator 2
	movq	-8(%rbp), %rax	# cxt, tmp96
	movq	152(%rax), %rdx	# cxt_1->membuf.arena, D.22189
	movq	-8(%rbp), %rax	# cxt, tmp97
	movq	%rdx, 168(%rax)	# D.22189, cxt_1->membuf.aptr
	movq	-8(%rbp), %rax	# cxt, tmp98
	movq	152(%rax), %rdx	# cxt_1->membuf.arena, D.22189
	movq	-8(%rbp), %rax	# cxt, tmp99
	movq	160(%rax), %rax	# cxt_1->membuf.asiz, D.22190
	addq	%rax, %rdx	# D.22190, D.22189
	movq	-8(%rbp), %rax	# cxt, tmp100
	movq	%rdx, 176(%rax)	# D.22189, cxt_1->membuf.aend
.L807:
.LBE249:
	.loc 1 3616 0 is_stmt 1
	movl	-40(%rbp), %ecx	# network_order, tmp101
	movl	-36(%rbp), %edx	# optype, tmp102
	movq	-24(%rbp), %rsi	# f, tmp103
	movq	-8(%rbp), %rax	# cxt, tmp104
	movq	%rax, %rdi	# tmp104,
	call	init_store_context	#
	.loc 1 3618 0
	movq	-8(%rbp), %rax	# cxt, tmp105
	movq	%rax, %rdi	# tmp105,
	call	magic_write	#
	cmpl	$-1, %eax	#, D.22186
	jne	.L809	#,
	.loc 1 3619 0
	movl	$0, %eax	#, D.22186
	jmp	.L810	#
.L809:
	.loc 1 3627 0
	movq	-32(%rbp), %rdx	# sv, tmp106
	movq	-8(%rbp), %rax	# cxt, tmp107
	movq	%rdx, %rsi	# tmp106,
	movq	%rax, %rdi	# tmp107,
	call	store	#
	movl	%eax, -12(%rbp)	# tmp108, status
	.loc 1 3638 0
	movq	-8(%rbp), %rax	# cxt, tmp109
	movq	216(%rax), %rax	# cxt_1->fio, D.22191
	testq	%rax, %rax	# D.22191
	jne	.L811	#,
	.loc 1 3638 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, res
	je	.L811	#,
	.loc 1 3639 0 is_stmt 1
	call	mbuf2sv	#
	movq	-48(%rbp), %rdx	# res, tmp110
	movq	%rax, (%rdx)	# D.22192, *res_28(D)
.L811:
	.loc 1 3657 0
	movq	-8(%rbp), %rax	# cxt, tmp111
	movq	%rax, %rdi	# tmp111,
	call	clean_store_context	#
	.loc 1 3658 0
	movq	-8(%rbp), %rax	# cxt, tmp112
	movq	240(%rax), %rax	# cxt_1->prev, D.22192
	testq	%rax, %rax	# D.22192
	je	.L812	#,
	.loc 1 3658 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# cxt, tmp113
	movl	4(%rax), %eax	# cxt_1->optype, D.22186
	andl	$4, %eax	#, D.22186
	testl	%eax, %eax	# D.22186
	jne	.L812	#,
	.loc 1 3659 0 is_stmt 1
	movq	-8(%rbp), %rax	# cxt, tmp114
	movq	%rax, %rdi	# tmp114,
	call	free_context	#
.L812:
	.loc 1 3663 0
	cmpl	$0, -12(%rbp)	#, status
	sete	%al	#, D.22193
	movzbl	%al, %eax	# D.22193, D.22186
.L810:
	.loc 1 3664 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	do_store, .-do_store
	.globl	pstore
	.type	pstore, @function
pstore:
.LFB35:
	.loc 1 3673 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# f, f
	movq	%rsi, -16(%rbp)	# sv, sv
	.loc 1 3675 0
	movq	-16(%rbp), %rsi	# sv, tmp61
	movq	-8(%rbp), %rax	# f, tmp62
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp62,
	call	do_store	#
	.loc 1 3677 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	pstore, .-pstore
	.globl	net_pstore
	.type	net_pstore, @function
net_pstore:
.LFB36:
	.loc 1 3686 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# f, f
	movq	%rsi, -16(%rbp)	# sv, sv
	.loc 1 3688 0
	movq	-16(%rbp), %rsi	# sv, tmp61
	movq	-8(%rbp), %rax	# f, tmp62
	movl	$0, %r8d	#,
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp62,
	call	do_store	#
	.loc 1 3689 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	net_pstore, .-net_pstore
	.type	mbuf2sv, @function
mbuf2sv:
.LFB37:
	.loc 1 3701 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 3702 0
	movq	Context_ptr(%rip), %rax	# Context_ptr, tmp68
	movq	%rax, -8(%rbp)	# tmp68, cxt
	.loc 1 3704 0
	movq	-8(%rbp), %rax	# cxt, tmp69
	movq	168(%rax), %rax	# cxt_1->membuf.aptr, D.22197
	movq	%rax, %rdx	# D.22197, D.22198
	movq	-8(%rbp), %rax	# cxt, tmp70
	movq	152(%rax), %rax	# cxt_1->membuf.arena, D.22197
	subq	%rax, %rdx	# D.22198, D.22198
	movq	%rdx, %rax	# D.22198, D.22198
	movq	%rax, %rdx	# D.22198, D.22199
	movq	-8(%rbp), %rax	# cxt, tmp71
	movq	152(%rax), %rax	# cxt_1->membuf.arena, D.22197
	movq	%rdx, %rsi	# D.22199,
	movq	%rax, %rdi	# D.22197,
	call	Perl_newSVpv	#
	.loc 1 3705 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	mbuf2sv, .-mbuf2sv
	.globl	mstore
	.type	mstore, @function
mstore:
.LFB38:
	.loc 1 3714 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# sv, sv
	.loc 1 3719 0
	leaq	-8(%rbp), %rdx	#, tmp62
	movq	-24(%rbp), %rax	# sv, tmp63
	movq	%rdx, %r8	# tmp62,
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp63,
	movl	$0, %edi	#,
	call	do_store	#
	testl	%eax, %eax	# D.22202
	jne	.L820	#,
	.loc 1 3720 0
	movl	$PL_sv_undef, %eax	#, D.22201
	jmp	.L822	#
.L820:
	.loc 1 3722 0
	movq	-8(%rbp), %rax	# out, D.22201
.L822:
	.loc 1 3723 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	mstore, .-mstore
	.globl	net_mstore
	.type	net_mstore, @function
net_mstore:
.LFB39:
	.loc 1 3732 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# sv, sv
	.loc 1 3737 0
	leaq	-8(%rbp), %rdx	#, tmp62
	movq	-24(%rbp), %rax	# sv, tmp63
	movq	%rdx, %r8	# tmp62,
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp63,
	movl	$0, %edi	#,
	call	do_store	#
	testl	%eax, %eax	# D.22204
	jne	.L824	#,
	.loc 1 3738 0
	movl	$PL_sv_undef, %eax	#, D.22203
	jmp	.L826	#
.L824:
	.loc 1 3740 0
	movq	-8(%rbp), %rax	# out, D.22203
.L826:
	.loc 1 3741 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	net_mstore, .-net_mstore
	.section	.rodata
.LC31:
	.string	"file"
.LC32:
	.string	"string"
	.align 8
.LC33:
	.string	"Corrupted storable %s (binary v%d.%d), current is v%d.%d"
	.align 8
.LC34:
	.string	"Corrupted storable %s (binary v%d.%d)"
	.text
	.type	retrieve_other, @function
retrieve_other:
.LFB40:
	.loc 1 3754 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# cxt, cxt
	movq	%rsi, -16(%rbp)	# cname, cname
	.loc 1 3756 0
	movq	-8(%rbp), %rax	# cxt, tmp71
	movl	224(%rax), %eax	# cxt_3(D)->ver_major, D.22205
	.loc 1 3755 0
	cmpl	$2, %eax	#, D.22205
	je	.L828	#,
	.loc 1 3757 0
	movq	-8(%rbp), %rax	# cxt, tmp72
	movl	228(%rax), %eax	# cxt_3(D)->ver_minor, D.22205
	.loc 1 3756 0
	cmpl	$6, %eax	#, D.22205
	je	.L828	#,
.LBB250:
	.loc 1 3759 0
	movq	-8(%rbp), %rax	# cxt, tmp73
	movl	$1, 112(%rax)	#, cxt_3(D)->s_dirty
	movq	-8(%rbp), %rax	# cxt, tmp74
	movl	228(%rax), %ecx	# cxt_3(D)->ver_minor, D.22205
	movq	-8(%rbp), %rax	# cxt, tmp75
	movl	224(%rax), %edx	# cxt_3(D)->ver_major, D.22205
	movq	-8(%rbp), %rax	# cxt, tmp76
	movq	216(%rax), %rax	# cxt_3(D)->fio, D.22206
	testq	%rax, %rax	# D.22206
	je	.L829	#,
	.loc 1 3759 0 is_stmt 0 discriminator 1
	movl	$.LC31, %eax	#, iftmp.432
	jmp	.L830	#
.L829:
	.loc 1 3759 0 discriminator 2
	movl	$.LC32, %eax	#, iftmp.432
.L830:
	.loc 1 3759 0 discriminator 3
	movl	$6, %r9d	#,
	movl	$2, %r8d	#,
	movq	%rax, %rsi	# iftmp.432,
	movl	$.LC33, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.LBE250:
	jmp	.L831	#
.L828:
.LBB251:
	.loc 1 3764 0 is_stmt 1
	movq	-8(%rbp), %rax	# cxt, tmp77
	movl	$1, 112(%rax)	#, cxt_3(D)->s_dirty
	movq	-8(%rbp), %rax	# cxt, tmp78
	movl	228(%rax), %ecx	# cxt_3(D)->ver_minor, D.22205
	movq	-8(%rbp), %rax	# cxt, tmp79
	movl	224(%rax), %edx	# cxt_3(D)->ver_major, D.22205
	movq	-8(%rbp), %rax	# cxt, tmp80
	movq	216(%rax), %rax	# cxt_3(D)->fio, D.22206
	testq	%rax, %rax	# D.22206
	je	.L832	#,
	.loc 1 3764 0 is_stmt 0 discriminator 1
	movl	$.LC31, %eax	#, iftmp.433
	jmp	.L833	#
.L832:
	.loc 1 3764 0 discriminator 2
	movl	$.LC32, %eax	#, iftmp.433
.L833:
	.loc 1 3764 0 discriminator 3
	movq	%rax, %rsi	# iftmp.433,
	movl	$.LC34, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L831:
.LBE251:
	.loc 1 3769 0 is_stmt 1
	movl	$0, %eax	#, D.22207
	.loc 1 3770 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	retrieve_other, .-retrieve_other
	.section	.rodata
	.align 8
.LC35:
	.string	"Class name #%ld should have been seen already"
	.text
	.type	retrieve_idx_blessed, @function
retrieve_idx_blessed:
.LFB41:
	.loc 1 3779 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# cxt, cxt
	movq	%rsi, -48(%rbp)	# cname, cname
	.loc 1 3788 0
	movq	-40(%rbp), %rax	# cxt, tmp102
	movq	216(%rax), %rax	# cxt_2(D)->fio, D.22213
	testq	%rax, %rax	# D.22213
	jne	.L836	#,
	.loc 1 3788 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# cxt, tmp103
	movq	168(%rax), %rdx	# cxt_2(D)->membuf.aptr, D.22214
	movq	-40(%rbp), %rax	# cxt, tmp104
	movq	176(%rax), %rax	# cxt_2(D)->membuf.aend, D.22214
	cmpq	%rax, %rdx	# D.22214, D.22214
	jae	.L837	#,
	movq	-40(%rbp), %rax	# cxt, tmp105
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22214
	leaq	1(%rax), %rcx	#, D.22214
	movq	-40(%rbp), %rdx	# cxt, tmp106
	movq	%rcx, 168(%rdx)	# D.22214, cxt_2(D)->membuf.aptr
	movzbl	(%rax), %eax	# *_7, D.22215
	movzbl	%al, %eax	# D.22216, idx.434
	movl	%eax, -28(%rbp)	# idx.434, idx
	jmp	.L838	#
.L837:
	.loc 1 3788 0 discriminator 2
	movl	$0, %eax	#, D.22212
	jmp	.L847	#
.L836:
	movq	-40(%rbp), %rax	# cxt, tmp107
	movq	216(%rax), %rax	# cxt_2(D)->fio, D.22213
	movq	%rax, %rdi	# D.22213,
	call	PerlIO_getc	#
	movl	%eax, -28(%rbp)	# idx.435, idx
	movl	-28(%rbp), %eax	# idx, idx.436
	cmpl	$-1, %eax	#, idx.436
	jne	.L838	#,
	.loc 1 3788 0 discriminator 1
	movl	$0, %eax	#, D.22212
	jmp	.L847	#
.L838:
	.loc 1 3789 0 is_stmt 1
	movl	-28(%rbp), %eax	# idx, idx.437
	andl	$128, %eax	#, D.22217
	testl	%eax, %eax	# D.22217
	je	.L840	#,
.LBB252:
	.loc 1 3790 0
	movq	-40(%rbp), %rax	# cxt, tmp108
	movq	216(%rax), %rax	# cxt_2(D)->fio, D.22213
	testq	%rax, %rax	# D.22213
	jne	.L841	#,
	.loc 1 3790 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# cxt, tmp109
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22214
	leaq	4(%rax), %rdx	#, D.22214
	movq	-40(%rbp), %rax	# cxt, tmp110
	movq	176(%rax), %rax	# cxt_2(D)->membuf.aend, D.22214
	cmpq	%rax, %rdx	# D.22214, D.22214
	ja	.L842	#,
	movq	-40(%rbp), %rax	# cxt, tmp111
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22214
	movq	%rax, %rdx	# D.22214, D.22218
	movq	-40(%rbp), %rax	# cxt, tmp112
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22214
	andq	$-4, %rax	#, D.22218
	cmpq	%rax, %rdx	# D.22218, D.22218
	jne	.L843	#,
	movq	-40(%rbp), %rax	# cxt, tmp113
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22214
	movl	(%rax), %eax	# MEM[(int *)_28], idx.438
	movl	%eax, -28(%rbp)	# idx.438, idx
	jmp	.L844	#
.L843:
	.loc 1 3790 0 discriminator 2
	movq	-40(%rbp), %rax	# cxt, tmp114
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22214
	movl	(%rax), %eax	# MEM[(char * {ref-all})_30], D.22217
	movl	%eax, -28(%rbp)	# D.22217, MEM[(char * {ref-all})&idx]
.L844:
	.loc 1 3790 0 discriminator 1
	movq	-40(%rbp), %rax	# cxt, tmp115
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22214
	leaq	4(%rax), %rdx	#, D.22214
	movq	-40(%rbp), %rax	# cxt, tmp116
	movq	%rdx, 168(%rax)	# D.22214, cxt_2(D)->membuf.aptr
	jmp	.L845	#
.L842:
	.loc 1 3790 0 discriminator 2
	movl	$0, %eax	#, D.22212
	jmp	.L847	#
.L841:
	movq	-40(%rbp), %rax	# cxt, tmp117
	movq	216(%rax), %rax	# cxt_2(D)->fio, D.22213
	leaq	-28(%rbp), %rcx	#, tmp118
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp118,
	movq	%rax, %rdi	# D.22213,
	call	Perl_PerlIO_read	#
	cmpq	$4, %rax	#, D.22219
	je	.L845	#,
	.loc 1 3790 0 discriminator 1
	movl	$0, %eax	#, D.22212
	jmp	.L847	#
.L845:
	.loc 1 3790 0 discriminator 2
	movq	-40(%rbp), %rax	# cxt, tmp119
	movl	80(%rax), %eax	# cxt_2(D)->netorder, D.22217
	testl	%eax, %eax	# D.22217
	je	.L840	#,
	.loc 1 3790 0 discriminator 1
	movl	-28(%rbp), %eax	# idx, idx.439
	cltq
	movq	%rax, %rdi	# D.22219,
	call	Perl_my_ntohl	#
	movl	%eax, -28(%rbp)	# idx.440, idx
.L840:
.LBE252:
	.loc 1 3796 0 is_stmt 1
	movl	-28(%rbp), %ecx	# idx, idx.441
	movq	-40(%rbp), %rax	# cxt, tmp120
	movq	48(%rax), %rax	# cxt_2(D)->aclass, D.22220
	movl	$0, %edx	#,
	movl	%ecx, %esi	# idx.441,
	movq	%rax, %rdi	# D.22220,
	call	Perl_av_fetch	#
	movq	%rax, -24(%rbp)	# tmp121, sva
	.loc 1 3797 0
	cmpq	$0, -24(%rbp)	#, sva
	jne	.L846	#,
.LBB253:
	.loc 1 3798 0
	movq	-40(%rbp), %rax	# cxt, tmp122
	movl	$1, 112(%rax)	#, cxt_2(D)->s_dirty
	movl	-28(%rbp), %eax	# idx, idx.442
	cltq
	movq	%rax, %rsi	# D.22219,
	movl	$.LC35, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L846:
.LBE253:
	.loc 1 3800 0
	movq	-24(%rbp), %rax	# sva, tmp123
	movq	(%rax), %rax	# *sva_45, D.22212
	movq	(%rax), %rax	# _48->sv_any, D.22221
	movq	(%rax), %rax	# MEM[(struct XPV *)_49].xpv_pv, tmp124
	movq	%rax, -16(%rbp)	# tmp124, class
	.loc 1 3808 0
	movq	-16(%rbp), %rdx	# class, tmp125
	movq	-40(%rbp), %rax	# cxt, tmp126
	movq	%rdx, %rsi	# tmp125,
	movq	%rax, %rdi	# tmp126,
	call	retrieve	#
	movq	%rax, -8(%rbp)	# tmp127, sv
	.loc 1 3810 0
	movq	-8(%rbp), %rax	# sv, D.22212
.L847:
	.loc 1 3811 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	retrieve_idx_blessed, .-retrieve_idx_blessed
	.type	retrieve_blessed, @function
retrieve_blessed:
.LFB42:
	.loc 1 3820 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$200, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -200(%rbp)	# cxt, cxt
	movq	%rsi, -208(%rbp)	# cname, cname
	.loc 1 3820 0
	movq	%fs:40, %rax	#, tmp169
	movq	%rax, -24(%rbp)	# tmp169, D.22234
	xorl	%eax, %eax	# tmp169
	.loc 1 3824 0
	leaq	-160(%rbp), %rax	#, tmp129
	movq	%rax, -176(%rbp)	# tmp129, class
	.loc 1 3836 0
	movq	-200(%rbp), %rax	# cxt, tmp130
	movq	216(%rax), %rax	# cxt_4(D)->fio, D.22224
	testq	%rax, %rax	# D.22224
	jne	.L849	#,
	.loc 1 3836 0 is_stmt 0 discriminator 1
	movq	-200(%rbp), %rax	# cxt, tmp131
	movq	168(%rax), %rdx	# cxt_4(D)->membuf.aptr, D.22225
	movq	-200(%rbp), %rax	# cxt, tmp132
	movq	176(%rax), %rax	# cxt_4(D)->membuf.aend, D.22225
	cmpq	%rax, %rdx	# D.22225, D.22225
	jae	.L850	#,
	movq	-200(%rbp), %rax	# cxt, tmp133
	movq	168(%rax), %rax	# cxt_4(D)->membuf.aptr, D.22225
	leaq	1(%rax), %rcx	#, D.22225
	movq	-200(%rbp), %rdx	# cxt, tmp134
	movq	%rcx, 168(%rdx)	# D.22225, cxt_4(D)->membuf.aptr
	movzbl	(%rax), %eax	# *_9, D.22226
	movzbl	%al, %eax	# D.22227, len.443
	movl	%eax, -180(%rbp)	# len.443, len
	jmp	.L851	#
.L850:
	.loc 1 3836 0 discriminator 2
	movl	$0, %eax	#, D.22223
	jmp	.L865	#
.L849:
	movq	-200(%rbp), %rax	# cxt, tmp135
	movq	216(%rax), %rax	# cxt_4(D)->fio, D.22224
	movq	%rax, %rdi	# D.22224,
	call	PerlIO_getc	#
	movl	%eax, -180(%rbp)	# len.444, len
	movl	-180(%rbp), %eax	# len, len.445
	cmpl	$-1, %eax	#, len.445
	jne	.L851	#,
	.loc 1 3836 0 discriminator 1
	movl	$0, %eax	#, D.22223
	jmp	.L865	#
.L851:
	.loc 1 3837 0 is_stmt 1
	movl	-180(%rbp), %eax	# len, len.446
	andl	$128, %eax	#, D.22228
	testl	%eax, %eax	# D.22228
	je	.L853	#,
.LBB254:
	.loc 1 3838 0
	movq	-200(%rbp), %rax	# cxt, tmp136
	movq	216(%rax), %rax	# cxt_4(D)->fio, D.22224
	testq	%rax, %rax	# D.22224
	jne	.L854	#,
	.loc 1 3838 0 is_stmt 0 discriminator 1
	movq	-200(%rbp), %rax	# cxt, tmp137
	movq	168(%rax), %rax	# cxt_4(D)->membuf.aptr, D.22225
	leaq	4(%rax), %rdx	#, D.22225
	movq	-200(%rbp), %rax	# cxt, tmp138
	movq	176(%rax), %rax	# cxt_4(D)->membuf.aend, D.22225
	cmpq	%rax, %rdx	# D.22225, D.22225
	ja	.L855	#,
	movq	-200(%rbp), %rax	# cxt, tmp139
	movq	168(%rax), %rax	# cxt_4(D)->membuf.aptr, D.22225
	movq	%rax, %rdx	# D.22225, D.22229
	movq	-200(%rbp), %rax	# cxt, tmp140
	movq	168(%rax), %rax	# cxt_4(D)->membuf.aptr, D.22225
	andq	$-4, %rax	#, D.22229
	cmpq	%rax, %rdx	# D.22229, D.22229
	jne	.L856	#,
	movq	-200(%rbp), %rax	# cxt, tmp141
	movq	168(%rax), %rax	# cxt_4(D)->membuf.aptr, D.22225
	movl	(%rax), %eax	# MEM[(int *)_30], len.447
	movl	%eax, -180(%rbp)	# len.447, len
	jmp	.L857	#
.L856:
	.loc 1 3838 0 discriminator 2
	movq	-200(%rbp), %rax	# cxt, tmp142
	movq	168(%rax), %rax	# cxt_4(D)->membuf.aptr, D.22225
	movl	(%rax), %eax	# MEM[(char * {ref-all})_32], D.22228
	movl	%eax, -180(%rbp)	# D.22228, MEM[(char * {ref-all})&len]
.L857:
	.loc 1 3838 0 discriminator 1
	movq	-200(%rbp), %rax	# cxt, tmp143
	movq	168(%rax), %rax	# cxt_4(D)->membuf.aptr, D.22225
	leaq	4(%rax), %rdx	#, D.22225
	movq	-200(%rbp), %rax	# cxt, tmp144
	movq	%rdx, 168(%rax)	# D.22225, cxt_4(D)->membuf.aptr
	jmp	.L858	#
.L855:
	.loc 1 3838 0 discriminator 2
	movl	$0, %eax	#, D.22223
	jmp	.L865	#
.L854:
	movq	-200(%rbp), %rax	# cxt, tmp145
	movq	216(%rax), %rax	# cxt_4(D)->fio, D.22224
	leaq	-180(%rbp), %rcx	#, tmp146
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp146,
	movq	%rax, %rdi	# D.22224,
	call	Perl_PerlIO_read	#
	cmpq	$4, %rax	#, D.22230
	je	.L858	#,
	.loc 1 3838 0 discriminator 1
	movl	$0, %eax	#, D.22223
	jmp	.L865	#
.L858:
	.loc 1 3838 0 discriminator 2
	movq	-200(%rbp), %rax	# cxt, tmp147
	movl	80(%rax), %eax	# cxt_4(D)->netorder, D.22228
	testl	%eax, %eax	# D.22228
	je	.L859	#,
	.loc 1 3838 0 discriminator 1
	movl	-180(%rbp), %eax	# len, len.448
	cltq
	movq	%rax, %rdi	# D.22230,
	call	Perl_my_ntohl	#
	movl	%eax, -180(%rbp)	# len.449, len
.L859:
.LBE254:
	.loc 1 3840 0 is_stmt 1
	movl	-180(%rbp), %eax	# len, len.450
	addl	$1, %eax	#, D.22228
	cltq
	movq	%rax, %rdi	# D.22229,
	call	Perl_safesysmalloc	#
	movq	%rax, -176(%rbp)	# tmp148, class
.L853:
	.loc 1 3842 0
	movq	-200(%rbp), %rax	# cxt, tmp149
	movq	216(%rax), %rax	# cxt_4(D)->fio, D.22224
	testq	%rax, %rax	# D.22224
	jne	.L860	#,
	.loc 1 3842 0 is_stmt 0 discriminator 1
	movq	-200(%rbp), %rax	# cxt, tmp150
	movq	168(%rax), %rdx	# cxt_4(D)->membuf.aptr, D.22225
	movl	-180(%rbp), %eax	# len, len.451
	cltq
	addq	%rax, %rdx	# D.22231, D.22225
	movq	-200(%rbp), %rax	# cxt, tmp151
	movq	176(%rax), %rax	# cxt_4(D)->membuf.aend, D.22225
	cmpq	%rax, %rdx	# D.22225, D.22225
	ja	.L861	#,
	movl	-180(%rbp), %eax	# len, len.452
	movslq	%eax, %rdx	# len.452, D.22229
	movq	-200(%rbp), %rax	# cxt, tmp152
	movq	168(%rax), %rcx	# cxt_4(D)->membuf.aptr, D.22225
	movq	-176(%rbp), %rax	# class, tmp153
	movq	%rcx, %rsi	# D.22225,
	movq	%rax, %rdi	# tmp153,
	call	memcpy	#
	movq	-200(%rbp), %rax	# cxt, tmp154
	movq	168(%rax), %rdx	# cxt_4(D)->membuf.aptr, D.22225
	movl	-180(%rbp), %eax	# len, len.453
	cltq
	addq	%rax, %rdx	# D.22231, D.22225
	movq	-200(%rbp), %rax	# cxt, tmp155
	movq	%rdx, 168(%rax)	# D.22225, cxt_4(D)->membuf.aptr
	jmp	.L862	#
.L861:
	.loc 1 3842 0 discriminator 2
	movl	$0, %eax	#, D.22223
	jmp	.L865	#
.L860:
	movl	-180(%rbp), %eax	# len, len.454
	movslq	%eax, %rdx	# len.454, D.22229
	movq	-200(%rbp), %rax	# cxt, tmp156
	movq	216(%rax), %rax	# cxt_4(D)->fio, D.22224
	movq	-176(%rbp), %rcx	# class, tmp157
	movq	%rcx, %rsi	# tmp157,
	movq	%rax, %rdi	# D.22224,
	call	Perl_PerlIO_read	#
	movl	-180(%rbp), %edx	# len, len.455
	movslq	%edx, %rdx	# len.455, D.22230
	cmpq	%rdx, %rax	# D.22230, D.22230
	je	.L862	#,
	.loc 1 3842 0 discriminator 1
	movl	$0, %eax	#, D.22223
	jmp	.L865	#
.L862:
	.loc 1 3843 0 is_stmt 1
	movl	-180(%rbp), %eax	# len, len.456
	movslq	%eax, %rdx	# len.456, D.22231
	movq	-176(%rbp), %rax	# class, tmp158
	addq	%rdx, %rax	# D.22231, D.22225
	movb	$0, (%rax)	#, *_72
	.loc 1 3851 0
	movl	-180(%rbp), %eax	# len, len.457
	movslq	%eax, %rdx	# len.457, D.22229
	movq	-176(%rbp), %rax	# class, tmp159
	movq	%rdx, %rsi	# D.22229,
	movq	%rax, %rdi	# tmp159,
	call	Perl_newSVpvn	#
	movq	%rax, %rdx	#, D.22223
	movq	-200(%rbp), %rax	# cxt, tmp160
	movq	72(%rax), %rax	# cxt_4(D)->classnum, D.22230
	leaq	1(%rax), %rsi	#, D.22230
	movq	-200(%rbp), %rcx	# cxt, tmp161
	movq	%rsi, 72(%rcx)	# D.22230, cxt_4(D)->classnum
	movl	%eax, %ecx	# D.22230, D.22228
	movq	-200(%rbp), %rax	# cxt, tmp162
	movq	48(%rax), %rax	# cxt_4(D)->aclass, D.22232
	movl	%ecx, %esi	# D.22228,
	movq	%rax, %rdi	# D.22232,
	call	Perl_av_store	#
	testq	%rax, %rax	# D.22233
	jne	.L863	#,
	.loc 1 3852 0
	movl	$0, %eax	#, D.22223
	jmp	.L865	#
.L863:
	.loc 1 3858 0
	movq	-176(%rbp), %rdx	# class, tmp163
	movq	-200(%rbp), %rax	# cxt, tmp164
	movq	%rdx, %rsi	# tmp163,
	movq	%rax, %rdi	# tmp164,
	call	retrieve	#
	movq	%rax, -168(%rbp)	# tmp165, sv
	.loc 1 3859 0
	leaq	-160(%rbp), %rax	#, tmp166
	cmpq	%rax, -176(%rbp)	# tmp166, class
	je	.L864	#,
	.loc 1 3860 0
	movq	-176(%rbp), %rax	# class, tmp167
	movq	%rax, %rdi	# tmp167,
	call	Perl_safesysfree	#
.L864:
	.loc 1 3862 0
	movq	-168(%rbp), %rax	# sv, D.22223
.L865:
	.loc 1 3863 0
	movq	-24(%rbp), %rbx	# D.22234, tmp170
	xorq	%fs:40, %rbx	#, tmp170
	je	.L866	#,
	call	__stack_chk_fail	#
.L866:
	addq	$200, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	retrieve_blessed, .-retrieve_blessed
	.section	.rodata
	.align 8
.LC36:
	.string	"Object #%ld should have been retrieved already"
.LC37:
	.string	"STORABLE_thaw"
.LC38:
	.string	"require "
	.align 8
.LC39:
	.string	"No STORABLE_thaw defined for objects of class %s (even after a \"require %s;\")"
	.align 8
.LC40:
	.string	"Forgot to deal with extra type %d"
	.text
	.type	retrieve_hook, @function
retrieve_hook:
.LFB43:
	.loc 1 3886 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$312, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -312(%rbp)	# cxt, cxt
	movq	%rsi, -320(%rbp)	# cname, cname
	.loc 1 3886 0
	movq	%fs:40, %rax	#, tmp642
	movq	%rax, -24(%rbp)	# tmp642, D.22253
	xorl	%eax, %eax	# tmp642
	.loc 1 3889 0
	leaq	-160(%rbp), %rax	#, tmp400
	movq	%rax, -256(%rbp)	# tmp400, class
	.loc 1 3893 0
	movl	$0, -292(%rbp)	#, len3
	.loc 1 3894 0
	movq	$0, -248(%rbp)	#, av
	.loc 1 3899 0
	movq	-312(%rbp), %rax	# cxt, tmp401
	movl	4(%rax), %eax	# cxt_21(D)->optype, D.22238
	andl	$4, %eax	#, tmp402
	movl	%eax, -272(%rbp)	# tmp402, clone
	.loc 1 3900 0
	movb	$0, -301(%rbp)	#, mtype
	.loc 1 3901 0
	movl	$0, -280(%rbp)	#, extra_type
	.loc 1 3910 0
	movq	-312(%rbp), %rax	# cxt, tmp403
	movq	216(%rax), %rax	# cxt_21(D)->fio, D.22239
	testq	%rax, %rax	# D.22239
	jne	.L868	#,
	.loc 1 3910 0 is_stmt 0 discriminator 1
	movq	-312(%rbp), %rax	# cxt, tmp404
	movq	168(%rax), %rdx	# cxt_21(D)->membuf.aptr, D.22240
	movq	-312(%rbp), %rax	# cxt, tmp405
	movq	176(%rax), %rax	# cxt_21(D)->membuf.aend, D.22240
	cmpq	%rax, %rdx	# D.22240, D.22240
	jae	.L869	#,
	movq	-312(%rbp), %rax	# cxt, tmp406
	movq	168(%rax), %rax	# cxt_21(D)->membuf.aptr, D.22240
	leaq	1(%rax), %rcx	#, D.22240
	movq	-312(%rbp), %rdx	# cxt, tmp407
	movq	%rcx, 168(%rdx)	# D.22240, cxt_21(D)->membuf.aptr
	movzbl	(%rax), %eax	# *_30, D.22241
	movzbl	%al, %eax	# D.22242, tmp408
	movl	%eax, -284(%rbp)	# tmp408, flags
	jmp	.L870	#
.L869:
	.loc 1 3910 0 discriminator 2
	movl	$0, %eax	#, D.22237
	jmp	.L974	#
.L868:
	movq	-312(%rbp), %rax	# cxt, tmp409
	movq	216(%rax), %rax	# cxt_21(D)->fio, D.22239
	movq	%rax, %rdi	# D.22239,
	call	PerlIO_getc	#
	movl	%eax, -284(%rbp)	# D.22238, flags
	cmpl	$-1, -284(%rbp)	#, flags
	jne	.L870	#,
	.loc 1 3910 0 discriminator 1
	movl	$0, %eax	#, D.22237
	jmp	.L974	#
.L870:
	.loc 1 3920 0 is_stmt 1
	movl	-284(%rbp), %eax	# flags, flags.458
	andl	$3, %eax	#, tmp410
	movl	%eax, -268(%rbp)	# tmp410, obj_type
	.loc 1 3921 0
	movl	-268(%rbp), %eax	# obj_type, obj_type
	cmpl	$1, %eax	#, obj_type
	je	.L873	#,
	cmpl	$1, %eax	#, obj_type
	jg	.L874	#,
	testl	%eax, %eax	# obj_type
	je	.L875	#,
	jmp	.L872	#
.L874:
	cmpl	$2, %eax	#, obj_type
	je	.L876	#,
	cmpl	$3, %eax	#, obj_type
	je	.L877	#,
	jmp	.L872	#
.L875:
	.loc 1 3923 0
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, -232(%rbp)	# tmp412, sv
	.loc 1 3924 0
	jmp	.L878	#
.L873:
	.loc 1 3926 0
	call	Perl_newAV	#
	movq	%rax, -232(%rbp)	# tmp413, sv
	.loc 1 3927 0
	jmp	.L878	#
.L876:
	.loc 1 3929 0
	call	Perl_newHV	#
	movq	%rax, -232(%rbp)	# tmp414, sv
	.loc 1 3930 0
	jmp	.L878	#
.L877:
	.loc 1 3936 0
	movq	-312(%rbp), %rax	# cxt, tmp415
	movq	216(%rax), %rax	# cxt_21(D)->fio, D.22239
	testq	%rax, %rax	# D.22239
	jne	.L879	#,
	.loc 1 3936 0 is_stmt 0 discriminator 1
	movq	-312(%rbp), %rax	# cxt, tmp416
	movq	168(%rax), %rdx	# cxt_21(D)->membuf.aptr, D.22240
	movq	-312(%rbp), %rax	# cxt, tmp417
	movq	176(%rax), %rax	# cxt_21(D)->membuf.aend, D.22240
	cmpq	%rax, %rdx	# D.22240, D.22240
	jae	.L880	#,
	movq	-312(%rbp), %rax	# cxt, tmp418
	movq	168(%rax), %rax	# cxt_21(D)->membuf.aptr, D.22240
	leaq	1(%rax), %rcx	#, D.22240
	movq	-312(%rbp), %rdx	# cxt, tmp419
	movq	%rcx, 168(%rdx)	# D.22240, cxt_21(D)->membuf.aptr
	movzbl	(%rax), %eax	# *_49, D.22241
	movzbl	%al, %eax	# D.22242, tmp420
	movl	%eax, -280(%rbp)	# tmp420, extra_type
	jmp	.L881	#
.L880:
	.loc 1 3936 0 discriminator 2
	movl	$0, %eax	#, D.22237
	jmp	.L974	#
.L879:
	movq	-312(%rbp), %rax	# cxt, tmp421
	movq	216(%rax), %rax	# cxt_21(D)->fio, D.22239
	movq	%rax, %rdi	# D.22239,
	call	PerlIO_getc	#
	movl	%eax, -280(%rbp)	# D.22238, extra_type
	cmpl	$-1, -280(%rbp)	#, extra_type
	jne	.L881	#,
	.loc 1 3936 0 discriminator 1
	movl	$0, %eax	#, D.22237
	jmp	.L974	#
.L881:
	.loc 1 3937 0 is_stmt 1
	movl	-280(%rbp), %eax	# extra_type, extra_type
	cmpl	$5, %eax	#, extra_type
	je	.L883	#,
	cmpl	$6, %eax	#, extra_type
	je	.L884	#,
	cmpl	$4, %eax	#, extra_type
	jne	.L976	#,
	.loc 1 3939 0
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, -232(%rbp)	# tmp423, sv
	.loc 1 3940 0
	movb	$113, -301(%rbp)	#, mtype
	.loc 1 3941 0
	jmp	.L886	#
.L883:
	.loc 1 3943 0
	call	Perl_newAV	#
	movq	%rax, -232(%rbp)	# tmp424, sv
	.loc 1 3944 0
	movb	$80, -301(%rbp)	#, mtype
	.loc 1 3945 0
	jmp	.L886	#
.L884:
	.loc 1 3947 0
	call	Perl_newHV	#
	movq	%rax, -232(%rbp)	# tmp425, sv
	.loc 1 3948 0
	movb	$80, -301(%rbp)	#, mtype
	.loc 1 3949 0
	jmp	.L886	#
.L976:
	.loc 1 3951 0
	movq	-312(%rbp), %rax	# cxt, tmp426
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp426,
	call	retrieve_other	#
	jmp	.L974	#
.L886:
	.loc 1 3953 0
	jmp	.L878	#
.L872:
	.loc 1 3955 0
	movq	-312(%rbp), %rax	# cxt, tmp427
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp427,
	call	retrieve_other	#
	jmp	.L974	#
.L878:
.LBB255:
	.loc 1 3957 0
	cmpq	$0, -232(%rbp)	#, sv
	jne	.L887	#,
	.loc 1 3957 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.22237
	jmp	.L974	#
.L887:
	.loc 1 3957 0 discriminator 2
	movq	-232(%rbp), %rax	# sv, tmp428
	movq	%rax, PL_Sv(%rip)	# tmp428, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.460
	testq	%rax, %rax	# PL_Sv.460
	je	.L889	#,
	.loc 1 3957 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.461
	movl	8(%rax), %edx	# PL_Sv.461_69->sv_refcnt, D.22243
	addl	$1, %edx	#, D.22243
	movl	%edx, 8(%rax)	# D.22243, PL_Sv.461_69->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.461_69->sv_refcnt, D.22243
	testl	%eax, %eax	# D.22243
	je	.L889	#,
	.loc 1 3957 0
	nop
.L889:
	.loc 1 3957 0 discriminator 4
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.462
	movq	-312(%rbp), %rax	# cxt, tmp429
	movq	64(%rax), %rax	# cxt_21(D)->tagnum, D.22244
	leaq	1(%rax), %rsi	#, D.22244
	movq	-312(%rbp), %rcx	# cxt, tmp430
	movq	%rsi, 64(%rcx)	# D.22244, cxt_21(D)->tagnum
	movl	%eax, %ecx	# D.22244, D.22238
	movq	-312(%rbp), %rax	# cxt, tmp431
	movq	24(%rax), %rax	# cxt_21(D)->aseen, D.22245
	movl	%ecx, %esi	# D.22238,
	movq	%rax, %rdi	# D.22245,
	call	Perl_av_store	#
	testq	%rax, %rax	# D.22246
	jne	.L890	#,
	.loc 1 3957 0 discriminator 1
	movl	$0, %eax	#, D.22237
	jmp	.L974	#
.L890:
.LBE255:
	.loc 1 3971 0 is_stmt 1
	jmp	.L891	#
.L895:
	.loc 1 3973 0
	movq	-312(%rbp), %rax	# cxt, tmp432
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp432,
	call	retrieve	#
	movq	%rax, -216(%rbp)	# tmp433, rv
	.loc 1 3974 0
	cmpq	$0, -216(%rbp)	#, rv
	jne	.L892	#,
	.loc 1 3975 0
	movl	$0, %eax	#, D.22237
	jmp	.L974	#
.L892:
	.loc 1 3976 0
	movq	-216(%rbp), %rax	# rv, tmp434
	movq	%rax, %rdi	# tmp434,
	call	Perl_sv_free	#
	.loc 1 3979 0
	movq	-312(%rbp), %rax	# cxt, tmp435
	movq	216(%rax), %rax	# cxt_21(D)->fio, D.22239
	testq	%rax, %rax	# D.22239
	jne	.L893	#,
	.loc 1 3979 0 is_stmt 0 discriminator 1
	movq	-312(%rbp), %rax	# cxt, tmp436
	movq	168(%rax), %rdx	# cxt_21(D)->membuf.aptr, D.22240
	movq	-312(%rbp), %rax	# cxt, tmp437
	movq	176(%rax), %rax	# cxt_21(D)->membuf.aend, D.22240
	cmpq	%rax, %rdx	# D.22240, D.22240
	jae	.L894	#,
	movq	-312(%rbp), %rax	# cxt, tmp438
	movq	168(%rax), %rax	# cxt_21(D)->membuf.aptr, D.22240
	leaq	1(%rax), %rcx	#, D.22240
	movq	-312(%rbp), %rdx	# cxt, tmp439
	movq	%rcx, 168(%rdx)	# D.22240, cxt_21(D)->membuf.aptr
	movzbl	(%rax), %eax	# *_90, D.22241
	movzbl	%al, %eax	# D.22242, tmp440
	movl	%eax, -284(%rbp)	# tmp440, flags
	jmp	.L891	#
.L894:
	.loc 1 3979 0 discriminator 2
	movl	$0, %eax	#, D.22237
	jmp	.L974	#
.L893:
	movq	-312(%rbp), %rax	# cxt, tmp441
	movq	216(%rax), %rax	# cxt_21(D)->fio, D.22239
	movq	%rax, %rdi	# D.22239,
	call	PerlIO_getc	#
	movl	%eax, -284(%rbp)	# D.22238, flags
	cmpl	$-1, -284(%rbp)	#, flags
	jne	.L891	#,
	.loc 1 3979 0 discriminator 1
	movl	$0, %eax	#, D.22237
	jmp	.L974	#
.L891:
	.loc 1 3971 0 is_stmt 1 discriminator 1
	movl	-284(%rbp), %eax	# flags, tmp442
	andl	$64, %eax	#, D.22243
	testl	%eax, %eax	# D.22243
	jne	.L895	#,
	.loc 1 3982 0
	movl	-284(%rbp), %eax	# flags, tmp443
	andl	$32, %eax	#, D.22243
	testl	%eax, %eax	# D.22243
	je	.L896	#,
.LBB256:
	.loc 1 3990 0
	movl	-284(%rbp), %eax	# flags, tmp444
	andl	$4, %eax	#, D.22243
	testl	%eax, %eax	# D.22243
	je	.L897	#,
.LBB257:
	.loc 1 3991 0
	movq	-312(%rbp), %rax	# cxt, tmp445
	movq	216(%rax), %rax	# cxt_21(D)->fio, D.22239
	testq	%rax, %rax	# D.22239
	jne	.L898	#,
	.loc 1 3991 0 is_stmt 0 discriminator 1
	movq	-312(%rbp), %rax	# cxt, tmp446
	movq	168(%rax), %rax	# cxt_21(D)->membuf.aptr, D.22240
	leaq	4(%rax), %rdx	#, D.22240
	movq	-312(%rbp), %rax	# cxt, tmp447
	movq	176(%rax), %rax	# cxt_21(D)->membuf.aend, D.22240
	cmpq	%rax, %rdx	# D.22240, D.22240
	ja	.L899	#,
	movq	-312(%rbp), %rax	# cxt, tmp448
	movq	168(%rax), %rax	# cxt_21(D)->membuf.aptr, D.22240
	movq	%rax, %rdx	# D.22240, D.22247
	movq	-312(%rbp), %rax	# cxt, tmp449
	movq	168(%rax), %rax	# cxt_21(D)->membuf.aptr, D.22240
	andq	$-4, %rax	#, D.22247
	cmpq	%rax, %rdx	# D.22247, D.22247
	jne	.L900	#,
	movq	-312(%rbp), %rax	# cxt, tmp450
	movq	168(%rax), %rax	# cxt_21(D)->membuf.aptr, D.22240
	movl	(%rax), %eax	# MEM[(int *)_111], idx.463
	movl	%eax, -264(%rbp)	# idx.463, idx
	jmp	.L901	#
.L900:
	.loc 1 3991 0 discriminator 2
	movq	-312(%rbp), %rax	# cxt, tmp451
	movq	168(%rax), %rax	# cxt_21(D)->membuf.aptr, D.22240
	movl	(%rax), %eax	# MEM[(char * {ref-all})_113], D.22238
	movl	%eax, -264(%rbp)	# D.22238, MEM[(char * {ref-all})&idx]
.L901:
	.loc 1 3991 0 discriminator 1
	movq	-312(%rbp), %rax	# cxt, tmp452
	movq	168(%rax), %rax	# cxt_21(D)->membuf.aptr, D.22240
	leaq	4(%rax), %rdx	#, D.22240
	movq	-312(%rbp), %rax	# cxt, tmp453
	movq	%rdx, 168(%rax)	# D.22240, cxt_21(D)->membuf.aptr
	jmp	.L902	#
.L899:
	.loc 1 3991 0 discriminator 2
	movl	$0, %eax	#, D.22237
	jmp	.L974	#
.L898:
	movq	-312(%rbp), %rax	# cxt, tmp454
	movq	216(%rax), %rax	# cxt_21(D)->fio, D.22239
	leaq	-264(%rbp), %rcx	#, tmp455
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp455,
	movq	%rax, %rdi	# D.22239,
	call	Perl_PerlIO_read	#
	cmpq	$4, %rax	#, D.22244
	je	.L902	#,
	.loc 1 3991 0 discriminator 1
	movl	$0, %eax	#, D.22237
	jmp	.L974	#
.L902:
	.loc 1 3991 0 discriminator 2
	movq	-312(%rbp), %rax	# cxt, tmp456
	movl	80(%rax), %eax	# cxt_21(D)->netorder, D.22238
	testl	%eax, %eax	# D.22238
	je	.L904	#,
	.loc 1 3991 0 discriminator 1
	movl	-264(%rbp), %eax	# idx, idx.464
	cltq
	movq	%rax, %rdi	# D.22244,
	call	Perl_my_ntohl	#
	movl	%eax, -264(%rbp)	# idx.465, idx
.LBE257:
	jmp	.L905	#
.L904:
	jmp	.L905	#
.L897:
	.loc 1 3993 0 is_stmt 1
	movq	-312(%rbp), %rax	# cxt, tmp457
	movq	216(%rax), %rax	# cxt_21(D)->fio, D.22239
	testq	%rax, %rax	# D.22239
	jne	.L906	#,
	.loc 1 3993 0 is_stmt 0 discriminator 1
	movq	-312(%rbp), %rax	# cxt, tmp458
	movq	168(%rax), %rdx	# cxt_21(D)->membuf.aptr, D.22240
	movq	-312(%rbp), %rax	# cxt, tmp459
	movq	176(%rax), %rax	# cxt_21(D)->membuf.aend, D.22240
	cmpq	%rax, %rdx	# D.22240, D.22240
	jae	.L907	#,
	movq	-312(%rbp), %rax	# cxt, tmp460
	movq	168(%rax), %rax	# cxt_21(D)->membuf.aptr, D.22240
	leaq	1(%rax), %rcx	#, D.22240
	movq	-312(%rbp), %rdx	# cxt, tmp461
	movq	%rcx, 168(%rdx)	# D.22240, cxt_21(D)->membuf.aptr
	movzbl	(%rax), %eax	# *_130, D.22241
	movzbl	%al, %eax	# D.22242, idx.466
	movl	%eax, -264(%rbp)	# idx.466, idx
	jmp	.L905	#
.L907:
	.loc 1 3993 0 discriminator 2
	movl	$0, %eax	#, D.22237
	jmp	.L974	#
.L906:
	movq	-312(%rbp), %rax	# cxt, tmp462
	movq	216(%rax), %rax	# cxt_21(D)->fio, D.22239
	movq	%rax, %rdi	# D.22239,
	call	PerlIO_getc	#
	movl	%eax, -264(%rbp)	# idx.467, idx
	movl	-264(%rbp), %eax	# idx, idx.468
	cmpl	$-1, %eax	#, idx.468
	jne	.L905	#,
	.loc 1 3993 0 discriminator 1
	movl	$0, %eax	#, D.22237
	jmp	.L974	#
.L905:
	.loc 1 3995 0 is_stmt 1
	movl	-264(%rbp), %ecx	# idx, idx.469
	movq	-312(%rbp), %rax	# cxt, tmp463
	movq	48(%rax), %rax	# cxt_21(D)->aclass, D.22245
	movl	$0, %edx	#,
	movl	%ecx, %esi	# idx.469,
	movq	%rax, %rdi	# D.22245,
	call	Perl_av_fetch	#
	movq	%rax, -208(%rbp)	# tmp464, sva
	.loc 1 3996 0
	cmpq	$0, -208(%rbp)	#, sva
	jne	.L908	#,
.LBB258:
	.loc 1 3997 0
	movq	-312(%rbp), %rax	# cxt, tmp465
	movl	$1, 112(%rax)	#, cxt_21(D)->s_dirty
	movl	-264(%rbp), %eax	# idx, idx.470
	cltq
	movq	%rax, %rsi	# D.22244,
	movl	$.LC35, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L908:
.LBE258:
	.loc 1 4000 0
	movq	-208(%rbp), %rax	# sva, tmp466
	movq	(%rax), %rax	# *sva_142, D.22237
	movq	(%rax), %rax	# _145->sv_any, D.22248
	movq	(%rax), %rax	# MEM[(struct XPV *)_146].xpv_pv, tmp467
	movq	%rax, -256(%rbp)	# tmp467, class
.LBE256:
	jmp	.L909	#
.L896:
	.loc 1 4012 0
	movl	-284(%rbp), %eax	# flags, tmp468
	andl	$4, %eax	#, D.22243
	testl	%eax, %eax	# D.22243
	je	.L910	#,
.LBB259:
	.loc 1 4013 0
	movq	-312(%rbp), %rax	# cxt, tmp469
	movq	216(%rax), %rax	# cxt_21(D)->fio, D.22239
	testq	%rax, %rax	# D.22239
	jne	.L911	#,
	.loc 1 4013 0 is_stmt 0 discriminator 1
	movq	-312(%rbp), %rax	# cxt, tmp470
	movq	168(%rax), %rax	# cxt_21(D)->membuf.aptr, D.22240
	leaq	4(%rax), %rdx	#, D.22240
	movq	-312(%rbp), %rax	# cxt, tmp471
	movq	176(%rax), %rax	# cxt_21(D)->membuf.aend, D.22240
	cmpq	%rax, %rdx	# D.22240, D.22240
	ja	.L912	#,
	movq	-312(%rbp), %rax	# cxt, tmp472
	movq	168(%rax), %rax	# cxt_21(D)->membuf.aptr, D.22240
	movq	%rax, %rdx	# D.22240, D.22247
	movq	-312(%rbp), %rax	# cxt, tmp473
	movq	168(%rax), %rax	# cxt_21(D)->membuf.aptr, D.22240
	andq	$-4, %rax	#, D.22247
	cmpq	%rax, %rdx	# D.22247, D.22247
	jne	.L913	#,
	movq	-312(%rbp), %rax	# cxt, tmp474
	movq	168(%rax), %rax	# cxt_21(D)->membuf.aptr, D.22240
	movl	(%rax), %eax	# MEM[(int *)_158], len.471
	movl	%eax, -300(%rbp)	# len.471, len
	jmp	.L914	#
.L913:
	.loc 1 4013 0 discriminator 2
	movq	-312(%rbp), %rax	# cxt, tmp475
	movq	168(%rax), %rax	# cxt_21(D)->membuf.aptr, D.22240
	movl	(%rax), %eax	# MEM[(char * {ref-all})_160], D.22238
	movl	%eax, -300(%rbp)	# D.22238, MEM[(char * {ref-all})&len]
.L914:
	.loc 1 4013 0 discriminator 1
	movq	-312(%rbp), %rax	# cxt, tmp476
	movq	168(%rax), %rax	# cxt_21(D)->membuf.aptr, D.22240
	leaq	4(%rax), %rdx	#, D.22240
	movq	-312(%rbp), %rax	# cxt, tmp477
	movq	%rdx, 168(%rax)	# D.22240, cxt_21(D)->membuf.aptr
	jmp	.L915	#
.L912:
	.loc 1 4013 0 discriminator 2
	movl	$0, %eax	#, D.22237
	jmp	.L974	#
.L911:
	movq	-312(%rbp), %rax	# cxt, tmp478
	movq	216(%rax), %rax	# cxt_21(D)->fio, D.22239
	leaq	-300(%rbp), %rcx	#, tmp479
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp479,
	movq	%rax, %rdi	# D.22239,
	call	Perl_PerlIO_read	#
	cmpq	$4, %rax	#, D.22244
	je	.L915	#,
	.loc 1 4013 0 discriminator 1
	movl	$0, %eax	#, D.22237
	jmp	.L974	#
.L915:
	.loc 1 4013 0 discriminator 2
	movq	-312(%rbp), %rax	# cxt, tmp480
	movl	80(%rax), %eax	# cxt_21(D)->netorder, D.22238
	testl	%eax, %eax	# D.22238
	je	.L916	#,
	.loc 1 4013 0 discriminator 1
	movl	-300(%rbp), %eax	# len, len.472
	cltq
	movq	%rax, %rdi	# D.22244,
	call	Perl_my_ntohl	#
	movl	%eax, -300(%rbp)	# len.473, len
.LBE259:
	jmp	.L917	#
.L916:
	jmp	.L917	#
.L910:
	.loc 1 4015 0 is_stmt 1
	movq	-312(%rbp), %rax	# cxt, tmp481
	movq	216(%rax), %rax	# cxt_21(D)->fio, D.22239
	testq	%rax, %rax	# D.22239
	jne	.L918	#,
	.loc 1 4015 0 is_stmt 0 discriminator 1
	movq	-312(%rbp), %rax	# cxt, tmp482
	movq	168(%rax), %rdx	# cxt_21(D)->membuf.aptr, D.22240
	movq	-312(%rbp), %rax	# cxt, tmp483
	movq	176(%rax), %rax	# cxt_21(D)->membuf.aend, D.22240
	cmpq	%rax, %rdx	# D.22240, D.22240
	jae	.L919	#,
	movq	-312(%rbp), %rax	# cxt, tmp484
	movq	168(%rax), %rax	# cxt_21(D)->membuf.aptr, D.22240
	leaq	1(%rax), %rcx	#, D.22240
	movq	-312(%rbp), %rdx	# cxt, tmp485
	movq	%rcx, 168(%rdx)	# D.22240, cxt_21(D)->membuf.aptr
	movzbl	(%rax), %eax	# *_177, D.22241
	movzbl	%al, %eax	# D.22242, len.474
	movl	%eax, -300(%rbp)	# len.474, len
	jmp	.L917	#
.L919:
	.loc 1 4015 0 discriminator 2
	movl	$0, %eax	#, D.22237
	jmp	.L974	#
.L918:
	movq	-312(%rbp), %rax	# cxt, tmp486
	movq	216(%rax), %rax	# cxt_21(D)->fio, D.22239
	movq	%rax, %rdi	# D.22239,
	call	PerlIO_getc	#
	movl	%eax, -300(%rbp)	# len.475, len
	movl	-300(%rbp), %eax	# len, len.476
	cmpl	$-1, %eax	#, len.476
	jne	.L917	#,
	.loc 1 4015 0 discriminator 1
	movl	$0, %eax	#, D.22237
	jmp	.L974	#
.L917:
	.loc 1 4017 0 is_stmt 1
	movl	-300(%rbp), %eax	# len, len.477
	cmpl	$127, %eax	#, len.477
	jle	.L920	#,
	.loc 1 4019 0
	movl	-300(%rbp), %eax	# len, len.478
	addl	$1, %eax	#, D.22238
	cltq
	movq	%rax, %rdi	# D.22247,
	call	Perl_safesysmalloc	#
	movq	%rax, -256(%rbp)	# tmp487, class
.L920:
	.loc 1 4022 0
	movq	-312(%rbp), %rax	# cxt, tmp488
	movq	216(%rax), %rax	# cxt_21(D)->fio, D.22239
	testq	%rax, %rax	# D.22239
	jne	.L921	#,
	.loc 1 4022 0 is_stmt 0 discriminator 1
	movq	-312(%rbp), %rax	# cxt, tmp489
	movq	168(%rax), %rdx	# cxt_21(D)->membuf.aptr, D.22240
	movl	-300(%rbp), %eax	# len, len.479
	cltq
	addq	%rax, %rdx	# D.22249, D.22240
	movq	-312(%rbp), %rax	# cxt, tmp490
	movq	176(%rax), %rax	# cxt_21(D)->membuf.aend, D.22240
	cmpq	%rax, %rdx	# D.22240, D.22240
	ja	.L922	#,
	movl	-300(%rbp), %eax	# len, len.480
	movslq	%eax, %rdx	# len.480, D.22247
	movq	-312(%rbp), %rax	# cxt, tmp491
	movq	168(%rax), %rcx	# cxt_21(D)->membuf.aptr, D.22240
	movq	-256(%rbp), %rax	# class, tmp492
	movq	%rcx, %rsi	# D.22240,
	movq	%rax, %rdi	# tmp492,
	call	memcpy	#
	movq	-312(%rbp), %rax	# cxt, tmp493
	movq	168(%rax), %rdx	# cxt_21(D)->membuf.aptr, D.22240
	movl	-300(%rbp), %eax	# len, len.481
	cltq
	addq	%rax, %rdx	# D.22249, D.22240
	movq	-312(%rbp), %rax	# cxt, tmp494
	movq	%rdx, 168(%rax)	# D.22240, cxt_21(D)->membuf.aptr
	jmp	.L923	#
.L922:
	.loc 1 4022 0 discriminator 2
	movl	$0, %eax	#, D.22237
	jmp	.L974	#
.L921:
	movl	-300(%rbp), %eax	# len, len.482
	movslq	%eax, %rdx	# len.482, D.22247
	movq	-312(%rbp), %rax	# cxt, tmp495
	movq	216(%rax), %rax	# cxt_21(D)->fio, D.22239
	movq	-256(%rbp), %rcx	# class, tmp496
	movq	%rcx, %rsi	# tmp496,
	movq	%rax, %rdi	# D.22239,
	call	Perl_PerlIO_read	#
	movl	-300(%rbp), %edx	# len, len.483
	movslq	%edx, %rdx	# len.483, D.22244
	cmpq	%rdx, %rax	# D.22244, D.22244
	je	.L923	#,
	.loc 1 4022 0 discriminator 1
	movl	$0, %eax	#, D.22237
	jmp	.L974	#
.L923:
	.loc 1 4023 0 is_stmt 1
	movl	-300(%rbp), %eax	# len, len.484
	movslq	%eax, %rdx	# len.484, D.22249
	movq	-256(%rbp), %rax	# class, tmp497
	addq	%rdx, %rax	# D.22249, D.22240
	movb	$0, (%rax)	#, *_215
	.loc 1 4029 0
	movl	-300(%rbp), %eax	# len, len.485
	movslq	%eax, %rdx	# len.485, D.22247
	movq	-256(%rbp), %rax	# class, tmp498
	movq	%rdx, %rsi	# D.22247,
	movq	%rax, %rdi	# tmp498,
	call	Perl_newSVpvn	#
	movq	%rax, %rdx	#, D.22237
	movq	-312(%rbp), %rax	# cxt, tmp499
	movq	72(%rax), %rax	# cxt_21(D)->classnum, D.22244
	leaq	1(%rax), %rsi	#, D.22244
	movq	-312(%rbp), %rcx	# cxt, tmp500
	movq	%rsi, 72(%rcx)	# D.22244, cxt_21(D)->classnum
	movl	%eax, %ecx	# D.22244, D.22238
	movq	-312(%rbp), %rax	# cxt, tmp501
	movq	48(%rax), %rax	# cxt_21(D)->aclass, D.22245
	movl	%ecx, %esi	# D.22238,
	movq	%rax, %rdi	# D.22245,
	call	Perl_av_store	#
	testq	%rax, %rax	# D.22246
	jne	.L909	#,
	.loc 1 4030 0
	movl	$0, %eax	#, D.22237
	jmp	.L974	#
.L909:
	.loc 1 4042 0
	movl	-284(%rbp), %eax	# flags, tmp502
	andl	$8, %eax	#, D.22243
	testl	%eax, %eax	# D.22243
	je	.L924	#,
.LBB260:
	.loc 1 4043 0
	movq	-312(%rbp), %rax	# cxt, tmp503
	movq	216(%rax), %rax	# cxt_21(D)->fio, D.22239
	testq	%rax, %rax	# D.22239
	jne	.L925	#,
	.loc 1 4043 0 is_stmt 0 discriminator 1
	movq	-312(%rbp), %rax	# cxt, tmp504
	movq	168(%rax), %rax	# cxt_21(D)->membuf.aptr, D.22240
	leaq	4(%rax), %rdx	#, D.22240
	movq	-312(%rbp), %rax	# cxt, tmp505
	movq	176(%rax), %rax	# cxt_21(D)->membuf.aend, D.22240
	cmpq	%rax, %rdx	# D.22240, D.22240
	ja	.L926	#,
	movq	-312(%rbp), %rax	# cxt, tmp506
	movq	168(%rax), %rax	# cxt_21(D)->membuf.aptr, D.22240
	movq	%rax, %rdx	# D.22240, D.22247
	movq	-312(%rbp), %rax	# cxt, tmp507
	movq	168(%rax), %rax	# cxt_21(D)->membuf.aptr, D.22240
	andq	$-4, %rax	#, D.22247
	cmpq	%rax, %rdx	# D.22247, D.22247
	jne	.L927	#,
	movq	-312(%rbp), %rax	# cxt, tmp508
	movq	168(%rax), %rax	# cxt_21(D)->membuf.aptr, D.22240
	movl	(%rax), %eax	# MEM[(int *)_236], len2.486
	movl	%eax, -296(%rbp)	# len2.486, len2
	jmp	.L928	#
.L927:
	.loc 1 4043 0 discriminator 2
	movq	-312(%rbp), %rax	# cxt, tmp509
	movq	168(%rax), %rax	# cxt_21(D)->membuf.aptr, D.22240
	movl	(%rax), %eax	# MEM[(char * {ref-all})_238], D.22238
	movl	%eax, -296(%rbp)	# D.22238, MEM[(char * {ref-all})&len2]
.L928:
	.loc 1 4043 0 discriminator 1
	movq	-312(%rbp), %rax	# cxt, tmp510
	movq	168(%rax), %rax	# cxt_21(D)->membuf.aptr, D.22240
	leaq	4(%rax), %rdx	#, D.22240
	movq	-312(%rbp), %rax	# cxt, tmp511
	movq	%rdx, 168(%rax)	# D.22240, cxt_21(D)->membuf.aptr
	jmp	.L929	#
.L926:
	.loc 1 4043 0 discriminator 2
	movl	$0, %eax	#, D.22237
	jmp	.L974	#
.L925:
	movq	-312(%rbp), %rax	# cxt, tmp512
	movq	216(%rax), %rax	# cxt_21(D)->fio, D.22239
	leaq	-296(%rbp), %rcx	#, tmp513
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp513,
	movq	%rax, %rdi	# D.22239,
	call	Perl_PerlIO_read	#
	cmpq	$4, %rax	#, D.22244
	je	.L929	#,
	.loc 1 4043 0 discriminator 1
	movl	$0, %eax	#, D.22237
	jmp	.L974	#
.L929:
	.loc 1 4043 0 discriminator 2
	movq	-312(%rbp), %rax	# cxt, tmp514
	movl	80(%rax), %eax	# cxt_21(D)->netorder, D.22238
	testl	%eax, %eax	# D.22238
	je	.L930	#,
	.loc 1 4043 0 discriminator 1
	movl	-296(%rbp), %eax	# len2, len2.487
	cltq
	movq	%rax, %rdi	# D.22244,
	call	Perl_my_ntohl	#
	movl	%eax, -296(%rbp)	# len2.488, len2
.LBE260:
	jmp	.L931	#
.L930:
	jmp	.L931	#
.L924:
	.loc 1 4045 0 is_stmt 1
	movq	-312(%rbp), %rax	# cxt, tmp515
	movq	216(%rax), %rax	# cxt_21(D)->fio, D.22239
	testq	%rax, %rax	# D.22239
	jne	.L932	#,
	.loc 1 4045 0 is_stmt 0 discriminator 1
	movq	-312(%rbp), %rax	# cxt, tmp516
	movq	168(%rax), %rdx	# cxt_21(D)->membuf.aptr, D.22240
	movq	-312(%rbp), %rax	# cxt, tmp517
	movq	176(%rax), %rax	# cxt_21(D)->membuf.aend, D.22240
	cmpq	%rax, %rdx	# D.22240, D.22240
	jae	.L933	#,
	movq	-312(%rbp), %rax	# cxt, tmp518
	movq	168(%rax), %rax	# cxt_21(D)->membuf.aptr, D.22240
	leaq	1(%rax), %rcx	#, D.22240
	movq	-312(%rbp), %rdx	# cxt, tmp519
	movq	%rcx, 168(%rdx)	# D.22240, cxt_21(D)->membuf.aptr
	movzbl	(%rax), %eax	# *_255, D.22241
	movzbl	%al, %eax	# D.22242, len2.489
	movl	%eax, -296(%rbp)	# len2.489, len2
	jmp	.L931	#
.L933:
	.loc 1 4045 0 discriminator 2
	movl	$0, %eax	#, D.22237
	jmp	.L974	#
.L932:
	movq	-312(%rbp), %rax	# cxt, tmp520
	movq	216(%rax), %rax	# cxt_21(D)->fio, D.22239
	movq	%rax, %rdi	# D.22239,
	call	PerlIO_getc	#
	movl	%eax, -296(%rbp)	# len2.490, len2
	movl	-296(%rbp), %eax	# len2, len2.491
	cmpl	$-1, %eax	#, len2.491
	jne	.L931	#,
	.loc 1 4045 0 discriminator 1
	movl	$0, %eax	#, D.22237
	jmp	.L974	#
.L931:
	.loc 1 4047 0 is_stmt 1
	movl	-296(%rbp), %eax	# len2, len2.492
	cltq
	movq	%rax, %rdi	# D.22247,
	call	Perl_newSV	#
	movq	%rax, -200(%rbp)	# tmp521, frozen
	.loc 1 4048 0
	movl	-296(%rbp), %eax	# len2, len2.493
	testl	%eax, %eax	# len2.493
	je	.L934	#,
	.loc 1 4049 0
	movq	-312(%rbp), %rax	# cxt, tmp522
	movq	216(%rax), %rax	# cxt_21(D)->fio, D.22239
	testq	%rax, %rax	# D.22239
	jne	.L935	#,
	.loc 1 4049 0 is_stmt 0 discriminator 1
	movq	-312(%rbp), %rax	# cxt, tmp523
	movq	168(%rax), %rdx	# cxt_21(D)->membuf.aptr, D.22240
	movl	-296(%rbp), %eax	# len2, len2.494
	cltq
	addq	%rax, %rdx	# D.22249, D.22240
	movq	-312(%rbp), %rax	# cxt, tmp524
	movq	176(%rax), %rax	# cxt_21(D)->membuf.aend, D.22240
	cmpq	%rax, %rdx	# D.22240, D.22240
	ja	.L936	#,
	movl	-296(%rbp), %eax	# len2, len2.495
	movslq	%eax, %rdx	# len2.495, D.22247
	movq	-312(%rbp), %rax	# cxt, tmp525
	movq	168(%rax), %rcx	# cxt_21(D)->membuf.aptr, D.22240
	movq	-200(%rbp), %rax	# frozen, tmp526
	movq	(%rax), %rax	# frozen_267->sv_any, D.22248
	movq	(%rax), %rax	# MEM[(struct XPV *)_278].xpv_pv, D.22240
	movq	%rcx, %rsi	# D.22240,
	movq	%rax, %rdi	# D.22240,
	call	memcpy	#
	movq	-312(%rbp), %rax	# cxt, tmp527
	movq	168(%rax), %rdx	# cxt_21(D)->membuf.aptr, D.22240
	movl	-296(%rbp), %eax	# len2, len2.496
	cltq
	addq	%rax, %rdx	# D.22249, D.22240
	movq	-312(%rbp), %rax	# cxt, tmp528
	movq	%rdx, 168(%rax)	# D.22240, cxt_21(D)->membuf.aptr
	jmp	.L937	#
.L936:
	.loc 1 4049 0 discriminator 2
	movq	-200(%rbp), %rax	# frozen, tmp529
	movq	%rax, %rdi	# tmp529,
	call	Perl_sv_free	#
	movl	$0, %eax	#, D.22237
	jmp	.L974	#
.L935:
	movl	-296(%rbp), %eax	# len2, len2.497
	movslq	%eax, %rdx	# len2.497, D.22247
	movq	-200(%rbp), %rax	# frozen, tmp530
	movq	(%rax), %rax	# frozen_267->sv_any, D.22248
	movq	(%rax), %rcx	# MEM[(struct XPV *)_287].xpv_pv, D.22240
	movq	-312(%rbp), %rax	# cxt, tmp531
	movq	216(%rax), %rax	# cxt_21(D)->fio, D.22239
	movq	%rcx, %rsi	# D.22240,
	movq	%rax, %rdi	# D.22239,
	call	Perl_PerlIO_read	#
	movl	-296(%rbp), %edx	# len2, len2.498
	movslq	%edx, %rdx	# len2.498, D.22244
	cmpq	%rdx, %rax	# D.22244, D.22244
	je	.L937	#,
	.loc 1 4049 0 discriminator 1
	movq	-200(%rbp), %rax	# frozen, tmp532
	movq	%rax, %rdi	# tmp532,
	call	Perl_sv_free	#
	movl	$0, %eax	#, D.22237
	jmp	.L974	#
.L937:
	.loc 1 4050 0 is_stmt 1
	movq	-200(%rbp), %rax	# frozen, tmp533
	movq	(%rax), %rax	# frozen_267->sv_any, D.22248
	movl	-296(%rbp), %edx	# len2, len2.499
	movslq	%edx, %rdx	# len2.499, D.22247
	movq	%rdx, 8(%rax)	# D.22247, MEM[(struct XPV *)_294].xpv_cur
	.loc 1 4051 0
	movq	-200(%rbp), %rax	# frozen, tmp534
	movq	(%rax), %rax	# frozen_267->sv_any, D.22248
	movq	(%rax), %rdx	# MEM[(struct XPV *)_297].xpv_pv, D.22240
	movq	-200(%rbp), %rax	# frozen, tmp535
	movq	(%rax), %rax	# frozen_267->sv_any, D.22248
	movq	8(%rax), %rax	# MEM[(struct XPV *)_299].xpv_cur, D.22247
	addq	%rdx, %rax	# D.22240, D.22240
	movb	$0, (%rax)	#, *_301
.L934:
	.loc 1 4053 0
	movq	-200(%rbp), %rax	# frozen, tmp536
	movl	12(%rax), %eax	# frozen_267->sv_flags, D.22243
	andl	$1223753727, %eax	#, D.22243
	movl	%eax, %edx	# D.22243, D.22243
	movq	-200(%rbp), %rax	# frozen, tmp537
	movl	%edx, 12(%rax)	# D.22243, frozen_267->sv_flags
	movq	-200(%rbp), %rax	# frozen, tmp538
	movl	12(%rax), %eax	# frozen_267->sv_flags, D.22243
	orl	$67371008, %eax	#, D.22243
	movl	%eax, %edx	# D.22243, D.22243
	movq	-200(%rbp), %rax	# frozen, tmp539
	movl	%edx, 12(%rax)	# D.22243, frozen_267->sv_flags
	.loc 1 4054 0
	movq	-312(%rbp), %rax	# cxt, tmp540
	movl	84(%rax), %eax	# cxt_21(D)->s_tainted, D.22238
	testl	%eax, %eax	# D.22238
	je	.L938	#,
	.loc 1 4055 0
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.500
	testb	%al, %al	# PL_tainting.500
	je	.L938	#,
	.loc 1 4055 0 is_stmt 0 discriminator 1
	movzbl	PL_tainted(%rip), %eax	# PL_tainted, PL_tainted.501
	testb	%al, %al	# PL_tainted.501
	je	.L938	#,
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.502
	testb	%al, %al	# PL_tainting.502
	je	.L938	#,
	movq	-200(%rbp), %rax	# frozen, tmp541
	movq	%rax, %rdi	# tmp541,
	call	Perl_sv_taint	#
.L938:
	.loc 1 4063 0 is_stmt 1
	movl	-284(%rbp), %eax	# flags, tmp542
	andl	$128, %eax	#, D.22243
	testl	%eax, %eax	# D.22243
	je	.L939	#,
	.loc 1 4064 0
	movl	-284(%rbp), %eax	# flags, tmp543
	andl	$16, %eax	#, D.22243
	testl	%eax, %eax	# D.22243
	je	.L940	#,
.LBB261:
	.loc 1 4065 0
	movq	-312(%rbp), %rax	# cxt, tmp544
	movq	216(%rax), %rax	# cxt_21(D)->fio, D.22239
	testq	%rax, %rax	# D.22239
	jne	.L941	#,
	.loc 1 4065 0 is_stmt 0 discriminator 1
	movq	-312(%rbp), %rax	# cxt, tmp545
	movq	168(%rax), %rax	# cxt_21(D)->membuf.aptr, D.22240
	leaq	4(%rax), %rdx	#, D.22240
	movq	-312(%rbp), %rax	# cxt, tmp546
	movq	176(%rax), %rax	# cxt_21(D)->membuf.aend, D.22240
	cmpq	%rax, %rdx	# D.22240, D.22240
	ja	.L942	#,
	movq	-312(%rbp), %rax	# cxt, tmp547
	movq	168(%rax), %rax	# cxt_21(D)->membuf.aptr, D.22240
	movq	%rax, %rdx	# D.22240, D.22247
	movq	-312(%rbp), %rax	# cxt, tmp548
	movq	168(%rax), %rax	# cxt_21(D)->membuf.aptr, D.22240
	andq	$-4, %rax	#, D.22247
	cmpq	%rax, %rdx	# D.22247, D.22247
	jne	.L943	#,
	movq	-312(%rbp), %rax	# cxt, tmp549
	movq	168(%rax), %rax	# cxt_21(D)->membuf.aptr, D.22240
	movl	(%rax), %eax	# MEM[(int *)_321], len3.503
	movl	%eax, -292(%rbp)	# len3.503, len3
	jmp	.L944	#
.L943:
	.loc 1 4065 0 discriminator 2
	movq	-312(%rbp), %rax	# cxt, tmp550
	movq	168(%rax), %rax	# cxt_21(D)->membuf.aptr, D.22240
	movl	(%rax), %eax	# MEM[(char * {ref-all})_323], D.22238
	movl	%eax, -292(%rbp)	# D.22238, MEM[(char * {ref-all})&len3]
.L944:
	.loc 1 4065 0 discriminator 1
	movq	-312(%rbp), %rax	# cxt, tmp551
	movq	168(%rax), %rax	# cxt_21(D)->membuf.aptr, D.22240
	leaq	4(%rax), %rdx	#, D.22240
	movq	-312(%rbp), %rax	# cxt, tmp552
	movq	%rdx, 168(%rax)	# D.22240, cxt_21(D)->membuf.aptr
	jmp	.L945	#
.L942:
	.loc 1 4065 0 discriminator 2
	movl	$0, %eax	#, D.22237
	jmp	.L974	#
.L941:
	movq	-312(%rbp), %rax	# cxt, tmp553
	movq	216(%rax), %rax	# cxt_21(D)->fio, D.22239
	leaq	-292(%rbp), %rcx	#, tmp554
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp554,
	movq	%rax, %rdi	# D.22239,
	call	Perl_PerlIO_read	#
	cmpq	$4, %rax	#, D.22244
	je	.L945	#,
	.loc 1 4065 0 discriminator 1
	movl	$0, %eax	#, D.22237
	jmp	.L974	#
.L945:
	.loc 1 4065 0 discriminator 2
	movq	-312(%rbp), %rax	# cxt, tmp555
	movl	80(%rax), %eax	# cxt_21(D)->netorder, D.22238
	testl	%eax, %eax	# D.22238
	je	.L946	#,
	.loc 1 4065 0 discriminator 1
	movl	-292(%rbp), %eax	# len3, len3.504
	cltq
	movq	%rax, %rdi	# D.22244,
	call	Perl_my_ntohl	#
	movl	%eax, -292(%rbp)	# len3.505, len3
.LBE261:
	jmp	.L947	#
.L946:
	jmp	.L947	#
.L940:
	.loc 1 4067 0 is_stmt 1
	movq	-312(%rbp), %rax	# cxt, tmp556
	movq	216(%rax), %rax	# cxt_21(D)->fio, D.22239
	testq	%rax, %rax	# D.22239
	jne	.L948	#,
	.loc 1 4067 0 is_stmt 0 discriminator 1
	movq	-312(%rbp), %rax	# cxt, tmp557
	movq	168(%rax), %rdx	# cxt_21(D)->membuf.aptr, D.22240
	movq	-312(%rbp), %rax	# cxt, tmp558
	movq	176(%rax), %rax	# cxt_21(D)->membuf.aend, D.22240
	cmpq	%rax, %rdx	# D.22240, D.22240
	jae	.L949	#,
	movq	-312(%rbp), %rax	# cxt, tmp559
	movq	168(%rax), %rax	# cxt_21(D)->membuf.aptr, D.22240
	leaq	1(%rax), %rcx	#, D.22240
	movq	-312(%rbp), %rdx	# cxt, tmp560
	movq	%rcx, 168(%rdx)	# D.22240, cxt_21(D)->membuf.aptr
	movzbl	(%rax), %eax	# *_340, D.22241
	movzbl	%al, %eax	# D.22242, len3.506
	movl	%eax, -292(%rbp)	# len3.506, len3
	jmp	.L947	#
.L949:
	.loc 1 4067 0 discriminator 2
	movl	$0, %eax	#, D.22237
	jmp	.L974	#
.L948:
	movq	-312(%rbp), %rax	# cxt, tmp561
	movq	216(%rax), %rax	# cxt_21(D)->fio, D.22239
	movq	%rax, %rdi	# D.22239,
	call	PerlIO_getc	#
	movl	%eax, -292(%rbp)	# len3.507, len3
	movl	-292(%rbp), %eax	# len3, len3.508
	cmpl	$-1, %eax	#, len3.508
	jne	.L947	#,
	.loc 1 4067 0 discriminator 1
	movl	$0, %eax	#, D.22237
	jmp	.L974	#
.L947:
	.loc 1 4068 0 is_stmt 1
	movl	-292(%rbp), %eax	# len3, len3.509
	testl	%eax, %eax	# len3.509
	je	.L939	#,
	.loc 1 4069 0
	call	Perl_newAV	#
	movq	%rax, -248(%rbp)	# tmp562, av
	.loc 1 4070 0
	movl	-292(%rbp), %eax	# len3, len3.510
	leal	1(%rax), %edx	#, D.22238
	movq	-248(%rbp), %rax	# av, tmp563
	movl	%edx, %esi	# D.22238,
	movq	%rax, %rdi	# tmp563,
	call	Perl_av_extend	#
	.loc 1 4071 0
	movq	-248(%rbp), %rax	# av, tmp564
	movq	(%rax), %rax	# av_351->sv_any, D.22250
	movl	-292(%rbp), %edx	# len3, len3.511
	movslq	%edx, %rdx	# len3.511, D.22244
	movq	%rdx, 8(%rax)	# D.22244, _354->xav_fill
.L939:
	.loc 1 4087 0
	cmpq	$0, -248(%rbp)	#, av
	je	.L950	#,
.LBB262:
	.loc 1 4088 0
	movq	-248(%rbp), %rax	# av, tmp565
	movq	(%rax), %rax	# av_5->sv_any, D.22250
	movq	(%rax), %rax	# _357->xav_array, tmp566
	movq	%rax, -192(%rbp)	# tmp566, ary
	.loc 1 4090 0
	movl	$1, -276(%rbp)	#, i
	jmp	.L951	#
.L962:
.LBB263:
	.loc 1 4095 0
	movq	-312(%rbp), %rax	# cxt, tmp567
	movq	216(%rax), %rax	# cxt_21(D)->fio, D.22239
	testq	%rax, %rax	# D.22239
	jne	.L952	#,
	.loc 1 4095 0 is_stmt 0 discriminator 1
	movq	-312(%rbp), %rax	# cxt, tmp568
	movq	168(%rax), %rax	# cxt_21(D)->membuf.aptr, D.22240
	leaq	4(%rax), %rdx	#, D.22240
	movq	-312(%rbp), %rax	# cxt, tmp569
	movq	176(%rax), %rax	# cxt_21(D)->membuf.aend, D.22240
	cmpq	%rax, %rdx	# D.22240, D.22240
	ja	.L953	#,
	movq	-312(%rbp), %rax	# cxt, tmp570
	movq	168(%rax), %rax	# cxt_21(D)->membuf.aptr, D.22240
	movq	%rax, %rdx	# D.22240, D.22247
	movq	-312(%rbp), %rax	# cxt, tmp571
	movq	168(%rax), %rax	# cxt_21(D)->membuf.aptr, D.22240
	andq	$-4, %rax	#, D.22247
	cmpq	%rax, %rdx	# D.22247, D.22247
	jne	.L954	#,
	movq	-312(%rbp), %rax	# cxt, tmp572
	movq	168(%rax), %rax	# cxt_21(D)->membuf.aptr, D.22240
	movl	(%rax), %eax	# MEM[(int *)_370], tag.512
	movl	%eax, -288(%rbp)	# tag.512, tag
	jmp	.L955	#
.L954:
	.loc 1 4095 0 discriminator 2
	movq	-312(%rbp), %rax	# cxt, tmp573
	movq	168(%rax), %rax	# cxt_21(D)->membuf.aptr, D.22240
	movl	(%rax), %eax	# MEM[(char * {ref-all})_372], D.22238
	movl	%eax, -288(%rbp)	# D.22238, MEM[(char * {ref-all})&tag]
.L955:
	.loc 1 4095 0 discriminator 1
	movq	-312(%rbp), %rax	# cxt, tmp574
	movq	168(%rax), %rax	# cxt_21(D)->membuf.aptr, D.22240
	leaq	4(%rax), %rdx	#, D.22240
	movq	-312(%rbp), %rax	# cxt, tmp575
	movq	%rdx, 168(%rax)	# D.22240, cxt_21(D)->membuf.aptr
	jmp	.L956	#
.L953:
	.loc 1 4095 0 discriminator 2
	movl	$0, %eax	#, D.22237
	jmp	.L974	#
.L952:
	movq	-312(%rbp), %rax	# cxt, tmp576
	movq	216(%rax), %rax	# cxt_21(D)->fio, D.22239
	leaq	-288(%rbp), %rcx	#, tmp577
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp577,
	movq	%rax, %rdi	# D.22239,
	call	Perl_PerlIO_read	#
	cmpq	$4, %rax	#, D.22244
	je	.L956	#,
	.loc 1 4095 0 discriminator 1
	movl	$0, %eax	#, D.22237
	jmp	.L974	#
.L956:
	.loc 1 4096 0 is_stmt 1
	movl	-288(%rbp), %eax	# tag, tag.513
	cltq
	movq	%rax, %rdi	# D.22244,
	call	Perl_my_ntohl	#
	movl	%eax, -288(%rbp)	# tag.514, tag
	.loc 1 4097 0
	movl	-288(%rbp), %ecx	# tag, tag.515
	movq	-312(%rbp), %rax	# cxt, tmp578
	movq	24(%rax), %rax	# cxt_21(D)->aseen, D.22245
	movl	$0, %edx	#,
	movl	%ecx, %esi	# tag.515,
	movq	%rax, %rdi	# D.22245,
	call	Perl_av_fetch	#
	movq	%rax, -224(%rbp)	# tmp579, svh
	.loc 1 4098 0
	cmpq	$0, -224(%rbp)	#, svh
	jne	.L958	#,
	.loc 1 4099 0
	movl	-288(%rbp), %eax	# tag, tag.516
	movslq	%eax, %rdx	# tag.516, D.22244
	movq	-312(%rbp), %rax	# cxt, tmp580
	movq	32(%rax), %rax	# cxt_21(D)->where_is_undef, D.22244
	cmpq	%rax, %rdx	# D.22244, D.22244
	jne	.L959	#,
	.loc 1 4102 0
	movq	$PL_sv_undef, -264(%rbp)	#, xsv
	.loc 1 4103 0
	leaq	-264(%rbp), %rax	#, tmp581
	movq	%rax, -224(%rbp)	# tmp581, svh
	jmp	.L958	#
.L959:
.LBB264:
	.loc 1 4105 0
	movq	-312(%rbp), %rax	# cxt, tmp582
	movl	$1, 112(%rax)	#, cxt_21(D)->s_dirty
	movl	-288(%rbp), %eax	# tag, tag.517
	cltq
	movq	%rax, %rsi	# D.22244,
	movl	$.LC36, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L958:
.LBE264:
	.loc 1 4109 0
	movq	-224(%rbp), %rax	# svh, tmp583
	movq	(%rax), %rax	# *svh_15, xsv.518
	movq	%rax, -264(%rbp)	# xsv.518, xsv
	.loc 1 4110 0
	movq	-264(%rbp), %rax	# xsv, xsv.519
	movq	%rax, PL_Sv(%rip)	# xsv.519, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.521
	testq	%rax, %rax	# PL_Sv.521
	je	.L961	#,
	.loc 1 4110 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.522
	movl	8(%rax), %edx	# PL_Sv.522_396->sv_refcnt, D.22243
	addl	$1, %edx	#, D.22243
	movl	%edx, 8(%rax)	# D.22243, PL_Sv.522_396->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.522_396->sv_refcnt, D.22243
	testl	%eax, %eax	# D.22243
	je	.L961	#,
	.loc 1 4110 0
	nop
.L961:
	.loc 1 4110 0 discriminator 4
	movl	-276(%rbp), %eax	# i, tmp584
	cltq
	leaq	0(,%rax,8), %rdx	#, D.22247
	movq	-192(%rbp), %rax	# ary, tmp585
	addq	%rax, %rdx	# tmp585, D.22246
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.523
	movq	%rax, (%rdx)	# PL_Sv.523, *_404
.LBE263:
	.loc 1 4090 0 is_stmt 1 discriminator 4
	addl	$1, -276(%rbp)	#, i
.L951:
	.loc 1 4090 0 is_stmt 0 discriminator 1
	movl	-292(%rbp), %eax	# len3, len3.524
	cmpl	%eax, -276(%rbp)	# len3.524, i
	jle	.L962	#,
.L950:
.LBE262:
.LBB265:
	.loc 1 4118 0 is_stmt 1
	movq	-256(%rbp), %rax	# class, tmp586
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp586,
	call	Perl_gv_stashpv	#
	movq	%rax, -184(%rbp)	# tmp587, stash
	movq	-232(%rbp), %rax	# sv, tmp588
	movq	%rax, %rdi	# tmp588,
	call	Perl_newRV_noinc	#
	movq	%rax, -176(%rbp)	# tmp589, Perl_ref
	movq	-184(%rbp), %rdx	# stash, tmp590
	movq	-176(%rbp), %rax	# Perl_ref, tmp591
	movq	%rdx, %rsi	# tmp590,
	movq	%rax, %rdi	# tmp591,
	call	Perl_sv_bless	#
	movq	-176(%rbp), %rax	# Perl_ref, tmp592
	movq	(%rax), %rax	# Perl_ref_408->sv_any, D.22248
	movq	$0, (%rax)	#, MEM[(struct XRV *)_409].xrv_rv
	movq	-176(%rbp), %rax	# Perl_ref, tmp593
	movq	%rax, %rdi	# tmp593,
	call	Perl_sv_free	#
.LBE265:
	.loc 1 4119 0
	movq	-232(%rbp), %rax	# sv, tmp594
	movq	(%rax), %rax	# sv_9->sv_any, D.22248
	movq	48(%rax), %rcx	# MEM[(struct XPVMG *)_410].xmg_stash, D.22251
	movq	-312(%rbp), %rax	# cxt, tmp595
	movq	56(%rax), %rax	# cxt_21(D)->hook, D.22251
	movl	$.LC37, %edx	#,
	movq	%rcx, %rsi	# D.22251,
	movq	%rax, %rdi	# D.22251,
	call	pkg_can	#
	movq	%rax, -240(%rbp)	# tmp596, hook
	.loc 1 4120 0
	cmpq	$0, -240(%rbp)	#, hook
	jne	.L963	#,
.LBB266:
	.loc 1 4130 0
	movl	$8, %esi	#,
	movl	$.LC38, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, -168(%rbp)	# tmp597, psv
	.loc 1 4131 0
	movq	-256(%rbp), %rdx	# class, tmp598
	movq	-168(%rbp), %rax	# psv, tmp599
	movq	%rdx, %rsi	# tmp598,
	movq	%rax, %rdi	# tmp599,
	call	Perl_sv_catpv	#
	.loc 1 4136 0
	movq	-168(%rbp), %rax	# psv, tmp600
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp600,
	call	Perl_eval_sv	#
	.loc 1 4137 0
	movq	-168(%rbp), %rax	# psv, tmp601
	movq	%rax, %rdi	# tmp601,
	call	Perl_sv_free	#
	.loc 1 4144 0
	movq	-232(%rbp), %rax	# sv, tmp602
	movq	(%rax), %rax	# sv_9->sv_any, D.22248
	movq	48(%rax), %rcx	# MEM[(struct XPVMG *)_415].xmg_stash, D.22251
	movq	-312(%rbp), %rax	# cxt, tmp603
	movq	56(%rax), %rax	# cxt_21(D)->hook, D.22251
	movl	$.LC37, %edx	#,
	movq	%rcx, %rsi	# D.22251,
	movq	%rax, %rdi	# D.22251,
	call	pkg_uncache	#
	.loc 1 4145 0
	movq	-232(%rbp), %rax	# sv, tmp604
	movq	(%rax), %rax	# sv_9->sv_any, D.22248
	movq	48(%rax), %rcx	# MEM[(struct XPVMG *)_418].xmg_stash, D.22251
	movq	-312(%rbp), %rax	# cxt, tmp605
	movq	56(%rax), %rax	# cxt_21(D)->hook, D.22251
	movl	$.LC37, %edx	#,
	movq	%rcx, %rsi	# D.22251,
	movq	%rax, %rdi	# D.22251,
	call	pkg_can	#
	movq	%rax, -240(%rbp)	# tmp606, hook
	.loc 1 4147 0
	cmpq	$0, -240(%rbp)	#, hook
	jne	.L963	#,
.LBB267:
	.loc 1 4148 0
	movq	-312(%rbp), %rax	# cxt, tmp607
	movl	$1, 112(%rax)	#, cxt_21(D)->s_dirty
	movq	-256(%rbp), %rdx	# class, tmp608
	movq	-256(%rbp), %rax	# class, tmp609
	movq	%rax, %rsi	# tmp609,
	movl	$.LC39, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L963:
.LBE267:
.LBE266:
	.loc 1 4157 0
	cmpq	$0, -248(%rbp)	#, av
	jne	.L964	#,
	.loc 1 4158 0
	call	Perl_newAV	#
	movq	%rax, -248(%rbp)	# tmp610, av
	.loc 1 4159 0
	movq	-248(%rbp), %rax	# av, tmp611
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp611,
	call	Perl_av_extend	#
	.loc 1 4160 0
	movq	-248(%rbp), %rax	# av, tmp612
	movq	(%rax), %rax	# av_422->sv_any, D.22250
	movq	$0, 8(%rax)	#, _423->xav_fill
.L964:
	.loc 1 4162 0
	movq	-200(%rbp), %rax	# frozen, tmp613
	movq	%rax, PL_Sv(%rip)	# tmp613, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.526
	testq	%rax, %rax	# PL_Sv.526
	je	.L966	#,
	.loc 1 4162 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.527
	movl	8(%rax), %edx	# PL_Sv.527_425->sv_refcnt, D.22243
	addl	$1, %edx	#, D.22243
	movl	%edx, 8(%rax)	# D.22243, PL_Sv.527_425->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.527_425->sv_refcnt, D.22243
	testl	%eax, %eax	# D.22243
	je	.L966	#,
	.loc 1 4162 0
	nop
.L966:
	.loc 1 4162 0 discriminator 4
	movq	-248(%rbp), %rax	# av, tmp614
	movq	(%rax), %rax	# av_6->sv_any, D.22250
	movq	(%rax), %rax	# _431->xav_array, D.22240
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.528
	movq	%rdx, (%rax)	# PL_Sv.528, MEM[(struct SV * *)_432]
	.loc 1 4182 0 is_stmt 1 discriminator 4
	movq	-232(%rbp), %rax	# sv, tmp615
	movq	%rax, %rdi	# tmp615,
	call	Perl_newRV	#
	movq	%rax, -216(%rbp)	# tmp616, rv
	.loc 1 4183 0 discriminator 4
	movq	-248(%rbp), %rcx	# av, tmp617
	movl	-272(%rbp), %edx	# clone, tmp618
	movq	-240(%rbp), %rsi	# hook, tmp619
	movq	-216(%rbp), %rax	# rv, tmp620
	movl	$2, %r8d	#,
	movq	%rax, %rdi	# tmp620,
	call	scalar_call	#
	.loc 1 4184 0 discriminator 4
	movq	-216(%rbp), %rax	# rv, tmp621
	movq	%rax, %rdi	# tmp621,
	call	Perl_sv_free	#
	.loc 1 4190 0 discriminator 4
	movq	-200(%rbp), %rax	# frozen, tmp622
	movq	%rax, %rdi	# tmp622,
	call	Perl_sv_free	#
	.loc 1 4191 0 discriminator 4
	movq	-248(%rbp), %rax	# av, tmp623
	movq	%rax, %rdi	# tmp623,
	call	Perl_av_undef	#
	.loc 1 4192 0 discriminator 4
	movq	-248(%rbp), %rax	# av, tmp624
	movq	%rax, %rdi	# tmp624,
	call	Perl_sv_free	#
	.loc 1 4193 0 discriminator 4
	movl	-284(%rbp), %eax	# flags, tmp625
	andl	$32, %eax	#, D.22243
	testl	%eax, %eax	# D.22243
	jne	.L967	#,
	.loc 1 4193 0 is_stmt 0 discriminator 1
	leaq	-160(%rbp), %rax	#, tmp626
	cmpq	%rax, -256(%rbp)	# tmp626, class
	je	.L967	#,
	.loc 1 4194 0 is_stmt 1
	movq	-256(%rbp), %rax	# class, tmp627
	movq	%rax, %rdi	# tmp627,
	call	Perl_safesysfree	#
.L967:
	.loc 1 4201 0
	cmpl	$0, -280(%rbp)	#, extra_type
	jne	.L968	#,
	.loc 1 4202 0
	movq	-232(%rbp), %rax	# sv, D.22237
	jmp	.L974	#
.L968:
	.loc 1 4206 0
	movq	-312(%rbp), %rax	# cxt, tmp628
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp628,
	call	retrieve	#
	movq	%rax, -216(%rbp)	# tmp629, rv
	.loc 1 4211 0
	movl	-280(%rbp), %eax	# extra_type, extra_type
	cmpl	$5, %eax	#, extra_type
	je	.L970	#,
	cmpl	$6, %eax	#, extra_type
	je	.L971	#,
	cmpl	$4, %eax	#, extra_type
	jne	.L977	#,
	.loc 1 4213 0
	movq	-232(%rbp), %rax	# sv, tmp631
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp631,
	call	Perl_sv_upgrade	#
	.loc 1 4214 0
	jmp	.L973	#
.L970:
	.loc 1 4216 0
	movq	-232(%rbp), %rax	# sv, tmp632
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp632,
	call	Perl_sv_upgrade	#
	.loc 1 4217 0
	movq	-232(%rbp), %rax	# sv, tmp633
	movq	(%rax), %rax	# MEM[(struct AV *)sv_9].sv_any, D.22250
	movq	-232(%rbp), %rdx	# sv, tmp634
	movq	(%rdx), %rdx	# MEM[(struct AV *)sv_9].sv_any, D.22250
	movzbl	72(%rdx), %edx	# _439->xav_flags, D.22242
	andl	$-2, %edx	#, D.22242
	movb	%dl, 72(%rax)	# D.22242, _438->xav_flags
	.loc 1 4218 0
	jmp	.L973	#
.L971:
	.loc 1 4220 0
	movq	-232(%rbp), %rax	# sv, tmp635
	movl	$11, %esi	#,
	movq	%rax, %rdi	# tmp635,
	call	Perl_sv_upgrade	#
	.loc 1 4221 0
	jmp	.L973	#
.L977:
.LBB268:
	.loc 1 4223 0
	movq	-312(%rbp), %rax	# cxt, tmp636
	movl	$1, 112(%rax)	#, cxt_21(D)->s_dirty
	movl	-280(%rbp), %eax	# extra_type, tmp637
	movl	%eax, %esi	# tmp637,
	movl	$.LC40, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.LBE268:
	.loc 1 4224 0
	nop
.L973:
	.loc 1 4249 0
	movsbl	-301(%rbp), %edx	# mtype, D.22238
	movq	-216(%rbp), %rsi	# rv, tmp638
	movq	-232(%rbp), %rax	# sv, tmp639
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp639,
	call	Perl_sv_magic	#
	.loc 1 4250 0
	movq	-216(%rbp), %rax	# rv, tmp640
	movq	%rax, %rdi	# tmp640,
	call	Perl_sv_free	#
	.loc 1 4252 0
	movq	-232(%rbp), %rax	# sv, D.22237
.L974:
	.loc 1 4253 0
	movq	-24(%rbp), %rbx	# D.22253, tmp643
	xorq	%fs:40, %rbx	#, tmp643
	je	.L975	#,
	call	__stack_chk_fail	#
.L975:
	addq	$312, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	retrieve_hook, .-retrieve_hook
	.type	retrieve_ref, @function
retrieve_ref:
.LFB44:
	.loc 1 4262 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# cxt, cxt
	movq	%rsi, -48(%rbp)	# cname, cname
	.loc 1 4277 0
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, -32(%rbp)	# tmp78, rv
.LBB269:
	.loc 1 4278 0
	cmpq	$0, -32(%rbp)	#, rv
	jne	.L979	#,
	.loc 1 4278 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.22260
	jmp	.L980	#
.L979:
	.loc 1 4278 0 discriminator 2
	movq	-32(%rbp), %rax	# rv, tmp79
	movq	%rax, PL_Sv(%rip)	# tmp79, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.530
	testq	%rax, %rax	# PL_Sv.530
	je	.L982	#,
	.loc 1 4278 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.531
	movl	8(%rax), %edx	# PL_Sv.531_5->sv_refcnt, D.22261
	addl	$1, %edx	#, D.22261
	movl	%edx, 8(%rax)	# D.22261, PL_Sv.531_5->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.531_5->sv_refcnt, D.22261
	testl	%eax, %eax	# D.22261
	je	.L982	#,
	.loc 1 4278 0
	nop
.L982:
	.loc 1 4278 0 discriminator 4
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.532
	movq	-40(%rbp), %rax	# cxt, tmp80
	movq	64(%rax), %rax	# cxt_12(D)->tagnum, D.22262
	leaq	1(%rax), %rsi	#, D.22262
	movq	-40(%rbp), %rcx	# cxt, tmp81
	movq	%rsi, 64(%rcx)	# D.22262, cxt_12(D)->tagnum
	movl	%eax, %ecx	# D.22262, D.22263
	movq	-40(%rbp), %rax	# cxt, tmp82
	movq	24(%rax), %rax	# cxt_12(D)->aseen, D.22264
	movl	%ecx, %esi	# D.22263,
	movq	%rax, %rdi	# D.22264,
	call	Perl_av_store	#
	testq	%rax, %rax	# D.22265
	jne	.L983	#,
	.loc 1 4278 0 discriminator 1
	movl	$0, %eax	#, D.22260
	jmp	.L980	#
.L983:
	.loc 1 4278 0 discriminator 2
	cmpq	$0, -48(%rbp)	#, cname
	je	.L984	#,
.LBB270:
	.loc 1 4278 0 discriminator 1
	movq	-48(%rbp), %rax	# cname, tmp83
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp83,
	call	Perl_gv_stashpv	#
	movq	%rax, -24(%rbp)	# tmp84, stash
	movq	-32(%rbp), %rax	# rv, tmp85
	movq	%rax, %rdi	# tmp85,
	call	Perl_newRV_noinc	#
	movq	%rax, -16(%rbp)	# tmp86, Perl_ref
	movq	-24(%rbp), %rdx	# stash, tmp87
	movq	-16(%rbp), %rax	# Perl_ref, tmp88
	movq	%rdx, %rsi	# tmp87,
	movq	%rax, %rdi	# tmp88,
	call	Perl_sv_bless	#
	movq	-16(%rbp), %rax	# Perl_ref, tmp89
	movq	(%rax), %rax	# Perl_ref_22->sv_any, D.22266
	movq	$0, (%rax)	#, MEM[(struct XRV *)_23].xrv_rv
	movq	-16(%rbp), %rax	# Perl_ref, tmp90
	movq	%rax, %rdi	# tmp90,
	call	Perl_sv_free	#
.L984:
.LBE270:
.LBE269:
	.loc 1 4279 0 is_stmt 1
	movq	-40(%rbp), %rax	# cxt, tmp91
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp91,
	call	retrieve	#
	movq	%rax, -8(%rbp)	# tmp92, sv
	.loc 1 4280 0
	cmpq	$0, -8(%rbp)	#, sv
	jne	.L985	#,
	.loc 1 4281 0
	movl	$0, %eax	#, D.22260
	jmp	.L980	#
.L985:
	.loc 1 4300 0
	cmpq	$0, -48(%rbp)	#, cname
	jne	.L986	#,
	.loc 1 4304 0
	movq	-32(%rbp), %rax	# rv, tmp93
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp93,
	call	Perl_sv_upgrade	#
.L986:
	.loc 1 4307 0
	movq	-32(%rbp), %rax	# rv, tmp94
	movq	(%rax), %rax	# rv_2->sv_any, D.22266
	movq	-8(%rbp), %rdx	# sv, tmp95
	movq	%rdx, (%rax)	# tmp95, MEM[(struct XRV *)_26].xrv_rv
	.loc 1 4308 0
	movq	-32(%rbp), %rax	# rv, tmp96
	movl	12(%rax), %eax	# rv_2->sv_flags, D.22261
	orl	$524288, %eax	#, D.22261
	movl	%eax, %edx	# D.22261, D.22261
	movq	-32(%rbp), %rax	# rv, tmp97
	movl	%edx, 12(%rax)	# D.22261, rv_2->sv_flags
	.loc 1 4312 0
	movq	-32(%rbp), %rax	# rv, D.22260
.L980:
	.loc 1 4313 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	retrieve_ref, .-retrieve_ref
	.section	.rodata
	.align 8
.LC41:
	.string	"Cannot restore overloading on %s(0x%lx) (package <unknown>)"
	.align 8
.LC42:
	.string	"Cannot restore overloading on %s(0x%lx) (package %s) (even after a \"require %s;\")"
	.text
	.type	retrieve_overloaded, @function
retrieve_overloaded:
.LFB45:
	.loc 1 4322 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# cxt, cxt
	movq	%rsi, -96(%rbp)	# cname, cname
	.loc 1 4333 0
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, -72(%rbp)	# tmp93, rv
.LBB271:
	.loc 1 4334 0
	cmpq	$0, -72(%rbp)	#, rv
	jne	.L988	#,
	.loc 1 4334 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.22267
	jmp	.L989	#
.L988:
	.loc 1 4334 0 discriminator 2
	movq	-72(%rbp), %rax	# rv, tmp94
	movq	%rax, PL_Sv(%rip)	# tmp94, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.534
	testq	%rax, %rax	# PL_Sv.534
	je	.L991	#,
	.loc 1 4334 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.535
	movl	8(%rax), %edx	# PL_Sv.535_6->sv_refcnt, D.22268
	addl	$1, %edx	#, D.22268
	movl	%edx, 8(%rax)	# D.22268, PL_Sv.535_6->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.535_6->sv_refcnt, D.22268
	testl	%eax, %eax	# D.22268
	je	.L991	#,
	.loc 1 4334 0
	nop
.L991:
	.loc 1 4334 0 discriminator 4
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.536
	movq	-88(%rbp), %rax	# cxt, tmp95
	movq	64(%rax), %rax	# cxt_13(D)->tagnum, D.22269
	leaq	1(%rax), %rsi	#, D.22269
	movq	-88(%rbp), %rcx	# cxt, tmp96
	movq	%rsi, 64(%rcx)	# D.22269, cxt_13(D)->tagnum
	movl	%eax, %ecx	# D.22269, D.22270
	movq	-88(%rbp), %rax	# cxt, tmp97
	movq	24(%rax), %rax	# cxt_13(D)->aseen, D.22271
	movl	%ecx, %esi	# D.22270,
	movq	%rax, %rdi	# D.22271,
	call	Perl_av_store	#
	testq	%rax, %rax	# D.22272
	jne	.L992	#,
	.loc 1 4334 0 discriminator 1
	movl	$0, %eax	#, D.22267
	jmp	.L989	#
.L992:
	.loc 1 4334 0 discriminator 2
	cmpq	$0, -96(%rbp)	#, cname
	je	.L993	#,
.LBB272:
	.loc 1 4334 0 discriminator 1
	movq	-96(%rbp), %rax	# cname, tmp98
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp98,
	call	Perl_gv_stashpv	#
	movq	%rax, -64(%rbp)	# tmp99, stash
	movq	-72(%rbp), %rax	# rv, tmp100
	movq	%rax, %rdi	# tmp100,
	call	Perl_newRV_noinc	#
	movq	%rax, -56(%rbp)	# tmp101, Perl_ref
	movq	-64(%rbp), %rdx	# stash, tmp102
	movq	-56(%rbp), %rax	# Perl_ref, tmp103
	movq	%rdx, %rsi	# tmp102,
	movq	%rax, %rdi	# tmp103,
	call	Perl_sv_bless	#
	movq	-56(%rbp), %rax	# Perl_ref, tmp104
	movq	(%rax), %rax	# Perl_ref_23->sv_any, D.22273
	movq	$0, (%rax)	#, MEM[(struct XRV *)_24].xrv_rv
	movq	-56(%rbp), %rax	# Perl_ref, tmp105
	movq	%rax, %rdi	# tmp105,
	call	Perl_sv_free	#
.L993:
.LBE272:
.LBE271:
	.loc 1 4335 0 is_stmt 1
	movq	-88(%rbp), %rax	# cxt, tmp106
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp106,
	call	retrieve	#
	movq	%rax, -48(%rbp)	# tmp107, sv
	.loc 1 4336 0
	cmpq	$0, -48(%rbp)	#, sv
	jne	.L994	#,
	.loc 1 4337 0
	movl	$0, %eax	#, D.22267
	jmp	.L989	#
.L994:
	.loc 1 4343 0
	movq	-72(%rbp), %rax	# rv, tmp108
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp108,
	call	Perl_sv_upgrade	#
	.loc 1 4344 0
	movq	-72(%rbp), %rax	# rv, tmp109
	movq	(%rax), %rax	# rv_3->sv_any, D.22273
	movq	-48(%rbp), %rdx	# sv, tmp110
	movq	%rdx, (%rax)	# tmp110, MEM[(struct XRV *)_27].xrv_rv
	.loc 1 4345 0
	movq	-72(%rbp), %rax	# rv, tmp111
	movl	12(%rax), %eax	# rv_3->sv_flags, D.22268
	orl	$524288, %eax	#, D.22268
	movl	%eax, %edx	# D.22268, D.22268
	movq	-72(%rbp), %rax	# rv, tmp112
	movl	%edx, 12(%rax)	# D.22268, rv_3->sv_flags
	.loc 1 4351 0
	movq	-48(%rbp), %rax	# sv, tmp113
	movl	12(%rax), %eax	# sv_25->sv_flags, D.22268
	movzbl	%al, %eax	# D.22268, D.22268
	testl	%eax, %eax	# D.22268
	je	.L995	#,
	.loc 1 4351 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# sv, tmp114
	movq	(%rax), %rax	# sv_25->sv_any, D.22273
	movq	48(%rax), %rax	# MEM[(struct XPVMG *)_32].xmg_stash, iftmp.537
	jmp	.L996	#
.L995:
	.loc 1 4351 0 discriminator 2
	movl	$0, %eax	#, iftmp.537
.L996:
	.loc 1 4351 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.537, stash
	.loc 1 4352 0 is_stmt 1 discriminator 3
	cmpq	$0, -40(%rbp)	#, stash
	jne	.L997	#,
.LBB273:
	.loc 1 4353 0
	movq	-88(%rbp), %rax	# cxt, tmp115
	movl	$1, 112(%rax)	#, cxt_13(D)->s_dirty
	movq	-48(%rbp), %rbx	# sv, sv.538
	movq	-48(%rbp), %rax	# sv, tmp116
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp116,
	call	Perl_sv_reftype	#
	movq	%rbx, %rdx	# sv.538,
	movq	%rax, %rsi	# D.22274,
	movl	$.LC41, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L997:
.LBE273:
	.loc 1 4358 0
	movq	PL_amagic_generation(%rip), %rax	# PL_amagic_generation, PL_amagic_generation.539
	testq	%rax, %rax	# PL_amagic_generation.539
	je	.L998	#,
	.loc 1 4358 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# stash, tmp117
	movq	%rax, %rdi	# tmp117,
	call	Perl_Gv_AMupdate	#
	testb	%al, %al	# D.22275
	jne	.L999	#,
.L998:
.LBB274:
	.loc 1 4359 0 is_stmt 1
	movl	$8, %esi	#,
	movl	$.LC38, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, -32(%rbp)	# tmp118, psv
	.loc 1 4360 0
	movq	-40(%rbp), %rax	# stash, tmp119
	movq	(%rax), %rax	# stash_35->sv_any, D.22276
	movq	80(%rax), %rax	# _41->xhv_name, tmp120
	movq	%rax, -24(%rbp)	# tmp120, Perl_package
	.loc 1 4361 0
	movq	-24(%rbp), %rdx	# Perl_package, tmp121
	movq	-32(%rbp), %rax	# psv, tmp122
	movq	%rdx, %rsi	# tmp121,
	movq	%rax, %rdi	# tmp122,
	call	Perl_sv_catpv	#
	.loc 1 4366 0
	movq	-32(%rbp), %rax	# psv, tmp123
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp123,
	call	Perl_eval_sv	#
	.loc 1 4367 0
	movq	-32(%rbp), %rax	# psv, tmp124
	movq	%rax, %rdi	# tmp124,
	call	Perl_sv_free	#
	.loc 1 4368 0
	movq	PL_amagic_generation(%rip), %rax	# PL_amagic_generation, PL_amagic_generation.540
	testq	%rax, %rax	# PL_amagic_generation.540
	je	.L1000	#,
	.loc 1 4368 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# stash, tmp125
	movq	%rax, %rdi	# tmp125,
	call	Perl_Gv_AMupdate	#
	testb	%al, %al	# D.22275
	jne	.L999	#,
.L1000:
.LBB275:
	.loc 1 4369 0 is_stmt 1
	movq	-88(%rbp), %rax	# cxt, tmp126
	movl	$1, 112(%rax)	#, cxt_13(D)->s_dirty
	movq	-48(%rbp), %rbx	# sv, sv.541
	movq	-48(%rbp), %rax	# sv, tmp127
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp127,
	call	Perl_sv_reftype	#
	movq	-24(%rbp), %rcx	# Perl_package, tmp128
	movq	-24(%rbp), %rdx	# Perl_package, tmp129
	movq	%rcx, %r8	# tmp128,
	movq	%rdx, %rcx	# tmp129,
	movq	%rbx, %rdx	# sv.541,
	movq	%rax, %rsi	# D.22274,
	movl	$.LC42, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L999:
.LBE275:
.LBE274:
	.loc 1 4377 0
	movq	-72(%rbp), %rax	# rv, tmp130
	movl	12(%rax), %eax	# rv_3->sv_flags, D.22268
	orl	$268435456, %eax	#, D.22268
	movl	%eax, %edx	# D.22268, D.22268
	movq	-72(%rbp), %rax	# rv, tmp131
	movl	%edx, 12(%rax)	# D.22268, rv_3->sv_flags
	.loc 1 4381 0
	movq	-72(%rbp), %rax	# rv, D.22267
.L989:
	.loc 1 4382 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	retrieve_overloaded, .-retrieve_overloaded
	.type	retrieve_tied_array, @function
retrieve_tied_array:
.LFB46:
	.loc 1 4391 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# cxt, cxt
	movq	%rsi, -48(%rbp)	# cname, cname
	.loc 1 4397 0
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, -32(%rbp)	# tmp79, tv
.LBB276:
	.loc 1 4398 0
	cmpq	$0, -32(%rbp)	#, tv
	jne	.L1002	#,
	.loc 1 4398 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.22279
	jmp	.L1003	#
.L1002:
	.loc 1 4398 0 discriminator 2
	movq	-32(%rbp), %rax	# tv, tmp80
	movq	%rax, PL_Sv(%rip)	# tmp80, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.543
	testq	%rax, %rax	# PL_Sv.543
	je	.L1005	#,
	.loc 1 4398 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.544
	movl	8(%rax), %edx	# PL_Sv.544_5->sv_refcnt, D.22280
	addl	$1, %edx	#, D.22280
	movl	%edx, 8(%rax)	# D.22280, PL_Sv.544_5->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.544_5->sv_refcnt, D.22280
	testl	%eax, %eax	# D.22280
	je	.L1005	#,
	.loc 1 4398 0
	nop
.L1005:
	.loc 1 4398 0 discriminator 4
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.545
	movq	-40(%rbp), %rax	# cxt, tmp81
	movq	64(%rax), %rax	# cxt_12(D)->tagnum, D.22281
	leaq	1(%rax), %rsi	#, D.22281
	movq	-40(%rbp), %rcx	# cxt, tmp82
	movq	%rsi, 64(%rcx)	# D.22281, cxt_12(D)->tagnum
	movl	%eax, %ecx	# D.22281, D.22282
	movq	-40(%rbp), %rax	# cxt, tmp83
	movq	24(%rax), %rax	# cxt_12(D)->aseen, D.22283
	movl	%ecx, %esi	# D.22282,
	movq	%rax, %rdi	# D.22283,
	call	Perl_av_store	#
	testq	%rax, %rax	# D.22284
	jne	.L1006	#,
	.loc 1 4398 0 discriminator 1
	movl	$0, %eax	#, D.22279
	jmp	.L1003	#
.L1006:
	.loc 1 4398 0 discriminator 2
	cmpq	$0, -48(%rbp)	#, cname
	je	.L1007	#,
.LBB277:
	.loc 1 4398 0 discriminator 1
	movq	-48(%rbp), %rax	# cname, tmp84
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp84,
	call	Perl_gv_stashpv	#
	movq	%rax, -24(%rbp)	# tmp85, stash
	movq	-32(%rbp), %rax	# tv, tmp86
	movq	%rax, %rdi	# tmp86,
	call	Perl_newRV_noinc	#
	movq	%rax, -16(%rbp)	# tmp87, Perl_ref
	movq	-24(%rbp), %rdx	# stash, tmp88
	movq	-16(%rbp), %rax	# Perl_ref, tmp89
	movq	%rdx, %rsi	# tmp88,
	movq	%rax, %rdi	# tmp89,
	call	Perl_sv_bless	#
	movq	-16(%rbp), %rax	# Perl_ref, tmp90
	movq	(%rax), %rax	# Perl_ref_22->sv_any, D.22285
	movq	$0, (%rax)	#, MEM[(struct XRV *)_23].xrv_rv
	movq	-16(%rbp), %rax	# Perl_ref, tmp91
	movq	%rax, %rdi	# tmp91,
	call	Perl_sv_free	#
.L1007:
.LBE277:
.LBE276:
	.loc 1 4399 0 is_stmt 1
	movq	-40(%rbp), %rax	# cxt, tmp92
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp92,
	call	retrieve	#
	movq	%rax, -8(%rbp)	# tmp93, sv
	.loc 1 4400 0
	cmpq	$0, -8(%rbp)	#, sv
	jne	.L1008	#,
	.loc 1 4401 0
	movl	$0, %eax	#, D.22279
	jmp	.L1003	#
.L1008:
	.loc 1 4403 0
	movq	-32(%rbp), %rax	# tv, tmp94
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp94,
	call	Perl_sv_upgrade	#
	.loc 1 4404 0
	movq	-32(%rbp), %rax	# tv, tmp95
	movq	(%rax), %rax	# MEM[(struct AV *)tv_2].sv_any, D.22286
	movq	-32(%rbp), %rdx	# tv, tmp96
	movq	(%rdx), %rdx	# MEM[(struct AV *)tv_2].sv_any, D.22286
	movzbl	72(%rdx), %edx	# _27->xav_flags, D.22287
	andl	$-2, %edx	#, D.22287
	movb	%dl, 72(%rax)	# D.22287, _26->xav_flags
	.loc 1 4405 0
	movq	-8(%rbp), %rsi	# sv, tmp97
	movq	-32(%rbp), %rax	# tv, tmp98
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$80, %edx	#,
	movq	%rax, %rdi	# tmp98,
	call	Perl_sv_magic	#
	.loc 1 4406 0
	movq	-8(%rbp), %rax	# sv, tmp99
	movq	%rax, %rdi	# tmp99,
	call	Perl_sv_free	#
	.loc 1 4410 0
	movq	-32(%rbp), %rax	# tv, D.22279
.L1003:
	.loc 1 4411 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	retrieve_tied_array, .-retrieve_tied_array
	.type	retrieve_tied_hash, @function
retrieve_tied_hash:
.LFB47:
	.loc 1 4420 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# cxt, cxt
	movq	%rsi, -48(%rbp)	# cname, cname
	.loc 1 4426 0
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, -32(%rbp)	# tmp75, tv
.LBB278:
	.loc 1 4427 0
	cmpq	$0, -32(%rbp)	#, tv
	jne	.L1010	#,
	.loc 1 4427 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.22288
	jmp	.L1011	#
.L1010:
	.loc 1 4427 0 discriminator 2
	movq	-32(%rbp), %rax	# tv, tmp76
	movq	%rax, PL_Sv(%rip)	# tmp76, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.547
	testq	%rax, %rax	# PL_Sv.547
	je	.L1013	#,
	.loc 1 4427 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.548
	movl	8(%rax), %edx	# PL_Sv.548_5->sv_refcnt, D.22289
	addl	$1, %edx	#, D.22289
	movl	%edx, 8(%rax)	# D.22289, PL_Sv.548_5->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.548_5->sv_refcnt, D.22289
	testl	%eax, %eax	# D.22289
	je	.L1013	#,
	.loc 1 4427 0
	nop
.L1013:
	.loc 1 4427 0 discriminator 4
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.549
	movq	-40(%rbp), %rax	# cxt, tmp77
	movq	64(%rax), %rax	# cxt_12(D)->tagnum, D.22290
	leaq	1(%rax), %rsi	#, D.22290
	movq	-40(%rbp), %rcx	# cxt, tmp78
	movq	%rsi, 64(%rcx)	# D.22290, cxt_12(D)->tagnum
	movl	%eax, %ecx	# D.22290, D.22291
	movq	-40(%rbp), %rax	# cxt, tmp79
	movq	24(%rax), %rax	# cxt_12(D)->aseen, D.22292
	movl	%ecx, %esi	# D.22291,
	movq	%rax, %rdi	# D.22292,
	call	Perl_av_store	#
	testq	%rax, %rax	# D.22293
	jne	.L1014	#,
	.loc 1 4427 0 discriminator 1
	movl	$0, %eax	#, D.22288
	jmp	.L1011	#
.L1014:
	.loc 1 4427 0 discriminator 2
	cmpq	$0, -48(%rbp)	#, cname
	je	.L1015	#,
.LBB279:
	.loc 1 4427 0 discriminator 1
	movq	-48(%rbp), %rax	# cname, tmp80
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp80,
	call	Perl_gv_stashpv	#
	movq	%rax, -24(%rbp)	# tmp81, stash
	movq	-32(%rbp), %rax	# tv, tmp82
	movq	%rax, %rdi	# tmp82,
	call	Perl_newRV_noinc	#
	movq	%rax, -16(%rbp)	# tmp83, Perl_ref
	movq	-24(%rbp), %rdx	# stash, tmp84
	movq	-16(%rbp), %rax	# Perl_ref, tmp85
	movq	%rdx, %rsi	# tmp84,
	movq	%rax, %rdi	# tmp85,
	call	Perl_sv_bless	#
	movq	-16(%rbp), %rax	# Perl_ref, tmp86
	movq	(%rax), %rax	# Perl_ref_22->sv_any, D.22294
	movq	$0, (%rax)	#, MEM[(struct XRV *)_23].xrv_rv
	movq	-16(%rbp), %rax	# Perl_ref, tmp87
	movq	%rax, %rdi	# tmp87,
	call	Perl_sv_free	#
.L1015:
.LBE279:
.LBE278:
	.loc 1 4428 0 is_stmt 1
	movq	-40(%rbp), %rax	# cxt, tmp88
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp88,
	call	retrieve	#
	movq	%rax, -8(%rbp)	# tmp89, sv
	.loc 1 4429 0
	cmpq	$0, -8(%rbp)	#, sv
	jne	.L1016	#,
	.loc 1 4430 0
	movl	$0, %eax	#, D.22288
	jmp	.L1011	#
.L1016:
	.loc 1 4432 0
	movq	-32(%rbp), %rax	# tv, tmp90
	movl	$11, %esi	#,
	movq	%rax, %rdi	# tmp90,
	call	Perl_sv_upgrade	#
	.loc 1 4433 0
	movq	-8(%rbp), %rsi	# sv, tmp91
	movq	-32(%rbp), %rax	# tv, tmp92
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$80, %edx	#,
	movq	%rax, %rdi	# tmp92,
	call	Perl_sv_magic	#
	.loc 1 4434 0
	movq	-8(%rbp), %rax	# sv, tmp93
	movq	%rax, %rdi	# tmp93,
	call	Perl_sv_free	#
	.loc 1 4438 0
	movq	-32(%rbp), %rax	# tv, D.22288
.L1011:
	.loc 1 4439 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	retrieve_tied_hash, .-retrieve_tied_hash
	.type	retrieve_tied_scalar, @function
retrieve_tied_scalar:
.LFB48:
	.loc 1 4448 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# cxt, cxt
	movq	%rsi, -64(%rbp)	# cname, cname
	.loc 1 4450 0
	movq	$0, -40(%rbp)	#, obj
	.loc 1 4454 0
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, -32(%rbp)	# tmp77, tv
.LBB280:
	.loc 1 4455 0
	cmpq	$0, -32(%rbp)	#, tv
	jne	.L1018	#,
	.loc 1 4455 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.22295
	jmp	.L1019	#
.L1018:
	.loc 1 4455 0 discriminator 2
	movq	-32(%rbp), %rax	# tv, tmp78
	movq	%rax, PL_Sv(%rip)	# tmp78, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.551
	testq	%rax, %rax	# PL_Sv.551
	je	.L1021	#,
	.loc 1 4455 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.552
	movl	8(%rax), %edx	# PL_Sv.552_7->sv_refcnt, D.22296
	addl	$1, %edx	#, D.22296
	movl	%edx, 8(%rax)	# D.22296, PL_Sv.552_7->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.552_7->sv_refcnt, D.22296
	testl	%eax, %eax	# D.22296
	je	.L1021	#,
	.loc 1 4455 0
	nop
.L1021:
	.loc 1 4455 0 discriminator 4
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.553
	movq	-56(%rbp), %rax	# cxt, tmp79
	movq	64(%rax), %rax	# cxt_14(D)->tagnum, D.22297
	leaq	1(%rax), %rsi	#, D.22297
	movq	-56(%rbp), %rcx	# cxt, tmp80
	movq	%rsi, 64(%rcx)	# D.22297, cxt_14(D)->tagnum
	movl	%eax, %ecx	# D.22297, D.22298
	movq	-56(%rbp), %rax	# cxt, tmp81
	movq	24(%rax), %rax	# cxt_14(D)->aseen, D.22299
	movl	%ecx, %esi	# D.22298,
	movq	%rax, %rdi	# D.22299,
	call	Perl_av_store	#
	testq	%rax, %rax	# D.22300
	jne	.L1022	#,
	.loc 1 4455 0 discriminator 1
	movl	$0, %eax	#, D.22295
	jmp	.L1019	#
.L1022:
	.loc 1 4455 0 discriminator 2
	cmpq	$0, -64(%rbp)	#, cname
	je	.L1023	#,
.LBB281:
	.loc 1 4455 0 discriminator 1
	movq	-64(%rbp), %rax	# cname, tmp82
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp82,
	call	Perl_gv_stashpv	#
	movq	%rax, -24(%rbp)	# tmp83, stash
	movq	-32(%rbp), %rax	# tv, tmp84
	movq	%rax, %rdi	# tmp84,
	call	Perl_newRV_noinc	#
	movq	%rax, -16(%rbp)	# tmp85, Perl_ref
	movq	-24(%rbp), %rdx	# stash, tmp86
	movq	-16(%rbp), %rax	# Perl_ref, tmp87
	movq	%rdx, %rsi	# tmp86,
	movq	%rax, %rdi	# tmp87,
	call	Perl_sv_bless	#
	movq	-16(%rbp), %rax	# Perl_ref, tmp88
	movq	(%rax), %rax	# Perl_ref_24->sv_any, D.22301
	movq	$0, (%rax)	#, MEM[(struct XRV *)_25].xrv_rv
	movq	-16(%rbp), %rax	# Perl_ref, tmp89
	movq	%rax, %rdi	# tmp89,
	call	Perl_sv_free	#
.L1023:
.LBE281:
.LBE280:
	.loc 1 4456 0 is_stmt 1
	movq	-56(%rbp), %rax	# cxt, tmp90
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp90,
	call	retrieve	#
	movq	%rax, -8(%rbp)	# tmp91, sv
	.loc 1 4457 0
	cmpq	$0, -8(%rbp)	#, sv
	jne	.L1024	#,
	.loc 1 4458 0
	movl	$0, %eax	#, D.22295
	jmp	.L1019	#
.L1024:
	.loc 1 4460 0
	movq	-8(%rbp), %rax	# sv, tmp92
	movl	12(%rax), %eax	# sv_26->sv_flags, D.22296
	movzbl	%al, %eax	# D.22296, D.22296
	testl	%eax, %eax	# D.22296
	je	.L1025	#,
	.loc 1 4461 0
	movq	-8(%rbp), %rax	# sv, tmp93
	movq	%rax, -40(%rbp)	# tmp93, obj
.L1025:
	.loc 1 4464 0
	movq	-32(%rbp), %rax	# tv, tmp94
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp94,
	call	Perl_sv_upgrade	#
	.loc 1 4465 0
	movq	-40(%rbp), %rsi	# obj, tmp95
	movq	-32(%rbp), %rax	# tv, tmp96
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$113, %edx	#,
	movq	%rax, %rdi	# tmp96,
	call	Perl_sv_magic	#
	.loc 1 4467 0
	cmpq	$0, -40(%rbp)	#, obj
	je	.L1026	#,
	.loc 1 4469 0
	movq	-40(%rbp), %rax	# obj, tmp97
	movq	%rax, %rdi	# tmp97,
	call	Perl_sv_free	#
.L1026:
	.loc 1 4474 0
	movq	-32(%rbp), %rax	# tv, D.22295
.L1019:
	.loc 1 4475 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	retrieve_tied_scalar, .-retrieve_tied_scalar
	.type	retrieve_tied_key, @function
retrieve_tied_key:
.LFB49:
	.loc 1 4484 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# cxt, cxt
	movq	%rsi, -64(%rbp)	# cname, cname
	.loc 1 4491 0
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, -40(%rbp)	# tmp75, tv
.LBB282:
	.loc 1 4492 0
	cmpq	$0, -40(%rbp)	#, tv
	jne	.L1028	#,
	.loc 1 4492 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.22302
	jmp	.L1029	#
.L1028:
	.loc 1 4492 0 discriminator 2
	movq	-40(%rbp), %rax	# tv, tmp76
	movq	%rax, PL_Sv(%rip)	# tmp76, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.555
	testq	%rax, %rax	# PL_Sv.555
	je	.L1031	#,
	.loc 1 4492 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.556
	movl	8(%rax), %edx	# PL_Sv.556_5->sv_refcnt, D.22303
	addl	$1, %edx	#, D.22303
	movl	%edx, 8(%rax)	# D.22303, PL_Sv.556_5->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.556_5->sv_refcnt, D.22303
	testl	%eax, %eax	# D.22303
	je	.L1031	#,
	.loc 1 4492 0
	nop
.L1031:
	.loc 1 4492 0 discriminator 4
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.557
	movq	-56(%rbp), %rax	# cxt, tmp77
	movq	64(%rax), %rax	# cxt_12(D)->tagnum, D.22304
	leaq	1(%rax), %rsi	#, D.22304
	movq	-56(%rbp), %rcx	# cxt, tmp78
	movq	%rsi, 64(%rcx)	# D.22304, cxt_12(D)->tagnum
	movl	%eax, %ecx	# D.22304, D.22305
	movq	-56(%rbp), %rax	# cxt, tmp79
	movq	24(%rax), %rax	# cxt_12(D)->aseen, D.22306
	movl	%ecx, %esi	# D.22305,
	movq	%rax, %rdi	# D.22306,
	call	Perl_av_store	#
	testq	%rax, %rax	# D.22307
	jne	.L1032	#,
	.loc 1 4492 0 discriminator 1
	movl	$0, %eax	#, D.22302
	jmp	.L1029	#
.L1032:
	.loc 1 4492 0 discriminator 2
	cmpq	$0, -64(%rbp)	#, cname
	je	.L1033	#,
.LBB283:
	.loc 1 4492 0 discriminator 1
	movq	-64(%rbp), %rax	# cname, tmp80
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp80,
	call	Perl_gv_stashpv	#
	movq	%rax, -32(%rbp)	# tmp81, stash
	movq	-40(%rbp), %rax	# tv, tmp82
	movq	%rax, %rdi	# tmp82,
	call	Perl_newRV_noinc	#
	movq	%rax, -24(%rbp)	# tmp83, Perl_ref
	movq	-32(%rbp), %rdx	# stash, tmp84
	movq	-24(%rbp), %rax	# Perl_ref, tmp85
	movq	%rdx, %rsi	# tmp84,
	movq	%rax, %rdi	# tmp85,
	call	Perl_sv_bless	#
	movq	-24(%rbp), %rax	# Perl_ref, tmp86
	movq	(%rax), %rax	# Perl_ref_22->sv_any, D.22308
	movq	$0, (%rax)	#, MEM[(struct XRV *)_23].xrv_rv
	movq	-24(%rbp), %rax	# Perl_ref, tmp87
	movq	%rax, %rdi	# tmp87,
	call	Perl_sv_free	#
.L1033:
.LBE283:
.LBE282:
	.loc 1 4493 0 is_stmt 1
	movq	-56(%rbp), %rax	# cxt, tmp88
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp88,
	call	retrieve	#
	movq	%rax, -16(%rbp)	# tmp89, sv
	.loc 1 4494 0
	cmpq	$0, -16(%rbp)	#, sv
	jne	.L1034	#,
	.loc 1 4495 0
	movl	$0, %eax	#, D.22302
	jmp	.L1029	#
.L1034:
	.loc 1 4497 0
	movq	-56(%rbp), %rax	# cxt, tmp90
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp90,
	call	retrieve	#
	movq	%rax, -8(%rbp)	# tmp91, key
	.loc 1 4498 0
	cmpq	$0, -8(%rbp)	#, key
	jne	.L1035	#,
	.loc 1 4499 0
	movl	$0, %eax	#, D.22302
	jmp	.L1029	#
.L1035:
	.loc 1 4501 0
	movq	-40(%rbp), %rax	# tv, tmp92
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp92,
	call	Perl_sv_upgrade	#
	.loc 1 4502 0
	movq	-8(%rbp), %rdx	# key, tmp93
	movq	-16(%rbp), %rsi	# sv, tmp94
	movq	-40(%rbp), %rax	# tv, tmp95
	movl	$-2, %r8d	#,
	movq	%rdx, %rcx	# tmp93,
	movl	$112, %edx	#,
	movq	%rax, %rdi	# tmp95,
	call	Perl_sv_magic	#
	.loc 1 4503 0
	movq	-8(%rbp), %rax	# key, tmp96
	movq	%rax, %rdi	# tmp96,
	call	Perl_sv_free	#
	.loc 1 4504 0
	movq	-16(%rbp), %rax	# sv, tmp97
	movq	%rax, %rdi	# tmp97,
	call	Perl_sv_free	#
	.loc 1 4506 0
	movq	-40(%rbp), %rax	# tv, D.22302
.L1029:
	.loc 1 4507 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	retrieve_tied_key, .-retrieve_tied_key
	.type	retrieve_tied_idx, @function
retrieve_tied_idx:
.LFB50:
	.loc 1 4516 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# cxt, cxt
	movq	%rsi, -64(%rbp)	# cname, cname
	.loc 1 4523 0
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, -32(%rbp)	# tmp98, tv
.LBB284:
	.loc 1 4524 0
	cmpq	$0, -32(%rbp)	#, tv
	jne	.L1037	#,
	.loc 1 4524 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.22309
	jmp	.L1050	#
.L1037:
	.loc 1 4524 0 discriminator 2
	movq	-32(%rbp), %rax	# tv, tmp99
	movq	%rax, PL_Sv(%rip)	# tmp99, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.559
	testq	%rax, %rax	# PL_Sv.559
	je	.L1040	#,
	.loc 1 4524 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.560
	movl	8(%rax), %edx	# PL_Sv.560_5->sv_refcnt, D.22310
	addl	$1, %edx	#, D.22310
	movl	%edx, 8(%rax)	# D.22310, PL_Sv.560_5->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.560_5->sv_refcnt, D.22310
	testl	%eax, %eax	# D.22310
	je	.L1040	#,
	.loc 1 4524 0
	nop
.L1040:
	.loc 1 4524 0 discriminator 4
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.561
	movq	-56(%rbp), %rax	# cxt, tmp100
	movq	64(%rax), %rax	# cxt_12(D)->tagnum, D.22311
	leaq	1(%rax), %rsi	#, D.22311
	movq	-56(%rbp), %rcx	# cxt, tmp101
	movq	%rsi, 64(%rcx)	# D.22311, cxt_12(D)->tagnum
	movl	%eax, %ecx	# D.22311, D.22312
	movq	-56(%rbp), %rax	# cxt, tmp102
	movq	24(%rax), %rax	# cxt_12(D)->aseen, D.22313
	movl	%ecx, %esi	# D.22312,
	movq	%rax, %rdi	# D.22313,
	call	Perl_av_store	#
	testq	%rax, %rax	# D.22314
	jne	.L1041	#,
	.loc 1 4524 0 discriminator 1
	movl	$0, %eax	#, D.22309
	jmp	.L1050	#
.L1041:
	.loc 1 4524 0 discriminator 2
	cmpq	$0, -64(%rbp)	#, cname
	je	.L1042	#,
.LBB285:
	.loc 1 4524 0 discriminator 1
	movq	-64(%rbp), %rax	# cname, tmp103
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp103,
	call	Perl_gv_stashpv	#
	movq	%rax, -24(%rbp)	# tmp104, stash
	movq	-32(%rbp), %rax	# tv, tmp105
	movq	%rax, %rdi	# tmp105,
	call	Perl_newRV_noinc	#
	movq	%rax, -16(%rbp)	# tmp106, Perl_ref
	movq	-24(%rbp), %rdx	# stash, tmp107
	movq	-16(%rbp), %rax	# Perl_ref, tmp108
	movq	%rdx, %rsi	# tmp107,
	movq	%rax, %rdi	# tmp108,
	call	Perl_sv_bless	#
	movq	-16(%rbp), %rax	# Perl_ref, tmp109
	movq	(%rax), %rax	# Perl_ref_22->sv_any, D.22315
	movq	$0, (%rax)	#, MEM[(struct XRV *)_23].xrv_rv
	movq	-16(%rbp), %rax	# Perl_ref, tmp110
	movq	%rax, %rdi	# tmp110,
	call	Perl_sv_free	#
.L1042:
.LBE285:
.LBE284:
	.loc 1 4525 0 is_stmt 1
	movq	-56(%rbp), %rax	# cxt, tmp111
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp111,
	call	retrieve	#
	movq	%rax, -8(%rbp)	# tmp112, sv
	.loc 1 4526 0
	cmpq	$0, -8(%rbp)	#, sv
	jne	.L1043	#,
	.loc 1 4527 0
	movl	$0, %eax	#, D.22309
	jmp	.L1050	#
.L1043:
.LBB286:
	.loc 1 4529 0
	movq	-56(%rbp), %rax	# cxt, tmp113
	movq	216(%rax), %rax	# cxt_12(D)->fio, D.22316
	testq	%rax, %rax	# D.22316
	jne	.L1044	#,
	.loc 1 4529 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# cxt, tmp114
	movq	168(%rax), %rax	# cxt_12(D)->membuf.aptr, D.22317
	leaq	4(%rax), %rdx	#, D.22317
	movq	-56(%rbp), %rax	# cxt, tmp115
	movq	176(%rax), %rax	# cxt_12(D)->membuf.aend, D.22317
	cmpq	%rax, %rdx	# D.22317, D.22317
	ja	.L1045	#,
	movq	-56(%rbp), %rax	# cxt, tmp116
	movq	168(%rax), %rax	# cxt_12(D)->membuf.aptr, D.22317
	movq	%rax, %rdx	# D.22317, D.22318
	movq	-56(%rbp), %rax	# cxt, tmp117
	movq	168(%rax), %rax	# cxt_12(D)->membuf.aptr, D.22317
	andq	$-4, %rax	#, D.22318
	cmpq	%rax, %rdx	# D.22318, D.22318
	jne	.L1046	#,
	movq	-56(%rbp), %rax	# cxt, tmp118
	movq	168(%rax), %rax	# cxt_12(D)->membuf.aptr, D.22317
	movl	(%rax), %eax	# MEM[(int *)_35], idx.562
	movl	%eax, -36(%rbp)	# idx.562, idx
	jmp	.L1047	#
.L1046:
	.loc 1 4529 0 discriminator 2
	movq	-56(%rbp), %rax	# cxt, tmp119
	movq	168(%rax), %rax	# cxt_12(D)->membuf.aptr, D.22317
	movl	(%rax), %eax	# MEM[(char * {ref-all})_37], D.22312
	movl	%eax, -36(%rbp)	# D.22312, MEM[(char * {ref-all})&idx]
.L1047:
	.loc 1 4529 0 discriminator 1
	movq	-56(%rbp), %rax	# cxt, tmp120
	movq	168(%rax), %rax	# cxt_12(D)->membuf.aptr, D.22317
	leaq	4(%rax), %rdx	#, D.22317
	movq	-56(%rbp), %rax	# cxt, tmp121
	movq	%rdx, 168(%rax)	# D.22317, cxt_12(D)->membuf.aptr
	jmp	.L1048	#
.L1045:
	.loc 1 4529 0 discriminator 2
	movl	$0, %eax	#, D.22309
	jmp	.L1050	#
.L1044:
	movq	-56(%rbp), %rax	# cxt, tmp122
	movq	216(%rax), %rax	# cxt_12(D)->fio, D.22316
	leaq	-36(%rbp), %rcx	#, tmp123
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp123,
	movq	%rax, %rdi	# D.22316,
	call	Perl_PerlIO_read	#
	cmpq	$4, %rax	#, D.22311
	je	.L1048	#,
	.loc 1 4529 0 discriminator 1
	movl	$0, %eax	#, D.22309
	jmp	.L1050	#
.L1048:
	.loc 1 4529 0 discriminator 2
	movq	-56(%rbp), %rax	# cxt, tmp124
	movl	80(%rax), %eax	# cxt_12(D)->netorder, D.22312
	testl	%eax, %eax	# D.22312
	je	.L1049	#,
	.loc 1 4529 0 discriminator 1
	movl	-36(%rbp), %eax	# idx, idx.563
	cltq
	movq	%rax, %rdi	# D.22311,
	call	Perl_my_ntohl	#
	movl	%eax, -36(%rbp)	# idx.564, idx
.L1049:
.LBE286:
	.loc 1 4531 0 is_stmt 1
	movq	-32(%rbp), %rax	# tv, tmp125
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp125,
	call	Perl_sv_upgrade	#
	.loc 1 4532 0
	movl	-36(%rbp), %edx	# idx, idx.565
	movq	-8(%rbp), %rsi	# sv, tmp126
	movq	-32(%rbp), %rax	# tv, tmp127
	movl	%edx, %r8d	# idx.565,
	movl	$0, %ecx	#,
	movl	$112, %edx	#,
	movq	%rax, %rdi	# tmp127,
	call	Perl_sv_magic	#
	.loc 1 4533 0
	movq	-8(%rbp), %rax	# sv, tmp128
	movq	%rax, %rdi	# tmp128,
	call	Perl_sv_free	#
	.loc 1 4535 0
	movq	-32(%rbp), %rax	# tv, D.22309
.L1050:
	.loc 1 4536 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	retrieve_tied_idx, .-retrieve_tied_idx
	.type	retrieve_lscalar, @function
retrieve_lscalar:
.LFB51:
	.loc 1 4549 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# cxt, cxt
	movq	%rsi, -48(%rbp)	# cname, cname
.LBB287:
	.loc 1 4553 0
	movq	-40(%rbp), %rax	# cxt, tmp138
	movq	216(%rax), %rax	# cxt_2(D)->fio, D.22320
	testq	%rax, %rax	# D.22320
	jne	.L1052	#,
	.loc 1 4553 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# cxt, tmp139
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22321
	leaq	4(%rax), %rdx	#, D.22321
	movq	-40(%rbp), %rax	# cxt, tmp140
	movq	176(%rax), %rax	# cxt_2(D)->membuf.aend, D.22321
	cmpq	%rax, %rdx	# D.22321, D.22321
	ja	.L1053	#,
	movq	-40(%rbp), %rax	# cxt, tmp141
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22321
	movq	%rax, %rdx	# D.22321, D.22322
	movq	-40(%rbp), %rax	# cxt, tmp142
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22321
	andq	$-4, %rax	#, D.22322
	cmpq	%rax, %rdx	# D.22322, D.22322
	jne	.L1054	#,
	movq	-40(%rbp), %rax	# cxt, tmp143
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22321
	movl	(%rax), %eax	# MEM[(int *)_12], len.566
	movl	%eax, -28(%rbp)	# len.566, len
	jmp	.L1055	#
.L1054:
	.loc 1 4553 0 discriminator 2
	movq	-40(%rbp), %rax	# cxt, tmp144
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22321
	movl	(%rax), %eax	# MEM[(char * {ref-all})_14], D.22323
	movl	%eax, -28(%rbp)	# D.22323, MEM[(char * {ref-all})&len]
.L1055:
	.loc 1 4553 0 discriminator 1
	movq	-40(%rbp), %rax	# cxt, tmp145
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22321
	leaq	4(%rax), %rdx	#, D.22321
	movq	-40(%rbp), %rax	# cxt, tmp146
	movq	%rdx, 168(%rax)	# D.22321, cxt_2(D)->membuf.aptr
	jmp	.L1056	#
.L1053:
	.loc 1 4553 0 discriminator 2
	movl	$0, %eax	#, D.22319
	jmp	.L1068	#
.L1052:
	movq	-40(%rbp), %rax	# cxt, tmp147
	movq	216(%rax), %rax	# cxt_2(D)->fio, D.22320
	leaq	-28(%rbp), %rcx	#, tmp148
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp148,
	movq	%rax, %rdi	# D.22320,
	call	Perl_PerlIO_read	#
	cmpq	$4, %rax	#, D.22324
	je	.L1056	#,
	.loc 1 4553 0 discriminator 1
	movl	$0, %eax	#, D.22319
	jmp	.L1068	#
.L1056:
	.loc 1 4553 0 discriminator 2
	movq	-40(%rbp), %rax	# cxt, tmp149
	movl	80(%rax), %eax	# cxt_2(D)->netorder, D.22323
	testl	%eax, %eax	# D.22323
	je	.L1058	#,
	.loc 1 4553 0 discriminator 1
	movl	-28(%rbp), %eax	# len, len.567
	cltq
	movq	%rax, %rdi	# D.22324,
	call	Perl_my_ntohl	#
	movl	%eax, -28(%rbp)	# len.568, len
.L1058:
.LBE287:
	.loc 1 4560 0 is_stmt 1
	movl	-28(%rbp), %eax	# len, len.569
	cltq
	movq	%rax, %rdi	# D.22322,
	call	Perl_newSV	#
	movq	%rax, -24(%rbp)	# tmp150, sv
.LBB288:
	.loc 1 4561 0
	cmpq	$0, -24(%rbp)	#, sv
	jne	.L1059	#,
	.loc 1 4561 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.22319
	jmp	.L1068	#
.L1059:
	.loc 1 4561 0 discriminator 2
	movq	-24(%rbp), %rax	# sv, tmp151
	movq	%rax, PL_Sv(%rip)	# tmp151, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.571
	testq	%rax, %rax	# PL_Sv.571
	je	.L1061	#,
	.loc 1 4561 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.572
	movl	8(%rax), %edx	# PL_Sv.572_32->sv_refcnt, D.22325
	addl	$1, %edx	#, D.22325
	movl	%edx, 8(%rax)	# D.22325, PL_Sv.572_32->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.572_32->sv_refcnt, D.22325
	testl	%eax, %eax	# D.22325
	je	.L1061	#,
	.loc 1 4561 0
	nop
.L1061:
	.loc 1 4561 0 discriminator 4
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.573
	movq	-40(%rbp), %rax	# cxt, tmp152
	movq	64(%rax), %rax	# cxt_2(D)->tagnum, D.22324
	leaq	1(%rax), %rsi	#, D.22324
	movq	-40(%rbp), %rcx	# cxt, tmp153
	movq	%rsi, 64(%rcx)	# D.22324, cxt_2(D)->tagnum
	movl	%eax, %ecx	# D.22324, D.22323
	movq	-40(%rbp), %rax	# cxt, tmp154
	movq	24(%rax), %rax	# cxt_2(D)->aseen, D.22326
	movl	%ecx, %esi	# D.22323,
	movq	%rax, %rdi	# D.22326,
	call	Perl_av_store	#
	testq	%rax, %rax	# D.22327
	jne	.L1062	#,
	.loc 1 4561 0 discriminator 1
	movl	$0, %eax	#, D.22319
	jmp	.L1068	#
.L1062:
	.loc 1 4561 0 discriminator 2
	cmpq	$0, -48(%rbp)	#, cname
	je	.L1063	#,
.LBB289:
	.loc 1 4561 0 discriminator 1
	movq	-48(%rbp), %rax	# cname, tmp155
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp155,
	call	Perl_gv_stashpv	#
	movq	%rax, -16(%rbp)	# tmp156, stash
	movq	-24(%rbp), %rax	# sv, tmp157
	movq	%rax, %rdi	# tmp157,
	call	Perl_newRV_noinc	#
	movq	%rax, -8(%rbp)	# tmp158, Perl_ref
	movq	-16(%rbp), %rdx	# stash, tmp159
	movq	-8(%rbp), %rax	# Perl_ref, tmp160
	movq	%rdx, %rsi	# tmp159,
	movq	%rax, %rdi	# tmp160,
	call	Perl_sv_bless	#
	movq	-8(%rbp), %rax	# Perl_ref, tmp161
	movq	(%rax), %rax	# Perl_ref_48->sv_any, D.22328
	movq	$0, (%rax)	#, MEM[(struct XRV *)_49].xrv_rv
	movq	-8(%rbp), %rax	# Perl_ref, tmp162
	movq	%rax, %rdi	# tmp162,
	call	Perl_sv_free	#
.L1063:
.LBE289:
.LBE288:
	.loc 1 4572 0 is_stmt 1
	movq	-40(%rbp), %rax	# cxt, tmp163
	movq	216(%rax), %rax	# cxt_2(D)->fio, D.22320
	testq	%rax, %rax	# D.22320
	jne	.L1064	#,
	.loc 1 4572 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# cxt, tmp164
	movq	168(%rax), %rdx	# cxt_2(D)->membuf.aptr, D.22321
	movl	-28(%rbp), %eax	# len, len.574
	cltq
	addq	%rax, %rdx	# D.22329, D.22321
	movq	-40(%rbp), %rax	# cxt, tmp165
	movq	176(%rax), %rax	# cxt_2(D)->membuf.aend, D.22321
	cmpq	%rax, %rdx	# D.22321, D.22321
	ja	.L1065	#,
	movl	-28(%rbp), %eax	# len, len.575
	movslq	%eax, %rdx	# len.575, D.22322
	movq	-40(%rbp), %rax	# cxt, tmp166
	movq	168(%rax), %rcx	# cxt_2(D)->membuf.aptr, D.22321
	movq	-24(%rbp), %rax	# sv, tmp167
	movq	(%rax), %rax	# sv_29->sv_any, D.22328
	movq	(%rax), %rax	# MEM[(struct XPV *)_59].xpv_pv, D.22321
	movq	%rcx, %rsi	# D.22321,
	movq	%rax, %rdi	# D.22321,
	call	memcpy	#
	movq	-40(%rbp), %rax	# cxt, tmp168
	movq	168(%rax), %rdx	# cxt_2(D)->membuf.aptr, D.22321
	movl	-28(%rbp), %eax	# len, len.576
	cltq
	addq	%rax, %rdx	# D.22329, D.22321
	movq	-40(%rbp), %rax	# cxt, tmp169
	movq	%rdx, 168(%rax)	# D.22321, cxt_2(D)->membuf.aptr
	jmp	.L1066	#
.L1065:
	.loc 1 4572 0 discriminator 2
	movq	-24(%rbp), %rax	# sv, tmp170
	movq	%rax, %rdi	# tmp170,
	call	Perl_sv_free	#
	movl	$0, %eax	#, D.22319
	jmp	.L1068	#
.L1064:
	movl	-28(%rbp), %eax	# len, len.577
	movslq	%eax, %rdx	# len.577, D.22322
	movq	-24(%rbp), %rax	# sv, tmp171
	movq	(%rax), %rax	# sv_29->sv_any, D.22328
	movq	(%rax), %rcx	# MEM[(struct XPV *)_68].xpv_pv, D.22321
	movq	-40(%rbp), %rax	# cxt, tmp172
	movq	216(%rax), %rax	# cxt_2(D)->fio, D.22320
	movq	%rcx, %rsi	# D.22321,
	movq	%rax, %rdi	# D.22320,
	call	Perl_PerlIO_read	#
	movl	-28(%rbp), %edx	# len, len.578
	movslq	%edx, %rdx	# len.578, D.22324
	cmpq	%rdx, %rax	# D.22324, D.22324
	je	.L1066	#,
	.loc 1 4572 0 discriminator 1
	movq	-24(%rbp), %rax	# sv, tmp173
	movq	%rax, %rdi	# tmp173,
	call	Perl_sv_free	#
	movl	$0, %eax	#, D.22319
	jmp	.L1068	#
.L1066:
	.loc 1 4573 0 is_stmt 1
	movq	-24(%rbp), %rax	# sv, tmp174
	movq	(%rax), %rax	# sv_29->sv_any, D.22328
	movl	-28(%rbp), %edx	# len, len.579
	movslq	%edx, %rdx	# len.579, D.22322
	movq	%rdx, 8(%rax)	# D.22322, MEM[(struct XPV *)_75].xpv_cur
	.loc 1 4574 0
	movq	-24(%rbp), %rax	# sv, tmp175
	movq	(%rax), %rax	# sv_29->sv_any, D.22328
	movq	(%rax), %rdx	# MEM[(struct XPV *)_78].xpv_pv, D.22321
	movq	-24(%rbp), %rax	# sv, tmp176
	movq	(%rax), %rax	# sv_29->sv_any, D.22328
	movq	8(%rax), %rax	# MEM[(struct XPV *)_80].xpv_cur, D.22322
	addq	%rdx, %rax	# D.22321, D.22321
	movb	$0, (%rax)	#, *_82
	.loc 1 4575 0
	movq	-24(%rbp), %rax	# sv, tmp177
	movl	12(%rax), %eax	# sv_29->sv_flags, D.22325
	andl	$1223753727, %eax	#, D.22325
	movl	%eax, %edx	# D.22325, D.22325
	movq	-24(%rbp), %rax	# sv, tmp178
	movl	%edx, 12(%rax)	# D.22325, sv_29->sv_flags
	movq	-24(%rbp), %rax	# sv, tmp179
	movl	12(%rax), %eax	# sv_29->sv_flags, D.22325
	orl	$67371008, %eax	#, D.22325
	movl	%eax, %edx	# D.22325, D.22325
	movq	-24(%rbp), %rax	# sv, tmp180
	movl	%edx, 12(%rax)	# D.22325, sv_29->sv_flags
	.loc 1 4576 0
	movq	-40(%rbp), %rax	# cxt, tmp181
	movl	84(%rax), %eax	# cxt_2(D)->s_tainted, D.22323
	testl	%eax, %eax	# D.22323
	je	.L1067	#,
	.loc 1 4577 0
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.580
	testb	%al, %al	# PL_tainting.580
	je	.L1067	#,
	.loc 1 4577 0 is_stmt 0 discriminator 1
	movzbl	PL_tainted(%rip), %eax	# PL_tainted, PL_tainted.581
	testb	%al, %al	# PL_tainted.581
	je	.L1067	#,
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.582
	testb	%al, %al	# PL_tainting.582
	je	.L1067	#,
	movq	-24(%rbp), %rax	# sv, tmp182
	movq	%rax, %rdi	# tmp182,
	call	Perl_sv_taint	#
.L1067:
	.loc 1 4582 0 is_stmt 1
	movq	-24(%rbp), %rax	# sv, D.22319
.L1068:
	.loc 1 4583 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	retrieve_lscalar, .-retrieve_lscalar
	.type	retrieve_scalar, @function
retrieve_scalar:
.LFB52:
	.loc 1 4595 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# cxt, cxt
	movq	%rsi, -48(%rbp)	# cname, cname
	.loc 1 4599 0
	movq	-40(%rbp), %rax	# cxt, tmp129
	movq	216(%rax), %rax	# cxt_3(D)->fio, D.22331
	testq	%rax, %rax	# D.22331
	jne	.L1070	#,
	.loc 1 4599 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# cxt, tmp130
	movq	168(%rax), %rdx	# cxt_3(D)->membuf.aptr, D.22332
	movq	-40(%rbp), %rax	# cxt, tmp131
	movq	176(%rax), %rax	# cxt_3(D)->membuf.aend, D.22332
	cmpq	%rax, %rdx	# D.22332, D.22332
	jae	.L1071	#,
	movq	-40(%rbp), %rax	# cxt, tmp132
	movq	168(%rax), %rax	# cxt_3(D)->membuf.aptr, D.22332
	leaq	1(%rax), %rcx	#, D.22332
	movq	-40(%rbp), %rdx	# cxt, tmp133
	movq	%rcx, 168(%rdx)	# D.22332, cxt_3(D)->membuf.aptr
	movzbl	(%rax), %eax	# *_8, D.22333
	movzbl	%al, %eax	# D.22334, tmp134
	movl	%eax, -28(%rbp)	# tmp134, len
	jmp	.L1072	#
.L1071:
	.loc 1 4599 0 discriminator 2
	movl	$0, %eax	#, D.22330
	jmp	.L1073	#
.L1070:
	movq	-40(%rbp), %rax	# cxt, tmp135
	movq	216(%rax), %rax	# cxt_3(D)->fio, D.22331
	movq	%rax, %rdi	# D.22331,
	call	PerlIO_getc	#
	movl	%eax, -28(%rbp)	# tmp136, len
	cmpl	$-1, -28(%rbp)	#, len
	jne	.L1072	#,
	.loc 1 4599 0 discriminator 1
	movl	$0, %eax	#, D.22330
	jmp	.L1073	#
.L1072:
	.loc 1 4606 0 is_stmt 1
	movl	-28(%rbp), %eax	# len, tmp137
	cltq
	movq	%rax, %rdi	# D.22335,
	call	Perl_newSV	#
	movq	%rax, -24(%rbp)	# tmp138, sv
.LBB290:
	.loc 1 4607 0
	cmpq	$0, -24(%rbp)	#, sv
	jne	.L1074	#,
	.loc 1 4607 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.22330
	jmp	.L1073	#
.L1074:
	.loc 1 4607 0 discriminator 2
	movq	-24(%rbp), %rax	# sv, tmp139
	movq	%rax, PL_Sv(%rip)	# tmp139, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.584
	testq	%rax, %rax	# PL_Sv.584
	je	.L1076	#,
	.loc 1 4607 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.585
	movl	8(%rax), %edx	# PL_Sv.585_21->sv_refcnt, D.22336
	addl	$1, %edx	#, D.22336
	movl	%edx, 8(%rax)	# D.22336, PL_Sv.585_21->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.585_21->sv_refcnt, D.22336
	testl	%eax, %eax	# D.22336
	je	.L1076	#,
	.loc 1 4607 0
	nop
.L1076:
	.loc 1 4607 0 discriminator 4
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.586
	movq	-40(%rbp), %rax	# cxt, tmp140
	movq	64(%rax), %rax	# cxt_3(D)->tagnum, D.22337
	leaq	1(%rax), %rsi	#, D.22337
	movq	-40(%rbp), %rcx	# cxt, tmp141
	movq	%rsi, 64(%rcx)	# D.22337, cxt_3(D)->tagnum
	movl	%eax, %ecx	# D.22337, D.22338
	movq	-40(%rbp), %rax	# cxt, tmp142
	movq	24(%rax), %rax	# cxt_3(D)->aseen, D.22339
	movl	%ecx, %esi	# D.22338,
	movq	%rax, %rdi	# D.22339,
	call	Perl_av_store	#
	testq	%rax, %rax	# D.22340
	jne	.L1077	#,
	.loc 1 4607 0 discriminator 1
	movl	$0, %eax	#, D.22330
	jmp	.L1073	#
.L1077:
	.loc 1 4607 0 discriminator 2
	cmpq	$0, -48(%rbp)	#, cname
	je	.L1078	#,
.LBB291:
	.loc 1 4607 0 discriminator 1
	movq	-48(%rbp), %rax	# cname, tmp143
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp143,
	call	Perl_gv_stashpv	#
	movq	%rax, -16(%rbp)	# tmp144, stash
	movq	-24(%rbp), %rax	# sv, tmp145
	movq	%rax, %rdi	# tmp145,
	call	Perl_newRV_noinc	#
	movq	%rax, -8(%rbp)	# tmp146, Perl_ref
	movq	-16(%rbp), %rdx	# stash, tmp147
	movq	-8(%rbp), %rax	# Perl_ref, tmp148
	movq	%rdx, %rsi	# tmp147,
	movq	%rax, %rdi	# tmp148,
	call	Perl_sv_bless	#
	movq	-8(%rbp), %rax	# Perl_ref, tmp149
	movq	(%rax), %rax	# Perl_ref_37->sv_any, D.22341
	movq	$0, (%rax)	#, MEM[(struct XRV *)_38].xrv_rv
	movq	-8(%rbp), %rax	# Perl_ref, tmp150
	movq	%rax, %rdi	# tmp150,
	call	Perl_sv_free	#
.L1078:
.LBE291:
.LBE290:
	.loc 1 4613 0 is_stmt 1
	cmpl	$0, -28(%rbp)	#, len
	jne	.L1079	#,
	.loc 1 4620 0
	movq	-24(%rbp), %rax	# sv, tmp151
	movl	12(%rax), %eax	# sv_18->sv_flags, D.22336
	movzbl	%al, %eax	# D.22336, D.22336
	cmpl	$4, %eax	#, D.22336
	ja	.L1080	#,
	.loc 1 4621 0
	movq	-24(%rbp), %rax	# sv, tmp152
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp152,
	call	Perl_sv_upgrade	#
.L1080:
	.loc 1 4623 0
	movq	-24(%rbp), %rax	# sv, tmp153
	movq	(%rax), %rax	# sv_18->sv_any, D.22341
	movq	16(%rax), %rax	# MEM[(struct XPV *)_41].xpv_len, D.22335
	testq	%rax, %rax	# D.22335
	jne	.L1082	#,
	.loc 1 4623 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# sv, tmp154
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp154,
	call	Perl_sv_grow	#
.L1082:
	.loc 1 4624 0 is_stmt 1 discriminator 2
	movq	-24(%rbp), %rax	# sv, tmp156
	movq	(%rax), %rax	# sv_18->sv_any, D.22341
	movq	(%rax), %rdx	# MEM[(struct XPV *)_46].xpv_pv, D.22332
	movq	-24(%rbp), %rax	# sv, tmp157
	movq	(%rax), %rax	# sv_18->sv_any, D.22341
	movq	8(%rax), %rax	# MEM[(struct XPV *)_48].xpv_cur, D.22335
	addq	%rdx, %rax	# D.22332, D.22332
	movb	$0, (%rax)	#, *_50
	jmp	.L1083	#
.L1079:
	.loc 1 4633 0
	movq	-40(%rbp), %rax	# cxt, tmp158
	movq	216(%rax), %rax	# cxt_3(D)->fio, D.22331
	testq	%rax, %rax	# D.22331
	jne	.L1084	#,
	.loc 1 4633 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# cxt, tmp159
	movq	168(%rax), %rdx	# cxt_3(D)->membuf.aptr, D.22332
	movl	-28(%rbp), %eax	# len, tmp160
	cltq
	addq	%rax, %rdx	# D.22342, D.22332
	movq	-40(%rbp), %rax	# cxt, tmp161
	movq	176(%rax), %rax	# cxt_3(D)->membuf.aend, D.22332
	cmpq	%rax, %rdx	# D.22332, D.22332
	ja	.L1085	#,
	movl	-28(%rbp), %eax	# len, tmp162
	movslq	%eax, %rdx	# tmp162, D.22335
	movq	-40(%rbp), %rax	# cxt, tmp163
	movq	168(%rax), %rcx	# cxt_3(D)->membuf.aptr, D.22332
	movq	-24(%rbp), %rax	# sv, tmp164
	movq	(%rax), %rax	# sv_18->sv_any, D.22341
	movq	(%rax), %rax	# MEM[(struct XPV *)_58].xpv_pv, D.22332
	movq	%rcx, %rsi	# D.22332,
	movq	%rax, %rdi	# D.22332,
	call	memcpy	#
	movq	-40(%rbp), %rax	# cxt, tmp165
	movq	168(%rax), %rdx	# cxt_3(D)->membuf.aptr, D.22332
	movl	-28(%rbp), %eax	# len, tmp166
	cltq
	addq	%rax, %rdx	# D.22342, D.22332
	movq	-40(%rbp), %rax	# cxt, tmp167
	movq	%rdx, 168(%rax)	# D.22332, cxt_3(D)->membuf.aptr
	jmp	.L1086	#
.L1085:
	.loc 1 4633 0 discriminator 2
	movq	-24(%rbp), %rax	# sv, tmp168
	movq	%rax, %rdi	# tmp168,
	call	Perl_sv_free	#
	movl	$0, %eax	#, D.22330
	jmp	.L1073	#
.L1084:
	movl	-28(%rbp), %eax	# len, tmp169
	movslq	%eax, %rdx	# tmp169, D.22335
	movq	-24(%rbp), %rax	# sv, tmp170
	movq	(%rax), %rax	# sv_18->sv_any, D.22341
	movq	(%rax), %rcx	# MEM[(struct XPV *)_65].xpv_pv, D.22332
	movq	-40(%rbp), %rax	# cxt, tmp171
	movq	216(%rax), %rax	# cxt_3(D)->fio, D.22331
	movq	%rcx, %rsi	# D.22332,
	movq	%rax, %rdi	# D.22331,
	call	Perl_PerlIO_read	#
	movl	-28(%rbp), %edx	# len, tmp172
	movslq	%edx, %rdx	# tmp172, D.22337
	cmpq	%rdx, %rax	# D.22337, D.22337
	je	.L1086	#,
	.loc 1 4633 0 discriminator 1
	movq	-24(%rbp), %rax	# sv, tmp173
	movq	%rax, %rdi	# tmp173,
	call	Perl_sv_free	#
	movl	$0, %eax	#, D.22330
	jmp	.L1073	#
.L1086:
	.loc 1 4634 0 is_stmt 1
	movq	-24(%rbp), %rax	# sv, tmp174
	movq	(%rax), %rax	# sv_18->sv_any, D.22341
	movl	-28(%rbp), %edx	# len, tmp175
	movslq	%edx, %rdx	# tmp175, D.22335
	movq	%rdx, 8(%rax)	# D.22335, MEM[(struct XPV *)_71].xpv_cur
	.loc 1 4635 0
	movq	-24(%rbp), %rax	# sv, tmp176
	movq	(%rax), %rax	# sv_18->sv_any, D.22341
	movq	(%rax), %rdx	# MEM[(struct XPV *)_73].xpv_pv, D.22332
	movq	-24(%rbp), %rax	# sv, tmp177
	movq	(%rax), %rax	# sv_18->sv_any, D.22341
	movq	8(%rax), %rax	# MEM[(struct XPV *)_75].xpv_cur, D.22335
	addq	%rdx, %rax	# D.22332, D.22332
	movb	$0, (%rax)	#, *_77
.L1083:
	.loc 1 4639 0
	movq	-24(%rbp), %rax	# sv, tmp178
	movl	12(%rax), %eax	# sv_18->sv_flags, D.22336
	andl	$1223753727, %eax	#, D.22336
	movl	%eax, %edx	# D.22336, D.22336
	movq	-24(%rbp), %rax	# sv, tmp179
	movl	%edx, 12(%rax)	# D.22336, sv_18->sv_flags
	movq	-24(%rbp), %rax	# sv, tmp180
	movl	12(%rax), %eax	# sv_18->sv_flags, D.22336
	orl	$67371008, %eax	#, D.22336
	movl	%eax, %edx	# D.22336, D.22336
	movq	-24(%rbp), %rax	# sv, tmp181
	movl	%edx, 12(%rax)	# D.22336, sv_18->sv_flags
	.loc 1 4640 0
	movq	-40(%rbp), %rax	# cxt, tmp182
	movl	84(%rax), %eax	# cxt_3(D)->s_tainted, D.22338
	testl	%eax, %eax	# D.22338
	je	.L1087	#,
	.loc 1 4641 0
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.588
	testb	%al, %al	# PL_tainting.588
	je	.L1087	#,
	.loc 1 4641 0 is_stmt 0 discriminator 1
	movzbl	PL_tainted(%rip), %eax	# PL_tainted, PL_tainted.589
	testb	%al, %al	# PL_tainted.589
	je	.L1087	#,
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.590
	testb	%al, %al	# PL_tainting.590
	je	.L1087	#,
	movq	-24(%rbp), %rax	# sv, tmp183
	movq	%rax, %rdi	# tmp183,
	call	Perl_sv_taint	#
.L1087:
	.loc 1 4644 0 is_stmt 1
	movq	-24(%rbp), %rax	# sv, D.22330
.L1073:
	.loc 1 4645 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	retrieve_scalar, .-retrieve_scalar
	.type	retrieve_utf8str, @function
retrieve_utf8str:
.LFB53:
	.loc 1 4654 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# cxt, cxt
	movq	%rsi, -32(%rbp)	# cname, cname
	.loc 1 4659 0
	movq	-32(%rbp), %rdx	# cname, tmp63
	movq	-24(%rbp), %rax	# cxt, tmp64
	movq	%rdx, %rsi	# tmp63,
	movq	%rax, %rdi	# tmp64,
	call	retrieve_scalar	#
	movq	%rax, -8(%rbp)	# tmp65, sv
	.loc 1 4660 0
	cmpq	$0, -8(%rbp)	#, sv
	je	.L1089	#,
	.loc 1 4662 0
	movq	-8(%rbp), %rax	# sv, tmp66
	movl	12(%rax), %eax	# sv_3->sv_flags, D.22343
	orl	$536870912, %eax	#, D.22343
	movl	%eax, %edx	# D.22343, D.22343
	movq	-8(%rbp), %rax	# sv, tmp67
	movl	%edx, 12(%rax)	# D.22343, sv_3->sv_flags
.L1089:
	.loc 1 4673 0
	movq	-8(%rbp), %rax	# sv, D.22344
	.loc 1 4674 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	retrieve_utf8str, .-retrieve_utf8str
	.type	retrieve_lutf8str, @function
retrieve_lutf8str:
.LFB54:
	.loc 1 4683 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# cxt, cxt
	movq	%rsi, -32(%rbp)	# cname, cname
	.loc 1 4688 0
	movq	-32(%rbp), %rdx	# cname, tmp63
	movq	-24(%rbp), %rax	# cxt, tmp64
	movq	%rdx, %rsi	# tmp63,
	movq	%rax, %rdi	# tmp64,
	call	retrieve_lscalar	#
	movq	%rax, -8(%rbp)	# tmp65, sv
	.loc 1 4689 0
	cmpq	$0, -8(%rbp)	#, sv
	je	.L1092	#,
	.loc 1 4691 0
	movq	-8(%rbp), %rax	# sv, tmp66
	movl	12(%rax), %eax	# sv_3->sv_flags, D.22345
	orl	$536870912, %eax	#, D.22345
	movl	%eax, %edx	# D.22345, D.22345
	movq	-8(%rbp), %rax	# sv, tmp67
	movl	%edx, 12(%rax)	# D.22345, sv_3->sv_flags
.L1092:
	.loc 1 4701 0
	movq	-8(%rbp), %rax	# sv, D.22346
	.loc 1 4702 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	retrieve_lutf8str, .-retrieve_lutf8str
	.type	retrieve_integer, @function
retrieve_integer:
.LFB55:
	.loc 1 4711 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# cxt, cxt
	movq	%rsi, -48(%rbp)	# cname, cname
	.loc 1 4717 0
	movq	-40(%rbp), %rax	# cxt, tmp86
	movq	216(%rax), %rax	# cxt_2(D)->fio, D.22348
	testq	%rax, %rax	# D.22348
	jne	.L1095	#,
	.loc 1 4717 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# cxt, tmp87
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22349
	leaq	8(%rax), %rdx	#, D.22349
	movq	-40(%rbp), %rax	# cxt, tmp88
	movq	176(%rax), %rax	# cxt_2(D)->membuf.aend, D.22349
	cmpq	%rax, %rdx	# D.22349, D.22349
	ja	.L1096	#,
	movq	-40(%rbp), %rax	# cxt, tmp89
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22349
	movq	(%rax), %rax	# MEM[(char * {ref-all})_7], D.22350
	movq	%rax, -32(%rbp)	# D.22350, MEM[(char * {ref-all})&iv]
	movq	-40(%rbp), %rax	# cxt, tmp90
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22349
	leaq	8(%rax), %rdx	#, D.22349
	movq	-40(%rbp), %rax	# cxt, tmp91
	movq	%rdx, 168(%rax)	# D.22349, cxt_2(D)->membuf.aptr
	jmp	.L1097	#
.L1096:
	.loc 1 4717 0 discriminator 2
	movl	$0, %eax	#, D.22347
	jmp	.L1104	#
.L1095:
	movq	-40(%rbp), %rax	# cxt, tmp92
	movq	216(%rax), %rax	# cxt_2(D)->fio, D.22348
	leaq	-32(%rbp), %rcx	#, tmp93
	movl	$8, %edx	#,
	movq	%rcx, %rsi	# tmp93,
	movq	%rax, %rdi	# D.22348,
	call	Perl_PerlIO_read	#
	cmpq	$8, %rax	#, D.22350
	je	.L1097	#,
	.loc 1 4717 0 discriminator 1
	movl	$0, %eax	#, D.22347
	jmp	.L1104	#
.L1097:
	.loc 1 4718 0 is_stmt 1
	movq	-32(%rbp), %rax	# iv, iv.591
	movq	%rax, %rdi	# iv.591,
	call	Perl_newSViv	#
	movq	%rax, -24(%rbp)	# tmp94, sv
.LBB292:
	.loc 1 4719 0
	cmpq	$0, -24(%rbp)	#, sv
	jne	.L1099	#,
	.loc 1 4719 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.22347
	jmp	.L1104	#
.L1099:
	.loc 1 4719 0 discriminator 2
	movq	-24(%rbp), %rax	# sv, tmp95
	movq	%rax, PL_Sv(%rip)	# tmp95, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.593
	testq	%rax, %rax	# PL_Sv.593
	je	.L1101	#,
	.loc 1 4719 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.594
	movl	8(%rax), %edx	# PL_Sv.594_19->sv_refcnt, D.22351
	addl	$1, %edx	#, D.22351
	movl	%edx, 8(%rax)	# D.22351, PL_Sv.594_19->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.594_19->sv_refcnt, D.22351
	testl	%eax, %eax	# D.22351
	je	.L1101	#,
	.loc 1 4719 0
	nop
.L1101:
	.loc 1 4719 0 discriminator 4
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.595
	movq	-40(%rbp), %rax	# cxt, tmp96
	movq	64(%rax), %rax	# cxt_2(D)->tagnum, D.22350
	leaq	1(%rax), %rsi	#, D.22350
	movq	-40(%rbp), %rcx	# cxt, tmp97
	movq	%rsi, 64(%rcx)	# D.22350, cxt_2(D)->tagnum
	movl	%eax, %ecx	# D.22350, D.22352
	movq	-40(%rbp), %rax	# cxt, tmp98
	movq	24(%rax), %rax	# cxt_2(D)->aseen, D.22353
	movl	%ecx, %esi	# D.22352,
	movq	%rax, %rdi	# D.22353,
	call	Perl_av_store	#
	testq	%rax, %rax	# D.22354
	jne	.L1102	#,
	.loc 1 4719 0 discriminator 1
	movl	$0, %eax	#, D.22347
	jmp	.L1104	#
.L1102:
	.loc 1 4719 0 discriminator 2
	cmpq	$0, -48(%rbp)	#, cname
	je	.L1103	#,
.LBB293:
	.loc 1 4719 0 discriminator 1
	movq	-48(%rbp), %rax	# cname, tmp99
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp99,
	call	Perl_gv_stashpv	#
	movq	%rax, -16(%rbp)	# tmp100, stash
	movq	-24(%rbp), %rax	# sv, tmp101
	movq	%rax, %rdi	# tmp101,
	call	Perl_newRV_noinc	#
	movq	%rax, -8(%rbp)	# tmp102, Perl_ref
	movq	-16(%rbp), %rdx	# stash, tmp103
	movq	-8(%rbp), %rax	# Perl_ref, tmp104
	movq	%rdx, %rsi	# tmp103,
	movq	%rax, %rdi	# tmp104,
	call	Perl_sv_bless	#
	movq	-8(%rbp), %rax	# Perl_ref, tmp105
	movq	(%rax), %rax	# Perl_ref_35->sv_any, D.22355
	movq	$0, (%rax)	#, MEM[(struct XRV *)_36].xrv_rv
	movq	-8(%rbp), %rax	# Perl_ref, tmp106
	movq	%rax, %rdi	# tmp106,
	call	Perl_sv_free	#
.L1103:
.LBE293:
.LBE292:
	.loc 1 4724 0 is_stmt 1
	movq	-24(%rbp), %rax	# sv, D.22347
.L1104:
	.loc 1 4725 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	retrieve_integer, .-retrieve_integer
	.type	retrieve_netint, @function
retrieve_netint:
.LFB56:
	.loc 1 4734 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# cxt, cxt
	movq	%rsi, -48(%rbp)	# cname, cname
	.loc 1 4740 0
	movq	-40(%rbp), %rax	# cxt, tmp97
	movq	216(%rax), %rax	# cxt_2(D)->fio, D.22357
	testq	%rax, %rax	# D.22357
	jne	.L1106	#,
	.loc 1 4740 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# cxt, tmp98
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22358
	leaq	4(%rax), %rdx	#, D.22358
	movq	-40(%rbp), %rax	# cxt, tmp99
	movq	176(%rax), %rax	# cxt_2(D)->membuf.aend, D.22358
	cmpq	%rax, %rdx	# D.22358, D.22358
	ja	.L1107	#,
	movq	-40(%rbp), %rax	# cxt, tmp100
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22358
	movq	%rax, %rdx	# D.22358, D.22359
	movq	-40(%rbp), %rax	# cxt, tmp101
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22358
	andq	$-4, %rax	#, D.22359
	cmpq	%rax, %rdx	# D.22359, D.22359
	jne	.L1108	#,
	movq	-40(%rbp), %rax	# cxt, tmp102
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22358
	movl	(%rax), %eax	# MEM[(int *)_12], iv.596
	movl	%eax, -28(%rbp)	# iv.596, iv
	jmp	.L1109	#
.L1108:
	.loc 1 4740 0 discriminator 2
	movq	-40(%rbp), %rax	# cxt, tmp103
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22358
	movl	(%rax), %eax	# MEM[(char * {ref-all})_14], D.22360
	movl	%eax, -28(%rbp)	# D.22360, MEM[(char * {ref-all})&iv]
.L1109:
	.loc 1 4740 0 discriminator 1
	movq	-40(%rbp), %rax	# cxt, tmp104
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22358
	leaq	4(%rax), %rdx	#, D.22358
	movq	-40(%rbp), %rax	# cxt, tmp105
	movq	%rdx, 168(%rax)	# D.22358, cxt_2(D)->membuf.aptr
	jmp	.L1110	#
.L1107:
	.loc 1 4740 0 discriminator 2
	movl	$0, %eax	#, D.22356
	jmp	.L1117	#
.L1106:
	movq	-40(%rbp), %rax	# cxt, tmp106
	movq	216(%rax), %rax	# cxt_2(D)->fio, D.22357
	leaq	-28(%rbp), %rcx	#, tmp107
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp107,
	movq	%rax, %rdi	# D.22357,
	call	Perl_PerlIO_read	#
	cmpq	$4, %rax	#, D.22361
	je	.L1110	#,
	.loc 1 4740 0 discriminator 1
	movl	$0, %eax	#, D.22356
	jmp	.L1117	#
.L1110:
	.loc 1 4742 0 is_stmt 1
	movl	-28(%rbp), %eax	# iv, iv.597
	cltq
	movq	%rax, %rdi	# D.22361,
	call	Perl_my_ntohl	#
	cltq
	movq	%rax, %rdi	# D.22361,
	call	Perl_newSViv	#
	movq	%rax, -24(%rbp)	# tmp108, sv
.LBB294:
	.loc 1 4748 0
	cmpq	$0, -24(%rbp)	#, sv
	jne	.L1112	#,
	.loc 1 4748 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.22356
	jmp	.L1117	#
.L1112:
	.loc 1 4748 0 discriminator 2
	movq	-24(%rbp), %rax	# sv, tmp109
	movq	%rax, PL_Sv(%rip)	# tmp109, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.599
	testq	%rax, %rax	# PL_Sv.599
	je	.L1114	#,
	.loc 1 4748 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.600
	movl	8(%rax), %edx	# PL_Sv.600_30->sv_refcnt, D.22362
	addl	$1, %edx	#, D.22362
	movl	%edx, 8(%rax)	# D.22362, PL_Sv.600_30->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.600_30->sv_refcnt, D.22362
	testl	%eax, %eax	# D.22362
	je	.L1114	#,
	.loc 1 4748 0
	nop
.L1114:
	.loc 1 4748 0 discriminator 4
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.601
	movq	-40(%rbp), %rax	# cxt, tmp110
	movq	64(%rax), %rax	# cxt_2(D)->tagnum, D.22361
	leaq	1(%rax), %rsi	#, D.22361
	movq	-40(%rbp), %rcx	# cxt, tmp111
	movq	%rsi, 64(%rcx)	# D.22361, cxt_2(D)->tagnum
	movl	%eax, %ecx	# D.22361, D.22360
	movq	-40(%rbp), %rax	# cxt, tmp112
	movq	24(%rax), %rax	# cxt_2(D)->aseen, D.22363
	movl	%ecx, %esi	# D.22360,
	movq	%rax, %rdi	# D.22363,
	call	Perl_av_store	#
	testq	%rax, %rax	# D.22364
	jne	.L1115	#,
	.loc 1 4748 0 discriminator 1
	movl	$0, %eax	#, D.22356
	jmp	.L1117	#
.L1115:
	.loc 1 4748 0 discriminator 2
	cmpq	$0, -48(%rbp)	#, cname
	je	.L1116	#,
.LBB295:
	.loc 1 4748 0 discriminator 1
	movq	-48(%rbp), %rax	# cname, tmp113
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp113,
	call	Perl_gv_stashpv	#
	movq	%rax, -16(%rbp)	# tmp114, stash
	movq	-24(%rbp), %rax	# sv, tmp115
	movq	%rax, %rdi	# tmp115,
	call	Perl_newRV_noinc	#
	movq	%rax, -8(%rbp)	# tmp116, Perl_ref
	movq	-16(%rbp), %rdx	# stash, tmp117
	movq	-8(%rbp), %rax	# Perl_ref, tmp118
	movq	%rdx, %rsi	# tmp117,
	movq	%rax, %rdi	# tmp118,
	call	Perl_sv_bless	#
	movq	-8(%rbp), %rax	# Perl_ref, tmp119
	movq	(%rax), %rax	# Perl_ref_46->sv_any, D.22365
	movq	$0, (%rax)	#, MEM[(struct XRV *)_47].xrv_rv
	movq	-8(%rbp), %rax	# Perl_ref, tmp120
	movq	%rax, %rdi	# tmp120,
	call	Perl_sv_free	#
.L1116:
.LBE295:
.LBE294:
	.loc 1 4752 0 is_stmt 1
	movq	-24(%rbp), %rax	# sv, D.22356
.L1117:
	.loc 1 4753 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	retrieve_netint, .-retrieve_netint
	.type	retrieve_double, @function
retrieve_double:
.LFB57:
	.loc 1 4762 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# cxt, cxt
	movq	%rsi, -48(%rbp)	# cname, cname
	.loc 1 4768 0
	movq	-40(%rbp), %rax	# cxt, tmp86
	movq	216(%rax), %rax	# cxt_2(D)->fio, D.22367
	testq	%rax, %rax	# D.22367
	jne	.L1119	#,
	.loc 1 4768 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# cxt, tmp87
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22368
	leaq	8(%rax), %rdx	#, D.22368
	movq	-40(%rbp), %rax	# cxt, tmp88
	movq	176(%rax), %rax	# cxt_2(D)->membuf.aend, D.22368
	cmpq	%rax, %rdx	# D.22368, D.22368
	ja	.L1120	#,
	movq	-40(%rbp), %rax	# cxt, tmp89
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22368
	movq	(%rax), %rax	# MEM[(char * {ref-all})_7], D.22369
	movq	%rax, -32(%rbp)	# D.22369, MEM[(char * {ref-all})&nv]
	movq	-40(%rbp), %rax	# cxt, tmp90
	movq	168(%rax), %rax	# cxt_2(D)->membuf.aptr, D.22368
	leaq	8(%rax), %rdx	#, D.22368
	movq	-40(%rbp), %rax	# cxt, tmp91
	movq	%rdx, 168(%rax)	# D.22368, cxt_2(D)->membuf.aptr
	jmp	.L1121	#
.L1120:
	.loc 1 4768 0 discriminator 2
	movl	$0, %eax	#, D.22366
	jmp	.L1128	#
.L1119:
	movq	-40(%rbp), %rax	# cxt, tmp92
	movq	216(%rax), %rax	# cxt_2(D)->fio, D.22367
	leaq	-32(%rbp), %rcx	#, tmp93
	movl	$8, %edx	#,
	movq	%rcx, %rsi	# tmp93,
	movq	%rax, %rdi	# D.22367,
	call	Perl_PerlIO_read	#
	cmpq	$8, %rax	#, D.22370
	je	.L1121	#,
	.loc 1 4768 0 discriminator 1
	movl	$0, %eax	#, D.22366
	jmp	.L1128	#
.L1121:
	.loc 1 4769 0 is_stmt 1
	movq	-32(%rbp), %rax	# nv, nv.602
	movq	%rax, -56(%rbp)	# nv.602, %sfp
	movsd	-56(%rbp), %xmm0	# %sfp,
	call	Perl_newSVnv	#
	movq	%rax, -24(%rbp)	# tmp94, sv
.LBB296:
	.loc 1 4770 0
	cmpq	$0, -24(%rbp)	#, sv
	jne	.L1123	#,
	.loc 1 4770 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.22366
	jmp	.L1128	#
.L1123:
	.loc 1 4770 0 discriminator 2
	movq	-24(%rbp), %rax	# sv, tmp95
	movq	%rax, PL_Sv(%rip)	# tmp95, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.604
	testq	%rax, %rax	# PL_Sv.604
	je	.L1125	#,
	.loc 1 4770 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.605
	movl	8(%rax), %edx	# PL_Sv.605_19->sv_refcnt, D.22371
	addl	$1, %edx	#, D.22371
	movl	%edx, 8(%rax)	# D.22371, PL_Sv.605_19->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.605_19->sv_refcnt, D.22371
	testl	%eax, %eax	# D.22371
	je	.L1125	#,
	.loc 1 4770 0
	nop
.L1125:
	.loc 1 4770 0 discriminator 4
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.606
	movq	-40(%rbp), %rax	# cxt, tmp96
	movq	64(%rax), %rax	# cxt_2(D)->tagnum, D.22370
	leaq	1(%rax), %rsi	#, D.22370
	movq	-40(%rbp), %rcx	# cxt, tmp97
	movq	%rsi, 64(%rcx)	# D.22370, cxt_2(D)->tagnum
	movl	%eax, %ecx	# D.22370, D.22372
	movq	-40(%rbp), %rax	# cxt, tmp98
	movq	24(%rax), %rax	# cxt_2(D)->aseen, D.22373
	movl	%ecx, %esi	# D.22372,
	movq	%rax, %rdi	# D.22373,
	call	Perl_av_store	#
	testq	%rax, %rax	# D.22374
	jne	.L1126	#,
	.loc 1 4770 0 discriminator 1
	movl	$0, %eax	#, D.22366
	jmp	.L1128	#
.L1126:
	.loc 1 4770 0 discriminator 2
	cmpq	$0, -48(%rbp)	#, cname
	je	.L1127	#,
.LBB297:
	.loc 1 4770 0 discriminator 1
	movq	-48(%rbp), %rax	# cname, tmp99
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp99,
	call	Perl_gv_stashpv	#
	movq	%rax, -16(%rbp)	# tmp100, stash
	movq	-24(%rbp), %rax	# sv, tmp101
	movq	%rax, %rdi	# tmp101,
	call	Perl_newRV_noinc	#
	movq	%rax, -8(%rbp)	# tmp102, Perl_ref
	movq	-16(%rbp), %rdx	# stash, tmp103
	movq	-8(%rbp), %rax	# Perl_ref, tmp104
	movq	%rdx, %rsi	# tmp103,
	movq	%rax, %rdi	# tmp104,
	call	Perl_sv_bless	#
	movq	-8(%rbp), %rax	# Perl_ref, tmp105
	movq	(%rax), %rax	# Perl_ref_35->sv_any, D.22375
	movq	$0, (%rax)	#, MEM[(struct XRV *)_36].xrv_rv
	movq	-8(%rbp), %rax	# Perl_ref, tmp106
	movq	%rax, %rdi	# tmp106,
	call	Perl_sv_free	#
.L1127:
.LBE297:
.LBE296:
	.loc 1 4775 0 is_stmt 1
	movq	-24(%rbp), %rax	# sv, D.22366
.L1128:
	.loc 1 4776 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	retrieve_double, .-retrieve_double
	.type	retrieve_byte, @function
retrieve_byte:
.LFB58:
	.loc 1 4785 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# cxt, cxt
	movq	%rsi, -48(%rbp)	# cname, cname
	.loc 1 4792 0
	movq	-40(%rbp), %rax	# cxt, tmp86
	movq	216(%rax), %rax	# cxt_3(D)->fio, D.22377
	testq	%rax, %rax	# D.22377
	jne	.L1130	#,
	.loc 1 4792 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# cxt, tmp87
	movq	168(%rax), %rdx	# cxt_3(D)->membuf.aptr, D.22378
	movq	-40(%rbp), %rax	# cxt, tmp88
	movq	176(%rax), %rax	# cxt_3(D)->membuf.aend, D.22378
	cmpq	%rax, %rdx	# D.22378, D.22378
	jae	.L1131	#,
	movq	-40(%rbp), %rax	# cxt, tmp89
	movq	168(%rax), %rax	# cxt_3(D)->membuf.aptr, D.22378
	leaq	1(%rax), %rcx	#, D.22378
	movq	-40(%rbp), %rdx	# cxt, tmp90
	movq	%rcx, 168(%rdx)	# D.22378, cxt_3(D)->membuf.aptr
	movzbl	(%rax), %eax	# *_8, D.22379
	movzbl	%al, %eax	# D.22380, tmp91
	movl	%eax, -28(%rbp)	# tmp91, siv
	jmp	.L1132	#
.L1131:
	.loc 1 4792 0 discriminator 2
	movl	$0, %eax	#, D.22376
	jmp	.L1133	#
.L1130:
	movq	-40(%rbp), %rax	# cxt, tmp92
	movq	216(%rax), %rax	# cxt_3(D)->fio, D.22377
	movq	%rax, %rdi	# D.22377,
	call	PerlIO_getc	#
	movl	%eax, -28(%rbp)	# tmp93, siv
	cmpl	$-1, -28(%rbp)	#, siv
	jne	.L1132	#,
	.loc 1 4792 0 discriminator 1
	movl	$0, %eax	#, D.22376
	jmp	.L1133	#
.L1132:
	.loc 1 4794 0 is_stmt 1
	movl	-28(%rbp), %eax	# siv, tmp94
	addl	$-128, %eax	#, D.22381
	movb	%al, -29(%rbp)	# D.22381, tmp
	.loc 1 4795 0
	movsbq	-29(%rbp), %rax	# tmp, D.22382
	movq	%rax, %rdi	# D.22382,
	call	Perl_newSViv	#
	movq	%rax, -24(%rbp)	# tmp95, sv
.LBB298:
	.loc 1 4796 0
	cmpq	$0, -24(%rbp)	#, sv
	jne	.L1134	#,
	.loc 1 4796 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.22376
	jmp	.L1133	#
.L1134:
	.loc 1 4796 0 discriminator 2
	movq	-24(%rbp), %rax	# sv, tmp96
	movq	%rax, PL_Sv(%rip)	# tmp96, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.608
	testq	%rax, %rax	# PL_Sv.608
	je	.L1136	#,
	.loc 1 4796 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.609
	movl	8(%rax), %edx	# PL_Sv.609_24->sv_refcnt, D.22383
	addl	$1, %edx	#, D.22383
	movl	%edx, 8(%rax)	# D.22383, PL_Sv.609_24->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.609_24->sv_refcnt, D.22383
	testl	%eax, %eax	# D.22383
	je	.L1136	#,
	.loc 1 4796 0
	nop
.L1136:
	.loc 1 4796 0 discriminator 4
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.610
	movq	-40(%rbp), %rax	# cxt, tmp97
	movq	64(%rax), %rax	# cxt_3(D)->tagnum, D.22382
	leaq	1(%rax), %rsi	#, D.22382
	movq	-40(%rbp), %rcx	# cxt, tmp98
	movq	%rsi, 64(%rcx)	# D.22382, cxt_3(D)->tagnum
	movl	%eax, %ecx	# D.22382, D.22384
	movq	-40(%rbp), %rax	# cxt, tmp99
	movq	24(%rax), %rax	# cxt_3(D)->aseen, D.22385
	movl	%ecx, %esi	# D.22384,
	movq	%rax, %rdi	# D.22385,
	call	Perl_av_store	#
	testq	%rax, %rax	# D.22386
	jne	.L1137	#,
	.loc 1 4796 0 discriminator 1
	movl	$0, %eax	#, D.22376
	jmp	.L1133	#
.L1137:
	.loc 1 4796 0 discriminator 2
	cmpq	$0, -48(%rbp)	#, cname
	je	.L1138	#,
.LBB299:
	.loc 1 4796 0 discriminator 1
	movq	-48(%rbp), %rax	# cname, tmp100
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp100,
	call	Perl_gv_stashpv	#
	movq	%rax, -16(%rbp)	# tmp101, stash
	movq	-24(%rbp), %rax	# sv, tmp102
	movq	%rax, %rdi	# tmp102,
	call	Perl_newRV_noinc	#
	movq	%rax, -8(%rbp)	# tmp103, Perl_ref
	movq	-16(%rbp), %rdx	# stash, tmp104
	movq	-8(%rbp), %rax	# Perl_ref, tmp105
	movq	%rdx, %rsi	# tmp104,
	movq	%rax, %rdi	# tmp105,
	call	Perl_sv_bless	#
	movq	-8(%rbp), %rax	# Perl_ref, tmp106
	movq	(%rax), %rax	# Perl_ref_40->sv_any, D.22387
	movq	$0, (%rax)	#, MEM[(struct XRV *)_41].xrv_rv
	movq	-8(%rbp), %rax	# Perl_ref, tmp107
	movq	%rax, %rdi	# tmp107,
	call	Perl_sv_free	#
.L1138:
.LBE299:
.LBE298:
	.loc 1 4801 0 is_stmt 1
	movq	-24(%rbp), %rax	# sv, D.22376
.L1133:
	.loc 1 4802 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	retrieve_byte, .-retrieve_byte
	.type	retrieve_undef, @function
retrieve_undef:
.LFB59:
	.loc 1 4810 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# cxt, cxt
	movq	%rsi, -48(%rbp)	# cname, cname
	.loc 1 4815 0
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, -24(%rbp)	# tmp75, sv
.LBB300:
	.loc 1 4816 0
	cmpq	$0, -24(%rbp)	#, sv
	jne	.L1140	#,
	.loc 1 4816 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.22388
	jmp	.L1141	#
.L1140:
	.loc 1 4816 0 discriminator 2
	movq	-24(%rbp), %rax	# sv, tmp76
	movq	%rax, PL_Sv(%rip)	# tmp76, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.612
	testq	%rax, %rax	# PL_Sv.612
	je	.L1143	#,
	.loc 1 4816 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.613
	movl	8(%rax), %edx	# PL_Sv.613_5->sv_refcnt, D.22389
	addl	$1, %edx	#, D.22389
	movl	%edx, 8(%rax)	# D.22389, PL_Sv.613_5->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.613_5->sv_refcnt, D.22389
	testl	%eax, %eax	# D.22389
	je	.L1143	#,
	.loc 1 4816 0
	nop
.L1143:
	.loc 1 4816 0 discriminator 4
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.614
	movq	-40(%rbp), %rax	# cxt, tmp77
	movq	64(%rax), %rax	# cxt_12(D)->tagnum, D.22390
	leaq	1(%rax), %rsi	#, D.22390
	movq	-40(%rbp), %rcx	# cxt, tmp78
	movq	%rsi, 64(%rcx)	# D.22390, cxt_12(D)->tagnum
	movl	%eax, %ecx	# D.22390, D.22391
	movq	-40(%rbp), %rax	# cxt, tmp79
	movq	24(%rax), %rax	# cxt_12(D)->aseen, D.22392
	movl	%ecx, %esi	# D.22391,
	movq	%rax, %rdi	# D.22392,
	call	Perl_av_store	#
	testq	%rax, %rax	# D.22393
	jne	.L1144	#,
	.loc 1 4816 0 discriminator 1
	movl	$0, %eax	#, D.22388
	jmp	.L1141	#
.L1144:
	.loc 1 4816 0 discriminator 2
	cmpq	$0, -48(%rbp)	#, cname
	je	.L1145	#,
.LBB301:
	.loc 1 4816 0 discriminator 1
	movq	-48(%rbp), %rax	# cname, tmp80
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp80,
	call	Perl_gv_stashpv	#
	movq	%rax, -16(%rbp)	# tmp81, stash
	movq	-24(%rbp), %rax	# sv, tmp82
	movq	%rax, %rdi	# tmp82,
	call	Perl_newRV_noinc	#
	movq	%rax, -8(%rbp)	# tmp83, Perl_ref
	movq	-16(%rbp), %rdx	# stash, tmp84
	movq	-8(%rbp), %rax	# Perl_ref, tmp85
	movq	%rdx, %rsi	# tmp84,
	movq	%rax, %rdi	# tmp85,
	call	Perl_sv_bless	#
	movq	-8(%rbp), %rax	# Perl_ref, tmp86
	movq	(%rax), %rax	# Perl_ref_22->sv_any, D.22394
	movq	$0, (%rax)	#, MEM[(struct XRV *)_23].xrv_rv
	movq	-8(%rbp), %rax	# Perl_ref, tmp87
	movq	%rax, %rdi	# tmp87,
	call	Perl_sv_free	#
.L1145:
.LBE301:
.LBE300:
	.loc 1 4818 0 is_stmt 1
	movq	-24(%rbp), %rax	# sv, D.22388
.L1141:
	.loc 1 4819 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	retrieve_undef, .-retrieve_undef
	.type	retrieve_sv_undef, @function
retrieve_sv_undef:
.LFB60:
	.loc 1 4827 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# cxt, cxt
	movq	%rsi, -48(%rbp)	# cname, cname
	.loc 1 4828 0
	movq	$PL_sv_undef, -24(%rbp)	#, sv
	.loc 1 4835 0
	movq	-40(%rbp), %rax	# cxt, tmp69
	movq	32(%rax), %rax	# cxt_3(D)->where_is_undef, D.22396
	cmpq	$-1, %rax	#, D.22396
	jne	.L1147	#,
	.loc 1 4836 0
	movq	-40(%rbp), %rax	# cxt, tmp70
	movq	64(%rax), %rdx	# cxt_3(D)->tagnum, D.22396
	movq	-40(%rbp), %rax	# cxt, tmp71
	movq	%rdx, 32(%rax)	# D.22396, cxt_3(D)->where_is_undef
.L1147:
.LBB302:
	.loc 1 4838 0
	cmpq	$0, -24(%rbp)	#, sv
	jne	.L1148	#,
	.loc 1 4838 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.22395
	jmp	.L1149	#
.L1148:
	.loc 1 4838 0 discriminator 2
	movq	-40(%rbp), %rax	# cxt, tmp72
	movq	64(%rax), %rax	# cxt_3(D)->tagnum, D.22396
	leaq	1(%rax), %rcx	#, D.22396
	movq	-40(%rbp), %rdx	# cxt, tmp73
	movq	%rcx, 64(%rdx)	# D.22396, cxt_3(D)->tagnum
	movl	%eax, %ecx	# D.22396, D.22397
	movq	-40(%rbp), %rax	# cxt, tmp74
	movq	24(%rax), %rax	# cxt_3(D)->aseen, D.22398
	movq	-24(%rbp), %rdx	# sv, tmp75
	movl	%ecx, %esi	# D.22397,
	movq	%rax, %rdi	# D.22398,
	call	Perl_av_store	#
	testq	%rax, %rax	# D.22399
	jne	.L1150	#,
	.loc 1 4838 0 discriminator 1
	movl	$0, %eax	#, D.22395
	jmp	.L1149	#
.L1150:
	.loc 1 4838 0 discriminator 2
	cmpq	$0, -48(%rbp)	#, cname
	je	.L1151	#,
.LBB303:
	.loc 1 4838 0 discriminator 1
	movq	-48(%rbp), %rax	# cname, tmp76
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp76,
	call	Perl_gv_stashpv	#
	movq	%rax, -16(%rbp)	# tmp77, stash
	movq	-24(%rbp), %rax	# sv, tmp78
	movq	%rax, %rdi	# tmp78,
	call	Perl_newRV_noinc	#
	movq	%rax, -8(%rbp)	# tmp79, Perl_ref
	movq	-16(%rbp), %rdx	# stash, tmp80
	movq	-8(%rbp), %rax	# Perl_ref, tmp81
	movq	%rdx, %rsi	# tmp80,
	movq	%rax, %rdi	# tmp81,
	call	Perl_sv_bless	#
	movq	-8(%rbp), %rax	# Perl_ref, tmp82
	movq	(%rax), %rax	# Perl_ref_16->sv_any, D.22400
	movq	$0, (%rax)	#, MEM[(struct XRV *)_17].xrv_rv
	movq	-8(%rbp), %rax	# Perl_ref, tmp83
	movq	%rax, %rdi	# tmp83,
	call	Perl_sv_free	#
.L1151:
.LBE303:
.LBE302:
	.loc 1 4839 0 is_stmt 1
	movq	-24(%rbp), %rax	# sv, D.22395
.L1149:
	.loc 1 4840 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	retrieve_sv_undef, .-retrieve_sv_undef
	.type	retrieve_sv_yes, @function
retrieve_sv_yes:
.LFB61:
	.loc 1 4848 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# cxt, cxt
	movq	%rsi, -48(%rbp)	# cname, cname
	.loc 1 4849 0
	movq	$PL_sv_yes, -24(%rbp)	#, sv
.LBB304:
	.loc 1 4853 0
	cmpq	$0, -24(%rbp)	#, sv
	jne	.L1153	#,
	.loc 1 4853 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.22401
	jmp	.L1154	#
.L1153:
	.loc 1 4853 0 discriminator 2
	movq	-40(%rbp), %rax	# cxt, tmp67
	movq	64(%rax), %rax	# cxt_4(D)->tagnum, D.22402
	leaq	1(%rax), %rcx	#, D.22402
	movq	-40(%rbp), %rdx	# cxt, tmp68
	movq	%rcx, 64(%rdx)	# D.22402, cxt_4(D)->tagnum
	movl	%eax, %ecx	# D.22402, D.22403
	movq	-40(%rbp), %rax	# cxt, tmp69
	movq	24(%rax), %rax	# cxt_4(D)->aseen, D.22404
	movq	-24(%rbp), %rdx	# sv, tmp70
	movl	%ecx, %esi	# D.22403,
	movq	%rax, %rdi	# D.22404,
	call	Perl_av_store	#
	testq	%rax, %rax	# D.22405
	jne	.L1155	#,
	.loc 1 4853 0 discriminator 1
	movl	$0, %eax	#, D.22401
	jmp	.L1154	#
.L1155:
	.loc 1 4853 0 discriminator 2
	cmpq	$0, -48(%rbp)	#, cname
	je	.L1156	#,
.LBB305:
	.loc 1 4853 0 discriminator 1
	movq	-48(%rbp), %rax	# cname, tmp71
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp71,
	call	Perl_gv_stashpv	#
	movq	%rax, -16(%rbp)	# tmp72, stash
	movq	-24(%rbp), %rax	# sv, tmp73
	movq	%rax, %rdi	# tmp73,
	call	Perl_newRV_noinc	#
	movq	%rax, -8(%rbp)	# tmp74, Perl_ref
	movq	-16(%rbp), %rdx	# stash, tmp75
	movq	-8(%rbp), %rax	# Perl_ref, tmp76
	movq	%rdx, %rsi	# tmp75,
	movq	%rax, %rdi	# tmp76,
	call	Perl_sv_bless	#
	movq	-8(%rbp), %rax	# Perl_ref, tmp77
	movq	(%rax), %rax	# Perl_ref_14->sv_any, D.22406
	movq	$0, (%rax)	#, MEM[(struct XRV *)_15].xrv_rv
	movq	-8(%rbp), %rax	# Perl_ref, tmp78
	movq	%rax, %rdi	# tmp78,
	call	Perl_sv_free	#
.L1156:
.LBE305:
.LBE304:
	.loc 1 4854 0 is_stmt 1
	movq	-24(%rbp), %rax	# sv, D.22401
.L1154:
	.loc 1 4855 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	retrieve_sv_yes, .-retrieve_sv_yes
	.type	retrieve_sv_no, @function
retrieve_sv_no:
.LFB62:
	.loc 1 4863 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# cxt, cxt
	movq	%rsi, -48(%rbp)	# cname, cname
	.loc 1 4864 0
	movq	$PL_sv_no, -24(%rbp)	#, sv
.LBB306:
	.loc 1 4868 0
	cmpq	$0, -24(%rbp)	#, sv
	jne	.L1158	#,
	.loc 1 4868 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.22407
	jmp	.L1159	#
.L1158:
	.loc 1 4868 0 discriminator 2
	movq	-40(%rbp), %rax	# cxt, tmp67
	movq	64(%rax), %rax	# cxt_4(D)->tagnum, D.22408
	leaq	1(%rax), %rcx	#, D.22408
	movq	-40(%rbp), %rdx	# cxt, tmp68
	movq	%rcx, 64(%rdx)	# D.22408, cxt_4(D)->tagnum
	movl	%eax, %ecx	# D.22408, D.22409
	movq	-40(%rbp), %rax	# cxt, tmp69
	movq	24(%rax), %rax	# cxt_4(D)->aseen, D.22410
	movq	-24(%rbp), %rdx	# sv, tmp70
	movl	%ecx, %esi	# D.22409,
	movq	%rax, %rdi	# D.22410,
	call	Perl_av_store	#
	testq	%rax, %rax	# D.22411
	jne	.L1160	#,
	.loc 1 4868 0 discriminator 1
	movl	$0, %eax	#, D.22407
	jmp	.L1159	#
.L1160:
	.loc 1 4868 0 discriminator 2
	cmpq	$0, -48(%rbp)	#, cname
	je	.L1161	#,
.LBB307:
	.loc 1 4868 0 discriminator 1
	movq	-48(%rbp), %rax	# cname, tmp71
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp71,
	call	Perl_gv_stashpv	#
	movq	%rax, -16(%rbp)	# tmp72, stash
	movq	-24(%rbp), %rax	# sv, tmp73
	movq	%rax, %rdi	# tmp73,
	call	Perl_newRV_noinc	#
	movq	%rax, -8(%rbp)	# tmp74, Perl_ref
	movq	-16(%rbp), %rdx	# stash, tmp75
	movq	-8(%rbp), %rax	# Perl_ref, tmp76
	movq	%rdx, %rsi	# tmp75,
	movq	%rax, %rdi	# tmp76,
	call	Perl_sv_bless	#
	movq	-8(%rbp), %rax	# Perl_ref, tmp77
	movq	(%rax), %rax	# Perl_ref_14->sv_any, D.22412
	movq	$0, (%rax)	#, MEM[(struct XRV *)_15].xrv_rv
	movq	-8(%rbp), %rax	# Perl_ref, tmp78
	movq	%rax, %rdi	# tmp78,
	call	Perl_sv_free	#
.L1161:
.LBE307:
.LBE306:
	.loc 1 4869 0 is_stmt 1
	movq	-24(%rbp), %rax	# sv, D.22407
.L1159:
	.loc 1 4870 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	retrieve_sv_no, .-retrieve_sv_no
	.type	retrieve_array, @function
retrieve_array:
.LFB63:
	.loc 1 4882 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# cxt, cxt
	movq	%rsi, -64(%rbp)	# cname, cname
.LBB308:
	.loc 1 4894 0
	movq	-56(%rbp), %rax	# cxt, tmp101
	movq	216(%rax), %rax	# cxt_3(D)->fio, D.22414
	testq	%rax, %rax	# D.22414
	jne	.L1163	#,
	.loc 1 4894 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# cxt, tmp102
	movq	168(%rax), %rax	# cxt_3(D)->membuf.aptr, D.22415
	leaq	4(%rax), %rdx	#, D.22415
	movq	-56(%rbp), %rax	# cxt, tmp103
	movq	176(%rax), %rax	# cxt_3(D)->membuf.aend, D.22415
	cmpq	%rax, %rdx	# D.22415, D.22415
	ja	.L1164	#,
	movq	-56(%rbp), %rax	# cxt, tmp104
	movq	168(%rax), %rax	# cxt_3(D)->membuf.aptr, D.22415
	movq	%rax, %rdx	# D.22415, D.22416
	movq	-56(%rbp), %rax	# cxt, tmp105
	movq	168(%rax), %rax	# cxt_3(D)->membuf.aptr, D.22415
	andq	$-4, %rax	#, D.22416
	cmpq	%rax, %rdx	# D.22416, D.22416
	jne	.L1165	#,
	movq	-56(%rbp), %rax	# cxt, tmp106
	movq	168(%rax), %rax	# cxt_3(D)->membuf.aptr, D.22415
	movl	(%rax), %eax	# MEM[(int *)_13], len.615
	movl	%eax, -40(%rbp)	# len.615, len
	jmp	.L1166	#
.L1165:
	.loc 1 4894 0 discriminator 2
	movq	-56(%rbp), %rax	# cxt, tmp107
	movq	168(%rax), %rax	# cxt_3(D)->membuf.aptr, D.22415
	movl	(%rax), %eax	# MEM[(char * {ref-all})_15], D.22417
	movl	%eax, -40(%rbp)	# D.22417, MEM[(char * {ref-all})&len]
.L1166:
	.loc 1 4894 0 discriminator 1
	movq	-56(%rbp), %rax	# cxt, tmp108
	movq	168(%rax), %rax	# cxt_3(D)->membuf.aptr, D.22415
	leaq	4(%rax), %rdx	#, D.22415
	movq	-56(%rbp), %rax	# cxt, tmp109
	movq	%rdx, 168(%rax)	# D.22415, cxt_3(D)->membuf.aptr
	jmp	.L1167	#
.L1164:
	.loc 1 4894 0 discriminator 2
	movl	$0, %eax	#, D.22413
	jmp	.L1181	#
.L1163:
	movq	-56(%rbp), %rax	# cxt, tmp110
	movq	216(%rax), %rax	# cxt_3(D)->fio, D.22414
	leaq	-40(%rbp), %rcx	#, tmp111
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp111,
	movq	%rax, %rdi	# D.22414,
	call	Perl_PerlIO_read	#
	cmpq	$4, %rax	#, D.22418
	je	.L1167	#,
	.loc 1 4894 0 discriminator 1
	movl	$0, %eax	#, D.22413
	jmp	.L1181	#
.L1167:
	.loc 1 4894 0 discriminator 2
	movq	-56(%rbp), %rax	# cxt, tmp112
	movl	80(%rax), %eax	# cxt_3(D)->netorder, D.22417
	testl	%eax, %eax	# D.22417
	je	.L1169	#,
	.loc 1 4894 0 discriminator 1
	movl	-40(%rbp), %eax	# len, len.616
	cltq
	movq	%rax, %rdi	# D.22418,
	call	Perl_my_ntohl	#
	movl	%eax, -40(%rbp)	# len.617, len
.L1169:
.LBE308:
	.loc 1 4896 0 is_stmt 1
	call	Perl_newAV	#
	movq	%rax, -32(%rbp)	# tmp113, av
.LBB309:
	.loc 1 4897 0
	cmpq	$0, -32(%rbp)	#, av
	jne	.L1170	#,
	.loc 1 4897 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.22413
	jmp	.L1181	#
.L1170:
	.loc 1 4897 0 discriminator 2
	movq	-32(%rbp), %rax	# av, tmp114
	movq	%rax, PL_Sv(%rip)	# tmp114, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.619
	testq	%rax, %rax	# PL_Sv.619
	je	.L1172	#,
	.loc 1 4897 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.620
	movl	8(%rax), %edx	# PL_Sv.620_31->sv_refcnt, D.22419
	addl	$1, %edx	#, D.22419
	movl	%edx, 8(%rax)	# D.22419, PL_Sv.620_31->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.620_31->sv_refcnt, D.22419
	testl	%eax, %eax	# D.22419
	je	.L1172	#,
	.loc 1 4897 0
	nop
.L1172:
	.loc 1 4897 0 discriminator 4
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.621
	movq	-56(%rbp), %rax	# cxt, tmp115
	movq	64(%rax), %rax	# cxt_3(D)->tagnum, D.22418
	leaq	1(%rax), %rsi	#, D.22418
	movq	-56(%rbp), %rcx	# cxt, tmp116
	movq	%rsi, 64(%rcx)	# D.22418, cxt_3(D)->tagnum
	movl	%eax, %ecx	# D.22418, D.22417
	movq	-56(%rbp), %rax	# cxt, tmp117
	movq	24(%rax), %rax	# cxt_3(D)->aseen, D.22420
	movl	%ecx, %esi	# D.22417,
	movq	%rax, %rdi	# D.22420,
	call	Perl_av_store	#
	testq	%rax, %rax	# D.22421
	jne	.L1173	#,
	.loc 1 4897 0 discriminator 1
	movl	$0, %eax	#, D.22413
	jmp	.L1181	#
.L1173:
	.loc 1 4897 0 discriminator 2
	cmpq	$0, -64(%rbp)	#, cname
	je	.L1174	#,
.LBB310:
	.loc 1 4897 0 discriminator 1
	movq	-64(%rbp), %rax	# cname, tmp118
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp118,
	call	Perl_gv_stashpv	#
	movq	%rax, -24(%rbp)	# tmp119, stash
	movq	-32(%rbp), %rax	# av, tmp120
	movq	%rax, %rdi	# tmp120,
	call	Perl_newRV_noinc	#
	movq	%rax, -16(%rbp)	# tmp121, Perl_ref
	movq	-24(%rbp), %rdx	# stash, tmp122
	movq	-16(%rbp), %rax	# Perl_ref, tmp123
	movq	%rdx, %rsi	# tmp122,
	movq	%rax, %rdi	# tmp123,
	call	Perl_sv_bless	#
	movq	-16(%rbp), %rax	# Perl_ref, tmp124
	movq	(%rax), %rax	# Perl_ref_47->sv_any, D.22422
	movq	$0, (%rax)	#, MEM[(struct XRV *)_48].xrv_rv
	movq	-16(%rbp), %rax	# Perl_ref, tmp125
	movq	%rax, %rdi	# tmp125,
	call	Perl_sv_free	#
.L1174:
.LBE310:
.LBE309:
	.loc 1 4898 0 is_stmt 1
	movl	-40(%rbp), %eax	# len, len.622
	testl	%eax, %eax	# len.622
	je	.L1175	#,
	.loc 1 4899 0
	movl	-40(%rbp), %edx	# len, len.623
	movq	-32(%rbp), %rax	# av, tmp126
	movl	%edx, %esi	# len.623,
	movq	%rax, %rdi	# tmp126,
	call	Perl_av_extend	#
	.loc 1 4907 0
	movl	$0, -36(%rbp)	#, i
	jmp	.L1177	#
.L1175:
	.loc 1 4901 0
	movq	-32(%rbp), %rax	# av, D.22413
	jmp	.L1181	#
.L1180:
	.loc 1 4909 0
	movq	-56(%rbp), %rax	# cxt, tmp127
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp127,
	call	retrieve	#
	movq	%rax, -8(%rbp)	# tmp128, sv
	.loc 1 4910 0
	cmpq	$0, -8(%rbp)	#, sv
	jne	.L1178	#,
	.loc 1 4911 0
	movl	$0, %eax	#, D.22413
	jmp	.L1181	#
.L1178:
	.loc 1 4912 0
	movq	-8(%rbp), %rdx	# sv, tmp129
	movl	-36(%rbp), %ecx	# i, tmp130
	movq	-32(%rbp), %rax	# av, tmp131
	movl	%ecx, %esi	# tmp130,
	movq	%rax, %rdi	# tmp131,
	call	Perl_av_store	#
	testq	%rax, %rax	# D.22421
	jne	.L1179	#,
	.loc 1 4913 0
	movl	$0, %eax	#, D.22413
	jmp	.L1181	#
.L1179:
	.loc 1 4907 0
	addl	$1, -36(%rbp)	#, i
.L1177:
	.loc 1 4907 0 is_stmt 0 discriminator 1
	movl	-40(%rbp), %eax	# len, len.624
	cmpl	%eax, -36(%rbp)	# len.624, i
	jl	.L1180	#,
	.loc 1 4918 0 is_stmt 1
	movq	-32(%rbp), %rax	# av, D.22413
.L1181:
	.loc 1 4919 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	retrieve_array, .-retrieve_array
	.type	retrieve_hash, @function
retrieve_hash:
.LFB64:
	.loc 1 4933 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# cxt, cxt
	movq	%rsi, -64(%rbp)	# cname, cname
.LBB311:
	.loc 1 4946 0
	movq	-56(%rbp), %rax	# cxt, tmp163
	movq	216(%rax), %rax	# cxt_3(D)->fio, D.22424
	testq	%rax, %rax	# D.22424
	jne	.L1183	#,
	.loc 1 4946 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# cxt, tmp164
	movq	168(%rax), %rax	# cxt_3(D)->membuf.aptr, D.22425
	leaq	4(%rax), %rdx	#, D.22425
	movq	-56(%rbp), %rax	# cxt, tmp165
	movq	176(%rax), %rax	# cxt_3(D)->membuf.aend, D.22425
	cmpq	%rax, %rdx	# D.22425, D.22425
	ja	.L1184	#,
	movq	-56(%rbp), %rax	# cxt, tmp166
	movq	168(%rax), %rax	# cxt_3(D)->membuf.aptr, D.22425
	movq	%rax, %rdx	# D.22425, D.22426
	movq	-56(%rbp), %rax	# cxt, tmp167
	movq	168(%rax), %rax	# cxt_3(D)->membuf.aptr, D.22425
	andq	$-4, %rax	#, D.22426
	cmpq	%rax, %rdx	# D.22426, D.22426
	jne	.L1185	#,
	movq	-56(%rbp), %rax	# cxt, tmp168
	movq	168(%rax), %rax	# cxt_3(D)->membuf.aptr, D.22425
	movl	(%rax), %eax	# MEM[(int *)_13], len.625
	movl	%eax, -44(%rbp)	# len.625, len
	jmp	.L1186	#
.L1185:
	.loc 1 4946 0 discriminator 2
	movq	-56(%rbp), %rax	# cxt, tmp169
	movq	168(%rax), %rax	# cxt_3(D)->membuf.aptr, D.22425
	movl	(%rax), %eax	# MEM[(char * {ref-all})_15], D.22427
	movl	%eax, -44(%rbp)	# D.22427, MEM[(char * {ref-all})&len]
.L1186:
	.loc 1 4946 0 discriminator 1
	movq	-56(%rbp), %rax	# cxt, tmp170
	movq	168(%rax), %rax	# cxt_3(D)->membuf.aptr, D.22425
	leaq	4(%rax), %rdx	#, D.22425
	movq	-56(%rbp), %rax	# cxt, tmp171
	movq	%rdx, 168(%rax)	# D.22425, cxt_3(D)->membuf.aptr
	jmp	.L1187	#
.L1184:
	.loc 1 4946 0 discriminator 2
	movl	$0, %eax	#, D.22423
	jmp	.L1210	#
.L1183:
	movq	-56(%rbp), %rax	# cxt, tmp172
	movq	216(%rax), %rax	# cxt_3(D)->fio, D.22424
	leaq	-44(%rbp), %rcx	#, tmp173
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp173,
	movq	%rax, %rdi	# D.22424,
	call	Perl_PerlIO_read	#
	cmpq	$4, %rax	#, D.22428
	je	.L1187	#,
	.loc 1 4946 0 discriminator 1
	movl	$0, %eax	#, D.22423
	jmp	.L1210	#
.L1187:
	.loc 1 4946 0 discriminator 2
	movq	-56(%rbp), %rax	# cxt, tmp174
	movl	80(%rax), %eax	# cxt_3(D)->netorder, D.22427
	testl	%eax, %eax	# D.22427
	je	.L1189	#,
	.loc 1 4946 0 discriminator 1
	movl	-44(%rbp), %eax	# len, len.626
	cltq
	movq	%rax, %rdi	# D.22428,
	call	Perl_my_ntohl	#
	movl	%eax, -44(%rbp)	# len.627, len
.L1189:
.LBE311:
	.loc 1 4948 0 is_stmt 1
	call	Perl_newHV	#
	movq	%rax, -32(%rbp)	# tmp175, hv
.LBB312:
	.loc 1 4949 0
	cmpq	$0, -32(%rbp)	#, hv
	jne	.L1190	#,
	.loc 1 4949 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.22423
	jmp	.L1210	#
.L1190:
	.loc 1 4949 0 discriminator 2
	movq	-32(%rbp), %rax	# hv, tmp176
	movq	%rax, PL_Sv(%rip)	# tmp176, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.629
	testq	%rax, %rax	# PL_Sv.629
	je	.L1192	#,
	.loc 1 4949 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.630
	movl	8(%rax), %edx	# PL_Sv.630_31->sv_refcnt, D.22429
	addl	$1, %edx	#, D.22429
	movl	%edx, 8(%rax)	# D.22429, PL_Sv.630_31->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.630_31->sv_refcnt, D.22429
	testl	%eax, %eax	# D.22429
	je	.L1192	#,
	.loc 1 4949 0
	nop
.L1192:
	.loc 1 4949 0 discriminator 4
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.631
	movq	-56(%rbp), %rax	# cxt, tmp177
	movq	64(%rax), %rax	# cxt_3(D)->tagnum, D.22428
	leaq	1(%rax), %rsi	#, D.22428
	movq	-56(%rbp), %rcx	# cxt, tmp178
	movq	%rsi, 64(%rcx)	# D.22428, cxt_3(D)->tagnum
	movl	%eax, %ecx	# D.22428, D.22427
	movq	-56(%rbp), %rax	# cxt, tmp179
	movq	24(%rax), %rax	# cxt_3(D)->aseen, D.22430
	movl	%ecx, %esi	# D.22427,
	movq	%rax, %rdi	# D.22430,
	call	Perl_av_store	#
	testq	%rax, %rax	# D.22431
	jne	.L1193	#,
	.loc 1 4949 0 discriminator 1
	movl	$0, %eax	#, D.22423
	jmp	.L1210	#
.L1193:
	.loc 1 4949 0 discriminator 2
	cmpq	$0, -64(%rbp)	#, cname
	je	.L1194	#,
.LBB313:
	.loc 1 4949 0 discriminator 1
	movq	-64(%rbp), %rax	# cname, tmp180
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp180,
	call	Perl_gv_stashpv	#
	movq	%rax, -24(%rbp)	# tmp181, stash
	movq	-32(%rbp), %rax	# hv, tmp182
	movq	%rax, %rdi	# tmp182,
	call	Perl_newRV_noinc	#
	movq	%rax, -16(%rbp)	# tmp183, Perl_ref
	movq	-24(%rbp), %rdx	# stash, tmp184
	movq	-16(%rbp), %rax	# Perl_ref, tmp185
	movq	%rdx, %rsi	# tmp184,
	movq	%rax, %rdi	# tmp185,
	call	Perl_sv_bless	#
	movq	-16(%rbp), %rax	# Perl_ref, tmp186
	movq	(%rax), %rax	# Perl_ref_47->sv_any, D.22432
	movq	$0, (%rax)	#, MEM[(struct XRV *)_48].xrv_rv
	movq	-16(%rbp), %rax	# Perl_ref, tmp187
	movq	%rax, %rdi	# tmp187,
	call	Perl_sv_free	#
.L1194:
.LBE313:
.LBE312:
	.loc 1 4950 0 is_stmt 1
	movl	-44(%rbp), %eax	# len, len.632
	testl	%eax, %eax	# len.632
	jne	.L1195	#,
	.loc 1 4951 0
	movq	-32(%rbp), %rax	# hv, D.22423
	jmp	.L1210	#
.L1195:
	.loc 1 4952 0
	movl	-44(%rbp), %eax	# len, len.633
	movslq	%eax, %rdx	# len.633, D.22428
	movq	-32(%rbp), %rax	# hv, tmp188
	movq	%rdx, %rsi	# D.22428,
	movq	%rax, %rdi	# tmp188,
	call	Perl_hv_ksplit	#
	.loc 1 4958 0
	movl	$0, -36(%rbp)	#, i
	jmp	.L1196	#
.L1209:
	.loc 1 4964 0
	movq	-56(%rbp), %rax	# cxt, tmp189
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp189,
	call	retrieve	#
	movq	%rax, -8(%rbp)	# tmp190, sv
	.loc 1 4965 0
	cmpq	$0, -8(%rbp)	#, sv
	jne	.L1197	#,
	.loc 1 4966 0
	movl	$0, %eax	#, D.22423
	jmp	.L1210	#
.L1197:
.LBB314:
	.loc 1 4975 0
	movq	-56(%rbp), %rax	# cxt, tmp191
	movq	216(%rax), %rax	# cxt_3(D)->fio, D.22424
	testq	%rax, %rax	# D.22424
	jne	.L1198	#,
	.loc 1 4975 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# cxt, tmp192
	movq	168(%rax), %rax	# cxt_3(D)->membuf.aptr, D.22425
	leaq	4(%rax), %rdx	#, D.22425
	movq	-56(%rbp), %rax	# cxt, tmp193
	movq	176(%rax), %rax	# cxt_3(D)->membuf.aend, D.22425
	cmpq	%rax, %rdx	# D.22425, D.22425
	ja	.L1199	#,
	movq	-56(%rbp), %rax	# cxt, tmp194
	movq	168(%rax), %rax	# cxt_3(D)->membuf.aptr, D.22425
	movq	%rax, %rdx	# D.22425, D.22426
	movq	-56(%rbp), %rax	# cxt, tmp195
	movq	168(%rax), %rax	# cxt_3(D)->membuf.aptr, D.22425
	andq	$-4, %rax	#, D.22426
	cmpq	%rax, %rdx	# D.22426, D.22426
	jne	.L1200	#,
	movq	-56(%rbp), %rax	# cxt, tmp196
	movq	168(%rax), %rax	# cxt_3(D)->membuf.aptr, D.22425
	movl	(%rax), %eax	# MEM[(int *)_66], size.634
	movl	%eax, -40(%rbp)	# size.634, size
	jmp	.L1201	#
.L1200:
	.loc 1 4975 0 discriminator 2
	movq	-56(%rbp), %rax	# cxt, tmp197
	movq	168(%rax), %rax	# cxt_3(D)->membuf.aptr, D.22425
	movl	(%rax), %eax	# MEM[(char * {ref-all})_68], D.22427
	movl	%eax, -40(%rbp)	# D.22427, MEM[(char * {ref-all})&size]
.L1201:
	.loc 1 4975 0 discriminator 1
	movq	-56(%rbp), %rax	# cxt, tmp198
	movq	168(%rax), %rax	# cxt_3(D)->membuf.aptr, D.22425
	leaq	4(%rax), %rdx	#, D.22425
	movq	-56(%rbp), %rax	# cxt, tmp199
	movq	%rdx, 168(%rax)	# D.22425, cxt_3(D)->membuf.aptr
	jmp	.L1202	#
.L1199:
	.loc 1 4975 0 discriminator 2
	movl	$0, %eax	#, D.22423
	jmp	.L1210	#
.L1198:
	movq	-56(%rbp), %rax	# cxt, tmp200
	movq	216(%rax), %rax	# cxt_3(D)->fio, D.22424
	leaq	-40(%rbp), %rcx	#, tmp201
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp201,
	movq	%rax, %rdi	# D.22424,
	call	Perl_PerlIO_read	#
	cmpq	$4, %rax	#, D.22428
	je	.L1202	#,
	.loc 1 4975 0 discriminator 1
	movl	$0, %eax	#, D.22423
	jmp	.L1210	#
.L1202:
	.loc 1 4975 0 discriminator 2
	movq	-56(%rbp), %rax	# cxt, tmp202
	movl	80(%rax), %eax	# cxt_3(D)->netorder, D.22427
	testl	%eax, %eax	# D.22427
	je	.L1203	#,
	.loc 1 4975 0 discriminator 1
	movl	-40(%rbp), %eax	# size, size.635
	cltq
	movq	%rax, %rdi	# D.22428,
	call	Perl_my_ntohl	#
	movl	%eax, -40(%rbp)	# size.636, size
.L1203:
.LBE314:
	.loc 1 4976 0 is_stmt 1
	movl	-40(%rbp), %eax	# size, size.637
	movslq	%eax, %rdx	# size.637, D.22426
	movq	-56(%rbp), %rax	# cxt, tmp203
	movq	128(%rax), %rax	# cxt_3(D)->keybuf.asiz, D.22426
	cmpq	%rax, %rdx	# D.22426, D.22426
	jb	.L1204	#,
	.loc 1 4976 0 is_stmt 0 discriminator 1
	movl	-40(%rbp), %eax	# size, size.638
	cltq
	leaq	1(%rax), %rdx	#, D.22426
	movq	-56(%rbp), %rax	# cxt, tmp204
	movq	120(%rax), %rax	# cxt_3(D)->keybuf.arena, D.22425
	movq	%rdx, %rsi	# D.22426,
	movq	%rax, %rdi	# D.22425,
	call	Perl_safesysrealloc	#
	movq	-56(%rbp), %rdx	# cxt, tmp205
	movq	%rax, 120(%rdx)	# D.22432, cxt_3(D)->keybuf.arena
	movl	-40(%rbp), %eax	# size, size.639
	cltq
	leaq	1(%rax), %rdx	#, D.22426
	movq	-56(%rbp), %rax	# cxt, tmp206
	movq	%rdx, 128(%rax)	# D.22426, cxt_3(D)->keybuf.asiz
.L1204:
	.loc 1 4977 0 is_stmt 1
	movl	-40(%rbp), %eax	# size, size.640
	testl	%eax, %eax	# size.640
	je	.L1205	#,
	.loc 1 4978 0
	movq	-56(%rbp), %rax	# cxt, tmp207
	movq	216(%rax), %rax	# cxt_3(D)->fio, D.22424
	testq	%rax, %rax	# D.22424
	jne	.L1206	#,
	.loc 1 4978 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# cxt, tmp208
	movq	168(%rax), %rdx	# cxt_3(D)->membuf.aptr, D.22425
	movl	-40(%rbp), %eax	# size, size.641
	cltq
	addq	%rax, %rdx	# D.22433, D.22425
	movq	-56(%rbp), %rax	# cxt, tmp209
	movq	176(%rax), %rax	# cxt_3(D)->membuf.aend, D.22425
	cmpq	%rax, %rdx	# D.22425, D.22425
	ja	.L1207	#,
	movl	-40(%rbp), %eax	# size, size.642
	movslq	%eax, %rdx	# size.642, D.22426
	movq	-56(%rbp), %rax	# cxt, tmp210
	movq	168(%rax), %rcx	# cxt_3(D)->membuf.aptr, D.22425
	movq	-56(%rbp), %rax	# cxt, tmp211
	movq	120(%rax), %rax	# cxt_3(D)->keybuf.arena, D.22425
	movq	%rcx, %rsi	# D.22425,
	movq	%rax, %rdi	# D.22425,
	call	memcpy	#
	movq	-56(%rbp), %rax	# cxt, tmp212
	movq	168(%rax), %rdx	# cxt_3(D)->membuf.aptr, D.22425
	movl	-40(%rbp), %eax	# size, size.643
	cltq
	addq	%rax, %rdx	# D.22433, D.22425
	movq	-56(%rbp), %rax	# cxt, tmp213
	movq	%rdx, 168(%rax)	# D.22425, cxt_3(D)->membuf.aptr
	jmp	.L1205	#
.L1207:
	.loc 1 4978 0 discriminator 2
	movl	$0, %eax	#, D.22423
	jmp	.L1210	#
.L1206:
	movl	-40(%rbp), %eax	# size, size.644
	movslq	%eax, %rdx	# size.644, D.22426
	movq	-56(%rbp), %rax	# cxt, tmp214
	movq	120(%rax), %rcx	# cxt_3(D)->keybuf.arena, D.22425
	movq	-56(%rbp), %rax	# cxt, tmp215
	movq	216(%rax), %rax	# cxt_3(D)->fio, D.22424
	movq	%rcx, %rsi	# D.22425,
	movq	%rax, %rdi	# D.22424,
	call	Perl_PerlIO_read	#
	movl	-40(%rbp), %edx	# size, size.645
	movslq	%edx, %rdx	# size.645, D.22428
	cmpq	%rdx, %rax	# D.22428, D.22428
	je	.L1205	#,
	.loc 1 4978 0 discriminator 1
	movl	$0, %eax	#, D.22423
	jmp	.L1210	#
.L1205:
	.loc 1 4979 0 is_stmt 1
	movq	-56(%rbp), %rax	# cxt, tmp216
	movq	120(%rax), %rdx	# cxt_3(D)->keybuf.arena, D.22425
	movl	-40(%rbp), %eax	# size, size.646
	cltq
	addq	%rdx, %rax	# D.22425, D.22425
	movb	$0, (%rax)	#, *_119
	.loc 1 4986 0
	movl	-40(%rbp), %edx	# size, size.647
	movq	-56(%rbp), %rax	# cxt, tmp217
	movq	120(%rax), %rsi	# cxt_3(D)->keybuf.arena, D.22425
	movq	-8(%rbp), %rcx	# sv, tmp218
	movq	-32(%rbp), %rax	# hv, tmp219
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# tmp219,
	call	Perl_hv_store	#
	testq	%rax, %rax	# D.22431
	jne	.L1208	#,
	.loc 1 4987 0
	movl	$0, %eax	#, D.22423
	jmp	.L1210	#
.L1208:
	.loc 1 4958 0
	addl	$1, -36(%rbp)	#, i
.L1196:
	.loc 1 4958 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# len, len.648
	cmpl	%eax, -36(%rbp)	# len.648, i
	jl	.L1209	#,
	.loc 1 4992 0 is_stmt 1
	movq	-32(%rbp), %rax	# hv, D.22423
.L1210:
	.loc 1 4993 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	retrieve_hash, .-retrieve_hash
	.type	retrieve_flag_hash, @function
retrieve_flag_hash:
.LFB65:
	.loc 1 5007 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# cxt, cxt
	movq	%rsi, -80(%rbp)	# cname, cname
	.loc 1 5015 0
	movq	-72(%rbp), %rax	# cxt, tmp191
	movq	216(%rax), %rax	# cxt_9(D)->fio, D.22435
	testq	%rax, %rax	# D.22435
	jne	.L1212	#,
	.loc 1 5015 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# cxt, tmp192
	movq	168(%rax), %rdx	# cxt_9(D)->membuf.aptr, D.22436
	movq	-72(%rbp), %rax	# cxt, tmp193
	movq	176(%rax), %rax	# cxt_9(D)->membuf.aend, D.22436
	cmpq	%rax, %rdx	# D.22436, D.22436
	jae	.L1213	#,
	movq	-72(%rbp), %rax	# cxt, tmp194
	movq	168(%rax), %rax	# cxt_9(D)->membuf.aptr, D.22436
	leaq	1(%rax), %rcx	#, D.22436
	movq	-72(%rbp), %rdx	# cxt, tmp195
	movq	%rcx, 168(%rdx)	# D.22436, cxt_9(D)->membuf.aptr
	movzbl	(%rax), %eax	# *_14, D.22437
	movzbl	%al, %eax	# D.22438, tmp196
	movl	%eax, -52(%rbp)	# tmp196, hash_flags
	jmp	.L1214	#
.L1213:
	.loc 1 5015 0 discriminator 2
	movl	$0, %eax	#, D.22434
	jmp	.L1253	#
.L1212:
	movq	-72(%rbp), %rax	# cxt, tmp197
	movq	216(%rax), %rax	# cxt_9(D)->fio, D.22435
	movq	%rax, %rdi	# D.22435,
	call	PerlIO_getc	#
	movl	%eax, -52(%rbp)	# tmp198, hash_flags
	cmpl	$-1, -52(%rbp)	#, hash_flags
	jne	.L1214	#,
	.loc 1 5015 0 discriminator 1
	movl	$0, %eax	#, D.22434
	jmp	.L1253	#
.L1214:
.LBB315:
	.loc 1 5032 0 is_stmt 1
	movq	-72(%rbp), %rax	# cxt, tmp199
	movq	216(%rax), %rax	# cxt_9(D)->fio, D.22435
	testq	%rax, %rax	# D.22435
	jne	.L1216	#,
	.loc 1 5032 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# cxt, tmp200
	movq	168(%rax), %rax	# cxt_9(D)->membuf.aptr, D.22436
	leaq	4(%rax), %rdx	#, D.22436
	movq	-72(%rbp), %rax	# cxt, tmp201
	movq	176(%rax), %rax	# cxt_9(D)->membuf.aend, D.22436
	cmpq	%rax, %rdx	# D.22436, D.22436
	ja	.L1217	#,
	movq	-72(%rbp), %rax	# cxt, tmp202
	movq	168(%rax), %rax	# cxt_9(D)->membuf.aptr, D.22436
	movq	%rax, %rdx	# D.22436, D.22439
	movq	-72(%rbp), %rax	# cxt, tmp203
	movq	168(%rax), %rax	# cxt_9(D)->membuf.aptr, D.22436
	andq	$-4, %rax	#, D.22439
	cmpq	%rax, %rdx	# D.22439, D.22439
	jne	.L1218	#,
	movq	-72(%rbp), %rax	# cxt, tmp204
	movq	168(%rax), %rax	# cxt_9(D)->membuf.aptr, D.22436
	movl	(%rax), %eax	# MEM[(int *)_32], len.649
	movl	%eax, -64(%rbp)	# len.649, len
	jmp	.L1219	#
.L1218:
	.loc 1 5032 0 discriminator 2
	movq	-72(%rbp), %rax	# cxt, tmp205
	movq	168(%rax), %rax	# cxt_9(D)->membuf.aptr, D.22436
	movl	(%rax), %eax	# MEM[(char * {ref-all})_34], D.22440
	movl	%eax, -64(%rbp)	# D.22440, MEM[(char * {ref-all})&len]
.L1219:
	.loc 1 5032 0 discriminator 1
	movq	-72(%rbp), %rax	# cxt, tmp206
	movq	168(%rax), %rax	# cxt_9(D)->membuf.aptr, D.22436
	leaq	4(%rax), %rdx	#, D.22436
	movq	-72(%rbp), %rax	# cxt, tmp207
	movq	%rdx, 168(%rax)	# D.22436, cxt_9(D)->membuf.aptr
	jmp	.L1220	#
.L1217:
	.loc 1 5032 0 discriminator 2
	movl	$0, %eax	#, D.22434
	jmp	.L1253	#
.L1216:
	movq	-72(%rbp), %rax	# cxt, tmp208
	movq	216(%rax), %rax	# cxt_9(D)->fio, D.22435
	leaq	-64(%rbp), %rcx	#, tmp209
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp209,
	movq	%rax, %rdi	# D.22435,
	call	Perl_PerlIO_read	#
	cmpq	$4, %rax	#, D.22441
	je	.L1220	#,
	.loc 1 5032 0 discriminator 1
	movl	$0, %eax	#, D.22434
	jmp	.L1253	#
.L1220:
	.loc 1 5032 0 discriminator 2
	movq	-72(%rbp), %rax	# cxt, tmp210
	movl	80(%rax), %eax	# cxt_9(D)->netorder, D.22440
	testl	%eax, %eax	# D.22440
	je	.L1221	#,
	.loc 1 5032 0 discriminator 1
	movl	-64(%rbp), %eax	# len, len.650
	cltq
	movq	%rax, %rdi	# D.22441,
	call	Perl_my_ntohl	#
	movl	%eax, -64(%rbp)	# len.651, len
.L1221:
.LBE315:
	.loc 1 5034 0 is_stmt 1
	call	Perl_newHV	#
	movq	%rax, -32(%rbp)	# tmp211, hv
.LBB316:
	.loc 1 5035 0
	cmpq	$0, -32(%rbp)	#, hv
	jne	.L1222	#,
	.loc 1 5035 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.22434
	jmp	.L1253	#
.L1222:
	.loc 1 5035 0 discriminator 2
	movq	-32(%rbp), %rax	# hv, tmp212
	movq	%rax, PL_Sv(%rip)	# tmp212, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.653
	testq	%rax, %rax	# PL_Sv.653
	je	.L1224	#,
	.loc 1 5035 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.654
	movl	8(%rax), %edx	# PL_Sv.654_50->sv_refcnt, D.22442
	addl	$1, %edx	#, D.22442
	movl	%edx, 8(%rax)	# D.22442, PL_Sv.654_50->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.654_50->sv_refcnt, D.22442
	testl	%eax, %eax	# D.22442
	je	.L1224	#,
	.loc 1 5035 0
	nop
.L1224:
	.loc 1 5035 0 discriminator 4
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.655
	movq	-72(%rbp), %rax	# cxt, tmp213
	movq	64(%rax), %rax	# cxt_9(D)->tagnum, D.22441
	leaq	1(%rax), %rsi	#, D.22441
	movq	-72(%rbp), %rcx	# cxt, tmp214
	movq	%rsi, 64(%rcx)	# D.22441, cxt_9(D)->tagnum
	movl	%eax, %ecx	# D.22441, D.22440
	movq	-72(%rbp), %rax	# cxt, tmp215
	movq	24(%rax), %rax	# cxt_9(D)->aseen, D.22443
	movl	%ecx, %esi	# D.22440,
	movq	%rax, %rdi	# D.22443,
	call	Perl_av_store	#
	testq	%rax, %rax	# D.22444
	jne	.L1225	#,
	.loc 1 5035 0 discriminator 1
	movl	$0, %eax	#, D.22434
	jmp	.L1253	#
.L1225:
	.loc 1 5035 0 discriminator 2
	cmpq	$0, -80(%rbp)	#, cname
	je	.L1226	#,
.LBB317:
	.loc 1 5035 0 discriminator 1
	movq	-80(%rbp), %rax	# cname, tmp216
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp216,
	call	Perl_gv_stashpv	#
	movq	%rax, -24(%rbp)	# tmp217, stash
	movq	-32(%rbp), %rax	# hv, tmp218
	movq	%rax, %rdi	# tmp218,
	call	Perl_newRV_noinc	#
	movq	%rax, -16(%rbp)	# tmp219, Perl_ref
	movq	-24(%rbp), %rdx	# stash, tmp220
	movq	-16(%rbp), %rax	# Perl_ref, tmp221
	movq	%rdx, %rsi	# tmp220,
	movq	%rax, %rdi	# tmp221,
	call	Perl_sv_bless	#
	movq	-16(%rbp), %rax	# Perl_ref, tmp222
	movq	(%rax), %rax	# Perl_ref_66->sv_any, D.22445
	movq	$0, (%rax)	#, MEM[(struct XRV *)_67].xrv_rv
	movq	-16(%rbp), %rax	# Perl_ref, tmp223
	movq	%rax, %rdi	# tmp223,
	call	Perl_sv_free	#
.L1226:
.LBE317:
.LBE316:
	.loc 1 5036 0 is_stmt 1
	movl	-64(%rbp), %eax	# len, len.656
	testl	%eax, %eax	# len.656
	jne	.L1227	#,
	.loc 1 5037 0
	movq	-32(%rbp), %rax	# hv, D.22434
	jmp	.L1253	#
.L1227:
	.loc 1 5038 0
	movl	-64(%rbp), %eax	# len, len.657
	movslq	%eax, %rdx	# len.657, D.22441
	movq	-32(%rbp), %rax	# hv, tmp224
	movq	%rdx, %rsi	# D.22441,
	movq	%rax, %rdi	# tmp224,
	call	Perl_hv_ksplit	#
	.loc 1 5044 0
	movl	$0, -56(%rbp)	#, i
	jmp	.L1228	#
.L1251:
.LBB318:
	.loc 1 5046 0
	movl	$0, -44(%rbp)	#, store_flags
	.loc 1 5052 0
	movq	-72(%rbp), %rax	# cxt, tmp225
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp225,
	call	retrieve	#
	movq	%rax, -40(%rbp)	# tmp226, sv
	.loc 1 5053 0
	cmpq	$0, -40(%rbp)	#, sv
	jne	.L1229	#,
	.loc 1 5054 0
	movl	$0, %eax	#, D.22434
	jmp	.L1253	#
.L1229:
	.loc 1 5056 0
	movq	-72(%rbp), %rax	# cxt, tmp227
	movq	216(%rax), %rax	# cxt_9(D)->fio, D.22435
	testq	%rax, %rax	# D.22435
	jne	.L1230	#,
	.loc 1 5056 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# cxt, tmp228
	movq	168(%rax), %rdx	# cxt_9(D)->membuf.aptr, D.22436
	movq	-72(%rbp), %rax	# cxt, tmp229
	movq	176(%rax), %rax	# cxt_9(D)->membuf.aend, D.22436
	cmpq	%rax, %rdx	# D.22436, D.22436
	jae	.L1231	#,
	movq	-72(%rbp), %rax	# cxt, tmp230
	movq	168(%rax), %rax	# cxt_9(D)->membuf.aptr, D.22436
	leaq	1(%rax), %rcx	#, D.22436
	movq	-72(%rbp), %rdx	# cxt, tmp231
	movq	%rcx, 168(%rdx)	# D.22436, cxt_9(D)->membuf.aptr
	movzbl	(%rax), %eax	# *_81, D.22437
	movzbl	%al, %eax	# D.22438, tmp232
	movl	%eax, -48(%rbp)	# tmp232, flags
	jmp	.L1232	#
.L1231:
	.loc 1 5056 0 discriminator 2
	movl	$0, %eax	#, D.22434
	jmp	.L1253	#
.L1230:
	movq	-72(%rbp), %rax	# cxt, tmp233
	movq	216(%rax), %rax	# cxt_9(D)->fio, D.22435
	movq	%rax, %rdi	# D.22435,
	call	PerlIO_getc	#
	movl	%eax, -48(%rbp)	# tmp234, flags
	cmpl	$-1, -48(%rbp)	#, flags
	jne	.L1232	#,
	.loc 1 5056 0 discriminator 1
	movl	$0, %eax	#, D.22434
	jmp	.L1253	#
.L1232:
	.loc 1 5058 0 is_stmt 1
	movl	-52(%rbp), %eax	# hash_flags, tmp235
	andl	$1, %eax	#, D.22440
	testl	%eax, %eax	# D.22440
	je	.L1233	#,
	.loc 1 5058 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# flags, tmp236
	andl	$4, %eax	#, D.22440
	testl	%eax, %eax	# D.22440
	je	.L1233	#,
	.loc 1 5059 0 is_stmt 1
	movq	-40(%rbp), %rax	# sv, tmp237
	movl	12(%rax), %eax	# sv_75->sv_flags, D.22442
	orl	$8388608, %eax	#, D.22442
	movl	%eax, %edx	# D.22442, D.22442
	movq	-40(%rbp), %rax	# sv, tmp238
	movl	%edx, 12(%rax)	# D.22442, sv_75->sv_flags
.L1233:
	.loc 1 5062 0
	movl	-48(%rbp), %eax	# flags, tmp239
	andl	$8, %eax	#, D.22440
	testl	%eax, %eax	# D.22440
	je	.L1234	#,
.LBB319:
	.loc 1 5069 0
	movq	-72(%rbp), %rax	# cxt, tmp240
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp240,
	call	retrieve	#
	movq	%rax, -8(%rbp)	# tmp241, keysv
	.loc 1 5070 0
	cmpq	$0, -8(%rbp)	#, keysv
	jne	.L1235	#,
	.loc 1 5071 0
	movl	$0, %eax	#, D.22434
	jmp	.L1253	#
.L1235:
	.loc 1 5073 0
	movq	-40(%rbp), %rdx	# sv, tmp242
	movq	-8(%rbp), %rsi	# keysv, tmp243
	movq	-32(%rbp), %rax	# hv, tmp244
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp244,
	call	Perl_hv_store_ent	#
	testq	%rax, %rax	# D.22446
	jne	.L1236	#,
	.loc 1 5074 0
	movl	$0, %eax	#, D.22434
	jmp	.L1253	#
.L1236:
.LBE319:
	jmp	.L1237	#
.L1234:
	.loc 1 5083 0
	movl	-48(%rbp), %eax	# flags, tmp245
	andl	$16, %eax	#, D.22440
	testl	%eax, %eax	# D.22440
	je	.L1238	#,
	.loc 1 5084 0
	movq	-40(%rbp), %rax	# sv, tmp246
	movq	%rax, %rdi	# tmp246,
	call	Perl_sv_free	#
	.loc 1 5085 0
	movq	$PL_sv_placeholder, -40(%rbp)	#, sv
	.loc 1 5086 0
	orl	$512, -44(%rbp)	#, store_flags
.L1238:
	.loc 1 5088 0
	movl	-48(%rbp), %eax	# flags, tmp247
	andl	$1, %eax	#, D.22440
	testl	%eax, %eax	# D.22440
	je	.L1239	#,
	.loc 1 5090 0
	orl	$1, -44(%rbp)	#, store_flags
.L1239:
	.loc 1 5101 0
	movl	-48(%rbp), %eax	# flags, tmp248
	andl	$2, %eax	#, D.22440
	testl	%eax, %eax	# D.22440
	je	.L1240	#,
	.loc 1 5102 0
	orl	$2, -44(%rbp)	#, store_flags
.L1240:
.LBB320:
	.loc 1 5105 0
	movq	-72(%rbp), %rax	# cxt, tmp249
	movq	216(%rax), %rax	# cxt_9(D)->fio, D.22435
	testq	%rax, %rax	# D.22435
	jne	.L1241	#,
	.loc 1 5105 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# cxt, tmp250
	movq	168(%rax), %rax	# cxt_9(D)->membuf.aptr, D.22436
	leaq	4(%rax), %rdx	#, D.22436
	movq	-72(%rbp), %rax	# cxt, tmp251
	movq	176(%rax), %rax	# cxt_9(D)->membuf.aend, D.22436
	cmpq	%rax, %rdx	# D.22436, D.22436
	ja	.L1242	#,
	movq	-72(%rbp), %rax	# cxt, tmp252
	movq	168(%rax), %rax	# cxt_9(D)->membuf.aptr, D.22436
	movq	%rax, %rdx	# D.22436, D.22439
	movq	-72(%rbp), %rax	# cxt, tmp253
	movq	168(%rax), %rax	# cxt_9(D)->membuf.aptr, D.22436
	andq	$-4, %rax	#, D.22439
	cmpq	%rax, %rdx	# D.22439, D.22439
	jne	.L1243	#,
	movq	-72(%rbp), %rax	# cxt, tmp254
	movq	168(%rax), %rax	# cxt_9(D)->membuf.aptr, D.22436
	movl	(%rax), %eax	# MEM[(int *)_115], size.658
	movl	%eax, -60(%rbp)	# size.658, size
	jmp	.L1244	#
.L1243:
	.loc 1 5105 0 discriminator 2
	movq	-72(%rbp), %rax	# cxt, tmp255
	movq	168(%rax), %rax	# cxt_9(D)->membuf.aptr, D.22436
	movl	(%rax), %eax	# MEM[(char * {ref-all})_117], D.22440
	movl	%eax, -60(%rbp)	# D.22440, MEM[(char * {ref-all})&size]
.L1244:
	.loc 1 5105 0 discriminator 1
	movq	-72(%rbp), %rax	# cxt, tmp256
	movq	168(%rax), %rax	# cxt_9(D)->membuf.aptr, D.22436
	leaq	4(%rax), %rdx	#, D.22436
	movq	-72(%rbp), %rax	# cxt, tmp257
	movq	%rdx, 168(%rax)	# D.22436, cxt_9(D)->membuf.aptr
	jmp	.L1245	#
.L1242:
	.loc 1 5105 0 discriminator 2
	movl	$0, %eax	#, D.22434
	jmp	.L1253	#
.L1241:
	movq	-72(%rbp), %rax	# cxt, tmp258
	movq	216(%rax), %rax	# cxt_9(D)->fio, D.22435
	leaq	-60(%rbp), %rcx	#, tmp259
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp259,
	movq	%rax, %rdi	# D.22435,
	call	Perl_PerlIO_read	#
	cmpq	$4, %rax	#, D.22441
	je	.L1245	#,
	.loc 1 5105 0 discriminator 1
	movl	$0, %eax	#, D.22434
	jmp	.L1253	#
.L1245:
	.loc 1 5105 0 discriminator 2
	movq	-72(%rbp), %rax	# cxt, tmp260
	movl	80(%rax), %eax	# cxt_9(D)->netorder, D.22440
	testl	%eax, %eax	# D.22440
	je	.L1246	#,
	.loc 1 5105 0 discriminator 1
	movl	-60(%rbp), %eax	# size, size.659
	cltq
	movq	%rax, %rdi	# D.22441,
	call	Perl_my_ntohl	#
	movl	%eax, -60(%rbp)	# size.660, size
.L1246:
.LBE320:
	.loc 1 5106 0 is_stmt 1
	movl	-60(%rbp), %eax	# size, size.661
	movslq	%eax, %rdx	# size.661, D.22439
	movq	-72(%rbp), %rax	# cxt, tmp261
	movq	128(%rax), %rax	# cxt_9(D)->keybuf.asiz, D.22439
	cmpq	%rax, %rdx	# D.22439, D.22439
	jb	.L1247	#,
	.loc 1 5106 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %eax	# size, size.662
	cltq
	leaq	1(%rax), %rdx	#, D.22439
	movq	-72(%rbp), %rax	# cxt, tmp262
	movq	120(%rax), %rax	# cxt_9(D)->keybuf.arena, D.22436
	movq	%rdx, %rsi	# D.22439,
	movq	%rax, %rdi	# D.22436,
	call	Perl_safesysrealloc	#
	movq	-72(%rbp), %rdx	# cxt, tmp263
	movq	%rax, 120(%rdx)	# D.22445, cxt_9(D)->keybuf.arena
	movl	-60(%rbp), %eax	# size, size.663
	cltq
	leaq	1(%rax), %rdx	#, D.22439
	movq	-72(%rbp), %rax	# cxt, tmp264
	movq	%rdx, 128(%rax)	# D.22439, cxt_9(D)->keybuf.asiz
.L1247:
	.loc 1 5107 0 is_stmt 1
	movl	-60(%rbp), %eax	# size, size.664
	testl	%eax, %eax	# size.664
	je	.L1248	#,
	.loc 1 5108 0
	movq	-72(%rbp), %rax	# cxt, tmp265
	movq	216(%rax), %rax	# cxt_9(D)->fio, D.22435
	testq	%rax, %rax	# D.22435
	jne	.L1249	#,
	.loc 1 5108 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# cxt, tmp266
	movq	168(%rax), %rdx	# cxt_9(D)->membuf.aptr, D.22436
	movl	-60(%rbp), %eax	# size, size.665
	cltq
	addq	%rax, %rdx	# D.22447, D.22436
	movq	-72(%rbp), %rax	# cxt, tmp267
	movq	176(%rax), %rax	# cxt_9(D)->membuf.aend, D.22436
	cmpq	%rax, %rdx	# D.22436, D.22436
	ja	.L1250	#,
	movl	-60(%rbp), %eax	# size, size.666
	movslq	%eax, %rdx	# size.666, D.22439
	movq	-72(%rbp), %rax	# cxt, tmp268
	movq	168(%rax), %rcx	# cxt_9(D)->membuf.aptr, D.22436
	movq	-72(%rbp), %rax	# cxt, tmp269
	movq	120(%rax), %rax	# cxt_9(D)->keybuf.arena, D.22436
	movq	%rcx, %rsi	# D.22436,
	movq	%rax, %rdi	# D.22436,
	call	memcpy	#
	movq	-72(%rbp), %rax	# cxt, tmp270
	movq	168(%rax), %rdx	# cxt_9(D)->membuf.aptr, D.22436
	movl	-60(%rbp), %eax	# size, size.667
	cltq
	addq	%rax, %rdx	# D.22447, D.22436
	movq	-72(%rbp), %rax	# cxt, tmp271
	movq	%rdx, 168(%rax)	# D.22436, cxt_9(D)->membuf.aptr
	jmp	.L1248	#
.L1250:
	.loc 1 5108 0 discriminator 2
	movl	$0, %eax	#, D.22434
	jmp	.L1253	#
.L1249:
	movl	-60(%rbp), %eax	# size, size.668
	movslq	%eax, %rdx	# size.668, D.22439
	movq	-72(%rbp), %rax	# cxt, tmp272
	movq	120(%rax), %rcx	# cxt_9(D)->keybuf.arena, D.22436
	movq	-72(%rbp), %rax	# cxt, tmp273
	movq	216(%rax), %rax	# cxt_9(D)->fio, D.22435
	movq	%rcx, %rsi	# D.22436,
	movq	%rax, %rdi	# D.22435,
	call	Perl_PerlIO_read	#
	movl	-60(%rbp), %edx	# size, size.669
	movslq	%edx, %rdx	# size.669, D.22441
	cmpq	%rdx, %rax	# D.22441, D.22441
	je	.L1248	#,
	.loc 1 5108 0 discriminator 1
	movl	$0, %eax	#, D.22434
	jmp	.L1253	#
.L1248:
	.loc 1 5109 0 is_stmt 1
	movq	-72(%rbp), %rax	# cxt, tmp274
	movq	120(%rax), %rdx	# cxt_9(D)->keybuf.arena, D.22436
	movl	-60(%rbp), %eax	# size, size.670
	cltq
	addq	%rdx, %rax	# D.22436, D.22436
	movb	$0, (%rax)	#, *_168
	.loc 1 5118 0
	movl	-60(%rbp), %edx	# size, size.671
	movq	-72(%rbp), %rax	# cxt, tmp275
	movq	120(%rax), %rsi	# cxt_9(D)->keybuf.arena, D.22436
	movl	-44(%rbp), %edi	# store_flags, tmp276
	movq	-40(%rbp), %rcx	# sv, tmp277
	movq	-32(%rbp), %rax	# hv, tmp278
	movl	%edi, %r9d	# tmp276,
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# tmp278,
	call	Perl_hv_store_flags	#
	testq	%rax, %rax	# D.22444
	jne	.L1237	#,
	.loc 1 5119 0
	movl	$0, %eax	#, D.22434
	jmp	.L1253	#
.L1237:
.LBE318:
	.loc 1 5044 0
	addl	$1, -56(%rbp)	#, i
.L1228:
	.loc 1 5044 0 is_stmt 0 discriminator 1
	movl	-64(%rbp), %eax	# len, len.672
	cmpl	%eax, -56(%rbp)	# len.672, i
	jl	.L1251	#,
	.loc 1 5128 0 is_stmt 1
	movl	-52(%rbp), %eax	# hash_flags, tmp279
	andl	$1, %eax	#, D.22440
	testl	%eax, %eax	# D.22440
	je	.L1252	#,
	.loc 1 5129 0
	movq	-32(%rbp), %rax	# hv, tmp280
	movl	12(%rax), %eax	# hv_47->sv_flags, D.22442
	orl	$8388608, %eax	#, D.22442
	movl	%eax, %edx	# D.22442, D.22442
	movq	-32(%rbp), %rax	# hv, tmp281
	movl	%edx, 12(%rax)	# D.22442, hv_47->sv_flags
.L1252:
	.loc 1 5134 0
	movq	-32(%rbp), %rax	# hv, D.22434
.L1253:
	.loc 1 5135 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	retrieve_flag_hash, .-retrieve_flag_hash
	.section	.rodata
	.align 8
.LC43:
	.string	"Unexpected type %d in retrieve_code\n"
.LC44:
	.string	"sub "
.LC45:
	.string	"Storable::Eval"
	.align 8
.LC46:
	.string	"Can't eval, please set $Storable::Eval to a true value"
.LC47:
	.string	"@"
.LC48:
	.string	""
	.align 8
.LC49:
	.string	"Unexpected return value from $Storable::Eval callback\n"
.LC50:
	.string	"code %s caused an error: %s"
	.align 8
.LC51:
	.string	"code %s did not evaluate to a subroutine reference\n"
	.text
	.type	retrieve_code, @function
retrieve_code:
.LFB66:
	.loc 1 5143 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$96, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -104(%rbp)	# cxt, cxt
	movq	%rsi, -112(%rbp)	# cname, cname
	.loc 1 5147 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 5161 0
	movq	-104(%rbp), %rax	# cxt, tmp276
	movq	64(%rax), %rax	# cxt_28(D)->tagnum, D.22449
	movl	%eax, -80(%rbp)	# D.22449, tagnum
	.loc 1 5162 0
	movl	$0, %edi	#,
	call	Perl_newSViv	#
	movq	%rax, -64(%rbp)	# tmp277, sv
.LBB321:
	.loc 1 5163 0
	cmpq	$0, -64(%rbp)	#, sv
	jne	.L1255	#,
	.loc 1 5163 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.22448
	jmp	.L1256	#
.L1255:
	.loc 1 5163 0 discriminator 2
	movq	-64(%rbp), %rax	# sv, tmp278
	movq	%rax, PL_Sv(%rip)	# tmp278, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.674
	testq	%rax, %rax	# PL_Sv.674
	je	.L1258	#,
	.loc 1 5163 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.675
	movl	8(%rax), %edx	# PL_Sv.675_34->sv_refcnt, D.22450
	addl	$1, %edx	#, D.22450
	movl	%edx, 8(%rax)	# D.22450, PL_Sv.675_34->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.675_34->sv_refcnt, D.22450
	testl	%eax, %eax	# D.22450
	je	.L1258	#,
	.loc 1 5163 0
	nop
.L1258:
	.loc 1 5163 0 discriminator 4
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.676
	movq	-104(%rbp), %rax	# cxt, tmp279
	movq	64(%rax), %rax	# cxt_28(D)->tagnum, D.22449
	leaq	1(%rax), %rsi	#, D.22449
	movq	-104(%rbp), %rcx	# cxt, tmp280
	movq	%rsi, 64(%rcx)	# D.22449, cxt_28(D)->tagnum
	movl	%eax, %ecx	# D.22449, D.22451
	movq	-104(%rbp), %rax	# cxt, tmp281
	movq	24(%rax), %rax	# cxt_28(D)->aseen, D.22452
	movl	%ecx, %esi	# D.22451,
	movq	%rax, %rdi	# D.22452,
	call	Perl_av_store	#
	testq	%rax, %rax	# D.22453
	jne	.L1259	#,
	.loc 1 5163 0 discriminator 1
	movl	$0, %eax	#, D.22448
	jmp	.L1256	#
.L1259:
	.loc 1 5163 0 discriminator 2
	cmpq	$0, -112(%rbp)	#, cname
	je	.L1260	#,
.LBB322:
	.loc 1 5163 0 discriminator 1
	movq	-112(%rbp), %rax	# cname, tmp282
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp282,
	call	Perl_gv_stashpv	#
	movq	%rax, -48(%rbp)	# tmp283, stash
	movq	-64(%rbp), %rax	# sv, tmp284
	movq	%rax, %rdi	# tmp284,
	call	Perl_newRV_noinc	#
	movq	%rax, -40(%rbp)	# tmp285, Perl_ref
	movq	-48(%rbp), %rdx	# stash, tmp286
	movq	-40(%rbp), %rax	# Perl_ref, tmp287
	movq	%rdx, %rsi	# tmp286,
	movq	%rax, %rdi	# tmp287,
	call	Perl_sv_bless	#
	movq	-40(%rbp), %rax	# Perl_ref, tmp288
	movq	(%rax), %rax	# Perl_ref_50->sv_any, D.22454
	movq	$0, (%rax)	#, MEM[(struct XRV *)_51].xrv_rv
	movq	-40(%rbp), %rax	# Perl_ref, tmp289
	movq	%rax, %rdi	# tmp289,
	call	Perl_sv_free	#
.L1260:
.LBE322:
.LBE321:
	.loc 1 5170 0 is_stmt 1
	movq	-104(%rbp), %rax	# cxt, tmp290
	movq	216(%rax), %rax	# cxt_28(D)->fio, D.22455
	testq	%rax, %rax	# D.22455
	jne	.L1261	#,
	.loc 1 5170 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# cxt, tmp291
	movq	168(%rax), %rdx	# cxt_28(D)->membuf.aptr, D.22456
	movq	-104(%rbp), %rax	# cxt, tmp292
	movq	176(%rax), %rax	# cxt_28(D)->membuf.aend, D.22456
	cmpq	%rax, %rdx	# D.22456, D.22456
	jae	.L1262	#,
	movq	-104(%rbp), %rax	# cxt, tmp293
	movq	168(%rax), %rax	# cxt_28(D)->membuf.aptr, D.22456
	leaq	1(%rax), %rcx	#, D.22456
	movq	-104(%rbp), %rdx	# cxt, tmp294
	movq	%rcx, 168(%rdx)	# D.22456, cxt_28(D)->membuf.aptr
	movzbl	(%rax), %eax	# *_56, D.22457
	movzbl	%al, %eax	# D.22458, tmp295
	movl	%eax, -84(%rbp)	# tmp295, type
	jmp	.L1263	#
.L1262:
	.loc 1 5170 0 discriminator 2
	movl	$0, %eax	#, D.22448
	jmp	.L1256	#
.L1261:
	movq	-104(%rbp), %rax	# cxt, tmp296
	movq	216(%rax), %rax	# cxt_28(D)->fio, D.22455
	movq	%rax, %rdi	# D.22455,
	call	PerlIO_getc	#
	movl	%eax, -84(%rbp)	# tmp297, type
	cmpl	$-1, -84(%rbp)	#, type
	jne	.L1263	#,
	.loc 1 5170 0 discriminator 1
	movl	$0, %eax	#, D.22448
	jmp	.L1256	#
.L1263:
	.loc 1 5171 0 is_stmt 1
	movl	-84(%rbp), %eax	# type, type
	cmpl	$1, %eax	#, type
	je	.L1265	#,
	cmpl	$10, %eax	#, type
	jne	.L1331	#,
	.loc 1 5173 0
	movq	-112(%rbp), %rdx	# cname, tmp299
	movq	-104(%rbp), %rax	# cxt, tmp300
	movq	%rdx, %rsi	# tmp299,
	movq	%rax, %rdi	# tmp300,
	call	retrieve_scalar	#
	movq	%rax, -56(%rbp)	# tmp301, text
	.loc 1 5174 0
	jmp	.L1267	#
.L1265:
	.loc 1 5176 0
	movq	-112(%rbp), %rdx	# cname, tmp302
	movq	-104(%rbp), %rax	# cxt, tmp303
	movq	%rdx, %rsi	# tmp302,
	movq	%rax, %rdi	# tmp303,
	call	retrieve_lscalar	#
	movq	%rax, -56(%rbp)	# tmp304, text
	.loc 1 5177 0
	jmp	.L1267	#
.L1331:
.LBB323:
	.loc 1 5179 0
	movq	-104(%rbp), %rax	# cxt, tmp305
	movl	$1, 112(%rax)	#, cxt_28(D)->s_dirty
	movl	-84(%rbp), %eax	# type, tmp306
	movl	%eax, %esi	# tmp306,
	movl	$.LC43, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L1267:
.LBE323:
	.loc 1 5186 0
	movl	$4, %esi	#,
	movl	$.LC44, %edi	#,
	call	Perl_newSVpvn	#
	movq	%rax, -32(%rbp)	# tmp307, sub
	.loc 1 5187 0
	movq	-56(%rbp), %rax	# text, tmp308
	movl	12(%rax), %eax	# text_5->sv_flags, D.22450
	andl	$262144, %eax	#, D.22450
	testl	%eax, %eax	# D.22450
	je	.L1268	#,
	.loc 1 5187 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# text, tmp309
	movq	(%rax), %rax	# text_5->sv_any, D.22454
	movq	(%rax), %rax	# MEM[(struct XPV *)_71].xpv_pv, iftmp.677
	jmp	.L1269	#
.L1268:
	.loc 1 5187 0 discriminator 2
	movq	-56(%rbp), %rax	# text, tmp310
	movq	%rax, %rdi	# tmp310,
	call	Perl_sv_2pv_nolen	#
.L1269:
	.loc 1 5187 0 discriminator 3
	movq	-32(%rbp), %rdx	# sub, tmp311
	movq	%rax, %rsi	# iftmp.677,
	movq	%rdx, %rdi	# tmp311,
	call	Perl_sv_catpv	#
	.loc 1 5188 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# text, tmp312
	movq	%rax, %rdi	# tmp312,
	call	Perl_sv_free	#
	.loc 1 5194 0 discriminator 3
	movq	-104(%rbp), %rax	# cxt, tmp313
	movq	96(%rax), %rax	# cxt_28(D)->eval, D.22448
	testq	%rax, %rax	# D.22448
	jne	.L1270	#,
	.loc 1 5195 0
	movl	$1, %esi	#,
	movl	$.LC45, %edi	#,
	call	Perl_get_sv	#
	movq	-104(%rbp), %rdx	# cxt, tmp314
	movq	%rax, 96(%rdx)	# D.22448, cxt_28(D)->eval
	.loc 1 5196 0
	movq	-104(%rbp), %rax	# cxt, tmp315
	movq	96(%rax), %rax	# cxt_28(D)->eval, PL_Sv.678
	movq	%rax, PL_Sv(%rip)	# PL_Sv.678, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.680
	testq	%rax, %rax	# PL_Sv.680
	je	.L1270	#,
	.loc 1 5196 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.681
	movl	8(%rax), %edx	# PL_Sv.681_78->sv_refcnt, D.22450
	addl	$1, %edx	#, D.22450
	movl	%edx, 8(%rax)	# D.22450, PL_Sv.681_78->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.681_78->sv_refcnt, D.22450
	testl	%eax, %eax	# D.22450
	je	.L1270	#,
	.loc 1 5196 0
	nop
.L1270:
	.loc 1 5198 0 is_stmt 1
	movq	-104(%rbp), %rax	# cxt, tmp316
	movq	96(%rax), %rax	# cxt_28(D)->eval, D.22448
	testq	%rax, %rax	# D.22448
	je	.L1272	#,
	.loc 1 5198 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# cxt, tmp317
	movq	96(%rax), %rax	# cxt_28(D)->eval, D.22448
	movl	12(%rax), %eax	# _85->sv_flags, D.22450
	andl	$262144, %eax	#, D.22450
	testl	%eax, %eax	# D.22450
	je	.L1273	#,
	.loc 1 5198 0 discriminator 3
	movq	-104(%rbp), %rax	# cxt, tmp318
	movq	96(%rax), %rax	# cxt_28(D)->eval, D.22448
	movq	(%rax), %rax	# _88->sv_any, PL_Xpv.685
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.685, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.686
	testq	%rax, %rax	# PL_Xpv.686
	je	.L1274	#,
	.loc 1 5198 0 discriminator 6
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.687
	movq	8(%rax), %rax	# PL_Xpv.687_91->xpv_cur, D.22459
	cmpq	$1, %rax	#, D.22459
	ja	.L1275	#,
	.loc 1 5198 0 discriminator 7
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.688
	movq	8(%rax), %rax	# PL_Xpv.688_93->xpv_cur, D.22459
	testq	%rax, %rax	# D.22459
	je	.L1274	#,
	.loc 1 5198 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.689
	movq	(%rax), %rax	# PL_Xpv.689_95->xpv_pv, D.22456
	movzbl	(%rax), %eax	# *_96, D.22457
	cmpb	$48, %al	#, D.22457
	jne	.L1275	#,
.L1274:
	.loc 1 5198 0 discriminator 5
	movl	$1, %eax	#, iftmp.684
	jmp	.L1276	#
.L1275:
	.loc 1 5198 0 discriminator 8
	movl	$0, %eax	#, iftmp.684
.L1276:
	.loc 1 5198 0 discriminator 9
	andl	$1, %eax	#, iftmp.683
	jmp	.L1282	#
.L1273:
	.loc 1 5198 0 discriminator 4
	movq	-104(%rbp), %rax	# cxt, tmp319
	movq	96(%rax), %rax	# cxt_28(D)->eval, D.22448
	movl	12(%rax), %eax	# _101->sv_flags, D.22450
	andl	$65536, %eax	#, D.22450
	testl	%eax, %eax	# D.22450
	je	.L1278	#,
	.loc 1 5198 0 discriminator 10
	movq	-104(%rbp), %rax	# cxt, tmp320
	movq	96(%rax), %rax	# cxt_28(D)->eval, D.22448
	movq	(%rax), %rax	# _104->sv_any, D.22454
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_105].xiv_iv, D.22449
	testq	%rax, %rax	# D.22449
	sete	%al	#, iftmp.690
	jmp	.L1282	#
.L1278:
	.loc 1 5198 0 discriminator 11
	movq	-104(%rbp), %rax	# cxt, tmp321
	movq	96(%rax), %rax	# cxt_28(D)->eval, D.22448
	movl	12(%rax), %eax	# _108->sv_flags, D.22450
	andl	$131072, %eax	#, D.22450
	testl	%eax, %eax	# D.22450
	je	.L1280	#,
	.loc 1 5198 0 discriminator 12
	movq	-104(%rbp), %rax	# cxt, tmp322
	movq	96(%rax), %rax	# cxt_28(D)->eval, D.22448
	movq	(%rax), %rax	# _111->sv_any, D.22454
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_112].xnv_nv, D.22460
	xorpd	%xmm1, %xmm1	# tmp324
	ucomisd	%xmm1, %xmm0	# tmp324, D.22460
	setnp	%dl	#, tmp323
	movl	$0, %eax	#, tmp326
	xorpd	%xmm1, %xmm1	# tmp325
	ucomisd	%xmm1, %xmm0	# tmp325, D.22460
	cmove	%edx, %eax	# tmp323,, iftmp.691
	jmp	.L1282	#
.L1280:
	.loc 1 5198 0 discriminator 13
	movq	-104(%rbp), %rax	# cxt, tmp327
	movq	96(%rax), %rax	# cxt_28(D)->eval, D.22448
	movq	%rax, %rdi	# D.22448,
	call	Perl_sv_2bool	#
	testb	%al, %al	# D.22457
	sete	%al	#, iftmp.691
	jmp	.L1282	#
.L1272:
	.loc 1 5198 0 discriminator 2
	movl	$1, %eax	#, iftmp.682
.L1282:
	.loc 1 5198 0 discriminator 16
	testb	%al, %al	# iftmp.682
	je	.L1283	#,
	.loc 1 5200 0 is_stmt 1
	movq	-104(%rbp), %rax	# cxt, tmp328
	movl	88(%rax), %eax	# cxt_28(D)->forgive_me, D.22451
	.loc 1 5199 0
	testl	%eax, %eax	# D.22451
	je	.L1284	#,
	.loc 1 5201 0
	movq	-104(%rbp), %rax	# cxt, tmp329
	movl	88(%rax), %eax	# cxt_28(D)->forgive_me, D.22451
	.loc 1 5200 0
	testl	%eax, %eax	# D.22451
	jns	.L1285	#,
	.loc 1 5202 0
	movl	$1, %esi	#,
	movl	$.LC26, %edi	#,
	call	Perl_get_sv	#
	testq	%rax, %rax	# D.22448
	je	.L1286	#,
	.loc 1 5202 0 is_stmt 0 discriminator 1
	movl	$1, %esi	#,
	movl	$.LC26, %edi	#,
	call	Perl_get_sv	#
	movl	12(%rax), %eax	# _125->sv_flags, D.22450
	andl	$262144, %eax	#, D.22450
	testl	%eax, %eax	# D.22450
	je	.L1287	#,
	movl	$1, %esi	#,
	movl	$.LC26, %edi	#,
	call	Perl_get_sv	#
	movq	(%rax), %rax	# _128->sv_any, PL_Xpv.695
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.695, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.696
	testq	%rax, %rax	# PL_Xpv.696
	je	.L1288	#,
	.loc 1 5202 0 discriminator 3
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.697
	movq	8(%rax), %rax	# PL_Xpv.697_131->xpv_cur, D.22459
	cmpq	$1, %rax	#, D.22459
	ja	.L1289	#,
	.loc 1 5202 0 discriminator 6
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.698
	movq	8(%rax), %rax	# PL_Xpv.698_133->xpv_cur, D.22459
	testq	%rax, %rax	# D.22459
	je	.L1288	#,
	.loc 1 5202 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.699
	movq	(%rax), %rax	# PL_Xpv.699_135->xpv_pv, D.22456
	movzbl	(%rax), %eax	# *_136, D.22457
	cmpb	$48, %al	#, D.22457
	je	.L1288	#,
.L1289:
	.loc 1 5202 0 discriminator 5
	movl	$1, %eax	#, iftmp.694
	jmp	.L1290	#
.L1288:
	.loc 1 5202 0 discriminator 4
	movl	$0, %eax	#, iftmp.694
.L1290:
	jmp	.L1296	#
.L1287:
	.loc 1 5202 0 discriminator 2
	movl	$1, %esi	#,
	movl	$.LC26, %edi	#,
	call	Perl_get_sv	#
	movl	12(%rax), %eax	# _141->sv_flags, D.22450
	andl	$65536, %eax	#, D.22450
	testl	%eax, %eax	# D.22450
	je	.L1292	#,
	.loc 1 5202 0 discriminator 8
	movl	$1, %esi	#,
	movl	$.LC26, %edi	#,
	call	Perl_get_sv	#
	movq	(%rax), %rax	# _144->sv_any, D.22454
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_145].xiv_iv, D.22449
	testq	%rax, %rax	# D.22449
	setne	%al	#, D.22461
	movzbl	%al, %eax	# D.22461, iftmp.700
	jmp	.L1296	#
.L1292:
	.loc 1 5202 0 discriminator 9
	movl	$1, %esi	#,
	movl	$.LC26, %edi	#,
	call	Perl_get_sv	#
	movl	12(%rax), %eax	# _149->sv_flags, D.22450
	andl	$131072, %eax	#, D.22450
	testl	%eax, %eax	# D.22450
	je	.L1294	#,
	.loc 1 5202 0 discriminator 10
	movl	$1, %esi	#,
	movl	$.LC26, %edi	#,
	call	Perl_get_sv	#
	movq	(%rax), %rax	# _152->sv_any, D.22454
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_153].xnv_nv, D.22460
	xorpd	%xmm1, %xmm1	# tmp331
	ucomisd	%xmm1, %xmm0	# tmp331, D.22460
	setp	%dl	#, tmp330
	movl	$1, %eax	#, tmp333
	xorpd	%xmm1, %xmm1	# tmp332
	ucomisd	%xmm1, %xmm0	# tmp332, D.22460
	cmove	%edx, %eax	# tmp330,, D.22461
	movzbl	%al, %eax	# D.22461, iftmp.701
	jmp	.L1296	#
.L1294:
	.loc 1 5202 0 discriminator 11
	movl	$1, %esi	#,
	movl	$.LC26, %edi	#,
	call	Perl_get_sv	#
	movq	%rax, %rdi	# D.22448,
	call	Perl_sv_2bool	#
	testb	%al, %al	# D.22457
	setne	%al	#, D.22461
	movzbl	%al, %eax	# D.22461, iftmp.701
	jmp	.L1296	#
.L1286:
	.loc 1 5202 0 discriminator 2
	movl	$0, %eax	#, iftmp.692
.L1296:
	.loc 1 5201 0 is_stmt 1
	movq	-104(%rbp), %rdx	# cxt, tmp334
	movl	%eax, 88(%rdx)	# iftmp.692, cxt_28(D)->forgive_me
	movq	-104(%rbp), %rax	# cxt, tmp335
	movl	88(%rax), %eax	# cxt_28(D)->forgive_me, D.22451
	testl	%eax, %eax	# D.22451
	jne	.L1285	#,
.L1284:
.LBB324:
	.loc 1 5204 0
	movq	-104(%rbp), %rax	# cxt, tmp336
	movl	$1, 112(%rax)	#, cxt_28(D)->s_dirty
	movl	$.LC46, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.LBE324:
	jmp	.L1283	#
.L1285:
	.loc 1 5206 0
	movq	-32(%rbp), %rax	# sub, tmp337
	movq	%rax, %rdi	# tmp337,
	call	Perl_newSVsv	#
	movq	%rax, -64(%rbp)	# tmp338, sv
	.loc 1 5208 0
	movq	-64(%rbp), %rax	# sv, tmp339
	movq	%rax, PL_Sv(%rip)	# tmp339, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.703
	testq	%rax, %rax	# PL_Sv.703
	je	.L1298	#,
	.loc 1 5208 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.704
	movl	8(%rax), %edx	# PL_Sv.704_168->sv_refcnt, D.22450
	addl	$1, %edx	#, D.22450
	movl	%edx, 8(%rax)	# D.22450, PL_Sv.704_168->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.704_168->sv_refcnt, D.22450
	testl	%eax, %eax	# D.22450
	je	.L1298	#,
	.loc 1 5208 0
	nop
.L1298:
	.loc 1 5208 0 discriminator 4
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.705
	movq	-104(%rbp), %rax	# cxt, tmp340
	movq	24(%rax), %rax	# cxt_28(D)->aseen, D.22452
	movl	-80(%rbp), %ecx	# tagnum, tmp341
	movl	%ecx, %esi	# tmp341,
	movq	%rax, %rdi	# D.22452,
	call	Perl_av_store	#
	.loc 1 5209 0 is_stmt 1 discriminator 4
	movq	-64(%rbp), %rax	# sv, D.22448
	jmp	.L1256	#
.L1283:
	.loc 1 5213 0
	call	Perl_push_scope	#
	.loc 1 5214 0
	movl	$PL_tmps_floor, %edi	#,
	call	Perl_save_int	#
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.706
	movl	%eax, PL_tmps_floor(%rip)	# PL_tmps_ix.706, PL_tmps_floor
	.loc 1 5216 0
	movq	-104(%rbp), %rax	# cxt, tmp342
	movq	96(%rax), %rax	# cxt_28(D)->eval, D.22448
	movl	12(%rax), %eax	# _178->sv_flags, D.22450
	andl	$524288, %eax	#, D.22450
	testl	%eax, %eax	# D.22450
	je	.L1299	#,
	.loc 1 5216 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# cxt, tmp343
	movq	96(%rax), %rax	# cxt_28(D)->eval, D.22448
	movq	(%rax), %rax	# _181->sv_any, D.22454
	movq	(%rax), %rax	# MEM[(struct XRV *)_182].xrv_rv, D.22448
	movl	12(%rax), %eax	# _183->sv_flags, D.22450
	movzbl	%al, %eax	# D.22450, D.22450
	cmpl	$12, %eax	#, D.22450
	jne	.L1299	#,
.LBB325:
	.loc 1 5217 0 is_stmt 1
	movl	$1, %esi	#,
	movl	$.LC47, %edi	#,
	call	Perl_get_sv	#
	movq	%rax, -24(%rbp)	# tmp344, errsv
	.loc 1 5218 0
	movq	-24(%rbp), %rax	# errsv, tmp345
	movl	$.LC48, %esi	#,
	movq	%rax, %rdi	# tmp345,
	call	Perl_sv_setpv	#
.LBB326:
	.loc 1 5219 0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.707
	addq	$4, %rax	#, PL_markstack_ptr.708
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.708, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.709
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.710
	cmpq	%rax, %rdx	# PL_markstack_max.710, PL_markstack_ptr.709
	jne	.L1300	#,
	.loc 1 5219 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L1300:
	.loc 1 5219 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.711
	movq	%rbx, %rcx	# sp, sp.712
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.713
	subq	%rdx, %rcx	# PL_stack_base.714, D.22449
	movq	%rcx, %rdx	# D.22449, D.22449
	sarq	$3, %rdx	#, tmp346
	movl	%edx, (%rax)	# D.22451, *PL_markstack_ptr.711_191
.LBE326:
.LBB327:
	.loc 1 5220 0 is_stmt 1 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.715
	movq	%rax, %rdx	# PL_stack_max.715, PL_stack_max.716
	movq	%rbx, %rax	# sp, sp.717
	subq	%rax, %rdx	# sp.717, D.22449
	movq	%rdx, %rax	# D.22449, D.22449
	cmpq	$7, %rax	#, D.22449
	jg	.L1301	#,
	.loc 1 5220 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L1301:
	.loc 1 5220 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# sub, tmp347
	movq	%rax, %rdi	# tmp347,
	call	Perl_newSVsv	#
	movq	%rax, %rdi	# D.22448,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.22448, *sp_204
.LBE327:
	.loc 1 5221 0 is_stmt 1 discriminator 2
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 5222 0 discriminator 2
	movq	-104(%rbp), %rax	# cxt, tmp348
	movq	96(%rax), %rax	# cxt_28(D)->eval, D.22448
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.22448,
	call	Perl_call_sv	#
	movl	%eax, -76(%rbp)	# tmp349, count
	.loc 1 5223 0 discriminator 2
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 5224 0 discriminator 2
	cmpl	$1, -76(%rbp)	#, count
	je	.L1302	#,
.LBB328:
	.loc 1 5225 0
	movq	-104(%rbp), %rax	# cxt, tmp350
	movl	$1, 112(%rax)	#, cxt_28(D)->s_dirty
	movl	$.LC49, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L1302:
.LBE328:
	.loc 1 5226 0
	movq	%rbx, %rax	# sp, sp.718
	leaq	-8(%rax), %rbx	#, sp
	movq	(%rax), %rax	# *sp.718_211, tmp351
	movq	%rax, -72(%rbp)	# tmp351, cv
	.loc 1 5227 0
	cmpq	$0, -24(%rbp)	#, errsv
	je	.L1303	#,
	.loc 1 5227 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# errsv, tmp352
	movl	12(%rax), %eax	# errsv_186->sv_flags, D.22450
	andl	$262144, %eax	#, D.22450
	testl	%eax, %eax	# D.22450
	je	.L1304	#,
	.loc 1 5227 0 discriminator 3
	movq	-24(%rbp), %rax	# errsv, tmp353
	movq	(%rax), %rax	# errsv_186->sv_any, PL_Xpv.722
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.722, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.723
	testq	%rax, %rax	# PL_Xpv.723
	je	.L1305	#,
	.loc 1 5227 0 discriminator 5
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.724
	movq	8(%rax), %rax	# PL_Xpv.724_218->xpv_cur, D.22459
	cmpq	$1, %rax	#, D.22459
	ja	.L1306	#,
	.loc 1 5227 0 discriminator 8
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.725
	movq	8(%rax), %rax	# PL_Xpv.725_220->xpv_cur, D.22459
	testq	%rax, %rax	# D.22459
	je	.L1305	#,
	.loc 1 5227 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.726
	movq	(%rax), %rax	# PL_Xpv.726_222->xpv_pv, D.22456
	movzbl	(%rax), %eax	# *_223, D.22457
	cmpb	$48, %al	#, D.22457
	je	.L1305	#,
.L1306:
	.loc 1 5227 0 discriminator 7
	movl	$1, %eax	#, iftmp.721
	jmp	.L1307	#
.L1305:
	.loc 1 5227 0 discriminator 6
	movl	$0, %eax	#, iftmp.721
.L1307:
	.loc 1 5227 0 discriminator 9
	andl	$1, %eax	#, iftmp.720
	jmp	.L1313	#
.L1304:
	.loc 1 5227 0 discriminator 4
	movq	-24(%rbp), %rax	# errsv, tmp354
	movl	12(%rax), %eax	# errsv_186->sv_flags, D.22450
	andl	$65536, %eax	#, D.22450
	testl	%eax, %eax	# D.22450
	je	.L1309	#,
	.loc 1 5227 0 discriminator 10
	movq	-24(%rbp), %rax	# errsv, tmp355
	movq	(%rax), %rax	# errsv_186->sv_any, D.22454
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_230].xiv_iv, D.22449
	testq	%rax, %rax	# D.22449
	setne	%al	#, iftmp.727
	jmp	.L1313	#
.L1309:
	.loc 1 5227 0 discriminator 11
	movq	-24(%rbp), %rax	# errsv, tmp356
	movl	12(%rax), %eax	# errsv_186->sv_flags, D.22450
	andl	$131072, %eax	#, D.22450
	testl	%eax, %eax	# D.22450
	je	.L1311	#,
	.loc 1 5227 0 discriminator 12
	movq	-24(%rbp), %rax	# errsv, tmp357
	movq	(%rax), %rax	# errsv_186->sv_any, D.22454
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_235].xnv_nv, D.22460
	xorpd	%xmm1, %xmm1	# tmp359
	ucomisd	%xmm1, %xmm0	# tmp359, D.22460
	setp	%dl	#, tmp358
	movl	$1, %eax	#, tmp361
	xorpd	%xmm1, %xmm1	# tmp360
	ucomisd	%xmm1, %xmm0	# tmp360, D.22460
	cmove	%edx, %eax	# tmp358,, iftmp.728
	jmp	.L1313	#
.L1311:
	.loc 1 5227 0 discriminator 13
	movq	-24(%rbp), %rax	# errsv, tmp362
	movq	%rax, %rdi	# tmp362,
	call	Perl_sv_2bool	#
	testb	%al, %al	# D.22457
	setne	%al	#, iftmp.728
	jmp	.L1313	#
.L1303:
	.loc 1 5227 0 discriminator 2
	movl	$0, %eax	#, iftmp.719
.L1313:
	.loc 1 5227 0 discriminator 16
	testb	%al, %al	# iftmp.719
	je	.L1314	#,
.LBB329:
	.loc 1 5228 0 is_stmt 1
	movq	-104(%rbp), %rax	# cxt, tmp363
	movl	$1, 112(%rax)	#, cxt_28(D)->s_dirty
	movq	-24(%rbp), %rax	# errsv, tmp364
	movl	12(%rax), %eax	# errsv_186->sv_flags, D.22450
	andl	$262144, %eax	#, D.22450
	testl	%eax, %eax	# D.22450
	je	.L1315	#,
	.loc 1 5228 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# errsv, tmp365
	movq	(%rax), %rax	# errsv_186->sv_any, D.22454
	movq	(%rax), %r12	# MEM[(struct XPV *)_246].xpv_pv, iftmp.729
	jmp	.L1316	#
.L1315:
	.loc 1 5228 0 discriminator 2
	movq	-24(%rbp), %rax	# errsv, tmp366
	movq	%rax, %rdi	# tmp366,
	call	Perl_sv_2pv_nolen	#
	movq	%rax, %r12	#, iftmp.729
.L1316:
	.loc 1 5228 0 discriminator 3
	movq	-32(%rbp), %rax	# sub, tmp367
	movl	12(%rax), %eax	# sub_68->sv_flags, D.22450
	andl	$262144, %eax	#, D.22450
	testl	%eax, %eax	# D.22450
	je	.L1317	#,
	.loc 1 5228 0 discriminator 4
	movq	-32(%rbp), %rax	# sub, tmp368
	movq	(%rax), %rax	# sub_68->sv_any, D.22454
	movq	(%rax), %rax	# MEM[(struct XPV *)_251].xpv_pv, iftmp.730
	jmp	.L1318	#
.L1317:
	.loc 1 5228 0 discriminator 5
	movq	-32(%rbp), %rax	# sub, tmp369
	movq	%rax, %rdi	# tmp369,
	call	Perl_sv_2pv_nolen	#
.L1318:
	.loc 1 5228 0 discriminator 6
	movq	%r12, %rdx	# iftmp.729,
	movq	%rax, %rsi	# iftmp.730,
	movl	$.LC50, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L1314:
.LBE329:
	.loc 1 5231 0 is_stmt 1
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
.LBE325:
	.loc 1 5216 0
	jmp	.L1319	#
.L1299:
	.loc 1 5233 0
	movq	-32(%rbp), %rax	# sub, tmp370
	movl	12(%rax), %eax	# sub_68->sv_flags, D.22450
	andl	$262144, %eax	#, D.22450
	testl	%eax, %eax	# D.22450
	je	.L1320	#,
	.loc 1 5233 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# sub, tmp371
	movq	(%rax), %rax	# sub_68->sv_any, D.22454
	movq	(%rax), %rax	# MEM[(struct XPV *)_256].xpv_pv, iftmp.731
	jmp	.L1321	#
.L1320:
	.loc 1 5233 0 discriminator 2
	movq	-32(%rbp), %rax	# sub, tmp372
	movq	%rax, %rdi	# tmp372,
	call	Perl_sv_2pv_nolen	#
.L1321:
	.loc 1 5233 0 discriminator 3
	movl	$1, %esi	#,
	movq	%rax, %rdi	# iftmp.731,
	call	Perl_eval_pv	#
	movq	%rax, -72(%rbp)	# tmp373, cv
.L1319:
	.loc 1 5235 0 is_stmt 1
	cmpq	$0, -72(%rbp)	#, cv
	je	.L1322	#,
	.loc 1 5235 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# cv, tmp374
	movl	12(%rax), %eax	# cv_3->sv_flags, D.22450
	andl	$524288, %eax	#, D.22450
	testl	%eax, %eax	# D.22450
	je	.L1322	#,
	movq	-72(%rbp), %rax	# cv, tmp375
	movq	(%rax), %rax	# cv_3->sv_any, D.22454
	movq	(%rax), %rax	# MEM[(struct XRV *)_262].xrv_rv, D.22448
	movl	12(%rax), %eax	# _263->sv_flags, D.22450
	movzbl	%al, %eax	# D.22450, D.22450
	cmpl	$12, %eax	#, D.22450
	jne	.L1322	#,
	.loc 1 5236 0 is_stmt 1
	movq	-72(%rbp), %rax	# cv, tmp376
	movq	(%rax), %rax	# cv_3->sv_any, D.22454
	movq	(%rax), %rax	# MEM[(struct XRV *)_266].xrv_rv, tmp377
	movq	%rax, -64(%rbp)	# tmp377, sv
	jmp	.L1323	#
.L1322:
.LBB330:
	.loc 1 5238 0
	movq	-104(%rbp), %rax	# cxt, tmp378
	movl	$1, 112(%rax)	#, cxt_28(D)->s_dirty
	movq	-32(%rbp), %rax	# sub, tmp379
	movl	12(%rax), %eax	# sub_68->sv_flags, D.22450
	andl	$262144, %eax	#, D.22450
	testl	%eax, %eax	# D.22450
	je	.L1324	#,
	.loc 1 5238 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# sub, tmp380
	movq	(%rax), %rax	# sub_68->sv_any, D.22454
	movq	(%rax), %rax	# MEM[(struct XPV *)_270].xpv_pv, iftmp.732
	jmp	.L1325	#
.L1324:
	.loc 1 5238 0 discriminator 2
	movq	-32(%rbp), %rax	# sub, tmp381
	movq	%rax, %rdi	# tmp381,
	call	Perl_sv_2pv_nolen	#
.L1325:
	.loc 1 5238 0 discriminator 3
	movq	%rax, %rsi	# iftmp.732,
	movl	$.LC51, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L1323:
.LBE330:
	.loc 1 5241 0 is_stmt 1
	movq	-64(%rbp), %rax	# sv, tmp382
	movq	%rax, PL_Sv(%rip)	# tmp382, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.734
	testq	%rax, %rax	# PL_Sv.734
	je	.L1327	#,
	.loc 1 5241 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.735
	movl	8(%rax), %edx	# PL_Sv.735_274->sv_refcnt, D.22450
	addl	$1, %edx	#, D.22450
	movl	%edx, 8(%rax)	# D.22450, PL_Sv.735_274->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.735_274->sv_refcnt, D.22450
	testl	%eax, %eax	# D.22450
	je	.L1327	#,
	.loc 1 5241 0
	nop
.L1327:
	.loc 1 5242 0 is_stmt 1
	movq	-32(%rbp), %rax	# sub, tmp383
	movq	%rax, %rdi	# tmp383,
	call	Perl_sv_free	#
	.loc 1 5244 0
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.736
	movl	PL_tmps_floor(%rip), %eax	# PL_tmps_floor, PL_tmps_floor.737
	cmpl	%eax, %edx	# PL_tmps_floor.737, PL_tmps_ix.736
	jle	.L1328	#,
	.loc 1 5244 0 is_stmt 0 discriminator 1
	call	Perl_free_tmps	#
.L1328:
	.loc 1 5245 0 is_stmt 1
	call	Perl_pop_scope	#
	.loc 1 5247 0
	movq	-64(%rbp), %rax	# sv, tmp384
	movq	%rax, PL_Sv(%rip)	# tmp384, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.739
	testq	%rax, %rax	# PL_Sv.739
	je	.L1330	#,
	.loc 1 5247 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.740
	movl	8(%rax), %edx	# PL_Sv.740_283->sv_refcnt, D.22450
	addl	$1, %edx	#, D.22450
	movl	%edx, 8(%rax)	# D.22450, PL_Sv.740_283->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.740_283->sv_refcnt, D.22450
	testl	%eax, %eax	# D.22450
	je	.L1330	#,
	.loc 1 5247 0
	nop
.L1330:
	.loc 1 5247 0 discriminator 4
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.741
	movq	-104(%rbp), %rax	# cxt, tmp385
	movq	24(%rax), %rax	# cxt_28(D)->aseen, D.22452
	movl	-80(%rbp), %ecx	# tagnum, tmp386
	movl	%ecx, %esi	# tmp386,
	movq	%rax, %rdi	# D.22452,
	call	Perl_av_store	#
	.loc 1 5249 0 is_stmt 1 discriminator 4
	movq	-64(%rbp), %rax	# sv, D.22448
.L1256:
	.loc 1 5251 0
	addq	$96, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	retrieve_code, .-retrieve_code
	.type	old_retrieve_array, @function
old_retrieve_array:
.LFB67:
	.loc 1 5264 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# cxt, cxt
	movq	%rsi, -48(%rbp)	# cname, cname
.LBB331:
	.loc 1 5277 0
	movq	-40(%rbp), %rax	# cxt, tmp108
	movq	216(%rax), %rax	# cxt_4(D)->fio, D.22473
	testq	%rax, %rax	# D.22473
	jne	.L1333	#,
	.loc 1 5277 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# cxt, tmp109
	movq	168(%rax), %rax	# cxt_4(D)->membuf.aptr, D.22474
	leaq	4(%rax), %rdx	#, D.22474
	movq	-40(%rbp), %rax	# cxt, tmp110
	movq	176(%rax), %rax	# cxt_4(D)->membuf.aend, D.22474
	cmpq	%rax, %rdx	# D.22474, D.22474
	ja	.L1334	#,
	movq	-40(%rbp), %rax	# cxt, tmp111
	movq	168(%rax), %rax	# cxt_4(D)->membuf.aptr, D.22474
	movq	%rax, %rdx	# D.22474, D.22475
	movq	-40(%rbp), %rax	# cxt, tmp112
	movq	168(%rax), %rax	# cxt_4(D)->membuf.aptr, D.22474
	andq	$-4, %rax	#, D.22475
	cmpq	%rax, %rdx	# D.22475, D.22475
	jne	.L1335	#,
	movq	-40(%rbp), %rax	# cxt, tmp113
	movq	168(%rax), %rax	# cxt_4(D)->membuf.aptr, D.22474
	movl	(%rax), %eax	# MEM[(int *)_14], len.742
	movl	%eax, -28(%rbp)	# len.742, len
	jmp	.L1336	#
.L1335:
	.loc 1 5277 0 discriminator 2
	movq	-40(%rbp), %rax	# cxt, tmp114
	movq	168(%rax), %rax	# cxt_4(D)->membuf.aptr, D.22474
	movl	(%rax), %eax	# MEM[(char * {ref-all})_16], D.22476
	movl	%eax, -28(%rbp)	# D.22476, MEM[(char * {ref-all})&len]
.L1336:
	.loc 1 5277 0 discriminator 1
	movq	-40(%rbp), %rax	# cxt, tmp115
	movq	168(%rax), %rax	# cxt_4(D)->membuf.aptr, D.22474
	leaq	4(%rax), %rdx	#, D.22474
	movq	-40(%rbp), %rax	# cxt, tmp116
	movq	%rdx, 168(%rax)	# D.22474, cxt_4(D)->membuf.aptr
	jmp	.L1337	#
.L1334:
	.loc 1 5277 0 discriminator 2
	movl	$0, %eax	#, D.22472
	jmp	.L1355	#
.L1333:
	movq	-40(%rbp), %rax	# cxt, tmp117
	movq	216(%rax), %rax	# cxt_4(D)->fio, D.22473
	leaq	-28(%rbp), %rcx	#, tmp118
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp118,
	movq	%rax, %rdi	# D.22473,
	call	Perl_PerlIO_read	#
	cmpq	$4, %rax	#, D.22477
	je	.L1337	#,
	.loc 1 5277 0 discriminator 1
	movl	$0, %eax	#, D.22472
	jmp	.L1355	#
.L1337:
	.loc 1 5277 0 discriminator 2
	movq	-40(%rbp), %rax	# cxt, tmp119
	movl	80(%rax), %eax	# cxt_4(D)->netorder, D.22476
	testl	%eax, %eax	# D.22476
	je	.L1339	#,
	.loc 1 5277 0 discriminator 1
	movl	-28(%rbp), %eax	# len, len.743
	cltq
	movq	%rax, %rdi	# D.22477,
	call	Perl_my_ntohl	#
	movl	%eax, -28(%rbp)	# len.744, len
.L1339:
.LBE331:
	.loc 1 5279 0 is_stmt 1
	call	Perl_newAV	#
	movq	%rax, -16(%rbp)	# tmp120, av
.LBB332:
	.loc 1 5280 0
	cmpq	$0, -16(%rbp)	#, av
	jne	.L1340	#,
	.loc 1 5280 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.22472
	jmp	.L1355	#
.L1340:
	.loc 1 5280 0 discriminator 2
	movq	-16(%rbp), %rax	# av, tmp121
	movq	%rax, PL_Sv(%rip)	# tmp121, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.746
	testq	%rax, %rax	# PL_Sv.746
	je	.L1342	#,
	.loc 1 5280 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.747
	movl	8(%rax), %edx	# PL_Sv.747_32->sv_refcnt, D.22478
	addl	$1, %edx	#, D.22478
	movl	%edx, 8(%rax)	# D.22478, PL_Sv.747_32->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.747_32->sv_refcnt, D.22478
	testl	%eax, %eax	# D.22478
	je	.L1342	#,
	.loc 1 5280 0
	nop
.L1342:
	.loc 1 5280 0 discriminator 4
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.748
	movq	-40(%rbp), %rax	# cxt, tmp122
	movq	64(%rax), %rax	# cxt_4(D)->tagnum, D.22477
	leaq	1(%rax), %rsi	#, D.22477
	movq	-40(%rbp), %rcx	# cxt, tmp123
	movq	%rsi, 64(%rcx)	# D.22477, cxt_4(D)->tagnum
	movl	%eax, %ecx	# D.22477, D.22476
	movq	-40(%rbp), %rax	# cxt, tmp124
	movq	24(%rax), %rax	# cxt_4(D)->aseen, D.22479
	movl	%ecx, %esi	# D.22476,
	movq	%rax, %rdi	# D.22479,
	call	Perl_av_store	#
	testq	%rax, %rax	# D.22480
	jne	.L1343	#,
	.loc 1 5280 0 discriminator 1
	movl	$0, %eax	#, D.22472
	jmp	.L1355	#
.L1343:
.LBE332:
	.loc 1 5281 0 is_stmt 1
	movl	-28(%rbp), %eax	# len, len.749
	testl	%eax, %eax	# len.749
	je	.L1344	#,
	.loc 1 5282 0
	movl	-28(%rbp), %edx	# len, len.750
	movq	-16(%rbp), %rax	# av, tmp125
	movl	%edx, %esi	# len.750,
	movq	%rax, %rdi	# tmp125,
	call	Perl_av_extend	#
	.loc 1 5290 0
	movl	$0, -24(%rbp)	#, i
	jmp	.L1346	#
.L1344:
	.loc 1 5284 0
	movq	-16(%rbp), %rax	# av, D.22472
	jmp	.L1355	#
.L1354:
	.loc 1 5291 0
	movq	-40(%rbp), %rax	# cxt, tmp126
	movq	216(%rax), %rax	# cxt_4(D)->fio, D.22473
	testq	%rax, %rax	# D.22473
	jne	.L1347	#,
	.loc 1 5291 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# cxt, tmp127
	movq	168(%rax), %rdx	# cxt_4(D)->membuf.aptr, D.22474
	movq	-40(%rbp), %rax	# cxt, tmp128
	movq	176(%rax), %rax	# cxt_4(D)->membuf.aend, D.22474
	cmpq	%rax, %rdx	# D.22474, D.22474
	jae	.L1348	#,
	movq	-40(%rbp), %rax	# cxt, tmp129
	movq	168(%rax), %rax	# cxt_4(D)->membuf.aptr, D.22474
	leaq	1(%rax), %rcx	#, D.22474
	movq	-40(%rbp), %rdx	# cxt, tmp130
	movq	%rcx, 168(%rdx)	# D.22474, cxt_4(D)->membuf.aptr
	movzbl	(%rax), %eax	# *_54, D.22481
	movzbl	%al, %eax	# D.22482, tmp131
	movl	%eax, -20(%rbp)	# tmp131, c
	jmp	.L1349	#
.L1348:
	.loc 1 5291 0 discriminator 2
	movl	$0, %eax	#, D.22472
	jmp	.L1355	#
.L1347:
	movq	-40(%rbp), %rax	# cxt, tmp132
	movq	216(%rax), %rax	# cxt_4(D)->fio, D.22473
	movq	%rax, %rdi	# D.22473,
	call	PerlIO_getc	#
	movl	%eax, -20(%rbp)	# tmp133, c
	cmpl	$-1, -20(%rbp)	#, c
	jne	.L1349	#,
	.loc 1 5291 0 discriminator 1
	movl	$0, %eax	#, D.22472
	jmp	.L1355	#
.L1349:
	.loc 1 5292 0 is_stmt 1
	cmpl	$73, -20(%rbp)	#, c
	jne	.L1350	#,
	.loc 1 5294 0
	jmp	.L1351	#
.L1350:
	.loc 1 5296 0
	cmpl	$105, -20(%rbp)	#, c
	je	.L1352	#,
	.loc 1 5297 0
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	retrieve_other	#
.L1352:
	.loc 1 5299 0
	movq	-40(%rbp), %rax	# cxt, tmp134
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp134,
	call	retrieve	#
	movq	%rax, -8(%rbp)	# tmp135, sv
	.loc 1 5300 0
	cmpq	$0, -8(%rbp)	#, sv
	jne	.L1353	#,
	.loc 1 5301 0
	movl	$0, %eax	#, D.22472
	jmp	.L1355	#
.L1353:
	.loc 1 5302 0
	movq	-8(%rbp), %rdx	# sv, tmp136
	movl	-24(%rbp), %ecx	# i, tmp137
	movq	-16(%rbp), %rax	# av, tmp138
	movl	%ecx, %esi	# tmp137,
	movq	%rax, %rdi	# tmp138,
	call	Perl_av_store	#
	testq	%rax, %rax	# D.22480
	jne	.L1351	#,
	.loc 1 5303 0
	movl	$0, %eax	#, D.22472
	jmp	.L1355	#
.L1351:
	.loc 1 5290 0
	addl	$1, -24(%rbp)	#, i
.L1346:
	.loc 1 5290 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# len, len.751
	cmpl	%eax, -24(%rbp)	# len.751, i
	jl	.L1354	#,
	.loc 1 5308 0 is_stmt 1
	movq	-16(%rbp), %rax	# av, D.22472
.L1355:
	.loc 1 5309 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	old_retrieve_array, .-old_retrieve_array
	.type	old_retrieve_hash, @function
old_retrieve_hash:
.LFB68:
	.loc 1 5324 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# cxt, cxt
	movq	%rsi, -48(%rbp)	# cname, cname
	.loc 1 5329 0
	movq	$0, -16(%rbp)	#, sv
.LBB333:
	.loc 1 5339 0
	movq	-40(%rbp), %rax	# cxt, tmp188
	movq	216(%rax), %rax	# cxt_8(D)->fio, D.22484
	testq	%rax, %rax	# D.22484
	jne	.L1357	#,
	.loc 1 5339 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# cxt, tmp189
	movq	168(%rax), %rax	# cxt_8(D)->membuf.aptr, D.22485
	leaq	4(%rax), %rdx	#, D.22485
	movq	-40(%rbp), %rax	# cxt, tmp190
	movq	176(%rax), %rax	# cxt_8(D)->membuf.aend, D.22485
	cmpq	%rax, %rdx	# D.22485, D.22485
	ja	.L1358	#,
	movq	-40(%rbp), %rax	# cxt, tmp191
	movq	168(%rax), %rax	# cxt_8(D)->membuf.aptr, D.22485
	movq	%rax, %rdx	# D.22485, D.22486
	movq	-40(%rbp), %rax	# cxt, tmp192
	movq	168(%rax), %rax	# cxt_8(D)->membuf.aptr, D.22485
	andq	$-4, %rax	#, D.22486
	cmpq	%rax, %rdx	# D.22486, D.22486
	jne	.L1359	#,
	movq	-40(%rbp), %rax	# cxt, tmp193
	movq	168(%rax), %rax	# cxt_8(D)->membuf.aptr, D.22485
	movl	(%rax), %eax	# MEM[(int *)_18], len.752
	movl	%eax, -32(%rbp)	# len.752, len
	jmp	.L1360	#
.L1359:
	.loc 1 5339 0 discriminator 2
	movq	-40(%rbp), %rax	# cxt, tmp194
	movq	168(%rax), %rax	# cxt_8(D)->membuf.aptr, D.22485
	movl	(%rax), %eax	# MEM[(char * {ref-all})_20], D.22487
	movl	%eax, -32(%rbp)	# D.22487, MEM[(char * {ref-all})&len]
.L1360:
	.loc 1 5339 0 discriminator 1
	movq	-40(%rbp), %rax	# cxt, tmp195
	movq	168(%rax), %rax	# cxt_8(D)->membuf.aptr, D.22485
	leaq	4(%rax), %rdx	#, D.22485
	movq	-40(%rbp), %rax	# cxt, tmp196
	movq	%rdx, 168(%rax)	# D.22485, cxt_8(D)->membuf.aptr
	jmp	.L1361	#
.L1358:
	.loc 1 5339 0 discriminator 2
	movl	$0, %eax	#, D.22483
	jmp	.L1395	#
.L1357:
	movq	-40(%rbp), %rax	# cxt, tmp197
	movq	216(%rax), %rax	# cxt_8(D)->fio, D.22484
	leaq	-32(%rbp), %rcx	#, tmp198
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp198,
	movq	%rax, %rdi	# D.22484,
	call	Perl_PerlIO_read	#
	cmpq	$4, %rax	#, D.22488
	je	.L1361	#,
	.loc 1 5339 0 discriminator 1
	movl	$0, %eax	#, D.22483
	jmp	.L1395	#
.L1361:
	.loc 1 5339 0 discriminator 2
	movq	-40(%rbp), %rax	# cxt, tmp199
	movl	80(%rax), %eax	# cxt_8(D)->netorder, D.22487
	testl	%eax, %eax	# D.22487
	je	.L1363	#,
	.loc 1 5339 0 discriminator 1
	movl	-32(%rbp), %eax	# len, len.753
	cltq
	movq	%rax, %rdi	# D.22488,
	call	Perl_my_ntohl	#
	movl	%eax, -32(%rbp)	# len.754, len
.L1363:
.LBE333:
	.loc 1 5341 0 is_stmt 1
	call	Perl_newHV	#
	movq	%rax, -8(%rbp)	# tmp200, hv
.LBB334:
	.loc 1 5342 0
	cmpq	$0, -8(%rbp)	#, hv
	jne	.L1364	#,
	.loc 1 5342 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.22483
	jmp	.L1395	#
.L1364:
	.loc 1 5342 0 discriminator 2
	movq	-8(%rbp), %rax	# hv, tmp201
	movq	%rax, PL_Sv(%rip)	# tmp201, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.756
	testq	%rax, %rax	# PL_Sv.756
	je	.L1366	#,
	.loc 1 5342 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.757
	movl	8(%rax), %edx	# PL_Sv.757_36->sv_refcnt, D.22489
	addl	$1, %edx	#, D.22489
	movl	%edx, 8(%rax)	# D.22489, PL_Sv.757_36->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.757_36->sv_refcnt, D.22489
	testl	%eax, %eax	# D.22489
	je	.L1366	#,
	.loc 1 5342 0
	nop
.L1366:
	.loc 1 5342 0 discriminator 4
	movq	PL_Sv(%rip), %rdx	# PL_Sv, PL_Sv.758
	movq	-40(%rbp), %rax	# cxt, tmp202
	movq	64(%rax), %rax	# cxt_8(D)->tagnum, D.22488
	leaq	1(%rax), %rsi	#, D.22488
	movq	-40(%rbp), %rcx	# cxt, tmp203
	movq	%rsi, 64(%rcx)	# D.22488, cxt_8(D)->tagnum
	movl	%eax, %ecx	# D.22488, D.22487
	movq	-40(%rbp), %rax	# cxt, tmp204
	movq	24(%rax), %rax	# cxt_8(D)->aseen, D.22490
	movl	%ecx, %esi	# D.22487,
	movq	%rax, %rdi	# D.22490,
	call	Perl_av_store	#
	testq	%rax, %rax	# D.22491
	jne	.L1367	#,
	.loc 1 5342 0 discriminator 1
	movl	$0, %eax	#, D.22483
	jmp	.L1395	#
.L1367:
.LBE334:
	.loc 1 5343 0 is_stmt 1
	movl	-32(%rbp), %eax	# len, len.759
	testl	%eax, %eax	# len.759
	jne	.L1368	#,
	.loc 1 5344 0
	movq	-8(%rbp), %rax	# hv, D.22483
	jmp	.L1395	#
.L1368:
	.loc 1 5345 0
	movl	-32(%rbp), %eax	# len, len.760
	movslq	%eax, %rdx	# len.760, D.22488
	movq	-8(%rbp), %rax	# hv, tmp205
	movq	%rdx, %rsi	# D.22488,
	movq	%rax, %rdi	# tmp205,
	call	Perl_hv_ksplit	#
	.loc 1 5351 0
	movl	$0, -24(%rbp)	#, i
	jmp	.L1369	#
.L1394:
	.loc 1 5356 0
	movq	-40(%rbp), %rax	# cxt, tmp206
	movq	216(%rax), %rax	# cxt_8(D)->fio, D.22484
	testq	%rax, %rax	# D.22484
	jne	.L1370	#,
	.loc 1 5356 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# cxt, tmp207
	movq	168(%rax), %rdx	# cxt_8(D)->membuf.aptr, D.22485
	movq	-40(%rbp), %rax	# cxt, tmp208
	movq	176(%rax), %rax	# cxt_8(D)->membuf.aend, D.22485
	cmpq	%rax, %rdx	# D.22485, D.22485
	jae	.L1371	#,
	movq	-40(%rbp), %rax	# cxt, tmp209
	movq	168(%rax), %rax	# cxt_8(D)->membuf.aptr, D.22485
	leaq	1(%rax), %rcx	#, D.22485
	movq	-40(%rbp), %rdx	# cxt, tmp210
	movq	%rcx, 168(%rdx)	# D.22485, cxt_8(D)->membuf.aptr
	movzbl	(%rax), %eax	# *_60, D.22492
	movzbl	%al, %eax	# D.22493, tmp211
	movl	%eax, -20(%rbp)	# tmp211, c
	jmp	.L1372	#
.L1371:
	.loc 1 5356 0 discriminator 2
	movl	$0, %eax	#, D.22483
	jmp	.L1395	#
.L1370:
	movq	-40(%rbp), %rax	# cxt, tmp212
	movq	216(%rax), %rax	# cxt_8(D)->fio, D.22484
	movq	%rax, %rdi	# D.22484,
	call	PerlIO_getc	#
	movl	%eax, -20(%rbp)	# tmp213, c
	cmpl	$-1, -20(%rbp)	#, c
	jne	.L1372	#,
	.loc 1 5356 0 discriminator 1
	movl	$0, %eax	#, D.22483
	jmp	.L1395	#
.L1372:
	.loc 1 5357 0 is_stmt 1
	cmpl	$86, -20(%rbp)	#, c
	jne	.L1373	#,
	.loc 1 5364 0
	movq	sv_h_undef.11549(%rip), %rax	# sv_h_undef, sv_h_undef.761
	testq	%rax, %rax	# sv_h_undef.761
	jne	.L1374	#,
	.loc 1 5365 0
	movl	$PL_sv_undef, %edi	#,
	call	Perl_newSVsv	#
	movq	%rax, sv_h_undef.11549(%rip)	# sv_h_undef.762, sv_h_undef
.L1374:
	.loc 1 5366 0
	movq	sv_h_undef.11549(%rip), %rax	# sv_h_undef, sv_h_undef.763
	movq	%rax, PL_Sv(%rip)	# sv_h_undef.763, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.765
	testq	%rax, %rax	# PL_Sv.765
	je	.L1376	#,
	.loc 1 5366 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.766
	movl	8(%rax), %edx	# PL_Sv.766_73->sv_refcnt, D.22489
	addl	$1, %edx	#, D.22489
	movl	%edx, 8(%rax)	# D.22489, PL_Sv.766_73->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.766_73->sv_refcnt, D.22489
	testl	%eax, %eax	# D.22489
	je	.L1376	#,
	.loc 1 5366 0
	nop
.L1376:
	.loc 1 5366 0 discriminator 4
	movq	PL_Sv(%rip), %rax	# PL_Sv, tmp214
	movq	%rax, -16(%rbp)	# tmp214, sv
	jmp	.L1377	#
.L1373:
	.loc 1 5367 0 is_stmt 1
	cmpl	$118, -20(%rbp)	#, c
	jne	.L1378	#,
	.loc 1 5369 0
	movq	-40(%rbp), %rax	# cxt, tmp215
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp215,
	call	retrieve	#
	movq	%rax, -16(%rbp)	# tmp216, sv
	.loc 1 5370 0
	cmpq	$0, -16(%rbp)	#, sv
	jne	.L1377	#,
	.loc 1 5371 0
	movl	$0, %eax	#, D.22483
	jmp	.L1395	#
.L1378:
	.loc 1 5373 0
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	retrieve_other	#
.L1377:
	.loc 1 5382 0
	movq	-40(%rbp), %rax	# cxt, tmp217
	movq	216(%rax), %rax	# cxt_8(D)->fio, D.22484
	testq	%rax, %rax	# D.22484
	jne	.L1379	#,
	.loc 1 5382 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# cxt, tmp218
	movq	168(%rax), %rdx	# cxt_8(D)->membuf.aptr, D.22485
	movq	-40(%rbp), %rax	# cxt, tmp219
	movq	176(%rax), %rax	# cxt_8(D)->membuf.aend, D.22485
	cmpq	%rax, %rdx	# D.22485, D.22485
	jae	.L1380	#,
	movq	-40(%rbp), %rax	# cxt, tmp220
	movq	168(%rax), %rax	# cxt_8(D)->membuf.aptr, D.22485
	leaq	1(%rax), %rcx	#, D.22485
	movq	-40(%rbp), %rdx	# cxt, tmp221
	movq	%rcx, 168(%rdx)	# D.22485, cxt_8(D)->membuf.aptr
	movzbl	(%rax), %eax	# *_86, D.22492
	movzbl	%al, %eax	# D.22493, tmp222
	movl	%eax, -20(%rbp)	# tmp222, c
	jmp	.L1381	#
.L1380:
	.loc 1 5382 0 discriminator 2
	movl	$0, %eax	#, D.22483
	jmp	.L1395	#
.L1379:
	movq	-40(%rbp), %rax	# cxt, tmp223
	movq	216(%rax), %rax	# cxt_8(D)->fio, D.22484
	movq	%rax, %rdi	# D.22484,
	call	PerlIO_getc	#
	movl	%eax, -20(%rbp)	# tmp224, c
	cmpl	$-1, -20(%rbp)	#, c
	jne	.L1381	#,
	.loc 1 5382 0 discriminator 1
	movl	$0, %eax	#, D.22483
	jmp	.L1395	#
.L1381:
	.loc 1 5383 0 is_stmt 1
	cmpl	$107, -20(%rbp)	#, c
	je	.L1382	#,
	.loc 1 5384 0
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	retrieve_other	#
.L1382:
.LBB335:
	.loc 1 5385 0
	movq	-40(%rbp), %rax	# cxt, tmp225
	movq	216(%rax), %rax	# cxt_8(D)->fio, D.22484
	testq	%rax, %rax	# D.22484
	jne	.L1383	#,
	.loc 1 5385 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# cxt, tmp226
	movq	168(%rax), %rax	# cxt_8(D)->membuf.aptr, D.22485
	leaq	4(%rax), %rdx	#, D.22485
	movq	-40(%rbp), %rax	# cxt, tmp227
	movq	176(%rax), %rax	# cxt_8(D)->membuf.aend, D.22485
	cmpq	%rax, %rdx	# D.22485, D.22485
	ja	.L1384	#,
	movq	-40(%rbp), %rax	# cxt, tmp228
	movq	168(%rax), %rax	# cxt_8(D)->membuf.aptr, D.22485
	movq	%rax, %rdx	# D.22485, D.22486
	movq	-40(%rbp), %rax	# cxt, tmp229
	movq	168(%rax), %rax	# cxt_8(D)->membuf.aptr, D.22485
	andq	$-4, %rax	#, D.22486
	cmpq	%rax, %rdx	# D.22486, D.22486
	jne	.L1385	#,
	movq	-40(%rbp), %rax	# cxt, tmp230
	movq	168(%rax), %rax	# cxt_8(D)->membuf.aptr, D.22485
	movl	(%rax), %eax	# MEM[(int *)_104], size.767
	movl	%eax, -28(%rbp)	# size.767, size
	jmp	.L1386	#
.L1385:
	.loc 1 5385 0 discriminator 2
	movq	-40(%rbp), %rax	# cxt, tmp231
	movq	168(%rax), %rax	# cxt_8(D)->membuf.aptr, D.22485
	movl	(%rax), %eax	# MEM[(char * {ref-all})_106], D.22487
	movl	%eax, -28(%rbp)	# D.22487, MEM[(char * {ref-all})&size]
.L1386:
	.loc 1 5385 0 discriminator 1
	movq	-40(%rbp), %rax	# cxt, tmp232
	movq	168(%rax), %rax	# cxt_8(D)->membuf.aptr, D.22485
	leaq	4(%rax), %rdx	#, D.22485
	movq	-40(%rbp), %rax	# cxt, tmp233
	movq	%rdx, 168(%rax)	# D.22485, cxt_8(D)->membuf.aptr
	jmp	.L1387	#
.L1384:
	.loc 1 5385 0 discriminator 2
	movl	$0, %eax	#, D.22483
	jmp	.L1395	#
.L1383:
	movq	-40(%rbp), %rax	# cxt, tmp234
	movq	216(%rax), %rax	# cxt_8(D)->fio, D.22484
	leaq	-28(%rbp), %rcx	#, tmp235
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp235,
	movq	%rax, %rdi	# D.22484,
	call	Perl_PerlIO_read	#
	cmpq	$4, %rax	#, D.22488
	je	.L1387	#,
	.loc 1 5385 0 discriminator 1
	movl	$0, %eax	#, D.22483
	jmp	.L1395	#
.L1387:
	.loc 1 5385 0 discriminator 2
	movq	-40(%rbp), %rax	# cxt, tmp236
	movl	80(%rax), %eax	# cxt_8(D)->netorder, D.22487
	testl	%eax, %eax	# D.22487
	je	.L1388	#,
	.loc 1 5385 0 discriminator 1
	movl	-28(%rbp), %eax	# size, size.768
	cltq
	movq	%rax, %rdi	# D.22488,
	call	Perl_my_ntohl	#
	movl	%eax, -28(%rbp)	# size.769, size
.L1388:
.LBE335:
	.loc 1 5386 0 is_stmt 1
	movl	-28(%rbp), %eax	# size, size.770
	movslq	%eax, %rdx	# size.770, D.22486
	movq	-40(%rbp), %rax	# cxt, tmp237
	movq	128(%rax), %rax	# cxt_8(D)->keybuf.asiz, D.22486
	cmpq	%rax, %rdx	# D.22486, D.22486
	jb	.L1389	#,
	.loc 1 5386 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# size, size.771
	cltq
	leaq	1(%rax), %rdx	#, D.22486
	movq	-40(%rbp), %rax	# cxt, tmp238
	movq	120(%rax), %rax	# cxt_8(D)->keybuf.arena, D.22485
	movq	%rdx, %rsi	# D.22486,
	movq	%rax, %rdi	# D.22485,
	call	Perl_safesysrealloc	#
	movq	-40(%rbp), %rdx	# cxt, tmp239
	movq	%rax, 120(%rdx)	# D.22494, cxt_8(D)->keybuf.arena
	movl	-28(%rbp), %eax	# size, size.772
	cltq
	leaq	1(%rax), %rdx	#, D.22486
	movq	-40(%rbp), %rax	# cxt, tmp240
	movq	%rdx, 128(%rax)	# D.22486, cxt_8(D)->keybuf.asiz
.L1389:
	.loc 1 5387 0 is_stmt 1
	movl	-28(%rbp), %eax	# size, size.773
	testl	%eax, %eax	# size.773
	je	.L1390	#,
	.loc 1 5388 0
	movq	-40(%rbp), %rax	# cxt, tmp241
	movq	216(%rax), %rax	# cxt_8(D)->fio, D.22484
	testq	%rax, %rax	# D.22484
	jne	.L1391	#,
	.loc 1 5388 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# cxt, tmp242
	movq	168(%rax), %rdx	# cxt_8(D)->membuf.aptr, D.22485
	movl	-28(%rbp), %eax	# size, size.774
	cltq
	addq	%rax, %rdx	# D.22495, D.22485
	movq	-40(%rbp), %rax	# cxt, tmp243
	movq	176(%rax), %rax	# cxt_8(D)->membuf.aend, D.22485
	cmpq	%rax, %rdx	# D.22485, D.22485
	ja	.L1392	#,
	movl	-28(%rbp), %eax	# size, size.775
	movslq	%eax, %rdx	# size.775, D.22486
	movq	-40(%rbp), %rax	# cxt, tmp244
	movq	168(%rax), %rcx	# cxt_8(D)->membuf.aptr, D.22485
	movq	-40(%rbp), %rax	# cxt, tmp245
	movq	120(%rax), %rax	# cxt_8(D)->keybuf.arena, D.22485
	movq	%rcx, %rsi	# D.22485,
	movq	%rax, %rdi	# D.22485,
	call	memcpy	#
	movq	-40(%rbp), %rax	# cxt, tmp246
	movq	168(%rax), %rdx	# cxt_8(D)->membuf.aptr, D.22485
	movl	-28(%rbp), %eax	# size, size.776
	cltq
	addq	%rax, %rdx	# D.22495, D.22485
	movq	-40(%rbp), %rax	# cxt, tmp247
	movq	%rdx, 168(%rax)	# D.22485, cxt_8(D)->membuf.aptr
	jmp	.L1390	#
.L1392:
	.loc 1 5388 0 discriminator 2
	movl	$0, %eax	#, D.22483
	jmp	.L1395	#
.L1391:
	movl	-28(%rbp), %eax	# size, size.777
	movslq	%eax, %rdx	# size.777, D.22486
	movq	-40(%rbp), %rax	# cxt, tmp248
	movq	120(%rax), %rcx	# cxt_8(D)->keybuf.arena, D.22485
	movq	-40(%rbp), %rax	# cxt, tmp249
	movq	216(%rax), %rax	# cxt_8(D)->fio, D.22484
	movq	%rcx, %rsi	# D.22485,
	movq	%rax, %rdi	# D.22484,
	call	Perl_PerlIO_read	#
	movl	-28(%rbp), %edx	# size, size.778
	movslq	%edx, %rdx	# size.778, D.22488
	cmpq	%rdx, %rax	# D.22488, D.22488
	je	.L1390	#,
	.loc 1 5388 0 discriminator 1
	movl	$0, %eax	#, D.22483
	jmp	.L1395	#
.L1390:
	.loc 1 5389 0 is_stmt 1
	movq	-40(%rbp), %rax	# cxt, tmp250
	movq	120(%rax), %rdx	# cxt_8(D)->keybuf.arena, D.22485
	movl	-28(%rbp), %eax	# size, size.779
	cltq
	addq	%rdx, %rax	# D.22485, D.22485
	movb	$0, (%rax)	#, *_157
	.loc 1 5396 0
	movl	-28(%rbp), %edx	# size, size.780
	movq	-40(%rbp), %rax	# cxt, tmp251
	movq	120(%rax), %rsi	# cxt_8(D)->keybuf.arena, D.22485
	movq	-16(%rbp), %rcx	# sv, tmp252
	movq	-8(%rbp), %rax	# hv, tmp253
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# tmp253,
	call	Perl_hv_store	#
	testq	%rax, %rax	# D.22491
	jne	.L1393	#,
	.loc 1 5397 0
	movl	$0, %eax	#, D.22483
	jmp	.L1395	#
.L1393:
	.loc 1 5351 0
	addl	$1, -24(%rbp)	#, i
.L1369:
	.loc 1 5351 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# len, len.781
	cmpl	%eax, -24(%rbp)	# len.781, i
	jl	.L1394	#,
	.loc 1 5402 0 is_stmt 1
	movq	-8(%rbp), %rax	# hv, D.22483
.L1395:
	.loc 1 5403 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	old_retrieve_hash, .-old_retrieve_hash
	.section	.rodata
.LC52:
	.string	"File is not a perl storable"
.LC53:
	.string	"Storable::accept_future_minor"
	.align 8
.LC54:
	.string	"Storable binary image v%d.%d more recent than I am (v%d.%d)"
.LC55:
	.string	"Byte order is not compatible"
	.align 8
.LC56:
	.string	"Integer size is not compatible"
	.align 8
.LC57:
	.string	"Long integer size is not compatible"
	.align 8
.LC58:
	.string	"Pointer size is not compatible"
.LC59:
	.string	"Double size is not compatible"
	.text
	.type	magic_check, @function
magic_check:
.LFB69:
	.loc 1 5421 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$360, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -360(%rbp)	# cxt, cxt
	.loc 1 5421 0
	movq	%fs:40, %rax	#, tmp312
	movq	%rax, -24(%rbp)	# tmp312, D.22510
	xorl	%eax, %eax	# tmp312
	.loc 1 5437 0
	movl	$0, -332(%rbp)	#, version_minor
	.loc 1 5445 0
	movq	-360(%rbp), %rax	# cxt, tmp182
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22497
	testq	%rax, %rax	# D.22497
	je	.L1397	#,
.LBB336:
	.loc 1 5448 0
	movq	$5, -304(%rbp)	#, len
	.loc 1 5451 0
	movq	-360(%rbp), %rax	# cxt, tmp183
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22497
	testq	%rax, %rax	# D.22497
	jne	.L1398	#,
	.loc 1 5451 0 is_stmt 0 discriminator 1
	movq	-360(%rbp), %rax	# cxt, tmp184
	movq	168(%rax), %rdx	# cxt_15(D)->membuf.aptr, D.22498
	movq	-304(%rbp), %rax	# len, tmp185
	addq	%rax, %rdx	# tmp185, D.22498
	movq	-360(%rbp), %rax	# cxt, tmp186
	movq	176(%rax), %rax	# cxt_15(D)->membuf.aend, D.22498
	cmpq	%rax, %rdx	# D.22498, D.22498
	ja	.L1399	#,
	movq	-360(%rbp), %rax	# cxt, tmp187
	movq	168(%rax), %rcx	# cxt_15(D)->membuf.aptr, D.22498
	movq	-304(%rbp), %rdx	# len, tmp188
	leaq	-288(%rbp), %rax	#, tmp189
	movq	%rcx, %rsi	# D.22498,
	movq	%rax, %rdi	# tmp189,
	call	memcpy	#
	movq	-360(%rbp), %rax	# cxt, tmp190
	movq	168(%rax), %rdx	# cxt_15(D)->membuf.aptr, D.22498
	movq	-304(%rbp), %rax	# len, tmp191
	addq	%rax, %rdx	# tmp191, D.22498
	movq	-360(%rbp), %rax	# cxt, tmp192
	movq	%rdx, 168(%rax)	# D.22498, cxt_15(D)->membuf.aptr
	jmp	.L1400	#
.L1399:
	.loc 1 5451 0 discriminator 2
	movl	$0, %eax	#, D.22496
	jmp	.L1445	#
.L1398:
	movq	-360(%rbp), %rax	# cxt, tmp193
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22497
	movq	-304(%rbp), %rdx	# len, tmp194
	leaq	-288(%rbp), %rcx	#, tmp195
	movq	%rcx, %rsi	# tmp195,
	movq	%rax, %rdi	# D.22497,
	call	Perl_PerlIO_read	#
	movq	-304(%rbp), %rdx	# len, len.782
	cmpq	%rdx, %rax	# len.782, D.22499
	je	.L1400	#,
	.loc 1 5451 0 discriminator 1
	movl	$0, %eax	#, D.22496
	jmp	.L1445	#
.L1400:
	.loc 1 5454 0 is_stmt 1
	subq	$1, -304(%rbp)	#, len
	leaq	-288(%rbp), %rdx	#, tmp196
	movq	-304(%rbp), %rax	# len, tmp200
	addq	%rdx, %rax	# tmp196, tmp199
	movq	%rax, -312(%rbp)	# tmp199, current
	.loc 1 5456 0
	movq	-304(%rbp), %rdx	# len, tmp201
	leaq	-288(%rbp), %rax	#, tmp202
	movl	$magicstr, %esi	#,
	movq	%rax, %rdi	# tmp202,
	call	memcmp	#
	testl	%eax, %eax	# D.22500
	je	.L1402	#,
	.loc 1 5464 0
	movq	$10, -296(%rbp)	#, old_len
	.loc 1 5465 0
	movq	-360(%rbp), %rax	# cxt, tmp203
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22497
	testq	%rax, %rax	# D.22497
	jne	.L1403	#,
	.loc 1 5465 0 is_stmt 0 discriminator 1
	movq	-360(%rbp), %rax	# cxt, tmp204
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22498
	movq	-304(%rbp), %rdx	# len, tmp205
	movq	-296(%rbp), %rcx	# old_len, tmp206
	subq	%rdx, %rcx	# tmp205, D.22501
	movq	%rcx, %rdx	# D.22501, D.22501
	addq	%rax, %rdx	# D.22498, D.22498
	movq	-360(%rbp), %rax	# cxt, tmp207
	movq	176(%rax), %rax	# cxt_15(D)->membuf.aend, D.22498
	cmpq	%rax, %rdx	# D.22498, D.22498
	ja	.L1404	#,
	movq	-304(%rbp), %rax	# len, tmp208
	movq	-296(%rbp), %rdx	# old_len, tmp209
	subq	%rax, %rdx	# tmp208, D.22501
	movq	-360(%rbp), %rax	# cxt, tmp210
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22498
	movq	-312(%rbp), %rcx	# current, tmp211
	addq	$1, %rcx	#, D.22502
	movq	%rax, %rsi	# D.22498,
	movq	%rcx, %rdi	# D.22502,
	call	memcpy	#
	movq	-360(%rbp), %rax	# cxt, tmp212
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22498
	movq	-304(%rbp), %rdx	# len, tmp213
	movq	-296(%rbp), %rcx	# old_len, tmp214
	subq	%rdx, %rcx	# tmp213, D.22501
	movq	%rcx, %rdx	# D.22501, D.22501
	addq	%rax, %rdx	# D.22498, D.22498
	movq	-360(%rbp), %rax	# cxt, tmp215
	movq	%rdx, 168(%rax)	# D.22498, cxt_15(D)->membuf.aptr
	jmp	.L1405	#
.L1404:
	.loc 1 5465 0 discriminator 2
	movl	$0, %eax	#, D.22496
	jmp	.L1445	#
.L1403:
	movq	-304(%rbp), %rax	# len, tmp216
	movq	-296(%rbp), %rdx	# old_len, tmp217
	subq	%rax, %rdx	# tmp216, D.22501
	movq	-312(%rbp), %rax	# current, tmp218
	leaq	1(%rax), %rcx	#, D.22503
	movq	-360(%rbp), %rax	# cxt, tmp219
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22497
	movq	%rcx, %rsi	# D.22503,
	movq	%rax, %rdi	# D.22497,
	call	Perl_PerlIO_read	#
	movq	-304(%rbp), %rdx	# len, tmp220
	movq	-296(%rbp), %rcx	# old_len, tmp221
	subq	%rdx, %rcx	# tmp220, D.22501
	movq	%rcx, %rdx	# D.22501, D.22501
	cmpq	%rdx, %rax	# D.22499, D.22499
	je	.L1405	#,
	.loc 1 5465 0 discriminator 1
	movl	$0, %eax	#, D.22496
	jmp	.L1445	#
.L1405:
	.loc 1 5467 0 is_stmt 1
	movq	-296(%rbp), %rdx	# old_len, tmp222
	leaq	-288(%rbp), %rax	#, tmp223
	movl	$old_magicstr, %esi	#,
	movq	%rax, %rdi	# tmp223,
	call	memcmp	#
	testl	%eax, %eax	# D.22500
	je	.L1406	#,
.LBB337:
	.loc 1 5468 0
	movq	-360(%rbp), %rax	# cxt, tmp224
	movl	$1, 112(%rax)	#, cxt_15(D)->s_dirty
	movl	$.LC52, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L1406:
.LBE337:
	.loc 1 5469 0
	leaq	-288(%rbp), %rdx	#, tmp225
	movq	-296(%rbp), %rax	# old_len, tmp229
	addq	%rdx, %rax	# tmp225, tmp228
	movq	%rax, -312(%rbp)	# tmp228, current
.L1402:
	.loc 1 5471 0
	movq	-312(%rbp), %rax	# current, tmp230
	movzbl	(%rax), %eax	# *current_1, D.22504
	movzbl	%al, %eax	# D.22504, tmp231
	movl	%eax, -336(%rbp)	# tmp231, use_network_order
.LBE336:
	jmp	.L1407	#
.L1397:
	.loc 1 5473 0
	movq	-360(%rbp), %rax	# cxt, tmp232
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22497
	testq	%rax, %rax	# D.22497
	jne	.L1408	#,
	.loc 1 5473 0 is_stmt 0 discriminator 1
	movq	-360(%rbp), %rax	# cxt, tmp233
	movq	168(%rax), %rdx	# cxt_15(D)->membuf.aptr, D.22498
	movq	-360(%rbp), %rax	# cxt, tmp234
	movq	176(%rax), %rax	# cxt_15(D)->membuf.aend, D.22498
	cmpq	%rax, %rdx	# D.22498, D.22498
	jae	.L1409	#,
	movq	-360(%rbp), %rax	# cxt, tmp235
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22498
	leaq	1(%rax), %rcx	#, D.22498
	movq	-360(%rbp), %rdx	# cxt, tmp236
	movq	%rcx, 168(%rdx)	# D.22498, cxt_15(D)->membuf.aptr
	movzbl	(%rax), %eax	# *_61, D.22505
	movzbl	%al, %eax	# D.22504, tmp237
	movl	%eax, -336(%rbp)	# tmp237, use_network_order
	jmp	.L1407	#
.L1409:
	.loc 1 5473 0 discriminator 2
	movl	$0, %eax	#, D.22496
	jmp	.L1445	#
.L1408:
	movq	-360(%rbp), %rax	# cxt, tmp238
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22497
	movq	%rax, %rdi	# D.22497,
	call	PerlIO_getc	#
	movl	%eax, -336(%rbp)	# tmp239, use_network_order
	cmpl	$-1, -336(%rbp)	#, use_network_order
	jne	.L1407	#,
	.loc 1 5473 0 discriminator 1
	movl	$0, %eax	#, D.22496
	jmp	.L1445	#
.L1407:
	.loc 1 5481 0 is_stmt 1
	movl	-336(%rbp), %eax	# use_network_order, tmp243
	sarl	%eax	# tmp242
	movl	%eax, -324(%rbp)	# tmp242, version_major
	.loc 1 5482 0
	cmpl	$0, -324(%rbp)	#, version_major
	je	.L1410	#,
	.loc 1 5482 0 is_stmt 0 discriminator 1
	movl	$sv_retrieve, %eax	#, iftmp.783
	jmp	.L1411	#
.L1410:
	.loc 1 5482 0 discriminator 2
	movl	$sv_old_retrieve, %eax	#, iftmp.783
.L1411:
	.loc 1 5482 0 discriminator 3
	movq	-360(%rbp), %rdx	# cxt, tmp244
	movq	%rax, 232(%rdx)	# iftmp.783, cxt_15(D)->retrieve_vtbl
	.loc 1 5492 0 is_stmt 1 discriminator 3
	cmpl	$1, -324(%rbp)	#, version_major
	jle	.L1412	#,
	.loc 1 5493 0
	movq	-360(%rbp), %rax	# cxt, tmp245
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22497
	testq	%rax, %rax	# D.22497
	jne	.L1413	#,
	.loc 1 5493 0 is_stmt 0 discriminator 1
	movq	-360(%rbp), %rax	# cxt, tmp246
	movq	168(%rax), %rdx	# cxt_15(D)->membuf.aptr, D.22498
	movq	-360(%rbp), %rax	# cxt, tmp247
	movq	176(%rax), %rax	# cxt_15(D)->membuf.aend, D.22498
	cmpq	%rax, %rdx	# D.22498, D.22498
	jae	.L1414	#,
	movq	-360(%rbp), %rax	# cxt, tmp248
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22498
	leaq	1(%rax), %rcx	#, D.22498
	movq	-360(%rbp), %rdx	# cxt, tmp249
	movq	%rcx, 168(%rdx)	# D.22498, cxt_15(D)->membuf.aptr
	movzbl	(%rax), %eax	# *_77, D.22505
	movzbl	%al, %eax	# D.22504, tmp250
	movl	%eax, -332(%rbp)	# tmp250, version_minor
	jmp	.L1412	#
.L1414:
	.loc 1 5493 0 discriminator 2
	movl	$0, %eax	#, D.22496
	jmp	.L1445	#
.L1413:
	movq	-360(%rbp), %rax	# cxt, tmp251
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22497
	movq	%rax, %rdi	# D.22497,
	call	PerlIO_getc	#
	movl	%eax, -332(%rbp)	# tmp252, version_minor
	cmpl	$-1, -332(%rbp)	#, version_minor
	jne	.L1412	#,
	.loc 1 5493 0 discriminator 1
	movl	$0, %eax	#, D.22496
	jmp	.L1445	#
.L1412:
	.loc 1 5495 0 is_stmt 1
	movq	-360(%rbp), %rax	# cxt, tmp253
	movl	-324(%rbp), %edx	# version_major, tmp254
	movl	%edx, 224(%rax)	# tmp254, cxt_15(D)->ver_major
	.loc 1 5496 0
	movq	-360(%rbp), %rax	# cxt, tmp255
	movl	-332(%rbp), %edx	# version_minor, tmp256
	movl	%edx, 228(%rax)	# tmp256, cxt_15(D)->ver_minor
	.loc 1 5507 0
	cmpl	$2, -324(%rbp)	#, version_major
	jg	.L1415	#,
	.loc 1 5508 0
	cmpl	$2, -324(%rbp)	#, version_major
	jne	.L1416	#,
	.loc 1 5509 0
	cmpl	$6, -332(%rbp)	#, version_minor
	jle	.L1416	#,
.L1415:
.LBB338:
	.loc 1 5512 0
	movl	$1, -328(%rbp)	#, croak_now
	.loc 1 5516 0
	cmpl	$2, -324(%rbp)	#, version_major
	jne	.L1417	#,
	.loc 1 5519 0
	movq	-360(%rbp), %rax	# cxt, tmp257
	movl	108(%rax), %eax	# cxt_15(D)->accept_future_minor, D.22500
	testl	%eax, %eax	# D.22500
	jns	.L1418	#,
	.loc 1 5521 0
	movl	$1, %esi	#,
	movl	$.LC53, %edi	#,
	call	Perl_get_sv	#
	.loc 1 5523 0
	testq	%rax, %rax	# D.22496
	je	.L1419	#,
	.loc 1 5521 0 discriminator 1
	movl	$1, %esi	#,
	movl	$.LC53, %edi	#,
	call	Perl_get_sv	#
	movl	12(%rax), %eax	# _89->sv_flags, D.22506
	andl	$262144, %eax	#, D.22506
	.loc 1 5523 0 discriminator 1
	testl	%eax, %eax	# D.22506
	je	.L1420	#,
	.loc 1 5521 0 discriminator 1
	movl	$1, %esi	#,
	movl	$.LC53, %edi	#,
	call	Perl_get_sv	#
	movq	(%rax), %rax	# _92->sv_any, PL_Xpv.787
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.787, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.788
	.loc 1 5523 0 discriminator 1
	testq	%rax, %rax	# PL_Xpv.788
	je	.L1421	#,
	.loc 1 5521 0 discriminator 3
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.789
	movq	8(%rax), %rax	# PL_Xpv.789_95->xpv_cur, D.22501
	.loc 1 5523 0 discriminator 3
	cmpq	$1, %rax	#, D.22501
	ja	.L1422	#,
	.loc 1 5521 0
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.790
	movq	8(%rax), %rax	# PL_Xpv.790_97->xpv_cur, D.22501
	testq	%rax, %rax	# D.22501
	je	.L1421	#,
	.loc 1 5521 0 is_stmt 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.791
	movq	(%rax), %rax	# PL_Xpv.791_99->xpv_pv, D.22498
	movzbl	(%rax), %eax	# *_100, D.22505
	cmpb	$48, %al	#, D.22505
	je	.L1421	#,
.L1422:
	.loc 1 5523 0 is_stmt 1 discriminator 5
	movl	$1, %eax	#, iftmp.786
	jmp	.L1423	#
.L1421:
	.loc 1 5523 0 is_stmt 0 discriminator 4
	movl	$0, %eax	#, iftmp.786
.L1423:
	jmp	.L1429	#
.L1420:
	.loc 1 5521 0 is_stmt 1 discriminator 2
	movl	$1, %esi	#,
	movl	$.LC53, %edi	#,
	call	Perl_get_sv	#
	movl	12(%rax), %eax	# _105->sv_flags, D.22506
	andl	$65536, %eax	#, D.22506
	.loc 1 5523 0 discriminator 2
	testl	%eax, %eax	# D.22506
	je	.L1425	#,
	.loc 1 5521 0
	movl	$1, %esi	#,
	movl	$.LC53, %edi	#,
	call	Perl_get_sv	#
	movq	(%rax), %rax	# _108->sv_any, D.22503
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_109].xiv_iv, D.22499
	testq	%rax, %rax	# D.22499
	setne	%al	#, D.22507
	.loc 1 5523 0
	movzbl	%al, %eax	# D.22507, iftmp.792
	jmp	.L1429	#
.L1425:
	.loc 1 5521 0 discriminator 7
	movl	$1, %esi	#,
	movl	$.LC53, %edi	#,
	call	Perl_get_sv	#
	movl	12(%rax), %eax	# _113->sv_flags, D.22506
	andl	$131072, %eax	#, D.22506
	.loc 1 5523 0 discriminator 7
	testl	%eax, %eax	# D.22506
	je	.L1427	#,
	.loc 1 5521 0
	movl	$1, %esi	#,
	movl	$.LC53, %edi	#,
	call	Perl_get_sv	#
	movq	(%rax), %rax	# _116->sv_any, D.22503
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_117].xnv_nv, D.22508
	xorpd	%xmm1, %xmm1	# tmp259
	ucomisd	%xmm1, %xmm0	# tmp259, D.22508
	setp	%dl	#, tmp258
	movl	$1, %eax	#, tmp261
	xorpd	%xmm1, %xmm1	# tmp260
	ucomisd	%xmm1, %xmm0	# tmp260, D.22508
	cmove	%edx, %eax	# tmp258,, D.22507
	.loc 1 5523 0
	movzbl	%al, %eax	# D.22507, iftmp.793
	jmp	.L1429	#
.L1427:
	.loc 1 5521 0 discriminator 8
	movl	$1, %esi	#,
	movl	$.LC53, %edi	#,
	call	Perl_get_sv	#
	movq	%rax, %rdi	# D.22496,
	call	Perl_sv_2bool	#
	.loc 1 5523 0 discriminator 8
	testb	%al, %al	# D.22505
	setne	%al	#, D.22507
	movzbl	%al, %eax	# D.22507, iftmp.793
	jmp	.L1429	#
.L1419:
	.loc 1 5523 0 is_stmt 0 discriminator 2
	movl	$0, %eax	#, iftmp.784
.L1429:
	.loc 1 5521 0 is_stmt 1
	movq	-360(%rbp), %rdx	# cxt, tmp262
	movl	%eax, 108(%rdx)	# iftmp.784, cxt_15(D)->accept_future_minor
.L1418:
	.loc 1 5524 0
	movq	-360(%rbp), %rax	# cxt, tmp263
	movl	108(%rax), %eax	# cxt_15(D)->accept_future_minor, D.22500
	cmpl	$1, %eax	#, D.22500
	jne	.L1417	#,
	.loc 1 5525 0
	movl	$0, -328(%rbp)	#, croak_now
.L1417:
	.loc 1 5527 0
	cmpl	$0, -328(%rbp)	#, croak_now
	je	.L1416	#,
.LBB339:
	.loc 1 5528 0
	movq	-360(%rbp), %rax	# cxt, tmp264
	movl	$1, 112(%rax)	#, cxt_15(D)->s_dirty
	movl	-332(%rbp), %edx	# version_minor, tmp265
	movl	-324(%rbp), %eax	# version_major, tmp266
	movl	$6, %r8d	#,
	movl	$2, %ecx	#,
	movl	%eax, %esi	# tmp266,
	movl	$.LC54, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L1416:
.LBE339:
.LBE338:
	.loc 1 5539 0
	movl	-336(%rbp), %eax	# use_network_order, tmp267
	andl	$1, %eax	#, D.22500
	movl	%eax, %edx	# D.22500, D.22500
	movq	-360(%rbp), %rax	# cxt, tmp268
	movl	%edx, 80(%rax)	# D.22500, cxt_15(D)->netorder
	movq	-360(%rbp), %rax	# cxt, tmp269
	movl	80(%rax), %eax	# cxt_15(D)->netorder, D.22500
	testl	%eax, %eax	# D.22500
	je	.L1430	#,
	.loc 1 5540 0
	movl	$PL_sv_undef, %eax	#, D.22496
	jmp	.L1445	#
.L1430:
	.loc 1 5543 0
	cmpl	$1, -324(%rbp)	#, version_major
	jle	.L1431	#,
	.loc 1 5543 0 is_stmt 0 discriminator 1
	cmpl	$1, -332(%rbp)	#, version_minor
	jle	.L1431	#,
	.loc 1 5543 0 discriminator 3
	movl	$1, %eax	#, iftmp.794
	jmp	.L1432	#
.L1431:
	.loc 1 5543 0 discriminator 2
	movl	$0, %eax	#, iftmp.794
.L1432:
	.loc 1 5543 0 discriminator 4
	movl	%eax, -320(%rbp)	# iftmp.794, use_NV_size
	.loc 1 5545 0 is_stmt 1 discriminator 4
	movq	-360(%rbp), %rax	# cxt, tmp270
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22497
	testq	%rax, %rax	# D.22497
	jne	.L1433	#,
	.loc 1 5545 0 is_stmt 0 discriminator 1
	movq	-360(%rbp), %rax	# cxt, tmp271
	movq	168(%rax), %rdx	# cxt_15(D)->membuf.aptr, D.22498
	movq	-360(%rbp), %rax	# cxt, tmp272
	movq	176(%rax), %rax	# cxt_15(D)->membuf.aend, D.22498
	cmpq	%rax, %rdx	# D.22498, D.22498
	jae	.L1434	#,
	movq	-360(%rbp), %rax	# cxt, tmp273
	movq	168(%rax), %rax	# cxt_15(D)->membuf.aptr, D.22498
	leaq	1(%rax), %rcx	#, D.22498
	movq	-360(%rbp), %rdx	# cxt, tmp274
	movq	%rcx, 168(%rdx)	# D.22498, cxt_15(D)->membuf.aptr
	movzbl	(%rax), %eax	# *_141, D.22505
	movzbl	%al, %eax	# D.22504, tmp275
	movl	%eax, -340(%rbp)	# tmp275, c
	jmp	.L1435	#
.L1434:
	.loc 1 5545 0 discriminator 2
	movl	$0, %eax	#, D.22496
	jmp	.L1445	#
.L1433:
	movq	-360(%rbp), %rax	# cxt, tmp276
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22497
	movq	%rax, %rdi	# D.22497,
	call	PerlIO_getc	#
	movl	%eax, -340(%rbp)	# tmp277, c
	cmpl	$-1, -340(%rbp)	#, c
	jne	.L1435	#,
	.loc 1 5545 0 discriminator 1
	movl	$0, %eax	#, D.22496
	jmp	.L1445	#
.L1435:
	.loc 1 5546 0 is_stmt 1
	movl	-340(%rbp), %eax	# c, tmp278
	leal	3(%rax), %edx	#, D.22500
	movl	-320(%rbp), %eax	# use_NV_size, tmp282
	addl	%edx, %eax	# D.22500, tmp281
	movl	%eax, -316(%rbp)	# tmp281, length
	.loc 1 5547 0
	movq	-360(%rbp), %rax	# cxt, tmp283
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22497
	testq	%rax, %rax	# D.22497
	jne	.L1436	#,
	.loc 1 5547 0 is_stmt 0 discriminator 1
	movq	-360(%rbp), %rax	# cxt, tmp284
	movq	168(%rax), %rdx	# cxt_15(D)->membuf.aptr, D.22498
	movl	-316(%rbp), %eax	# length, tmp285
	cltq
	addq	%rax, %rdx	# D.22509, D.22498
	movq	-360(%rbp), %rax	# cxt, tmp286
	movq	176(%rax), %rax	# cxt_15(D)->membuf.aend, D.22498
	cmpq	%rax, %rdx	# D.22498, D.22498
	ja	.L1437	#,
	movl	-316(%rbp), %eax	# length, tmp287
	movslq	%eax, %rdx	# tmp287, D.22501
	movq	-360(%rbp), %rax	# cxt, tmp288
	movq	168(%rax), %rcx	# cxt_15(D)->membuf.aptr, D.22498
	leaq	-288(%rbp), %rax	#, tmp289
	movq	%rcx, %rsi	# D.22498,
	movq	%rax, %rdi	# tmp289,
	call	memcpy	#
	movq	-360(%rbp), %rax	# cxt, tmp290
	movq	168(%rax), %rdx	# cxt_15(D)->membuf.aptr, D.22498
	movl	-316(%rbp), %eax	# length, tmp291
	cltq
	addq	%rax, %rdx	# D.22509, D.22498
	movq	-360(%rbp), %rax	# cxt, tmp292
	movq	%rdx, 168(%rax)	# D.22498, cxt_15(D)->membuf.aptr
	jmp	.L1438	#
.L1437:
	.loc 1 5547 0 discriminator 2
	movl	$0, %eax	#, D.22496
	jmp	.L1445	#
.L1436:
	movl	-316(%rbp), %eax	# length, tmp293
	movslq	%eax, %rdx	# tmp293, D.22501
	movq	-360(%rbp), %rax	# cxt, tmp294
	movq	216(%rax), %rax	# cxt_15(D)->fio, D.22497
	leaq	-288(%rbp), %rcx	#, tmp295
	movq	%rcx, %rsi	# tmp295,
	movq	%rax, %rdi	# D.22497,
	call	Perl_PerlIO_read	#
	movl	-316(%rbp), %edx	# length, tmp296
	movslq	%edx, %rdx	# tmp296, D.22499
	cmpq	%rdx, %rax	# D.22499, D.22499
	je	.L1438	#,
	.loc 1 5547 0 discriminator 1
	movl	$0, %eax	#, D.22496
	jmp	.L1445	#
.L1438:
	.loc 1 5561 0 is_stmt 1
	cmpl	$8, -340(%rbp)	#, c
	jne	.L1439	#,
	.loc 1 5561 0 is_stmt 0 discriminator 1
	movl	-340(%rbp), %eax	# c, tmp297
	movslq	%eax, %rdx	# tmp297, D.22501
	leaq	-288(%rbp), %rax	#, tmp298
	movl	$byteorderstr, %esi	#,
	movq	%rax, %rdi	# tmp298,
	call	memcmp	#
	testl	%eax, %eax	# D.22500
	je	.L1440	#,
.L1439:
.LBB340:
	.loc 1 5562 0 is_stmt 1
	movq	-360(%rbp), %rax	# cxt, tmp299
	movl	$1, 112(%rax)	#, cxt_15(D)->s_dirty
	movl	$.LC55, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L1440:
.LBE340:
	.loc 1 5565 0
	movl	-340(%rbp), %eax	# c, tmp300
	cltq
	leaq	-288(%rbp), %rdx	#, tmp301
	addq	%rdx, %rax	# tmp301, tmp302
	movq	%rax, -312(%rbp)	# tmp302, current
	.loc 1 5568 0
	movq	-312(%rbp), %rax	# current, current.795
	leaq	1(%rax), %rdx	#, tmp303
	movq	%rdx, -312(%rbp)	# tmp303, current
	movzbl	(%rax), %eax	# *current.795_172, D.22504
	cmpb	$4, %al	#, D.22504
	je	.L1441	#,
.LBB341:
	.loc 1 5569 0
	movq	-360(%rbp), %rax	# cxt, tmp304
	movl	$1, 112(%rax)	#, cxt_15(D)->s_dirty
	movl	$.LC56, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L1441:
.LBE341:
	.loc 1 5572 0
	movq	-312(%rbp), %rax	# current, current.796
	leaq	1(%rax), %rdx	#, tmp305
	movq	%rdx, -312(%rbp)	# tmp305, current
	movzbl	(%rax), %eax	# *current.796_175, D.22504
	cmpb	$8, %al	#, D.22504
	je	.L1442	#,
.LBB342:
	.loc 1 5573 0
	movq	-360(%rbp), %rax	# cxt, tmp306
	movl	$1, 112(%rax)	#, cxt_15(D)->s_dirty
	movl	$.LC57, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L1442:
.LBE342:
	.loc 1 5576 0
	movq	-312(%rbp), %rax	# current, tmp307
	movzbl	(%rax), %eax	# *current_176, D.22504
	cmpb	$8, %al	#, D.22504
	je	.L1443	#,
.LBB343:
	.loc 1 5577 0
	movq	-360(%rbp), %rax	# cxt, tmp308
	movl	$1, 112(%rax)	#, cxt_15(D)->s_dirty
	movl	$.LC58, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L1443:
.LBE343:
	.loc 1 5579 0
	cmpl	$0, -320(%rbp)	#, use_NV_size
	je	.L1444	#,
	.loc 1 5581 0
	addq	$1, -312(%rbp)	#, current
	movq	-312(%rbp), %rax	# current, tmp309
	movzbl	(%rax), %eax	# *current_179, D.22504
	cmpb	$8, %al	#, D.22504
	je	.L1444	#,
.LBB344:
	.loc 1 5582 0
	movq	-360(%rbp), %rax	# cxt, tmp310
	movl	$1, 112(%rax)	#, cxt_15(D)->s_dirty
	movl	$.LC59, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L1444:
.LBE344:
	.loc 1 5585 0
	movl	$PL_sv_undef, %eax	#, D.22496
.L1445:
	.loc 1 5586 0
	movq	-24(%rbp), %rbx	# D.22510, tmp313
	xorq	%fs:40, %rbx	#, tmp313
	je	.L1446	#,
	call	__stack_chk_fail	#
.L1446:
	addq	$360, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	magic_check, .-magic_check
	.section	.rodata
	.align 8
.LC60:
	.string	"Old tag 0x%lx should have been mapped already"
	.align 8
.LC61:
	.string	"Storable binary image v%d.%d contains data of type %d. This Storable is v%d.%d and can only handle data types up to %d"
	.text
	.type	retrieve, @function
retrieve:
.LFB70:
	.loc 1 5596 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# cxt, cxt
	movq	%rsi, -80(%rbp)	# cname, cname
	.loc 1 5613 0
	movq	-72(%rbp), %rax	# cxt, tmp286
	movq	8(%rax), %rax	# cxt_17(D)->hseen, D.22520
	testq	%rax, %rax	# D.22520
	je	.L1448	#,
.LBB345:
	.loc 1 5615 0
	movq	-72(%rbp), %rax	# cxt, tmp287
	movl	80(%rax), %eax	# cxt_17(D)->netorder, D.22521
	testl	%eax, %eax	# D.22521
	je	.L1449	#,
.LBB346:
	.loc 1 5617 0
	movq	-72(%rbp), %rax	# cxt, tmp288
	movq	216(%rax), %rax	# cxt_17(D)->fio, D.22522
	testq	%rax, %rax	# D.22522
	jne	.L1450	#,
	.loc 1 5617 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# cxt, tmp289
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22523
	leaq	4(%rax), %rdx	#, D.22523
	movq	-72(%rbp), %rax	# cxt, tmp290
	movq	176(%rax), %rax	# cxt_17(D)->membuf.aend, D.22523
	cmpq	%rax, %rdx	# D.22523, D.22523
	ja	.L1451	#,
	movq	-72(%rbp), %rax	# cxt, tmp291
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22523
	movl	(%rax), %eax	# MEM[(char * {ref-all})_24], D.22521
	movl	%eax, -52(%rbp)	# D.22521, MEM[(char * {ref-all})&nettag]
	movq	-72(%rbp), %rax	# cxt, tmp292
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22523
	leaq	4(%rax), %rdx	#, D.22523
	movq	-72(%rbp), %rax	# cxt, tmp293
	movq	%rdx, 168(%rax)	# D.22523, cxt_17(D)->membuf.aptr
	jmp	.L1452	#
.L1451:
	.loc 1 5617 0 discriminator 2
	movl	$0, %eax	#, D.22519
	jmp	.L1470	#
.L1450:
	movq	-72(%rbp), %rax	# cxt, tmp294
	movq	216(%rax), %rax	# cxt_17(D)->fio, D.22522
	leaq	-52(%rbp), %rcx	#, tmp295
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp295,
	movq	%rax, %rdi	# D.22522,
	call	Perl_PerlIO_read	#
	cmpq	$4, %rax	#, D.22524
	je	.L1452	#,
	.loc 1 5617 0 discriminator 1
	movl	$0, %eax	#, D.22519
	jmp	.L1470	#
.L1452:
	.loc 1 5618 0 is_stmt 1 discriminator 2
	movl	-52(%rbp), %eax	# nettag, nettag.797
	cltq
	movq	%rax, -40(%rbp)	# tag.798, tag
.LBE346:
	jmp	.L1454	#
.L1449:
	.loc 1 5620 0
	movq	-72(%rbp), %rax	# cxt, tmp296
	movq	216(%rax), %rax	# cxt_17(D)->fio, D.22522
	testq	%rax, %rax	# D.22522
	jne	.L1456	#,
	.loc 1 5620 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# cxt, tmp297
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22523
	leaq	8(%rax), %rdx	#, D.22523
	movq	-72(%rbp), %rax	# cxt, tmp298
	movq	176(%rax), %rax	# cxt_17(D)->membuf.aend, D.22523
	cmpq	%rax, %rdx	# D.22523, D.22523
	ja	.L1457	#,
	movq	-72(%rbp), %rax	# cxt, tmp299
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22523
	movq	(%rax), %rax	# MEM[(char * {ref-all})_38], D.22525
	movq	%rax, -40(%rbp)	# D.22525, MEM[(char * {ref-all})&tag]
	movq	-72(%rbp), %rax	# cxt, tmp300
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22523
	leaq	8(%rax), %rdx	#, D.22523
	movq	-72(%rbp), %rax	# cxt, tmp301
	movq	%rdx, 168(%rax)	# D.22523, cxt_17(D)->membuf.aptr
	jmp	.L1454	#
.L1457:
	.loc 1 5620 0 discriminator 2
	movl	$0, %eax	#, D.22519
	jmp	.L1470	#
.L1456:
	movq	-72(%rbp), %rax	# cxt, tmp302
	movq	216(%rax), %rax	# cxt_17(D)->fio, D.22522
	leaq	-40(%rbp), %rcx	#, tmp303
	movl	$8, %edx	#,
	movq	%rcx, %rsi	# tmp303,
	movq	%rax, %rdi	# D.22522,
	call	Perl_PerlIO_read	#
	cmpq	$8, %rax	#, D.22524
	je	.L1454	#,
	.loc 1 5620 0 discriminator 1
	movl	$0, %eax	#, D.22519
	jmp	.L1470	#
.L1454:
	.loc 1 5622 0 is_stmt 1
	movq	-72(%rbp), %rax	# cxt, tmp304
	movq	216(%rax), %rax	# cxt_17(D)->fio, D.22522
	testq	%rax, %rax	# D.22522
	jne	.L1458	#,
	.loc 1 5622 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# cxt, tmp305
	movq	168(%rax), %rdx	# cxt_17(D)->membuf.aptr, D.22523
	movq	-72(%rbp), %rax	# cxt, tmp306
	movq	176(%rax), %rax	# cxt_17(D)->membuf.aend, D.22523
	cmpq	%rax, %rdx	# D.22523, D.22523
	jae	.L1459	#,
	movq	-72(%rbp), %rax	# cxt, tmp307
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22523
	leaq	1(%rax), %rcx	#, D.22523
	movq	-72(%rbp), %rdx	# cxt, tmp308
	movq	%rcx, 168(%rdx)	# D.22523, cxt_17(D)->membuf.aptr
	movzbl	(%rax), %eax	# *_50, D.22526
	movzbl	%al, %eax	# D.22527, tmp309
	movl	%eax, -48(%rbp)	# tmp309, type
	jmp	.L1460	#
.L1459:
	.loc 1 5622 0 discriminator 2
	movl	$0, %eax	#, D.22519
	jmp	.L1470	#
.L1458:
	movq	-72(%rbp), %rax	# cxt, tmp310
	movq	216(%rax), %rax	# cxt_17(D)->fio, D.22522
	movq	%rax, %rdi	# D.22522,
	call	PerlIO_getc	#
	movl	%eax, -48(%rbp)	# tmp311, type
	cmpl	$-1, -48(%rbp)	#, type
	jne	.L1460	#,
	.loc 1 5622 0 discriminator 1
	movl	$0, %eax	#, D.22519
	jmp	.L1470	#
.L1460:
	.loc 1 5623 0 is_stmt 1
	cmpl	$0, -48(%rbp)	#, type
	jne	.L1461	#,
.LBB347:
	.loc 1 5625 0
	movq	-72(%rbp), %rax	# cxt, tmp312
	movq	8(%rax), %rax	# cxt_17(D)->hseen, D.22520
	leaq	-40(%rbp), %rsi	#, tmp313
	movl	$0, %ecx	#,
	movl	$8, %edx	#,
	movq	%rax, %rdi	# D.22520,
	call	Perl_hv_fetch	#
	movq	%rax, -32(%rbp)	# tmp314, svh
	.loc 1 5626 0
	cmpq	$0, -32(%rbp)	#, svh
	jne	.L1462	#,
.LBB348:
	.loc 1 5627 0
	movq	-72(%rbp), %rax	# cxt, tmp315
	movl	$1, 112(%rax)	#, cxt_17(D)->s_dirty
	movq	-40(%rbp), %rax	# tag, tag.799
	movq	%rax, %rsi	# tag.799,
	movl	$.LC60, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L1462:
.LBE348:
	.loc 1 5629 0
	movq	-32(%rbp), %rax	# svh, tmp316
	movq	(%rax), %rax	# *svh_60, D.22519
	movl	12(%rax), %eax	# _62->sv_flags, D.22528
	andl	$65536, %eax	#, D.22528
	testl	%eax, %eax	# D.22528
	je	.L1463	#,
	.loc 1 5629 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# svh, tmp317
	movq	(%rax), %rax	# *svh_60, D.22519
	movq	(%rax), %rax	# _65->sv_any, D.22529
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_66].xiv_iv, D.22524
	jmp	.L1464	#
.L1463:
	.loc 1 5629 0 discriminator 2
	movq	-32(%rbp), %rax	# svh, tmp318
	movq	(%rax), %rax	# *svh_60, D.22519
	movq	%rax, %rdi	# D.22519,
	call	Perl_sv_2iv	#
.L1464:
	.loc 1 5629 0 discriminator 3
	movl	%eax, -44(%rbp)	# iftmp.800, tagn
	.loc 1 5635 0 is_stmt 1 discriminator 3
	movq	-72(%rbp), %rax	# cxt, tmp319
	movq	24(%rax), %rax	# cxt_17(D)->aseen, D.22530
	movl	-44(%rbp), %ecx	# tagn, tmp320
	movl	$0, %edx	#,
	movl	%ecx, %esi	# tmp320,
	movq	%rax, %rdi	# D.22530,
	call	Perl_av_fetch	#
	movq	%rax, -32(%rbp)	# tmp321, svh
	.loc 1 5636 0 discriminator 3
	cmpq	$0, -32(%rbp)	#, svh
	jne	.L1465	#,
.LBB349:
	.loc 1 5637 0
	movq	-72(%rbp), %rax	# cxt, tmp322
	movl	$1, 112(%rax)	#, cxt_17(D)->s_dirty
	movl	-44(%rbp), %eax	# tagn, tmp323
	cltq
	movq	%rax, %rsi	# D.22524,
	movl	$.LC36, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L1465:
.LBE349:
	.loc 1 5639 0
	movq	-32(%rbp), %rax	# svh, tmp324
	movq	(%rax), %rax	# *svh_74, tmp325
	movq	%rax, -24(%rbp)	# tmp325, sv
	.loc 1 5641 0
	movq	-24(%rbp), %rax	# sv, tmp326
	movq	%rax, PL_Sv(%rip)	# tmp326, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.802
	testq	%rax, %rax	# PL_Sv.802
	je	.L1467	#,
	.loc 1 5641 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.803
	movl	8(%rax), %edx	# PL_Sv.803_78->sv_refcnt, D.22528
	addl	$1, %edx	#, D.22528
	movl	%edx, 8(%rax)	# D.22528, PL_Sv.803_78->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.803_78->sv_refcnt, D.22528
	testl	%eax, %eax	# D.22528
	je	.L1467	#,
	.loc 1 5641 0
	nop
.L1467:
	.loc 1 5642 0 is_stmt 1
	movq	-24(%rbp), %rax	# sv, D.22519
	jmp	.L1470	#
.L1461:
.LBE347:
	.loc 1 5653 0
	movq	-72(%rbp), %rax	# cxt, tmp327
	movq	64(%rax), %rax	# cxt_17(D)->tagnum, D.22524
	movq	%rax, %rdi	# D.22524,
	call	Perl_newSViv	#
	movq	%rax, %rdx	#, D.22519
	movq	-72(%rbp), %rax	# cxt, tmp328
	movq	8(%rax), %rax	# cxt_17(D)->hseen, D.22520
	leaq	-40(%rbp), %rsi	#, tmp329
	movl	$0, %r8d	#,
	movq	%rdx, %rcx	# D.22519,
	movl	$8, %edx	#,
	movq	%rax, %rdi	# D.22520,
	call	Perl_hv_store	#
	testq	%rax, %rax	# D.22531
	jne	.L1469	#,
	.loc 1 5655 0
	movl	$0, %eax	#, D.22519
	jmp	.L1470	#
.L1448:
.LBE345:
	.loc 1 5664 0
	movq	-72(%rbp), %rax	# cxt, tmp330
	movq	216(%rax), %rax	# cxt_17(D)->fio, D.22522
	testq	%rax, %rax	# D.22522
	jne	.L1471	#,
	.loc 1 5664 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# cxt, tmp331
	movq	168(%rax), %rdx	# cxt_17(D)->membuf.aptr, D.22523
	movq	-72(%rbp), %rax	# cxt, tmp332
	movq	176(%rax), %rax	# cxt_17(D)->membuf.aend, D.22523
	cmpq	%rax, %rdx	# D.22523, D.22523
	jae	.L1472	#,
	movq	-72(%rbp), %rax	# cxt, tmp333
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22523
	leaq	1(%rax), %rcx	#, D.22523
	movq	-72(%rbp), %rdx	# cxt, tmp334
	movq	%rcx, 168(%rdx)	# D.22523, cxt_17(D)->membuf.aptr
	movzbl	(%rax), %eax	# *_94, D.22526
	movzbl	%al, %eax	# D.22527, tmp335
	movl	%eax, -48(%rbp)	# tmp335, type
	jmp	.L1473	#
.L1472:
	.loc 1 5664 0 discriminator 2
	movl	$0, %eax	#, D.22519
	jmp	.L1470	#
.L1471:
	movq	-72(%rbp), %rax	# cxt, tmp336
	movq	216(%rax), %rax	# cxt_17(D)->fio, D.22522
	movq	%rax, %rdi	# D.22522,
	call	PerlIO_getc	#
	movl	%eax, -48(%rbp)	# tmp337, type
	cmpl	$-1, -48(%rbp)	#, type
	jne	.L1473	#,
	.loc 1 5664 0 discriminator 1
	movl	$0, %eax	#, D.22519
	jmp	.L1470	#
.L1473:
	.loc 1 5672 0 is_stmt 1
	cmpl	$0, -48(%rbp)	#, type
	jne	.L1474	#,
.LBB350:
	.loc 1 5674 0
	movq	-72(%rbp), %rax	# cxt, tmp338
	movq	216(%rax), %rax	# cxt_17(D)->fio, D.22522
	testq	%rax, %rax	# D.22522
	jne	.L1475	#,
	.loc 1 5674 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# cxt, tmp339
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22523
	leaq	4(%rax), %rdx	#, D.22523
	movq	-72(%rbp), %rax	# cxt, tmp340
	movq	176(%rax), %rax	# cxt_17(D)->membuf.aend, D.22523
	cmpq	%rax, %rdx	# D.22523, D.22523
	ja	.L1476	#,
	movq	-72(%rbp), %rax	# cxt, tmp341
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22523
	movq	%rax, %rdx	# D.22523, D.22525
	movq	-72(%rbp), %rax	# cxt, tmp342
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22523
	andq	$-4, %rax	#, D.22525
	cmpq	%rax, %rdx	# D.22525, D.22525
	jne	.L1477	#,
	movq	-72(%rbp), %rax	# cxt, tmp343
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22523
	movl	(%rax), %eax	# MEM[(int *)_112], tag.804
	movl	%eax, -40(%rbp)	# tag.804, tag
	jmp	.L1478	#
.L1477:
	.loc 1 5674 0 discriminator 2
	movq	-72(%rbp), %rax	# cxt, tmp344
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22523
	movl	(%rax), %eax	# MEM[(char * {ref-all})_114], D.22521
	movl	%eax, -40(%rbp)	# D.22521, MEM[(char * {ref-all})&tag]
.L1478:
	.loc 1 5674 0 discriminator 1
	movq	-72(%rbp), %rax	# cxt, tmp345
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22523
	leaq	4(%rax), %rdx	#, D.22523
	movq	-72(%rbp), %rax	# cxt, tmp346
	movq	%rdx, 168(%rax)	# D.22523, cxt_17(D)->membuf.aptr
	jmp	.L1479	#
.L1476:
	.loc 1 5674 0 discriminator 2
	movl	$0, %eax	#, D.22519
	jmp	.L1470	#
.L1475:
	movq	-72(%rbp), %rax	# cxt, tmp347
	movq	216(%rax), %rax	# cxt_17(D)->fio, D.22522
	leaq	-40(%rbp), %rcx	#, tmp348
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp348,
	movq	%rax, %rdi	# D.22522,
	call	Perl_PerlIO_read	#
	cmpq	$4, %rax	#, D.22524
	je	.L1479	#,
	.loc 1 5674 0 discriminator 1
	movl	$0, %eax	#, D.22519
	jmp	.L1470	#
.L1479:
	.loc 1 5675 0 is_stmt 1
	movl	-40(%rbp), %eax	# tag, tag.805
	cltq
	movq	%rax, %rdi	# D.22524,
	call	Perl_my_ntohl	#
	movl	%eax, -40(%rbp)	# tag.806, tag
	.loc 1 5676 0
	movl	-40(%rbp), %ecx	# tag, tag.807
	movq	-72(%rbp), %rax	# cxt, tmp349
	movq	24(%rax), %rax	# cxt_17(D)->aseen, D.22530
	movl	$0, %edx	#,
	movl	%ecx, %esi	# tag.807,
	movq	%rax, %rdi	# D.22530,
	call	Perl_av_fetch	#
	movq	%rax, -32(%rbp)	# tmp350, svh
	.loc 1 5677 0
	cmpq	$0, -32(%rbp)	#, svh
	jne	.L1481	#,
.LBB351:
	.loc 1 5678 0
	movq	-72(%rbp), %rax	# cxt, tmp351
	movl	$1, 112(%rax)	#, cxt_17(D)->s_dirty
	movl	-40(%rbp), %eax	# tag, tag.808
	cltq
	movq	%rax, %rsi	# D.22524,
	movl	$.LC36, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L1481:
.LBE351:
	.loc 1 5680 0
	movq	-32(%rbp), %rax	# svh, tmp352
	movq	(%rax), %rax	# *svh_128, tmp353
	movq	%rax, -24(%rbp)	# tmp353, sv
	.loc 1 5682 0
	movq	-24(%rbp), %rax	# sv, tmp354
	movq	%rax, PL_Sv(%rip)	# tmp354, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.810
	testq	%rax, %rax	# PL_Sv.810
	je	.L1483	#,
	.loc 1 5682 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.811
	movl	8(%rax), %edx	# PL_Sv.811_133->sv_refcnt, D.22528
	addl	$1, %edx	#, D.22528
	movl	%edx, 8(%rax)	# D.22528, PL_Sv.811_133->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.811_133->sv_refcnt, D.22528
	testl	%eax, %eax	# D.22528
	je	.L1483	#,
	.loc 1 5682 0
	nop
.L1483:
	.loc 1 5683 0 is_stmt 1
	movq	-24(%rbp), %rax	# sv, D.22519
	jmp	.L1470	#
.L1474:
.LBE350:
	.loc 1 5684 0
	cmpl	$26, -48(%rbp)	#, type
	jle	.L1469	#,
	.loc 1 5684 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# cxt, tmp355
	movl	228(%rax), %eax	# cxt_17(D)->ver_minor, D.22521
	cmpl	$6, %eax	#, D.22521
	jle	.L1469	#,
	.loc 1 5685 0 is_stmt 1
	movq	-72(%rbp), %rax	# cxt, tmp356
	movl	108(%rax), %eax	# cxt_17(D)->accept_future_minor, D.22521
	testl	%eax, %eax	# D.22521
	jns	.L1484	#,
	.loc 1 5687 0
	movl	$1, %esi	#,
	movl	$.LC53, %edi	#,
	call	Perl_get_sv	#
	.loc 1 5689 0
	testq	%rax, %rax	# D.22519
	je	.L1485	#,
	.loc 1 5687 0 discriminator 1
	movl	$1, %esi	#,
	movl	$.LC53, %edi	#,
	call	Perl_get_sv	#
	movl	12(%rax), %eax	# _143->sv_flags, D.22528
	andl	$262144, %eax	#, D.22528
	.loc 1 5689 0 discriminator 1
	testl	%eax, %eax	# D.22528
	je	.L1486	#,
	.loc 1 5687 0 discriminator 1
	movl	$1, %esi	#,
	movl	$.LC53, %edi	#,
	call	Perl_get_sv	#
	movq	(%rax), %rax	# _146->sv_any, PL_Xpv.815
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.815, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.816
	.loc 1 5689 0 discriminator 1
	testq	%rax, %rax	# PL_Xpv.816
	je	.L1487	#,
	.loc 1 5687 0 discriminator 3
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.817
	movq	8(%rax), %rax	# PL_Xpv.817_149->xpv_cur, D.22525
	.loc 1 5689 0 discriminator 3
	cmpq	$1, %rax	#, D.22525
	ja	.L1488	#,
	.loc 1 5687 0
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.818
	movq	8(%rax), %rax	# PL_Xpv.818_151->xpv_cur, D.22525
	testq	%rax, %rax	# D.22525
	je	.L1487	#,
	.loc 1 5687 0 is_stmt 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.819
	movq	(%rax), %rax	# PL_Xpv.819_153->xpv_pv, D.22523
	movzbl	(%rax), %eax	# *_154, D.22526
	cmpb	$48, %al	#, D.22526
	je	.L1487	#,
.L1488:
	.loc 1 5689 0 is_stmt 1 discriminator 5
	movl	$1, %eax	#, iftmp.814
	jmp	.L1489	#
.L1487:
	.loc 1 5689 0 is_stmt 0 discriminator 4
	movl	$0, %eax	#, iftmp.814
.L1489:
	jmp	.L1495	#
.L1486:
	.loc 1 5687 0 is_stmt 1 discriminator 2
	movl	$1, %esi	#,
	movl	$.LC53, %edi	#,
	call	Perl_get_sv	#
	movl	12(%rax), %eax	# _159->sv_flags, D.22528
	andl	$65536, %eax	#, D.22528
	.loc 1 5689 0 discriminator 2
	testl	%eax, %eax	# D.22528
	je	.L1491	#,
	.loc 1 5687 0
	movl	$1, %esi	#,
	movl	$.LC53, %edi	#,
	call	Perl_get_sv	#
	movq	(%rax), %rax	# _162->sv_any, D.22529
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_163].xiv_iv, D.22524
	testq	%rax, %rax	# D.22524
	setne	%al	#, D.22532
	.loc 1 5689 0
	movzbl	%al, %eax	# D.22532, iftmp.820
	jmp	.L1495	#
.L1491:
	.loc 1 5687 0 discriminator 7
	movl	$1, %esi	#,
	movl	$.LC53, %edi	#,
	call	Perl_get_sv	#
	movl	12(%rax), %eax	# _167->sv_flags, D.22528
	andl	$131072, %eax	#, D.22528
	.loc 1 5689 0 discriminator 7
	testl	%eax, %eax	# D.22528
	je	.L1493	#,
	.loc 1 5687 0
	movl	$1, %esi	#,
	movl	$.LC53, %edi	#,
	call	Perl_get_sv	#
	movq	(%rax), %rax	# _170->sv_any, D.22529
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_171].xnv_nv, D.22533
	xorpd	%xmm1, %xmm1	# tmp358
	ucomisd	%xmm1, %xmm0	# tmp358, D.22533
	setp	%dl	#, tmp357
	movl	$1, %eax	#, tmp360
	xorpd	%xmm1, %xmm1	# tmp359
	ucomisd	%xmm1, %xmm0	# tmp359, D.22533
	cmove	%edx, %eax	# tmp357,, D.22532
	.loc 1 5689 0
	movzbl	%al, %eax	# D.22532, iftmp.821
	jmp	.L1495	#
.L1493:
	.loc 1 5687 0 discriminator 8
	movl	$1, %esi	#,
	movl	$.LC53, %edi	#,
	call	Perl_get_sv	#
	movq	%rax, %rdi	# D.22519,
	call	Perl_sv_2bool	#
	.loc 1 5689 0 discriminator 8
	testb	%al, %al	# D.22526
	setne	%al	#, D.22532
	movzbl	%al, %eax	# D.22532, iftmp.821
	jmp	.L1495	#
.L1485:
	.loc 1 5689 0 is_stmt 0 discriminator 2
	movl	$0, %eax	#, iftmp.812
.L1495:
	.loc 1 5687 0 is_stmt 1
	movq	-72(%rbp), %rdx	# cxt, tmp361
	movl	%eax, 108(%rdx)	# iftmp.812, cxt_17(D)->accept_future_minor
.L1484:
	.loc 1 5690 0
	movq	-72(%rbp), %rax	# cxt, tmp362
	movl	108(%rax), %eax	# cxt_17(D)->accept_future_minor, D.22521
	cmpl	$1, %eax	#, D.22521
	jne	.L1469	#,
.LBB352:
	.loc 1 5691 0
	movq	-72(%rbp), %rax	# cxt, tmp363
	movl	$1, 112(%rax)	#, cxt_17(D)->s_dirty
	movq	-72(%rbp), %rax	# cxt, tmp364
	movl	228(%rax), %edx	# cxt_17(D)->ver_minor, D.22521
	movq	-72(%rbp), %rax	# cxt, tmp365
	movl	224(%rax), %eax	# cxt_17(D)->ver_major, D.22521
	movl	-48(%rbp), %ecx	# type, tmp366
	movl	$26, (%rsp)	#,
	movl	$6, %r9d	#,
	movl	$2, %r8d	#,
	movl	%eax, %esi	# D.22521,
	movl	$.LC61, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L1469:
.LBE352:
	.loc 1 5704 0
	movq	-72(%rbp), %rax	# cxt, tmp367
	movq	232(%rax), %rdx	# cxt_17(D)->retrieve_vtbl, D.22534
	movl	$27, %eax	#, tmp368
	cmpl	$27, -48(%rbp)	#, type
	cmovle	-48(%rbp), %eax	# type,, D.22521
	cltq
	salq	$3, %rax	#, D.22525
	addq	%rdx, %rax	# D.22534, D.22534
	movq	(%rax), %rdx	# *_190, D.22535
	movq	-80(%rbp), %rcx	# cname, tmp369
	movq	-72(%rbp), %rax	# cxt, tmp370
	movq	%rcx, %rsi	# tmp369,
	movq	%rax, %rdi	# tmp370,
	movl	$0, %eax	#,
	call	*%rdx	# D.22535
	movq	%rax, -24(%rbp)	# tmp371, sv
	.loc 1 5705 0
	cmpq	$0, -24(%rbp)	#, sv
	jne	.L1496	#,
	.loc 1 5706 0
	movl	$0, %eax	#, D.22519
	jmp	.L1470	#
.L1496:
	.loc 1 5720 0
	movq	-72(%rbp), %rax	# cxt, tmp372
	movl	224(%rax), %eax	# cxt_17(D)->ver_major, D.22521
	cmpl	$1, %eax	#, D.22521
	jg	.L1497	#,
	.loc 1 5721 0
	jmp	.L1498	#
.L1521:
.LBB353:
	.loc 1 5723 0
	movl	-48(%rbp), %eax	# type, type
	cmpl	$66, %eax	#, type
	je	.L1500	#,
	cmpl	$98, %eax	#, type
	jne	.L1522	#,
	.loc 1 5725 0
	movq	-72(%rbp), %rax	# cxt, tmp374
	movq	216(%rax), %rax	# cxt_17(D)->fio, D.22522
	testq	%rax, %rax	# D.22522
	jne	.L1502	#,
	.loc 1 5725 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# cxt, tmp375
	movq	168(%rax), %rdx	# cxt_17(D)->membuf.aptr, D.22523
	movq	-72(%rbp), %rax	# cxt, tmp376
	movq	176(%rax), %rax	# cxt_17(D)->membuf.aend, D.22523
	cmpq	%rax, %rdx	# D.22523, D.22523
	jae	.L1503	#,
	movq	-72(%rbp), %rax	# cxt, tmp377
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22523
	leaq	1(%rax), %rcx	#, D.22523
	movq	-72(%rbp), %rdx	# cxt, tmp378
	movq	%rcx, 168(%rdx)	# D.22523, cxt_17(D)->membuf.aptr
	movzbl	(%rax), %eax	# *_213, D.22526
	movzbl	%al, %eax	# D.22527, len.822
	movl	%eax, -40(%rbp)	# len.822, len
	jmp	.L1504	#
.L1503:
	.loc 1 5725 0 discriminator 2
	movl	$0, %eax	#, D.22519
	jmp	.L1470	#
.L1502:
	movq	-72(%rbp), %rax	# cxt, tmp379
	movq	216(%rax), %rax	# cxt_17(D)->fio, D.22522
	movq	%rax, %rdi	# D.22522,
	call	PerlIO_getc	#
	movl	%eax, -40(%rbp)	# len.823, len
	movl	-40(%rbp), %eax	# len, len.824
	cmpl	$-1, %eax	#, len.824
	jne	.L1504	#,
	.loc 1 5725 0 discriminator 1
	movl	$0, %eax	#, D.22519
	jmp	.L1470	#
.L1504:
	.loc 1 5726 0 is_stmt 1
	jmp	.L1506	#
.L1500:
.LBB354:
	.loc 1 5728 0
	movq	-72(%rbp), %rax	# cxt, tmp380
	movq	216(%rax), %rax	# cxt_17(D)->fio, D.22522
	testq	%rax, %rax	# D.22522
	jne	.L1507	#,
	.loc 1 5728 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# cxt, tmp381
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22523
	leaq	4(%rax), %rdx	#, D.22523
	movq	-72(%rbp), %rax	# cxt, tmp382
	movq	176(%rax), %rax	# cxt_17(D)->membuf.aend, D.22523
	cmpq	%rax, %rdx	# D.22523, D.22523
	ja	.L1508	#,
	movq	-72(%rbp), %rax	# cxt, tmp383
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22523
	movq	%rax, %rdx	# D.22523, D.22525
	movq	-72(%rbp), %rax	# cxt, tmp384
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22523
	andq	$-4, %rax	#, D.22525
	cmpq	%rax, %rdx	# D.22525, D.22525
	jne	.L1509	#,
	movq	-72(%rbp), %rax	# cxt, tmp385
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22523
	movl	(%rax), %eax	# MEM[(int *)_232], len.825
	movl	%eax, -40(%rbp)	# len.825, len
	jmp	.L1510	#
.L1509:
	.loc 1 5728 0 discriminator 2
	movq	-72(%rbp), %rax	# cxt, tmp386
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22523
	movl	(%rax), %eax	# MEM[(char * {ref-all})_234], D.22521
	movl	%eax, -40(%rbp)	# D.22521, MEM[(char * {ref-all})&len]
.L1510:
	.loc 1 5728 0 discriminator 1
	movq	-72(%rbp), %rax	# cxt, tmp387
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22523
	leaq	4(%rax), %rdx	#, D.22523
	movq	-72(%rbp), %rax	# cxt, tmp388
	movq	%rdx, 168(%rax)	# D.22523, cxt_17(D)->membuf.aptr
	jmp	.L1511	#
.L1508:
	.loc 1 5728 0 discriminator 2
	movl	$0, %eax	#, D.22519
	jmp	.L1470	#
.L1507:
	movq	-72(%rbp), %rax	# cxt, tmp389
	movq	216(%rax), %rax	# cxt_17(D)->fio, D.22522
	leaq	-40(%rbp), %rcx	#, tmp390
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp390,
	movq	%rax, %rdi	# D.22522,
	call	Perl_PerlIO_read	#
	cmpq	$4, %rax	#, D.22524
	je	.L1511	#,
	.loc 1 5728 0 discriminator 1
	movl	$0, %eax	#, D.22519
	jmp	.L1470	#
.L1511:
	.loc 1 5728 0 discriminator 2
	movq	-72(%rbp), %rax	# cxt, tmp391
	movl	80(%rax), %eax	# cxt_17(D)->netorder, D.22521
	testl	%eax, %eax	# D.22521
	je	.L1512	#,
	.loc 1 5728 0 discriminator 1
	movl	-40(%rbp), %eax	# len, len.826
	cltq
	movq	%rax, %rdi	# D.22524,
	call	Perl_my_ntohl	#
	movl	%eax, -40(%rbp)	# len.827, len
.LBE354:
	.loc 1 5729 0 is_stmt 1 discriminator 1
	jmp	.L1506	#
.L1512:
	.loc 1 5729 0 is_stmt 0
	jmp	.L1506	#
.L1522:
	.loc 1 5732 0 is_stmt 1
	movl	$0, %eax	#, D.22519
	jmp	.L1470	#
.L1506:
	.loc 1 5734 0
	movl	-40(%rbp), %eax	# len, len.828
	movslq	%eax, %rdx	# len.828, D.22525
	movq	-72(%rbp), %rax	# cxt, tmp392
	movq	128(%rax), %rax	# cxt_17(D)->keybuf.asiz, D.22525
	cmpq	%rax, %rdx	# D.22525, D.22525
	jb	.L1513	#,
	.loc 1 5734 0 is_stmt 0 discriminator 1
	movl	-40(%rbp), %eax	# len, len.829
	cltq
	leaq	1(%rax), %rdx	#, D.22525
	movq	-72(%rbp), %rax	# cxt, tmp393
	movq	120(%rax), %rax	# cxt_17(D)->keybuf.arena, D.22523
	movq	%rdx, %rsi	# D.22525,
	movq	%rax, %rdi	# D.22523,
	call	Perl_safesysrealloc	#
	movq	-72(%rbp), %rdx	# cxt, tmp394
	movq	%rax, 120(%rdx)	# D.22529, cxt_17(D)->keybuf.arena
	movl	-40(%rbp), %eax	# len, len.830
	cltq
	leaq	1(%rax), %rdx	#, D.22525
	movq	-72(%rbp), %rax	# cxt, tmp395
	movq	%rdx, 128(%rax)	# D.22525, cxt_17(D)->keybuf.asiz
.L1513:
	.loc 1 5735 0 is_stmt 1
	movl	-40(%rbp), %eax	# len, len.831
	testl	%eax, %eax	# len.831
	je	.L1514	#,
	.loc 1 5736 0
	movq	-72(%rbp), %rax	# cxt, tmp396
	movq	216(%rax), %rax	# cxt_17(D)->fio, D.22522
	testq	%rax, %rax	# D.22522
	jne	.L1515	#,
	.loc 1 5736 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# cxt, tmp397
	movq	168(%rax), %rdx	# cxt_17(D)->membuf.aptr, D.22523
	movl	-40(%rbp), %eax	# len, len.832
	cltq
	addq	%rax, %rdx	# D.22536, D.22523
	movq	-72(%rbp), %rax	# cxt, tmp398
	movq	176(%rax), %rax	# cxt_17(D)->membuf.aend, D.22523
	cmpq	%rax, %rdx	# D.22523, D.22523
	ja	.L1516	#,
	movl	-40(%rbp), %eax	# len, len.833
	movslq	%eax, %rdx	# len.833, D.22525
	movq	-72(%rbp), %rax	# cxt, tmp399
	movq	168(%rax), %rcx	# cxt_17(D)->membuf.aptr, D.22523
	movq	-72(%rbp), %rax	# cxt, tmp400
	movq	120(%rax), %rax	# cxt_17(D)->keybuf.arena, D.22523
	movq	%rcx, %rsi	# D.22523,
	movq	%rax, %rdi	# D.22523,
	call	memcpy	#
	movq	-72(%rbp), %rax	# cxt, tmp401
	movq	168(%rax), %rdx	# cxt_17(D)->membuf.aptr, D.22523
	movl	-40(%rbp), %eax	# len, len.834
	cltq
	addq	%rax, %rdx	# D.22536, D.22523
	movq	-72(%rbp), %rax	# cxt, tmp402
	movq	%rdx, 168(%rax)	# D.22523, cxt_17(D)->membuf.aptr
	jmp	.L1514	#
.L1516:
	.loc 1 5736 0 discriminator 2
	movl	$0, %eax	#, D.22519
	jmp	.L1470	#
.L1515:
	movl	-40(%rbp), %eax	# len, len.835
	movslq	%eax, %rdx	# len.835, D.22525
	movq	-72(%rbp), %rax	# cxt, tmp403
	movq	120(%rax), %rcx	# cxt_17(D)->keybuf.arena, D.22523
	movq	-72(%rbp), %rax	# cxt, tmp404
	movq	216(%rax), %rax	# cxt_17(D)->fio, D.22522
	movq	%rcx, %rsi	# D.22523,
	movq	%rax, %rdi	# D.22522,
	call	Perl_PerlIO_read	#
	movl	-40(%rbp), %edx	# len, len.836
	movslq	%edx, %rdx	# len.836, D.22524
	cmpq	%rdx, %rax	# D.22524, D.22524
	je	.L1514	#,
	.loc 1 5736 0 discriminator 1
	movl	$0, %eax	#, D.22519
	jmp	.L1470	#
.L1514:
	.loc 1 5737 0 is_stmt 1 discriminator 3
	movq	-72(%rbp), %rax	# cxt, tmp405
	movq	120(%rax), %rdx	# cxt_17(D)->keybuf.arena, D.22523
	movl	-40(%rbp), %eax	# len, len.837
	cltq
	addq	%rdx, %rax	# D.22523, D.22523
	movb	$0, (%rax)	#, *_286
.LBB355:
	.loc 1 5738 0 discriminator 3
	movq	-72(%rbp), %rax	# cxt, tmp406
	movq	120(%rax), %rax	# cxt_17(D)->keybuf.arena, D.22523
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.22523,
	call	Perl_gv_stashpv	#
	movq	%rax, -16(%rbp)	# tmp407, stash
	movq	-24(%rbp), %rax	# sv, tmp408
	movq	%rax, %rdi	# tmp408,
	call	Perl_newRV_noinc	#
	movq	%rax, -8(%rbp)	# tmp409, Perl_ref
	movq	-16(%rbp), %rdx	# stash, tmp410
	movq	-8(%rbp), %rax	# Perl_ref, tmp411
	movq	%rdx, %rsi	# tmp410,
	movq	%rax, %rdi	# tmp411,
	call	Perl_sv_bless	#
	movq	-8(%rbp), %rax	# Perl_ref, tmp412
	movq	(%rax), %rax	# Perl_ref_289->sv_any, D.22529
	movq	$0, (%rax)	#, MEM[(struct XRV *)_290].xrv_rv
	movq	-8(%rbp), %rax	# Perl_ref, tmp413
	movq	%rax, %rdi	# tmp413,
	call	Perl_sv_free	#
.L1498:
.LBE355:
.LBE353:
	.loc 1 5721 0 discriminator 1
	movq	-72(%rbp), %rax	# cxt, tmp414
	movq	216(%rax), %rax	# cxt_17(D)->fio, D.22522
	testq	%rax, %rax	# D.22522
	je	.L1517	#,
	movq	-72(%rbp), %rax	# cxt, tmp415
	movq	216(%rax), %rax	# cxt_17(D)->fio, D.22522
	movq	%rax, %rdi	# D.22522,
	call	PerlIO_getc	#
	jmp	.L1518	#
.L1517:
	.loc 1 5721 0 is_stmt 0 discriminator 2
	movq	-72(%rbp), %rax	# cxt, tmp416
	movq	168(%rax), %rdx	# cxt_17(D)->membuf.aptr, D.22523
	movq	-72(%rbp), %rax	# cxt, tmp417
	movq	176(%rax), %rax	# cxt_17(D)->membuf.aend, D.22523
	cmpq	%rax, %rdx	# D.22523, D.22523
	jae	.L1519	#,
	.loc 1 5721 0 discriminator 1
	movq	-72(%rbp), %rax	# cxt, tmp418
	movq	168(%rax), %rax	# cxt_17(D)->membuf.aptr, D.22523
	leaq	1(%rax), %rcx	#, D.22523
	movq	-72(%rbp), %rdx	# cxt, tmp419
	movq	%rcx, 168(%rdx)	# D.22523, cxt_17(D)->membuf.aptr
	movzbl	(%rax), %eax	# *_202, D.22526
	movsbl	%al, %eax	# D.22526, iftmp.839
	jmp	.L1518	#
.L1519:
	.loc 1 5721 0 discriminator 2
	movl	$-1, %eax	#, iftmp.839
.L1518:
	.loc 1 5721 0 discriminator 3
	movl	%eax, -48(%rbp)	# iftmp.838, type
	cmpl	$88, -48(%rbp)	#, type
	jne	.L1521	#,
.L1497:
	.loc 1 5745 0 is_stmt 1
	movq	-24(%rbp), %rax	# sv, D.22519
.L1470:
	.loc 1 5746 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	retrieve, .-retrieve
	.section	.rodata
	.align 8
.LC62:
	.string	"Frozen string corrupt - contains characters outside 0-255"
.LC63:
	.string	"Not a scalar string"
	.align 8
.LC64:
	.string	"Magic number checking on storable %s failed"
	.text
	.type	do_retrieve, @function
do_retrieve:
.LFB71:
	.loc 1 5759 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$144, %rsp	#,
	movq	%rdi, -120(%rbp)	# f, f
	movq	%rsi, -128(%rbp)	# in, in
	movl	%edx, -132(%rbp)	# optype, optype
	.loc 1 5760 0
	movq	Context_ptr(%rip), %rax	# Context_ptr, tmp128
	movq	%rax, -88(%rbp)	# tmp128, cxt
	.loc 1 5763 0
	movl	$0, -104(%rbp)	#, pre_06_fmt
	.loc 1 5767 0
	orl	$2, -132(%rbp)	#, optype
	.loc 1 5785 0
	movq	-88(%rbp), %rax	# cxt, tmp129
	movl	112(%rax), %eax	# cxt_12->s_dirty, D.22541
	testl	%eax, %eax	# D.22541
	je	.L1524	#,
	.loc 1 5786 0
	movq	-88(%rbp), %rax	# cxt, tmp130
	movq	%rax, %rdi	# tmp130,
	call	clean_context	#
.L1524:
	.loc 1 5793 0
	movq	-88(%rbp), %rax	# cxt, tmp131
	movl	(%rax), %eax	# cxt_12->entry, D.22541
	testl	%eax, %eax	# D.22541
	je	.L1525	#,
	.loc 1 5794 0
	movq	-88(%rbp), %rax	# cxt, tmp132
	movq	%rax, %rdi	# tmp132,
	call	allocate_context	#
	movq	%rax, -88(%rbp)	# tmp133, cxt
.L1525:
	.loc 1 5796 0
	movq	-88(%rbp), %rax	# cxt, tmp134
	movl	(%rax), %eax	# cxt_4->entry, D.22541
	leal	1(%rax), %edx	#, D.22541
	movq	-88(%rbp), %rax	# cxt, tmp135
	movl	%edx, (%rax)	# D.22541, cxt_4->entry
	.loc 1 5809 0
	movq	-88(%rbp), %rax	# cxt, tmp136
	movq	120(%rax), %rax	# cxt_4->keybuf.arena, D.22542
	testq	%rax, %rax	# D.22542
	jne	.L1526	#,
	.loc 1 5809 0 is_stmt 0 discriminator 1
	movl	$128, %edi	#,
	call	Perl_safesysmalloc	#
	movq	-88(%rbp), %rdx	# cxt, tmp137
	movq	%rax, 120(%rdx)	# D.22543, cxt_4->keybuf.arena
	movq	-88(%rbp), %rax	# cxt, tmp138
	movq	$128, 128(%rax)	#, cxt_4->keybuf.asiz
.L1526:
	.loc 1 5811 0 is_stmt 1
	cmpq	$0, -120(%rbp)	#, f
	jne	.L1527	#,
	.loc 1 5811 0 is_stmt 0 discriminator 1
	cmpq	$0, -128(%rbp)	#, in
	je	.L1527	#,
	.loc 1 5813 0 is_stmt 1
	movq	-128(%rbp), %rax	# in, tmp139
	movl	12(%rax), %eax	# in_24(D)->sv_flags, D.22544
	andl	$536870912, %eax	#, D.22544
	testl	%eax, %eax	# D.22544
	je	.L1528	#,
.LBB356:
	.loc 1 5815 0
	movq	-128(%rbp), %rax	# in, tmp140
	movl	12(%rax), %eax	# in_24(D)->sv_flags, D.22544
	andl	$262144, %eax	#, D.22544
	testl	%eax, %eax	# D.22544
	je	.L1529	#,
	.loc 1 5815 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# in, tmp141
	movq	(%rax), %rax	# in_24(D)->sv_any, D.22543
	movq	8(%rax), %rax	# MEM[(struct XPV *)_29].xpv_cur, length.841
	movq	%rax, -96(%rbp)	# length.841, length
	movq	-128(%rbp), %rax	# in, tmp142
	movq	(%rax), %rax	# in_24(D)->sv_any, D.22543
	movq	(%rax), %rax	# MEM[(struct XPV *)_31].xpv_pv, iftmp.840
	jmp	.L1530	#
.L1529:
	.loc 1 5815 0 discriminator 2
	leaq	-96(%rbp), %rcx	#, tmp143
	movq	-128(%rbp), %rax	# in, tmp144
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp143,
	movq	%rax, %rdi	# tmp144,
	call	Perl_sv_2pv_flags	#
.L1530:
	.loc 1 5815 0 discriminator 3
	movq	%rax, -80(%rbp)	# iftmp.840, orig
	.loc 1 5822 0 is_stmt 1 discriminator 3
	movq	-96(%rbp), %rax	# length, length.842
	addq	$1, %rax	#, klen_tmp.843
	movq	%rax, -32(%rbp)	# klen_tmp.843, klen_tmp
	.loc 1 5823 0 discriminator 3
	movb	$1, -105(%rbp)	#, is_utf8
	.loc 1 5828 0 discriminator 3
	leaq	-105(%rbp), %rdx	#, tmp145
	leaq	-32(%rbp), %rcx	#, tmp146
	movq	-80(%rbp), %rax	# orig, tmp147
	movq	%rcx, %rsi	# tmp146,
	movq	%rax, %rdi	# tmp147,
	call	Perl_bytes_from_utf8	#
	movq	%rax, -72(%rbp)	# tmp148, asbytes
	.loc 1 5831 0 discriminator 3
	movzbl	-105(%rbp), %eax	# is_utf8, is_utf8.844
	testb	%al, %al	# is_utf8.844
	je	.L1531	#,
.LBB357:
	.loc 1 5832 0
	movq	-88(%rbp), %rax	# cxt, tmp149
	movl	$1, 112(%rax)	#, cxt_4->s_dirty
	movl	$.LC62, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L1531:
.LBE357:
	.loc 1 5834 0
	movq	-72(%rbp), %rax	# asbytes, tmp150
	cmpq	-80(%rbp), %rax	# orig, tmp150
	je	.L1528	#,
	.loc 1 5838 0
	call	Perl_sv_newmortal	#
	movq	%rax, -128(%rbp)	# tmp151, in
	.loc 1 5841 0
	movq	-128(%rbp), %rax	# in, tmp152
	movl	12(%rax), %eax	# in_39->sv_flags, D.22544
	movzbl	%al, %eax	# D.22544, D.22544
	cmpl	$3, %eax	#, D.22544
	ja	.L1533	#,
	.loc 1 5841 0 is_stmt 0 discriminator 2
	movq	-128(%rbp), %rax	# in, tmp153
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp153,
	call	Perl_sv_upgrade	#
	testb	%al, %al	# D.22545
	je	.L1535	#,
.L1533:
	.loc 1 5841 0 discriminator 1
	nop
.L1535:
	.loc 1 5842 0 is_stmt 1
	movq	-128(%rbp), %rax	# in, tmp154
	movl	12(%rax), %eax	# in_39->sv_flags, D.22544
	orl	$67371008, %eax	#, D.22544
	movl	%eax, %edx	# D.22544, D.22544
	movq	-128(%rbp), %rax	# in, tmp155
	movl	%edx, 12(%rax)	# D.22544, in_39->sv_flags
	.loc 1 5843 0
	movq	-128(%rbp), %rax	# in, tmp156
	movq	(%rax), %rax	# in_39->sv_any, D.22543
	movq	-72(%rbp), %rdx	# asbytes, tmp157
	movq	%rdx, (%rax)	# tmp157, MEM[(struct XPV *)_47].xpv_pv
	.loc 1 5844 0
	movq	-128(%rbp), %rax	# in, tmp158
	movq	(%rax), %rax	# in_39->sv_any, D.22543
	movq	-32(%rbp), %rdx	# klen_tmp, klen_tmp.846
	movq	%rdx, 16(%rax)	# klen_tmp.846, MEM[(struct XPV *)_48].xpv_len
	.loc 1 5845 0
	movq	-128(%rbp), %rax	# in, tmp159
	movq	(%rax), %rax	# in_39->sv_any, D.22543
	movq	-32(%rbp), %rdx	# klen_tmp, klen_tmp.847
	subq	$1, %rdx	#, D.22546
	movq	%rdx, 8(%rax)	# D.22546, MEM[(struct XPV *)_50].xpv_cur
.L1528:
.LBE356:
.LBB358:
	.loc 1 5849 0
	movq	-88(%rbp), %rax	# cxt, tmp160
	movl	$1, 116(%rax)	#, cxt_4->membuf_ro
	movq	-88(%rbp), %rax	# cxt, tmp161
	movq	-88(%rbp), %rdx	# cxt, tmp162
	movq	152(%rdx), %rcx	# cxt_4->membuf, tmp163
	movq	%rcx, 184(%rax)	# tmp163, cxt_4->msaved
	movq	160(%rdx), %rcx	# cxt_4->membuf, tmp164
	movq	%rcx, 192(%rax)	# tmp164, cxt_4->msaved
	movq	168(%rdx), %rcx	# cxt_4->membuf, tmp165
	movq	%rcx, 200(%rax)	# tmp165, cxt_4->msaved
	movq	176(%rdx), %rdx	# cxt_4->membuf, tmp166
	movq	%rdx, 208(%rax)	# tmp166, cxt_4->msaved
.LBB359:
	movq	-128(%rbp), %rax	# in, tmp167
	movl	12(%rax), %eax	# in_2->sv_flags, D.22544
	andl	$67108864, %eax	#, D.22544
	testl	%eax, %eax	# D.22544
	jne	.L1536	#,
.LBB360:
	.loc 1 5849 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# cxt, tmp168
	movl	$1, 112(%rax)	#, cxt_4->s_dirty
	movl	$.LC63, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L1536:
.LBE360:
	.loc 1 5849 0 discriminator 2
	movq	-128(%rbp), %rax	# in, tmp169
	movl	12(%rax), %eax	# in_2->sv_flags, D.22544
	andl	$262144, %eax	#, D.22544
	testl	%eax, %eax	# D.22544
	je	.L1537	#,
	.loc 1 5849 0 discriminator 1
	movq	-128(%rbp), %rax	# in, tmp170
	movq	(%rax), %rax	# in_2->sv_any, D.22543
	movq	8(%rax), %rdx	# MEM[(struct XPV *)_57].xpv_cur, D.22546
	movq	-88(%rbp), %rax	# cxt, tmp171
	movq	%rdx, 160(%rax)	# D.22546, cxt_4->membuf.asiz
	movq	-128(%rbp), %rax	# in, tmp172
	movq	(%rax), %rax	# in_2->sv_any, D.22543
	movq	(%rax), %rax	# MEM[(struct XPV *)_59].xpv_pv, iftmp.848
	jmp	.L1538	#
.L1537:
	.loc 1 5849 0 discriminator 2
	movq	-88(%rbp), %rax	# cxt, tmp173
	leaq	160(%rax), %rcx	#, D.22547
	movq	-128(%rbp), %rax	# in, tmp174
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# D.22547,
	movq	%rax, %rdi	# tmp174,
	call	Perl_sv_2pv_flags	#
.L1538:
	.loc 1 5849 0 discriminator 3
	movq	-88(%rbp), %rdx	# cxt, tmp175
	movq	%rax, 152(%rdx)	# iftmp.848, cxt_4->membuf.arena
	movq	-88(%rbp), %rax	# cxt, tmp176
	movq	152(%rax), %rdx	# cxt_4->membuf.arena, D.22542
	movq	-88(%rbp), %rax	# cxt, tmp177
	movq	%rdx, 168(%rax)	# D.22542, cxt_4->membuf.aptr
	movq	-88(%rbp), %rax	# cxt, tmp178
	movq	152(%rax), %rdx	# cxt_4->membuf.arena, D.22542
	movq	-88(%rbp), %rax	# cxt, tmp179
	movq	160(%rax), %rax	# cxt_4->membuf.asiz, D.22546
	addq	%rax, %rdx	# D.22546, D.22542
	movq	-88(%rbp), %rax	# cxt, tmp180
	movq	%rdx, 176(%rax)	# D.22542, cxt_4->membuf.aend
.L1527:
.LBE359:
.LBE358:
	.loc 1 5860 0 is_stmt 1
	movq	-88(%rbp), %rax	# cxt, tmp182
	movq	-120(%rbp), %rdx	# f, tmp183
	movq	%rdx, 216(%rax)	# tmp183, cxt_4->fio
	.loc 1 5862 0
	movq	-88(%rbp), %rax	# cxt, tmp184
	movq	%rax, %rdi	# tmp184,
	call	magic_check	#
	testq	%rax, %rax	# D.22540
	jne	.L1539	#,
.LBB361:
	.loc 1 5863 0
	movq	-88(%rbp), %rax	# cxt, tmp185
	movl	$1, 112(%rax)	#, cxt_4->s_dirty
	movq	-88(%rbp), %rax	# cxt, tmp186
	movq	216(%rax), %rax	# cxt_4->fio, D.22548
	testq	%rax, %rax	# D.22548
	je	.L1540	#,
	.loc 1 5863 0 is_stmt 0 discriminator 1
	movl	$.LC31, %eax	#, iftmp.849
	jmp	.L1541	#
.L1540:
	.loc 1 5863 0 discriminator 2
	movl	$.LC32, %eax	#, iftmp.849
.L1541:
	.loc 1 5863 0 discriminator 3
	movq	%rax, %rsi	# iftmp.849,
	movl	$.LC64, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L1539:
.LBE361:
	.loc 1 5879 0 is_stmt 1
	cmpq	$0, -120(%rbp)	#, f
	jne	.L1542	#,
	.loc 1 5879 0 is_stmt 0 discriminator 1
	cmpq	$0, -128(%rbp)	#, in
	je	.L1543	#,
	movq	-128(%rbp), %rax	# in, tmp187
	movl	12(%rax), %eax	# in_3->sv_flags, D.22544
	andl	$57344, %eax	#, D.22544
	testl	%eax, %eax	# D.22544
	je	.L1544	#,
	movq	-128(%rbp), %rax	# in, tmp188
	movq	%rax, %rdi	# tmp188,
	call	Perl_sv_tainted	#
	testb	%al, %al	# D.22545
	je	.L1544	#,
	.loc 1 5879 0 discriminator 3
	movl	$1, %eax	#, iftmp.852
	jmp	.L1545	#
.L1544:
	.loc 1 5879 0 discriminator 2
	movl	$0, %eax	#, iftmp.852
.L1545:
	jmp	.L1547	#
.L1543:
	movq	-88(%rbp), %rax	# cxt, tmp189
	movl	84(%rax), %eax	# cxt_4->s_tainted, iftmp.851
	jmp	.L1547	#
.L1542:
	movl	$1, %eax	#, iftmp.850
.L1547:
	.loc 1 5879 0 discriminator 3
	movl	%eax, -100(%rbp)	# iftmp.850, is_tainted
	.loc 1 5881 0 is_stmt 1 discriminator 3
	movl	-100(%rbp), %edx	# is_tainted, tmp190
	movl	-132(%rbp), %ecx	# optype, tmp191
	movq	-88(%rbp), %rax	# cxt, tmp192
	movl	%ecx, %esi	# tmp191,
	movq	%rax, %rdi	# tmp192,
	call	init_retrieve_context	#
	.loc 1 5885 0 discriminator 3
	movq	-88(%rbp), %rax	# cxt, tmp193
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp193,
	call	retrieve	#
	movq	%rax, -64(%rbp)	# tmp194, sv
	.loc 1 5891 0 discriminator 3
	cmpq	$0, -120(%rbp)	#, f
	jne	.L1548	#,
	.loc 1 5891 0 is_stmt 0 discriminator 1
	cmpq	$0, -128(%rbp)	#, in
	je	.L1548	#,
.LBB362:
	.loc 1 5892 0 is_stmt 1
	movq	-88(%rbp), %rax	# cxt, tmp195
	movl	$0, 116(%rax)	#, cxt_4->membuf_ro
	movq	-88(%rbp), %rax	# cxt, tmp196
	movq	-88(%rbp), %rdx	# cxt, tmp197
	movq	184(%rdx), %rcx	# cxt_4->msaved, tmp198
	movq	%rcx, 152(%rax)	# tmp198, cxt_4->membuf
	movq	192(%rdx), %rcx	# cxt_4->msaved, tmp199
	movq	%rcx, 160(%rax)	# tmp199, cxt_4->membuf
	movq	200(%rdx), %rcx	# cxt_4->msaved, tmp200
	movq	%rcx, 168(%rax)	# tmp200, cxt_4->membuf
	movq	208(%rdx), %rdx	# cxt_4->msaved, tmp201
	movq	%rdx, 176(%rax)	# tmp201, cxt_4->membuf
	movq	-88(%rbp), %rax	# cxt, tmp202
	movq	152(%rax), %rdx	# cxt_4->membuf, tmp203
	movq	%rdx, -32(%rbp)	# tmp203, D.11607
	movq	160(%rax), %rdx	# cxt_4->membuf, tmp204
	movq	%rdx, -24(%rbp)	# tmp204, D.11607
	movq	168(%rax), %rdx	# cxt_4->membuf, tmp205
	movq	%rdx, -16(%rbp)	# tmp205, D.11607
	movq	176(%rax), %rax	# cxt_4->membuf, tmp206
	movq	%rax, -8(%rbp)	# tmp206, D.11607
.L1548:
.LBE362:
	.loc 1 5894 0
	movq	-88(%rbp), %rax	# cxt, tmp207
	movq	8(%rax), %rax	# cxt_4->hseen, D.22549
	testq	%rax, %rax	# D.22549
	setne	%al	#, D.22550
	movzbl	%al, %eax	# D.22550, tmp208
	movl	%eax, -104(%rbp)	# tmp208, pre_06_fmt
	.loc 1 5900 0
	movq	-88(%rbp), %rax	# cxt, tmp209
	movq	%rax, %rdi	# tmp209,
	call	clean_retrieve_context	#
	.loc 1 5901 0
	movq	-88(%rbp), %rax	# cxt, tmp210
	movq	240(%rax), %rax	# cxt_4->prev, D.22540
	testq	%rax, %rax	# D.22540
	je	.L1549	#,
	.loc 1 5902 0
	movq	-88(%rbp), %rax	# cxt, tmp211
	movq	%rax, %rdi	# tmp211,
	call	free_context	#
.L1549:
	.loc 1 5908 0
	cmpq	$0, -64(%rbp)	#, sv
	jne	.L1550	#,
	.loc 1 5924 0
	movl	$PL_sv_undef, %eax	#, D.22540
	jmp	.L1551	#
.L1550:
	.loc 1 5940 0
	cmpl	$0, -104(%rbp)	#, pre_06_fmt
	je	.L1552	#,
.LBB363:
	.loc 1 5943 0
	movq	-64(%rbp), %rax	# sv, tmp212
	movq	%rax, %rdi	# tmp212,
	call	sv_type	#
	testl	%eax, %eax	# D.22541
	jne	.L1552	#,
	.loc 1 5943 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# sv, tmp213
	movq	(%rax), %rax	# sv_82->sv_any, D.22543
	movq	(%rax), %rax	# MEM[(struct XRV *)_89].xrv_rv, tmp214
	movq	%rax, -56(%rbp)	# tmp214, rv
	cmpq	$0, -56(%rbp)	#, rv
	je	.L1552	#,
	movq	-56(%rbp), %rax	# rv, tmp215
	movl	12(%rax), %eax	# rv_90->sv_flags, D.22544
	andl	$4096, %eax	#, D.22544
	testl	%eax, %eax	# D.22544
	je	.L1552	#,
	.loc 1 5945 0 is_stmt 1
	movq	-64(%rbp), %rax	# sv, D.22540
	jmp	.L1551	#
.L1552:
.LBE363:
	.loc 1 5966 0
	movq	-64(%rbp), %rax	# sv, tmp216
	movl	12(%rax), %eax	# sv_82->sv_flags, D.22544
	andl	$4096, %eax	#, D.22544
	testl	%eax, %eax	# D.22544
	je	.L1553	#,
.LBB364:
	.loc 1 5967 0
	movq	-64(%rbp), %rax	# sv, tmp217
	movq	(%rax), %rax	# sv_82->sv_any, D.22543
	movq	48(%rax), %rax	# MEM[(struct XPVMG *)_96].xmg_stash, tmp218
	movq	%rax, -48(%rbp)	# tmp218, stash
	.loc 1 5968 0
	movq	-64(%rbp), %rax	# sv, tmp219
	movq	%rax, %rdi	# tmp219,
	call	Perl_newRV_noinc	#
	movq	%rax, -40(%rbp)	# tmp220, rv
	.loc 1 5969 0
	cmpq	$0, -48(%rbp)	#, stash
	je	.L1554	#,
	.loc 1 5969 0 is_stmt 0 discriminator 1
	movq	PL_amagic_generation(%rip), %rax	# PL_amagic_generation, PL_amagic_generation.853
	testq	%rax, %rax	# PL_amagic_generation.853
	je	.L1554	#,
	movq	-48(%rbp), %rax	# stash, tmp221
	movq	%rax, %rdi	# tmp221,
	call	Perl_Gv_AMupdate	#
	testb	%al, %al	# D.22545
	je	.L1554	#,
	.loc 1 5970 0 is_stmt 1
	movq	-40(%rbp), %rax	# rv, tmp222
	movl	12(%rax), %eax	# rv_98->sv_flags, D.22544
	orl	$268435456, %eax	#, D.22544
	movl	%eax, %edx	# D.22544, D.22544
	movq	-40(%rbp), %rax	# rv, tmp223
	movl	%edx, 12(%rax)	# D.22544, rv_98->sv_flags
.L1554:
	.loc 1 5974 0
	movq	-40(%rbp), %rax	# rv, D.22540
	jmp	.L1551	#
.L1553:
.LBE364:
	.loc 1 5979 0
	movq	-64(%rbp), %rax	# sv, tmp224
	movq	%rax, %rdi	# tmp224,
	call	Perl_newRV_noinc	#
.L1551:
	.loc 1 5980 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	do_retrieve, .-do_retrieve
	.globl	pretrieve
	.type	pretrieve, @function
pretrieve:
.LFB72:
	.loc 1 5988 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# f, f
	.loc 1 5990 0
	movq	-8(%rbp), %rax	# f, tmp61
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp61,
	call	do_retrieve	#
	.loc 1 5991 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	pretrieve, .-pretrieve
	.globl	mretrieve
	.type	mretrieve, @function
mretrieve:
.LFB73:
	.loc 1 5999 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# sv, sv
	.loc 1 6001 0
	movq	-8(%rbp), %rax	# sv, tmp61
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp61,
	movl	$0, %edi	#,
	call	do_retrieve	#
	.loc 1 6002 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	mretrieve, .-mretrieve
	.globl	dclone
	.type	dclone, @function
dclone:
.LFB74:
	.loc 1 6018 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# sv, sv
	.loc 1 6019 0
	movq	Context_ptr(%rip), %rax	# Context_ptr, tmp81
	movq	%rax, -32(%rbp)	# tmp81, cxt
	.loc 1 6031 0
	movq	-32(%rbp), %rax	# cxt, tmp82
	movl	112(%rax), %eax	# cxt_3->s_dirty, D.22558
	testl	%eax, %eax	# D.22558
	je	.L1560	#,
	.loc 1 6032 0
	movq	-32(%rbp), %rax	# cxt, tmp83
	movq	%rax, %rdi	# tmp83,
	call	clean_context	#
.L1560:
	.loc 1 6039 0
	movq	-56(%rbp), %rax	# sv, tmp84
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$4, %edx	#,
	movq	%rax, %rsi	# tmp84,
	movl	$0, %edi	#,
	call	do_store	#
	testl	%eax, %eax	# D.22558
	jne	.L1561	#,
	.loc 1 6040 0
	movl	$PL_sv_undef, %eax	#, D.22557
	jmp	.L1562	#
.L1561:
.LBB365:
	.loc 1 6047 0
	movq	Context_ptr(%rip), %rax	# Context_ptr, tmp85
	movq	%rax, -24(%rbp)	# tmp85, cxt
	movq	-24(%rbp), %rax	# cxt, tmp86
	movq	%rax, -16(%rbp)	# tmp86, real_context
.LBE365:
	.loc 1 6048 0
	movq	-16(%rbp), %rax	# real_context, tmp87
	movq	%rax, -32(%rbp)	# tmp87, cxt
	.loc 1 6057 0
	movq	-32(%rbp), %rax	# cxt, tmp88
	movq	168(%rax), %rax	# cxt_10->membuf.aptr, D.22559
	movq	%rax, %rdx	# D.22559, D.22560
	movq	-32(%rbp), %rax	# cxt, tmp89
	movq	152(%rax), %rax	# cxt_10->membuf.arena, D.22559
	subq	%rax, %rdx	# D.22560, D.22560
	movq	%rdx, %rax	# D.22560, D.22560
	movl	%eax, -36(%rbp)	# D.22560, size
.LBB366:
	.loc 1 6059 0
	movq	-32(%rbp), %rax	# cxt, tmp90
	movq	152(%rax), %rax	# cxt_10->membuf.arena, D.22559
	testq	%rax, %rax	# D.22559
	jne	.L1563	#,
	.loc 1 6059 0 is_stmt 0 discriminator 1
	movl	$8192, %edi	#,
	call	Perl_safesysmalloc	#
	movq	-32(%rbp), %rdx	# cxt, tmp91
	movq	%rax, 152(%rdx)	# D.22561, cxt_10->membuf.arena
	movq	-32(%rbp), %rax	# cxt, tmp92
	movq	$8192, 160(%rax)	#, cxt_10->membuf.asiz
.L1563:
	.loc 1 6059 0 discriminator 2
	movq	-32(%rbp), %rax	# cxt, tmp93
	movq	152(%rax), %rdx	# cxt_10->membuf.arena, D.22559
	movq	-32(%rbp), %rax	# cxt, tmp94
	movq	%rdx, 168(%rax)	# D.22559, cxt_10->membuf.aptr
	cmpl	$0, -36(%rbp)	#, size
	je	.L1564	#,
	.loc 1 6059 0 discriminator 1
	movq	-32(%rbp), %rax	# cxt, tmp95
	movq	152(%rax), %rdx	# cxt_10->membuf.arena, D.22559
	movl	-36(%rbp), %eax	# size, tmp96
	cltq
	addq	%rax, %rdx	# D.22562, D.22559
	movq	-32(%rbp), %rax	# cxt, tmp97
	movq	%rdx, 176(%rax)	# D.22559, cxt_10->membuf.aend
	jmp	.L1565	#
.L1564:
	.loc 1 6059 0 discriminator 2
	movq	-32(%rbp), %rax	# cxt, tmp98
	movq	152(%rax), %rdx	# cxt_10->membuf.arena, D.22559
	movq	-32(%rbp), %rax	# cxt, tmp99
	movq	160(%rax), %rax	# cxt_10->membuf.asiz, D.22563
	addq	%rax, %rdx	# D.22563, D.22559
	movq	-32(%rbp), %rax	# cxt, tmp100
	movq	%rdx, 176(%rax)	# D.22559, cxt_10->membuf.aend
.L1565:
.LBE366:
	.loc 1 6069 0 is_stmt 1
	movq	-56(%rbp), %rax	# sv, tmp101
	movl	12(%rax), %eax	# sv_5(D)->sv_flags, D.22564
	andl	$57344, %eax	#, D.22564
	testl	%eax, %eax	# D.22564
	je	.L1566	#,
	.loc 1 6069 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# sv, tmp102
	movq	%rax, %rdi	# tmp102,
	call	Perl_sv_tainted	#
	testb	%al, %al	# D.22565
	je	.L1566	#,
	.loc 1 6069 0 discriminator 3
	movl	$1, %eax	#, iftmp.854
	jmp	.L1567	#
.L1566:
	.loc 1 6069 0 discriminator 2
	movl	$0, %eax	#, iftmp.854
.L1567:
	.loc 1 6069 0 discriminator 4
	movq	-32(%rbp), %rdx	# cxt, tmp103
	movl	%eax, 84(%rdx)	# iftmp.854, cxt_10->s_tainted
	.loc 1 6070 0 is_stmt 1 discriminator 4
	movl	$4, %edx	#,
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	do_retrieve	#
	movq	%rax, -8(%rbp)	# tmp104, out
	.loc 1 6074 0 discriminator 4
	movq	-8(%rbp), %rax	# out, D.22557
.L1562:
	.loc 1 6075 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	dclone, .-dclone
	.section	.rodata
	.align 8
.LC65:
	.string	"Usage: Storable::Cxt::DESTROY(self)"
	.text
	.globl	XS_Storable__Cxt_DESTROY
	.type	XS_Storable__Cxt_DESTROY, @function
XS_Storable__Cxt_DESTROY:
.LFB75:
	.loc 1 6099 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$48, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)	# cv, cv
	.loc 1 6100 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.855
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.856
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.858
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.858, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.857_4, D.22566
	cltq
	salq	$3, %rax	#, D.22567
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.859
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.860
	subq	%rax, %rdx	# PL_stack_base.861, D.22568
	movq	%rdx, %rax	# D.22568, D.22568
	sarq	$3, %rax	#, tmp97
	addl	$1, %eax	#, D.22569
	movl	%eax, -40(%rbp)	# D.22569, ax
	movq	%rbx, %rdx	# sp, sp.862
	movq	%r12, %rax	# mark, mark.863
	subq	%rax, %rdx	# mark.863, D.22568
	movq	%rdx, %rax	# D.22568, D.22568
	sarq	$3, %rax	#, tmp98
	movl	%eax, -36(%rbp)	# D.22568, items
	.loc 1 6101 0
	cmpl	$1, -36(%rbp)	#, items
	je	.L1569	#,
	.loc 1 6102 0
	movl	$.LC65, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L1569:
	.loc 1 6103 0
	movl	-36(%rbp), %eax	# items, tmp99
	cltq
	salq	$3, %rax	#, D.22567
	negq	%rax	# D.22570
	addq	%rax, %rbx	# D.22570, sp
.LBB367:
	.loc 1 6105 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.864
	movl	-40(%rbp), %edx	# ax, tmp100
	movslq	%edx, %rdx	# tmp100, D.22567
	salq	$3, %rdx	#, D.22567
	addq	%rdx, %rax	# D.22567, D.22571
	movq	(%rax), %rax	# *_30, tmp101
	movq	%rax, -32(%rbp)	# tmp101, self
	.loc 1 6107 0
	movq	-32(%rbp), %rax	# self, tmp102
	movq	(%rax), %rax	# self_31->sv_any, D.22572
	movq	(%rax), %rax	# MEM[(struct XRV *)_32].xrv_rv, D.22573
	movq	(%rax), %rax	# _33->sv_any, D.22572
	movq	(%rax), %rax	# MEM[(struct XPV *)_34].xpv_pv, tmp103
	movq	%rax, -24(%rbp)	# tmp103, cxt
	.loc 1 6110 0
	movq	-24(%rbp), %rax	# cxt, tmp104
	movq	120(%rax), %rax	# cxt_35->keybuf.arena, D.22574
	testq	%rax, %rax	# D.22574
	je	.L1570	#,
	.loc 1 6111 0
	movq	-24(%rbp), %rax	# cxt, tmp105
	movq	120(%rax), %rax	# cxt_35->keybuf.arena, D.22574
	movq	%rax, %rdi	# D.22574,
	call	Perl_safesysfree	#
.L1570:
	.loc 1 6112 0
	movq	-24(%rbp), %rax	# cxt, tmp106
	movl	116(%rax), %eax	# cxt_35->membuf_ro, D.22566
	testl	%eax, %eax	# D.22566
	jne	.L1571	#,
	.loc 1 6112 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# cxt, tmp107
	movq	152(%rax), %rax	# cxt_35->membuf.arena, D.22574
	testq	%rax, %rax	# D.22574
	je	.L1571	#,
	.loc 1 6113 0 is_stmt 1
	movq	-24(%rbp), %rax	# cxt, tmp108
	movq	152(%rax), %rax	# cxt_35->membuf.arena, D.22574
	movq	%rax, %rdi	# D.22574,
	call	Perl_safesysfree	#
.L1571:
	.loc 1 6114 0
	movq	-24(%rbp), %rax	# cxt, tmp109
	movl	116(%rax), %eax	# cxt_35->membuf_ro, D.22566
	testl	%eax, %eax	# D.22566
	je	.L1572	#,
	.loc 1 6114 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# cxt, tmp110
	movq	184(%rax), %rax	# cxt_35->msaved.arena, D.22574
	testq	%rax, %rax	# D.22574
	je	.L1572	#,
	.loc 1 6115 0 is_stmt 1
	movq	-24(%rbp), %rax	# cxt, tmp111
	movq	184(%rax), %rax	# cxt_35->msaved.arena, D.22574
	movq	%rax, %rdi	# D.22574,
	call	Perl_safesysfree	#
.L1572:
	.loc 1 6117 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 6118 0
	nop
.LBE367:
	.loc 1 6120 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	XS_Storable__Cxt_DESTROY, .-XS_Storable__Cxt_DESTROY
	.section	.rodata
	.align 8
.LC66:
	.string	"Usage: Storable::init_perinterp()"
	.text
	.globl	XS_Storable_init_perinterp
	.type	XS_Storable_init_perinterp, @function
XS_Storable_init_perinterp:
.LFB76:
	.loc 1 6124 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$32, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)	# cv, cv
	.loc 1 6125 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.865
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.866
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.868
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.868, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.867_4, D.22576
	cltq
	salq	$3, %rax	#, D.22577
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.869
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.870
	subq	%rax, %rdx	# PL_stack_base.871, D.22578
	movq	%rdx, %rax	# D.22578, D.22578
	sarq	$3, %rax	#, tmp86
	addl	$1, %eax	#, D.22579
	movl	%eax, -32(%rbp)	# D.22579, ax
	movq	%r12, %rdx	# sp, sp.872
	movq	%rbx, %rax	# mark, mark.873
	subq	%rax, %rdx	# mark.873, D.22578
	movq	%rdx, %rax	# D.22578, D.22578
	sarq	$3, %rax	#, tmp87
	movl	%eax, -28(%rbp)	# D.22578, items
	.loc 1 6126 0
	cmpl	$0, -28(%rbp)	#, items
	je	.L1575	#,
	.loc 1 6127 0
	movl	$.LC66, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L1575:
	.loc 1 6130 0
	call	init_perinterp	#
.LBB368:
	.loc 1 6133 0
	movq	$0, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.874
	movl	-32(%rbp), %edx	# ax, tmp88
	movslq	%edx, %rcx	# tmp88, D.22580
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.875
	addq	%rcx, %rdx	# D.22580, D.22580
	salq	$3, %rdx	#, D.22580
	subq	$8, %rdx	#, D.22580
	addq	%rdx, %rax	# D.22580, PL_stack_sp.876
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.876, PL_stack_sp
	nop
.LBE368:
	.loc 1 6134 0
	addq	$32, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	XS_Storable_init_perinterp, .-XS_Storable_init_perinterp
	.section	.rodata
	.align 8
.LC67:
	.string	"Usage: Storable::pstore(f, obj)"
	.text
	.globl	XS_Storable_pstore
	.type	XS_Storable_pstore, @function
XS_Storable_pstore:
.LFB77:
	.loc 1 6138 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$64, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -72(%rbp)	# cv, cv
	.loc 1 6139 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.877
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.878
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.880
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.880, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.879_5, D.22582
	cltq
	salq	$3, %rax	#, D.22583
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.881
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.882
	subq	%rax, %rdx	# PL_stack_base.883, D.22584
	movq	%rdx, %rax	# D.22584, D.22584
	sarq	$3, %rax	#, tmp116
	addl	$1, %eax	#, D.22585
	movl	%eax, -60(%rbp)	# D.22585, ax
	movq	%rbx, %rdx	# sp, sp.884
	movq	%r12, %rax	# mark, mark.885
	subq	%rax, %rdx	# mark.885, D.22584
	movq	%rdx, %rax	# D.22584, D.22584
	sarq	$3, %rax	#, tmp117
	movl	%eax, -56(%rbp)	# D.22584, items
	.loc 1 6140 0
	cmpl	$2, -56(%rbp)	#, items
	je	.L1578	#,
	.loc 1 6141 0
	movl	$.LC67, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L1578:
.LBB369:
	.loc 1 6143 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.886
	movl	-60(%rbp), %edx	# ax, tmp118
	movslq	%edx, %rdx	# tmp118, D.22583
	salq	$3, %rdx	#, D.22583
	addq	%rdx, %rax	# D.22583, D.22586
	movq	(%rax), %rax	# *_27, D.22587
	movq	%rax, %rdi	# D.22587,
	call	Perl_sv_2io	#
	movq	(%rax), %rax	# _29->sv_any, D.22589
	movq	64(%rax), %rax	# _30->xio_ofp, tmp119
	movq	%rax, -48(%rbp)	# tmp119, f
	.loc 1 6144 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.887
	movl	-60(%rbp), %edx	# ax, tmp120
	movslq	%edx, %rdx	# tmp120, D.22590
	addq	$1, %rdx	#, D.22590
	salq	$3, %rdx	#, D.22590
	addq	%rdx, %rax	# D.22590, D.22586
	movq	(%rax), %rax	# *_36, tmp121
	movq	%rax, -40(%rbp)	# tmp121, obj
	.loc 1 6146 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.889
	movzbl	37(%rax), %eax	# PL_op.889_38->op_private, D.22591
	movzbl	%al, %eax	# D.22591, D.22582
	andl	$32, %eax	#, D.22582
	testl	%eax, %eax	# D.22582
	je	.L1579	#,
	.loc 1 6146 0 is_stmt 0 discriminator 1
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.890
	movq	PL_op(%rip), %rax	# PL_op, PL_op.891
	movq	24(%rax), %rax	# PL_op.891_43->op_targ, D.22583
	salq	$3, %rax	#, D.22583
	addq	%rdx, %rax	# PL_curpad.890, D.22586
	movq	(%rax), %rax	# *_46, iftmp.888
	jmp	.L1580	#
.L1579:
	.loc 1 6146 0 discriminator 2
	call	Perl_sv_newmortal	#
.L1580:
	.loc 1 6146 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.888, targ
	.loc 1 6148 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rdx	# obj, tmp122
	movq	-48(%rbp), %rax	# f, tmp123
	movq	%rdx, %rsi	# tmp122,
	movq	%rax, %rdi	# tmp123,
	call	pstore	#
	movl	%eax, -52(%rbp)	# tmp124, RETVAL
	.loc 1 6150 0 discriminator 3
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.892
	movl	-60(%rbp), %edx	# ax, tmp125
	movslq	%edx, %rdx	# tmp125, D.22583
	salq	$3, %rdx	#, D.22583
	subq	$8, %rdx	#, D.22590
	leaq	(%rax,%rdx), %rbx	#, sp
.LBB370:
	movl	-52(%rbp), %eax	# RETVAL, tmp126
	movslq	%eax, %rdx	# tmp126, D.22584
	movq	-32(%rbp), %rax	# targ, tmp127
	movq	%rdx, %rsi	# D.22584,
	movq	%rax, %rdi	# tmp127,
	call	Perl_sv_setiv	#
.LBB371:
	movq	-32(%rbp), %rax	# targ, tmp128
	movl	12(%rax), %eax	# targ_49->sv_flags, D.22592
	andl	$16384, %eax	#, D.22592
	testl	%eax, %eax	# D.22592
	je	.L1581	#,
	.loc 1 6150 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# targ, tmp129
	movq	%rax, %rdi	# tmp129,
	call	Perl_mg_set	#
.L1581:
	.loc 1 6150 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# targ, tmp130
	movq	%rax, (%rbx)	# tmp130, *sp_59
.LBE371:
.LBE370:
.LBE369:
.LBB372:
	.loc 1 6152 0 is_stmt 1 discriminator 2
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.893
	movl	-60(%rbp), %edx	# ax, tmp131
	movslq	%edx, %rcx	# tmp131, D.22590
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.894
	addq	%rcx, %rdx	# D.22590, D.22590
	salq	$3, %rdx	#, D.22590
	subq	$8, %rdx	#, D.22590
	addq	%rdx, %rax	# D.22590, PL_stack_sp.895
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.895, PL_stack_sp
	nop
.LBE372:
	.loc 1 6153 0 discriminator 2
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	XS_Storable_pstore, .-XS_Storable_pstore
	.section	.rodata
	.align 8
.LC68:
	.string	"Usage: Storable::net_pstore(f, obj)"
	.text
	.globl	XS_Storable_net_pstore
	.type	XS_Storable_net_pstore, @function
XS_Storable_net_pstore:
.LFB78:
	.loc 1 6157 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$64, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -72(%rbp)	# cv, cv
	.loc 1 6158 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.896
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.897
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.899
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.899, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.898_5, D.22594
	cltq
	salq	$3, %rax	#, D.22595
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.900
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.901
	subq	%rax, %rdx	# PL_stack_base.902, D.22596
	movq	%rdx, %rax	# D.22596, D.22596
	sarq	$3, %rax	#, tmp116
	addl	$1, %eax	#, D.22597
	movl	%eax, -60(%rbp)	# D.22597, ax
	movq	%rbx, %rdx	# sp, sp.903
	movq	%r12, %rax	# mark, mark.904
	subq	%rax, %rdx	# mark.904, D.22596
	movq	%rdx, %rax	# D.22596, D.22596
	sarq	$3, %rax	#, tmp117
	movl	%eax, -56(%rbp)	# D.22596, items
	.loc 1 6159 0
	cmpl	$2, -56(%rbp)	#, items
	je	.L1584	#,
	.loc 1 6160 0
	movl	$.LC68, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L1584:
.LBB373:
	.loc 1 6162 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.905
	movl	-60(%rbp), %edx	# ax, tmp118
	movslq	%edx, %rdx	# tmp118, D.22595
	salq	$3, %rdx	#, D.22595
	addq	%rdx, %rax	# D.22595, D.22598
	movq	(%rax), %rax	# *_27, D.22599
	movq	%rax, %rdi	# D.22599,
	call	Perl_sv_2io	#
	movq	(%rax), %rax	# _29->sv_any, D.22601
	movq	64(%rax), %rax	# _30->xio_ofp, tmp119
	movq	%rax, -48(%rbp)	# tmp119, f
	.loc 1 6163 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.906
	movl	-60(%rbp), %edx	# ax, tmp120
	movslq	%edx, %rdx	# tmp120, D.22602
	addq	$1, %rdx	#, D.22602
	salq	$3, %rdx	#, D.22602
	addq	%rdx, %rax	# D.22602, D.22598
	movq	(%rax), %rax	# *_36, tmp121
	movq	%rax, -40(%rbp)	# tmp121, obj
	.loc 1 6165 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.908
	movzbl	37(%rax), %eax	# PL_op.908_38->op_private, D.22603
	movzbl	%al, %eax	# D.22603, D.22594
	andl	$32, %eax	#, D.22594
	testl	%eax, %eax	# D.22594
	je	.L1585	#,
	.loc 1 6165 0 is_stmt 0 discriminator 1
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.909
	movq	PL_op(%rip), %rax	# PL_op, PL_op.910
	movq	24(%rax), %rax	# PL_op.910_43->op_targ, D.22595
	salq	$3, %rax	#, D.22595
	addq	%rdx, %rax	# PL_curpad.909, D.22598
	movq	(%rax), %rax	# *_46, iftmp.907
	jmp	.L1586	#
.L1585:
	.loc 1 6165 0 discriminator 2
	call	Perl_sv_newmortal	#
.L1586:
	.loc 1 6165 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.907, targ
	.loc 1 6167 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rdx	# obj, tmp122
	movq	-48(%rbp), %rax	# f, tmp123
	movq	%rdx, %rsi	# tmp122,
	movq	%rax, %rdi	# tmp123,
	call	net_pstore	#
	movl	%eax, -52(%rbp)	# tmp124, RETVAL
	.loc 1 6169 0 discriminator 3
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.911
	movl	-60(%rbp), %edx	# ax, tmp125
	movslq	%edx, %rdx	# tmp125, D.22595
	salq	$3, %rdx	#, D.22595
	subq	$8, %rdx	#, D.22602
	leaq	(%rax,%rdx), %rbx	#, sp
.LBB374:
	movl	-52(%rbp), %eax	# RETVAL, tmp126
	movslq	%eax, %rdx	# tmp126, D.22596
	movq	-32(%rbp), %rax	# targ, tmp127
	movq	%rdx, %rsi	# D.22596,
	movq	%rax, %rdi	# tmp127,
	call	Perl_sv_setiv	#
.LBB375:
	movq	-32(%rbp), %rax	# targ, tmp128
	movl	12(%rax), %eax	# targ_49->sv_flags, D.22604
	andl	$16384, %eax	#, D.22604
	testl	%eax, %eax	# D.22604
	je	.L1587	#,
	.loc 1 6169 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# targ, tmp129
	movq	%rax, %rdi	# tmp129,
	call	Perl_mg_set	#
.L1587:
	.loc 1 6169 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# targ, tmp130
	movq	%rax, (%rbx)	# tmp130, *sp_59
.LBE375:
.LBE374:
.LBE373:
.LBB376:
	.loc 1 6171 0 is_stmt 1 discriminator 2
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.912
	movl	-60(%rbp), %edx	# ax, tmp131
	movslq	%edx, %rcx	# tmp131, D.22602
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.913
	addq	%rcx, %rdx	# D.22602, D.22602
	salq	$3, %rdx	#, D.22602
	subq	$8, %rdx	#, D.22602
	addq	%rdx, %rax	# D.22602, PL_stack_sp.914
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.914, PL_stack_sp
	nop
.LBE376:
	.loc 1 6172 0 discriminator 2
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	XS_Storable_net_pstore, .-XS_Storable_net_pstore
	.section	.rodata
.LC69:
	.string	"Usage: Storable::mstore(obj)"
	.text
	.globl	XS_Storable_mstore
	.type	XS_Storable_mstore, @function
XS_Storable_mstore:
.LFB79:
	.loc 1 6176 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$48, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)	# cv, cv
	.loc 1 6177 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.915
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.916
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.918
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.918, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.917_4, D.22606
	cltq
	salq	$3, %rax	#, D.22607
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.919
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.920
	subq	%rax, %rdx	# PL_stack_base.921, D.22608
	movq	%rdx, %rax	# D.22608, D.22608
	sarq	$3, %rax	#, tmp99
	addl	$1, %eax	#, D.22609
	movl	%eax, -48(%rbp)	# D.22609, ax
	movq	%r12, %rdx	# sp, sp.922
	movq	%rbx, %rax	# mark, mark.923
	subq	%rax, %rdx	# mark.923, D.22608
	movq	%rdx, %rax	# D.22608, D.22608
	sarq	$3, %rax	#, tmp100
	movl	%eax, -44(%rbp)	# D.22608, items
	.loc 1 6178 0
	cmpl	$1, -44(%rbp)	#, items
	je	.L1590	#,
	.loc 1 6179 0
	movl	$.LC69, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L1590:
.LBB377:
	.loc 1 6181 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.924
	movl	-48(%rbp), %edx	# ax, tmp101
	movslq	%edx, %rdx	# tmp101, D.22607
	salq	$3, %rdx	#, D.22607
	addq	%rdx, %rax	# D.22607, D.22610
	movq	(%rax), %rax	# *_26, tmp102
	movq	%rax, -40(%rbp)	# tmp102, obj
	.loc 1 6184 0
	movq	-40(%rbp), %rax	# obj, tmp103
	movq	%rax, %rdi	# tmp103,
	call	mstore	#
	movq	%rax, -32(%rbp)	# tmp104, RETVAL
	.loc 1 6186 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.925
	movl	-48(%rbp), %edx	# ax, tmp105
	movslq	%edx, %rdx	# tmp105, D.22607
	salq	$3, %rdx	#, D.22607
	addq	%rax, %rdx	# PL_stack_base.925, D.22610
	movq	-32(%rbp), %rax	# RETVAL, tmp106
	movq	%rax, (%rdx)	# tmp106, *_32
	.loc 1 6187 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.926
	movl	-48(%rbp), %edx	# ax, tmp107
	movslq	%edx, %rdx	# tmp107, D.22607
	salq	$3, %rdx	#, D.22607
	addq	%rdx, %rax	# D.22607, D.22610
	movq	(%rax), %rax	# *_36, D.22611
	movq	%rax, %rdi	# D.22611,
	call	Perl_sv_2mortal	#
.LBE377:
.LBB378:
	.loc 1 6189 0
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.927
	movl	-48(%rbp), %edx	# ax, tmp108
	movslq	%edx, %rcx	# tmp108, D.22612
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.928
	addq	%rcx, %rdx	# D.22612, D.22612
	salq	$3, %rdx	#, D.22612
	subq	$8, %rdx	#, D.22612
	addq	%rdx, %rax	# D.22612, PL_stack_sp.929
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.929, PL_stack_sp
	nop
.LBE378:
	.loc 1 6190 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	XS_Storable_mstore, .-XS_Storable_mstore
	.section	.rodata
	.align 8
.LC70:
	.string	"Usage: Storable::net_mstore(obj)"
	.text
	.globl	XS_Storable_net_mstore
	.type	XS_Storable_net_mstore, @function
XS_Storable_net_mstore:
.LFB80:
	.loc 1 6194 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$48, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)	# cv, cv
	.loc 1 6195 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.930
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.931
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.933
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.933, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.932_4, D.22614
	cltq
	salq	$3, %rax	#, D.22615
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.934
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.935
	subq	%rax, %rdx	# PL_stack_base.936, D.22616
	movq	%rdx, %rax	# D.22616, D.22616
	sarq	$3, %rax	#, tmp99
	addl	$1, %eax	#, D.22617
	movl	%eax, -48(%rbp)	# D.22617, ax
	movq	%r12, %rdx	# sp, sp.937
	movq	%rbx, %rax	# mark, mark.938
	subq	%rax, %rdx	# mark.938, D.22616
	movq	%rdx, %rax	# D.22616, D.22616
	sarq	$3, %rax	#, tmp100
	movl	%eax, -44(%rbp)	# D.22616, items
	.loc 1 6196 0
	cmpl	$1, -44(%rbp)	#, items
	je	.L1593	#,
	.loc 1 6197 0
	movl	$.LC70, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L1593:
.LBB379:
	.loc 1 6199 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.939
	movl	-48(%rbp), %edx	# ax, tmp101
	movslq	%edx, %rdx	# tmp101, D.22615
	salq	$3, %rdx	#, D.22615
	addq	%rdx, %rax	# D.22615, D.22618
	movq	(%rax), %rax	# *_26, tmp102
	movq	%rax, -40(%rbp)	# tmp102, obj
	.loc 1 6202 0
	movq	-40(%rbp), %rax	# obj, tmp103
	movq	%rax, %rdi	# tmp103,
	call	net_mstore	#
	movq	%rax, -32(%rbp)	# tmp104, RETVAL
	.loc 1 6204 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.940
	movl	-48(%rbp), %edx	# ax, tmp105
	movslq	%edx, %rdx	# tmp105, D.22615
	salq	$3, %rdx	#, D.22615
	addq	%rax, %rdx	# PL_stack_base.940, D.22618
	movq	-32(%rbp), %rax	# RETVAL, tmp106
	movq	%rax, (%rdx)	# tmp106, *_32
	.loc 1 6205 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.941
	movl	-48(%rbp), %edx	# ax, tmp107
	movslq	%edx, %rdx	# tmp107, D.22615
	salq	$3, %rdx	#, D.22615
	addq	%rdx, %rax	# D.22615, D.22618
	movq	(%rax), %rax	# *_36, D.22619
	movq	%rax, %rdi	# D.22619,
	call	Perl_sv_2mortal	#
.LBE379:
.LBB380:
	.loc 1 6207 0
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.942
	movl	-48(%rbp), %edx	# ax, tmp108
	movslq	%edx, %rcx	# tmp108, D.22620
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.943
	addq	%rcx, %rdx	# D.22620, D.22620
	salq	$3, %rdx	#, D.22620
	subq	$8, %rdx	#, D.22620
	addq	%rdx, %rax	# D.22620, PL_stack_sp.944
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.944, PL_stack_sp
	nop
.LBE380:
	.loc 1 6208 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	XS_Storable_net_mstore, .-XS_Storable_net_mstore
	.section	.rodata
.LC71:
	.string	"Usage: Storable::pretrieve(f)"
	.text
	.globl	XS_Storable_pretrieve
	.type	XS_Storable_pretrieve, @function
XS_Storable_pretrieve:
.LFB81:
	.loc 1 6212 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$48, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)	# cv, cv
	.loc 1 6213 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.945
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.946
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.948
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.948, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.947_4, D.22622
	cltq
	salq	$3, %rax	#, D.22623
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.949
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.950
	subq	%rax, %rdx	# PL_stack_base.951, D.22624
	movq	%rdx, %rax	# D.22624, D.22624
	sarq	$3, %rax	#, tmp102
	addl	$1, %eax	#, D.22625
	movl	%eax, -48(%rbp)	# D.22625, ax
	movq	%r12, %rdx	# sp, sp.952
	movq	%rbx, %rax	# mark, mark.953
	subq	%rax, %rdx	# mark.953, D.22624
	movq	%rdx, %rax	# D.22624, D.22624
	sarq	$3, %rax	#, tmp103
	movl	%eax, -44(%rbp)	# D.22624, items
	.loc 1 6214 0
	cmpl	$1, -44(%rbp)	#, items
	je	.L1596	#,
	.loc 1 6215 0
	movl	$.LC71, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L1596:
.LBB381:
	.loc 1 6217 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.954
	movl	-48(%rbp), %edx	# ax, tmp104
	movslq	%edx, %rdx	# tmp104, D.22623
	salq	$3, %rdx	#, D.22623
	addq	%rdx, %rax	# D.22623, D.22626
	movq	(%rax), %rax	# *_26, D.22627
	movq	%rax, %rdi	# D.22627,
	call	Perl_sv_2io	#
	movq	(%rax), %rax	# _28->sv_any, D.22629
	movq	56(%rax), %rax	# _29->xio_ifp, tmp105
	movq	%rax, -40(%rbp)	# tmp105, f
	.loc 1 6220 0
	movq	-40(%rbp), %rax	# f, tmp106
	movq	%rax, %rdi	# tmp106,
	call	pretrieve	#
	movq	%rax, -32(%rbp)	# tmp107, RETVAL
	.loc 1 6222 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.955
	movl	-48(%rbp), %edx	# ax, tmp108
	movslq	%edx, %rdx	# tmp108, D.22623
	salq	$3, %rdx	#, D.22623
	addq	%rax, %rdx	# PL_stack_base.955, D.22626
	movq	-32(%rbp), %rax	# RETVAL, tmp109
	movq	%rax, (%rdx)	# tmp109, *_35
	.loc 1 6223 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.956
	movl	-48(%rbp), %edx	# ax, tmp110
	movslq	%edx, %rdx	# tmp110, D.22623
	salq	$3, %rdx	#, D.22623
	addq	%rdx, %rax	# D.22623, D.22626
	movq	(%rax), %rax	# *_39, D.22627
	movq	%rax, %rdi	# D.22627,
	call	Perl_sv_2mortal	#
.LBE381:
.LBB382:
	.loc 1 6225 0
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.957
	movl	-48(%rbp), %edx	# ax, tmp111
	movslq	%edx, %rcx	# tmp111, D.22630
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.958
	addq	%rcx, %rdx	# D.22630, D.22630
	salq	$3, %rdx	#, D.22630
	subq	$8, %rdx	#, D.22630
	addq	%rdx, %rax	# D.22630, PL_stack_sp.959
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.959, PL_stack_sp
	nop
.LBE382:
	.loc 1 6226 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	XS_Storable_pretrieve, .-XS_Storable_pretrieve
	.section	.rodata
	.align 8
.LC72:
	.string	"Usage: Storable::mretrieve(sv)"
	.text
	.globl	XS_Storable_mretrieve
	.type	XS_Storable_mretrieve, @function
XS_Storable_mretrieve:
.LFB82:
	.loc 1 6230 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$48, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)	# cv, cv
	.loc 1 6231 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.960
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.961
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.963
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.963, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.962_4, D.22632
	cltq
	salq	$3, %rax	#, D.22633
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.964
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.965
	subq	%rax, %rdx	# PL_stack_base.966, D.22634
	movq	%rdx, %rax	# D.22634, D.22634
	sarq	$3, %rax	#, tmp99
	addl	$1, %eax	#, D.22635
	movl	%eax, -48(%rbp)	# D.22635, ax
	movq	%r12, %rdx	# sp, sp.967
	movq	%rbx, %rax	# mark, mark.968
	subq	%rax, %rdx	# mark.968, D.22634
	movq	%rdx, %rax	# D.22634, D.22634
	sarq	$3, %rax	#, tmp100
	movl	%eax, -44(%rbp)	# D.22634, items
	.loc 1 6232 0
	cmpl	$1, -44(%rbp)	#, items
	je	.L1599	#,
	.loc 1 6233 0
	movl	$.LC72, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L1599:
.LBB383:
	.loc 1 6235 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.969
	movl	-48(%rbp), %edx	# ax, tmp101
	movslq	%edx, %rdx	# tmp101, D.22633
	salq	$3, %rdx	#, D.22633
	addq	%rdx, %rax	# D.22633, D.22636
	movq	(%rax), %rax	# *_26, tmp102
	movq	%rax, -40(%rbp)	# tmp102, sv
	.loc 1 6238 0
	movq	-40(%rbp), %rax	# sv, tmp103
	movq	%rax, %rdi	# tmp103,
	call	mretrieve	#
	movq	%rax, -32(%rbp)	# tmp104, RETVAL
	.loc 1 6240 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.970
	movl	-48(%rbp), %edx	# ax, tmp105
	movslq	%edx, %rdx	# tmp105, D.22633
	salq	$3, %rdx	#, D.22633
	addq	%rax, %rdx	# PL_stack_base.970, D.22636
	movq	-32(%rbp), %rax	# RETVAL, tmp106
	movq	%rax, (%rdx)	# tmp106, *_32
	.loc 1 6241 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.971
	movl	-48(%rbp), %edx	# ax, tmp107
	movslq	%edx, %rdx	# tmp107, D.22633
	salq	$3, %rdx	#, D.22633
	addq	%rdx, %rax	# D.22633, D.22636
	movq	(%rax), %rax	# *_36, D.22637
	movq	%rax, %rdi	# D.22637,
	call	Perl_sv_2mortal	#
.LBE383:
.LBB384:
	.loc 1 6243 0
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.972
	movl	-48(%rbp), %edx	# ax, tmp108
	movslq	%edx, %rcx	# tmp108, D.22638
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.973
	addq	%rcx, %rdx	# D.22638, D.22638
	salq	$3, %rdx	#, D.22638
	subq	$8, %rdx	#, D.22638
	addq	%rdx, %rax	# D.22638, PL_stack_sp.974
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.974, PL_stack_sp
	nop
.LBE384:
	.loc 1 6244 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	XS_Storable_mretrieve, .-XS_Storable_mretrieve
	.section	.rodata
.LC73:
	.string	"Usage: Storable::dclone(sv)"
	.text
	.globl	XS_Storable_dclone
	.type	XS_Storable_dclone, @function
XS_Storable_dclone:
.LFB83:
	.loc 1 6248 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$48, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)	# cv, cv
	.loc 1 6249 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.975
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.976
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.978
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.978, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.977_4, D.22640
	cltq
	salq	$3, %rax	#, D.22641
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.979
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.980
	subq	%rax, %rdx	# PL_stack_base.981, D.22642
	movq	%rdx, %rax	# D.22642, D.22642
	sarq	$3, %rax	#, tmp99
	addl	$1, %eax	#, D.22643
	movl	%eax, -48(%rbp)	# D.22643, ax
	movq	%r12, %rdx	# sp, sp.982
	movq	%rbx, %rax	# mark, mark.983
	subq	%rax, %rdx	# mark.983, D.22642
	movq	%rdx, %rax	# D.22642, D.22642
	sarq	$3, %rax	#, tmp100
	movl	%eax, -44(%rbp)	# D.22642, items
	.loc 1 6250 0
	cmpl	$1, -44(%rbp)	#, items
	je	.L1602	#,
	.loc 1 6251 0
	movl	$.LC73, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L1602:
.LBB385:
	.loc 1 6253 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.984
	movl	-48(%rbp), %edx	# ax, tmp101
	movslq	%edx, %rdx	# tmp101, D.22641
	salq	$3, %rdx	#, D.22641
	addq	%rdx, %rax	# D.22641, D.22644
	movq	(%rax), %rax	# *_26, tmp102
	movq	%rax, -40(%rbp)	# tmp102, sv
	.loc 1 6256 0
	movq	-40(%rbp), %rax	# sv, tmp103
	movq	%rax, %rdi	# tmp103,
	call	dclone	#
	movq	%rax, -32(%rbp)	# tmp104, RETVAL
	.loc 1 6258 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.985
	movl	-48(%rbp), %edx	# ax, tmp105
	movslq	%edx, %rdx	# tmp105, D.22641
	salq	$3, %rdx	#, D.22641
	addq	%rax, %rdx	# PL_stack_base.985, D.22644
	movq	-32(%rbp), %rax	# RETVAL, tmp106
	movq	%rax, (%rdx)	# tmp106, *_32
	.loc 1 6259 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.986
	movl	-48(%rbp), %edx	# ax, tmp107
	movslq	%edx, %rdx	# tmp107, D.22641
	salq	$3, %rdx	#, D.22641
	addq	%rdx, %rax	# D.22641, D.22644
	movq	(%rax), %rax	# *_36, D.22645
	movq	%rax, %rdi	# D.22645,
	call	Perl_sv_2mortal	#
.LBE385:
.LBB386:
	.loc 1 6261 0
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.987
	movl	-48(%rbp), %edx	# ax, tmp108
	movslq	%edx, %rcx	# tmp108, D.22646
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.988
	addq	%rcx, %rdx	# D.22646, D.22646
	salq	$3, %rdx	#, D.22646
	subq	$8, %rdx	#, D.22646
	addq	%rdx, %rax	# D.22646, PL_stack_sp.989
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.989, PL_stack_sp
	nop
.LBE386:
	.loc 1 6262 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	XS_Storable_dclone, .-XS_Storable_dclone
	.section	.rodata
	.align 8
.LC74:
	.string	"Usage: Storable::last_op_in_netorder()"
	.text
	.globl	XS_Storable_last_op_in_netorder
	.type	XS_Storable_last_op_in_netorder, @function
XS_Storable_last_op_in_netorder:
.LFB84:
	.loc 1 6266 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$48, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)	# cv, cv
	.loc 1 6267 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.990
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.991
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.993
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.993, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.992_5, D.22648
	cltq
	salq	$3, %rax	#, D.22649
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.994
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.995
	subq	%rax, %rdx	# PL_stack_base.996, D.22650
	movq	%rdx, %rax	# D.22650, D.22650
	sarq	$3, %rax	#, tmp104
	addl	$1, %eax	#, D.22651
	movl	%eax, -44(%rbp)	# D.22651, ax
	movq	%rbx, %rdx	# sp, sp.997
	movq	%r12, %rax	# mark, mark.998
	subq	%rax, %rdx	# mark.998, D.22650
	movq	%rdx, %rax	# D.22650, D.22650
	sarq	$3, %rax	#, tmp105
	movl	%eax, -40(%rbp)	# D.22650, items
	.loc 1 6268 0
	cmpl	$0, -40(%rbp)	#, items
	je	.L1605	#,
	.loc 1 6269 0
	movl	$.LC74, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L1605:
.LBB387:
	.loc 1 6272 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1000
	movzbl	37(%rax), %eax	# PL_op.1000_24->op_private, D.22652
	movzbl	%al, %eax	# D.22652, D.22648
	andl	$32, %eax	#, D.22648
	testl	%eax, %eax	# D.22648
	je	.L1606	#,
	.loc 1 6272 0 is_stmt 0 discriminator 1
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.1001
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1002
	movq	24(%rax), %rax	# PL_op.1002_29->op_targ, D.22649
	salq	$3, %rax	#, D.22649
	addq	%rdx, %rax	# PL_curpad.1001, D.22653
	movq	(%rax), %rax	# *_32, iftmp.999
	jmp	.L1607	#
.L1606:
	.loc 1 6272 0 discriminator 2
	call	Perl_sv_newmortal	#
.L1607:
	.loc 1 6272 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.999, targ
	.loc 1 6274 0 is_stmt 1 discriminator 3
	call	last_op_in_netorder	#
	movl	%eax, -36(%rbp)	# tmp106, RETVAL
	.loc 1 6276 0 discriminator 3
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1003
	movl	-44(%rbp), %edx	# ax, tmp107
	movslq	%edx, %rdx	# tmp107, D.22649
	salq	$3, %rdx	#, D.22649
	subq	$8, %rdx	#, D.22654
	leaq	(%rax,%rdx), %rbx	#, sp
.LBB388:
	movl	-36(%rbp), %eax	# RETVAL, tmp108
	movslq	%eax, %rdx	# tmp108, D.22650
	movq	-32(%rbp), %rax	# targ, tmp109
	movq	%rdx, %rsi	# D.22650,
	movq	%rax, %rdi	# tmp109,
	call	Perl_sv_setiv	#
.LBB389:
	movq	-32(%rbp), %rax	# targ, tmp110
	movl	12(%rax), %eax	# targ_35->sv_flags, D.22655
	andl	$16384, %eax	#, D.22655
	testl	%eax, %eax	# D.22655
	je	.L1608	#,
	.loc 1 6276 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# targ, tmp111
	movq	%rax, %rdi	# tmp111,
	call	Perl_mg_set	#
.L1608:
	.loc 1 6276 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# targ, tmp112
	movq	%rax, (%rbx)	# tmp112, *sp_45
.LBE389:
.LBE388:
.LBE387:
.LBB390:
	.loc 1 6278 0 is_stmt 1 discriminator 2
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1004
	movl	-44(%rbp), %edx	# ax, tmp113
	movslq	%edx, %rcx	# tmp113, D.22654
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.1005
	addq	%rcx, %rdx	# D.22654, D.22654
	salq	$3, %rdx	#, D.22654
	subq	$8, %rdx	#, D.22654
	addq	%rdx, %rax	# D.22654, PL_stack_sp.1006
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.1006, PL_stack_sp
	nop
.LBE390:
	.loc 1 6279 0 discriminator 2
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	XS_Storable_last_op_in_netorder, .-XS_Storable_last_op_in_netorder
	.section	.rodata
.LC75:
	.string	"Usage: Storable::is_storing()"
	.text
	.globl	XS_Storable_is_storing
	.type	XS_Storable_is_storing, @function
XS_Storable_is_storing:
.LFB85:
	.loc 1 6283 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$48, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)	# cv, cv
	.loc 1 6284 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.1007
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.1008
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.1010
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.1010, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.1009_5, D.22658
	cltq
	salq	$3, %rax	#, D.22659
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.1011
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1012
	subq	%rax, %rdx	# PL_stack_base.1013, D.22660
	movq	%rdx, %rax	# D.22660, D.22660
	sarq	$3, %rax	#, tmp104
	addl	$1, %eax	#, D.22661
	movl	%eax, -44(%rbp)	# D.22661, ax
	movq	%rbx, %rdx	# sp, sp.1014
	movq	%r12, %rax	# mark, mark.1015
	subq	%rax, %rdx	# mark.1015, D.22660
	movq	%rdx, %rax	# D.22660, D.22660
	sarq	$3, %rax	#, tmp105
	movl	%eax, -40(%rbp)	# D.22660, items
	.loc 1 6285 0
	cmpl	$0, -40(%rbp)	#, items
	je	.L1611	#,
	.loc 1 6286 0
	movl	$.LC75, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L1611:
.LBB391:
	.loc 1 6289 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1017
	movzbl	37(%rax), %eax	# PL_op.1017_24->op_private, D.22662
	movzbl	%al, %eax	# D.22662, D.22658
	andl	$32, %eax	#, D.22658
	testl	%eax, %eax	# D.22658
	je	.L1612	#,
	.loc 1 6289 0 is_stmt 0 discriminator 1
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.1018
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1019
	movq	24(%rax), %rax	# PL_op.1019_29->op_targ, D.22659
	salq	$3, %rax	#, D.22659
	addq	%rdx, %rax	# PL_curpad.1018, D.22663
	movq	(%rax), %rax	# *_32, iftmp.1016
	jmp	.L1613	#
.L1612:
	.loc 1 6289 0 discriminator 2
	call	Perl_sv_newmortal	#
.L1613:
	.loc 1 6289 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.1016, targ
	.loc 1 6291 0 is_stmt 1 discriminator 3
	call	is_storing	#
	movl	%eax, -36(%rbp)	# tmp106, RETVAL
	.loc 1 6293 0 discriminator 3
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1020
	movl	-44(%rbp), %edx	# ax, tmp107
	movslq	%edx, %rdx	# tmp107, D.22659
	salq	$3, %rdx	#, D.22659
	subq	$8, %rdx	#, D.22664
	leaq	(%rax,%rdx), %rbx	#, sp
.LBB392:
	movl	-36(%rbp), %eax	# RETVAL, tmp108
	movslq	%eax, %rdx	# tmp108, D.22660
	movq	-32(%rbp), %rax	# targ, tmp109
	movq	%rdx, %rsi	# D.22660,
	movq	%rax, %rdi	# tmp109,
	call	Perl_sv_setiv	#
.LBB393:
	movq	-32(%rbp), %rax	# targ, tmp110
	movl	12(%rax), %eax	# targ_35->sv_flags, D.22665
	andl	$16384, %eax	#, D.22665
	testl	%eax, %eax	# D.22665
	je	.L1614	#,
	.loc 1 6293 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# targ, tmp111
	movq	%rax, %rdi	# tmp111,
	call	Perl_mg_set	#
.L1614:
	.loc 1 6293 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# targ, tmp112
	movq	%rax, (%rbx)	# tmp112, *sp_45
.LBE393:
.LBE392:
.LBE391:
.LBB394:
	.loc 1 6295 0 is_stmt 1 discriminator 2
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1021
	movl	-44(%rbp), %edx	# ax, tmp113
	movslq	%edx, %rcx	# tmp113, D.22664
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.1022
	addq	%rcx, %rdx	# D.22664, D.22664
	salq	$3, %rdx	#, D.22664
	subq	$8, %rdx	#, D.22664
	addq	%rdx, %rax	# D.22664, PL_stack_sp.1023
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.1023, PL_stack_sp
	nop
.LBE394:
	.loc 1 6296 0 discriminator 2
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	XS_Storable_is_storing, .-XS_Storable_is_storing
	.section	.rodata
	.align 8
.LC76:
	.string	"Usage: Storable::is_retrieving()"
	.text
	.globl	XS_Storable_is_retrieving
	.type	XS_Storable_is_retrieving, @function
XS_Storable_is_retrieving:
.LFB86:
	.loc 1 6300 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$48, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)	# cv, cv
	.loc 1 6301 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.1024
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.1025
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.1027
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.1027, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.1026_5, D.22668
	cltq
	salq	$3, %rax	#, D.22669
	leaq	(%rcx,%rax), %r12	#, mark
	movq	%r12, %rdx	# mark, mark.1028
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1029
	subq	%rax, %rdx	# PL_stack_base.1030, D.22670
	movq	%rdx, %rax	# D.22670, D.22670
	sarq	$3, %rax	#, tmp104
	addl	$1, %eax	#, D.22671
	movl	%eax, -44(%rbp)	# D.22671, ax
	movq	%rbx, %rdx	# sp, sp.1031
	movq	%r12, %rax	# mark, mark.1032
	subq	%rax, %rdx	# mark.1032, D.22670
	movq	%rdx, %rax	# D.22670, D.22670
	sarq	$3, %rax	#, tmp105
	movl	%eax, -40(%rbp)	# D.22670, items
	.loc 1 6302 0
	cmpl	$0, -40(%rbp)	#, items
	je	.L1617	#,
	.loc 1 6303 0
	movl	$.LC76, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L1617:
.LBB395:
	.loc 1 6306 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1034
	movzbl	37(%rax), %eax	# PL_op.1034_24->op_private, D.22672
	movzbl	%al, %eax	# D.22672, D.22668
	andl	$32, %eax	#, D.22668
	testl	%eax, %eax	# D.22668
	je	.L1618	#,
	.loc 1 6306 0 is_stmt 0 discriminator 1
	movq	PL_curpad(%rip), %rdx	# PL_curpad, PL_curpad.1035
	movq	PL_op(%rip), %rax	# PL_op, PL_op.1036
	movq	24(%rax), %rax	# PL_op.1036_29->op_targ, D.22669
	salq	$3, %rax	#, D.22669
	addq	%rdx, %rax	# PL_curpad.1035, D.22673
	movq	(%rax), %rax	# *_32, iftmp.1033
	jmp	.L1619	#
.L1618:
	.loc 1 6306 0 discriminator 2
	call	Perl_sv_newmortal	#
.L1619:
	.loc 1 6306 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.1033, targ
	.loc 1 6308 0 is_stmt 1 discriminator 3
	call	is_retrieving	#
	movl	%eax, -36(%rbp)	# tmp106, RETVAL
	.loc 1 6310 0 discriminator 3
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1037
	movl	-44(%rbp), %edx	# ax, tmp107
	movslq	%edx, %rdx	# tmp107, D.22669
	salq	$3, %rdx	#, D.22669
	subq	$8, %rdx	#, D.22674
	leaq	(%rax,%rdx), %rbx	#, sp
.LBB396:
	movl	-36(%rbp), %eax	# RETVAL, tmp108
	movslq	%eax, %rdx	# tmp108, D.22670
	movq	-32(%rbp), %rax	# targ, tmp109
	movq	%rdx, %rsi	# D.22670,
	movq	%rax, %rdi	# tmp109,
	call	Perl_sv_setiv	#
.LBB397:
	movq	-32(%rbp), %rax	# targ, tmp110
	movl	12(%rax), %eax	# targ_35->sv_flags, D.22675
	andl	$16384, %eax	#, D.22675
	testl	%eax, %eax	# D.22675
	je	.L1620	#,
	.loc 1 6310 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# targ, tmp111
	movq	%rax, %rdi	# tmp111,
	call	Perl_mg_set	#
.L1620:
	.loc 1 6310 0 discriminator 2
	addq	$8, %rbx	#, sp
	movq	-32(%rbp), %rax	# targ, tmp112
	movq	%rax, (%rbx)	# tmp112, *sp_45
.LBE397:
.LBE396:
.LBE395:
.LBB398:
	.loc 1 6312 0 is_stmt 1 discriminator 2
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1038
	movl	-44(%rbp), %edx	# ax, tmp113
	movslq	%edx, %rcx	# tmp113, D.22674
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.1039
	addq	%rcx, %rdx	# D.22674, D.22674
	salq	$3, %rdx	#, D.22674
	subq	$8, %rdx	#, D.22674
	addq	%rdx, %rax	# D.22674, PL_stack_sp.1040
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.1040, PL_stack_sp
	nop
.LBE398:
	.loc 1 6313 0 discriminator 2
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE86:
	.size	XS_Storable_is_retrieving, .-XS_Storable_is_retrieving
	.section	.rodata
.LC77:
	.string	"Storable.c"
.LC78:
	.string	"Storable::Cxt::DESTROY"
.LC79:
	.string	"Storable::init_perinterp"
.LC80:
	.string	"Storable::pstore"
.LC81:
	.string	"$$"
.LC82:
	.string	"Storable::net_pstore"
.LC83:
	.string	"Storable::mstore"
.LC84:
	.string	"$"
.LC85:
	.string	"Storable::net_mstore"
.LC86:
	.string	"Storable::pretrieve"
.LC87:
	.string	"Storable::mretrieve"
.LC88:
	.string	"Storable::dclone"
.LC89:
	.string	"Storable::last_op_in_netorder"
.LC90:
	.string	"Storable::is_storing"
.LC91:
	.string	"Storable::is_retrieving"
.LC92:
	.string	"Storable::drop_utf8"
	.text
	.globl	boot_Storable
	.type	boot_Storable, @function
boot_Storable:
.LFB87:
	.loc 1 6320 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$48, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)	# cv, cv
	.loc 1 6321 0
	movq	PL_stack_sp(%rip), %r12	# PL_stack_sp, sp
	movq	PL_stack_base(%rip), %rcx	# PL_stack_base, PL_stack_base.1041
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.1042
	leaq	-4(%rax), %rdx	#, PL_markstack_ptr.1044
	movq	%rdx, PL_markstack_ptr(%rip)	# PL_markstack_ptr.1044, PL_markstack_ptr
	movl	(%rax), %eax	# *PL_markstack_ptr.1043_4, D.22678
	cltq
	salq	$3, %rax	#, D.22679
	leaq	(%rcx,%rax), %rbx	#, mark
	movq	%rbx, %rdx	# mark, mark.1045
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1046
	subq	%rax, %rdx	# PL_stack_base.1047, D.22680
	movq	%rdx, %rax	# D.22680, D.22680
	sarq	$3, %rax	#, tmp101
	addl	$1, %eax	#, D.22681
	movl	%eax, -40(%rbp)	# D.22681, ax
	movq	%r12, %rdx	# sp, sp.1048
	movq	%rbx, %rax	# mark, mark.1049
	subq	%rax, %rdx	# mark.1049, D.22680
	movq	%rdx, %rax	# D.22680, D.22680
	sarq	$3, %rax	#, tmp102
	movl	%eax, -36(%rbp)	# D.22680, items
	.loc 1 6322 0
	movq	$.LC77, -32(%rbp)	#, file
	.loc 1 6326 0
	movq	-32(%rbp), %rax	# file, tmp103
	movq	%rax, %rdx	# tmp103,
	movl	$XS_Storable__Cxt_DESTROY, %esi	#,
	movl	$.LC78, %edi	#,
	call	Perl_newXS	#
	.loc 1 6327 0
	movq	-32(%rbp), %rax	# file, tmp104
	movq	%rax, %rdx	# tmp104,
	movl	$XS_Storable_init_perinterp, %esi	#,
	movl	$.LC79, %edi	#,
	call	Perl_newXS	#
	movl	$.LC48, %esi	#,
	movq	%rax, %rdi	# D.22682,
	call	Perl_sv_setpv	#
	.loc 1 6328 0
	movq	-32(%rbp), %rax	# file, tmp105
	movq	%rax, %rdx	# tmp105,
	movl	$XS_Storable_pstore, %esi	#,
	movl	$.LC80, %edi	#,
	call	Perl_newXS	#
	movl	$.LC81, %esi	#,
	movq	%rax, %rdi	# D.22682,
	call	Perl_sv_setpv	#
	.loc 1 6329 0
	movq	-32(%rbp), %rax	# file, tmp106
	movq	%rax, %rdx	# tmp106,
	movl	$XS_Storable_net_pstore, %esi	#,
	movl	$.LC82, %edi	#,
	call	Perl_newXS	#
	movl	$.LC81, %esi	#,
	movq	%rax, %rdi	# D.22682,
	call	Perl_sv_setpv	#
	.loc 1 6330 0
	movq	-32(%rbp), %rax	# file, tmp107
	movq	%rax, %rdx	# tmp107,
	movl	$XS_Storable_mstore, %esi	#,
	movl	$.LC83, %edi	#,
	call	Perl_newXS	#
	movl	$.LC84, %esi	#,
	movq	%rax, %rdi	# D.22682,
	call	Perl_sv_setpv	#
	.loc 1 6331 0
	movq	-32(%rbp), %rax	# file, tmp108
	movq	%rax, %rdx	# tmp108,
	movl	$XS_Storable_net_mstore, %esi	#,
	movl	$.LC85, %edi	#,
	call	Perl_newXS	#
	movl	$.LC84, %esi	#,
	movq	%rax, %rdi	# D.22682,
	call	Perl_sv_setpv	#
	.loc 1 6332 0
	movq	-32(%rbp), %rax	# file, tmp109
	movq	%rax, %rdx	# tmp109,
	movl	$XS_Storable_pretrieve, %esi	#,
	movl	$.LC86, %edi	#,
	call	Perl_newXS	#
	movl	$.LC84, %esi	#,
	movq	%rax, %rdi	# D.22682,
	call	Perl_sv_setpv	#
	.loc 1 6333 0
	movq	-32(%rbp), %rax	# file, tmp110
	movq	%rax, %rdx	# tmp110,
	movl	$XS_Storable_mretrieve, %esi	#,
	movl	$.LC87, %edi	#,
	call	Perl_newXS	#
	movl	$.LC84, %esi	#,
	movq	%rax, %rdi	# D.22682,
	call	Perl_sv_setpv	#
	.loc 1 6334 0
	movq	-32(%rbp), %rax	# file, tmp111
	movq	%rax, %rdx	# tmp111,
	movl	$XS_Storable_dclone, %esi	#,
	movl	$.LC88, %edi	#,
	call	Perl_newXS	#
	movl	$.LC84, %esi	#,
	movq	%rax, %rdi	# D.22682,
	call	Perl_sv_setpv	#
	.loc 1 6335 0
	movq	-32(%rbp), %rax	# file, tmp112
	movq	%rax, %rdx	# tmp112,
	movl	$XS_Storable_last_op_in_netorder, %esi	#,
	movl	$.LC89, %edi	#,
	call	Perl_newXS	#
	movl	$.LC48, %esi	#,
	movq	%rax, %rdi	# D.22682,
	call	Perl_sv_setpv	#
	.loc 1 6336 0
	movq	-32(%rbp), %rax	# file, tmp113
	movq	%rax, %rdx	# tmp113,
	movl	$XS_Storable_is_storing, %esi	#,
	movl	$.LC90, %edi	#,
	call	Perl_newXS	#
	movl	$.LC48, %esi	#,
	movq	%rax, %rdi	# D.22682,
	call	Perl_sv_setpv	#
	.loc 1 6337 0
	movq	-32(%rbp), %rax	# file, tmp114
	movq	%rax, %rdx	# tmp114,
	movl	$XS_Storable_is_retrieving, %esi	#,
	movl	$.LC91, %edi	#,
	call	Perl_newXS	#
	movl	$.LC48, %esi	#,
	movq	%rax, %rdi	# D.22682,
	call	Perl_sv_setpv	#
	.loc 1 6342 0
	call	init_perinterp	#
	.loc 1 6343 0
	movl	$4, %edx	#,
	movl	$2, %esi	#,
	movl	$.LC92, %edi	#,
	call	Perl_gv_fetchpv	#
.LBB399:
	.loc 1 6356 0
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1050
	movl	-40(%rbp), %edx	# ax, tmp115
	movslq	%edx, %rdx	# tmp115, D.22679
	salq	$3, %rdx	#, D.22679
	addq	%rdx, %rax	# D.22679, D.22683
	movq	$PL_sv_yes, (%rax)	#, *_38
.LBB400:
	movq	$1, -24(%rbp)	#, tmpXSoff
	movq	PL_stack_base(%rip), %rax	# PL_stack_base, PL_stack_base.1051
	movl	-40(%rbp), %edx	# ax, tmp116
	movslq	%edx, %rcx	# tmp116, D.22684
	movq	-24(%rbp), %rdx	# tmpXSoff, tmpXSoff.1052
	addq	%rcx, %rdx	# D.22684, D.22684
	salq	$3, %rdx	#, D.22684
	subq	$8, %rdx	#, D.22684
	addq	%rdx, %rax	# D.22684, PL_stack_sp.1053
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.1053, PL_stack_sp
	nop
.LBE400:
.LBE399:
	.loc 1 6357 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE87:
	.size	boot_Storable, .-boot_Storable
	.local	buf.11132
	.comm	buf.11132,80,32
	.section	.rodata
	.type	network_file_header.11199, @object
	.size	network_file_header.11199, 6
network_file_header.11199:
	.byte	112
	.byte	115
	.byte	116
	.byte	48
	.byte	5
	.byte	6
	.align 16
	.type	file_header.11200, @object
	.size	file_header.11200, 19
file_header.11200:
	.byte	112
	.byte	115
	.byte	116
	.byte	48
	.byte	4
	.byte	6
	.byte	8
	.byte	49
	.byte	50
	.byte	51
	.byte	52
	.byte	53
	.byte	54
	.byte	55
	.byte	56
	.byte	4
	.byte	8
	.byte	8
	.byte	8
	.local	sv_h_undef.11549
	.comm	sv_h_undef.11549,8,8
	.text
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 5 "/usr/include/dirent.h"
	.file 6 "perl.h"
	.file 7 "op.h"
	.file 8 "sv.h"
	.file 9 "regexp.h"
	.file 10 "gv.h"
	.file 11 "mg.h"
	.file 12 "av.h"
	.file 13 "hv.h"
	.file 14 "cv.h"
	.file 15 "handy.h"
	.file 16 "perlio.h"
	.file 17 "pad.h"
	.file 18 "patchlevel.h"
	.file 19 "intrpvar.h"
	.file 20 "thrdvar.h"
	.file 21 "perlvars.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x643b
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF513
	.byte	0x1
	.long	.LASF514
	.long	.LASF515
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
	.long	.LASF181
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
	.long	0xe94
	.byte	0
	.uleb128 0xd
	.long	.LASF17
	.byte	0x7
	.byte	0xe3
	.long	0xe94
	.byte	0x8
	.uleb128 0xd
	.long	.LASF18
	.byte	0x7
	.byte	0xe3
	.long	0xf18
	.byte	0x10
	.uleb128 0xd
	.long	.LASF19
	.byte	0x7
	.byte	0xe3
	.long	0xf02
	.byte	0x18
	.uleb128 0xd
	.long	.LASF20
	.byte	0x7
	.byte	0xe3
	.long	0xd06
	.byte	0x20
	.uleb128 0xd
	.long	.LASF21
	.byte	0x7
	.byte	0xe3
	.long	0xd06
	.byte	0x22
	.uleb128 0xd
	.long	.LASF22
	.byte	0x7
	.byte	0xe3
	.long	0xcfc
	.byte	0x24
	.uleb128 0xd
	.long	.LASF23
	.byte	0x7
	.byte	0xe3
	.long	0xcfc
	.byte	0x25
	.byte	0
	.uleb128 0xb
	.long	.LASF24
	.byte	0x6
	.value	0x7db
	.long	0x17c
	.uleb128 0xe
	.long	.LASF25
	.byte	0x70
	.byte	0x7
	.byte	0xfd
	.long	0x26a
	.uleb128 0xd
	.long	.LASF16
	.byte	0x7
	.byte	0xfe
	.long	0xe94
	.byte	0
	.uleb128 0xd
	.long	.LASF17
	.byte	0x7
	.byte	0xfe
	.long	0xe94
	.byte	0x8
	.uleb128 0xd
	.long	.LASF18
	.byte	0x7
	.byte	0xfe
	.long	0xf18
	.byte	0x10
	.uleb128 0xd
	.long	.LASF19
	.byte	0x7
	.byte	0xfe
	.long	0xf02
	.byte	0x18
	.uleb128 0xd
	.long	.LASF20
	.byte	0x7
	.byte	0xfe
	.long	0xd06
	.byte	0x20
	.uleb128 0xd
	.long	.LASF21
	.byte	0x7
	.byte	0xfe
	.long	0xd06
	.byte	0x22
	.uleb128 0xd
	.long	.LASF22
	.byte	0x7
	.byte	0xfe
	.long	0xcfc
	.byte	0x24
	.uleb128 0xd
	.long	.LASF23
	.byte	0x7
	.byte	0xfe
	.long	0xcfc
	.byte	0x25
	.uleb128 0xd
	.long	.LASF26
	.byte	0x7
	.byte	0xff
	.long	0xe94
	.byte	0x28
	.uleb128 0xf
	.long	.LASF27
	.byte	0x7
	.value	0x100
	.long	0xe94
	.byte	0x30
	.uleb128 0xf
	.long	.LASF28
	.byte	0x7
	.value	0x101
	.long	0xe94
	.byte	0x38
	.uleb128 0xf
	.long	.LASF29
	.byte	0x7
	.value	0x102
	.long	0xe94
	.byte	0x40
	.uleb128 0xf
	.long	.LASF30
	.byte	0x7
	.value	0x103
	.long	0xf1e
	.byte	0x48
	.uleb128 0xf
	.long	.LASF31
	.byte	0x7
	.value	0x107
	.long	0xf24
	.byte	0x50
	.uleb128 0xf
	.long	.LASF32
	.byte	0x7
	.value	0x109
	.long	0xd1c
	.byte	0x58
	.uleb128 0xf
	.long	.LASF33
	.byte	0x7
	.value	0x10a
	.long	0xd1c
	.byte	0x5c
	.uleb128 0xf
	.long	.LASF34
	.byte	0x7
	.value	0x10b
	.long	0xcfc
	.byte	0x60
	.uleb128 0xf
	.long	.LASF35
	.byte	0x7
	.value	0x10f
	.long	0xe7c
	.byte	0x68
	.byte	0
	.uleb128 0xb
	.long	.LASF36
	.byte	0x6
	.value	0x7e1
	.long	0x276
	.uleb128 0x10
	.long	.LASF37
	.byte	0x1
	.byte	0x6
	.value	0xea7
	.long	0x291
	.uleb128 0xf
	.long	.LASF38
	.byte	0x6
	.value	0xea8
	.long	0x7f
	.byte	0
	.byte	0
	.uleb128 0xa
	.string	"SV"
	.byte	0x6
	.value	0x7ea
	.long	0x29c
	.uleb128 0xc
	.string	"sv"
	.byte	0x10
	.byte	0x8
	.byte	0x43
	.long	0x2cc
	.uleb128 0xd
	.long	.LASF39
	.byte	0x8
	.byte	0x44
	.long	0x6c
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.byte	0x45
	.long	0xd1c
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0x46
	.long	0xd1c
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"AV"
	.byte	0x6
	.value	0x7eb
	.long	0x2d7
	.uleb128 0xc
	.string	"av"
	.byte	0x10
	.byte	0x8
	.byte	0x55
	.long	0x307
	.uleb128 0xd
	.long	.LASF39
	.byte	0x8
	.byte	0x56
	.long	0xe64
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.byte	0x57
	.long	0xd1c
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0x58
	.long	0xd1c
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"HV"
	.byte	0x6
	.value	0x7ec
	.long	0x312
	.uleb128 0xc
	.string	"hv"
	.byte	0x10
	.byte	0x8
	.byte	0x5b
	.long	0x342
	.uleb128 0xd
	.long	.LASF39
	.byte	0x8
	.byte	0x5c
	.long	0xe6a
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.byte	0x5d
	.long	0xd1c
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0x5e
	.long	0xd1c
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.string	"CV"
	.byte	0x6
	.value	0x7ed
	.long	0x34d
	.uleb128 0xc
	.string	"cv"
	.byte	0x10
	.byte	0x8
	.byte	0x4f
	.long	0x37d
	.uleb128 0xd
	.long	.LASF39
	.byte	0x8
	.byte	0x50
	.long	0xe5e
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.byte	0x51
	.long	0xd1c
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0x52
	.long	0xd1c
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.long	.LASF42
	.byte	0x6
	.value	0x7ee
	.long	0x389
	.uleb128 0xe
	.long	.LASF43
	.byte	0x68
	.byte	0x9
	.byte	0x1f
	.long	0x462
	.uleb128 0xd
	.long	.LASF44
	.byte	0x9
	.byte	0x20
	.long	0xdb7
	.byte	0
	.uleb128 0xd
	.long	.LASF45
	.byte	0x9
	.byte	0x21
	.long	0xdb7
	.byte	0x8
	.uleb128 0xd
	.long	.LASF46
	.byte	0x9
	.byte	0x22
	.long	0xdbd
	.byte	0x10
	.uleb128 0xd
	.long	.LASF47
	.byte	0x9
	.byte	0x23
	.long	0xdc8
	.byte	0x18
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x24
	.long	0x79
	.byte	0x20
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x25
	.long	0xdd3
	.byte	0x28
	.uleb128 0xd
	.long	.LASF50
	.byte	0x9
	.byte	0x26
	.long	0x79
	.byte	0x30
	.uleb128 0xd
	.long	.LASF51
	.byte	0x9
	.byte	0x28
	.long	0xdd9
	.byte	0x38
	.uleb128 0xd
	.long	.LASF52
	.byte	0x9
	.byte	0x29
	.long	0xd11
	.byte	0x40
	.uleb128 0xd
	.long	.LASF53
	.byte	0x9
	.byte	0x2a
	.long	0xd11
	.byte	0x44
	.uleb128 0xd
	.long	.LASF54
	.byte	0x9
	.byte	0x2b
	.long	0xd11
	.byte	0x48
	.uleb128 0xd
	.long	.LASF55
	.byte	0x9
	.byte	0x2c
	.long	0xd11
	.byte	0x4c
	.uleb128 0xd
	.long	.LASF56
	.byte	0x9
	.byte	0x2d
	.long	0xd1c
	.byte	0x50
	.uleb128 0xd
	.long	.LASF57
	.byte	0x9
	.byte	0x2e
	.long	0xd1c
	.byte	0x54
	.uleb128 0xd
	.long	.LASF58
	.byte	0x9
	.byte	0x2f
	.long	0xd1c
	.byte	0x58
	.uleb128 0xd
	.long	.LASF59
	.byte	0x9
	.byte	0x30
	.long	0xd1c
	.byte	0x5c
	.uleb128 0xd
	.long	.LASF60
	.byte	0x9
	.byte	0x32
	.long	0xddf
	.byte	0x60
	.byte	0
	.uleb128 0xa
	.string	"GP"
	.byte	0x6
	.value	0x7ef
	.long	0x46d
	.uleb128 0xc
	.string	"gp"
	.byte	0x58
	.byte	0xa
	.byte	0xb
	.long	0x509
	.uleb128 0xd
	.long	.LASF61
	.byte	0xa
	.byte	0xc
	.long	0xd44
	.byte	0
	.uleb128 0xd
	.long	.LASF62
	.byte	0xa
	.byte	0xd
	.long	0xd1c
	.byte	0x8
	.uleb128 0xd
	.long	.LASF63
	.byte	0xa
	.byte	0xe
	.long	0xef1
	.byte	0x10
	.uleb128 0xd
	.long	.LASF64
	.byte	0xa
	.byte	0xf
	.long	0xea5
	.byte	0x18
	.uleb128 0xd
	.long	.LASF65
	.byte	0xa
	.byte	0x10
	.long	0xeb7
	.byte	0x20
	.uleb128 0xd
	.long	.LASF66
	.byte	0xa
	.byte	0x11
	.long	0xe7c
	.byte	0x28
	.uleb128 0xd
	.long	.LASF67
	.byte	0xa
	.byte	0x12
	.long	0xeb1
	.byte	0x30
	.uleb128 0xd
	.long	.LASF68
	.byte	0xa
	.byte	0x13
	.long	0xea5
	.byte	0x38
	.uleb128 0xd
	.long	.LASF69
	.byte	0xa
	.byte	0x14
	.long	0xd1c
	.byte	0x40
	.uleb128 0xd
	.long	.LASF70
	.byte	0xa
	.byte	0x15
	.long	0xd1c
	.byte	0x44
	.uleb128 0xd
	.long	.LASF71
	.byte	0xa
	.byte	0x16
	.long	0xd27
	.byte	0x48
	.uleb128 0xd
	.long	.LASF72
	.byte	0xa
	.byte	0x17
	.long	0x79
	.byte	0x50
	.byte	0
	.uleb128 0xa
	.string	"GV"
	.byte	0x6
	.value	0x7f0
	.long	0x514
	.uleb128 0xc
	.string	"gv"
	.byte	0x10
	.byte	0x8
	.byte	0x49
	.long	0x544
	.uleb128 0xd
	.long	.LASF39
	.byte	0x8
	.byte	0x4a
	.long	0xe58
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.byte	0x4b
	.long	0xd1c
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0x4c
	.long	0xd1c
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"io"
	.byte	0x10
	.byte	0x8
	.byte	0x61
	.long	0x574
	.uleb128 0xd
	.long	.LASF39
	.byte	0x8
	.byte	0x62
	.long	0xe70
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.byte	0x63
	.long	0xd1c
	.byte	0x8
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.byte	0x64
	.long	0xd1c
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.long	.LASF73
	.byte	0x6
	.value	0x7f5
	.long	0x580
	.uleb128 0xe
	.long	.LASF74
	.byte	0x30
	.byte	0xb
	.byte	0x1a
	.long	0x5ed
	.uleb128 0xd
	.long	.LASF75
	.byte	0xb
	.byte	0x1b
	.long	0xe76
	.byte	0
	.uleb128 0xd
	.long	.LASF76
	.byte	0xb
	.byte	0x1c
	.long	0x102f
	.byte	0x8
	.uleb128 0xd
	.long	.LASF77
	.byte	0xb
	.byte	0x1d
	.long	0xd06
	.byte	0x10
	.uleb128 0xd
	.long	.LASF78
	.byte	0xb
	.byte	0x1e
	.long	0x7f
	.byte	0x12
	.uleb128 0xd
	.long	.LASF79
	.byte	0xb
	.byte	0x1f
	.long	0xcfc
	.byte	0x13
	.uleb128 0xd
	.long	.LASF80
	.byte	0xb
	.byte	0x20
	.long	0xd44
	.byte	0x18
	.uleb128 0xd
	.long	.LASF81
	.byte	0xb
	.byte	0x21
	.long	0x79
	.byte	0x20
	.uleb128 0xd
	.long	.LASF82
	.byte	0xb
	.byte	0x22
	.long	0xd11
	.byte	0x28
	.byte	0
	.uleb128 0xa
	.string	"XRV"
	.byte	0x6
	.value	0x7f6
	.long	0x5f9
	.uleb128 0xc
	.string	"xrv"
	.byte	0x8
	.byte	0x8
	.byte	0xf5
	.long	0x612
	.uleb128 0xd
	.long	.LASF83
	.byte	0x8
	.byte	0xf6
	.long	0xd44
	.byte	0
	.byte	0
	.uleb128 0xa
	.string	"XPV"
	.byte	0x6
	.value	0x7f7
	.long	0x61e
	.uleb128 0xc
	.string	"xpv"
	.byte	0x18
	.byte	0x8
	.byte	0xf9
	.long	0x64f
	.uleb128 0xd
	.long	.LASF84
	.byte	0x8
	.byte	0xfa
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF85
	.byte	0x8
	.byte	0xfb
	.long	0xed
	.byte	0x8
	.uleb128 0xd
	.long	.LASF86
	.byte	0x8
	.byte	0xfc
	.long	0xed
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.long	.LASF87
	.byte	0x6
	.value	0x7f8
	.long	0x65b
	.uleb128 0xe
	.long	.LASF88
	.byte	0x20
	.byte	0x8
	.byte	0xff
	.long	0x69c
	.uleb128 0xf
	.long	.LASF84
	.byte	0x8
	.value	0x100
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF85
	.byte	0x8
	.value	0x101
	.long	0xed
	.byte	0x8
	.uleb128 0xf
	.long	.LASF86
	.byte	0x8
	.value	0x102
	.long	0xed
	.byte	0x10
	.uleb128 0xf
	.long	.LASF89
	.byte	0x8
	.value	0x103
	.long	0xc5
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.long	.LASF90
	.byte	0x6
	.value	0x7f9
	.long	0x6a8
	.uleb128 0x10
	.long	.LASF91
	.byte	0x20
	.byte	0x8
	.value	0x106
	.long	0x6ea
	.uleb128 0xf
	.long	.LASF84
	.byte	0x8
	.value	0x107
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF85
	.byte	0x8
	.value	0x108
	.long	0xed
	.byte	0x8
	.uleb128 0xf
	.long	.LASF86
	.byte	0x8
	.value	0x109
	.long	0xed
	.byte	0x10
	.uleb128 0xf
	.long	.LASF92
	.byte	0x8
	.value	0x10a
	.long	0xd0
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.long	.LASF93
	.byte	0x6
	.value	0x7fa
	.long	0x6f6
	.uleb128 0x10
	.long	.LASF94
	.byte	0x28
	.byte	0x8
	.value	0x10d
	.long	0x745
	.uleb128 0xf
	.long	.LASF84
	.byte	0x8
	.value	0x10e
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF85
	.byte	0x8
	.value	0x10f
	.long	0xed
	.byte	0x8
	.uleb128 0xf
	.long	.LASF86
	.byte	0x8
	.value	0x110
	.long	0xed
	.byte	0x10
	.uleb128 0xf
	.long	.LASF89
	.byte	0x8
	.value	0x111
	.long	0xc5
	.byte	0x18
	.uleb128 0xf
	.long	.LASF95
	.byte	0x8
	.value	0x112
	.long	0xdb
	.byte	0x20
	.byte	0
	.uleb128 0xb
	.long	.LASF96
	.byte	0x6
	.value	0x7fb
	.long	0x751
	.uleb128 0x10
	.long	.LASF97
	.byte	0x38
	.byte	0x8
	.value	0x116
	.long	0x7ba
	.uleb128 0xf
	.long	.LASF84
	.byte	0x8
	.value	0x117
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF85
	.byte	0x8
	.value	0x118
	.long	0xed
	.byte	0x8
	.uleb128 0xf
	.long	.LASF86
	.byte	0x8
	.value	0x119
	.long	0xed
	.byte	0x10
	.uleb128 0xf
	.long	.LASF89
	.byte	0x8
	.value	0x11a
	.long	0xc5
	.byte	0x18
	.uleb128 0xf
	.long	.LASF95
	.byte	0x8
	.value	0x11b
	.long	0xdb
	.byte	0x20
	.uleb128 0xf
	.long	.LASF98
	.byte	0x8
	.value	0x11c
	.long	0xe76
	.byte	0x28
	.uleb128 0xf
	.long	.LASF99
	.byte	0x8
	.value	0x11d
	.long	0xe7c
	.byte	0x30
	.byte	0
	.uleb128 0xb
	.long	.LASF100
	.byte	0x6
	.value	0x7fd
	.long	0x7c6
	.uleb128 0xe
	.long	.LASF101
	.byte	0x50
	.byte	0xc
	.byte	0xb
	.long	0x84b
	.uleb128 0xd
	.long	.LASF102
	.byte	0xc
	.byte	0xc
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF103
	.byte	0xc
	.byte	0xd
	.long	0x86
	.byte	0x8
	.uleb128 0xd
	.long	.LASF104
	.byte	0xc
	.byte	0xe
	.long	0x86
	.byte	0x10
	.uleb128 0xd
	.long	.LASF105
	.byte	0xc
	.byte	0xf
	.long	0xc5
	.byte	0x18
	.uleb128 0xd
	.long	.LASF95
	.byte	0xc
	.byte	0x10
	.long	0xdb
	.byte	0x20
	.uleb128 0xd
	.long	.LASF98
	.byte	0xc
	.byte	0x11
	.long	0xe76
	.byte	0x28
	.uleb128 0xd
	.long	.LASF99
	.byte	0xc
	.byte	0x12
	.long	0xe7c
	.byte	0x30
	.uleb128 0xd
	.long	.LASF106
	.byte	0xc
	.byte	0x14
	.long	0xf2a
	.byte	0x38
	.uleb128 0xd
	.long	.LASF107
	.byte	0xc
	.byte	0x15
	.long	0xd44
	.byte	0x40
	.uleb128 0xd
	.long	.LASF108
	.byte	0xc
	.byte	0x16
	.long	0xcfc
	.byte	0x48
	.byte	0
	.uleb128 0xb
	.long	.LASF109
	.byte	0x6
	.value	0x7fe
	.long	0x857
	.uleb128 0xe
	.long	.LASF110
	.byte	0x58
	.byte	0xd
	.byte	0x22
	.long	0x8e8
	.uleb128 0xd
	.long	.LASF111
	.byte	0xd
	.byte	0x23
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF112
	.byte	0xd
	.byte	0x24
	.long	0xed
	.byte	0x8
	.uleb128 0xd
	.long	.LASF113
	.byte	0xd
	.byte	0x25
	.long	0xed
	.byte	0x10
	.uleb128 0xd
	.long	.LASF114
	.byte	0xd
	.byte	0x26
	.long	0xc5
	.byte	0x18
	.uleb128 0xd
	.long	.LASF95
	.byte	0xd
	.byte	0x27
	.long	0xdb
	.byte	0x20
	.uleb128 0xd
	.long	.LASF98
	.byte	0xd
	.byte	0x29
	.long	0xe76
	.byte	0x28
	.uleb128 0xd
	.long	.LASF99
	.byte	0xd
	.byte	0x2a
	.long	0xe7c
	.byte	0x30
	.uleb128 0xd
	.long	.LASF115
	.byte	0xd
	.byte	0x2c
	.long	0xd11
	.byte	0x38
	.uleb128 0xd
	.long	.LASF116
	.byte	0xd
	.byte	0x2d
	.long	0xfa6
	.byte	0x40
	.uleb128 0xd
	.long	.LASF117
	.byte	0xd
	.byte	0x2e
	.long	0xf1e
	.byte	0x48
	.uleb128 0xd
	.long	.LASF118
	.byte	0xd
	.byte	0x2f
	.long	0x79
	.byte	0x50
	.byte	0
	.uleb128 0xb
	.long	.LASF119
	.byte	0x6
	.value	0x7ff
	.long	0x8f4
	.uleb128 0x10
	.long	.LASF120
	.byte	0x60
	.byte	0x8
	.value	0x130
	.long	0x99e
	.uleb128 0xf
	.long	.LASF84
	.byte	0x8
	.value	0x131
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF85
	.byte	0x8
	.value	0x132
	.long	0xed
	.byte	0x8
	.uleb128 0xf
	.long	.LASF86
	.byte	0x8
	.value	0x133
	.long	0xed
	.byte	0x10
	.uleb128 0xf
	.long	.LASF89
	.byte	0x8
	.value	0x134
	.long	0xc5
	.byte	0x18
	.uleb128 0xf
	.long	.LASF95
	.byte	0x8
	.value	0x135
	.long	0xdb
	.byte	0x20
	.uleb128 0xf
	.long	.LASF98
	.byte	0x8
	.value	0x136
	.long	0xe76
	.byte	0x28
	.uleb128 0xf
	.long	.LASF99
	.byte	0x8
	.value	0x137
	.long	0xe7c
	.byte	0x30
	.uleb128 0xf
	.long	.LASF121
	.byte	0x8
	.value	0x139
	.long	0xe82
	.byte	0x38
	.uleb128 0xf
	.long	.LASF122
	.byte	0x8
	.value	0x13a
	.long	0x79
	.byte	0x40
	.uleb128 0xf
	.long	.LASF123
	.byte	0x8
	.value	0x13b
	.long	0xed
	.byte	0x48
	.uleb128 0xf
	.long	.LASF124
	.byte	0x8
	.value	0x13c
	.long	0xe7c
	.byte	0x50
	.uleb128 0xf
	.long	.LASF125
	.byte	0x8
	.value	0x13d
	.long	0xcfc
	.byte	0x58
	.byte	0
	.uleb128 0xb
	.long	.LASF126
	.byte	0x6
	.value	0x800
	.long	0x9aa
	.uleb128 0xe
	.long	.LASF127
	.byte	0x90
	.byte	0xe
	.byte	0xe
	.long	0xa9b
	.uleb128 0xd
	.long	.LASF84
	.byte	0xe
	.byte	0xf
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF85
	.byte	0xe
	.byte	0x10
	.long	0xed
	.byte	0x8
	.uleb128 0xd
	.long	.LASF86
	.byte	0xe
	.byte	0x11
	.long	0xed
	.byte	0x10
	.uleb128 0xd
	.long	.LASF105
	.byte	0xe
	.byte	0x12
	.long	0xc5
	.byte	0x18
	.uleb128 0xd
	.long	.LASF95
	.byte	0xe
	.byte	0x13
	.long	0xdb
	.byte	0x20
	.uleb128 0xd
	.long	.LASF98
	.byte	0xe
	.byte	0x14
	.long	0xe76
	.byte	0x28
	.uleb128 0xd
	.long	.LASF99
	.byte	0xe
	.byte	0x15
	.long	0xe7c
	.byte	0x30
	.uleb128 0xd
	.long	.LASF128
	.byte	0xe
	.byte	0x17
	.long	0xe7c
	.byte	0x38
	.uleb128 0xd
	.long	.LASF129
	.byte	0xe
	.byte	0x18
	.long	0xe94
	.byte	0x40
	.uleb128 0xd
	.long	.LASF130
	.byte	0xe
	.byte	0x19
	.long	0xe94
	.byte	0x48
	.uleb128 0xd
	.long	.LASF131
	.byte	0xe
	.byte	0x1a
	.long	0xeab
	.byte	0x50
	.uleb128 0xd
	.long	.LASF132
	.byte	0xe
	.byte	0x1b
	.long	0xc4d
	.byte	0x58
	.uleb128 0xd
	.long	.LASF133
	.byte	0xe
	.byte	0x1c
	.long	0xeb1
	.byte	0x60
	.uleb128 0xd
	.long	.LASF134
	.byte	0xe
	.byte	0x1d
	.long	0x79
	.byte	0x68
	.uleb128 0xd
	.long	.LASF135
	.byte	0xe
	.byte	0x1e
	.long	0x5e
	.byte	0x70
	.uleb128 0xd
	.long	.LASF136
	.byte	0xe
	.byte	0x1f
	.long	0xf0d
	.byte	0x78
	.uleb128 0xd
	.long	.LASF137
	.byte	0xe
	.byte	0x20
	.long	0xea5
	.byte	0x80
	.uleb128 0xd
	.long	.LASF138
	.byte	0xe
	.byte	0x25
	.long	0xe88
	.byte	0x88
	.uleb128 0xd
	.long	.LASF139
	.byte	0xe
	.byte	0x26
	.long	0xd1c
	.byte	0x8c
	.byte	0
	.uleb128 0xb
	.long	.LASF140
	.byte	0x6
	.value	0x803
	.long	0xaa7
	.uleb128 0x10
	.long	.LASF141
	.byte	0xa8
	.byte	0x8
	.value	0x170
	.long	0xbe0
	.uleb128 0xf
	.long	.LASF84
	.byte	0x8
	.value	0x171
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF85
	.byte	0x8
	.value	0x172
	.long	0xed
	.byte	0x8
	.uleb128 0xf
	.long	.LASF86
	.byte	0x8
	.value	0x173
	.long	0xed
	.byte	0x10
	.uleb128 0xf
	.long	.LASF89
	.byte	0x8
	.value	0x174
	.long	0xc5
	.byte	0x18
	.uleb128 0xf
	.long	.LASF95
	.byte	0x8
	.value	0x175
	.long	0xdb
	.byte	0x20
	.uleb128 0xf
	.long	.LASF98
	.byte	0x8
	.value	0x176
	.long	0xe76
	.byte	0x28
	.uleb128 0xf
	.long	.LASF99
	.byte	0x8
	.value	0x177
	.long	0xe7c
	.byte	0x30
	.uleb128 0xf
	.long	.LASF142
	.byte	0x8
	.value	0x179
	.long	0xee5
	.byte	0x38
	.uleb128 0xf
	.long	.LASF143
	.byte	0x8
	.value	0x17a
	.long	0xee5
	.byte	0x40
	.uleb128 0xf
	.long	.LASF144
	.byte	0x8
	.value	0x187
	.long	0xebd
	.byte	0x48
	.uleb128 0xf
	.long	.LASF145
	.byte	0x8
	.value	0x188
	.long	0xc5
	.byte	0x50
	.uleb128 0xf
	.long	.LASF146
	.byte	0x8
	.value	0x189
	.long	0xc5
	.byte	0x58
	.uleb128 0xf
	.long	.LASF147
	.byte	0x8
	.value	0x18a
	.long	0xc5
	.byte	0x60
	.uleb128 0xf
	.long	.LASF148
	.byte	0x8
	.value	0x18b
	.long	0xc5
	.byte	0x68
	.uleb128 0xf
	.long	.LASF149
	.byte	0x8
	.value	0x18c
	.long	0x79
	.byte	0x70
	.uleb128 0xf
	.long	.LASF150
	.byte	0x8
	.value	0x18d
	.long	0xeb1
	.byte	0x78
	.uleb128 0xf
	.long	.LASF151
	.byte	0x8
	.value	0x18e
	.long	0x79
	.byte	0x80
	.uleb128 0xf
	.long	.LASF152
	.byte	0x8
	.value	0x18f
	.long	0xeb1
	.byte	0x88
	.uleb128 0xf
	.long	.LASF153
	.byte	0x8
	.value	0x190
	.long	0x79
	.byte	0x90
	.uleb128 0xf
	.long	.LASF154
	.byte	0x8
	.value	0x191
	.long	0xeb1
	.byte	0x98
	.uleb128 0xf
	.long	.LASF155
	.byte	0x8
	.value	0x192
	.long	0x50
	.byte	0xa0
	.uleb128 0xf
	.long	.LASF156
	.byte	0x8
	.value	0x193
	.long	0x7f
	.byte	0xa2
	.uleb128 0xf
	.long	.LASF157
	.byte	0x8
	.value	0x194
	.long	0x7f
	.byte	0xa3
	.byte	0
	.uleb128 0xb
	.long	.LASF158
	.byte	0x6
	.value	0x804
	.long	0xbec
	.uleb128 0xe
	.long	.LASF159
	.byte	0x38
	.byte	0xb
	.byte	0xe
	.long	0xc4d
	.uleb128 0xd
	.long	.LASF160
	.byte	0xb
	.byte	0xf
	.long	0xfc6
	.byte	0
	.uleb128 0xd
	.long	.LASF161
	.byte	0xb
	.byte	0x10
	.long	0xfc6
	.byte	0x8
	.uleb128 0xd
	.long	.LASF162
	.byte	0xb
	.byte	0x11
	.long	0xfe0
	.byte	0x10
	.uleb128 0xd
	.long	.LASF163
	.byte	0xb
	.byte	0x12
	.long	0xfc6
	.byte	0x18
	.uleb128 0xd
	.long	.LASF164
	.byte	0xb
	.byte	0x13
	.long	0xfc6
	.byte	0x20
	.uleb128 0xd
	.long	.LASF165
	.byte	0xb
	.byte	0x14
	.long	0x1009
	.byte	0x28
	.uleb128 0xd
	.long	.LASF166
	.byte	0xb
	.byte	0x16
	.long	0x1029
	.byte	0x30
	.byte	0
	.uleb128 0xa
	.string	"ANY"
	.byte	0x6
	.value	0x805
	.long	0xc59
	.uleb128 0x11
	.string	"any"
	.byte	0x8
	.byte	0x6
	.value	0x9f1
	.long	0xcbb
	.uleb128 0x12
	.long	.LASF167
	.byte	0x6
	.value	0x9f2
	.long	0x6c
	.uleb128 0x12
	.long	.LASF168
	.byte	0x6
	.value	0x9f3
	.long	0xd11
	.uleb128 0x12
	.long	.LASF169
	.byte	0x6
	.value	0x9f4
	.long	0xc5
	.uleb128 0x12
	.long	.LASF170
	.byte	0x6
	.value	0x9f5
	.long	0x5e
	.uleb128 0x12
	.long	.LASF171
	.byte	0x6
	.value	0x9f6
	.long	0x7f
	.uleb128 0x12
	.long	.LASF172
	.byte	0x6
	.value	0x9f7
	.long	0xd3e
	.uleb128 0x12
	.long	.LASF173
	.byte	0x6
	.value	0x9f8
	.long	0xd3e
	.byte	0
	.uleb128 0xb
	.long	.LASF174
	.byte	0x6
	.value	0x808
	.long	0xcc7
	.uleb128 0x10
	.long	.LASF175
	.byte	0x18
	.byte	0x8
	.value	0x4ed
	.long	0xcfc
	.uleb128 0xf
	.long	.LASF176
	.byte	0x8
	.value	0x4ee
	.long	0xeb7
	.byte	0
	.uleb128 0xf
	.long	.LASF177
	.byte	0x8
	.value	0x4ef
	.long	0xd0
	.byte	0x8
	.uleb128 0xf
	.long	.LASF178
	.byte	0x8
	.value	0x4f0
	.long	0xeeb
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"U8"
	.byte	0xf
	.byte	0x85
	.long	0x2d
	.uleb128 0x8
	.string	"U16"
	.byte	0xf
	.byte	0x87
	.long	0x34
	.uleb128 0x8
	.string	"I32"
	.byte	0xf
	.byte	0x88
	.long	0x57
	.uleb128 0x8
	.string	"U32"
	.byte	0xf
	.byte	0x89
	.long	0x3b
	.uleb128 0xb
	.long	.LASF179
	.byte	0xf
	.value	0x209
	.long	0xd1c
	.uleb128 0x13
	.long	0xd3e
	.uleb128 0x14
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xd33
	.uleb128 0x6
	.byte	0x8
	.long	0x291
	.uleb128 0x15
	.long	0x7f
	.long	0xd5a
	.uleb128 0x16
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF180
	.byte	0x10
	.byte	0x63
	.long	0xd65
	.uleb128 0x9
	.long	.LASF182
	.uleb128 0x5
	.long	.LASF183
	.byte	0x10
	.byte	0x65
	.long	0xd75
	.uleb128 0x6
	.byte	0x8
	.long	0xd5a
	.uleb128 0xe
	.long	.LASF184
	.byte	0x4
	.byte	0x9
	.byte	0x13
	.long	0xdac
	.uleb128 0xd
	.long	.LASF177
	.byte	0x9
	.byte	0x14
	.long	0xcfc
	.byte	0
	.uleb128 0xd
	.long	.LASF185
	.byte	0x9
	.byte	0x15
	.long	0xcfc
	.byte	0x1
	.uleb128 0xd
	.long	.LASF186
	.byte	0x9
	.byte	0x16
	.long	0xd06
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF184
	.byte	0x9
	.byte	0x19
	.long	0xd7b
	.uleb128 0x6
	.byte	0x8
	.long	0xd11
	.uleb128 0x6
	.byte	0x8
	.long	0xdac
	.uleb128 0x9
	.long	.LASF187
	.uleb128 0x6
	.byte	0x8
	.long	0xdc3
	.uleb128 0x9
	.long	.LASF188
	.uleb128 0x6
	.byte	0x8
	.long	0xdce
	.uleb128 0x6
	.byte	0x8
	.long	0xd1c
	.uleb128 0x15
	.long	0xdac
	.long	0xdef
	.uleb128 0x16
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.byte	0x8
	.byte	0x2e
	.long	0xe58
	.uleb128 0x18
	.long	.LASF189
	.sleb128 0
	.uleb128 0x18
	.long	.LASF190
	.sleb128 1
	.uleb128 0x18
	.long	.LASF191
	.sleb128 2
	.uleb128 0x18
	.long	.LASF192
	.sleb128 3
	.uleb128 0x18
	.long	.LASF193
	.sleb128 4
	.uleb128 0x18
	.long	.LASF194
	.sleb128 5
	.uleb128 0x18
	.long	.LASF195
	.sleb128 6
	.uleb128 0x18
	.long	.LASF196
	.sleb128 7
	.uleb128 0x18
	.long	.LASF197
	.sleb128 8
	.uleb128 0x18
	.long	.LASF198
	.sleb128 9
	.uleb128 0x18
	.long	.LASF199
	.sleb128 10
	.uleb128 0x18
	.long	.LASF200
	.sleb128 11
	.uleb128 0x18
	.long	.LASF201
	.sleb128 12
	.uleb128 0x18
	.long	.LASF202
	.sleb128 13
	.uleb128 0x18
	.long	.LASF203
	.sleb128 14
	.uleb128 0x18
	.long	.LASF204
	.sleb128 15
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x8e8
	.uleb128 0x6
	.byte	0x8
	.long	0x99e
	.uleb128 0x6
	.byte	0x8
	.long	0x7ba
	.uleb128 0x6
	.byte	0x8
	.long	0x84b
	.uleb128 0x6
	.byte	0x8
	.long	0xa9b
	.uleb128 0x6
	.byte	0x8
	.long	0x574
	.uleb128 0x6
	.byte	0x8
	.long	0x307
	.uleb128 0x6
	.byte	0x8
	.long	0x462
	.uleb128 0xb
	.long	.LASF205
	.byte	0x8
	.value	0x150
	.long	0xd06
	.uleb128 0x6
	.byte	0x8
	.long	0xf9
	.uleb128 0x13
	.long	0xea5
	.uleb128 0x14
	.long	0xea5
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x342
	.uleb128 0x6
	.byte	0x8
	.long	0xe9a
	.uleb128 0x6
	.byte	0x8
	.long	0x509
	.uleb128 0x6
	.byte	0x8
	.long	0x2cc
	.uleb128 0x19
	.byte	0x8
	.byte	0x8
	.value	0x184
	.long	0xedf
	.uleb128 0x12
	.long	.LASF206
	.byte	0x8
	.value	0x185
	.long	0xedf
	.uleb128 0x12
	.long	.LASF207
	.byte	0x8
	.value	0x186
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb5
	.uleb128 0x6
	.byte	0x8
	.long	0xd6a
	.uleb128 0x6
	.byte	0x8
	.long	0x26a
	.uleb128 0x6
	.byte	0x8
	.long	0x544
	.uleb128 0x5
	.long	.LASF208
	.byte	0x11
	.byte	0x13
	.long	0x2cc
	.uleb128 0x5
	.long	.LASF209
	.byte	0x11
	.byte	0x1d
	.long	0x42
	.uleb128 0x6
	.byte	0x8
	.long	0xef7
	.uleb128 0x1a
	.long	0xe94
	.uleb128 0x6
	.byte	0x8
	.long	0xf13
	.uleb128 0x6
	.byte	0x8
	.long	0x170
	.uleb128 0x6
	.byte	0x8
	.long	0x37d
	.uleb128 0x6
	.byte	0x8
	.long	0xd44
	.uleb128 0x8
	.string	"HE"
	.byte	0xd
	.byte	0xc
	.long	0xf3a
	.uleb128 0xc
	.string	"he"
	.byte	0x18
	.byte	0xd
	.byte	0x10
	.long	0xf6a
	.uleb128 0xd
	.long	.LASF210
	.byte	0xd
	.byte	0x11
	.long	0xfa6
	.byte	0
	.uleb128 0xd
	.long	.LASF211
	.byte	0xd
	.byte	0x12
	.long	0xfac
	.byte	0x8
	.uleb128 0xd
	.long	.LASF212
	.byte	0xd
	.byte	0x13
	.long	0xd44
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"HEK"
	.byte	0xd
	.byte	0xd
	.long	0xf75
	.uleb128 0xc
	.string	"hek"
	.byte	0xc
	.byte	0xd
	.byte	0x17
	.long	0xfa6
	.uleb128 0xd
	.long	.LASF213
	.byte	0xd
	.byte	0x18
	.long	0xd1c
	.byte	0
	.uleb128 0xd
	.long	.LASF214
	.byte	0xd
	.byte	0x19
	.long	0xd11
	.byte	0x4
	.uleb128 0xd
	.long	.LASF215
	.byte	0xd
	.byte	0x1a
	.long	0xd4a
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf30
	.uleb128 0x6
	.byte	0x8
	.long	0xf6a
	.uleb128 0x1b
	.long	0x57
	.long	0xfc6
	.uleb128 0x14
	.long	0xd44
	.uleb128 0x14
	.long	0xe76
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xfb2
	.uleb128 0x1b
	.long	0xd1c
	.long	0xfe0
	.uleb128 0x14
	.long	0xd44
	.uleb128 0x14
	.long	0xe76
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xfcc
	.uleb128 0x1b
	.long	0x57
	.long	0x1009
	.uleb128 0x14
	.long	0xd44
	.uleb128 0x14
	.long	0xe76
	.uleb128 0x14
	.long	0xd44
	.uleb128 0x14
	.long	0xaa
	.uleb128 0x14
	.long	0x57
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xfe6
	.uleb128 0x1b
	.long	0x57
	.long	0x1023
	.uleb128 0x14
	.long	0xe76
	.uleb128 0x14
	.long	0x1023
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xcbb
	.uleb128 0x6
	.byte	0x8
	.long	0x100f
	.uleb128 0x6
	.byte	0x8
	.long	0xbe0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF216
	.uleb128 0x1c
	.byte	0x4
	.byte	0x6
	.value	0xfb1
	.long	0x11db
	.uleb128 0x18
	.long	.LASF217
	.sleb128 0
	.uleb128 0x18
	.long	.LASF218
	.sleb128 1
	.uleb128 0x18
	.long	.LASF219
	.sleb128 2
	.uleb128 0x18
	.long	.LASF220
	.sleb128 3
	.uleb128 0x18
	.long	.LASF221
	.sleb128 4
	.uleb128 0x18
	.long	.LASF222
	.sleb128 5
	.uleb128 0x18
	.long	.LASF223
	.sleb128 6
	.uleb128 0x18
	.long	.LASF224
	.sleb128 7
	.uleb128 0x18
	.long	.LASF225
	.sleb128 8
	.uleb128 0x18
	.long	.LASF226
	.sleb128 9
	.uleb128 0x18
	.long	.LASF227
	.sleb128 10
	.uleb128 0x18
	.long	.LASF228
	.sleb128 11
	.uleb128 0x18
	.long	.LASF229
	.sleb128 12
	.uleb128 0x18
	.long	.LASF230
	.sleb128 13
	.uleb128 0x18
	.long	.LASF231
	.sleb128 14
	.uleb128 0x18
	.long	.LASF232
	.sleb128 15
	.uleb128 0x18
	.long	.LASF233
	.sleb128 16
	.uleb128 0x18
	.long	.LASF234
	.sleb128 17
	.uleb128 0x18
	.long	.LASF235
	.sleb128 18
	.uleb128 0x18
	.long	.LASF236
	.sleb128 19
	.uleb128 0x18
	.long	.LASF237
	.sleb128 20
	.uleb128 0x18
	.long	.LASF238
	.sleb128 21
	.uleb128 0x18
	.long	.LASF239
	.sleb128 22
	.uleb128 0x18
	.long	.LASF240
	.sleb128 23
	.uleb128 0x18
	.long	.LASF241
	.sleb128 24
	.uleb128 0x18
	.long	.LASF242
	.sleb128 25
	.uleb128 0x18
	.long	.LASF243
	.sleb128 26
	.uleb128 0x18
	.long	.LASF244
	.sleb128 27
	.uleb128 0x18
	.long	.LASF245
	.sleb128 28
	.uleb128 0x18
	.long	.LASF246
	.sleb128 29
	.uleb128 0x18
	.long	.LASF247
	.sleb128 30
	.uleb128 0x18
	.long	.LASF248
	.sleb128 31
	.uleb128 0x18
	.long	.LASF249
	.sleb128 32
	.uleb128 0x18
	.long	.LASF250
	.sleb128 33
	.uleb128 0x18
	.long	.LASF251
	.sleb128 34
	.uleb128 0x18
	.long	.LASF252
	.sleb128 35
	.uleb128 0x18
	.long	.LASF253
	.sleb128 36
	.uleb128 0x18
	.long	.LASF254
	.sleb128 37
	.uleb128 0x18
	.long	.LASF255
	.sleb128 38
	.uleb128 0x18
	.long	.LASF256
	.sleb128 39
	.uleb128 0x18
	.long	.LASF257
	.sleb128 40
	.uleb128 0x18
	.long	.LASF258
	.sleb128 41
	.uleb128 0x18
	.long	.LASF259
	.sleb128 42
	.uleb128 0x18
	.long	.LASF260
	.sleb128 43
	.uleb128 0x18
	.long	.LASF261
	.sleb128 44
	.uleb128 0x18
	.long	.LASF262
	.sleb128 45
	.uleb128 0x18
	.long	.LASF263
	.sleb128 46
	.uleb128 0x18
	.long	.LASF264
	.sleb128 47
	.uleb128 0x18
	.long	.LASF265
	.sleb128 48
	.uleb128 0x18
	.long	.LASF266
	.sleb128 49
	.uleb128 0x18
	.long	.LASF267
	.sleb128 50
	.uleb128 0x18
	.long	.LASF268
	.sleb128 51
	.uleb128 0x18
	.long	.LASF269
	.sleb128 52
	.uleb128 0x18
	.long	.LASF270
	.sleb128 53
	.uleb128 0x18
	.long	.LASF271
	.sleb128 54
	.uleb128 0x18
	.long	.LASF272
	.sleb128 55
	.uleb128 0x18
	.long	.LASF273
	.sleb128 56
	.uleb128 0x18
	.long	.LASF274
	.sleb128 57
	.uleb128 0x18
	.long	.LASF275
	.sleb128 58
	.uleb128 0x18
	.long	.LASF276
	.sleb128 59
	.uleb128 0x18
	.long	.LASF277
	.sleb128 60
	.uleb128 0x18
	.long	.LASF278
	.sleb128 61
	.uleb128 0x18
	.long	.LASF279
	.sleb128 62
	.uleb128 0x18
	.long	.LASF280
	.sleb128 63
	.uleb128 0x18
	.long	.LASF281
	.sleb128 64
	.uleb128 0x18
	.long	.LASF282
	.sleb128 65
	.uleb128 0x18
	.long	.LASF283
	.sleb128 66
	.byte	0
	.uleb128 0xe
	.long	.LASF284
	.byte	0x20
	.byte	0x1
	.byte	0xdc
	.long	0x1218
	.uleb128 0xd
	.long	.LASF285
	.byte	0x1
	.byte	0xdd
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF286
	.byte	0x1
	.byte	0xde
	.long	0xed
	.byte	0x8
	.uleb128 0xd
	.long	.LASF287
	.byte	0x1
	.byte	0xdf
	.long	0x79
	.byte	0x10
	.uleb128 0xd
	.long	.LASF288
	.byte	0x1
	.byte	0xe0
	.long	0x79
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF289
	.byte	0x1
	.byte	0xf3
	.long	0x42
	.uleb128 0x1d
	.long	.LASF290
	.value	0x100
	.byte	0x1
	.value	0x12d
	.long	0x13ab
	.uleb128 0xf
	.long	.LASF291
	.byte	0x1
	.value	0x12e
	.long	0x57
	.byte	0
	.uleb128 0xf
	.long	.LASF292
	.byte	0x1
	.value	0x12f
	.long	0x57
	.byte	0x4
	.uleb128 0xf
	.long	.LASF293
	.byte	0x1
	.value	0x130
	.long	0xe7c
	.byte	0x8
	.uleb128 0xf
	.long	.LASF294
	.byte	0x1
	.value	0x131
	.long	0xeb7
	.byte	0x10
	.uleb128 0xf
	.long	.LASF295
	.byte	0x1
	.value	0x132
	.long	0xeb7
	.byte	0x18
	.uleb128 0xf
	.long	.LASF296
	.byte	0x1
	.value	0x133
	.long	0xc5
	.byte	0x20
	.uleb128 0xf
	.long	.LASF297
	.byte	0x1
	.value	0x134
	.long	0xe7c
	.byte	0x28
	.uleb128 0xf
	.long	.LASF298
	.byte	0x1
	.value	0x135
	.long	0xeb7
	.byte	0x30
	.uleb128 0xf
	.long	.LASF299
	.byte	0x1
	.value	0x136
	.long	0xe7c
	.byte	0x38
	.uleb128 0xf
	.long	.LASF300
	.byte	0x1
	.value	0x137
	.long	0xc5
	.byte	0x40
	.uleb128 0xf
	.long	.LASF301
	.byte	0x1
	.value	0x138
	.long	0xc5
	.byte	0x48
	.uleb128 0xf
	.long	.LASF302
	.byte	0x1
	.value	0x139
	.long	0x57
	.byte	0x50
	.uleb128 0xf
	.long	.LASF303
	.byte	0x1
	.value	0x13a
	.long	0x57
	.byte	0x54
	.uleb128 0xf
	.long	.LASF304
	.byte	0x1
	.value	0x13b
	.long	0x57
	.byte	0x58
	.uleb128 0xf
	.long	.LASF305
	.byte	0x1
	.value	0x13c
	.long	0x57
	.byte	0x5c
	.uleb128 0xf
	.long	.LASF306
	.byte	0x1
	.value	0x13d
	.long	0xd44
	.byte	0x60
	.uleb128 0xf
	.long	.LASF307
	.byte	0x1
	.value	0x13e
	.long	0x57
	.byte	0x68
	.uleb128 0xf
	.long	.LASF308
	.byte	0x1
	.value	0x145
	.long	0x57
	.byte	0x6c
	.uleb128 0xf
	.long	.LASF309
	.byte	0x1
	.value	0x146
	.long	0x57
	.byte	0x70
	.uleb128 0xf
	.long	.LASF310
	.byte	0x1
	.value	0x147
	.long	0x57
	.byte	0x74
	.uleb128 0xf
	.long	.LASF311
	.byte	0x1
	.value	0x148
	.long	0x11db
	.byte	0x78
	.uleb128 0xf
	.long	.LASF312
	.byte	0x1
	.value	0x149
	.long	0x11db
	.byte	0x98
	.uleb128 0xf
	.long	.LASF313
	.byte	0x1
	.value	0x14a
	.long	0x11db
	.byte	0xb8
	.uleb128 0x1e
	.string	"fio"
	.byte	0x1
	.value	0x14b
	.long	0xee5
	.byte	0xd8
	.uleb128 0xf
	.long	.LASF314
	.byte	0x1
	.value	0x14c
	.long	0x57
	.byte	0xe0
	.uleb128 0xf
	.long	.LASF315
	.byte	0x1
	.value	0x14d
	.long	0x57
	.byte	0xe4
	.uleb128 0xf
	.long	.LASF316
	.byte	0x1
	.value	0x14e
	.long	0x13b6
	.byte	0xe8
	.uleb128 0xf
	.long	.LASF317
	.byte	0x1
	.value	0x14f
	.long	0xd44
	.byte	0xf0
	.uleb128 0xf
	.long	.LASF318
	.byte	0x1
	.value	0x150
	.long	0xd44
	.byte	0xf8
	.byte	0
	.uleb128 0x1f
	.long	0xd44
	.long	0x13b6
	.uleb128 0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x13bc
	.uleb128 0x6
	.byte	0x8
	.long	0x13ab
	.uleb128 0xb
	.long	.LASF319
	.byte	0x1
	.value	0x151
	.long	0x1223
	.uleb128 0x21
	.long	.LASF321
	.byte	0x1
	.value	0x48c
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x142c
	.uleb128 0x22
	.string	"cxt"
	.byte	0x1
	.value	0x48e
	.long	0x142c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x24
	.long	.LASF320
	.byte	0x1
	.value	0x48e
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LASF318
	.byte	0x1
	.value	0x48e
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x13c2
	.uleb128 0x25
	.long	.LASF322
	.byte	0x1
	.value	0x49a
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1460
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0x49a
	.long	0x142c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x21
	.long	.LASF323
	.byte	0x1
	.value	0x4a6
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x14b9
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0x4a8
	.long	0x142c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"f"
	.byte	0x1
	.value	0x4a9
	.long	0xee5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	.LASF292
	.byte	0x1
	.value	0x4aa
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.long	.LASF324
	.byte	0x1
	.value	0x4ab
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x21
	.long	.LASF325
	.byte	0x1
	.value	0x506
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1586
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0x506
	.long	0x142c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.string	"he"
	.byte	0x1
	.value	0x508
	.long	0xfa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x151a
	.uleb128 0x24
	.long	.LASF293
	.byte	0x1
	.value	0x529
	.long	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x28
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x153f
	.uleb128 0x24
	.long	.LASF297
	.byte	0x1
	.value	0x530
	.long	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x28
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x1564
	.uleb128 0x24
	.long	.LASF299
	.byte	0x1
	.value	0x537
	.long	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x23
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x24
	.long	.LASF294
	.byte	0x1
	.value	0x53e
	.long	0xeb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF326
	.byte	0x1
	.value	0x554
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x15d2
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0x554
	.long	0x142c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LASF292
	.byte	0x1
	.value	0x554
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.long	.LASF327
	.byte	0x1
	.value	0x554
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x21
	.long	.LASF328
	.byte	0x1
	.value	0x583
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x1690
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0x583
	.long	0x142c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0x1624
	.uleb128 0x24
	.long	.LASF295
	.byte	0x1
	.value	0x58a
	.long	0xeb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x28
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x1649
	.uleb128 0x24
	.long	.LASF298
	.byte	0x1
	.value	0x592
	.long	0xeb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x28
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0x166e
	.uleb128 0x24
	.long	.LASF299
	.byte	0x1
	.value	0x599
	.long	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x23
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x24
	.long	.LASF293
	.byte	0x1
	.value	0x5a0
	.long	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF329
	.byte	0x1
	.value	0x5b6
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x16be
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0x5b6
	.long	0x142c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x29
	.long	.LASF335
	.byte	0x1
	.value	0x5d2
	.long	0x142c
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x172f
	.uleb128 0x27
	.long	.LASF330
	.byte	0x1
	.value	0x5d2
	.long	0x142c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.string	"cxt"
	.byte	0x1
	.value	0x5d4
	.long	0x142c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x24
	.long	.LASF320
	.byte	0x1
	.value	0x5da
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF318
	.byte	0x1
	.value	0x5da
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF331
	.byte	0x1
	.value	0x5e9
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x176c
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0x5e9
	.long	0x142c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF317
	.byte	0x1
	.value	0x5eb
	.long	0x142c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF332
	.byte	0x1
	.value	0x601
	.long	0x57
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x179e
	.uleb128 0x22
	.string	"cxt"
	.byte	0x1
	.value	0x603
	.long	0x142c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF333
	.byte	0x1
	.value	0x60d
	.long	0x57
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x17d0
	.uleb128 0x22
	.string	"cxt"
	.byte	0x1
	.value	0x60f
	.long	0x142c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF334
	.byte	0x1
	.value	0x61c
	.long	0x57
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x1802
	.uleb128 0x22
	.string	"cxt"
	.byte	0x1
	.value	0x61e
	.long	0x142c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.long	.LASF336
	.byte	0x1
	.value	0x62f
	.long	0xd44
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x186e
	.uleb128 0x27
	.long	.LASF337
	.byte	0x1
	.value	0x631
	.long	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"pkg"
	.byte	0x1
	.value	0x632
	.long	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF338
	.byte	0x1
	.value	0x633
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.string	"gv"
	.byte	0x1
	.value	0x635
	.long	0xeb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.string	"sv"
	.byte	0x1
	.value	0x636
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x21
	.long	.LASF339
	.byte	0x1
	.value	0x655
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x18ba
	.uleb128 0x27
	.long	.LASF337
	.byte	0x1
	.value	0x657
	.long	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"pkg"
	.byte	0x1
	.value	0x658
	.long	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF338
	.byte	0x1
	.value	0x659
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x21
	.long	.LASF340
	.byte	0x1
	.value	0x664
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x1906
	.uleb128 0x27
	.long	.LASF337
	.byte	0x1
	.value	0x666
	.long	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"pkg"
	.byte	0x1
	.value	0x667
	.long	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	.LASF338
	.byte	0x1
	.value	0x668
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x29
	.long	.LASF341
	.byte	0x1
	.value	0x675
	.long	0xd44
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x1973
	.uleb128 0x27
	.long	.LASF337
	.byte	0x1
	.value	0x677
	.long	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"pkg"
	.byte	0x1
	.value	0x678
	.long	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF338
	.byte	0x1
	.value	0x679
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.string	"svh"
	.byte	0x1
	.value	0x67b
	.long	0xf2a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.string	"sv"
	.byte	0x1
	.value	0x67c
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.long	.LASF342
	.byte	0x1
	.value	0x69f
	.long	0xd44
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a4c
	.uleb128 0x26
	.string	"obj"
	.byte	0x1
	.value	0x6a1
	.long	0xd44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.long	.LASF299
	.byte	0x1
	.value	0x6a2
	.long	0xd44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.long	.LASF343
	.byte	0x1
	.value	0x6a3
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x26
	.string	"av"
	.byte	0x1
	.value	0x6a4
	.long	0xeb7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x27
	.long	.LASF177
	.byte	0x1
	.value	0x6a5
	.long	0xd11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x22
	.string	"sp"
	.byte	0x1
	.value	0x6a7
	.long	0xf2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF344
	.byte	0x1
	.value	0x6a8
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x22
	.string	"sv"
	.byte	0x1
	.value	0x6a9
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x22
	.string	"ary"
	.byte	0x1
	.value	0x6b4
	.long	0xf2a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.string	"cnt"
	.byte	0x1
	.value	0x6b5
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.value	0x6b6
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF345
	.byte	0x1
	.value	0x6d8
	.long	0xeb7
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x1af6
	.uleb128 0x26
	.string	"obj"
	.byte	0x1
	.value	0x6da
	.long	0xd44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.long	.LASF299
	.byte	0x1
	.value	0x6db
	.long	0xd44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.long	.LASF343
	.byte	0x1
	.value	0x6dc
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x22
	.string	"sp"
	.byte	0x1
	.value	0x6de
	.long	0xf2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF344
	.byte	0x1
	.value	0x6df
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x22
	.string	"av"
	.byte	0x1
	.value	0x6e0
	.long	0xeb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.value	0x6e1
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x22
	.string	"sv"
	.byte	0x1
	.value	0x6f3
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF346
	.byte	0x1
	.value	0x706
	.long	0x57
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b73
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0x708
	.long	0x142c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF347
	.byte	0x1
	.value	0x709
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.string	"len"
	.byte	0x1
	.value	0x70a
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x27
	.long	.LASF301
	.byte	0x1
	.value	0x70b
	.long	0xdb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.string	"svh"
	.byte	0x1
	.value	0x70d
	.long	0xf2a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF297
	.byte	0x1
	.value	0x70e
	.long	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x29
	.long	.LASF348
	.byte	0x1
	.value	0x733
	.long	0x57
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c60
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0x733
	.long	0x142c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.string	"sv"
	.byte	0x1
	.value	0x733
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.long	.Ldebug_ranges0+0
	.long	0x1c2f
	.uleb128 0x24
	.long	.LASF349
	.byte	0x1
	.value	0x73e
	.long	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.long	0x1bfe
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x741
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x741
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x23
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x743
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x743
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x23
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x745
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x745
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF351
	.byte	0x1
	.value	0x755
	.long	0x57
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x2380
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0x755
	.long	0x142c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x26
	.string	"sv"
	.byte	0x1
	.value	0x755
	.long	0xd44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x22
	.string	"iv"
	.byte	0x1
	.value	0x757
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.string	"pv"
	.byte	0x1
	.value	0x758
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.string	"len"
	.byte	0x1
	.value	0x759
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF177
	.byte	0x1
	.value	0x75a
	.long	0xd1c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x2c
	.long	.LASF352
	.byte	0x1
	.value	0x80b
	.quad	.L122
	.uleb128 0x2c
	.long	.LASF353
	.byte	0x1
	.value	0x804
	.quad	.L124
	.uleb128 0x2c
	.long	.LASF354
	.byte	0x1
	.value	0x7ab
	.quad	.L128
	.uleb128 0x28
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.long	0x1d42
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x767
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x767
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.byte	0
	.uleb128 0x28
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.long	0x1d78
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x76a
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x76a
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.byte	0
	.uleb128 0x28
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.long	0x1dae
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x791
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x791
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.byte	0
	.uleb128 0x28
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.long	0x1de4
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x794
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x794
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.byte	0
	.uleb128 0x2b
	.long	.Ldebug_ranges0+0x30
	.long	0x1e66
	.uleb128 0x22
	.string	"siv"
	.byte	0x1
	.value	0x7be
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -279
	.uleb128 0x28
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.long	0x1e33
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x7bf
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x7bf
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.byte	0
	.uleb128 0x23
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x7c0
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x7c0
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.byte	0
	.byte	0
	.uleb128 0x28
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.long	0x1ef3
	.uleb128 0x22
	.string	"niv"
	.byte	0x1
	.value	0x7c7
	.long	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.long	0x1ec0
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x7d9
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x7d9
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.byte	0
	.uleb128 0x23
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x7da
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x7da
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.byte	0
	.byte	0
	.uleb128 0x28
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.long	0x1f29
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x7dd
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x7dd
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.byte	0
	.uleb128 0x28
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.long	0x1f5f
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x7de
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x7de
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.byte	0
	.uleb128 0x28
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.long	0x1feb
	.uleb128 0x22
	.string	"nv"
	.byte	0x1
	.value	0x7e3
	.long	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.long	0x1fb8
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x7fc
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x7fc
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.byte	0
	.uleb128 0x23
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x7fd
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x7fd
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.byte	0
	.byte	0
	.uleb128 0x23
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.uleb128 0x24
	.long	.LASF355
	.byte	0x1
	.value	0x802
	.long	0xd11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x28
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.long	0x20d0
	.uleb128 0x24
	.long	.LASF356
	.byte	0x1
	.value	0x80f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -278
	.uleb128 0x28
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.long	0x2067
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x80f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x80f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.byte	0
	.uleb128 0x28
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.long	0x209d
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x80f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x80f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.byte	0
	.uleb128 0x23
	.quad	.LBB53
	.quad	.LBE53-.LBB53
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x80f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x80f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.byte	0
	.byte	0
	.uleb128 0x28
	.quad	.LBB54
	.quad	.LBE54-.LBB54
	.long	0x2106
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x80f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x80f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.byte	0
	.uleb128 0x28
	.quad	.LBB55
	.quad	.LBE55-.LBB55
	.long	0x215c
	.uleb128 0x22
	.string	"y"
	.byte	0x1
	.value	0x80f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x23
	.quad	.LBB57
	.quad	.LBE57-.LBB57
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x80f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x80f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.byte	0
	.byte	0
	.uleb128 0x28
	.quad	.LBB59
	.quad	.LBE59-.LBB59
	.long	0x2192
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x80f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x80f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.byte	0
	.uleb128 0x28
	.quad	.LBB61
	.quad	.LBE61-.LBB61
	.long	0x21c8
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x80f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x80f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.byte	0
	.uleb128 0x28
	.quad	.LBB62
	.quad	.LBE62-.LBB62
	.long	0x228c
	.uleb128 0x24
	.long	.LASF356
	.byte	0x1
	.value	0x811
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -277
	.uleb128 0x28
	.quad	.LBB63
	.quad	.LBE63-.LBB63
	.long	0x2223
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x811
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x811
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
	.uleb128 0x28
	.quad	.LBB64
	.quad	.LBE64-.LBB64
	.long	0x2259
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x811
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x811
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.byte	0
	.uleb128 0x23
	.quad	.LBB66
	.quad	.LBE66-.LBB66
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x811
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x811
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.byte	0
	.uleb128 0x28
	.quad	.LBB67
	.quad	.LBE67-.LBB67
	.long	0x22c2
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x811
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x811
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x28
	.quad	.LBB68
	.quad	.LBE68-.LBB68
	.long	0x2318
	.uleb128 0x22
	.string	"y"
	.byte	0x1
	.value	0x811
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x23
	.quad	.LBB70
	.quad	.LBE70-.LBB70
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x811
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x811
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.byte	0
	.uleb128 0x28
	.quad	.LBB72
	.quad	.LBE72-.LBB72
	.long	0x234e
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x811
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x811
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x23
	.quad	.LBB74
	.quad	.LBE74-.LBB74
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x811
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x811
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF357
	.byte	0x1
	.value	0x823
	.long	0x57
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x24e9
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0x823
	.long	0x142c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.string	"av"
	.byte	0x1
	.value	0x823
	.long	0xeb7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x22
	.string	"sav"
	.byte	0x1
	.value	0x825
	.long	0xf2a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.string	"len"
	.byte	0x1
	.value	0x826
	.long	0xd11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.value	0x827
	.long	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.string	"ret"
	.byte	0x1
	.value	0x828
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.quad	.LBB76
	.quad	.LBE76-.LBB76
	.long	0x2430
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x830
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x830
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x28
	.quad	.LBB77
	.quad	.LBE77-.LBB77
	.long	0x2484
	.uleb128 0x22
	.string	"y"
	.byte	0x1
	.value	0x831
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x23
	.quad	.LBB79
	.quad	.LBE79-.LBB79
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x831
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x831
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x28
	.quad	.LBB81
	.quad	.LBE81-.LBB81
	.long	0x24b8
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x831
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x831
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x23
	.quad	.LBB83
	.quad	.LBE83-.LBB83
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x83c
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x83c
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF358
	.byte	0x1
	.value	0x873
	.long	0x57
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a5b
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0x873
	.long	0x142c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x26
	.string	"hv"
	.byte	0x1
	.value	0x873
	.long	0xe7c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x22
	.string	"len"
	.byte	0x1
	.value	0x875
	.long	0xd11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.value	0x87b
	.long	0xd11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x22
	.string	"ret"
	.byte	0x1
	.value	0x87c
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x24
	.long	.LASF359
	.byte	0x1
	.value	0x87d
	.long	0xd11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x24
	.long	.LASF360
	.byte	0x1
	.value	0x87e
	.long	0xfa6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x24
	.long	.LASF361
	.byte	0x1
	.value	0x87f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x24
	.long	.LASF362
	.byte	0x1
	.value	0x884
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -273
	.uleb128 0x2d
	.string	"out"
	.byte	0x1
	.value	0x9ab
	.quad	.L320
	.uleb128 0x28
	.quad	.LBB85
	.quad	.LBE85-.LBB85
	.long	0x25de
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x893
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x893
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.byte	0
	.uleb128 0x28
	.quad	.LBB86
	.quad	.LBE86-.LBB86
	.long	0x2614
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x894
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x894
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.byte	0
	.uleb128 0x28
	.quad	.LBB87
	.quad	.LBE87-.LBB87
	.long	0x264a
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x896
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x896
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.byte	0
	.uleb128 0x28
	.quad	.LBB88
	.quad	.LBE88-.LBB88
	.long	0x26a0
	.uleb128 0x22
	.string	"y"
	.byte	0x1
	.value	0x898
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x23
	.quad	.LBB90
	.quad	.LBE90-.LBB90
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x898
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x898
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.byte	0
	.byte	0
	.uleb128 0x28
	.quad	.LBB92
	.quad	.LBE92-.LBB92
	.long	0x26d6
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x898
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x898
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.byte	0
	.uleb128 0x28
	.quad	.LBB93
	.quad	.LBE93-.LBB93
	.long	0x28e7
	.uleb128 0x22
	.string	"av"
	.byte	0x1
	.value	0x8ba
	.long	0xeb7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.quad	.LBB94
	.quad	.LBE94-.LBB94
	.long	0x272e
	.uleb128 0x22
	.string	"he"
	.byte	0x1
	.value	0x8c2
	.long	0xfa6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.string	"key"
	.byte	0x1
	.value	0x8c6
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x23
	.quad	.LBB95
	.quad	.LBE95-.LBB95
	.uleb128 0x24
	.long	.LASF363
	.byte	0x1
	.value	0x8ce
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x24
	.long	.LASF177
	.byte	0x1
	.value	0x8d0
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -275
	.uleb128 0x24
	.long	.LASF364
	.byte	0x1
	.value	0x8d1
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x24
	.long	.LASF365
	.byte	0x1
	.value	0x8d2
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x24
	.long	.LASF366
	.byte	0x1
	.value	0x8d3
	.long	0xd11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x22
	.string	"key"
	.byte	0x1
	.value	0x8d4
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.string	"he"
	.byte	0x1
	.value	0x8d8
	.long	0xfa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"val"
	.byte	0x1
	.value	0x8d9
	.long	0xd44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x28
	.quad	.LBB96
	.quad	.LBE96-.LBB96
	.long	0x27f1
	.uleb128 0x24
	.long	.LASF367
	.byte	0x1
	.value	0x914
	.long	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF368
	.byte	0x1
	.value	0x915
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.byte	0
	.uleb128 0x28
	.quad	.LBB97
	.quad	.LBE97-.LBB97
	.long	0x2827
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x92e
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x92e
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.byte	0
	.uleb128 0x28
	.quad	.LBB98
	.quad	.LBE98-.LBB98
	.long	0x287d
	.uleb128 0x22
	.string	"y"
	.byte	0x1
	.value	0x93a
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x23
	.quad	.LBB100
	.quad	.LBE100-.LBB100
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x93a
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x93a
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.byte	0
	.byte	0
	.uleb128 0x28
	.quad	.LBB102
	.quad	.LBE102-.LBB102
	.long	0x28b3
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x93a
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x93a
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.byte	0
	.uleb128 0x23
	.quad	.LBB104
	.quad	.LBE104-.LBB104
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x93c
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x93c
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.quad	.LBB105
	.quad	.LBE105-.LBB105
	.uleb128 0x22
	.string	"key"
	.byte	0x1
	.value	0x950
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x22
	.string	"len"
	.byte	0x1
	.value	0x951
	.long	0xd11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x24
	.long	.LASF177
	.byte	0x1
	.value	0x952
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -274
	.uleb128 0x22
	.string	"he"
	.byte	0x1
	.value	0x954
	.long	0xfa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.string	"val"
	.byte	0x1
	.value	0x958
	.long	0xd44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x24
	.long	.LASF369
	.byte	0x1
	.value	0x959
	.long	0xd44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x22
	.string	"hek"
	.byte	0x1
	.value	0x95a
	.long	0xfac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.quad	.LBB106
	.quad	.LBE106-.LBB106
	.long	0x299b
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x993
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x993
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.byte	0
	.uleb128 0x28
	.quad	.LBB107
	.quad	.LBE107-.LBB107
	.long	0x29f1
	.uleb128 0x22
	.string	"y"
	.byte	0x1
	.value	0x9a2
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x23
	.quad	.LBB109
	.quad	.LBE109-.LBB109
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x9a2
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x9a2
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.byte	0
	.byte	0
	.uleb128 0x28
	.quad	.LBB111
	.quad	.LBE111-.LBB111
	.long	0x2a27
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x9a2
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x9a2
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.byte	0
	.uleb128 0x23
	.quad	.LBB113
	.quad	.LBE113-.LBB113
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0x9a4
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0x9a4
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF370
	.byte	0x1
	.value	0x9ba
	.long	0x57
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ce2
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0x9ba
	.long	0x142c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x26
	.string	"cv"
	.byte	0x1
	.value	0x9ba
	.long	0xea5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x22
	.string	"sp"
	.byte	0x1
	.value	0x9c2
	.long	0xf2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.string	"len"
	.byte	0x1
	.value	0x9c3
	.long	0xd11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x24
	.long	.LASF344
	.byte	0x1
	.value	0x9c4
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x24
	.long	.LASF371
	.byte	0x1
	.value	0x9c4
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x24
	.long	.LASF372
	.byte	0x1
	.value	0x9c5
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF373
	.byte	0x1
	.value	0x9c5
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.quad	.LBB122
	.quad	.LBE122-.LBB122
	.long	0x2b2d
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xa06
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xa06
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
	.uleb128 0x28
	.quad	.LBB123
	.quad	.LBE123-.LBB123
	.long	0x2bf1
	.uleb128 0x24
	.long	.LASF356
	.byte	0x1
	.value	0xa0f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -129
	.uleb128 0x28
	.quad	.LBB124
	.quad	.LBE124-.LBB124
	.long	0x2b88
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xa0f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xa0f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.byte	0
	.uleb128 0x28
	.quad	.LBB125
	.quad	.LBE125-.LBB125
	.long	0x2bbe
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xa0f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xa0f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.uleb128 0x23
	.quad	.LBB127
	.quad	.LBE127-.LBB127
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xa0f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xa0f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.byte	0
	.uleb128 0x28
	.quad	.LBB128
	.quad	.LBE128-.LBB128
	.long	0x2c27
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xa0f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xa0f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x28
	.quad	.LBB129
	.quad	.LBE129-.LBB129
	.long	0x2c7d
	.uleb128 0x22
	.string	"y"
	.byte	0x1
	.value	0xa0f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x23
	.quad	.LBB131
	.quad	.LBE131-.LBB131
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xa0f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xa0f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.byte	0
	.uleb128 0x28
	.quad	.LBB133
	.quad	.LBE133-.LBB133
	.long	0x2cb1
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xa0f
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xa0f
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x23
	.quad	.LBB135
	.quad	.LBE135-.LBB135
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xa0f
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xa0f
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF374
	.byte	0x1
	.value	0xa22
	.long	0x57
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e07
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0xa22
	.long	0x142c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.string	"sv"
	.byte	0x1
	.value	0xa22
	.long	0xd44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x22
	.string	"mg"
	.byte	0x1
	.value	0xa24
	.long	0xe76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.string	"obj"
	.byte	0x1
	.value	0xa25
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.string	"ret"
	.byte	0x1
	.value	0xa26
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.string	"svt"
	.byte	0x1
	.value	0xa27
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x24
	.long	.LASF375
	.byte	0x1
	.value	0xa28
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -65
	.uleb128 0x28
	.quad	.LBB136
	.quad	.LBE136-.LBB136
	.long	0x2da2
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xa38
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xa38
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x28
	.quad	.LBB137
	.quad	.LBE137-.LBB137
	.long	0x2dd6
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xa3b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xa3b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x23
	.quad	.LBB138
	.quad	.LBE138-.LBB138
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xa3e
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xa3e
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF376
	.byte	0x1
	.value	0xa69
	.long	0x57
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f73
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0xa69
	.long	0x142c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.string	"sv"
	.byte	0x1
	.value	0xa69
	.long	0xd44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x22
	.string	"mg"
	.byte	0x1
	.value	0xa6b
	.long	0xe76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.string	"ret"
	.byte	0x1
	.value	0xa6c
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.quad	.LBB141
	.quad	.LBE141-.LBB141
	.long	0x2e99
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xa79
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xa79
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x23
	.quad	.LBB142
	.quad	.LBE142-.LBB142
	.uleb128 0x22
	.string	"idx"
	.byte	0x1
	.value	0xa84
	.long	0xd11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x28
	.quad	.LBB143
	.quad	.LBE143-.LBB143
	.long	0x2eee
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xa87
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xa87
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x28
	.quad	.LBB144
	.quad	.LBE144-.LBB144
	.long	0x2f41
	.uleb128 0x22
	.string	"y"
	.byte	0x1
	.value	0xa8f
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.quad	.LBB146
	.quad	.LBE146-.LBB146
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xa8f
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xa8f
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x23
	.quad	.LBB148
	.quad	.LBE148-.LBB148
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xa8f
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xa8f
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF377
	.byte	0x1
	.value	0xac4
	.long	0x57
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x37cc
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0xac6
	.long	0x142c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x26
	.string	"sv"
	.byte	0x1
	.value	0xac7
	.long	0xd44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x27
	.long	.LASF185
	.byte	0x1
	.value	0xac8
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -356
	.uleb128 0x26
	.string	"pkg"
	.byte	0x1
	.value	0xac9
	.long	0xe7c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x27
	.long	.LASF299
	.byte	0x1
	.value	0xaca
	.long	0xd44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x22
	.string	"len"
	.byte	0x1
	.value	0xacc
	.long	0xd11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x24
	.long	.LASF378
	.byte	0x1
	.value	0xacd
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.long	.LASF379
	.byte	0x1
	.value	0xace
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x24
	.long	.LASF380
	.byte	0x1
	.value	0xacf
	.long	0xd44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.string	"av"
	.byte	0x1
	.value	0xad0
	.long	0xeb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.string	"ary"
	.byte	0x1
	.value	0xad1
	.long	0xf2a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF344
	.byte	0x1
	.value	0xad2
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x24
	.long	.LASF177
	.byte	0x1
	.value	0xad3
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -335
	.uleb128 0x22
	.string	"pv"
	.byte	0x1
	.value	0xad4
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.value	0xad5
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -316
	.uleb128 0x24
	.long	.LASF381
	.byte	0x1
	.value	0xad6
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x24
	.long	.LASF382
	.byte	0x1
	.value	0xad7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x24
	.long	.LASF301
	.byte	0x1
	.value	0xad8
	.long	0xd11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -324
	.uleb128 0x22
	.string	"ret"
	.byte	0x1
	.value	0xad9
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x24
	.long	.LASF383
	.byte	0x1
	.value	0xada
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x24
	.long	.LASF375
	.byte	0x1
	.value	0xadb
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -334
	.uleb128 0x24
	.long	.LASF384
	.byte	0x1
	.value	0xadc
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -333
	.uleb128 0x2c
	.long	.LASF385
	.byte	0x1
	.value	0xb98
	.quad	.L525
	.uleb128 0x28
	.quad	.LBB151
	.quad	.LBE151-.LBB151
	.long	0x3225
	.uleb128 0x22
	.string	"svh"
	.byte	0x1
	.value	0xb5a
	.long	0xf2a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x22
	.string	"rsv"
	.byte	0x1
	.value	0xb5b
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.string	"xsv"
	.byte	0x1
	.value	0xb5c
	.long	0xd44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x24
	.long	.LASF386
	.byte	0x1
	.value	0xb5d
	.long	0xeb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.quad	.LBB153
	.quad	.LBE153-.LBB153
	.long	0x3186
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xb7b
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xb7b
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.byte	0
	.uleb128 0x28
	.quad	.LBB154
	.quad	.LBE154-.LBB154
	.long	0x31bc
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xb7c
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xb7c
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -284
	.byte	0
	.uleb128 0x28
	.quad	.LBB155
	.quad	.LBE155-.LBB155
	.long	0x31f2
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xb7e
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xb7e
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.byte	0
	.uleb128 0x23
	.quad	.LBB156
	.quad	.LBE156-.LBB156
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xb80
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xb80
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.byte	0
	.byte	0
	.uleb128 0x28
	.quad	.LBB158
	.quad	.LBE158-.LBB158
	.long	0x325b
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xbda
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xbda
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.byte	0
	.uleb128 0x28
	.quad	.LBB159
	.quad	.LBE159-.LBB159
	.long	0x3291
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xbdb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xbdb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.byte	0
	.uleb128 0x28
	.quad	.LBB160
	.quad	.LBE160-.LBB160
	.long	0x32c7
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xbdd
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xbdd
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.uleb128 0x28
	.quad	.LBB161
	.quad	.LBE161-.LBB161
	.long	0x32fd
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xbdf
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xbdf
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.byte	0
	.uleb128 0x28
	.quad	.LBB162
	.quad	.LBE162-.LBB162
	.long	0x3353
	.uleb128 0x22
	.string	"y"
	.byte	0x1
	.value	0xbe4
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.quad	.LBB164
	.quad	.LBE164-.LBB164
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xbe4
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xbe4
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.byte	0
	.uleb128 0x28
	.quad	.LBB166
	.quad	.LBE166-.LBB166
	.long	0x3389
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xbe4
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xbe4
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.uleb128 0x2b
	.long	.Ldebug_ranges0+0x60
	.long	0x33d5
	.uleb128 0x24
	.long	.LASF387
	.byte	0x1
	.value	0xbe6
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -332
	.uleb128 0x23
	.quad	.LBB168
	.quad	.LBE168-.LBB168
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xbe7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xbe7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.byte	0
	.byte	0
	.uleb128 0x28
	.quad	.LBB170
	.quad	.LBE170-.LBB170
	.long	0x342b
	.uleb128 0x22
	.string	"y"
	.byte	0x1
	.value	0xbeb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.quad	.LBB172
	.quad	.LBE172-.LBB172
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xbeb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xbeb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.byte	0
	.byte	0
	.uleb128 0x28
	.quad	.LBB174
	.quad	.LBE174-.LBB174
	.long	0x3461
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xbeb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xbeb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.uleb128 0x28
	.quad	.LBB175
	.quad	.LBE175-.LBB175
	.long	0x34b9
	.uleb128 0x24
	.long	.LASF356
	.byte	0x1
	.value	0xbed
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -331
	.uleb128 0x23
	.quad	.LBB176
	.quad	.LBE176-.LBB176
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xbee
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xbee
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.byte	0
	.byte	0
	.uleb128 0x28
	.quad	.LBB178
	.quad	.LBE178-.LBB178
	.long	0x34ef
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xbf0
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xbf0
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.uleb128 0x28
	.quad	.LBB179
	.quad	.LBE179-.LBB179
	.long	0x359d
	.uleb128 0x24
	.long	.LASF388
	.byte	0x1
	.value	0xbf5
	.long	0xd11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x28
	.quad	.LBB180
	.quad	.LBE180-.LBB180
	.long	0x356a
	.uleb128 0x22
	.string	"y"
	.byte	0x1
	.value	0xbf6
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.quad	.LBB182
	.quad	.LBE182-.LBB182
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xbf6
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xbf6
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.byte	0
	.uleb128 0x23
	.quad	.LBB184
	.quad	.LBE184-.LBB184
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xbf6
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xbf6
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.byte	0
	.uleb128 0x28
	.quad	.LBB185
	.quad	.LBE185-.LBB185
	.long	0x35f5
	.uleb128 0x24
	.long	.LASF356
	.byte	0x1
	.value	0xbf8
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -330
	.uleb128 0x23
	.quad	.LBB186
	.quad	.LBE186-.LBB186
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xbf9
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xbf9
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.byte	0
	.uleb128 0x28
	.quad	.LBB188
	.quad	.LBE188-.LBB188
	.long	0x362b
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xbfc
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xbfc
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x28
	.quad	.LBB189
	.quad	.LBE189-.LBB189
	.long	0x3789
	.uleb128 0x24
	.long	.LASF389
	.byte	0x1
	.value	0xc00
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x28
	.quad	.LBB190
	.quad	.LBE190-.LBB190
	.long	0x36a6
	.uleb128 0x22
	.string	"y"
	.byte	0x1
	.value	0xc02
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.quad	.LBB192
	.quad	.LBE192-.LBB192
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xc02
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xc02
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.byte	0
	.uleb128 0x28
	.quad	.LBB194
	.quad	.LBE194-.LBB194
	.long	0x36dc
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xc02
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xc02
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0x28
	.quad	.LBB195
	.quad	.LBE195-.LBB195
	.long	0x3734
	.uleb128 0x24
	.long	.LASF356
	.byte	0x1
	.value	0xc04
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -329
	.uleb128 0x23
	.quad	.LBB196
	.quad	.LBE196-.LBB196
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xc05
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xc05
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.byte	0
	.uleb128 0x23
	.quad	.LBB197
	.quad	.LBE197-.LBB197
	.uleb128 0x24
	.long	.LASF390
	.byte	0x1
	.value	0xc0e
	.long	0xd11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.quad	.LBB199
	.quad	.LBE199-.LBB199
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xc0f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xc0f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.quad	.LBB200
	.quad	.LBE200-.LBB200
	.uleb128 0x22
	.string	"mg"
	.byte	0x1
	.value	0xc23
	.long	0xe76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.quad	.LBB201
	.quad	.LBE201-.LBB201
	.uleb128 0x22
	.string	"svt"
	.byte	0x1
	.value	0xc26
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF391
	.byte	0x1
	.value	0xc52
	.long	0x57
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b62
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0xc54
	.long	0x142c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x26
	.string	"sv"
	.byte	0x1
	.value	0xc55
	.long	0xd44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x27
	.long	.LASF185
	.byte	0x1
	.value	0xc56
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x26
	.string	"pkg"
	.byte	0x1
	.value	0xc57
	.long	0xe7c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x24
	.long	.LASF299
	.byte	0x1
	.value	0xc59
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.string	"len"
	.byte	0x1
	.value	0xc5a
	.long	0xd11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x24
	.long	.LASF378
	.byte	0x1
	.value	0xc5b
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF301
	.byte	0x1
	.value	0xc5c
	.long	0xd11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x28
	.quad	.LBB203
	.quad	.LBE203-.LBB203
	.long	0x38a1
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xc7c
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xc7c
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.byte	0
	.uleb128 0x2b
	.long	.Ldebug_ranges0+0x90
	.long	0x38ed
	.uleb128 0x24
	.long	.LASF387
	.byte	0x1
	.value	0xc7e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x23
	.quad	.LBB205
	.quad	.LBE205-.LBB205
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xc7f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xc7f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
	.byte	0
	.uleb128 0x28
	.quad	.LBB207
	.quad	.LBE207-.LBB207
	.long	0x39d1
	.uleb128 0x24
	.long	.LASF392
	.byte	0x1
	.value	0xc81
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -135
	.uleb128 0x28
	.quad	.LBB208
	.quad	.LBE208-.LBB208
	.long	0x3948
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xc82
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xc82
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.byte	0
	.uleb128 0x28
	.quad	.LBB209
	.quad	.LBE209-.LBB209
	.long	0x399e
	.uleb128 0x22
	.string	"y"
	.byte	0x1
	.value	0xc83
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x23
	.quad	.LBB211
	.quad	.LBE211-.LBB211
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xc83
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xc83
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.byte	0
	.uleb128 0x23
	.quad	.LBB213
	.quad	.LBE213-.LBB213
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xc83
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xc83
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.byte	0
	.uleb128 0x28
	.quad	.LBB214
	.quad	.LBE214-.LBB214
	.long	0x3a07
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xc87
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xc87
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x2b
	.long	.Ldebug_ranges0+0xc0
	.long	0x3a53
	.uleb128 0x24
	.long	.LASF356
	.byte	0x1
	.value	0xc89
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -134
	.uleb128 0x23
	.quad	.LBB216
	.quad	.LBE216-.LBB216
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xc8a
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xc8a
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.byte	0
	.uleb128 0x28
	.quad	.LBB218
	.quad	.LBE218-.LBB218
	.long	0x3b31
	.uleb128 0x24
	.long	.LASF392
	.byte	0x1
	.value	0xc8c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -133
	.uleb128 0x28
	.quad	.LBB219
	.quad	.LBE219-.LBB219
	.long	0x3aac
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xc8d
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xc8d
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x28
	.quad	.LBB220
	.quad	.LBE220-.LBB220
	.long	0x3b00
	.uleb128 0x22
	.string	"y"
	.byte	0x1
	.value	0xc8e
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x23
	.quad	.LBB222
	.quad	.LBE222-.LBB222
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xc8e
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xc8e
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0x23
	.quad	.LBB224
	.quad	.LBE224-.LBB224
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xc8e
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xc8e
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x23
	.quad	.LBB226
	.quad	.LBE226-.LBB226
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xc90
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xc90
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF393
	.byte	0x1
	.value	0xca4
	.long	0x57
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d7a
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0xca4
	.long	0x142c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x26
	.string	"sv"
	.byte	0x1
	.value	0xca4
	.long	0xd44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x22
	.string	"len"
	.byte	0x1
	.value	0xca6
	.long	0xd11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.value	0xca7
	.long	0x3d7a
	.uleb128 0x9
	.byte	0x3
	.quad	buf.11132
	.uleb128 0x28
	.quad	.LBB228
	.quad	.LBE228-.LBB228
	.long	0x3c8d
	.uleb128 0x24
	.long	.LASF356
	.byte	0x1
	.value	0xcc1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -97
	.uleb128 0x28
	.quad	.LBB229
	.quad	.LBE229-.LBB229
	.long	0x3c24
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xcc1
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xcc1
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x28
	.quad	.LBB230
	.quad	.LBE230-.LBB230
	.long	0x3c5a
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xcc1
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xcc1
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x23
	.quad	.LBB232
	.quad	.LBE232-.LBB232
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xcc1
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xcc1
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.byte	0
	.uleb128 0x28
	.quad	.LBB233
	.quad	.LBE233-.LBB233
	.long	0x3cc1
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xcc1
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xcc1
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x28
	.quad	.LBB234
	.quad	.LBE234-.LBB234
	.long	0x3d15
	.uleb128 0x22
	.string	"y"
	.byte	0x1
	.value	0xcc1
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x23
	.quad	.LBB236
	.quad	.LBE236-.LBB236
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xcc1
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xcc1
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0x28
	.quad	.LBB238
	.quad	.LBE238-.LBB238
	.long	0x3d49
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xcc1
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xcc1
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x23
	.quad	.LBB240
	.quad	.LBE240-.LBB240
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xcc1
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xcc1
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x7f
	.long	0x3d8a
	.uleb128 0x16
	.long	0x65
	.byte	0x4f
	.byte	0
	.uleb128 0x29
	.long	.LASF394
	.byte	0x1
	.value	0xcd3
	.long	0x57
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x3dbb
	.uleb128 0x26
	.string	"sv"
	.byte	0x1
	.value	0xcd3
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.long	.LASF395
	.byte	0x1
	.value	0xd0f
	.long	0x57
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ef4
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0xd0f
	.long	0x142c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.string	"sv"
	.byte	0x1
	.value	0xd0f
	.long	0xd44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x22
	.string	"svh"
	.byte	0x1
	.value	0xd11
	.long	0xf2a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.string	"ret"
	.byte	0x1
	.value	0xd12
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF185
	.byte	0x1
	.value	0xd13
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x24
	.long	.LASF293
	.byte	0x1
	.value	0xd14
	.long	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF396
	.byte	0x1
	.value	0xd66
	.quad	.L780
	.uleb128 0x28
	.quad	.LBB241
	.quad	.LBE241-.LBB241
	.long	0x3ed2
	.uleb128 0x24
	.long	.LASF390
	.byte	0x1
	.value	0xd26
	.long	0xd11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x28
	.quad	.LBB242
	.quad	.LBE242-.LBB242
	.long	0x3ea1
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xd4a
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xd4a
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x23
	.quad	.LBB244
	.quad	.LBE244-.LBB244
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xd4b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xd4b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x23
	.quad	.LBB245
	.quad	.LBE245-.LBB245
	.uleb128 0x22
	.string	"pkg"
	.byte	0x1
	.value	0xd6b
	.long	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF397
	.byte	0x1
	.value	0xd82
	.long	0x57
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x3fa0
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0xd82
	.long	0x142c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF398
	.byte	0x1
	.value	0xd92
	.long	0x3fb0
	.uleb128 0x9
	.byte	0x3
	.quad	network_file_header.11199
	.uleb128 0x24
	.long	.LASF399
	.byte	0x1
	.value	0xd97
	.long	0x3fc5
	.uleb128 0x9
	.byte	0x3
	.quad	file_header.11200
	.uleb128 0x24
	.long	.LASF400
	.byte	0x1
	.value	0xdb1
	.long	0x3fca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LASF401
	.byte	0x1
	.value	0xdb2
	.long	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.quad	.LBB247
	.quad	.LBE247-.LBB247
	.uleb128 0x22
	.string	"nsz"
	.byte	0x1
	.value	0xdcc
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF350
	.byte	0x1
	.value	0xdcc
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x2d
	.long	0x3fb0
	.uleb128 0x16
	.long	0x65
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.long	0x3fa0
	.uleb128 0x15
	.long	0x2d
	.long	0x3fc5
	.uleb128 0x16
	.long	0x65
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.long	0x3fb5
	.uleb128 0x6
	.byte	0x8
	.long	0x3fd0
	.uleb128 0x7
	.long	0x2d
	.uleb128 0x29
	.long	.LASF402
	.byte	0x1
	.value	0xde2
	.long	0x57
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x405e
	.uleb128 0x26
	.string	"f"
	.byte	0x1
	.value	0xde4
	.long	0xee5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"sv"
	.byte	0x1
	.value	0xde5
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF292
	.byte	0x1
	.value	0xde6
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x27
	.long	.LASF324
	.byte	0x1
	.value	0xde7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.string	"res"
	.byte	0x1
	.value	0xde8
	.long	0xf2a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.string	"cxt"
	.byte	0x1
	.value	0xdea
	.long	0x142c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF403
	.byte	0x1
	.value	0xdeb
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2e
	.long	.LASF404
	.byte	0x1
	.value	0xe58
	.long	0x57
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x409c
	.uleb128 0x26
	.string	"f"
	.byte	0x1
	.value	0xe58
	.long	0xee5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"sv"
	.byte	0x1
	.value	0xe58
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2e
	.long	.LASF405
	.byte	0x1
	.value	0xe65
	.long	0x57
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x40da
	.uleb128 0x26
	.string	"f"
	.byte	0x1
	.value	0xe65
	.long	0xee5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"sv"
	.byte	0x1
	.value	0xe65
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x29
	.long	.LASF406
	.byte	0x1
	.value	0xe74
	.long	0xd44
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x410c
	.uleb128 0x22
	.string	"cxt"
	.byte	0x1
	.value	0xe76
	.long	0x142c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2e
	.long	.LASF407
	.byte	0x1
	.value	0xe81
	.long	0xd44
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x414c
	.uleb128 0x26
	.string	"sv"
	.byte	0x1
	.value	0xe81
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.string	"out"
	.byte	0x1
	.value	0xe83
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2e
	.long	.LASF408
	.byte	0x1
	.value	0xe93
	.long	0xd44
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x418c
	.uleb128 0x26
	.string	"sv"
	.byte	0x1
	.value	0xe93
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.string	"out"
	.byte	0x1
	.value	0xe95
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.long	.LASF409
	.byte	0x1
	.value	0xea9
	.long	0xd44
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x41cd
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0xea9
	.long	0x142c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LASF410
	.byte	0x1
	.value	0xea9
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x29
	.long	.LASF411
	.byte	0x1
	.value	0xec2
	.long	0xd44
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x4249
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0xec2
	.long	0x142c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF410
	.byte	0x1
	.value	0xec2
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.string	"idx"
	.byte	0x1
	.value	0xec4
	.long	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x24
	.long	.LASF378
	.byte	0x1
	.value	0xec5
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.string	"sva"
	.byte	0x1
	.value	0xec6
	.long	0xf2a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.string	"sv"
	.byte	0x1
	.value	0xec7
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.long	.LASF412
	.byte	0x1
	.value	0xeeb
	.long	0xd44
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x42cb
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0xeeb
	.long	0x142c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x27
	.long	.LASF410
	.byte	0x1
	.value	0xeeb
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x22
	.string	"len"
	.byte	0x1
	.value	0xeed
	.long	0xd11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x22
	.string	"sv"
	.byte	0x1
	.value	0xeee
	.long	0xd44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.value	0xeef
	.long	0x42cb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x24
	.long	.LASF378
	.byte	0x1
	.value	0xef0
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.uleb128 0x15
	.long	0x7f
	.long	0x42db
	.uleb128 0x16
	.long	0x65
	.byte	0x7f
	.byte	0
	.uleb128 0x29
	.long	.LASF413
	.byte	0x1
	.value	0xf2d
	.long	0xd44
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x450f
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0xf2d
	.long	0x142c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x27
	.long	.LASF410
	.byte	0x1
	.value	0xf2d
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x22
	.string	"len"
	.byte	0x1
	.value	0xf2f
	.long	0xd11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -316
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.value	0xf30
	.long	0x42cb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x24
	.long	.LASF378
	.byte	0x1
	.value	0xf31
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x24
	.long	.LASF177
	.byte	0x1
	.value	0xf32
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x24
	.long	.LASF379
	.byte	0x1
	.value	0xf33
	.long	0xd11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x24
	.long	.LASF414
	.byte	0x1
	.value	0xf34
	.long	0xd44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x24
	.long	.LASF389
	.byte	0x1
	.value	0xf35
	.long	0xd11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x22
	.string	"av"
	.byte	0x1
	.value	0xf36
	.long	0xeb7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x24
	.long	.LASF299
	.byte	0x1
	.value	0xf37
	.long	0xd44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x22
	.string	"sv"
	.byte	0x1
	.value	0xf38
	.long	0xd44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x22
	.string	"rv"
	.byte	0x1
	.value	0xf39
	.long	0xd44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x24
	.long	.LASF382
	.byte	0x1
	.value	0xf3a
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x24
	.long	.LASF383
	.byte	0x1
	.value	0xf3b
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x24
	.long	.LASF375
	.byte	0x1
	.value	0xf3c
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -317
	.uleb128 0x24
	.long	.LASF415
	.byte	0x1
	.value	0xf3d
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x28
	.quad	.LBB256
	.quad	.LBE256-.LBB256
	.long	0x4440
	.uleb128 0x22
	.string	"sva"
	.byte	0x1
	.value	0xf8f
	.long	0xf2a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x22
	.string	"idx"
	.byte	0x1
	.value	0xf90
	.long	0xd11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.byte	0
	.uleb128 0x28
	.quad	.LBB262
	.quad	.LBE262-.LBB262
	.long	0x44b6
	.uleb128 0x22
	.string	"ary"
	.byte	0x1
	.value	0xff8
	.long	0xf2a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.value	0xff9
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x23
	.quad	.LBB263
	.quad	.LBE263-.LBB263
	.uleb128 0x22
	.string	"tag"
	.byte	0x1
	.value	0xffb
	.long	0xd11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x22
	.string	"svh"
	.byte	0x1
	.value	0xffc
	.long	0xf2a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x22
	.string	"xsv"
	.byte	0x1
	.value	0xffd
	.long	0xd44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.byte	0
	.byte	0
	.uleb128 0x28
	.quad	.LBB265
	.quad	.LBE265-.LBB265
	.long	0x44ec
	.uleb128 0x24
	.long	.LASF380
	.byte	0x1
	.value	0x1016
	.long	0xd44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x24
	.long	.LASF349
	.byte	0x1
	.value	0x1016
	.long	0xe7c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.byte	0
	.uleb128 0x23
	.quad	.LBB266
	.quad	.LBE266-.LBB266
	.uleb128 0x22
	.string	"psv"
	.byte	0x1
	.value	0x1022
	.long	0xd44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF416
	.byte	0x1
	.value	0x10a5
	.long	0xd44
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x459c
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0x10a5
	.long	0x142c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF410
	.byte	0x1
	.value	0x10a5
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.string	"rv"
	.byte	0x1
	.value	0x10a7
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"sv"
	.byte	0x1
	.value	0x10a8
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.quad	.LBB270
	.quad	.LBE270-.LBB270
	.uleb128 0x24
	.long	.LASF380
	.byte	0x1
	.value	0x10b6
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LASF349
	.byte	0x1
	.value	0x10b6
	.long	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF417
	.byte	0x1
	.value	0x10e1
	.long	0xd44
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x4671
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0x10e1
	.long	0x142c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x27
	.long	.LASF410
	.byte	0x1
	.value	0x10e1
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x22
	.string	"rv"
	.byte	0x1
	.value	0x10e3
	.long	0xd44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x22
	.string	"sv"
	.byte	0x1
	.value	0x10e4
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF349
	.byte	0x1
	.value	0x10e5
	.long	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.quad	.LBB272
	.quad	.LBE272-.LBB272
	.long	0x4640
	.uleb128 0x24
	.long	.LASF380
	.byte	0x1
	.value	0x10ee
	.long	0xd44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.long	.LASF349
	.byte	0x1
	.value	0x10ee
	.long	0xe7c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x23
	.quad	.LBB274
	.quad	.LBE274-.LBB274
	.uleb128 0x22
	.string	"psv"
	.byte	0x1
	.value	0x1107
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF418
	.byte	0x1
	.value	0x1108
	.long	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF419
	.byte	0x1
	.value	0x1126
	.long	0xd44
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x46fe
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0x1126
	.long	0x142c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF410
	.byte	0x1
	.value	0x1126
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.string	"tv"
	.byte	0x1
	.value	0x1128
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"sv"
	.byte	0x1
	.value	0x1129
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.quad	.LBB277
	.quad	.LBE277-.LBB277
	.uleb128 0x24
	.long	.LASF380
	.byte	0x1
	.value	0x112e
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LASF349
	.byte	0x1
	.value	0x112e
	.long	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF420
	.byte	0x1
	.value	0x1143
	.long	0xd44
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x478b
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0x1143
	.long	0x142c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF410
	.byte	0x1
	.value	0x1143
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.string	"tv"
	.byte	0x1
	.value	0x1145
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"sv"
	.byte	0x1
	.value	0x1146
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.quad	.LBB279
	.quad	.LBE279-.LBB279
	.uleb128 0x24
	.long	.LASF380
	.byte	0x1
	.value	0x114b
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LASF349
	.byte	0x1
	.value	0x114b
	.long	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF421
	.byte	0x1
	.value	0x115f
	.long	0xd44
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x4829
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0x115f
	.long	0x142c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.long	.LASF410
	.byte	0x1
	.value	0x115f
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x22
	.string	"tv"
	.byte	0x1
	.value	0x1161
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"sv"
	.byte	0x1
	.value	0x1162
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.string	"obj"
	.byte	0x1
	.value	0x1162
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.quad	.LBB281
	.quad	.LBE281-.LBB281
	.uleb128 0x24
	.long	.LASF380
	.byte	0x1
	.value	0x1167
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LASF349
	.byte	0x1
	.value	0x1167
	.long	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF422
	.byte	0x1
	.value	0x1183
	.long	0xd44
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x48c7
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0x1183
	.long	0x142c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.long	.LASF410
	.byte	0x1
	.value	0x1183
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x22
	.string	"tv"
	.byte	0x1
	.value	0x1185
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.string	"sv"
	.byte	0x1
	.value	0x1186
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.string	"key"
	.byte	0x1
	.value	0x1187
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.quad	.LBB283
	.quad	.LBE283-.LBB283
	.uleb128 0x24
	.long	.LASF380
	.byte	0x1
	.value	0x118c
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF349
	.byte	0x1
	.value	0x118c
	.long	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF423
	.byte	0x1
	.value	0x11a3
	.long	0xd44
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x4965
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0x11a3
	.long	0x142c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.long	.LASF410
	.byte	0x1
	.value	0x11a3
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x22
	.string	"tv"
	.byte	0x1
	.value	0x11a5
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"sv"
	.byte	0x1
	.value	0x11a6
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.string	"idx"
	.byte	0x1
	.value	0x11a7
	.long	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x23
	.quad	.LBB285
	.quad	.LBE285-.LBB285
	.uleb128 0x24
	.long	.LASF380
	.byte	0x1
	.value	0x11ac
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LASF349
	.byte	0x1
	.value	0x11ac
	.long	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF424
	.byte	0x1
	.value	0x11c4
	.long	0xd44
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x49f3
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0x11c4
	.long	0x142c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF410
	.byte	0x1
	.value	0x11c4
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.string	"len"
	.byte	0x1
	.value	0x11c6
	.long	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x22
	.string	"sv"
	.byte	0x1
	.value	0x11c7
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.quad	.LBB289
	.quad	.LBE289-.LBB289
	.uleb128 0x24
	.long	.LASF380
	.byte	0x1
	.value	0x11d1
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF349
	.byte	0x1
	.value	0x11d1
	.long	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF425
	.byte	0x1
	.value	0x11f2
	.long	0xd44
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a81
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0x11f2
	.long	0x142c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF410
	.byte	0x1
	.value	0x11f2
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.string	"len"
	.byte	0x1
	.value	0x11f4
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x22
	.string	"sv"
	.byte	0x1
	.value	0x11f5
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.quad	.LBB291
	.quad	.LBE291-.LBB291
	.uleb128 0x24
	.long	.LASF380
	.byte	0x1
	.value	0x11ff
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF349
	.byte	0x1
	.value	0x11ff
	.long	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF426
	.byte	0x1
	.value	0x122d
	.long	0xd44
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ad0
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0x122d
	.long	0x142c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF410
	.byte	0x1
	.value	0x122d
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"sv"
	.byte	0x1
	.value	0x122f
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.long	.LASF427
	.byte	0x1
	.value	0x124a
	.long	0xd44
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b1f
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0x124a
	.long	0x142c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF410
	.byte	0x1
	.value	0x124a
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"sv"
	.byte	0x1
	.value	0x124c
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.long	.LASF428
	.byte	0x1
	.value	0x1266
	.long	0xd44
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x4bac
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0x1266
	.long	0x142c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF410
	.byte	0x1
	.value	0x1266
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.string	"sv"
	.byte	0x1
	.value	0x1268
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.string	"iv"
	.byte	0x1
	.value	0x1269
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.quad	.LBB293
	.quad	.LBE293-.LBB293
	.uleb128 0x24
	.long	.LASF380
	.byte	0x1
	.value	0x126f
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF349
	.byte	0x1
	.value	0x126f
	.long	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF429
	.byte	0x1
	.value	0x127d
	.long	0xd44
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x4c39
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0x127d
	.long	0x142c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF410
	.byte	0x1
	.value	0x127d
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.string	"sv"
	.byte	0x1
	.value	0x127f
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.string	"iv"
	.byte	0x1
	.value	0x1280
	.long	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.quad	.LBB295
	.quad	.LBE295-.LBB295
	.uleb128 0x24
	.long	.LASF380
	.byte	0x1
	.value	0x128c
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF349
	.byte	0x1
	.value	0x128c
	.long	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF430
	.byte	0x1
	.value	0x1299
	.long	0xd44
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x4cc6
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0x1299
	.long	0x142c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF410
	.byte	0x1
	.value	0x1299
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.string	"sv"
	.byte	0x1
	.value	0x129b
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.string	"nv"
	.byte	0x1
	.value	0x129c
	.long	0xdb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.quad	.LBB297
	.quad	.LBE297-.LBB297
	.uleb128 0x24
	.long	.LASF380
	.byte	0x1
	.value	0x12a2
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF349
	.byte	0x1
	.value	0x12a2
	.long	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF431
	.byte	0x1
	.value	0x12b0
	.long	0xd44
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x4d63
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0x12b0
	.long	0x142c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF410
	.byte	0x1
	.value	0x12b0
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.string	"sv"
	.byte	0x1
	.value	0x12b2
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.string	"siv"
	.byte	0x1
	.value	0x12b3
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x22
	.string	"tmp"
	.byte	0x1
	.value	0x12b4
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0x23
	.quad	.LBB299
	.quad	.LBE299-.LBB299
	.uleb128 0x24
	.long	.LASF380
	.byte	0x1
	.value	0x12bc
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF349
	.byte	0x1
	.value	0x12bc
	.long	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF432
	.byte	0x1
	.value	0x12c9
	.long	0xd44
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x4de2
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0x12c9
	.long	0x142c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF410
	.byte	0x1
	.value	0x12c9
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.string	"sv"
	.byte	0x1
	.value	0x12cb
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.quad	.LBB301
	.quad	.LBE301-.LBB301
	.uleb128 0x24
	.long	.LASF380
	.byte	0x1
	.value	0x12d0
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF349
	.byte	0x1
	.value	0x12d0
	.long	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF433
	.byte	0x1
	.value	0x12da
	.long	0xd44
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e61
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0x12da
	.long	0x142c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF410
	.byte	0x1
	.value	0x12da
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.string	"sv"
	.byte	0x1
	.value	0x12dc
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.quad	.LBB303
	.quad	.LBE303-.LBB303
	.uleb128 0x24
	.long	.LASF380
	.byte	0x1
	.value	0x12e6
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF349
	.byte	0x1
	.value	0x12e6
	.long	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF434
	.byte	0x1
	.value	0x12ef
	.long	0xd44
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ee0
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0x12ef
	.long	0x142c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF410
	.byte	0x1
	.value	0x12ef
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.string	"sv"
	.byte	0x1
	.value	0x12f1
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.quad	.LBB305
	.quad	.LBE305-.LBB305
	.uleb128 0x24
	.long	.LASF380
	.byte	0x1
	.value	0x12f5
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF349
	.byte	0x1
	.value	0x12f5
	.long	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF435
	.byte	0x1
	.value	0x12fe
	.long	0xd44
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x4f5f
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0x12fe
	.long	0x142c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF410
	.byte	0x1
	.value	0x12fe
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.string	"sv"
	.byte	0x1
	.value	0x1300
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.quad	.LBB307
	.quad	.LBE307-.LBB307
	.uleb128 0x24
	.long	.LASF380
	.byte	0x1
	.value	0x1304
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF349
	.byte	0x1
	.value	0x1304
	.long	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF436
	.byte	0x1
	.value	0x1311
	.long	0xd44
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x500a
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0x1311
	.long	0x142c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.long	.LASF410
	.byte	0x1
	.value	0x1311
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x22
	.string	"len"
	.byte	0x1
	.value	0x1313
	.long	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.value	0x1314
	.long	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x22
	.string	"av"
	.byte	0x1
	.value	0x1315
	.long	0xeb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"sv"
	.byte	0x1
	.value	0x1316
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.quad	.LBB310
	.quad	.LBE310-.LBB310
	.uleb128 0x24
	.long	.LASF380
	.byte	0x1
	.value	0x1321
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LASF349
	.byte	0x1
	.value	0x1321
	.long	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF437
	.byte	0x1
	.value	0x1344
	.long	0xd44
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x50c4
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0x1344
	.long	0x142c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.long	.LASF410
	.byte	0x1
	.value	0x1344
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x22
	.string	"len"
	.byte	0x1
	.value	0x1346
	.long	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x24
	.long	.LASF438
	.byte	0x1
	.value	0x1347
	.long	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.value	0x1348
	.long	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x22
	.string	"hv"
	.byte	0x1
	.value	0x1349
	.long	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"sv"
	.byte	0x1
	.value	0x134a
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.quad	.LBB313
	.quad	.LBE313-.LBB313
	.uleb128 0x24
	.long	.LASF380
	.byte	0x1
	.value	0x1355
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LASF349
	.byte	0x1
	.value	0x1355
	.long	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF439
	.byte	0x1
	.value	0x138e
	.long	0xd44
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x51e6
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0x138e
	.long	0x142c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.long	.LASF410
	.byte	0x1
	.value	0x138e
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x22
	.string	"len"
	.byte	0x1
	.value	0x1390
	.long	0xd11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.long	.LASF438
	.byte	0x1
	.value	0x1391
	.long	0xd11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.value	0x1392
	.long	0xd11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.string	"hv"
	.byte	0x1
	.value	0x1393
	.long	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"sv"
	.byte	0x1
	.value	0x1394
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF362
	.byte	0x1
	.value	0x1395
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x28
	.quad	.LBB317
	.quad	.LBE317-.LBB317
	.long	0x5194
	.uleb128 0x24
	.long	.LASF380
	.byte	0x1
	.value	0x13ab
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LASF349
	.byte	0x1
	.value	0x13ab
	.long	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x23
	.quad	.LBB318
	.quad	.LBE318-.LBB318
	.uleb128 0x24
	.long	.LASF177
	.byte	0x1
	.value	0x13b5
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF440
	.byte	0x1
	.value	0x13b6
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x23
	.quad	.LBB319
	.quad	.LBE319-.LBB319
	.uleb128 0x24
	.long	.LASF441
	.byte	0x1
	.value	0x13cb
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF442
	.byte	0x1
	.value	0x1416
	.long	0xd44
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x52f8
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0x1416
	.long	0x142c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x27
	.long	.LASF410
	.byte	0x1
	.value	0x1416
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x22
	.string	"sp"
	.byte	0x1
	.value	0x141b
	.long	0xf2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF185
	.byte	0x1
	.value	0x141c
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x24
	.long	.LASF344
	.byte	0x1
	.value	0x141c
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x24
	.long	.LASF300
	.byte	0x1
	.value	0x141c
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x22
	.string	"cv"
	.byte	0x1
	.value	0x141d
	.long	0xd44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x22
	.string	"sv"
	.byte	0x1
	.value	0x141e
	.long	0xd44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.long	.LASF372
	.byte	0x1
	.value	0x141e
	.long	0xd44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.string	"sub"
	.byte	0x1
	.value	0x141e
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.quad	.LBB322
	.quad	.LBE322-.LBB322
	.long	0x52d6
	.uleb128 0x24
	.long	.LASF380
	.byte	0x1
	.value	0x142b
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF349
	.byte	0x1
	.value	0x142b
	.long	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x23
	.quad	.LBB325
	.quad	.LBE325-.LBB325
	.uleb128 0x24
	.long	.LASF443
	.byte	0x1
	.value	0x1461
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF444
	.byte	0x1
	.value	0x148f
	.long	0xd44
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x537e
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0x148f
	.long	0x142c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF410
	.byte	0x1
	.value	0x148f
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.string	"len"
	.byte	0x1
	.value	0x1491
	.long	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.value	0x1492
	.long	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.string	"av"
	.byte	0x1
	.value	0x1493
	.long	0xeb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.string	"sv"
	.byte	0x1
	.value	0x1494
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.string	"c"
	.byte	0x1
	.value	0x1495
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x29
	.long	.LASF445
	.byte	0x1
	.value	0x14cb
	.long	0xd44
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x5429
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0x14cb
	.long	0x142c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF410
	.byte	0x1
	.value	0x14cb
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.string	"len"
	.byte	0x1
	.value	0x14cd
	.long	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF438
	.byte	0x1
	.value	0x14ce
	.long	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.value	0x14cf
	.long	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.string	"hv"
	.byte	0x1
	.value	0x14d0
	.long	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.string	"sv"
	.byte	0x1
	.value	0x14d1
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.string	"c"
	.byte	0x1
	.value	0x14d2
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.long	.LASF446
	.byte	0x1
	.value	0x14d3
	.long	0xd44
	.uleb128 0x9
	.byte	0x3
	.quad	sv_h_undef.11549
	.byte	0
	.uleb128 0x29
	.long	.LASF447
	.byte	0x1
	.value	0x152c
	.long	0xd44
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x5532
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0x152c
	.long	0x142c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.value	0x1536
	.long	0x5532
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x24
	.long	.LASF448
	.byte	0x1
	.value	0x1537
	.long	0x5543
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x22
	.string	"c"
	.byte	0x1
	.value	0x1538
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -356
	.uleb128 0x24
	.long	.LASF401
	.byte	0x1
	.value	0x1539
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -332
	.uleb128 0x24
	.long	.LASF449
	.byte	0x1
	.value	0x153a
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x24
	.long	.LASF450
	.byte	0x1
	.value	0x153b
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x24
	.long	.LASF451
	.byte	0x1
	.value	0x153c
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -340
	.uleb128 0x24
	.long	.LASF452
	.byte	0x1
	.value	0x153d
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0x28
	.quad	.LBB336
	.quad	.LBE336-.LBB336
	.long	0x550f
	.uleb128 0x22
	.string	"len"
	.byte	0x1
	.value	0x1548
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x24
	.long	.LASF453
	.byte	0x1
	.value	0x1549
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.byte	0
	.uleb128 0x23
	.quad	.LBB338
	.quad	.LBE338-.LBB338
	.uleb128 0x24
	.long	.LASF454
	.byte	0x1
	.value	0x1588
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x2d
	.long	0x5543
	.uleb128 0x2f
	.long	0x65
	.value	0x102
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2d
	.uleb128 0x29
	.long	.LASF455
	.byte	0x1
	.value	0x15db
	.long	0xd44
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x56aa
	.uleb128 0x26
	.string	"cxt"
	.byte	0x1
	.value	0x15db
	.long	0x142c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.long	.LASF410
	.byte	0x1
	.value	0x15db
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x24
	.long	.LASF185
	.byte	0x1
	.value	0x15dd
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.string	"svh"
	.byte	0x1
	.value	0x15de
	.long	0xf2a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"sv"
	.byte	0x1
	.value	0x15df
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF456
	.byte	0x1
	.value	0x1642
	.quad	.L1469
	.uleb128 0x28
	.quad	.LBB345
	.quad	.LBE345-.LBB345
	.long	0x5633
	.uleb128 0x22
	.string	"tag"
	.byte	0x1
	.value	0x15ee
	.long	0x1218
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.quad	.LBB346
	.quad	.LBE346-.LBB346
	.long	0x5611
	.uleb128 0x24
	.long	.LASF457
	.byte	0x1
	.value	0x15f0
	.long	0xd11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x23
	.quad	.LBB347
	.quad	.LBE347-.LBB347
	.uleb128 0x24
	.long	.LASF458
	.byte	0x1
	.value	0x15f8
	.long	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0x28
	.quad	.LBB350
	.quad	.LBE350-.LBB350
	.long	0x5658
	.uleb128 0x22
	.string	"tag"
	.byte	0x1
	.value	0x1629
	.long	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x23
	.quad	.LBB353
	.quad	.LBE353-.LBB353
	.uleb128 0x22
	.string	"len"
	.byte	0x1
	.value	0x165a
	.long	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.quad	.LBB355
	.quad	.LBE355-.LBB355
	.uleb128 0x24
	.long	.LASF380
	.byte	0x1
	.value	0x166a
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF349
	.byte	0x1
	.value	0x166a
	.long	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF459
	.byte	0x1
	.value	0x167a
	.long	0xd44
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x57f2
	.uleb128 0x26
	.string	"f"
	.byte	0x1
	.value	0x167c
	.long	0xee5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x26
	.string	"in"
	.byte	0x1
	.value	0x167d
	.long	0xd44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x27
	.long	.LASF292
	.byte	0x1
	.value	0x167e
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x22
	.string	"cxt"
	.byte	0x1
	.value	0x1680
	.long	0x142c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x22
	.string	"sv"
	.byte	0x1
	.value	0x1681
	.long	0xd44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.long	.LASF327
	.byte	0x1
	.value	0x1682
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x24
	.long	.LASF460
	.byte	0x1
	.value	0x1683
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x28
	.quad	.LBB356
	.quad	.LBE356-.LBB356
	.long	0x579d
	.uleb128 0x24
	.long	.LASF401
	.byte	0x1
	.value	0x16b6
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x24
	.long	.LASF461
	.byte	0x1
	.value	0x16b7
	.long	0xaa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x24
	.long	.LASF462
	.byte	0x1
	.value	0x16b8
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x24
	.long	.LASF463
	.byte	0x1
	.value	0x16be
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF368
	.byte	0x1
	.value	0x16bf
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -121
	.byte	0
	.uleb128 0x28
	.quad	.LBB363
	.quad	.LBE363-.LBB363
	.long	0x57c2
	.uleb128 0x22
	.string	"rv"
	.byte	0x1
	.value	0x1735
	.long	0xd44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x23
	.quad	.LBB364
	.quad	.LBE364-.LBB364
	.uleb128 0x24
	.long	.LASF349
	.byte	0x1
	.value	0x174f
	.long	0xe7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.string	"rv"
	.byte	0x1
	.value	0x1750
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF464
	.byte	0x1
	.value	0x1763
	.long	0xd44
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x5822
	.uleb128 0x26
	.string	"f"
	.byte	0x1
	.value	0x1763
	.long	0xee5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2e
	.long	.LASF465
	.byte	0x1
	.value	0x176e
	.long	0xd44
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x5853
	.uleb128 0x26
	.string	"sv"
	.byte	0x1
	.value	0x176e
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2e
	.long	.LASF466
	.byte	0x1
	.value	0x1781
	.long	0xd44
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x58e2
	.uleb128 0x26
	.string	"sv"
	.byte	0x1
	.value	0x1781
	.long	0xd44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.string	"cxt"
	.byte	0x1
	.value	0x1783
	.long	0x142c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF438
	.byte	0x1
	.value	0x1784
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.long	.LASF467
	.byte	0x1
	.value	0x1785
	.long	0x142c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.string	"out"
	.byte	0x1
	.value	0x1786
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.quad	.LBB365
	.quad	.LBE365-.LBB365
	.uleb128 0x22
	.string	"cxt"
	.byte	0x1
	.value	0x179f
	.long	0x142c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF470
	.byte	0x1
	.value	0x17d2
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x5978
	.uleb128 0x26
	.string	"cv"
	.byte	0x1
	.value	0x17d2
	.long	0xea5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.string	"sp"
	.byte	0x1
	.value	0x17d4
	.long	0xf2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF468
	.byte	0x1
	.value	0x17d4
	.long	0xf2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x22
	.string	"ax"
	.byte	0x1
	.value	0x17d4
	.long	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF469
	.byte	0x1
	.value	0x17d4
	.long	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x23
	.quad	.LBB367
	.quad	.LBE367-.LBB367
	.uleb128 0x24
	.long	.LASF320
	.byte	0x1
	.value	0x17d9
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"cxt"
	.byte	0x1
	.value	0x17db
	.long	0x142c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF471
	.byte	0x1
	.value	0x17eb
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0x59fe
	.uleb128 0x26
	.string	"cv"
	.byte	0x1
	.value	0x17eb
	.long	0xea5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.string	"sp"
	.byte	0x1
	.value	0x17ed
	.long	0xf2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x24
	.long	.LASF468
	.byte	0x1
	.value	0x17ed
	.long	0xf2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.string	"ax"
	.byte	0x1
	.value	0x17ed
	.long	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF469
	.byte	0x1
	.value	0x17ed
	.long	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.quad	.LBB368
	.quad	.LBE368-.LBB368
	.uleb128 0x24
	.long	.LASF472
	.byte	0x1
	.value	0x17f5
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF473
	.byte	0x1
	.value	0x17f9
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0x5ad8
	.uleb128 0x26
	.string	"cv"
	.byte	0x1
	.value	0x17f9
	.long	0xea5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x22
	.string	"sp"
	.byte	0x1
	.value	0x17fb
	.long	0xf2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF468
	.byte	0x1
	.value	0x17fb
	.long	0xf2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x22
	.string	"ax"
	.byte	0x1
	.value	0x17fb
	.long	0xd11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x24
	.long	.LASF469
	.byte	0x1
	.value	0x17fb
	.long	0xd11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.quad	.LBB369
	.quad	.LBE369-.LBB369
	.long	0x5ab6
	.uleb128 0x22
	.string	"f"
	.byte	0x1
	.value	0x17ff
	.long	0xee5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.string	"obj"
	.byte	0x1
	.value	0x1800
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF474
	.byte	0x1
	.value	0x1801
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x24
	.long	.LASF475
	.byte	0x1
	.value	0x1802
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x23
	.quad	.LBB372
	.quad	.LBE372-.LBB372
	.uleb128 0x24
	.long	.LASF472
	.byte	0x1
	.value	0x1808
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF476
	.byte	0x1
	.value	0x180c
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.long	0x5bb2
	.uleb128 0x26
	.string	"cv"
	.byte	0x1
	.value	0x180c
	.long	0xea5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x22
	.string	"sp"
	.byte	0x1
	.value	0x180e
	.long	0xf2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF468
	.byte	0x1
	.value	0x180e
	.long	0xf2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x22
	.string	"ax"
	.byte	0x1
	.value	0x180e
	.long	0xd11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x24
	.long	.LASF469
	.byte	0x1
	.value	0x180e
	.long	0xd11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.quad	.LBB373
	.quad	.LBE373-.LBB373
	.long	0x5b90
	.uleb128 0x22
	.string	"f"
	.byte	0x1
	.value	0x1812
	.long	0xee5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.string	"obj"
	.byte	0x1
	.value	0x1813
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF474
	.byte	0x1
	.value	0x1814
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x24
	.long	.LASF475
	.byte	0x1
	.value	0x1815
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x23
	.quad	.LBB376
	.quad	.LBE376-.LBB376
	.uleb128 0x24
	.long	.LASF472
	.byte	0x1
	.value	0x181b
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF477
	.byte	0x1
	.value	0x181f
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.long	0x5c6d
	.uleb128 0x26
	.string	"cv"
	.byte	0x1
	.value	0x181f
	.long	0xea5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.string	"sp"
	.byte	0x1
	.value	0x1821
	.long	0xf2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x24
	.long	.LASF468
	.byte	0x1
	.value	0x1821
	.long	0xf2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.string	"ax"
	.byte	0x1
	.value	0x1821
	.long	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF469
	.byte	0x1
	.value	0x1821
	.long	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.quad	.LBB377
	.quad	.LBE377-.LBB377
	.long	0x5c4b
	.uleb128 0x22
	.string	"obj"
	.byte	0x1
	.value	0x1825
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF474
	.byte	0x1
	.value	0x1826
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x23
	.quad	.LBB378
	.quad	.LBE378-.LBB378
	.uleb128 0x24
	.long	.LASF472
	.byte	0x1
	.value	0x182d
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF478
	.byte	0x1
	.value	0x1831
	.quad	.LFB80
	.quad	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.long	0x5d28
	.uleb128 0x26
	.string	"cv"
	.byte	0x1
	.value	0x1831
	.long	0xea5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.string	"sp"
	.byte	0x1
	.value	0x1833
	.long	0xf2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x24
	.long	.LASF468
	.byte	0x1
	.value	0x1833
	.long	0xf2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.string	"ax"
	.byte	0x1
	.value	0x1833
	.long	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF469
	.byte	0x1
	.value	0x1833
	.long	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.quad	.LBB379
	.quad	.LBE379-.LBB379
	.long	0x5d06
	.uleb128 0x22
	.string	"obj"
	.byte	0x1
	.value	0x1837
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF474
	.byte	0x1
	.value	0x1838
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x23
	.quad	.LBB380
	.quad	.LBE380-.LBB380
	.uleb128 0x24
	.long	.LASF472
	.byte	0x1
	.value	0x183f
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF479
	.byte	0x1
	.value	0x1843
	.quad	.LFB81
	.quad	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.long	0x5de1
	.uleb128 0x26
	.string	"cv"
	.byte	0x1
	.value	0x1843
	.long	0xea5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.string	"sp"
	.byte	0x1
	.value	0x1845
	.long	0xf2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x24
	.long	.LASF468
	.byte	0x1
	.value	0x1845
	.long	0xf2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.string	"ax"
	.byte	0x1
	.value	0x1845
	.long	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF469
	.byte	0x1
	.value	0x1845
	.long	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.quad	.LBB381
	.quad	.LBE381-.LBB381
	.long	0x5dbf
	.uleb128 0x22
	.string	"f"
	.byte	0x1
	.value	0x1849
	.long	0xee5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF474
	.byte	0x1
	.value	0x184a
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x23
	.quad	.LBB382
	.quad	.LBE382-.LBB382
	.uleb128 0x24
	.long	.LASF472
	.byte	0x1
	.value	0x1851
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF480
	.byte	0x1
	.value	0x1855
	.quad	.LFB82
	.quad	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.long	0x5e9b
	.uleb128 0x26
	.string	"cv"
	.byte	0x1
	.value	0x1855
	.long	0xea5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.string	"sp"
	.byte	0x1
	.value	0x1857
	.long	0xf2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x24
	.long	.LASF468
	.byte	0x1
	.value	0x1857
	.long	0xf2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.string	"ax"
	.byte	0x1
	.value	0x1857
	.long	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF469
	.byte	0x1
	.value	0x1857
	.long	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.quad	.LBB383
	.quad	.LBE383-.LBB383
	.long	0x5e79
	.uleb128 0x22
	.string	"sv"
	.byte	0x1
	.value	0x185b
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF474
	.byte	0x1
	.value	0x185c
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x23
	.quad	.LBB384
	.quad	.LBE384-.LBB384
	.uleb128 0x24
	.long	.LASF472
	.byte	0x1
	.value	0x1863
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF481
	.byte	0x1
	.value	0x1867
	.quad	.LFB83
	.quad	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.long	0x5f55
	.uleb128 0x26
	.string	"cv"
	.byte	0x1
	.value	0x1867
	.long	0xea5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.string	"sp"
	.byte	0x1
	.value	0x1869
	.long	0xf2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x24
	.long	.LASF468
	.byte	0x1
	.value	0x1869
	.long	0xf2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.string	"ax"
	.byte	0x1
	.value	0x1869
	.long	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF469
	.byte	0x1
	.value	0x1869
	.long	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x28
	.quad	.LBB385
	.quad	.LBE385-.LBB385
	.long	0x5f33
	.uleb128 0x22
	.string	"sv"
	.byte	0x1
	.value	0x186d
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF474
	.byte	0x1
	.value	0x186e
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x23
	.quad	.LBB386
	.quad	.LBE386-.LBB386
	.uleb128 0x24
	.long	.LASF472
	.byte	0x1
	.value	0x1875
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF482
	.byte	0x1
	.value	0x1879
	.quad	.LFB84
	.quad	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.long	0x6010
	.uleb128 0x26
	.string	"cv"
	.byte	0x1
	.value	0x1879
	.long	0xea5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.string	"sp"
	.byte	0x1
	.value	0x187b
	.long	0xf2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF468
	.byte	0x1
	.value	0x187b
	.long	0xf2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x22
	.string	"ax"
	.byte	0x1
	.value	0x187b
	.long	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x24
	.long	.LASF469
	.byte	0x1
	.value	0x187b
	.long	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.quad	.LBB387
	.quad	.LBE387-.LBB387
	.long	0x5fee
	.uleb128 0x24
	.long	.LASF474
	.byte	0x1
	.value	0x187f
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.long	.LASF475
	.byte	0x1
	.value	0x1880
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x23
	.quad	.LBB390
	.quad	.LBE390-.LBB390
	.uleb128 0x24
	.long	.LASF472
	.byte	0x1
	.value	0x1886
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF483
	.byte	0x1
	.value	0x188a
	.quad	.LFB85
	.quad	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.long	0x60cb
	.uleb128 0x26
	.string	"cv"
	.byte	0x1
	.value	0x188a
	.long	0xea5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.string	"sp"
	.byte	0x1
	.value	0x188c
	.long	0xf2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF468
	.byte	0x1
	.value	0x188c
	.long	0xf2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x22
	.string	"ax"
	.byte	0x1
	.value	0x188c
	.long	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x24
	.long	.LASF469
	.byte	0x1
	.value	0x188c
	.long	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.quad	.LBB391
	.quad	.LBE391-.LBB391
	.long	0x60a9
	.uleb128 0x24
	.long	.LASF474
	.byte	0x1
	.value	0x1890
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.long	.LASF475
	.byte	0x1
	.value	0x1891
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x23
	.quad	.LBB394
	.quad	.LBE394-.LBB394
	.uleb128 0x24
	.long	.LASF472
	.byte	0x1
	.value	0x1897
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF484
	.byte	0x1
	.value	0x189b
	.quad	.LFB86
	.quad	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.long	0x6186
	.uleb128 0x26
	.string	"cv"
	.byte	0x1
	.value	0x189b
	.long	0xea5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.string	"sp"
	.byte	0x1
	.value	0x189d
	.long	0xf2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.long	.LASF468
	.byte	0x1
	.value	0x189d
	.long	0xf2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x22
	.string	"ax"
	.byte	0x1
	.value	0x189d
	.long	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x24
	.long	.LASF469
	.byte	0x1
	.value	0x189d
	.long	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.quad	.LBB395
	.quad	.LBE395-.LBB395
	.long	0x6164
	.uleb128 0x24
	.long	.LASF474
	.byte	0x1
	.value	0x18a1
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.long	.LASF475
	.byte	0x1
	.value	0x18a2
	.long	0xd44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x23
	.quad	.LBB398
	.quad	.LBE398-.LBB398
	.uleb128 0x24
	.long	.LASF472
	.byte	0x1
	.value	0x18a8
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF485
	.byte	0x1
	.value	0x18af
	.quad	.LFB87
	.quad	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.long	0x621c
	.uleb128 0x26
	.string	"cv"
	.byte	0x1
	.value	0x18af
	.long	0xea5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.string	"sp"
	.byte	0x1
	.value	0x18b1
	.long	0xf2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x24
	.long	.LASF468
	.byte	0x1
	.value	0x18b1
	.long	0xf2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.string	"ax"
	.byte	0x1
	.value	0x18b1
	.long	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF469
	.byte	0x1
	.value	0x18b1
	.long	0xd11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.long	.LASF486
	.byte	0x1
	.value	0x18b2
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.quad	.LBB400
	.quad	.LBE400-.LBB400
	.uleb128 0x24
	.long	.LASF472
	.byte	0x1
	.value	0x18d4
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x79
	.long	0x622c
	.uleb128 0x16
	.long	0x65
	.byte	0x1
	.byte	0
	.uleb128 0x31
	.long	.LASF487
	.byte	0x12
	.byte	0x79
	.long	0x621c
	.uleb128 0x9
	.byte	0x3
	.quad	local_patches
	.uleb128 0x24
	.long	.LASF488
	.byte	0x1
	.value	0x17c
	.long	0x142c
	.uleb128 0x9
	.byte	0x3
	.quad	Context_ptr
	.uleb128 0x15
	.long	0x7f
	.long	0x6267
	.uleb128 0x16
	.long	0x65
	.byte	0xa
	.byte	0
	.uleb128 0x24
	.long	.LASF489
	.byte	0x1
	.value	0x2d1
	.long	0x627d
	.uleb128 0x9
	.byte	0x3
	.quad	old_magicstr
	.uleb128 0x7
	.long	0x6257
	.uleb128 0x15
	.long	0x7f
	.long	0x6292
	.uleb128 0x16
	.long	0x65
	.byte	0x4
	.byte	0
	.uleb128 0x24
	.long	.LASF490
	.byte	0x1
	.value	0x2d2
	.long	0x62a8
	.uleb128 0x9
	.byte	0x3
	.quad	magicstr
	.uleb128 0x7
	.long	0x6282
	.uleb128 0x15
	.long	0x7f
	.long	0x62bd
	.uleb128 0x16
	.long	0x65
	.byte	0x8
	.byte	0
	.uleb128 0x24
	.long	.LASF491
	.byte	0x1
	.value	0x30c
	.long	0x62d3
	.uleb128 0x9
	.byte	0x3
	.quad	byteorderstr
	.uleb128 0x7
	.long	0x62ad
	.uleb128 0x15
	.long	0x62e8
	.long	0x62e8
	.uleb128 0x16
	.long	0x65
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x62ee
	.uleb128 0x1b
	.long	0x57
	.long	0x6302
	.uleb128 0x14
	.long	0x142c
	.uleb128 0x14
	.long	0xd44
	.byte	0
	.uleb128 0x24
	.long	.LASF492
	.byte	0x1
	.value	0x411
	.long	0x62d8
	.uleb128 0x9
	.byte	0x3
	.quad	sv_store
	.uleb128 0x15
	.long	0x6328
	.long	0x6328
	.uleb128 0x16
	.long	0x65
	.byte	0x1b
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x632e
	.uleb128 0x1b
	.long	0xd44
	.long	0x6342
	.uleb128 0x14
	.long	0x142c
	.uleb128 0x14
	.long	0x79
	.byte	0
	.uleb128 0x24
	.long	.LASF493
	.byte	0x1
	.value	0x433
	.long	0x6318
	.uleb128 0x9
	.byte	0x3
	.quad	sv_old_retrieve
	.uleb128 0x24
	.long	.LASF494
	.byte	0x1
	.value	0x460
	.long	0x6318
	.uleb128 0x9
	.byte	0x3
	.quad	sv_retrieve
	.uleb128 0x32
	.long	.LASF495
	.byte	0x13
	.byte	0x98
	.long	0x7f
	.uleb128 0x33
	.long	.LASF496
	.byte	0x13
	.value	0x125
	.long	0x291
	.uleb128 0x33
	.long	.LASF497
	.byte	0x13
	.value	0x126
	.long	0x291
	.uleb128 0x33
	.long	.LASF498
	.byte	0x13
	.value	0x127
	.long	0x291
	.uleb128 0x33
	.long	.LASF499
	.byte	0x13
	.value	0x166
	.long	0x5e
	.uleb128 0x32
	.long	.LASF500
	.byte	0x14
	.byte	0x22
	.long	0xf2a
	.uleb128 0x32
	.long	.LASF501
	.byte	0x14
	.byte	0x26
	.long	0xe94
	.uleb128 0x32
	.long	.LASF502
	.byte	0x14
	.byte	0x28
	.long	0xf2a
	.uleb128 0x32
	.long	.LASF503
	.byte	0x14
	.byte	0x2a
	.long	0xf2a
	.uleb128 0x32
	.long	.LASF504
	.byte	0x14
	.byte	0x2b
	.long	0xf2a
	.uleb128 0x32
	.long	.LASF505
	.byte	0x14
	.byte	0x37
	.long	0xd11
	.uleb128 0x32
	.long	.LASF506
	.byte	0x14
	.byte	0x38
	.long	0xd11
	.uleb128 0x32
	.long	.LASF507
	.byte	0x14
	.byte	0x3c
	.long	0xdb7
	.uleb128 0x32
	.long	.LASF508
	.byte	0x14
	.byte	0x3d
	.long	0xdb7
	.uleb128 0x32
	.long	.LASF509
	.byte	0x14
	.byte	0x43
	.long	0xd44
	.uleb128 0x32
	.long	.LASF510
	.byte	0x14
	.byte	0x44
	.long	0x6422
	.uleb128 0x6
	.byte	0x8
	.long	0x612
	.uleb128 0x32
	.long	.LASF511
	.byte	0x14
	.byte	0x5f
	.long	0x7f
	.uleb128 0x32
	.long	.LASF512
	.byte	0x15
	.byte	0x42
	.long	0x291
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x4
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
	.uleb128 0x1d
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x25
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
	.uleb128 0x29
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.quad	.LBB24-.Ltext0
	.quad	.LBE24-.Ltext0
	.quad	.LBB27-.Ltext0
	.quad	.LBE27-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB33-.Ltext0
	.quad	.LBE33-.Ltext0
	.quad	.LBB36-.Ltext0
	.quad	.LBE36-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB167-.Ltext0
	.quad	.LBE167-.Ltext0
	.quad	.LBB169-.Ltext0
	.quad	.LBE169-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB204-.Ltext0
	.quad	.LBE204-.Ltext0
	.quad	.LBB206-.Ltext0
	.quad	.LBE206-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB215-.Ltext0
	.quad	.LBE215-.Ltext0
	.quad	.LBB217-.Ltext0
	.quad	.LBE217-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF48:
	.string	"precomp"
.LASF279:
	.string	"to_cv_amg"
.LASF270:
	.string	"repeat_ass_amg"
.LASF238:
	.string	"rshift_ass_amg"
.LASF398:
	.string	"network_file_header"
.LASF431:
	.string	"retrieve_byte"
.LASF16:
	.string	"op_next"
.LASF207:
	.string	"xiou_any"
.LASF340:
	.string	"pkg_uncache"
.LASF512:
	.string	"PL_sv_placeholder"
.LASF358:
	.string	"store_hash"
.LASF120:
	.string	"xpvgv"
.LASF142:
	.string	"xio_ifp"
.LASF483:
	.string	"XS_Storable_is_storing"
.LASF326:
	.string	"init_retrieve_context"
.LASF240:
	.string	"band_ass_amg"
.LASF247:
	.string	"gt_amg"
.LASF360:
	.string	"eiter"
.LASF314:
	.string	"ver_major"
.LASF114:
	.string	"xhv_keys"
.LASF157:
	.string	"xio_flags"
.LASF161:
	.string	"svt_set"
.LASF110:
	.string	"xpvhv"
.LASF272:
	.string	"concat_ass_amg"
.LASF434:
	.string	"retrieve_sv_yes"
.LASF419:
	.string	"retrieve_tied_array"
.LASF515:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/400.perlbench/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF417:
	.string	"retrieve_overloaded"
.LASF422:
	.string	"retrieve_tied_key"
.LASF66:
	.string	"gp_hv"
.LASF141:
	.string	"xpvio"
.LASF88:
	.string	"xpviv"
.LASF264:
	.string	"cos_amg"
.LASF424:
	.string	"retrieve_lscalar"
.LASF482:
	.string	"XS_Storable_last_op_in_netorder"
.LASF401:
	.string	"length"
.LASF129:
	.string	"xcv_start"
.LASF450:
	.string	"use_NV_size"
.LASF63:
	.string	"gp_io"
.LASF407:
	.string	"mstore"
.LASF67:
	.string	"gp_egv"
.LASF213:
	.string	"hek_hash"
.LASF251:
	.string	"ncmp_amg"
.LASF128:
	.string	"xcv_stash"
.LASF348:
	.string	"store_ref"
.LASF411:
	.string	"retrieve_idx_blessed"
.LASF511:
	.string	"PL_tainted"
.LASF267:
	.string	"log_amg"
.LASF468:
	.string	"mark"
.LASF85:
	.string	"xpv_cur"
.LASF373:
	.string	"bdeparse"
.LASF78:
	.string	"mg_type"
.LASF327:
	.string	"is_tainted"
.LASF303:
	.string	"s_tainted"
.LASF250:
	.string	"ne_amg"
.LASF410:
	.string	"cname"
.LASF84:
	.string	"xpv_pv"
.LASF472:
	.string	"tmpXSoff"
.LASF97:
	.string	"xpvmg"
.LASF339:
	.string	"pkg_hide"
.LASF249:
	.string	"eq_amg"
.LASF356:
	.string	"clen"
.LASF205:
	.string	"cv_flags_t"
.LASF351:
	.string	"store_scalar"
.LASF312:
	.string	"membuf"
.LASF71:
	.string	"gp_line"
.LASF332:
	.string	"is_storing"
.LASF147:
	.string	"xio_page_len"
.LASF246:
	.string	"le_amg"
.LASF94:
	.string	"xpvnv"
.LASF121:
	.string	"xgv_gp"
.LASF77:
	.string	"mg_private"
.LASF509:
	.string	"PL_Sv"
.LASF276:
	.string	"to_av_amg"
.LASF380:
	.string	"Perl_ref"
.LASF301:
	.string	"classnum"
.LASF107:
	.string	"xav_arylen"
.LASF60:
	.string	"program"
.LASF295:
	.string	"aseen"
.LASF130:
	.string	"xcv_root"
.LASF211:
	.string	"hent_hek"
.LASF76:
	.string	"mg_virtual"
.LASF266:
	.string	"exp_amg"
.LASF273:
	.string	"copy_amg"
.LASF41:
	.string	"sv_flags"
.LASF239:
	.string	"band_amg"
.LASF221:
	.string	"string_amg"
.LASF415:
	.string	"extra_type"
.LASF38:
	.string	"broiled"
.LASF420:
	.string	"retrieve_tied_hash"
.LASF152:
	.string	"xio_fmt_gv"
.LASF346:
	.string	"known_class"
.LASF444:
	.string	"old_retrieve_array"
.LASF70:
	.string	"gp_flags"
.LASF62:
	.string	"gp_refcnt"
.LASF478:
	.string	"XS_Storable_net_mstore"
.LASF56:
	.string	"nparens"
.LASF185:
	.string	"type"
.LASF72:
	.string	"gp_file"
.LASF412:
	.string	"retrieve_blessed"
.LASF146:
	.string	"xio_page"
.LASF355:
	.string	"wlen"
.LASF391:
	.string	"store_blessed"
.LASF136:
	.string	"xcv_padlist"
.LASF406:
	.string	"mbuf2sv"
.LASF220:
	.string	"nomethod_amg"
.LASF61:
	.string	"gp_sv"
.LASF0:
	.string	"unsigned char"
.LASF388:
	.string	"wlen2"
.LASF456:
	.string	"first_time"
.LASF183:
	.string	"PerlIO"
.LASF310:
	.string	"membuf_ro"
.LASF294:
	.string	"hook_seen"
.LASF488:
	.string	"Context_ptr"
.LASF216:
	.string	"float"
.LASF378:
	.string	"class"
.LASF91:
	.string	"xpvuv"
.LASF39:
	.string	"sv_any"
.LASF307:
	.string	"canonical"
.LASF253:
	.string	"slt_amg"
.LASF59:
	.string	"reganch"
.LASF176:
	.string	"stashes"
.LASF442:
	.string	"retrieve_code"
.LASF45:
	.string	"endp"
.LASF393:
	.string	"store_other"
.LASF469:
	.string	"items"
.LASF309:
	.string	"s_dirty"
.LASF454:
	.string	"croak_now"
.LASF315:
	.string	"ver_minor"
.LASF11:
	.string	"size_t"
.LASF357:
	.string	"store_array"
.LASF298:
	.string	"aclass"
.LASF302:
	.string	"netorder"
.LASF489:
	.string	"old_magicstr"
.LASF381:
	.string	"recursed"
.LASF473:
	.string	"XS_Storable_pstore"
.LASF202:
	.string	"SVt_PVGV"
.LASF52:
	.string	"sublen"
.LASF386:
	.string	"av_hook"
.LASF103:
	.string	"xav_fill"
.LASF219:
	.string	"bool__amg"
.LASF305:
	.string	"deparse"
.LASF75:
	.string	"mg_moremagic"
.LASF377:
	.string	"store_hook"
.LASF507:
	.string	"PL_markstack_ptr"
.LASF457:
	.string	"nettag"
.LASF514:
	.string	"Storable.c"
.LASF243:
	.string	"bxor_amg"
.LASF322:
	.string	"reset_context"
.LASF409:
	.string	"retrieve_other"
.LASF433:
	.string	"retrieve_sv_undef"
.LASF155:
	.string	"xio_subprocess"
.LASF453:
	.string	"old_len"
.LASF50:
	.string	"subbeg"
.LASF44:
	.string	"startp"
.LASF277:
	.string	"to_hv_amg"
.LASF376:
	.string	"store_tied_item"
.LASF390:
	.string	"tagval"
.LASF293:
	.string	"hseen"
.LASF513:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF394:
	.string	"sv_type"
.LASF278:
	.string	"to_gv_amg"
.LASF43:
	.string	"regexp"
.LASF374:
	.string	"store_tied"
.LASF495:
	.string	"PL_tainting"
.LASF330:
	.string	"parent_cxt"
.LASF42:
	.string	"REGEXP"
.LASF40:
	.string	"sv_refcnt"
.LASF162:
	.string	"svt_len"
.LASF283:
	.string	"max_amg_code"
.LASF186:
	.string	"next_off"
.LASF22:
	.string	"op_flags"
.LASF33:
	.string	"op_pmpermflags"
.LASF313:
	.string	"msaved"
.LASF47:
	.string	"substrs"
.LASF462:
	.string	"asbytes"
.LASF449:
	.string	"use_network_order"
.LASF430:
	.string	"retrieve_double"
.LASF199:
	.string	"SVt_PVAV"
.LASF111:
	.string	"xhv_array"
.LASF234:
	.string	"pow_ass_amg"
.LASF463:
	.string	"klen_tmp"
.LASF51:
	.string	"offsets"
.LASF331:
	.string	"free_context"
.LASF500:
	.string	"PL_stack_sp"
.LASF153:
	.string	"xio_bottom_name"
.LASF486:
	.string	"file"
.LASF197:
	.string	"SVt_PVBM"
.LASF372:
	.string	"text"
.LASF217:
	.string	"fallback_amg"
.LASF73:
	.string	"MAGIC"
.LASF405:
	.string	"net_pstore"
.LASF79:
	.string	"mg_flags"
.LASF323:
	.string	"init_store_context"
.LASF100:
	.string	"XPVAV"
.LASF445:
	.string	"old_retrieve_hash"
.LASF443:
	.string	"errsv"
.LASF333:
	.string	"is_retrieving"
.LASF201:
	.string	"SVt_PVCV"
.LASF55:
	.string	"prelen"
.LASF19:
	.string	"op_targ"
.LASF335:
	.string	"allocate_context"
.LASF154:
	.string	"xio_bottom_gv"
.LASF414:
	.string	"frozen"
.LASF57:
	.string	"lastparen"
.LASF242:
	.string	"bor_ass_amg"
.LASF126:
	.string	"XPVCV"
.LASF451:
	.string	"version_major"
.LASF502:
	.string	"PL_curpad"
.LASF9:
	.string	"__ssize_t"
.LASF188:
	.string	"reg_data"
.LASF151:
	.string	"xio_fmt_name"
.LASF212:
	.string	"hent_val"
.LASF354:
	.string	"integer"
.LASF95:
	.string	"xnv_nv"
.LASF210:
	.string	"hent_next"
.LASF237:
	.string	"rshift_amg"
.LASF164:
	.string	"svt_free"
.LASF34:
	.string	"op_pmdynflags"
.LASF318:
	.string	"my_sv"
.LASF280:
	.string	"iter_amg"
.LASF255:
	.string	"sgt_amg"
.LASF203:
	.string	"SVt_PVFM"
.LASF365:
	.string	"keylen_tmp"
.LASF175:
	.string	"clone_params"
.LASF404:
	.string	"pstore"
.LASF345:
	.string	"array_call"
.LASF244:
	.string	"bxor_ass_amg"
.LASF292:
	.string	"optype"
.LASF416:
	.string	"retrieve_ref"
.LASF137:
	.string	"xcv_outside"
.LASF208:
	.string	"PADLIST"
.LASF396:
	.string	"undef_special_case"
.LASF173:
	.string	"any_dxptr"
.LASF506:
	.string	"PL_tmps_floor"
.LASF125:
	.string	"xgv_flags"
.LASF74:
	.string	"magic"
.LASF498:
	.string	"PL_sv_yes"
.LASF347:
	.string	"name"
.LASF316:
	.string	"retrieve_vtbl"
.LASF200:
	.string	"SVt_PVHV"
.LASF189:
	.string	"SVt_NULL"
.LASF159:
	.string	"mgvtbl"
.LASF297:
	.string	"hclass"
.LASF392:
	.string	"flag"
.LASF119:
	.string	"XPVGV"
.LASF375:
	.string	"mtype"
.LASF158:
	.string	"MGVTBL"
.LASF218:
	.string	"abs_amg"
.LASF204:
	.string	"SVt_PVIO"
.LASF194:
	.string	"SVt_PVIV"
.LASF53:
	.string	"refcnt"
.LASF383:
	.string	"clone"
.LASF336:
	.string	"pkg_fetchmeth"
.LASF248:
	.string	"ge_amg"
.LASF109:
	.string	"XPVHV"
.LASF7:
	.string	"sizetype"
.LASF494:
	.string	"sv_retrieve"
.LASF471:
	.string	"XS_Storable_init_perinterp"
.LASF30:
	.string	"op_pmnext"
.LASF364:
	.string	"keyval"
.LASF362:
	.string	"hash_flags"
.LASF131:
	.string	"xcv_xsub"
.LASF371:
	.string	"reallen"
.LASF23:
	.string	"op_private"
.LASF262:
	.string	"dec_amg"
.LASF167:
	.string	"any_ptr"
.LASF1:
	.string	"short unsigned int"
.LASF4:
	.string	"signed char"
.LASF503:
	.string	"PL_stack_base"
.LASF140:
	.string	"XPVIO"
.LASF87:
	.string	"XPVIV"
.LASF106:
	.string	"xav_alloc"
.LASF448:
	.string	"current"
.LASF113:
	.string	"xhv_max"
.LASF359:
	.string	"riter"
.LASF54:
	.string	"minlen"
.LASF403:
	.string	"status"
.LASF232:
	.string	"modulo_ass_amg"
.LASF344:
	.string	"count"
.LASF257:
	.string	"seq_amg"
.LASF99:
	.string	"xmg_stash"
.LASF349:
	.string	"stash"
.LASF321:
	.string	"init_perinterp"
.LASF46:
	.string	"regstclass"
.LASF116:
	.string	"xhv_eiter"
.LASF397:
	.string	"magic_write"
.LASF426:
	.string	"retrieve_utf8str"
.LASF493:
	.string	"sv_old_retrieve"
.LASF461:
	.string	"orig"
.LASF198:
	.string	"SVt_PVLV"
.LASF352:
	.string	"string"
.LASF187:
	.string	"reg_substr_data"
.LASF254:
	.string	"sle_amg"
.LASF341:
	.string	"pkg_can"
.LASF223:
	.string	"add_amg"
.LASF504:
	.string	"PL_stack_max"
.LASF437:
	.string	"retrieve_hash"
.LASF196:
	.string	"SVt_PVMG"
.LASF105:
	.string	"xof_off"
.LASF226:
	.string	"subtr_ass_amg"
.LASF123:
	.string	"xgv_namelen"
.LASF27:
	.string	"op_last"
.LASF181:
	.string	"__dirstream"
.LASF170:
	.string	"any_long"
.LASF480:
	.string	"XS_Storable_mretrieve"
.LASF476:
	.string	"XS_Storable_net_pstore"
.LASF505:
	.string	"PL_tmps_ix"
.LASF21:
	.string	"op_seq"
.LASF259:
	.string	"not_amg"
.LASF195:
	.string	"SVt_PVNV"
.LASF24:
	.string	"PMOP"
.LASF479:
	.string	"XS_Storable_pretrieve"
.LASF227:
	.string	"mult_amg"
.LASF369:
	.string	"key_sv"
.LASF58:
	.string	"lastcloseparen"
.LASF96:
	.string	"XPVMG"
.LASF501:
	.string	"PL_op"
.LASF156:
	.string	"xio_type"
.LASF6:
	.string	"long int"
.LASF163:
	.string	"svt_clear"
.LASF143:
	.string	"xio_ofp"
.LASF124:
	.string	"xgv_stash"
.LASF28:
	.string	"op_pmreplroot"
.LASF135:
	.string	"xcv_depth"
.LASF69:
	.string	"gp_cvgen"
.LASF93:
	.string	"XPVNV"
.LASF115:
	.string	"xhv_riter"
.LASF366:
	.string	"keylen"
.LASF288:
	.string	"aend"
.LASF329:
	.string	"clean_context"
.LASF252:
	.string	"scmp_amg"
.LASF497:
	.string	"PL_sv_no"
.LASF492:
	.string	"sv_store"
.LASF29:
	.string	"op_pmreplstart"
.LASF363:
	.string	"placeholders"
.LASF190:
	.string	"SVt_IV"
.LASF184:
	.string	"regnode"
.LASF429:
	.string	"retrieve_netint"
.LASF284:
	.string	"extendable"
.LASF17:
	.string	"op_sibling"
.LASF467:
	.string	"real_context"
.LASF368:
	.string	"is_utf8"
.LASF169:
	.string	"any_iv"
.LASF117:
	.string	"xhv_pmroot"
.LASF236:
	.string	"lshift_ass_amg"
.LASF3:
	.string	"long unsigned int"
.LASF25:
	.string	"pmop"
.LASF427:
	.string	"retrieve_lutf8str"
.LASF291:
	.string	"entry"
.LASF387:
	.string	"cnum"
.LASF281:
	.string	"int_amg"
.LASF36:
	.string	"PerlInterpreter"
.LASF222:
	.string	"numer_amg"
.LASF231:
	.string	"modulo_amg"
.LASF268:
	.string	"sqrt_amg"
.LASF271:
	.string	"concat_amg"
.LASF382:
	.string	"obj_type"
.LASF8:
	.string	"char"
.LASF304:
	.string	"forgive_me"
.LASF149:
	.string	"xio_top_name"
.LASF82:
	.string	"mg_len"
.LASF206:
	.string	"xiou_dirp"
.LASF122:
	.string	"xgv_name"
.LASF452:
	.string	"version_minor"
.LASF230:
	.string	"div_ass_amg"
.LASF145:
	.string	"xio_lines"
.LASF441:
	.string	"keysv"
.LASF86:
	.string	"xpv_len"
.LASF367:
	.string	"keysave"
.LASF20:
	.string	"op_type"
.LASF353:
	.string	"string_readlen"
.LASF15:
	.string	"STRLEN"
.LASF320:
	.string	"self"
.LASF508:
	.string	"PL_markstack_max"
.LASF334:
	.string	"last_op_in_netorder"
.LASF370:
	.string	"store_code"
.LASF474:
	.string	"RETVAL"
.LASF446:
	.string	"sv_h_undef"
.LASF191:
	.string	"SVt_NV"
.LASF418:
	.string	"Perl_package"
.LASF458:
	.string	"tagn"
.LASF215:
	.string	"hek_key"
.LASF282:
	.string	"DESTROY_amg"
.LASF438:
	.string	"size"
.LASF134:
	.string	"xcv_file"
.LASF425:
	.string	"retrieve_scalar"
.LASF90:
	.string	"XPVUV"
.LASF470:
	.string	"XS_Storable__Cxt_DESTROY"
.LASF178:
	.string	"proto_perl"
.LASF491:
	.string	"byteorderstr"
.LASF421:
	.string	"retrieve_tied_scalar"
.LASF496:
	.string	"PL_sv_undef"
.LASF263:
	.string	"atan2_amg"
.LASF209:
	.string	"PADOFFSET"
.LASF385:
	.string	"sv_seen"
.LASF32:
	.string	"op_pmflags"
.LASF92:
	.string	"xuv_uv"
.LASF342:
	.string	"scalar_call"
.LASF37:
	.string	"interpreter"
.LASF308:
	.string	"accept_future_minor"
.LASF144:
	.string	"xio_dirpu"
.LASF361:
	.string	"flagged_hash"
.LASF256:
	.string	"sge_amg"
.LASF26:
	.string	"op_first"
.LASF14:
	.string	"double"
.LASF83:
	.string	"xrv_rv"
.LASF104:
	.string	"xav_max"
.LASF484:
	.string	"XS_Storable_is_retrieving"
.LASF10:
	.string	"ssize_t"
.LASF18:
	.string	"op_ppaddr"
.LASF260:
	.string	"compl_amg"
.LASF168:
	.string	"any_i32"
.LASF261:
	.string	"inc_amg"
.LASF274:
	.string	"neg_amg"
.LASF465:
	.string	"mretrieve"
.LASF193:
	.string	"SVt_PV"
.LASF171:
	.string	"any_bool"
.LASF139:
	.string	"xcv_outside_seq"
.LASF49:
	.string	"data"
.LASF464:
	.string	"pretrieve"
.LASF481:
	.string	"XS_Storable_dclone"
.LASF102:
	.string	"xav_array"
.LASF455:
	.string	"retrieve"
.LASF192:
	.string	"SVt_RV"
.LASF174:
	.string	"CLONE_PARAMS"
.LASF287:
	.string	"aptr"
.LASF112:
	.string	"xhv_fill"
.LASF319:
	.string	"stcxt_t"
.LASF89:
	.string	"xiv_iv"
.LASF447:
	.string	"magic_check"
.LASF235:
	.string	"lshift_amg"
.LASF269:
	.string	"repeat_amg"
.LASF285:
	.string	"arena"
.LASF328:
	.string	"clean_retrieve_context"
.LASF435:
	.string	"retrieve_sv_no"
.LASF228:
	.string	"mult_ass_amg"
.LASF214:
	.string	"hek_len"
.LASF290:
	.string	"stcxt"
.LASF408:
	.string	"net_mstore"
.LASF12:
	.string	"long long unsigned int"
.LASF350:
	.string	"offset"
.LASF245:
	.string	"lt_amg"
.LASF399:
	.string	"file_header"
.LASF384:
	.string	"eflags"
.LASF166:
	.string	"svt_dup"
.LASF413:
	.string	"retrieve_hook"
.LASF150:
	.string	"xio_top_gv"
.LASF229:
	.string	"div_amg"
.LASF499:
	.string	"PL_amagic_generation"
.LASF423:
	.string	"retrieve_tied_idx"
.LASF225:
	.string	"subtr_amg"
.LASF460:
	.string	"pre_06_fmt"
.LASF343:
	.string	"cloning"
.LASF81:
	.string	"mg_ptr"
.LASF490:
	.string	"magicstr"
.LASF35:
	.string	"op_pmstash"
.LASF436:
	.string	"retrieve_array"
.LASF160:
	.string	"svt_get"
.LASF64:
	.string	"gp_form"
.LASF400:
	.string	"header"
.LASF395:
	.string	"store"
.LASF133:
	.string	"xcv_gv"
.LASF459:
	.string	"do_retrieve"
.LASF300:
	.string	"tagnum"
.LASF428:
	.string	"retrieve_integer"
.LASF13:
	.string	"long long int"
.LASF179:
	.string	"line_t"
.LASF118:
	.string	"xhv_name"
.LASF165:
	.string	"svt_copy"
.LASF477:
	.string	"XS_Storable_mstore"
.LASF286:
	.string	"asiz"
.LASF475:
	.string	"targ"
.LASF108:
	.string	"xav_flags"
.LASF485:
	.string	"boot_Storable"
.LASF487:
	.string	"local_patches"
.LASF311:
	.string	"keybuf"
.LASF379:
	.string	"len2"
.LASF389:
	.string	"len3"
.LASF432:
	.string	"retrieve_undef"
.LASF98:
	.string	"xmg_magic"
.LASF80:
	.string	"mg_obj"
.LASF172:
	.string	"any_dptr"
.LASF275:
	.string	"to_sv_amg"
.LASF289:
	.string	"stag_t"
.LASF101:
	.string	"xpvav"
.LASF31:
	.string	"op_pmregexp"
.LASF402:
	.string	"do_store"
.LASF132:
	.string	"xcv_xsubany"
.LASF325:
	.string	"clean_store_context"
.LASF148:
	.string	"xio_lines_left"
.LASF65:
	.string	"gp_av"
.LASF440:
	.string	"store_flags"
.LASF337:
	.string	"cache"
.LASF324:
	.string	"network_order"
.LASF466:
	.string	"dclone"
.LASF233:
	.string	"pow_amg"
.LASF510:
	.string	"PL_Xpv"
.LASF138:
	.string	"xcv_flags"
.LASF338:
	.string	"method"
.LASF2:
	.string	"unsigned int"
.LASF127:
	.string	"xpvcv"
.LASF182:
	.string	"_PerlIO"
.LASF241:
	.string	"bor_amg"
.LASF258:
	.string	"sne_amg"
.LASF5:
	.string	"short int"
.LASF68:
	.string	"gp_cv"
.LASF439:
	.string	"retrieve_flag_hash"
.LASF317:
	.string	"prev"
.LASF224:
	.string	"add_ass_amg"
.LASF296:
	.string	"where_is_undef"
.LASF265:
	.string	"sin_amg"
.LASF180:
	.string	"PerlIOl"
.LASF299:
	.string	"hook"
.LASF177:
	.string	"flags"
.LASF306:
	.string	"eval"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
