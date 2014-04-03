	.file	"hv.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D PERL_CORE -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX_X64 hv.c -mtune=generic
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
	.type	S_new_he, @function
S_new_he:
.LFB2:
	.file 1 "hv.c"
	.loc 1 38 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 41 0
	movq	PL_he_root(%rip), %rax	# PL_he_root, PL_he_root.0
	testq	%rax, %rax	# PL_he_root.0
	jne	.L2	#,
	.loc 1 42 0
	call	S_more_he	#
.L2:
	.loc 1 43 0
	movq	PL_he_root(%rip), %rax	# PL_he_root, tmp63
	movq	%rax, -8(%rbp)	# tmp63, he
	.loc 1 44 0
	movq	-8(%rbp), %rax	# he, tmp64
	movq	(%rax), %rax	# he_2->hent_next, PL_he_root.1
	movq	%rax, PL_he_root(%rip)	# PL_he_root.1, PL_he_root
	.loc 1 46 0
	movq	-8(%rbp), %rax	# he, D.12692
	.loc 1 47 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	S_new_he, .-S_new_he
	.type	S_del_he, @function
S_del_he:
.LFB3:
	.loc 1 51 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# p, p
	.loc 1 53 0
	movq	PL_he_root(%rip), %rdx	# PL_he_root, PL_he_root.2
	movq	-8(%rbp), %rax	# p, tmp60
	movq	%rdx, (%rax)	# PL_he_root.2, p_2(D)->hent_next
	.loc 1 54 0
	movq	-8(%rbp), %rax	# p, tmp61
	movq	%rax, PL_he_root(%rip)	# tmp61, PL_he_root
	.loc 1 56 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	S_del_he, .-S_del_he
	.type	S_more_he, @function
S_more_he:
.LFB4:
	.loc 1 60 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$16, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	.loc 1 64 0
	movl	$4080, %edi	#,
	call	Perl_safesysmalloc	#
	movq	%rax, -24(%rbp)	# tmp63, ptr
	.loc 1 65 0
	movq	PL_he_arenaroot(%rip), %rdx	# PL_he_arenaroot, PL_he_arenaroot.3
	movq	-24(%rbp), %rax	# ptr, tmp64
	movq	%rdx, (%rax)	# PL_he_arenaroot.3, ptr_2->xpv_pv
	.loc 1 66 0
	movq	-24(%rbp), %rax	# ptr, tmp65
	movq	%rax, PL_he_arenaroot(%rip)	# tmp65, PL_he_arenaroot
	.loc 1 68 0
	movq	-24(%rbp), %rbx	# ptr, he
	.loc 1 69 0
	leaq	4056(%rbx), %r12	#, heend
	.loc 1 70 0
	addq	$24, %rbx	#, he
	movq	%rbx, PL_he_root(%rip)	# he, PL_he_root
	.loc 1 71 0
	jmp	.L6	#
.L7:
	.loc 1 72 0
	leaq	24(%rbx), %rax	#, D.12693
	movq	%rax, (%rbx)	# D.12693, he_1->hent_next
	.loc 1 73 0
	addq	$24, %rbx	#, he
.L6:
	.loc 1 71 0 discriminator 1
	cmpq	%r12, %rbx	# heend, he
	jb	.L7	#,
	.loc 1 75 0
	movq	$0, (%rbx)	#, he_1->hent_next
	.loc 1 76 0
	addq	$16, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	S_more_he, .-S_more_he
	.type	S_save_hek_flags, @function
S_save_hek_flags:
.LFB5:
	.loc 1 92 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# str, str
	movl	%esi, -44(%rbp)	# len, len
	movl	%edx, -48(%rbp)	# hash, hash
	movl	%ecx, -52(%rbp)	# flags, flags
	.loc 1 93 0
	movl	-52(%rbp), %eax	# flags, tmp75
	movzbl	%al, %eax	# tmp75, tmp74
	movl	%eax, -28(%rbp)	# tmp74, flags_masked
	.loc 1 97 0
	movl	-44(%rbp), %eax	# len, tmp76
	cltq
	addq	$10, %rax	#, D.12694
	movq	%rax, %rdi	# D.12694,
	call	Perl_safesysmalloc	#
	movq	%rax, -24(%rbp)	# tmp77, k
	.loc 1 98 0
	movq	-24(%rbp), %rbx	# k, hek
	.loc 1 99 0
	movl	-44(%rbp), %eax	# len, tmp78
	movslq	%eax, %rdx	# tmp78, D.12694
	leaq	8(%rbx), %rax	#, D.12695
	movq	-40(%rbp), %rcx	# str, tmp79
	movq	%rcx, %rsi	# tmp79,
	movq	%rax, %rdi	# D.12695,
	call	memcpy	#
	.loc 1 100 0
	movl	-44(%rbp), %eax	# len, tmp81
	cltq
	movb	$0, 8(%rbx,%rax)	#, hek_7->hek_key
	.loc 1 101 0
	movl	-44(%rbp), %eax	# len, tmp82
	movl	%eax, 4(%rbx)	# tmp82, hek_7->hek_len
	.loc 1 102 0
	movl	-48(%rbp), %eax	# hash, tmp83
	movl	%eax, (%rbx)	# tmp83, hek_7->hek_hash
	.loc 1 103 0
	movl	4(%rbx), %eax	# hek_7->hek_len, D.12696
	cltq
	addq	$1, %rax	#, D.12697
	addq	%rbx, %rax	# hek, tmp84
	leaq	8(%rax), %rdx	#, D.12698
	movl	-28(%rbp), %eax	# flags_masked, tmp85
	movb	%al, (%rdx)	# D.12699, MEM[(unsigned char *)_15]
	.loc 1 105 0
	movl	-52(%rbp), %eax	# flags, tmp86
	andl	$256, %eax	#, D.12696
	testl	%eax, %eax	# D.12696
	je	.L9	#,
	.loc 1 106 0
	movq	-40(%rbp), %rax	# str, tmp87
	movq	%rax, %rdi	# tmp87,
	call	Perl_safesysfree	#
.L9:
	.loc 1 107 0
	movq	%rbx, %rax	# hek, D.12700
	.loc 1 108 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	S_save_hek_flags, .-S_save_hek_flags
	.globl	Perl_free_tied_hv_pool
	.type	Perl_free_tied_hv_pool, @function
Perl_free_tied_hv_pool:
.LFB6:
	.loc 1 115 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 117 0
	movq	PL_hv_fetch_ent_mh(%rip), %rax	# PL_hv_fetch_ent_mh, tmp60
	movq	%rax, -16(%rbp)	# tmp60, he
	.loc 1 118 0
	jmp	.L12	#
.L13:
	.loc 1 119 0
	movq	-16(%rbp), %rax	# he, tmp61
	movq	8(%rax), %rax	# he_1->hent_hek, D.12701
	movq	%rax, %rdi	# D.12701,
	call	Perl_safesysfree	#
	.loc 1 120 0
	movq	-16(%rbp), %rax	# he, tmp62
	movq	%rax, -8(%rbp)	# tmp62, ohe
	.loc 1 121 0
	movq	-16(%rbp), %rax	# he, tmp63
	movq	(%rax), %rax	# he_1->hent_next, tmp64
	movq	%rax, -16(%rbp)	# tmp64, he
	.loc 1 122 0
	movq	-8(%rbp), %rax	# ohe, tmp65
	movq	%rax, %rdi	# tmp65,
	call	S_del_he	#
.L12:
	.loc 1 118 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, he
	jne	.L13	#,
	.loc 1 124 0
	movq	$0, PL_hv_fetch_ent_mh(%rip)	#, PL_hv_fetch_ent_mh
	.loc 1 125 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	Perl_free_tied_hv_pool, .-Perl_free_tied_hv_pool
	.section	.rodata
	.align 8
.LC0:
	.string	"Attempt to %s a restricted hash"
	.text
	.type	S_hv_notallowed, @function
S_hv_notallowed:
.LFB7:
	.loc 1 165 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# flags, flags
	movq	%rsi, -32(%rbp)	# key, key
	movl	%edx, -24(%rbp)	# klen, klen
	movq	%rcx, -40(%rbp)	# msg, msg
	.loc 1 166 0
	call	Perl_sv_newmortal	#
	movq	%rax, -16(%rbp)	# tmp67, sv
	call	Perl_sv_newmortal	#
	movq	%rax, -8(%rbp)	# tmp68, esv
	.loc 1 167 0
	movl	-20(%rbp), %eax	# flags, tmp69
	andl	$256, %eax	#, D.12702
	testl	%eax, %eax	# D.12702
	jne	.L15	#,
	.loc 1 168 0
	movl	-24(%rbp), %eax	# klen, tmp70
	movslq	%eax, %rdx	# tmp70, D.12703
	movq	-32(%rbp), %rcx	# key, tmp71
	movq	-16(%rbp), %rax	# sv, tmp72
	movq	%rcx, %rsi	# tmp71,
	movq	%rax, %rdi	# tmp72,
	call	Perl_sv_setpvn	#
	jmp	.L16	#
.L15:
	.loc 1 173 0
	movl	-24(%rbp), %eax	# klen, tmp73
	movslq	%eax, %rdx	# tmp73, D.12703
	movq	-32(%rbp), %rcx	# key, tmp74
	movq	-16(%rbp), %rax	# sv, tmp75
	movq	%rcx, %rsi	# tmp74,
	movq	%rax, %rdi	# tmp75,
	call	Perl_sv_usepvn	#
.L16:
	.loc 1 175 0
	movl	-20(%rbp), %eax	# flags, tmp76
	andl	$1, %eax	#, D.12702
	testl	%eax, %eax	# D.12702
	je	.L17	#,
	.loc 1 176 0
	movq	-16(%rbp), %rax	# sv, tmp77
	movl	12(%rax), %eax	# sv_1->sv_flags, D.12704
	orl	$536870912, %eax	#, D.12704
	movl	%eax, %edx	# D.12704, D.12704
	movq	-16(%rbp), %rax	# sv, tmp78
	movl	%edx, 12(%rax)	# D.12704, sv_1->sv_flags
.L17:
	.loc 1 178 0
	movq	-40(%rbp), %rdx	# msg, tmp79
	movq	-8(%rbp), %rax	# esv, tmp80
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# tmp80,
	movl	$0, %eax	#,
	call	Perl_sv_setpvf	#
	.loc 1 179 0
	movq	-8(%rbp), %rax	# esv, tmp81
	movq	(%rax), %rax	# esv_2->sv_any, D.12705
	movq	(%rax), %rax	# MEM[(struct XPV *)_13].xpv_pv, D.12706
	movq	-16(%rbp), %rdx	# sv, tmp82
	movq	%rdx, %rsi	# tmp82,
	movq	%rax, %rdi	# D.12706,
	movl	$0, %eax	#,
	call	Perl_croak	#
	.loc 1 180 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	S_hv_notallowed, .-S_hv_notallowed
	.globl	Perl_hv_store
	.type	Perl_hv_store, @function
Perl_hv_store:
.LFB8:
	.loc 1 218 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -40(%rbp)	# hv, hv
	movq	%rsi, -48(%rbp)	# key, key
	movl	%edx, -52(%rbp)	# klen_i32, klen_i32
	movq	%rcx, -64(%rbp)	# val, val
	movl	%r8d, -56(%rbp)	# hash, hash
	.loc 1 223 0
	cmpl	$0, -52(%rbp)	#, klen_i32
	jns	.L19	#,
	.loc 1 224 0
	movl	-52(%rbp), %eax	# klen_i32, tmp63
	negl	%eax	# D.12708
	cltq
	movq	%rax, -16(%rbp)	# tmp64, klen
	.loc 1 225 0
	movl	$1, -20(%rbp)	#, flags
	jmp	.L20	#
.L19:
	.loc 1 227 0
	movl	-52(%rbp), %eax	# klen_i32, tmp66
	cltq
	movq	%rax, -16(%rbp)	# tmp65, klen
	.loc 1 228 0
	movl	$0, -20(%rbp)	#, flags
.L20:
	.loc 1 230 0
	movl	-20(%rbp), %edi	# flags, tmp67
	movq	-16(%rbp), %rcx	# klen, tmp68
	movq	-48(%rbp), %rdx	# key, tmp69
	movq	-40(%rbp), %rax	# hv, tmp70
	movl	-56(%rbp), %esi	# hash, tmp71
	movl	%esi, 8(%rsp)	# tmp71,
	movq	-64(%rbp), %rsi	# val, tmp72
	movq	%rsi, (%rsp)	# tmp72,
	movl	$9, %r9d	#,
	movl	%edi, %r8d	# tmp67,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp70,
	call	S_hv_fetch_common	#
	movq	%rax, -8(%rbp)	# tmp73, hek
	.loc 1 232 0
	cmpq	$0, -8(%rbp)	#, hek
	je	.L21	#,
	.loc 1 232 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hek, tmp74
	addq	$16, %rax	#, iftmp.4
	jmp	.L22	#
.L21:
	.loc 1 232 0 discriminator 2
	movl	$0, %eax	#, iftmp.4
.L22:
	.loc 1 233 0 is_stmt 1 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	Perl_hv_store, .-Perl_hv_store
	.globl	Perl_hv_store_flags
	.type	Perl_hv_store_flags, @function
Perl_hv_store_flags:
.LFB9:
	.loc 1 238 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -24(%rbp)	# hv, hv
	movq	%rsi, -32(%rbp)	# key, key
	movl	%edx, -36(%rbp)	# klen, klen
	movq	%rcx, -48(%rbp)	# val, val
	movl	%r8d, %esi	# hash, hash
	movl	%r9d, -40(%rbp)	# flags, flags
	.loc 1 239 0
	movl	-36(%rbp), %eax	# klen, tmp64
	movslq	%eax, %rcx	# tmp64, D.12710
	movl	-40(%rbp), %edi	# flags, tmp65
	movq	-32(%rbp), %rdx	# key, tmp66
	movq	-24(%rbp), %rax	# hv, tmp67
	movl	%esi, 8(%rsp)	# hash,
	movq	-48(%rbp), %rsi	# val, tmp68
	movq	%rsi, (%rsp)	# tmp68,
	movl	$9, %r9d	#,
	movl	%edi, %r8d	# tmp65,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp67,
	call	S_hv_fetch_common	#
	movq	%rax, -8(%rbp)	# tmp69, hek
	.loc 1 241 0
	cmpq	$0, -8(%rbp)	#, hek
	je	.L25	#,
	.loc 1 241 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hek, tmp70
	addq	$16, %rax	#, iftmp.5
	jmp	.L26	#
.L25:
	.loc 1 241 0 discriminator 2
	movl	$0, %eax	#, iftmp.5
.L26:
	.loc 1 242 0 is_stmt 1 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	Perl_hv_store_flags, .-Perl_hv_store_flags
	.globl	Perl_hv_store_ent
	.type	Perl_hv_store_ent, @function
Perl_hv_store_ent:
.LFB10:
	.loc 1 275 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -8(%rbp)	# hv, hv
	movq	%rsi, -16(%rbp)	# keysv, keysv
	movq	%rdx, -24(%rbp)	# val, val
	movl	%ecx, -28(%rbp)	# hash, hash
	.loc 1 276 0
	movq	-16(%rbp), %rsi	# keysv, tmp61
	movq	-8(%rbp), %rax	# hv, tmp62
	movl	-28(%rbp), %edx	# hash, tmp63
	movl	%edx, 8(%rsp)	# tmp63,
	movq	-24(%rbp), %rdx	# val, tmp64
	movq	%rdx, (%rsp)	# tmp64,
	movl	$1, %r9d	#,
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp62,
	call	S_hv_fetch_common	#
	.loc 1 277 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	Perl_hv_store_ent, .-Perl_hv_store_ent
	.globl	Perl_hv_exists
	.type	Perl_hv_exists, @function
Perl_hv_exists:
.LFB11:
	.loc 1 290 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -24(%rbp)	# hv, hv
	movq	%rsi, -32(%rbp)	# key, key
	movl	%edx, -36(%rbp)	# klen_i32, klen_i32
	.loc 1 294 0
	cmpl	$0, -36(%rbp)	#, klen_i32
	jns	.L31	#,
	.loc 1 295 0
	movl	-36(%rbp), %eax	# klen_i32, tmp64
	negl	%eax	# D.12713
	cltq
	movq	%rax, -8(%rbp)	# tmp65, klen
	.loc 1 296 0
	movl	$1, -12(%rbp)	#, flags
	jmp	.L32	#
.L31:
	.loc 1 298 0
	movl	-36(%rbp), %eax	# klen_i32, tmp67
	cltq
	movq	%rax, -8(%rbp)	# tmp66, klen
	.loc 1 299 0
	movl	$0, -12(%rbp)	#, flags
.L32:
	.loc 1 301 0
	movl	-12(%rbp), %esi	# flags, tmp68
	movq	-8(%rbp), %rcx	# klen, tmp69
	movq	-32(%rbp), %rdx	# key, tmp70
	movq	-24(%rbp), %rax	# hv, tmp71
	movl	$0, 8(%rsp)	#,
	movq	$0, (%rsp)	#,
	movl	$2, %r9d	#,
	movl	%esi, %r8d	# tmp68,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp71,
	call	S_hv_fetch_common	#
	.loc 1 302 0
	testq	%rax, %rax	# D.12714
	setne	%al	#, D.12715
	.loc 1 303 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	Perl_hv_exists, .-Perl_hv_exists
	.globl	Perl_hv_fetch
	.type	Perl_hv_fetch, @function
Perl_hv_fetch:
.LFB12:
	.loc 1 321 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -40(%rbp)	# hv, hv
	movq	%rsi, -48(%rbp)	# key, key
	movl	%edx, -52(%rbp)	# klen_i32, klen_i32
	movl	%ecx, -56(%rbp)	# lval, lval
	.loc 1 326 0
	cmpl	$0, -52(%rbp)	#, klen_i32
	jns	.L35	#,
	.loc 1 327 0
	movl	-52(%rbp), %eax	# klen_i32, tmp64
	negl	%eax	# D.12717
	cltq
	movq	%rax, -16(%rbp)	# tmp65, klen
	.loc 1 328 0
	movl	$1, -20(%rbp)	#, flags
	jmp	.L36	#
.L35:
	.loc 1 330 0
	movl	-52(%rbp), %eax	# klen_i32, tmp67
	cltq
	movq	%rax, -16(%rbp)	# tmp66, klen
	.loc 1 331 0
	movl	$0, -20(%rbp)	#, flags
.L36:
	.loc 1 333 0
	cmpl	$0, -56(%rbp)	#, lval
	je	.L37	#,
	.loc 1 333 0 is_stmt 0 discriminator 1
	movl	$12, %eax	#, iftmp.6
	jmp	.L38	#
.L37:
	.loc 1 333 0 discriminator 2
	movl	$8, %eax	#, iftmp.6
.L38:
	.loc 1 333 0 discriminator 3
	movl	-20(%rbp), %esi	# flags, tmp68
	movq	-16(%rbp), %rcx	# klen, tmp69
	movq	-48(%rbp), %rdx	# key, tmp70
	movq	-40(%rbp), %rdi	# hv, tmp71
	movl	$0, 8(%rsp)	#,
	movq	$0, (%rsp)	#,
	movl	%eax, %r9d	# iftmp.6,
	movl	%esi, %r8d	# tmp68,
	movl	$0, %esi	#,
	call	S_hv_fetch_common	#
	movq	%rax, -8(%rbp)	# tmp72, hek
	.loc 1 336 0 is_stmt 1 discriminator 3
	cmpq	$0, -8(%rbp)	#, hek
	je	.L39	#,
	.loc 1 336 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hek, tmp73
	addq	$16, %rax	#, iftmp.7
	jmp	.L40	#
.L39:
	.loc 1 336 0 discriminator 2
	movl	$0, %eax	#, iftmp.7
.L40:
	.loc 1 337 0 is_stmt 1 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	Perl_hv_fetch, .-Perl_hv_fetch
	.globl	Perl_hv_exists_ent
	.type	Perl_hv_exists_ent, @function
Perl_hv_exists_ent:
.LFB13:
	.loc 1 351 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -8(%rbp)	# hv, hv
	movq	%rsi, -16(%rbp)	# keysv, keysv
	movl	%edx, -20(%rbp)	# hash, hash
	.loc 1 352 0
	movq	-16(%rbp), %rsi	# keysv, tmp63
	movq	-8(%rbp), %rax	# hv, tmp64
	movl	-20(%rbp), %edx	# hash, tmp65
	movl	%edx, 8(%rsp)	# tmp65,
	movq	$0, (%rsp)	#,
	movl	$2, %r9d	#,
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp64,
	call	S_hv_fetch_common	#
	.loc 1 353 0
	testq	%rax, %rax	# D.12719
	setne	%al	#, D.12720
	.loc 1 354 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	Perl_hv_exists_ent, .-Perl_hv_exists_ent
	.globl	Perl_hv_fetch_ent
	.type	Perl_hv_fetch_ent, @function
Perl_hv_fetch_ent:
.LFB14:
	.loc 1 377 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -8(%rbp)	# hv, hv
	movq	%rsi, -16(%rbp)	# keysv, keysv
	movl	%edx, -20(%rbp)	# lval, lval
	movl	%ecx, %edx	# hash, hash
	.loc 1 378 0
	cmpl	$0, -20(%rbp)	#, lval
	je	.L45	#,
	.loc 1 378 0 is_stmt 0 discriminator 1
	movl	$4, %eax	#, iftmp.8
	jmp	.L46	#
.L45:
	.loc 1 378 0 discriminator 2
	movl	$0, %eax	#, iftmp.8
.L46:
	.loc 1 378 0 discriminator 3
	movq	-16(%rbp), %rsi	# keysv, tmp63
	movq	-8(%rbp), %rdi	# hv, tmp64
	movl	%edx, 8(%rsp)	# hash,
	movq	$0, (%rsp)	#,
	movl	%eax, %r9d	# iftmp.8,
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	call	S_hv_fetch_common	#
	.loc 1 380 0 is_stmt 1 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	Perl_hv_fetch_ent, .-Perl_hv_fetch_ent
	.section	.rodata
.LC3:
	.string	"access disallowed key '%_' in"
	.text
	.type	S_hv_fetch_common, @function
S_hv_fetch_common:
.LFB15:
	.loc 1 385 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$152, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -120(%rbp)	# hv, hv
	movq	%rsi, -128(%rbp)	# keysv, keysv
	movq	%rdx, -136(%rbp)	# key, key
	movq	%rcx, -144(%rbp)	# klen, klen
	movl	%r8d, -148(%rbp)	# flags, flags
	movl	%r9d, -152(%rbp)	# action, action
	movl	24(%rbp), %ebx	# hash, hash
	.loc 1 394 0
	cmpq	$0, -120(%rbp)	#, hv
	jne	.L49	#,
	.loc 1 395 0
	movl	$0, %eax	#, D.12723
	jmp	.L151	#
.L49:
	.loc 1 397 0
	cmpq	$0, -128(%rbp)	#, keysv
	je	.L51	#,
	.loc 1 398 0
	movl	-148(%rbp), %eax	# flags, tmp336
	andl	$256, %eax	#, D.12724
	testl	%eax, %eax	# D.12724
	je	.L52	#,
	.loc 1 399 0
	movq	-136(%rbp), %rax	# key, tmp337
	movq	%rax, %rdi	# tmp337,
	call	Perl_safesysfree	#
.L52:
	.loc 1 400 0
	movq	-128(%rbp), %rax	# keysv, tmp338
	movl	12(%rax), %eax	# keysv_40(D)->sv_flags, D.12725
	andl	$262144, %eax	#, D.12725
	testl	%eax, %eax	# D.12725
	je	.L53	#,
	.loc 1 400 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# keysv, tmp339
	movq	(%rax), %rax	# keysv_40(D)->sv_any, D.12726
	movq	8(%rax), %rax	# MEM[(struct XPV *)_46].xpv_cur, klen.10
	movq	%rax, -144(%rbp)	# klen.10, klen
	movq	-128(%rbp), %rax	# keysv, tmp340
	movq	(%rax), %rax	# keysv_40(D)->sv_any, D.12726
	movq	(%rax), %rax	# MEM[(struct XPV *)_48].xpv_pv, iftmp.9
	jmp	.L54	#
.L53:
	.loc 1 400 0 discriminator 2
	leaq	-144(%rbp), %rcx	#, tmp341
	movq	-128(%rbp), %rax	# keysv, tmp342
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp341,
	movq	%rax, %rdi	# tmp342,
	call	Perl_sv_2pv_flags	#
.L54:
	.loc 1 400 0 discriminator 1
	movq	%rax, -136(%rbp)	# iftmp.9, key
	.loc 1 401 0 is_stmt 1 discriminator 1
	movl	$0, -148(%rbp)	#, flags
	.loc 1 402 0 discriminator 1
	movq	-128(%rbp), %rax	# keysv, tmp343
	movl	12(%rax), %eax	# keysv_40(D)->sv_flags, D.12725
	andl	$536870912, %eax	#, D.12725
	testl	%eax, %eax	# D.12725
	setne	%al	#, D.12727
	movb	%al, -108(%rbp)	# is_utf8.11, is_utf8
	jmp	.L55	#
.L51:
	.loc 1 404 0
	movl	-148(%rbp), %eax	# flags, tmp344
	andl	$1, %eax	#, D.12724
	testl	%eax, %eax	# D.12724
	setne	%al	#, D.12727
	movb	%al, -108(%rbp)	# is_utf8.12, is_utf8
.L55:
	.loc 1 407 0
	movq	-120(%rbp), %rax	# hv, tmp345
	movq	(%rax), %rax	# hv_38(D)->sv_any, tmp346
	movq	%rax, -88(%rbp)	# tmp346, xhv
	.loc 1 408 0
	movq	-120(%rbp), %rax	# hv, tmp347
	movl	12(%rax), %eax	# hv_38(D)->sv_flags, D.12725
	andl	$57344, %eax	#, D.12725
	testl	%eax, %eax	# D.12725
	je	.L56	#,
	.loc 1 409 0
	movq	-120(%rbp), %rax	# hv, tmp348
	movl	12(%rax), %eax	# hv_38(D)->sv_flags, D.12725
	andl	$32768, %eax	#, D.12725
	testl	%eax, %eax	# D.12725
	je	.L57	#,
	.loc 1 409 0 is_stmt 0 discriminator 1
	movl	-152(%rbp), %eax	# action, tmp349
	andl	$3, %eax	#, D.12724
	testl	%eax, %eax	# D.12724
	jne	.L57	#,
	.loc 1 411 0 is_stmt 1
	movq	-120(%rbp), %rax	# hv, tmp350
	movl	$80, %esi	#,
	movq	%rax, %rdi	# tmp350,
	call	Perl_mg_find	#
	testq	%rax, %rax	# D.12728
	jne	.L58	#,
	.loc 1 411 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# hv, tmp351
	movl	12(%rax), %eax	# MEM[(struct SV *)hv_38(D)].sv_flags, D.12725
	andl	$8192, %eax	#, D.12725
	testl	%eax, %eax	# D.12725
	je	.L59	#,
.L58:
	.loc 1 412 0 is_stmt 1
	call	Perl_sv_newmortal	#
	movq	%rax, -80(%rbp)	# tmp352, sv
	.loc 1 417 0
	cmpq	$0, -128(%rbp)	#, keysv
	jne	.L60	#,
	.loc 1 418 0
	movq	-144(%rbp), %rdx	# klen, klen.13
	movq	-136(%rbp), %rax	# key, tmp353
	movq	%rdx, %rsi	# klen.13,
	movq	%rax, %rdi	# tmp353,
	call	Perl_newSVpvn	#
	movq	%rax, -128(%rbp)	# tmp354, keysv
	.loc 1 419 0
	movzbl	-108(%rbp), %eax	# is_utf8, is_utf8.14
	testb	%al, %al	# is_utf8.14
	je	.L62	#,
	.loc 1 420 0
	movq	-128(%rbp), %rax	# keysv, tmp355
	movl	12(%rax), %eax	# keysv_72->sv_flags, D.12725
	orl	$536870912, %eax	#, D.12725
	movl	%eax, %edx	# D.12725, D.12725
	movq	-128(%rbp), %rax	# keysv, tmp356
	movl	%edx, 12(%rax)	# D.12725, keysv_72->sv_flags
	jmp	.L62	#
.L60:
	.loc 1 423 0
	movq	-128(%rbp), %rax	# keysv, tmp357
	movq	%rax, %rdi	# tmp357,
	call	Perl_newSVsv	#
	movq	%rax, -128(%rbp)	# tmp358, keysv
.L62:
	.loc 1 425 0
	movq	-128(%rbp), %rdx	# keysv, tmp359
	movq	-80(%rbp), %rsi	# sv, tmp360
	movq	-120(%rbp), %rax	# hv, tmp361
	movl	$-2, %ecx	#,
	movq	%rax, %rdi	# tmp361,
	call	Perl_mg_copy	#
	.loc 1 428 0
	movq	PL_hv_fetch_ent_mh(%rip), %rax	# PL_hv_fetch_ent_mh, tmp362
	movq	%rax, -96(%rbp)	# tmp362, entry
	.loc 1 429 0
	cmpq	$0, -96(%rbp)	#, entry
	je	.L63	#,
	.loc 1 430 0
	movq	-96(%rbp), %rax	# entry, tmp363
	movq	(%rax), %rax	# entry_77->hent_next, PL_hv_fetch_ent_mh.15
	movq	%rax, PL_hv_fetch_ent_mh(%rip)	# PL_hv_fetch_ent_mh.15, PL_hv_fetch_ent_mh
	jmp	.L64	#
.L63:
.LBB2:
	.loc 1 433 0
	call	S_new_he	#
	movq	%rax, -96(%rbp)	# tmp364, entry
	.loc 1 434 0
	movl	$16, %edi	#,
	call	Perl_safesysmalloc	#
	movq	%rax, -72(%rbp)	# tmp365, k
	.loc 1 435 0
	movq	-96(%rbp), %rax	# entry, tmp366
	movq	-72(%rbp), %rdx	# k, tmp367
	movq	%rdx, 8(%rax)	# tmp367, entry_79->hent_hek
.L64:
.LBE2:
	.loc 1 437 0
	movq	-96(%rbp), %rax	# entry, tmp368
	movq	$0, (%rax)	#, entry_17->hent_next
	.loc 1 438 0
	movq	-96(%rbp), %rax	# entry, tmp369
	movq	8(%rax), %rax	# entry_17->hent_hek, D.12729
	movl	$-2, 4(%rax)	#, _81->hek_len
	movq	-96(%rbp), %rax	# entry, tmp370
	movq	8(%rax), %rax	# entry_17->hent_hek, D.12729
	leaq	8(%rax), %rdx	#, D.12730
	movq	-128(%rbp), %rax	# keysv, tmp371
	movq	%rax, (%rdx)	# tmp371, MEM[(struct SV * *)_83]
	.loc 1 439 0
	movq	-96(%rbp), %rax	# entry, tmp372
	movq	-80(%rbp), %rdx	# sv, tmp373
	movq	%rdx, 16(%rax)	# tmp373, entry_17->hent_val
	.loc 1 440 0
	movq	-80(%rbp), %rax	# sv, tmp374
	movl	$9, %esi	#,
	movq	%rax, %rdi	# tmp374,
	call	Perl_sv_upgrade	#
	.loc 1 441 0
	movq	-80(%rbp), %rax	# sv, tmp375
	movq	(%rax), %rax	# sv_70->sv_any, D.12726
	movb	$84, 80(%rax)	#, MEM[(struct XPVLV *)_84].xlv_type
	.loc 1 443 0
	movq	-80(%rbp), %rax	# sv, tmp376
	movq	(%rax), %rax	# sv_70->sv_any, D.12726
	movq	-96(%rbp), %rdx	# entry, tmp377
	movq	%rdx, 72(%rax)	# tmp377, MEM[(struct XPVLV *)_85].xlv_targ
	.loc 1 446 0
	movl	-148(%rbp), %eax	# flags, tmp378
	andl	$256, %eax	#, D.12724
	testl	%eax, %eax	# D.12724
	je	.L65	#,
	.loc 1 447 0
	movq	-136(%rbp), %rax	# key, tmp379
	movq	%rax, %rdi	# tmp379,
	call	Perl_safesysfree	#
.L65:
	.loc 1 449 0
	movq	-96(%rbp), %rax	# entry, D.12723
	jmp	.L151	#
.L59:
	.loc 1 411 0 discriminator 1
	jmp	.L56	#
.L57:
	.loc 1 482 0
	movq	-120(%rbp), %rax	# hv, tmp380
	movl	12(%rax), %eax	# hv_38(D)->sv_flags, D.12725
	andl	$32768, %eax	#, D.12725
	testl	%eax, %eax	# D.12725
	je	.L66	#,
	.loc 1 482 0 is_stmt 0 discriminator 1
	movl	-152(%rbp), %eax	# action, tmp381
	andl	$2, %eax	#, D.12724
	testl	%eax, %eax	# D.12724
	je	.L66	#,
	.loc 1 483 0 is_stmt 1
	movq	-120(%rbp), %rax	# hv, tmp382
	movl	$80, %esi	#,
	movq	%rax, %rdi	# tmp382,
	call	Perl_mg_find	#
	testq	%rax, %rax	# D.12728
	jne	.L67	#,
	.loc 1 483 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# hv, tmp383
	movl	12(%rax), %eax	# MEM[(struct SV *)hv_38(D)].sv_flags, D.12725
	andl	$8192, %eax	#, D.12725
	testl	%eax, %eax	# D.12725
	je	.L68	#,
.L67:
.LBB3:
	.loc 1 487 0 is_stmt 1
	call	Perl_sv_newmortal	#
	movq	%rax, -64(%rbp)	# tmp384, svret
	.loc 1 488 0
	call	Perl_sv_newmortal	#
	movq	%rax, -80(%rbp)	# tmp385, sv
	.loc 1 490 0
	cmpq	$0, -128(%rbp)	#, keysv
	jne	.L69	#,
	.loc 1 490 0 is_stmt 0 discriminator 1
	movzbl	-108(%rbp), %eax	# is_utf8, is_utf8.16
	testb	%al, %al	# is_utf8.16
	je	.L70	#,
.L69:
	.loc 1 491 0 is_stmt 1
	cmpq	$0, -128(%rbp)	#, keysv
	jne	.L71	#,
	.loc 1 492 0
	movq	-144(%rbp), %rdx	# klen, klen.17
	movq	-136(%rbp), %rax	# key, tmp386
	movq	%rdx, %rsi	# klen.17,
	movq	%rax, %rdi	# tmp386,
	call	Perl_newSVpvn	#
	movq	%rax, -128(%rbp)	# tmp387, keysv
	.loc 1 493 0
	movq	-128(%rbp), %rax	# keysv, tmp388
	movl	12(%rax), %eax	# keysv_100->sv_flags, D.12725
	orl	$536870912, %eax	#, D.12725
	movl	%eax, %edx	# D.12725, D.12725
	movq	-128(%rbp), %rax	# keysv, tmp389
	movl	%edx, 12(%rax)	# D.12725, keysv_100->sv_flags
	jmp	.L72	#
.L71:
	.loc 1 495 0
	movq	-128(%rbp), %rax	# keysv, tmp390
	movq	%rax, %rdi	# tmp390,
	call	Perl_newSVsv	#
	movq	%rax, -128(%rbp)	# tmp391, keysv
.L72:
	.loc 1 497 0
	movq	-128(%rbp), %rax	# keysv, tmp392
	movq	%rax, %rdi	# tmp392,
	call	Perl_sv_2mortal	#
	movq	%rax, %rdx	#, D.12731
	movq	-80(%rbp), %rsi	# sv, tmp393
	movq	-120(%rbp), %rax	# hv, tmp394
	movl	$-2, %ecx	#,
	movq	%rax, %rdi	# tmp394,
	call	Perl_mg_copy	#
	jmp	.L73	#
.L70:
	.loc 1 499 0
	movq	-144(%rbp), %rax	# klen, klen.18
	movl	%eax, %ecx	# klen.18, D.12724
	movq	-136(%rbp), %rdx	# key, tmp395
	movq	-80(%rbp), %rsi	# sv, tmp396
	movq	-120(%rbp), %rax	# hv, tmp397
	movq	%rax, %rdi	# tmp397,
	call	Perl_mg_copy	#
.L73:
	.loc 1 501 0
	movl	-148(%rbp), %eax	# flags, tmp398
	andl	$256, %eax	#, D.12724
	testl	%eax, %eax	# D.12724
	je	.L74	#,
	.loc 1 502 0
	movq	-136(%rbp), %rax	# key, tmp399
	movq	%rax, %rdi	# tmp399,
	call	Perl_safesysfree	#
.L74:
	.loc 1 503 0
	movq	-80(%rbp), %rax	# sv, tmp400
	movl	$112, %esi	#,
	movq	%rax, %rdi	# tmp400,
	call	Perl_mg_find	#
	movq	%rax, %rdx	#, D.12728
	movq	-64(%rbp), %rax	# svret, tmp401
	movq	%rdx, %rsi	# D.12728,
	movq	%rax, %rdi	# tmp401,
	call	Perl_magic_existspack	#
	.loc 1 507 0
	cmpq	$0, -64(%rbp)	#, svret
	je	.L75	#,
	.loc 1 507 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# svret, tmp402
	movl	12(%rax), %eax	# svret_94->sv_flags, D.12725
	andl	$262144, %eax	#, D.12725
	testl	%eax, %eax	# D.12725
	je	.L76	#,
	.loc 1 507 0 discriminator 3
	movq	-64(%rbp), %rax	# svret, tmp403
	movq	(%rax), %rax	# svret_94->sv_any, PL_Xpv.23
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.23, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.24
	testq	%rax, %rax	# PL_Xpv.24
	je	.L77	#,
	.loc 1 507 0 discriminator 5
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.25
	movq	8(%rax), %rax	# PL_Xpv.25_111->xpv_cur, D.12732
	cmpq	$1, %rax	#, D.12732
	ja	.L78	#,
	.loc 1 507 0 discriminator 8
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.26
	movq	8(%rax), %rax	# PL_Xpv.26_113->xpv_cur, D.12732
	testq	%rax, %rax	# D.12732
	je	.L77	#,
	.loc 1 507 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.27
	movq	(%rax), %rax	# PL_Xpv.27_115->xpv_pv, D.12733
	movzbl	(%rax), %eax	# *_116, D.12734
	cmpb	$48, %al	#, D.12734
	je	.L77	#,
.L78:
	.loc 1 507 0 discriminator 7
	movl	$1, %eax	#, iftmp.22
	jmp	.L79	#
.L77:
	.loc 1 507 0 discriminator 6
	movl	$0, %eax	#, iftmp.22
.L79:
	.loc 1 507 0 discriminator 9
	andl	$1, %eax	#, iftmp.21
	jmp	.L85	#
.L76:
	.loc 1 507 0 discriminator 4
	movq	-64(%rbp), %rax	# svret, tmp404
	movl	12(%rax), %eax	# svret_94->sv_flags, D.12725
	andl	$65536, %eax	#, D.12725
	testl	%eax, %eax	# D.12725
	je	.L81	#,
	.loc 1 507 0 discriminator 10
	movq	-64(%rbp), %rax	# svret, tmp405
	movq	(%rax), %rax	# svret_94->sv_any, D.12726
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_123].xiv_iv, D.12735
	testq	%rax, %rax	# D.12735
	setne	%al	#, iftmp.28
	jmp	.L85	#
.L81:
	.loc 1 507 0 discriminator 11
	movq	-64(%rbp), %rax	# svret, tmp406
	movl	12(%rax), %eax	# svret_94->sv_flags, D.12725
	andl	$131072, %eax	#, D.12725
	testl	%eax, %eax	# D.12725
	je	.L83	#,
	.loc 1 507 0 discriminator 12
	movq	-64(%rbp), %rax	# svret, tmp407
	movq	(%rax), %rax	# svret_94->sv_any, D.12726
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_128].xnv_nv, D.12736
	xorpd	%xmm1, %xmm1	# tmp409
	ucomisd	%xmm1, %xmm0	# tmp409, D.12736
	setp	%dl	#, tmp408
	movl	$1, %eax	#, tmp411
	xorpd	%xmm1, %xmm1	# tmp410
	ucomisd	%xmm1, %xmm0	# tmp410, D.12736
	cmove	%edx, %eax	# tmp408,, iftmp.29
	jmp	.L85	#
.L83:
	.loc 1 507 0 discriminator 13
	movq	-64(%rbp), %rax	# svret, tmp412
	movq	%rax, %rdi	# tmp412,
	call	Perl_sv_2bool	#
	testb	%al, %al	# D.12734
	setne	%al	#, iftmp.29
	jmp	.L85	#
.L75:
	.loc 1 507 0 discriminator 2
	movl	$0, %eax	#, iftmp.20
.L85:
	.loc 1 507 0 discriminator 16
	testb	%al, %al	# iftmp.20
	je	.L86	#,
	.loc 1 507 0 discriminator 1
	movq	-120(%rbp), %rax	# hv, iftmp.19
	jmp	.L87	#
.L86:
	.loc 1 507 0 discriminator 2
	movl	$0, %eax	#, iftmp.19
.L87:
	.loc 1 507 0 discriminator 3
	jmp	.L151	#
.L68:
.LBE3:
	.loc 1 483 0 is_stmt 1 discriminator 1
	jmp	.L56	#
.L66:
	.loc 1 527 0
	movl	-152(%rbp), %eax	# action, tmp413
	andl	$1, %eax	#, D.12724
	testl	%eax, %eax	# D.12724
	je	.L56	#,
.LBB4:
	.loc 1 530 0
	leaq	-106(%rbp), %rdx	#, tmp414
	leaq	-107(%rbp), %rcx	#, tmp415
	movq	-120(%rbp), %rax	# hv, tmp416
	movq	%rcx, %rsi	# tmp415,
	movq	%rax, %rdi	# tmp416,
	call	S_hv_magic_check	#
	.loc 1 531 0
	movzbl	-107(%rbp), %eax	# needs_copy, needs_copy.30
	testb	%al, %al	# needs_copy.30
	je	.L88	#,
.LBB5:
	.loc 1 532 0
	movzbl	PL_tainted(%rip), %eax	# PL_tainted, tmp417
	movb	%al, -105(%rbp)	# tmp417, save_taint
	.loc 1 533 0
	cmpq	$0, -128(%rbp)	#, keysv
	jne	.L89	#,
	.loc 1 533 0 is_stmt 0 discriminator 1
	movzbl	-108(%rbp), %eax	# is_utf8, is_utf8.31
	testb	%al, %al	# is_utf8.31
	je	.L90	#,
.L89:
	.loc 1 534 0 is_stmt 1
	cmpq	$0, -128(%rbp)	#, keysv
	jne	.L91	#,
	.loc 1 535 0
	movq	-144(%rbp), %rdx	# klen, klen.32
	movq	-136(%rbp), %rax	# key, tmp418
	movq	%rdx, %rsi	# klen.32,
	movq	%rax, %rdi	# tmp418,
	call	Perl_newSVpvn	#
	movq	%rax, -128(%rbp)	# tmp419, keysv
	.loc 1 536 0
	movq	-128(%rbp), %rax	# keysv, tmp420
	movl	12(%rax), %eax	# keysv_148->sv_flags, D.12725
	orl	$536870912, %eax	#, D.12725
	movl	%eax, %edx	# D.12725, D.12725
	movq	-128(%rbp), %rax	# keysv, tmp421
	movl	%edx, 12(%rax)	# D.12725, keysv_148->sv_flags
.L91:
	.loc 1 538 0
	movzbl	PL_tainting(%rip), %eax	# PL_tainting, PL_tainting.33
	testb	%al, %al	# PL_tainting.33
	je	.L92	#,
	.loc 1 539 0
	movq	-128(%rbp), %rax	# keysv, tmp422
	movl	12(%rax), %eax	# keysv_3->sv_flags, D.12725
	andl	$57344, %eax	#, D.12725
	testl	%eax, %eax	# D.12725
	je	.L93	#,
	.loc 1 539 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# keysv, tmp423
	movq	%rax, %rdi	# tmp423,
	call	Perl_sv_tainted	#
	testb	%al, %al	# D.12734
	je	.L93	#,
	.loc 1 539 0 discriminator 3
	movl	$1, %eax	#, iftmp.34
	jmp	.L94	#
.L93:
	.loc 1 539 0 discriminator 2
	movl	$0, %eax	#, iftmp.34
.L94:
	.loc 1 539 0 discriminator 4
	movb	%al, PL_tainted(%rip)	# PL_tainted.35, PL_tainted
.L92:
	.loc 1 540 0 is_stmt 1
	movq	-128(%rbp), %rax	# keysv, tmp424
	movq	%rax, %rdi	# tmp424,
	call	Perl_newSVsv	#
	movq	%rax, %rdi	# D.12731,
	call	Perl_sv_2mortal	#
	movq	%rax, -128(%rbp)	# tmp425, keysv
	.loc 1 541 0
	movq	-128(%rbp), %rdx	# keysv, tmp426
	movq	-120(%rbp), %rax	# hv, tmp427
	movl	$-2, %ecx	#,
	movq	16(%rbp), %rsi	# val,
	movq	%rax, %rdi	# tmp427,
	call	Perl_mg_copy	#
	jmp	.L95	#
.L90:
	.loc 1 543 0
	movq	-144(%rbp), %rax	# klen, klen.36
	movl	%eax, %ecx	# klen.36, D.12724
	movq	-136(%rbp), %rdx	# key, tmp428
	movq	-120(%rbp), %rax	# hv, tmp429
	movq	16(%rbp), %rsi	# val,
	movq	%rax, %rdi	# tmp429,
	call	Perl_mg_copy	#
.L95:
	.loc 1 546 0
	cmpb	$0, -105(%rbp)	#, save_taint
	je	.L96	#,
	.loc 1 546 0 is_stmt 0 discriminator 1
	movb	$1, PL_tainted(%rip)	#, PL_tainted
.L96:
	.loc 1 547 0 is_stmt 1
	movq	-88(%rbp), %rax	# xhv, tmp430
	movq	(%rax), %rax	# xhv_60->xhv_array, D.12733
	testq	%rax, %rax	# D.12733
	jne	.L88	#,
	.loc 1 547 0 is_stmt 0 discriminator 1
	movzbl	-106(%rbp), %eax	# needs_store, needs_store.37
	testb	%al, %al	# needs_store.37
	jne	.L88	#,
	.loc 1 548 0 is_stmt 1
	movl	-148(%rbp), %eax	# flags, tmp431
	andl	$256, %eax	#, D.12724
	testl	%eax, %eax	# D.12724
	je	.L97	#,
	.loc 1 549 0
	movq	-136(%rbp), %rax	# key, tmp432
	movq	%rax, %rdi	# tmp432,
	call	Perl_safesysfree	#
.L97:
	.loc 1 550 0
	movl	$0, %eax	#, D.12723
	jmp	.L151	#
.L88:
.L56:
.LBE5:
.LBE4:
	.loc 1 573 0
	movq	-88(%rbp), %rax	# xhv, tmp433
	movq	(%rax), %rax	# xhv_60->xhv_array, D.12733
	testq	%rax, %rax	# D.12733
	jne	.L98	#,
	.loc 1 574 0
	movl	-152(%rbp), %eax	# action, tmp434
	andl	$5, %eax	#, D.12724
	testl	%eax, %eax	# D.12724
	je	.L99	#,
	.loc 1 579 0
	movq	-88(%rbp), %rax	# xhv, tmp435
	movq	16(%rax), %rax	# xhv_60->xhv_max, D.12732
	addq	$1, %rax	#, D.12732
	cmpq	$63, %rax	#, D.12732
	ja	.L100	#,
	.loc 1 579 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# xhv, tmp436
	movq	16(%rax), %rax	# xhv_60->xhv_max, D.12732
	addq	$1, %rax	#, D.12732
	salq	$3, %rax	#, iftmp.38
	jmp	.L101	#
.L100:
	.loc 1 579 0 discriminator 2
	movq	-88(%rbp), %rax	# xhv, tmp437
	movq	16(%rax), %rax	# xhv_60->xhv_max, D.12732
	addq	$1, %rax	#, D.12732
	salq	$4, %rax	#, D.12732
	subq	$16, %rax	#, iftmp.38
.L101:
	.loc 1 579 0 discriminator 3
	movq	%rax, %rdi	# iftmp.38,
	call	Perl_safesysmalloc	#
	movq	-88(%rbp), %rdx	# xhv, tmp438
	movq	%rax, (%rdx)	# D.12726, xhv_60->xhv_array
	movq	-88(%rbp), %rax	# xhv, tmp439
	movq	16(%rax), %rax	# xhv_60->xhv_max, D.12732
	addq	$1, %rax	#, D.12732
	cmpq	$63, %rax	#, D.12732
	ja	.L102	#,
	.loc 1 579 0 discriminator 1
	movq	-88(%rbp), %rax	# xhv, tmp440
	movq	16(%rax), %rax	# xhv_60->xhv_max, D.12732
	addq	$1, %rax	#, D.12732
	salq	$3, %rax	#, iftmp.39
	jmp	.L103	#
.L102:
	.loc 1 579 0 discriminator 2
	movq	-88(%rbp), %rax	# xhv, tmp441
	movq	16(%rax), %rax	# xhv_60->xhv_max, D.12732
	addq	$1, %rax	#, D.12732
	salq	$4, %rax	#, D.12732
	subq	$16, %rax	#, iftmp.39
.L103:
	movq	-88(%rbp), %rdx	# xhv, tmp442
	movq	(%rdx), %rcx	# xhv_60->xhv_array, D.12733
	movq	%rax, %rdx	# iftmp.39,
	movl	$0, %esi	#,
	movq	%rcx, %rdi	# D.12733,
	call	memset	#
	jmp	.L98	#
.L99:
	.loc 1 590 0 is_stmt 1
	movl	-148(%rbp), %eax	# flags, tmp443
	andl	$256, %eax	#, D.12724
	testl	%eax, %eax	# D.12724
	je	.L104	#,
	.loc 1 591 0
	movq	-136(%rbp), %rax	# key, tmp444
	movq	%rax, %rdi	# tmp444,
	call	Perl_safesysfree	#
.L104:
	.loc 1 593 0
	movl	$0, %eax	#, D.12723
	jmp	.L151	#
.L98:
	.loc 1 597 0
	movzbl	-108(%rbp), %eax	# is_utf8, is_utf8.40
	testb	%al, %al	# is_utf8.40
	je	.L105	#,
.LBB6:
	.loc 1 598 0
	movq	-136(%rbp), %rax	# key, tmp445
	movq	%rax, -56(%rbp)	# tmp445, keysave
	.loc 1 599 0
	leaq	-108(%rbp), %rdx	#, tmp446
	leaq	-144(%rbp), %rcx	#, tmp447
	movq	-136(%rbp), %rax	# key, tmp448
	movq	%rcx, %rsi	# tmp447,
	movq	%rax, %rdi	# tmp448,
	call	Perl_bytes_from_utf8	#
	movq	%rax, -136(%rbp)	# tmp449, key
	.loc 1 600 0
	movzbl	-108(%rbp), %eax	# is_utf8, is_utf8.41
	testb	%al, %al	# is_utf8.41
	je	.L106	#,
	.loc 1 601 0
	orl	$1, -148(%rbp)	#, flags
	jmp	.L107	#
.L106:
	.loc 1 603 0
	andl	$-2, -148(%rbp)	#, flags
.L107:
	.loc 1 604 0
	movq	-136(%rbp), %rax	# key, tmp450
	cmpq	-56(%rbp), %rax	# keysave, tmp450
	je	.L105	#,
	.loc 1 605 0
	movl	-148(%rbp), %eax	# flags, tmp451
	andl	$256, %eax	#, D.12724
	testl	%eax, %eax	# D.12724
	je	.L108	#,
	.loc 1 606 0
	movq	-56(%rbp), %rax	# keysave, tmp452
	movq	%rax, %rdi	# tmp452,
	call	Perl_safesysfree	#
.L108:
	.loc 1 607 0
	orl	$258, -148(%rbp)	#, flags
.L105:
.LBE6:
	.loc 1 611 0
	movq	-120(%rbp), %rax	# hv, tmp453
	movl	12(%rax), %eax	# hv_38(D)->sv_flags, D.12725
	andl	$268435456, %eax	#, D.12725
	testl	%eax, %eax	# D.12725
	je	.L109	#,
.LBB7:
	.loc 1 612 0
	movq	-136(%rbp), %rbx	# key, s_PeRlHaSh_tmp
	movq	%rbx, %r13	# s_PeRlHaSh_tmp, s_PeRlHaSh
	movq	-144(%rbp), %rax	# klen, klen.42
	movl	%eax, %r12d	# klen.42, i_PeRlHaSh
	movq	PL_rehash_seed(%rip), %rax	# PL_rehash_seed, PL_rehash_seed.43
	movl	%eax, %ebx	# PL_rehash_seed.43, hash_PeRlHaSh
	jmp	.L110	#
.L111:
	.loc 1 612 0 is_stmt 0 discriminator 2
	movq	%r13, %rax	# s_PeRlHaSh, s_PeRlHaSh.44
	leaq	1(%rax), %r13	#, s_PeRlHaSh
	movzbl	(%rax), %eax	# *s_PeRlHaSh.44_206, D.12737
	movzbl	%al, %eax	# D.12737, D.12725
	addl	%eax, %ebx	# D.12725, hash_PeRlHaSh
	movl	%ebx, %eax	# hash_PeRlHaSh, D.12725
	sall	$10, %eax	#, D.12725
	addl	%eax, %ebx	# D.12725, hash_PeRlHaSh
	movl	%ebx, %eax	# hash_PeRlHaSh, D.12725
	shrl	$6, %eax	#, D.12725
	xorl	%eax, %ebx	# D.12725, hash_PeRlHaSh
.L110:
	.loc 1 612 0 discriminator 1
	movl	%r12d, %eax	# i_PeRlHaSh, i_PeRlHaSh.45
	leal	-1(%rax), %r12d	#, i_PeRlHaSh
	testl	%eax, %eax	# i_PeRlHaSh.45
	jne	.L111	#,
	.loc 1 612 0 discriminator 3
	leal	0(,%rbx,8), %eax	#, D.12725
	addl	%eax, %ebx	# D.12725, hash_PeRlHaSh
	movl	%ebx, %eax	# hash_PeRlHaSh, D.12725
	shrl	$11, %eax	#, D.12725
	xorl	%eax, %ebx	# D.12725, hash_PeRlHaSh
	movl	%ebx, %eax	# hash_PeRlHaSh, D.12725
	sall	$15, %eax	#, D.12725
	addl	%eax, %ebx	# D.12725, hash
.LBE7:
	.loc 1 618 0 is_stmt 1 discriminator 3
	orl	$4, -148(%rbp)	#, flags
	jmp	.L112	#
.L109:
	.loc 1 619 0
	testl	%ebx, %ebx	# hash
	jne	.L112	#,
.LBB8:
	.loc 1 627 0
	movq	-136(%rbp), %rbx	# key, s_PeRlHaSh_tmp
	movq	%rbx, %r13	# s_PeRlHaSh_tmp, s_PeRlHaSh
	movq	-144(%rbp), %rax	# klen, klen.46
	movl	%eax, %r12d	# klen.46, i_PeRlHaSh
	movl	$0, %ebx	#, hash_PeRlHaSh
	jmp	.L113	#
.L114:
	.loc 1 627 0 is_stmt 0 discriminator 2
	movq	%r13, %rax	# s_PeRlHaSh, s_PeRlHaSh.47
	leaq	1(%rax), %r13	#, s_PeRlHaSh
	movzbl	(%rax), %eax	# *s_PeRlHaSh.47_231, D.12737
	movzbl	%al, %eax	# D.12737, D.12725
	addl	%eax, %ebx	# D.12725, hash_PeRlHaSh
	movl	%ebx, %eax	# hash_PeRlHaSh, D.12725
	sall	$10, %eax	#, D.12725
	addl	%eax, %ebx	# D.12725, hash_PeRlHaSh
	movl	%ebx, %eax	# hash_PeRlHaSh, D.12725
	shrl	$6, %eax	#, D.12725
	xorl	%eax, %ebx	# D.12725, hash_PeRlHaSh
.L113:
	.loc 1 627 0 discriminator 1
	movl	%r12d, %eax	# i_PeRlHaSh, i_PeRlHaSh.48
	leal	-1(%rax), %r12d	#, i_PeRlHaSh
	testl	%eax, %eax	# i_PeRlHaSh.48
	jne	.L114	#,
	.loc 1 627 0 discriminator 3
	leal	0(,%rbx,8), %eax	#, D.12725
	addl	%eax, %ebx	# D.12725, hash_PeRlHaSh
	movl	%ebx, %eax	# hash_PeRlHaSh, D.12725
	shrl	$11, %eax	#, D.12725
	xorl	%eax, %ebx	# D.12725, hash_PeRlHaSh
	movl	%ebx, %eax	# hash_PeRlHaSh, D.12725
	sall	$15, %eax	#, D.12725
	addl	%eax, %ebx	# D.12725, hash
.L112:
.LBE8:
	.loc 1 631 0 is_stmt 1
	movl	-148(%rbp), %eax	# flags, tmp457
	movzbl	%al, %eax	# tmp457, tmp456
	movl	%eax, -100(%rbp)	# tmp456, masked_flags
	.loc 1 632 0
	movl	$0, -104(%rbp)	#, n_links
	.loc 1 640 0
	movq	-88(%rbp), %rax	# xhv, tmp458
	movq	(%rax), %rdx	# xhv_60->xhv_array, D.12733
	movq	-88(%rbp), %rax	# xhv, tmp459
	movq	16(%rax), %rax	# xhv_60->xhv_max, D.12732
	andl	%ebx, %eax	# hash, D.12725
	movl	%eax, %eax	# D.12725, D.12732
	salq	$3, %rax	#, D.12732
	addq	%rdx, %rax	# D.12733, D.12739
	movq	(%rax), %rax	# *_255, tmp460
	movq	%rax, -96(%rbp)	# tmp460, entry
	.loc 1 642 0
	jmp	.L115	#
.L134:
	.loc 1 643 0
	movq	-96(%rbp), %rax	# entry, tmp461
	movq	8(%rax), %rax	# entry_18->hent_hek, D.12729
	testq	%rax, %rax	# D.12729
	jne	.L116	#,
	.loc 1 644 0
	jmp	.L117	#
.L116:
	.loc 1 645 0
	movq	-96(%rbp), %rax	# entry, tmp462
	movq	8(%rax), %rax	# entry_18->hent_hek, D.12729
	movl	(%rax), %eax	# _258->hek_hash, D.12725
	cmpl	%ebx, %eax	# hash, D.12725
	je	.L118	#,
	.loc 1 646 0
	jmp	.L117	#
.L118:
	.loc 1 647 0
	movq	-96(%rbp), %rax	# entry, tmp463
	movq	8(%rax), %rax	# entry_18->hent_hek, D.12729
	movl	4(%rax), %edx	# _260->hek_len, D.12724
	movq	-144(%rbp), %rax	# klen, klen.49
	cmpl	%eax, %edx	# D.12724, D.12724
	je	.L119	#,
	.loc 1 648 0
	jmp	.L117	#
.L119:
	.loc 1 649 0
	movq	-96(%rbp), %rax	# entry, tmp464
	movq	8(%rax), %rax	# entry_18->hent_hek, D.12729
	addq	$8, %rax	#, D.12730
	cmpq	-136(%rbp), %rax	# key, D.12730
	je	.L120	#,
	.loc 1 649 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rdx	# klen, klen.50
	movq	-96(%rbp), %rax	# entry, tmp465
	movq	8(%rax), %rax	# entry_18->hent_hek, D.12729
	leaq	8(%rax), %rcx	#, D.12730
	movq	-136(%rbp), %rax	# key, tmp466
	movq	%rax, %rsi	# tmp466,
	movq	%rcx, %rdi	# D.12730,
	call	memcmp	#
	testl	%eax, %eax	# D.12724
	je	.L120	#,
	.loc 1 650 0 is_stmt 1
	jmp	.L117	#
.L120:
	.loc 1 651 0
	movq	-96(%rbp), %rax	# entry, tmp467
	movq	8(%rax), %rdx	# entry_18->hent_hek, D.12729
	movq	-96(%rbp), %rax	# entry, tmp468
	movq	8(%rax), %rax	# entry_18->hent_hek, D.12729
	movl	4(%rax), %eax	# _271->hek_len, D.12724
	cltq
	addq	$1, %rax	#, D.12740
	addq	%rdx, %rax	# D.12729, tmp469
	addq	$8, %rax	#, D.12733
	movzbl	(%rax), %eax	# MEM[(unsigned char *)_275], D.12737
	movzbl	%al, %eax	# D.12737, D.12724
	xorl	-100(%rbp), %eax	# masked_flags, D.12724
	andl	$1, %eax	#, D.12724
	testl	%eax, %eax	# D.12724
	je	.L121	#,
	.loc 1 652 0
	jmp	.L117	#
.L121:
	.loc 1 654 0
	movl	-152(%rbp), %eax	# action, tmp470
	andl	$5, %eax	#, D.12724
	testl	%eax, %eax	# D.12724
	je	.L122	#,
	.loc 1 655 0
	movq	-96(%rbp), %rax	# entry, tmp471
	movq	8(%rax), %rdx	# entry_18->hent_hek, D.12729
	movq	-96(%rbp), %rax	# entry, tmp472
	movq	8(%rax), %rax	# entry_18->hent_hek, D.12729
	movl	4(%rax), %eax	# _282->hek_len, D.12724
	cltq
	addq	$1, %rax	#, D.12740
	addq	%rdx, %rax	# D.12729, tmp473
	addq	$8, %rax	#, D.12733
	movzbl	(%rax), %eax	# MEM[(unsigned char *)_286], D.12737
	movzbl	%al, %eax	# D.12737, D.12724
	cmpl	-100(%rbp), %eax	# masked_flags, D.12724
	je	.L123	#,
	.loc 1 660 0
	movq	-120(%rbp), %rax	# hv, tmp474
	movl	12(%rax), %eax	# hv_38(D)->sv_flags, D.12725
	andl	$536870912, %eax	#, D.12725
	testl	%eax, %eax	# D.12725
	je	.L124	#,
.LBB9:
	.loc 1 664 0
	movq	-144(%rbp), %rax	# klen, klen.51
	movl	%eax, %esi	# klen.51, D.12724
	movl	-100(%rbp), %edx	# masked_flags, tmp475
	movq	-136(%rbp), %rax	# key, tmp476
	movl	%edx, %ecx	# tmp475,
	movl	%ebx, %edx	# hash,
	movq	%rax, %rdi	# tmp476,
	call	S_share_hek_flags	#
	movq	%rax, -48(%rbp)	# tmp477, new_hek
	.loc 1 666 0
	movq	-96(%rbp), %rax	# entry, tmp478
	movq	8(%rax), %rax	# entry_18->hent_hek, D.12729
	movq	%rax, %rdi	# D.12729,
	call	Perl_unshare_hek	#
	.loc 1 667 0
	movq	-96(%rbp), %rax	# entry, tmp479
	movq	-48(%rbp), %rdx	# new_hek, tmp480
	movq	%rdx, 8(%rax)	# tmp480, entry_18->hent_hek
.LBE9:
	jmp	.L125	#
.L124:
	.loc 1 670 0
	movq	-96(%rbp), %rax	# entry, tmp481
	movq	8(%rax), %rdx	# entry_18->hent_hek, D.12729
	movq	-96(%rbp), %rax	# entry, tmp482
	movq	8(%rax), %rax	# entry_18->hent_hek, D.12729
	movl	4(%rax), %eax	# _296->hek_len, D.12724
	cltq
	addq	$1, %rax	#, D.12740
	addq	%rdx, %rax	# D.12729, tmp483
	leaq	8(%rax), %rdx	#, D.12733
	movl	-100(%rbp), %eax	# masked_flags, tmp484
	movb	%al, (%rdx)	# D.12737, MEM[(unsigned char *)_300]
.L125:
	.loc 1 671 0
	movl	-100(%rbp), %eax	# masked_flags, tmp485
	andl	$251, %eax	#, D.12724
	testl	%eax, %eax	# D.12724
	je	.L123	#,
	.loc 1 672 0
	movq	-120(%rbp), %rax	# hv, tmp486
	movl	12(%rax), %eax	# hv_38(D)->sv_flags, D.12725
	orl	$-2147483648, %eax	#, D.12725
	movl	%eax, %edx	# D.12725, D.12725
	movq	-120(%rbp), %rax	# hv, tmp487
	movl	%edx, 12(%rax)	# D.12725, hv_38(D)->sv_flags
.L123:
	.loc 1 674 0
	movq	-96(%rbp), %rax	# entry, tmp488
	movq	16(%rax), %rax	# entry_18->hent_val, D.12731
	cmpq	$PL_sv_placeholder, %rax	#, D.12731
	jne	.L126	#,
	.loc 1 676 0
	movl	-152(%rbp), %eax	# action, tmp489
	andl	$4, %eax	#, D.12724
	testl	%eax, %eax	# D.12724
	je	.L127	#,
	.loc 1 677 0
	movq	-120(%rbp), %rax	# hv, tmp490
	movl	12(%rax), %eax	# hv_38(D)->sv_flags, D.12725
	andl	$57344, %eax	#, D.12725
	testl	%eax, %eax	# D.12725
	je	.L128	#,
	.loc 1 687 0
	jmp	.L129	#
.L128:
	.loc 1 690 0
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, 16(%rbp)	# tmp491, val
	.loc 1 691 0
	movq	-88(%rbp), %rax	# xhv, tmp492
	movsd	32(%rax), %xmm0	# xhv_60->xnv_nv, D.12736
	movsd	.LC2(%rip), %xmm1	#, tmp493
	subsd	%xmm1, %xmm0	# tmp493, D.12736
	movq	-88(%rbp), %rax	# xhv, tmp494
	movsd	%xmm0, 32(%rax)	# D.12736, xhv_60->xnv_nv
	jmp	.L130	#
.L127:
	.loc 1 694 0
	cmpq	$PL_sv_placeholder, 16(%rbp)	#, val
	je	.L130	#,
	.loc 1 695 0
	movq	-88(%rbp), %rax	# xhv, tmp495
	movsd	32(%rax), %xmm0	# xhv_60->xnv_nv, D.12736
	movsd	.LC2(%rip), %xmm1	#, tmp496
	subsd	%xmm1, %xmm0	# tmp496, D.12736
	movq	-88(%rbp), %rax	# xhv, tmp497
	movsd	%xmm0, 32(%rax)	# D.12736, xhv_60->xnv_nv
.L130:
	.loc 1 697 0 discriminator 3
	movq	-96(%rbp), %rax	# entry, tmp498
	movq	16(%rbp), %rdx	# val, tmp499
	movq	%rdx, 16(%rax)	# tmp499, entry_18->hent_val
	jmp	.L132	#
.L126:
	.loc 1 698 0
	movl	-152(%rbp), %eax	# action, tmp500
	andl	$1, %eax	#, D.12724
	testl	%eax, %eax	# D.12724
	je	.L132	#,
	.loc 1 699 0
	movq	-96(%rbp), %rax	# entry, tmp501
	movq	16(%rax), %rax	# entry_18->hent_val, D.12731
	movq	%rax, %rdi	# D.12731,
	call	Perl_sv_free	#
	.loc 1 700 0
	movq	-96(%rbp), %rax	# entry, tmp502
	movq	16(%rbp), %rdx	# val, tmp503
	movq	%rdx, 16(%rax)	# tmp503, entry_18->hent_val
	jmp	.L132	#
.L122:
	.loc 1 702 0
	movq	-96(%rbp), %rax	# entry, tmp504
	movq	16(%rax), %rax	# entry_18->hent_val, D.12731
	cmpq	$PL_sv_placeholder, %rax	#, D.12731
	jne	.L132	#,
	.loc 1 705 0
	jmp	.L129	#
.L132:
	.loc 1 707 0
	movl	-148(%rbp), %eax	# flags, tmp505
	andl	$256, %eax	#, D.12724
	testl	%eax, %eax	# D.12724
	je	.L133	#,
	.loc 1 708 0
	movq	-136(%rbp), %rax	# key, tmp506
	movq	%rax, %rdi	# tmp506,
	call	Perl_safesysfree	#
.L133:
	.loc 1 709 0
	movq	-96(%rbp), %rax	# entry, D.12723
	jmp	.L151	#
.L117:
	.loc 1 642 0
	addl	$1, -104(%rbp)	#, n_links
	movq	-96(%rbp), %rax	# entry, tmp507
	movq	(%rax), %rax	# entry_18->hent_next, tmp508
	movq	%rax, -96(%rbp)	# tmp508, entry
.L115:
	.loc 1 642 0 is_stmt 0 discriminator 1
	cmpq	$0, -96(%rbp)	#, entry
	jne	.L134	#,
.L129:
	.loc 1 725 0 is_stmt 1
	cmpq	$0, -96(%rbp)	#, entry
	jne	.L135	#,
	.loc 1 725 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# hv, tmp509
	movl	12(%rax), %eax	# hv_38(D)->sv_flags, D.12725
	andl	$8388608, %eax	#, D.12725
	testl	%eax, %eax	# D.12725
	je	.L135	#,
	movl	-152(%rbp), %eax	# action, tmp510
	andl	$2, %eax	#, D.12724
	testl	%eax, %eax	# D.12724
	jne	.L135	#,
	.loc 1 726 0 is_stmt 1
	movq	-144(%rbp), %rax	# klen, klen.52
	movl	%eax, %edx	# klen.52, D.12724
	movq	-136(%rbp), %rsi	# key, tmp511
	movl	-148(%rbp), %eax	# flags, tmp512
	movl	$.LC3, %ecx	#,
	movl	%eax, %edi	# tmp512,
	call	S_hv_notallowed	#
.L135:
	.loc 1 730 0
	movl	-152(%rbp), %eax	# action, tmp513
	andl	$5, %eax	#, D.12724
	testl	%eax, %eax	# D.12724
	jne	.L136	#,
	.loc 1 732 0
	movl	-148(%rbp), %eax	# flags, tmp514
	andl	$256, %eax	#, D.12724
	testl	%eax, %eax	# D.12724
	je	.L137	#,
	.loc 1 733 0
	movq	-136(%rbp), %rax	# key, tmp515
	movq	%rax, %rdi	# tmp515,
	call	Perl_safesysfree	#
.L137:
	.loc 1 734 0
	movl	$0, %eax	#, D.12723
	jmp	.L151	#
.L136:
	.loc 1 736 0
	movl	-152(%rbp), %eax	# action, tmp516
	andl	$4, %eax	#, D.12724
	testl	%eax, %eax	# D.12724
	je	.L138	#,
	.loc 1 737 0
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, 16(%rbp)	# tmp517, val
	.loc 1 738 0
	movq	-120(%rbp), %rax	# hv, tmp518
	movl	12(%rax), %eax	# hv_38(D)->sv_flags, D.12725
	andl	$57344, %eax	#, D.12725
	testl	%eax, %eax	# D.12725
	je	.L138	#,
	.loc 1 743 0
	movq	-144(%rbp), %rcx	# klen, klen.53
	movl	-148(%rbp), %r8d	# flags, tmp519
	movq	-136(%rbp), %rdx	# key, tmp520
	movq	-128(%rbp), %rsi	# keysv, tmp521
	movq	-120(%rbp), %rax	# hv, tmp522
	movl	%ebx, 8(%rsp)	# hash,
	movq	16(%rbp), %rdi	# val, tmp523
	movq	%rdi, (%rsp)	# tmp523,
	movl	$1, %r9d	#,
	movq	%rax, %rdi	# tmp522,
	call	S_hv_fetch_common	#
	jmp	.L151	#
.L138:
	.loc 1 752 0
	movq	-88(%rbp), %rax	# xhv, tmp524
	movq	(%rax), %rax	# xhv_60->xhv_array, D.12733
	testq	%rax, %rax	# D.12733
	jne	.L139	#,
	.loc 1 756 0
	movq	-88(%rbp), %rax	# xhv, tmp525
	movq	16(%rax), %rax	# xhv_60->xhv_max, D.12732
	addq	$1, %rax	#, D.12732
	cmpq	$63, %rax	#, D.12732
	ja	.L140	#,
	.loc 1 756 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# xhv, tmp526
	movq	16(%rax), %rax	# xhv_60->xhv_max, D.12732
	addq	$1, %rax	#, D.12732
	salq	$3, %rax	#, iftmp.54
	jmp	.L141	#
.L140:
	.loc 1 756 0 discriminator 2
	movq	-88(%rbp), %rax	# xhv, tmp527
	movq	16(%rax), %rax	# xhv_60->xhv_max, D.12732
	addq	$1, %rax	#, D.12732
	salq	$4, %rax	#, D.12732
	subq	$16, %rax	#, iftmp.54
.L141:
	.loc 1 756 0 discriminator 3
	movq	%rax, %rdi	# iftmp.54,
	call	Perl_safesysmalloc	#
	movq	-88(%rbp), %rdx	# xhv, tmp528
	movq	%rax, (%rdx)	# D.12726, xhv_60->xhv_array
	movq	-88(%rbp), %rax	# xhv, tmp529
	movq	16(%rax), %rax	# xhv_60->xhv_max, D.12732
	addq	$1, %rax	#, D.12732
	cmpq	$63, %rax	#, D.12732
	ja	.L142	#,
	.loc 1 756 0 discriminator 1
	movq	-88(%rbp), %rax	# xhv, tmp530
	movq	16(%rax), %rax	# xhv_60->xhv_max, D.12732
	addq	$1, %rax	#, D.12732
	salq	$3, %rax	#, iftmp.55
	jmp	.L143	#
.L142:
	.loc 1 756 0 discriminator 2
	movq	-88(%rbp), %rax	# xhv, tmp531
	movq	16(%rax), %rax	# xhv_60->xhv_max, D.12732
	addq	$1, %rax	#, D.12732
	salq	$4, %rax	#, D.12732
	subq	$16, %rax	#, iftmp.55
.L143:
	.loc 1 756 0 discriminator 3
	movq	-88(%rbp), %rdx	# xhv, tmp532
	movq	(%rdx), %rcx	# xhv_60->xhv_array, D.12733
	movq	%rax, %rdx	# iftmp.55,
	movl	$0, %esi	#,
	movq	%rcx, %rdi	# D.12733,
	call	memset	#
.L139:
	.loc 1 761 0 is_stmt 1
	movq	-88(%rbp), %rax	# xhv, tmp533
	movq	(%rax), %rdx	# xhv_60->xhv_array, D.12733
	movq	-88(%rbp), %rax	# xhv, tmp534
	movq	16(%rax), %rax	# xhv_60->xhv_max, D.12732
	andl	%ebx, %eax	# hash, D.12725
	movl	%eax, %eax	# D.12725, D.12732
	salq	$3, %rax	#, D.12732
	addq	%rdx, %rax	# D.12733, tmp535
	movq	%rax, -40(%rbp)	# tmp535, oentry
	.loc 1 763 0
	call	S_new_he	#
	movq	%rax, -96(%rbp)	# tmp536, entry
	.loc 1 766 0
	movq	-120(%rbp), %rax	# hv, tmp537
	movl	12(%rax), %eax	# hv_38(D)->sv_flags, D.12725
	andl	$536870912, %eax	#, D.12725
	testl	%eax, %eax	# D.12725
	je	.L144	#,
	.loc 1 767 0
	movq	-144(%rbp), %rax	# klen, klen.56
	movl	%eax, %esi	# klen.56, D.12724
	movl	-148(%rbp), %edx	# flags, tmp538
	movq	-136(%rbp), %rax	# key, tmp539
	movl	%edx, %ecx	# tmp538,
	movl	%ebx, %edx	# hash,
	movq	%rax, %rdi	# tmp539,
	call	S_share_hek_flags	#
	movq	-96(%rbp), %rdx	# entry, tmp540
	movq	%rax, 8(%rdx)	# D.12729, entry_363->hent_hek
	jmp	.L145	#
.L144:
	.loc 1 769 0
	movq	-144(%rbp), %rax	# klen, klen.57
	movl	%eax, %esi	# klen.57, D.12724
	movl	-148(%rbp), %edx	# flags, tmp541
	movq	-136(%rbp), %rax	# key, tmp542
	movl	%edx, %ecx	# tmp541,
	movl	%ebx, %edx	# hash,
	movq	%rax, %rdi	# tmp542,
	call	S_save_hek_flags	#
	movq	-96(%rbp), %rdx	# entry, tmp543
	movq	%rax, 8(%rdx)	# D.12729, entry_363->hent_hek
.L145:
	.loc 1 770 0
	movq	-96(%rbp), %rax	# entry, tmp544
	movq	16(%rbp), %rdx	# val, tmp545
	movq	%rdx, 16(%rax)	# tmp545, entry_363->hent_val
	.loc 1 771 0
	movq	-40(%rbp), %rax	# oentry, tmp546
	movq	(%rax), %rdx	# *oentry_362, D.12723
	movq	-96(%rbp), %rax	# entry, tmp547
	movq	%rdx, (%rax)	# D.12723, entry_363->hent_next
	.loc 1 772 0
	movq	-40(%rbp), %rax	# oentry, tmp548
	movq	-96(%rbp), %rdx	# entry, tmp549
	movq	%rdx, (%rax)	# tmp549, *oentry_362
	.loc 1 774 0
	cmpq	$PL_sv_placeholder, 16(%rbp)	#, val
	jne	.L146	#,
	.loc 1 775 0
	movq	-88(%rbp), %rax	# xhv, tmp550
	movsd	32(%rax), %xmm1	# xhv_60->xnv_nv, D.12736
	movsd	.LC2(%rip), %xmm0	#, tmp551
	addsd	%xmm1, %xmm0	# D.12736, D.12736
	movq	-88(%rbp), %rax	# xhv, tmp552
	movsd	%xmm0, 32(%rax)	# D.12736, xhv_60->xnv_nv
.L146:
	.loc 1 776 0
	movl	-100(%rbp), %eax	# masked_flags, tmp553
	andl	$251, %eax	#, D.12724
	testl	%eax, %eax	# D.12724
	je	.L147	#,
	.loc 1 777 0
	movq	-120(%rbp), %rax	# hv, tmp554
	movl	12(%rax), %eax	# hv_38(D)->sv_flags, D.12725
	orl	$-2147483648, %eax	#, D.12725
	movl	%eax, %edx	# D.12725, D.12725
	movq	-120(%rbp), %rax	# hv, tmp555
	movl	%edx, 12(%rax)	# D.12725, hv_38(D)->sv_flags
.L147:
	.loc 1 779 0
	movq	-88(%rbp), %rax	# xhv, tmp556
	movq	24(%rax), %rax	# xhv_60->xhv_keys, D.12735
	leaq	1(%rax), %rdx	#, D.12735
	movq	-88(%rbp), %rax	# xhv, tmp557
	movq	%rdx, 24(%rax)	# D.12735, xhv_60->xhv_keys
	.loc 1 780 0
	cmpl	$0, -104(%rbp)	#, n_links
	jne	.L148	#,
	.loc 1 781 0
	movq	-88(%rbp), %rax	# xhv, tmp558
	movq	8(%rax), %rax	# xhv_60->xhv_fill, D.12732
	leaq	1(%rax), %rdx	#, D.12732
	movq	-88(%rbp), %rax	# xhv, tmp559
	movq	%rdx, 8(%rax)	# D.12732, xhv_60->xhv_fill
	jmp	.L149	#
.L148:
	.loc 1 782 0
	movq	-88(%rbp), %rax	# xhv, tmp560
	movq	24(%rax), %rdx	# xhv_60->xhv_keys, D.12735
	movq	-88(%rbp), %rax	# xhv, tmp561
	movq	16(%rax), %rax	# xhv_60->xhv_max, D.12732
	cmpq	%rax, %rdx	# D.12735, D.12735
	jg	.L150	#,
	.loc 1 783 0
	cmpl	$14, -104(%rbp)	#, n_links
	jbe	.L149	#,
	.loc 1 783 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# hv, tmp562
	movl	12(%rax), %eax	# hv_38(D)->sv_flags, D.12725
	andl	$268435456, %eax	#, D.12725
	testl	%eax, %eax	# D.12725
	jne	.L149	#,
.L150:
	.loc 1 790 0 is_stmt 1
	movq	-120(%rbp), %rax	# hv, tmp563
	movq	%rax, %rdi	# tmp563,
	call	S_hsplit	#
.L149:
	.loc 1 793 0
	movq	-96(%rbp), %rax	# entry, D.12723
.L151:
	.loc 1 794 0
	addq	$152, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	S_hv_fetch_common, .-S_hv_fetch_common
	.type	S_hv_magic_check, @function
S_hv_magic_check:
.LFB16:
	.loc 1 798 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# hv, hv
	movq	%rsi, -32(%rbp)	# needs_copy, needs_copy
	movq	%rdx, -40(%rbp)	# needs_store, needs_store
	.loc 1 799 0
	movq	-24(%rbp), %rax	# hv, tmp64
	movq	(%rax), %rax	# hv_2(D)->sv_any, D.12742
	movq	40(%rax), %rax	# MEM[(struct XPVMG *)_3].xmg_magic, tmp65
	movq	%rax, -8(%rbp)	# tmp65, mg
	.loc 1 800 0
	movq	-32(%rbp), %rax	# needs_copy, tmp66
	movb	$0, (%rax)	#, *needs_copy_5(D)
	.loc 1 801 0
	movq	-40(%rbp), %rax	# needs_store, tmp67
	movb	$1, (%rax)	#, *needs_store_6(D)
	.loc 1 802 0
	jmp	.L153	#
.L156:
	.loc 1 803 0
	movq	-8(%rbp), %rax	# mg, tmp68
	movzbl	18(%rax), %eax	# mg_1->mg_type, D.12743
	cmpb	$64, %al	#, D.12743
	jle	.L154	#,
	.loc 1 803 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# mg, tmp69
	movzbl	18(%rax), %eax	# mg_1->mg_type, D.12743
	cmpb	$90, %al	#, D.12743
	jg	.L154	#,
	.loc 1 804 0 is_stmt 1
	movq	-32(%rbp), %rax	# needs_copy, tmp70
	movb	$1, (%rax)	#, *needs_copy_5(D)
	.loc 1 805 0
	movq	-8(%rbp), %rax	# mg, tmp71
	movzbl	18(%rax), %eax	# mg_1->mg_type, D.12743
	movsbl	%al, %eax	# D.12743, D.12744
	cmpl	$80, %eax	#, D.12744
	je	.L155	#,
	cmpl	$83, %eax	#, D.12744
	jne	.L154	#,
.L155:
	.loc 1 808 0
	movq	-40(%rbp), %rax	# needs_store, tmp72
	movb	$0, (%rax)	#, *needs_store_6(D)
.L154:
	.loc 1 811 0
	movq	-8(%rbp), %rax	# mg, tmp73
	movq	(%rax), %rax	# mg_1->mg_moremagic, tmp74
	movq	%rax, -8(%rbp)	# tmp74, mg
.L153:
	.loc 1 802 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, mg
	jne	.L156	#,
	.loc 1 813 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	S_hv_magic_check, .-S_hv_magic_check
	.section	.rodata
.LC4:
	.string	"%ld/%ld"
	.text
	.globl	Perl_hv_scalar
	.type	Perl_hv_scalar, @function
Perl_hv_scalar:
.LFB17:
	.loc 1 825 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# hv, hv
	.loc 1 829 0
	movq	-24(%rbp), %rax	# hv, tmp72
	movl	12(%rax), %eax	# hv_2(D)->sv_flags, D.12746
	andl	$32768, %eax	#, D.12746
	testl	%eax, %eax	# D.12746
	je	.L158	#,
	.loc 1 829 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# hv, tmp73
	movl	$80, %esi	#,
	movq	%rax, %rdi	# tmp73,
	call	Perl_mg_find	#
	movq	%rax, -16(%rbp)	# tmp74, mg
	cmpq	$0, -16(%rbp)	#, mg
	je	.L158	#,
	.loc 1 830 0 is_stmt 1
	movq	-16(%rbp), %rdx	# mg, tmp75
	movq	-24(%rbp), %rax	# hv, tmp76
	movq	%rdx, %rsi	# tmp75,
	movq	%rax, %rdi	# tmp76,
	call	Perl_magic_scalarpack	#
	movq	%rax, -8(%rbp)	# tmp77, sv
	.loc 1 831 0
	movq	-8(%rbp), %rax	# sv, D.12745
	jmp	.L159	#
.L158:
	.loc 1 834 0
	call	Perl_sv_newmortal	#
	movq	%rax, -8(%rbp)	# tmp78, sv
	.loc 1 835 0
	movq	-24(%rbp), %rax	# hv, tmp79
	movq	(%rax), %rax	# hv_2(D)->sv_any, D.12747
	movq	8(%rax), %rax	# _9->xhv_fill, D.12748
	testq	%rax, %rax	# D.12748
	je	.L160	#,
	.loc 1 837 0
	movq	-24(%rbp), %rax	# hv, tmp80
	movq	(%rax), %rax	# hv_2(D)->sv_any, D.12747
	movq	16(%rax), %rax	# _11->xhv_max, D.12748
	.loc 1 836 0
	leaq	1(%rax), %rcx	#, D.12749
	.loc 1 837 0
	movq	-24(%rbp), %rax	# hv, tmp81
	movq	(%rax), %rax	# hv_2(D)->sv_any, D.12747
	movq	8(%rax), %rax	# _15->xhv_fill, D.12748
	.loc 1 836 0
	movq	%rax, %rdx	# D.12748, D.12749
	movq	-8(%rbp), %rax	# sv, tmp82
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# tmp82,
	movl	$0, %eax	#,
	call	Perl_sv_setpvf	#
	jmp	.L161	#
.L160:
	.loc 1 839 0
	movq	-8(%rbp), %rax	# sv, tmp83
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp83,
	call	Perl_sv_setiv	#
.L161:
	.loc 1 841 0
	movq	-8(%rbp), %rax	# sv, D.12745
.L159:
	.loc 1 842 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	Perl_hv_scalar, .-Perl_hv_scalar
	.globl	Perl_hv_delete
	.type	Perl_hv_delete, @function
Perl_hv_delete:
.LFB18:
	.loc 1 857 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# hv, hv
	movq	%rsi, -32(%rbp)	# key, key
	movl	%edx, -36(%rbp)	# klen_i32, klen_i32
	movl	%ecx, -40(%rbp)	# flags, flags
	.loc 1 859 0
	movl	$0, -12(%rbp)	#, k_flags
	.loc 1 861 0
	cmpl	$0, -36(%rbp)	#, klen_i32
	jns	.L163	#,
	.loc 1 862 0
	movl	-36(%rbp), %eax	# klen_i32, tmp62
	negl	%eax	# D.12751
	cltq
	movq	%rax, -8(%rbp)	# tmp63, klen
	.loc 1 863 0
	orl	$1, -12(%rbp)	#, k_flags
	jmp	.L164	#
.L163:
	.loc 1 865 0
	movl	-36(%rbp), %eax	# klen_i32, tmp65
	cltq
	movq	%rax, -8(%rbp)	# tmp64, klen
.L164:
	.loc 1 867 0
	movl	-40(%rbp), %edi	# flags, tmp66
	movl	-12(%rbp), %esi	# k_flags, tmp67
	movq	-8(%rbp), %rcx	# klen, tmp68
	movq	-32(%rbp), %rdx	# key, tmp69
	movq	-24(%rbp), %rax	# hv, tmp70
	movl	$0, (%rsp)	#,
	movl	%edi, %r9d	# tmp66,
	movl	%esi, %r8d	# tmp67,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp70,
	call	S_hv_delete_common	#
	.loc 1 868 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	Perl_hv_delete, .-Perl_hv_delete
	.globl	Perl_hv_delete_ent
	.type	Perl_hv_delete_ent, @function
Perl_hv_delete_ent:
.LFB19:
	.loc 1 883 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# hv, hv
	movq	%rsi, -16(%rbp)	# keysv, keysv
	movl	%edx, -20(%rbp)	# flags, flags
	movl	%ecx, -24(%rbp)	# hash, hash
	.loc 1 884 0
	movl	-20(%rbp), %ecx	# flags, tmp61
	movq	-16(%rbp), %rsi	# keysv, tmp62
	movq	-8(%rbp), %rax	# hv, tmp63
	movl	-24(%rbp), %edx	# hash, tmp64
	movl	%edx, (%rsp)	# tmp64,
	movl	%ecx, %r9d	# tmp61,
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp63,
	call	S_hv_delete_common	#
	.loc 1 885 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	Perl_hv_delete_ent, .-Perl_hv_delete_ent
	.section	.rodata
.LC5:
	.string	"delete readonly key '%_' from"
	.align 8
.LC6:
	.string	"delete disallowed key '%_' from"
	.text
	.type	S_hv_delete_common, @function
S_hv_delete_common:
.LFB20:
	.loc 1 890 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$96, %rsp	#,
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -72(%rbp)	# hv, hv
	movq	%rsi, -80(%rbp)	# keysv, keysv
	movq	%rdx, -88(%rbp)	# key, key
	movq	%rcx, -96(%rbp)	# klen, klen
	movl	%r8d, -100(%rbp)	# k_flags, k_flags
	movl	%r9d, -104(%rbp)	# d_flags, d_flags
	.loc 1 899 0
	cmpq	$0, -72(%rbp)	#, hv
	jne	.L169	#,
	.loc 1 900 0
	movl	$0, %eax	#, D.12754
	jmp	.L215	#
.L169:
	.loc 1 902 0
	cmpq	$0, -80(%rbp)	#, keysv
	je	.L171	#,
	.loc 1 903 0
	movl	-100(%rbp), %eax	# k_flags, tmp191
	andl	$256, %eax	#, D.12755
	testl	%eax, %eax	# D.12755
	je	.L172	#,
	.loc 1 904 0
	movq	-88(%rbp), %rax	# key, tmp192
	movq	%rax, %rdi	# tmp192,
	call	Perl_safesysfree	#
.L172:
	.loc 1 905 0
	movq	-80(%rbp), %rax	# keysv, tmp193
	movl	12(%rax), %eax	# keysv_24(D)->sv_flags, D.12756
	andl	$262144, %eax	#, D.12756
	testl	%eax, %eax	# D.12756
	je	.L173	#,
	.loc 1 905 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# keysv, tmp194
	movq	(%rax), %rax	# keysv_24(D)->sv_any, D.12757
	movq	8(%rax), %rax	# MEM[(struct XPV *)_30].xpv_cur, klen.59
	movq	%rax, -96(%rbp)	# klen.59, klen
	movq	-80(%rbp), %rax	# keysv, tmp195
	movq	(%rax), %rax	# keysv_24(D)->sv_any, D.12757
	movq	(%rax), %rax	# MEM[(struct XPV *)_32].xpv_pv, iftmp.58
	jmp	.L174	#
.L173:
	.loc 1 905 0 discriminator 2
	leaq	-96(%rbp), %rcx	#, tmp196
	movq	-80(%rbp), %rax	# keysv, tmp197
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp196,
	movq	%rax, %rdi	# tmp197,
	call	Perl_sv_2pv_flags	#
.L174:
	.loc 1 905 0 discriminator 1
	movq	%rax, -88(%rbp)	# iftmp.58, key
	.loc 1 906 0 is_stmt 1 discriminator 1
	movl	$0, -100(%rbp)	#, k_flags
	.loc 1 907 0 discriminator 1
	movq	-80(%rbp), %rax	# keysv, tmp198
	movl	12(%rax), %eax	# keysv_24(D)->sv_flags, D.12756
	andl	$536870912, %eax	#, D.12756
	testl	%eax, %eax	# D.12756
	setne	%al	#, D.12758
	movb	%al, -55(%rbp)	# is_utf8.60, is_utf8
	jmp	.L175	#
.L171:
	.loc 1 909 0
	movl	-100(%rbp), %eax	# k_flags, tmp199
	andl	$1, %eax	#, D.12755
	testl	%eax, %eax	# D.12755
	setne	%al	#, D.12758
	movb	%al, -55(%rbp)	# is_utf8.61, is_utf8
.L175:
	.loc 1 912 0
	movq	-72(%rbp), %rax	# hv, tmp200
	movl	12(%rax), %eax	# hv_22(D)->sv_flags, D.12756
	andl	$32768, %eax	#, D.12756
	testl	%eax, %eax	# D.12756
	je	.L176	#,
.LBB10:
	.loc 1 915 0
	leaq	-53(%rbp), %rdx	#, tmp201
	leaq	-54(%rbp), %rcx	#, tmp202
	movq	-72(%rbp), %rax	# hv, tmp203
	movq	%rcx, %rsi	# tmp202,
	movq	%rax, %rdi	# tmp203,
	call	S_hv_magic_check	#
	.loc 1 917 0
	movzbl	-54(%rbp), %eax	# needs_copy, needs_copy.62
	testb	%al, %al	# needs_copy.62
	je	.L176	#,
	.loc 1 918 0
	movl	-100(%rbp), %eax	# k_flags, tmp204
	andb	$254, %ah	#, D.12755
	movl	%eax, %r8d	# D.12755, D.12755
	movq	-96(%rbp), %rcx	# klen, klen.63
	movq	-88(%rbp), %rdx	# key, tmp205
	movq	-80(%rbp), %rsi	# keysv, tmp206
	movq	-72(%rbp), %rax	# hv, tmp207
	movl	16(%rbp), %edi	# hash, tmp208
	movl	%edi, 8(%rsp)	# tmp208,
	movq	$0, (%rsp)	#,
	movl	$4, %r9d	#,
	movq	%rax, %rdi	# tmp207,
	call	S_hv_fetch_common	#
	movq	%rax, %rbx	#, entry
	.loc 1 921 0
	testq	%rbx, %rbx	# entry
	je	.L178	#,
	.loc 1 921 0 is_stmt 0 discriminator 1
	movq	16(%rbx), %rax	# entry_50->hent_val, iftmp.64
	jmp	.L179	#
.L178:
	.loc 1 921 0 discriminator 2
	movl	$0, %eax	#, iftmp.64
.L179:
	.loc 1 921 0 discriminator 3
	movq	%rax, -48(%rbp)	# iftmp.64, sv
	.loc 1 922 0 is_stmt 1 discriminator 3
	cmpq	$0, -48(%rbp)	#, sv
	je	.L176	#,
	.loc 1 923 0
	movq	-48(%rbp), %rax	# sv, tmp209
	movl	12(%rax), %eax	# sv_53->sv_flags, D.12756
	andl	$57344, %eax	#, D.12756
	testl	%eax, %eax	# D.12756
	je	.L180	#,
	.loc 1 924 0
	movq	-48(%rbp), %rax	# sv, tmp210
	movq	%rax, %rdi	# tmp210,
	call	Perl_mg_clear	#
.L180:
	.loc 1 926 0
	movzbl	-53(%rbp), %eax	# needs_store, needs_store.65
	testb	%al, %al	# needs_store.65
	jne	.L176	#,
	.loc 1 927 0
	movq	-48(%rbp), %rax	# sv, tmp211
	movl	$112, %esi	#,
	movq	%rax, %rdi	# tmp211,
	call	Perl_mg_find	#
	testq	%rax, %rax	# D.12759
	je	.L181	#,
	.loc 1 929 0
	movq	-48(%rbp), %rax	# sv, tmp212
	movl	$112, %esi	#,
	movq	%rax, %rdi	# tmp212,
	call	Perl_sv_unmagic	#
	.loc 1 930 0
	movq	-48(%rbp), %rax	# sv, D.12754
	jmp	.L215	#
.L181:
	.loc 1 932 0
	movl	$0, %eax	#, D.12754
	jmp	.L215	#
.L176:
.LBE10:
	.loc 1 950 0
	movq	-72(%rbp), %rax	# hv, tmp213
	movq	(%rax), %r12	# hv_22(D)->sv_any, xhv
	.loc 1 951 0
	movq	(%r12), %rax	# xhv_60->xhv_array, D.12760
	testq	%rax, %rax	# D.12760
	jne	.L183	#,
	.loc 1 952 0
	movl	$0, %eax	#, D.12754
	jmp	.L215	#
.L183:
	.loc 1 954 0
	movzbl	-55(%rbp), %eax	# is_utf8, is_utf8.66
	testb	%al, %al	# is_utf8.66
	je	.L184	#,
.LBB11:
	.loc 1 955 0
	movq	-88(%rbp), %rax	# key, tmp214
	movq	%rax, -40(%rbp)	# tmp214, keysave
	.loc 1 956 0
	leaq	-55(%rbp), %rdx	#, tmp215
	leaq	-96(%rbp), %rcx	#, tmp216
	movq	-88(%rbp), %rax	# key, tmp217
	movq	%rcx, %rsi	# tmp216,
	movq	%rax, %rdi	# tmp217,
	call	Perl_bytes_from_utf8	#
	movq	%rax, -88(%rbp)	# tmp218, key
	.loc 1 958 0
	movzbl	-55(%rbp), %eax	# is_utf8, is_utf8.67
	testb	%al, %al	# is_utf8.67
	je	.L185	#,
	.loc 1 959 0
	orl	$1, -100(%rbp)	#, k_flags
	jmp	.L186	#
.L185:
	.loc 1 961 0
	andl	$-2, -100(%rbp)	#, k_flags
.L186:
	.loc 1 962 0
	movq	-88(%rbp), %rax	# key, tmp219
	cmpq	-40(%rbp), %rax	# keysave, tmp219
	je	.L187	#,
	.loc 1 963 0
	movl	-100(%rbp), %eax	# k_flags, tmp220
	andl	$256, %eax	#, D.12755
	testl	%eax, %eax	# D.12755
	je	.L188	#,
	.loc 1 966 0
	movq	-40(%rbp), %rax	# keysave, tmp221
	movq	%rax, %rdi	# tmp221,
	call	Perl_safesysfree	#
.L188:
	.loc 1 968 0
	orl	$258, -100(%rbp)	#, k_flags
.L187:
	.loc 1 970 0
	movq	-72(%rbp), %rax	# hv, tmp222
	movl	12(%rax), %eax	# MEM[(struct SV *)hv_22(D)].sv_flags, D.12756
	orl	$-2147483648, %eax	#, D.12756
	movl	%eax, %edx	# D.12756, D.12756
	movq	-72(%rbp), %rax	# hv, tmp223
	movl	%edx, 12(%rax)	# D.12756, MEM[(struct SV *)hv_22(D)].sv_flags
.L184:
.LBE11:
	.loc 1 973 0
	movq	-72(%rbp), %rax	# hv, tmp224
	movl	12(%rax), %eax	# hv_22(D)->sv_flags, D.12756
	andl	$268435456, %eax	#, D.12756
	testl	%eax, %eax	# D.12756
	je	.L189	#,
.LBB12:
	.loc 1 974 0
	movq	-88(%rbp), %rbx	# key, s_PeRlHaSh_tmp
	movq	%rbx, %r14	# s_PeRlHaSh_tmp, s_PeRlHaSh
	movq	-96(%rbp), %rax	# klen, klen.68
	movl	%eax, %r13d	# klen.68, i_PeRlHaSh
	movq	PL_rehash_seed(%rip), %rax	# PL_rehash_seed, PL_rehash_seed.69
	movl	%eax, %ebx	# PL_rehash_seed.69, hash_PeRlHaSh
	jmp	.L190	#
.L191:
	.loc 1 974 0 is_stmt 0 discriminator 2
	movq	%r14, %rax	# s_PeRlHaSh, s_PeRlHaSh.70
	leaq	1(%rax), %r14	#, s_PeRlHaSh
	movzbl	(%rax), %eax	# *s_PeRlHaSh.70_83, D.12761
	movzbl	%al, %eax	# D.12761, D.12756
	addl	%eax, %ebx	# D.12756, hash_PeRlHaSh
	movl	%ebx, %eax	# hash_PeRlHaSh, D.12756
	sall	$10, %eax	#, D.12756
	addl	%eax, %ebx	# D.12756, hash_PeRlHaSh
	movl	%ebx, %eax	# hash_PeRlHaSh, D.12756
	shrl	$6, %eax	#, D.12756
	xorl	%eax, %ebx	# D.12756, hash_PeRlHaSh
.L190:
	.loc 1 974 0 discriminator 1
	movl	%r13d, %eax	# i_PeRlHaSh, i_PeRlHaSh.71
	leal	-1(%rax), %r13d	#, i_PeRlHaSh
	testl	%eax, %eax	# i_PeRlHaSh.71
	jne	.L191	#,
	.loc 1 974 0 discriminator 3
	leal	0(,%rbx,8), %eax	#, D.12756
	addl	%eax, %ebx	# D.12756, hash_PeRlHaSh
	movl	%ebx, %eax	# hash_PeRlHaSh, D.12756
	shrl	$11, %eax	#, D.12756
	xorl	%eax, %ebx	# D.12756, hash_PeRlHaSh
	movl	%ebx, %eax	# hash_PeRlHaSh, D.12756
	sall	$15, %eax	#, D.12756
	addl	%ebx, %eax	# hash_PeRlHaSh, tmp225
	movl	%eax, 16(%rbp)	# tmp225, hash
.LBE12:
	jmp	.L192	#
.L189:
	.loc 1 975 0 is_stmt 1
	cmpl	$0, 16(%rbp)	#, hash
	jne	.L192	#,
.LBB13:
	.loc 1 983 0
	movq	-88(%rbp), %rbx	# key, s_PeRlHaSh_tmp
	movq	%rbx, %r14	# s_PeRlHaSh_tmp, s_PeRlHaSh
	movq	-96(%rbp), %rax	# klen, klen.72
	movl	%eax, %r13d	# klen.72, i_PeRlHaSh
	movl	$0, %ebx	#, hash_PeRlHaSh
	jmp	.L193	#
.L194:
	.loc 1 983 0 is_stmt 0 discriminator 2
	movq	%r14, %rax	# s_PeRlHaSh, s_PeRlHaSh.73
	leaq	1(%rax), %r14	#, s_PeRlHaSh
	movzbl	(%rax), %eax	# *s_PeRlHaSh.73_106, D.12761
	movzbl	%al, %eax	# D.12761, D.12756
	addl	%eax, %ebx	# D.12756, hash_PeRlHaSh
	movl	%ebx, %eax	# hash_PeRlHaSh, D.12756
	sall	$10, %eax	#, D.12756
	addl	%eax, %ebx	# D.12756, hash_PeRlHaSh
	movl	%ebx, %eax	# hash_PeRlHaSh, D.12756
	shrl	$6, %eax	#, D.12756
	xorl	%eax, %ebx	# D.12756, hash_PeRlHaSh
.L193:
	.loc 1 983 0 discriminator 1
	movl	%r13d, %eax	# i_PeRlHaSh, i_PeRlHaSh.74
	leal	-1(%rax), %r13d	#, i_PeRlHaSh
	testl	%eax, %eax	# i_PeRlHaSh.74
	jne	.L194	#,
	.loc 1 983 0 discriminator 3
	leal	0(,%rbx,8), %eax	#, D.12756
	addl	%eax, %ebx	# D.12756, hash_PeRlHaSh
	movl	%ebx, %eax	# hash_PeRlHaSh, D.12756
	shrl	$11, %eax	#, D.12756
	xorl	%eax, %ebx	# D.12756, hash_PeRlHaSh
	movl	%ebx, %eax	# hash_PeRlHaSh, D.12756
	sall	$15, %eax	#, D.12756
	addl	%ebx, %eax	# hash_PeRlHaSh, tmp226
	movl	%eax, 16(%rbp)	# tmp226, hash
.L192:
.LBE13:
	.loc 1 987 0 is_stmt 1
	movl	-100(%rbp), %eax	# k_flags, tmp230
	movzbl	%al, %eax	# tmp230, tmp229
	movl	%eax, -52(%rbp)	# tmp229, masked_flags
	.loc 1 990 0
	movq	(%r12), %rdx	# xhv_60->xhv_array, D.12760
	movq	16(%r12), %rax	# xhv_60->xhv_max, D.12763
	andl	16(%rbp), %eax	# hash, D.12756
	movl	%eax, %eax	# D.12756, D.12763
	salq	$3, %rax	#, D.12763
	leaq	(%rdx,%rax), %r13	#, oentry
	.loc 1 991 0
	movq	0(%r13), %rbx	# *oentry_129, entry
	.loc 1 992 0
	movl	$1, %r14d	#, i
	.loc 1 993 0
	jmp	.L195	#
.L212:
	.loc 1 994 0
	movq	8(%rbx), %rax	# entry_9->hent_hek, D.12764
	movl	(%rax), %eax	# _132->hek_hash, D.12756
	cmpl	16(%rbp), %eax	# hash, D.12756
	je	.L196	#,
	.loc 1 995 0
	jmp	.L197	#
.L196:
	.loc 1 996 0
	movq	8(%rbx), %rax	# entry_9->hent_hek, D.12764
	movl	4(%rax), %edx	# _134->hek_len, D.12755
	movq	-96(%rbp), %rax	# klen, klen.75
	cmpl	%eax, %edx	# D.12755, D.12755
	je	.L198	#,
	.loc 1 997 0
	jmp	.L197	#
.L198:
	.loc 1 998 0
	movq	8(%rbx), %rax	# entry_9->hent_hek, D.12764
	addq	$8, %rax	#, D.12765
	cmpq	-88(%rbp), %rax	# key, D.12765
	je	.L199	#,
	.loc 1 998 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rdx	# klen, klen.76
	movq	8(%rbx), %rax	# entry_9->hent_hek, D.12764
	leaq	8(%rax), %rcx	#, D.12765
	movq	-88(%rbp), %rax	# key, tmp231
	movq	%rax, %rsi	# tmp231,
	movq	%rcx, %rdi	# D.12765,
	call	memcmp	#
	testl	%eax, %eax	# D.12755
	je	.L199	#,
	.loc 1 999 0 is_stmt 1
	jmp	.L197	#
.L199:
	.loc 1 1000 0
	movq	8(%rbx), %rdx	# entry_9->hent_hek, D.12764
	movq	8(%rbx), %rax	# entry_9->hent_hek, D.12764
	movl	4(%rax), %eax	# _145->hek_len, D.12755
	cltq
	addq	$1, %rax	#, D.12766
	addq	%rdx, %rax	# D.12764, tmp232
	addq	$8, %rax	#, D.12760
	movzbl	(%rax), %eax	# MEM[(unsigned char *)_149], D.12761
	movzbl	%al, %eax	# D.12761, D.12755
	xorl	-52(%rbp), %eax	# masked_flags, D.12755
	andl	$1, %eax	#, D.12755
	testl	%eax, %eax	# D.12755
	je	.L200	#,
	.loc 1 1001 0
	jmp	.L197	#
.L200:
	.loc 1 1004 0
	movq	16(%rbx), %rax	# entry_9->hent_val, D.12754
	cmpq	$PL_sv_placeholder, %rax	#, D.12754
	jne	.L201	#,
	.loc 1 1006 0
	movl	-100(%rbp), %eax	# k_flags, tmp233
	andl	$256, %eax	#, D.12755
	testl	%eax, %eax	# D.12755
	je	.L202	#,
	.loc 1 1007 0
	movq	-88(%rbp), %rax	# key, tmp234
	movq	%rax, %rdi	# tmp234,
	call	Perl_safesysfree	#
.L202:
	.loc 1 1008 0
	movl	$0, %eax	#, D.12754
	jmp	.L215	#
.L201:
	.loc 1 1010 0
	movq	-72(%rbp), %rax	# hv, tmp235
	movl	12(%rax), %eax	# hv_22(D)->sv_flags, D.12756
	andl	$8388608, %eax	#, D.12756
	testl	%eax, %eax	# D.12756
	je	.L203	#,
	.loc 1 1010 0 is_stmt 0 discriminator 1
	movq	16(%rbx), %rax	# entry_9->hent_val, D.12754
	testq	%rax, %rax	# D.12754
	je	.L203	#,
	movq	16(%rbx), %rax	# entry_9->hent_val, D.12754
	movl	12(%rax), %eax	# _160->sv_flags, D.12756
	andl	$8388608, %eax	#, D.12756
	testl	%eax, %eax	# D.12756
	je	.L203	#,
	.loc 1 1011 0 is_stmt 1
	movq	-96(%rbp), %rax	# klen, klen.77
	movl	%eax, %edx	# klen.77, D.12755
	movq	-88(%rbp), %rsi	# key, tmp236
	movl	-100(%rbp), %eax	# k_flags, tmp237
	movl	$.LC5, %ecx	#,
	movl	%eax, %edi	# tmp237,
	call	S_hv_notallowed	#
.L203:
	.loc 1 1015 0
	movl	-100(%rbp), %eax	# k_flags, tmp238
	andl	$256, %eax	#, D.12755
	testl	%eax, %eax	# D.12755
	je	.L204	#,
	.loc 1 1016 0
	movq	-88(%rbp), %rax	# key, tmp239
	movq	%rax, %rdi	# tmp239,
	call	Perl_safesysfree	#
.L204:
	.loc 1 1018 0
	movl	-104(%rbp), %eax	# d_flags, tmp240
	andl	$2, %eax	#, D.12755
	testl	%eax, %eax	# D.12755
	je	.L205	#,
	.loc 1 1019 0
	movq	$0, -48(%rbp)	#, sv
	jmp	.L206	#
.L205:
	.loc 1 1021 0
	movq	16(%rbx), %rax	# entry_9->hent_val, D.12754
	movq	%rax, %rdi	# D.12754,
	call	Perl_sv_2mortal	#
	movq	%rax, -48(%rbp)	# tmp241, sv
	.loc 1 1022 0
	movq	$PL_sv_placeholder, 16(%rbx)	#, entry_9->hent_val
.L206:
	.loc 1 1031 0
	movq	-72(%rbp), %rax	# hv, tmp242
	movl	12(%rax), %eax	# hv_22(D)->sv_flags, D.12756
	andl	$8388608, %eax	#, D.12756
	testl	%eax, %eax	# D.12756
	je	.L207	#,
	.loc 1 1032 0
	movq	16(%rbx), %rax	# entry_9->hent_val, D.12754
	movq	%rax, %rdi	# D.12754,
	call	Perl_sv_free	#
	.loc 1 1033 0
	movq	$PL_sv_placeholder, 16(%rbx)	#, entry_9->hent_val
	.loc 1 1036 0
	movsd	32(%r12), %xmm1	# xhv_60->xnv_nv, D.12767
	movsd	.LC2(%rip), %xmm0	#, tmp243
	addsd	%xmm1, %xmm0	# D.12767, D.12767
	movsd	%xmm0, 32(%r12)	# D.12767, xhv_60->xnv_nv
	jmp	.L208	#
.L207:
	.loc 1 1038 0
	movq	(%rbx), %rax	# entry_9->hent_next, D.12768
	movq	%rax, 0(%r13)	# D.12768, *oentry_10
	.loc 1 1039 0
	testl	%r14d, %r14d	# i
	je	.L209	#,
	.loc 1 1039 0 is_stmt 0 discriminator 1
	movq	0(%r13), %rax	# *oentry_10, D.12768
	testq	%rax, %rax	# D.12768
	jne	.L209	#,
	.loc 1 1040 0 is_stmt 1
	movq	8(%r12), %rax	# xhv_60->xhv_fill, D.12763
	subq	$1, %rax	#, D.12763
	movq	%rax, 8(%r12)	# D.12763, xhv_60->xhv_fill
.L209:
	.loc 1 1041 0
	movq	64(%r12), %rax	# xhv_60->xhv_eiter, D.12768
	cmpq	%rbx, %rax	# entry, D.12768
	jne	.L210	#,
	.loc 1 1042 0
	movq	-72(%rbp), %rax	# hv, tmp244
	movl	12(%rax), %eax	# hv_22(D)->sv_flags, D.12756
	orl	$1073741824, %eax	#, D.12756
	movl	%eax, %edx	# D.12756, D.12756
	movq	-72(%rbp), %rax	# hv, tmp245
	movl	%edx, 12(%rax)	# D.12756, hv_22(D)->sv_flags
	jmp	.L211	#
.L210:
	.loc 1 1044 0
	movq	-72(%rbp), %rax	# hv, tmp246
	movq	%rbx, %rsi	# entry,
	movq	%rax, %rdi	# tmp246,
	call	Perl_hv_free_ent	#
.L211:
	.loc 1 1045 0
	movq	24(%r12), %rax	# xhv_60->xhv_keys, D.12769
	subq	$1, %rax	#, D.12769
	movq	%rax, 24(%r12)	# D.12769, xhv_60->xhv_keys
	.loc 1 1046 0
	movq	24(%r12), %rax	# xhv_60->xhv_keys, D.12769
	testq	%rax, %rax	# D.12769
	jne	.L208	#,
	.loc 1 1047 0
	movq	-72(%rbp), %rax	# hv, tmp247
	movl	12(%rax), %eax	# hv_22(D)->sv_flags, D.12756
	andl	$2147483647, %eax	#, D.12756
	movl	%eax, %edx	# D.12756, D.12756
	movq	-72(%rbp), %rax	# hv, tmp248
	movl	%edx, 12(%rax)	# D.12756, hv_22(D)->sv_flags
.L208:
	.loc 1 1049 0
	movq	-48(%rbp), %rax	# sv, D.12754
	jmp	.L215	#
.L197:
	.loc 1 993 0
	movl	$0, %r14d	#, i
	movq	%rbx, %r13	# entry, oentry
	movq	0(%r13), %rbx	# *oentry_190, entry
.L195:
	.loc 1 993 0 is_stmt 0 discriminator 1
	testq	%rbx, %rbx	# entry
	jne	.L212	#,
	.loc 1 1051 0 is_stmt 1
	movq	-72(%rbp), %rax	# hv, tmp249
	movl	12(%rax), %eax	# hv_22(D)->sv_flags, D.12756
	andl	$8388608, %eax	#, D.12756
	testl	%eax, %eax	# D.12756
	je	.L213	#,
	.loc 1 1052 0
	movq	-96(%rbp), %rax	# klen, klen.78
	movl	%eax, %edx	# klen.78, D.12755
	movq	-88(%rbp), %rsi	# key, tmp250
	movl	-100(%rbp), %eax	# k_flags, tmp251
	movl	$.LC6, %ecx	#,
	movl	%eax, %edi	# tmp251,
	call	S_hv_notallowed	#
.L213:
	.loc 1 1057 0
	movl	-100(%rbp), %eax	# k_flags, tmp252
	andl	$256, %eax	#, D.12755
	testl	%eax, %eax	# D.12755
	je	.L214	#,
	.loc 1 1058 0
	movq	-88(%rbp), %rax	# key, tmp253
	movq	%rax, %rdi	# tmp253,
	call	Perl_safesysfree	#
.L214:
	.loc 1 1059 0
	movl	$0, %eax	#, D.12754
.L215:
	.loc 1 1060 0
	addq	$96, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	S_hv_delete_common, .-S_hv_delete_common
	.type	S_hsplit, @function
S_hsplit:
.LFB21:
	.loc 1 1064 0
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
	subq	$104, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -120(%rbp)	# hv, hv
	.loc 1 1065 0
	movq	-120(%rbp), %rax	# hv, tmp189
	movq	(%rax), %r12	# hv_23(D)->sv_any, xhv
	.loc 1 1066 0
	movq	16(%r12), %rax	# xhv_24->xhv_max, D.12772
	addl	$1, %eax	#, tmp190
	movl	%eax, -92(%rbp)	# tmp190, oldsize
	.loc 1 1067 0
	movl	-92(%rbp), %eax	# oldsize, tmp191
	leal	(%rax,%rax), %r13d	#, newsize
	.loc 1 1069 0
	movq	(%r12), %rax	# xhv_24->xhv_array, a
	.loc 1 1074 0
	movl	$0, -104(%rbp)	#, longest_chain
	.loc 1 1080 0
	movq	-120(%rbp), %rax	# hv, tmp192
	movq	(%rax), %rax	# hv_23(D)->sv_any, D.12774
	movsd	32(%rax), %xmm0	# _31->xnv_nv, D.12775
	xorpd	%xmm1, %xmm1	# tmp193
	ucomisd	%xmm1, %xmm0	# tmp193, D.12775
	jp	.L257	#,
	xorpd	%xmm1, %xmm1	# tmp194
	ucomisd	%xmm1, %xmm0	# tmp194, D.12775
	je	.L217	#,
.L257:
	.loc 1 1080 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# hv, tmp195
	movl	12(%rax), %eax	# hv_23(D)->sv_flags, D.12776
	andl	$8388608, %eax	#, D.12776
	testl	%eax, %eax	# D.12776
	jne	.L217	#,
	.loc 1 1085 0 is_stmt 1
	movq	-120(%rbp), %rax	# hv, tmp196
	movq	%rax, %rdi	# tmp196,
	call	Perl_hv_clear_placeholders	#
.L217:
	.loc 1 1088 0
	movb	$1, PL_nomemok(%rip)	#, PL_nomemok
	.loc 1 1096 0
	cmpl	$63, %r13d	#, newsize
	jg	.L219	#,
	.loc 1 1096 0 is_stmt 0 discriminator 1
	movslq	%r13d, %rax	# newsize, D.12772
	salq	$3, %rax	#, iftmp.79
	jmp	.L220	#
.L219:
	.loc 1 1096 0 discriminator 2
	movslq	%r13d, %rax	# newsize, D.12772
	salq	$4, %rax	#, D.12772
	subq	$16, %rax	#, iftmp.79
.L220:
	.loc 1 1096 0 discriminator 3
	movq	%rax, %rdi	# iftmp.79,
	call	Perl_safesysmalloc	#
	movq	%rax, -136(%rbp)	# a, %sfp
	.loc 1 1097 0 is_stmt 1 discriminator 3
	testq	%rax, %rax	# a
	jne	.L221	#,
	.loc 1 1098 0
	movb	$0, PL_nomemok(%rip)	#, PL_nomemok
	.loc 1 1099 0
	jmp	.L216	#
.L221:
	.loc 1 1101 0
	movl	-92(%rbp), %eax	# oldsize, tmp197
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12772
	movq	(%r12), %rax	# xhv_24->xhv_array, D.12777
	movq	%rax, %rsi	# D.12777,
	movq	-136(%rbp), %rdi	# %sfp,
	call	memcpy	#
	.loc 1 1102 0
	cmpl	$63, -92(%rbp)	#, oldsize
	jle	.L223	#,
.LBB14:
	.loc 1 1103 0
	movq	(%r12), %rax	# xhv_24->xhv_array, tmp198
	movq	%rax, -80(%rbp)	# tmp198, new_chunk
	cmpl	$63, -92(%rbp)	#, oldsize
	jg	.L224	#,
	.loc 1 1103 0 is_stmt 0 discriminator 1
	movl	-92(%rbp), %eax	# oldsize, tmp199
	cltq
	sall	$3, %eax	#, iftmp.80
	jmp	.L225	#
.L224:
	.loc 1 1103 0 discriminator 2
	movl	-92(%rbp), %eax	# oldsize, tmp200
	cltq
	addl	$268435455, %eax	#, D.12776
	sall	$4, %eax	#, iftmp.80
.L225:
	.loc 1 1103 0 discriminator 3
	movl	%eax, -88(%rbp)	# iftmp.80, new_chunk_size
	movl	PL_nice_chunk_size(%rip), %eax	# PL_nice_chunk_size, PL_nice_chunk_size.81
	cmpl	%eax, -88(%rbp)	# PL_nice_chunk_size.81, new_chunk_size
	jbe	.L226	#,
	.loc 1 1103 0 discriminator 1
	movq	PL_nice_chunk(%rip), %rax	# PL_nice_chunk, PL_nice_chunk.82
	testq	%rax, %rax	# PL_nice_chunk.82
	je	.L227	#,
	movq	PL_nice_chunk(%rip), %rax	# PL_nice_chunk, PL_nice_chunk.83
	movq	%rax, %rdi	# PL_nice_chunk.83,
	call	Perl_safesysfree	#
.L227:
	.loc 1 1103 0 discriminator 2
	movq	-80(%rbp), %rax	# new_chunk, tmp201
	movq	%rax, PL_nice_chunk(%rip)	# tmp201, PL_nice_chunk
	movl	-88(%rbp), %eax	# new_chunk_size, tmp202
	movl	%eax, PL_nice_chunk_size(%rip)	# tmp202, PL_nice_chunk_size
	jmp	.L229	#
.L226:
	movq	(%r12), %rax	# xhv_24->xhv_array, D.12777
	movq	%rax, %rdi	# D.12777,
	call	Perl_safesysfree	#
.LBE14:
	jmp	.L229	#
.L223:
	.loc 1 1107 0 is_stmt 1
	movq	(%r12), %rax	# xhv_24->xhv_array, D.12777
	movq	%rax, %rdi	# D.12777,
	call	Perl_safesysfree	#
.L229:
	.loc 1 1110 0
	movb	$0, PL_nomemok(%rip)	#, PL_nomemok
	.loc 1 1111 0
	movl	%r13d, %eax	# newsize, D.12773
	subl	-92(%rbp), %eax	# oldsize, D.12773
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12772
	movl	-92(%rbp), %eax	# oldsize, tmp203
	cltq
	salq	$3, %rax	#, D.12772
	movq	-136(%rbp), %rbx	# %sfp, a
	addq	%rbx, %rax	# a, D.12778
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.12778,
	call	memset	#
	.loc 1 1112 0
	subl	$1, %r13d	#, newsize
	movslq	%r13d, %rax	# newsize, D.12772
	movq	%rax, 16(%r12)	# D.12772, xhv_24->xhv_max
	.loc 1 1113 0
	movq	%rbx, %rax	# a, a
	movq	%rax, (%r12)	# a, xhv_24->xhv_array
	.loc 1 1114 0
	movq	%rbx, %r15	# a, aep
	.loc 1 1116 0
	movl	$0, -124(%rbp)	#, %sfp
	jmp	.L230	#
.L240:
.LBB15:
	.loc 1 1117 0
	movl	$0, -100(%rbp)	#, left_length
	.loc 1 1118 0
	movl	$0, -96(%rbp)	#, right_length
	.loc 1 1120 0
	movq	(%r15), %rax	# *aep_3, D.12779
	testq	%rax, %rax	# D.12779
	jne	.L231	#,
	.loc 1 1121 0
	jmp	.L232	#
.L231:
	.loc 1 1122 0
	movl	-92(%rbp), %eax	# oldsize, tmp204
	cltq
	salq	$3, %rax	#, D.12772
	leaq	(%r15,%rax), %r14	#, bep
	.loc 1 1123 0
	movq	%r15, %rcx	# aep, oentry
	movq	(%r15), %rbx	# *aep_3, entry
	jmp	.L233	#
.L237:
	.loc 1 1124 0
	movq	8(%rbx), %rax	# entry_5->hent_hek, D.12780
	movl	(%rax), %edx	# _76->hek_hash, D.12776
	movl	%r13d, %eax	# newsize, newsize.84
	andl	%eax, %edx	# newsize.84, D.12776
	movl	-124(%rbp), %eax	# %sfp, i.85
	cmpl	%eax, %edx	# i.85, D.12776
	je	.L234	#,
	.loc 1 1125 0
	movq	(%rbx), %rax	# entry_5->hent_next, D.12779
	movq	%rax, (%rcx)	# D.12779, *oentry_8
	.loc 1 1126 0
	movq	(%r14), %rax	# *bep_73, D.12779
	movq	%rax, (%rbx)	# D.12779, entry_5->hent_next
	.loc 1 1127 0
	movq	(%r14), %rax	# *bep_73, D.12779
	testq	%rax, %rax	# D.12779
	jne	.L235	#,
	.loc 1 1128 0
	movq	8(%r12), %rax	# xhv_24->xhv_fill, D.12772
	addq	$1, %rax	#, D.12772
	movq	%rax, 8(%r12)	# D.12772, xhv_24->xhv_fill
.L235:
	.loc 1 1129 0
	movq	%rbx, (%r14)	# entry, *bep_73
	.loc 1 1130 0
	addl	$1, -96(%rbp)	#, right_length
	.loc 1 1131 0
	jmp	.L236	#
.L234:
	.loc 1 1134 0
	movq	%rbx, %rcx	# entry, oentry
	.loc 1 1135 0
	addl	$1, -100(%rbp)	#, left_length
.L236:
	.loc 1 1123 0
	movq	%rcx, %rax	# oentry, oentry
	movq	(%rax), %rbx	# *oentry_7, entry
.L233:
	.loc 1 1123 0 is_stmt 0 discriminator 1
	testq	%rbx, %rbx	# entry
	jne	.L237	#,
	.loc 1 1138 0 is_stmt 1
	movq	(%r15), %rax	# *aep_3, D.12779
	testq	%rax, %rax	# D.12779
	jne	.L238	#,
	.loc 1 1139 0
	movq	8(%r12), %rax	# xhv_24->xhv_fill, D.12772
	subq	$1, %rax	#, D.12772
	movq	%rax, 8(%r12)	# D.12772, xhv_24->xhv_fill
.L238:
	.loc 1 1143 0
	movl	-100(%rbp), %eax	# left_length, tmp205
	cmpl	-104(%rbp), %eax	# longest_chain, tmp205
	jle	.L239	#,
	.loc 1 1144 0
	movl	-100(%rbp), %eax	# left_length, tmp206
	movl	%eax, -104(%rbp)	# tmp206, longest_chain
.L239:
	.loc 1 1145 0
	movl	-96(%rbp), %eax	# right_length, tmp207
	cmpl	-104(%rbp), %eax	# longest_chain, tmp207
	jle	.L232	#,
	.loc 1 1146 0
	movl	-96(%rbp), %eax	# right_length, tmp208
	movl	%eax, -104(%rbp)	# tmp208, longest_chain
.L232:
.LBE15:
	.loc 1 1116 0
	addl	$1, -124(%rbp)	#, %sfp
	addq	$8, %r15	#, aep
.L230:
	.loc 1 1116 0 is_stmt 0 discriminator 1
	movl	-124(%rbp), %eax	# %sfp, i
	cmpl	-92(%rbp), %eax	# oldsize, i
	jl	.L240	#,
	.loc 1 1151 0 is_stmt 1
	cmpl	$14, -104(%rbp)	#, longest_chain
	jle	.L241	#,
	.loc 1 1152 0
	movq	-120(%rbp), %rax	# hv, tmp209
	movl	12(%rax), %eax	# hv_23(D)->sv_flags, D.12776
	andl	$268435456, %eax	#, D.12776
	testl	%eax, %eax	# D.12776
	je	.L242	#,
.L241:
	.loc 1 1153 0
	jmp	.L216	#
.L242:
	.loc 1 1156 0
	movq	PL_strtab(%rip), %rax	# PL_strtab, PL_strtab.86
	cmpq	%rax, -120(%rbp)	# PL_strtab.86, hv
	jne	.L243	#,
	.loc 1 1159 0
	jmp	.L216	#
.L243:
	.loc 1 1166 0
	addl	$1, %r13d	#, newsize
	.loc 1 1167 0
	cmpl	$63, %r13d	#, newsize
	jg	.L244	#,
	.loc 1 1167 0 is_stmt 0 discriminator 1
	movslq	%r13d, %rax	# newsize, D.12772
	salq	$3, %rax	#, iftmp.87
	jmp	.L245	#
.L244:
	.loc 1 1167 0 discriminator 2
	movslq	%r13d, %rax	# newsize, D.12772
	salq	$4, %rax	#, D.12772
	subq	$16, %rax	#, iftmp.87
.L245:
	.loc 1 1167 0 discriminator 3
	movq	%rax, %rdi	# iftmp.87,
	call	Perl_safesysmalloc	#
	movq	%rax, -136(%rbp)	#, %sfp
	cmpl	$63, %r13d	#, newsize
	jg	.L246	#,
	.loc 1 1167 0 discriminator 1
	movslq	%r13d, %rax	# newsize, D.12772
	salq	$3, %rax	#, iftmp.88
	jmp	.L247	#
.L246:
	.loc 1 1167 0 discriminator 2
	movslq	%r13d, %rax	# newsize, D.12772
	salq	$4, %rax	#, D.12772
	subq	$16, %rax	#, iftmp.88
.L247:
	.loc 1 1167 0 discriminator 3
	movq	%rax, %rdx	# iftmp.88,
	movl	$0, %esi	#,
	movq	-136(%rbp), %rdi	# %sfp,
	call	memset	#
	.loc 1 1168 0 is_stmt 1 discriminator 3
	movq	-120(%rbp), %rax	# hv, tmp210
	movl	12(%rax), %eax	# hv_23(D)->sv_flags, D.12776
	andl	$536870912, %eax	#, tmp211
	movl	%eax, -84(%rbp)	# tmp211, was_shared
	.loc 1 1170 0 discriminator 3
	movq	$0, 8(%r12)	#, xhv_24->xhv_fill
	.loc 1 1171 0 discriminator 3
	movq	-120(%rbp), %rax	# hv, tmp212
	movl	12(%rax), %eax	# hv_23(D)->sv_flags, D.12776
	andl	$-536870913, %eax	#, D.12776
	movl	%eax, %edx	# D.12776, D.12776
	movq	-120(%rbp), %rax	# hv, tmp213
	movl	%edx, 12(%rax)	# D.12776, hv_23(D)->sv_flags
	.loc 1 1172 0 discriminator 3
	movq	-120(%rbp), %rax	# hv, tmp214
	movl	12(%rax), %eax	# hv_23(D)->sv_flags, D.12776
	orl	$268435456, %eax	#, D.12776
	movl	%eax, %edx	# D.12776, D.12776
	movq	-120(%rbp), %rax	# hv, tmp215
	movl	%edx, 12(%rax)	# D.12776, hv_23(D)->sv_flags
	.loc 1 1174 0 discriminator 3
	movq	(%r12), %r15	# xhv_24->xhv_array, aep
	.loc 1 1176 0 discriminator 3
	movl	$0, -124(%rbp)	#, %sfp
	jmp	.L248	#
.L256:
	.loc 1 1177 0
	movq	(%r15), %rbx	# *aep_4, entry
	.loc 1 1178 0
	jmp	.L249	#
.L255:
.LBB16:
	.loc 1 1181 0
	movq	(%rbx), %rax	# entry_6->hent_next, tmp216
	movq	%rax, -72(%rbp)	# tmp216, next
.LBB17:
	.loc 1 1185 0
	movq	8(%rbx), %rax	# entry_6->hent_hek, D.12780
	leaq	8(%rax), %r14	#, s_PeRlHaSh_tmp
	movq	%r14, %rsi	# s_PeRlHaSh_tmp, s_PeRlHaSh
	movq	8(%rbx), %rax	# entry_6->hent_hek, D.12780
	movl	4(%rax), %eax	# _126->hek_len, i_PeRlHaSh
	movl	%eax, %ecx	# i_PeRlHaSh, i_PeRlHaSh
	movq	PL_rehash_seed(%rip), %rax	# PL_rehash_seed, PL_rehash_seed.89
	movl	%eax, %r14d	# PL_rehash_seed.89, hash_PeRlHaSh
	jmp	.L250	#
.L251:
	.loc 1 1185 0 is_stmt 0 discriminator 2
	movq	%rsi, %rax	# s_PeRlHaSh, s_PeRlHaSh.90
	leaq	1(%rax), %rsi	#, s_PeRlHaSh
	movzbl	(%rax), %eax	# *s_PeRlHaSh.90_132, D.12781
	movzbl	%al, %eax	# D.12781, D.12776
	addl	%eax, %r14d	# D.12776, hash_PeRlHaSh
	movl	%r14d, %eax	# hash_PeRlHaSh, D.12776
	sall	$10, %eax	#, D.12776
	addl	%eax, %r14d	# D.12776, hash_PeRlHaSh
	movl	%r14d, %eax	# hash_PeRlHaSh, D.12776
	shrl	$6, %eax	#, D.12776
	xorl	%eax, %r14d	# D.12776, hash_PeRlHaSh
.L250:
	.loc 1 1185 0 discriminator 1
	movl	%ecx, %eax	# i_PeRlHaSh, i_PeRlHaSh.91
	leal	-1(%rax), %ecx	#, i_PeRlHaSh
	testl	%eax, %eax	# i_PeRlHaSh.91
	jne	.L251	#,
	.loc 1 1185 0 discriminator 3
	leal	0(,%r14,8), %eax	#, D.12776
	addl	%eax, %r14d	# D.12776, hash_PeRlHaSh
	movl	%r14d, %eax	# hash_PeRlHaSh, D.12776
	shrl	$11, %eax	#, D.12776
	xorl	%eax, %r14d	# D.12776, hash_PeRlHaSh
	movl	%r14d, %eax	# hash_PeRlHaSh, D.12776
	sall	$15, %eax	#, D.12776
	addl	%r14d, %eax	# hash_PeRlHaSh, D.12776
	movl	%eax, %eax	# D.12776, tmp239
	movq	%rax, -64(%rbp)	# tmp239, hash
.LBE17:
	.loc 1 1187 0 is_stmt 1 discriminator 3
	cmpl	$0, -84(%rbp)	#, was_shared
	je	.L252	#,
.LBB18:
	.loc 1 1191 0
	movq	8(%rbx), %rdx	# entry_6->hent_hek, D.12780
	movq	8(%rbx), %rax	# entry_6->hent_hek, D.12780
	movl	4(%rax), %eax	# _150->hek_len, D.12773
	cltq
	addq	$1, %rax	#, D.12783
	addq	%rdx, %rax	# D.12780, tmp217
	addq	$8, %rax	#, D.12777
	movzbl	(%rax), %eax	# MEM[(unsigned char *)_154], D.12781
	.loc 1 1190 0
	movzbl	%al, %ecx	# D.12781, D.12773
	movq	-64(%rbp), %rax	# hash, tmp218
	movl	%eax, %edx	# tmp218, D.12776
	movq	8(%rbx), %rax	# entry_6->hent_hek, D.12780
	movl	4(%rax), %eax	# _158->hek_len, D.12773
	movq	8(%rbx), %rsi	# entry_6->hent_hek, D.12780
	leaq	8(%rsi), %rdi	#, D.12784
	.loc 1 1189 0
	movl	%eax, %esi	# D.12773,
	call	S_save_hek_flags	#
	movq	%rax, -56(%rbp)	# tmp219, new_hek
	.loc 1 1192 0
	movq	8(%rbx), %rax	# entry_6->hent_hek, D.12780
	movq	%rax, %rdi	# D.12780,
	call	Perl_unshare_hek	#
	.loc 1 1193 0
	movq	-56(%rbp), %rax	# new_hek, tmp220
	movq	%rax, 8(%rbx)	# tmp220, entry_6->hent_hek
.LBE18:
	jmp	.L253	#
.L252:
	.loc 1 1196 0
	movq	8(%rbx), %rax	# entry_6->hent_hek, D.12780
	movq	-64(%rbp), %rdx	# hash, tmp221
	movl	%edx, (%rax)	# D.12776, _164->hek_hash
.L253:
	.loc 1 1199 0
	movq	8(%rbx), %rdx	# entry_6->hent_hek, D.12780
	movq	8(%rbx), %rax	# entry_6->hent_hek, D.12780
	movl	4(%rax), %eax	# _167->hek_len, D.12773
	cltq
	addq	$1, %rax	#, D.12783
	addq	%rdx, %rax	# D.12780, tmp222
	leaq	8(%rax), %rdx	#, D.12777
	movq	8(%rbx), %rcx	# entry_6->hent_hek, D.12780
	movq	8(%rbx), %rax	# entry_6->hent_hek, D.12780
	movl	4(%rax), %eax	# _173->hek_len, D.12773
	cltq
	addq	$1, %rax	#, D.12783
	addq	%rcx, %rax	# D.12780, tmp223
	addq	$8, %rax	#, D.12777
	movzbl	(%rax), %eax	# MEM[(unsigned char *)_177], D.12781
	orl	$4, %eax	#, D.12781
	movb	%al, (%rdx)	# D.12781, MEM[(unsigned char *)_171]
	.loc 1 1203 0
	movq	16(%r12), %rax	# xhv_24->xhv_max, D.12772
	cltq
	andq	-64(%rbp), %rax	# hash, D.12772
	salq	$3, %rax	#, D.12772
	movq	-136(%rbp), %rsi	# %sfp, a
	leaq	(%rsi,%rax), %r14	#, bep
	.loc 1 1204 0
	movq	(%r14), %rax	# *bep_185, D.12779
	testq	%rax, %rax	# D.12779
	jne	.L254	#,
	.loc 1 1205 0
	movq	8(%r12), %rax	# xhv_24->xhv_fill, D.12772
	addq	$1, %rax	#, D.12772
	movq	%rax, 8(%r12)	# D.12772, xhv_24->xhv_fill
.L254:
	.loc 1 1206 0
	movq	(%r14), %rax	# *bep_185, D.12779
	movq	%rax, (%rbx)	# D.12779, entry_6->hent_next
	.loc 1 1207 0
	movq	%rbx, (%r14)	# entry, *bep_185
	.loc 1 1209 0
	movq	-72(%rbp), %rbx	# next, entry
.L249:
.LBE16:
	.loc 1 1178 0 discriminator 1
	testq	%rbx, %rbx	# entry
	jne	.L255	#,
	.loc 1 1176 0
	addl	$1, -124(%rbp)	#, %sfp
	addq	$8, %r15	#, aep
.L248:
	.loc 1 1176 0 is_stmt 0 discriminator 1
	cmpl	%r13d, -124(%rbp)	# newsize, %sfp
	jl	.L256	#,
	.loc 1 1212 0 is_stmt 1
	movq	(%r12), %rax	# xhv_24->xhv_array, D.12777
	movq	%rax, %rdi	# D.12777,
	call	Perl_safesysfree	#
	.loc 1 1213 0
	movq	-136(%rbp), %rax	# %sfp, a
	movq	%rax, (%r12)	# a, xhv_24->xhv_array
.L216:
	.loc 1 1214 0
	addq	$104, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	S_hsplit, .-S_hsplit
	.globl	Perl_hv_ksplit
	.type	Perl_hv_ksplit, @function
Perl_hv_ksplit:
.LFB22:
	.loc 1 1218 0
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
	subq	$40, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -72(%rbp)	# hv, hv
	movq	%rsi, -80(%rbp)	# newmax, newmax
	.loc 1 1219 0
	movq	-72(%rbp), %rax	# hv, tmp131
	movq	(%rax), %r12	# hv_13(D)->sv_any, xhv
	.loc 1 1220 0
	movq	16(%r12), %rax	# xhv_14->xhv_max, D.12786
	addl	$1, %eax	#, tmp132
	movl	%eax, -64(%rbp)	# tmp132, oldsize
	.loc 1 1229 0
	movq	-80(%rbp), %rax	# newmax, tmp133
	movl	%eax, %ebx	# tmp133, newsize
	.loc 1 1230 0
	movslq	%ebx, %rax	# newsize, D.12788
	cmpq	-80(%rbp), %rax	# newmax, D.12788
	jne	.L259	#,
	.loc 1 1230 0 is_stmt 0 discriminator 1
	movl	-64(%rbp), %eax	# oldsize, tmp134
	cltq
	cmpq	-80(%rbp), %rax	# newmax, D.12788
	jl	.L260	#,
.L259:
	.loc 1 1231 0 is_stmt 1
	jmp	.L258	#
.L260:
	.loc 1 1232 0
	jmp	.L262	#
.L263:
	.loc 1 1233 0
	movl	%ebx, %eax	# newsize, D.12787
	negl	%eax	# D.12787
	andl	%ebx, %eax	# newsize, D.12787
	notl	%eax	# D.12787
	andl	%eax, %ebx	# D.12787, newsize
.L262:
	.loc 1 1232 0 discriminator 1
	movl	%ebx, %eax	# newsize, D.12787
	negl	%eax	# D.12787
	andl	%ebx, %eax	# newsize, D.12787
	cmpl	%ebx, %eax	# newsize, D.12787
	jne	.L263	#,
	.loc 1 1235 0
	movslq	%ebx, %rax	# newsize, D.12788
	cmpq	-80(%rbp), %rax	# newmax, D.12788
	jge	.L264	#,
	.loc 1 1236 0
	addl	%ebx, %ebx	# newsize
.L264:
	.loc 1 1237 0
	movslq	%ebx, %rax	# newsize, D.12788
	cmpq	-80(%rbp), %rax	# newmax, D.12788
	jge	.L265	#,
	.loc 1 1238 0
	jmp	.L258	#
.L265:
	.loc 1 1240 0
	movq	(%r12), %r13	# xhv_14->xhv_array, a
	.loc 1 1241 0
	testq	%r13, %r13	# a
	je	.L266	#,
	.loc 1 1242 0
	movb	$1, PL_nomemok(%rip)	#, PL_nomemok
	.loc 1 1250 0
	cmpl	$63, %ebx	#, newsize
	jg	.L267	#,
	.loc 1 1250 0 is_stmt 0 discriminator 1
	movslq	%ebx, %rax	# newsize, D.12786
	salq	$3, %rax	#, iftmp.92
	jmp	.L268	#
.L267:
	.loc 1 1250 0 discriminator 2
	movslq	%ebx, %rax	# newsize, D.12786
	salq	$4, %rax	#, D.12786
	subq	$16, %rax	#, iftmp.92
.L268:
	.loc 1 1250 0 discriminator 3
	movq	%rax, %rdi	# iftmp.92,
	call	Perl_safesysmalloc	#
	movq	%rax, %r13	#, a
	.loc 1 1251 0 is_stmt 1 discriminator 3
	testq	%r13, %r13	# a
	jne	.L269	#,
	.loc 1 1252 0
	movb	$0, PL_nomemok(%rip)	#, PL_nomemok
	.loc 1 1253 0
	jmp	.L258	#
.L269:
	.loc 1 1255 0
	movl	-64(%rbp), %eax	# oldsize, tmp135
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12786
	movq	(%r12), %rax	# xhv_14->xhv_array, D.12789
	movq	%rax, %rsi	# D.12789,
	movq	%r13, %rdi	# a,
	call	memcpy	#
	.loc 1 1256 0
	cmpl	$63, -64(%rbp)	#, oldsize
	jle	.L270	#,
.LBB19:
	.loc 1 1257 0
	movq	(%r12), %rax	# xhv_14->xhv_array, tmp136
	movq	%rax, -56(%rbp)	# tmp136, new_chunk
	cmpl	$63, -64(%rbp)	#, oldsize
	jg	.L271	#,
	.loc 1 1257 0 is_stmt 0 discriminator 1
	movl	-64(%rbp), %eax	# oldsize, tmp137
	cltq
	sall	$3, %eax	#, iftmp.93
	jmp	.L272	#
.L271:
	.loc 1 1257 0 discriminator 2
	movl	-64(%rbp), %eax	# oldsize, tmp138
	cltq
	addl	$268435455, %eax	#, D.12790
	sall	$4, %eax	#, iftmp.93
.L272:
	.loc 1 1257 0 discriminator 3
	movl	%eax, -60(%rbp)	# iftmp.93, new_chunk_size
	movl	PL_nice_chunk_size(%rip), %eax	# PL_nice_chunk_size, PL_nice_chunk_size.94
	cmpl	%eax, -60(%rbp)	# PL_nice_chunk_size.94, new_chunk_size
	jbe	.L273	#,
	.loc 1 1257 0 discriminator 1
	movq	PL_nice_chunk(%rip), %rax	# PL_nice_chunk, PL_nice_chunk.95
	testq	%rax, %rax	# PL_nice_chunk.95
	je	.L274	#,
	movq	PL_nice_chunk(%rip), %rax	# PL_nice_chunk, PL_nice_chunk.96
	movq	%rax, %rdi	# PL_nice_chunk.96,
	call	Perl_safesysfree	#
.L274:
	.loc 1 1257 0 discriminator 2
	movq	-56(%rbp), %rax	# new_chunk, tmp139
	movq	%rax, PL_nice_chunk(%rip)	# tmp139, PL_nice_chunk
	movl	-60(%rbp), %eax	# new_chunk_size, tmp140
	movl	%eax, PL_nice_chunk_size(%rip)	# tmp140, PL_nice_chunk_size
	jmp	.L276	#
.L273:
	movq	(%r12), %rax	# xhv_14->xhv_array, D.12789
	movq	%rax, %rdi	# D.12789,
	call	Perl_safesysfree	#
.LBE19:
	jmp	.L276	#
.L270:
	.loc 1 1261 0 is_stmt 1
	movq	(%r12), %rax	# xhv_14->xhv_array, D.12789
	movq	%rax, %rdi	# D.12789,
	call	Perl_safesysfree	#
.L276:
	.loc 1 1263 0 discriminator 1
	movb	$0, PL_nomemok(%rip)	#, PL_nomemok
	.loc 1 1264 0 discriminator 1
	movl	%ebx, %eax	# newsize, D.12787
	subl	-64(%rbp), %eax	# oldsize, D.12787
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12786
	movl	-64(%rbp), %eax	# oldsize, tmp141
	cltq
	salq	$3, %rax	#, D.12786
	addq	%r13, %rax	# a, D.12791
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.12791,
	call	memset	#
	jmp	.L277	#
.L266:
	.loc 1 1267 0
	cmpl	$63, %ebx	#, newsize
	jg	.L278	#,
	.loc 1 1267 0 is_stmt 0 discriminator 1
	movslq	%ebx, %rax	# newsize, D.12786
	salq	$3, %rax	#, iftmp.97
	jmp	.L279	#
.L278:
	.loc 1 1267 0 discriminator 2
	movslq	%ebx, %rax	# newsize, D.12786
	salq	$4, %rax	#, D.12786
	subq	$16, %rax	#, iftmp.97
.L279:
	.loc 1 1267 0 discriminator 3
	movq	%rax, %rdi	# iftmp.97,
	call	Perl_safesysmalloc	#
	movq	%rax, %r13	#, a
	cmpl	$63, %ebx	#, newsize
	jg	.L280	#,
	.loc 1 1267 0 discriminator 1
	movslq	%ebx, %rax	# newsize, D.12786
	salq	$3, %rax	#, iftmp.98
	jmp	.L281	#
.L280:
	.loc 1 1267 0 discriminator 2
	movslq	%ebx, %rax	# newsize, D.12786
	salq	$4, %rax	#, D.12786
	subq	$16, %rax	#, iftmp.98
.L281:
	.loc 1 1267 0 discriminator 3
	movq	%rax, %rdx	# iftmp.98,
	movl	$0, %esi	#,
	movq	%r13, %rdi	# a,
	call	memset	#
.L277:
	.loc 1 1269 0 is_stmt 1
	subl	$1, %ebx	#, newsize
	movslq	%ebx, %rax	# newsize, D.12786
	movq	%rax, 16(%r12)	# D.12786, xhv_14->xhv_max
	.loc 1 1270 0
	movq	%r13, (%r12)	# a, xhv_14->xhv_array
	.loc 1 1271 0
	movq	8(%r12), %rax	# xhv_14->xhv_fill, D.12786
	testq	%rax, %rax	# D.12786
	jne	.L282	#,
	.loc 1 1272 0
	jmp	.L258	#
.L282:
	.loc 1 1274 0
	movq	%r13, %r14	# a, aep
	.loc 1 1275 0
	movl	$0, %r15d	#, i
	jmp	.L283	#
.L291:
	.loc 1 1276 0
	movq	(%r14), %rax	# *aep_5, D.12792
	testq	%rax, %rax	# D.12792
	jne	.L284	#,
	.loc 1 1277 0
	jmp	.L285	#
.L284:
	.loc 1 1278 0
	movq	%r14, %rcx	# aep, oentry
	movq	(%r14), %r13	# *aep_5, entry
	jmp	.L286	#
.L290:
	.loc 1 1279 0
	movq	8(%r13), %rax	# entry_6->hent_hek, D.12793
	movl	(%rax), %edx	# _80->hek_hash, D.12790
	movl	%ebx, %eax	# newsize, newsize.99
	andl	%edx, %eax	# D.12790, D.12790
	movl	%eax, %esi	# j, j
	cmpl	%r15d, %eax	# i, j
	je	.L287	#,
	.loc 1 1280 0
	subl	%r15d, %esi	# i, j
	.loc 1 1281 0
	movq	0(%r13), %rax	# entry_6->hent_next, D.12792
	movq	%rax, (%rcx)	# D.12792, *oentry_8
	.loc 1 1282 0
	movslq	%esi, %rax	# j, D.12786
	salq	$3, %rax	#, D.12786
	addq	%r14, %rax	# aep, D.12794
	movq	(%rax), %rax	# *_89, D.12792
	movq	%rax, 0(%r13)	# D.12792, entry_6->hent_next
	movq	0(%r13), %rax	# entry_6->hent_next, D.12792
	testq	%rax, %rax	# D.12792
	jne	.L288	#,
	.loc 1 1283 0
	movq	8(%r12), %rax	# xhv_14->xhv_fill, D.12786
	addq	$1, %rax	#, D.12786
	movq	%rax, 8(%r12)	# D.12786, xhv_14->xhv_fill
.L288:
	.loc 1 1284 0
	movslq	%esi, %rax	# j, D.12786
	salq	$3, %rax	#, D.12786
	addq	%r14, %rax	# aep, D.12794
	movq	%r13, (%rax)	# entry, *_96
	.loc 1 1285 0
	jmp	.L289	#
.L287:
	.loc 1 1288 0
	movq	%r13, %rcx	# entry, oentry
.L289:
	.loc 1 1278 0
	movq	%rcx, %rax	# oentry, oentry
	movq	(%rax), %r13	# *oentry_7, entry
.L286:
	.loc 1 1278 0 is_stmt 0 discriminator 1
	testq	%r13, %r13	# entry
	jne	.L290	#,
	.loc 1 1290 0 is_stmt 1
	movq	(%r14), %rax	# *aep_5, D.12792
	testq	%rax, %rax	# D.12792
	jne	.L285	#,
	.loc 1 1291 0
	movq	8(%r12), %rax	# xhv_14->xhv_fill, D.12786
	subq	$1, %rax	#, D.12786
	movq	%rax, 8(%r12)	# D.12786, xhv_14->xhv_fill
.L285:
	.loc 1 1275 0
	addl	$1, %r15d	#, i
	addq	$8, %r14	#, aep
.L283:
	.loc 1 1275 0 is_stmt 0 discriminator 1
	cmpl	-64(%rbp), %r15d	# oldsize, i
	jl	.L291	#,
.L258:
	.loc 1 1293 0 is_stmt 1
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	Perl_hv_ksplit, .-Perl_hv_ksplit
	.globl	Perl_newHV
	.type	Perl_newHV, @function
Perl_newHV:
.LFB23:
	.loc 1 1305 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	.loc 1 1309 0
	movl	$0, %edi	#,
	call	Perl_newSV	#
	movq	%rax, %rbx	#, hv
	.loc 1 1310 0
	movl	$11, %esi	#,
	movq	%rbx, %rdi	# hv,
	call	Perl_sv_upgrade	#
	.loc 1 1311 0
	movq	(%rbx), %r12	# hv_1->sv_any, xhv
	.loc 1 1312 0
	movl	12(%rbx), %eax	# hv_1->sv_flags, D.12795
	andl	$-67371009, %eax	#, D.12795
	movl	%eax, 12(%rbx)	# D.12795, hv_1->sv_flags
	.loc 1 1313 0
	movl	12(%rbx), %eax	# hv_1->sv_flags, D.12795
	andl	$-33685505, %eax	#, D.12795
	movl	%eax, 12(%rbx)	# D.12795, hv_1->sv_flags
	.loc 1 1315 0
	movl	12(%rbx), %eax	# hv_1->sv_flags, D.12795
	orl	$536870912, %eax	#, D.12795
	movl	%eax, 12(%rbx)	# D.12795, hv_1->sv_flags
	.loc 1 1318 0
	movq	$7, 16(%r12)	#, xhv_2->xhv_max
	.loc 1 1319 0
	movq	$0, 8(%r12)	#, xhv_2->xhv_fill
	.loc 1 1320 0
	movq	$0, 72(%r12)	#, xhv_2->xhv_pmroot
	.loc 1 1321 0
	movq	%rbx, %rdi	# hv,
	call	Perl_hv_iterinit	#
	.loc 1 1322 0
	movq	%rbx, %rax	# hv, D.12796
	.loc 1 1323 0
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	Perl_newHV, .-Perl_newHV
	.globl	Perl_newHVhv
	.type	Perl_newHVhv, @function
Perl_newHVhv:
.LFB24:
	.loc 1 1327 0
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
	movq	%rdi, -152(%rbp)	# ohv, ohv
	.loc 1 1328 0
	call	Perl_newHV	#
	movq	%rax, -96(%rbp)	# tmp128, hv
	.loc 1 1331 0
	cmpq	$0, -152(%rbp)	#, ohv
	je	.L295	#,
	.loc 1 1331 0 is_stmt 0 discriminator 1
	movq	-152(%rbp), %rax	# ohv, tmp129
	movq	(%rax), %rax	# ohv_9(D)->sv_any, D.12798
	movq	8(%rax), %rax	# _10->xhv_fill, tmp130
	movq	%rax, -88(%rbp)	# tmp130, hv_fill
	cmpq	$0, -88(%rbp)	#, hv_fill
	jne	.L296	#,
.L295:
	.loc 1 1332 0 is_stmt 1
	movq	-96(%rbp), %rax	# hv, D.12797
	jmp	.L297	#
.L296:
	.loc 1 1333 0
	movq	-152(%rbp), %rax	# ohv, tmp131
	movq	(%rax), %rax	# ohv_9(D)->sv_any, D.12798
	movq	16(%rax), %rax	# _12->xhv_max, tmp132
	movq	%rax, -128(%rbp)	# tmp132, hv_max
	.loc 1 1335 0
	movq	-152(%rbp), %rax	# ohv, tmp133
	movl	12(%rax), %eax	# MEM[(struct SV *)ohv_9(D)].sv_flags, D.12799
	andl	$57344, %eax	#, D.12799
	testl	%eax, %eax	# D.12799
	jne	.L298	#,
.LBB20:
	.loc 1 1338 0
	movq	-152(%rbp), %rax	# ohv, tmp134
	movl	12(%rax), %eax	# ohv_9(D)->sv_flags, D.12799
	andl	$536870912, %eax	#, D.12799
	testl	%eax, %eax	# D.12799
	setne	%al	#, D.12800
	movb	%al, -141(%rbp)	# D.12800, shared
	.loc 1 1339 0
	movq	-152(%rbp), %rax	# ohv, tmp135
	movq	(%rax), %rax	# ohv_9(D)->sv_any, D.12798
	movq	(%rax), %rax	# _20->xhv_array, tmp136
	movq	%rax, -80(%rbp)	# tmp136, oents
	.loc 1 1341 0
	movq	-128(%rbp), %rax	# hv_max, tmp137
	addq	$1, %rax	#, D.12801
	cmpq	$63, %rax	#, D.12801
	ja	.L299	#,
	.loc 1 1341 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# hv_max, tmp138
	addq	$1, %rax	#, D.12801
	salq	$3, %rax	#, iftmp.100
	jmp	.L300	#
.L299:
	.loc 1 1341 0 discriminator 2
	movq	-128(%rbp), %rax	# hv_max, tmp139
	addq	$1, %rax	#, D.12801
	salq	$4, %rax	#, D.12801
	subq	$16, %rax	#, iftmp.100
.L300:
	.loc 1 1341 0 discriminator 3
	movq	%rax, %rdi	# iftmp.100,
	call	Perl_safesysmalloc	#
	movq	%rax, -72(%rbp)	# tmp140, a
	.loc 1 1342 0 is_stmt 1 discriminator 3
	movq	-72(%rbp), %rax	# a, tmp141
	movq	%rax, -64(%rbp)	# tmp141, ents
	.loc 1 1345 0 discriminator 3
	movq	$0, -120(%rbp)	#, i
	jmp	.L301	#
.L310:
.LBB21:
	.loc 1 1346 0
	movq	$0, -112(%rbp)	#, prev
	movq	$0, -56(%rbp)	#, ent
	movq	-120(%rbp), %rax	# i, tmp142
	leaq	0(,%rax,8), %rdx	#, D.12801
	movq	-80(%rbp), %rax	# oents, tmp143
	addq	%rdx, %rax	# D.12801, D.12802
	movq	(%rax), %rax	# *_34, tmp144
	movq	%rax, -104(%rbp)	# tmp144, oent
	.loc 1 1348 0
	cmpq	$0, -104(%rbp)	#, oent
	jne	.L302	#,
	.loc 1 1349 0
	movq	-120(%rbp), %rax	# i, tmp145
	leaq	0(,%rax,8), %rdx	#, D.12801
	movq	-64(%rbp), %rax	# ents, tmp146
	addq	%rdx, %rax	# D.12801, D.12802
	movq	$0, (%rax)	#, *_37
	.loc 1 1350 0
	jmp	.L303	#
.L302:
	.loc 1 1354 0
	movq	-120(%rbp), %rax	# i, tmp147
	leaq	0(,%rax,8), %rdx	#, D.12801
	movq	-80(%rbp), %rax	# oents, tmp148
	addq	%rdx, %rax	# D.12801, D.12802
	movq	(%rax), %rax	# *_39, tmp149
	movq	%rax, -104(%rbp)	# tmp149, oent
	jmp	.L304	#
.L309:
.LBB22:
	.loc 1 1355 0
	movq	-104(%rbp), %rax	# oent, tmp150
	movq	8(%rax), %rax	# oent_4->hent_hek, D.12803
	movl	(%rax), %eax	# _41->hek_hash, tmp151
	movl	%eax, -140(%rbp)	# tmp151, hash
	.loc 1 1356 0
	movq	-104(%rbp), %rax	# oent, tmp152
	movq	8(%rax), %rax	# oent_4->hent_hek, D.12803
	addq	$8, %rax	#, tmp153
	movq	%rax, -48(%rbp)	# tmp153, key
	.loc 1 1357 0
	movq	-104(%rbp), %rax	# oent, tmp154
	movq	8(%rax), %rax	# oent_4->hent_hek, D.12803
	movl	4(%rax), %eax	# _45->hek_len, D.12804
	cltq
	movq	%rax, -40(%rbp)	# tmp155, len
	.loc 1 1358 0
	movq	-104(%rbp), %rax	# oent, tmp156
	movq	8(%rax), %rdx	# oent_4->hent_hek, D.12803
	movq	-104(%rbp), %rax	# oent, tmp157
	movq	8(%rax), %rax	# oent_4->hent_hek, D.12803
	movl	4(%rax), %eax	# _49->hek_len, D.12804
	cltq
	addq	$1, %rax	#, D.12805
	addq	%rdx, %rax	# D.12803, tmp158
	addq	$8, %rax	#, D.12806
	movzbl	(%rax), %eax	# MEM[(unsigned char *)_53], D.12807
	movzbl	%al, %eax	# D.12807, tmp159
	movl	%eax, -136(%rbp)	# tmp159, flags
	.loc 1 1360 0
	call	S_new_he	#
	movq	%rax, -56(%rbp)	# tmp160, ent
	.loc 1 1361 0
	movq	-104(%rbp), %rax	# oent, tmp161
	movq	16(%rax), %rax	# oent_4->hent_val, D.12808
	movq	%rax, %rdi	# D.12808,
	call	Perl_newSVsv	#
	movq	-56(%rbp), %rdx	# ent, tmp162
	movq	%rax, 16(%rdx)	# D.12808, ent_56->hent_val
	.loc 1 1364 0
	cmpb	$0, -141(%rbp)	#, shared
	je	.L305	#,
	.loc 1 1363 0
	movq	-40(%rbp), %rax	# len, tmp163
	movl	%eax, %esi	# tmp163, D.12804
	.loc 1 1364 0
	movl	-136(%rbp), %ecx	# flags, tmp164
	movl	-140(%rbp), %edx	# hash, tmp165
	movq	-48(%rbp), %rax	# key, tmp166
	movq	%rax, %rdi	# tmp166,
	call	S_share_hek_flags	#
	jmp	.L306	#
.L305:
	.loc 1 1364 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# len, tmp167
	movl	%eax, %esi	# tmp167, D.12804
	movl	-136(%rbp), %ecx	# flags, tmp168
	movl	-140(%rbp), %edx	# hash, tmp169
	movq	-48(%rbp), %rax	# key, tmp170
	movq	%rax, %rdi	# tmp170,
	call	S_save_hek_flags	#
.L306:
	.loc 1 1363 0 is_stmt 1
	movq	-56(%rbp), %rdx	# ent, tmp171
	movq	%rax, 8(%rdx)	# iftmp.101, ent_56->hent_hek
	.loc 1 1365 0
	cmpq	$0, -112(%rbp)	#, prev
	je	.L307	#,
	.loc 1 1366 0
	movq	-112(%rbp), %rax	# prev, tmp172
	movq	-56(%rbp), %rdx	# ent, tmp173
	movq	%rdx, (%rax)	# tmp173, prev_3->hent_next
	jmp	.L308	#
.L307:
	.loc 1 1368 0
	movq	-120(%rbp), %rax	# i, tmp174
	leaq	0(,%rax,8), %rdx	#, D.12801
	movq	-64(%rbp), %rax	# ents, tmp175
	addq	%rax, %rdx	# tmp175, D.12802
	movq	-56(%rbp), %rax	# ent, tmp176
	movq	%rax, (%rdx)	# tmp176, *_64
.L308:
	.loc 1 1369 0
	movq	-56(%rbp), %rax	# ent, tmp177
	movq	%rax, -112(%rbp)	# tmp177, prev
	.loc 1 1370 0
	movq	-56(%rbp), %rax	# ent, tmp178
	movq	$0, (%rax)	#, ent_56->hent_next
.LBE22:
	.loc 1 1354 0
	movq	-104(%rbp), %rax	# oent, tmp179
	movq	(%rax), %rax	# oent_4->hent_next, tmp180
	movq	%rax, -104(%rbp)	# tmp180, oent
.L304:
	.loc 1 1354 0 is_stmt 0 discriminator 1
	cmpq	$0, -104(%rbp)	#, oent
	jne	.L309	#,
.L303:
.LBE21:
	.loc 1 1345 0 is_stmt 1
	addq	$1, -120(%rbp)	#, i
.L301:
	.loc 1 1345 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# i, tmp181
	cmpq	-128(%rbp), %rax	# hv_max, tmp181
	jbe	.L310	#,
	.loc 1 1374 0 is_stmt 1
	movq	-96(%rbp), %rax	# hv, tmp182
	movq	(%rax), %rax	# hv_8->sv_any, D.12798
	movq	-128(%rbp), %rdx	# hv_max, tmp183
	movq	%rdx, 16(%rax)	# tmp183, _68->xhv_max
	.loc 1 1375 0
	movq	-96(%rbp), %rax	# hv, tmp184
	movq	(%rax), %rax	# hv_8->sv_any, D.12798
	movq	-88(%rbp), %rdx	# hv_fill, tmp185
	movq	%rdx, 8(%rax)	# tmp185, _69->xhv_fill
	.loc 1 1376 0
	movq	-96(%rbp), %rax	# hv, tmp186
	movq	(%rax), %rax	# hv_8->sv_any, D.12798
	movq	-152(%rbp), %rdx	# ohv, tmp187
	movq	(%rdx), %rdx	# ohv_9(D)->sv_any, D.12798
	movq	24(%rdx), %rdx	# _71->xhv_keys, D.12809
	movq	%rdx, 24(%rax)	# D.12809, _70->xhv_keys
	.loc 1 1377 0
	movq	-96(%rbp), %rax	# hv, tmp188
	movq	(%rax), %rax	# hv_8->sv_any, D.12798
	movq	-64(%rbp), %rdx	# ents, tmp189
	movq	%rdx, (%rax)	# tmp189, MEM[(struct HE * * *)_74]
.LBE20:
	jmp	.L311	#
.L298:
.LBB23:
	.loc 1 1382 0
	movq	-152(%rbp), %rax	# ohv, tmp190
	movq	(%rax), %rax	# ohv_9(D)->sv_any, D.12798
	movl	56(%rax), %eax	# _75->xhv_riter, tmp191
	movl	%eax, -132(%rbp)	# tmp191, riter
	.loc 1 1383 0
	movq	-152(%rbp), %rax	# ohv, tmp192
	movq	(%rax), %rax	# ohv_9(D)->sv_any, D.12798
	movq	64(%rax), %rax	# _77->xhv_eiter, tmp193
	movq	%rax, -32(%rbp)	# tmp193, eiter
	.loc 1 1386 0
	jmp	.L312	#
.L314:
	.loc 1 1387 0
	movq	-128(%rbp), %rax	# hv_max, tmp195
	shrq	%rax	# tmp194
	movq	%rax, -128(%rbp)	# tmp194, hv_max
.L312:
	.loc 1 1386 0 discriminator 1
	cmpq	$0, -128(%rbp)	#, hv_max
	je	.L313	#,
	.loc 1 1386 0 is_stmt 0 discriminator 2
	movq	-128(%rbp), %rax	# hv_max, tmp196
	leaq	1(%rax), %rdx	#, D.12801
	movq	-88(%rbp), %rax	# hv_fill, tmp197
	addq	%rax, %rax	# D.12801
	cmpq	%rax, %rdx	# D.12801, D.12801
	jae	.L314	#,
.L313:
	.loc 1 1388 0 is_stmt 1
	movq	-96(%rbp), %rax	# hv, tmp198
	movq	(%rax), %rax	# hv_8->sv_any, D.12798
	movq	-128(%rbp), %rdx	# hv_max, tmp199
	movq	%rdx, 16(%rax)	# tmp199, _82->xhv_max
	.loc 1 1390 0
	movq	-152(%rbp), %rax	# ohv, tmp200
	movq	%rax, %rdi	# tmp200,
	call	Perl_hv_iterinit	#
	.loc 1 1391 0
	jmp	.L315	#
.L316:
	.loc 1 1394 0
	movq	-24(%rbp), %rax	# entry, tmp201
	movq	8(%rax), %rdx	# entry_83->hent_hek, D.12803
	movq	-24(%rbp), %rax	# entry, tmp202
	movq	8(%rax), %rax	# entry_83->hent_hek, D.12803
	movl	4(%rax), %eax	# _85->hek_len, D.12804
	cltq
	addq	$1, %rax	#, D.12805
	addq	%rdx, %rax	# D.12803, tmp203
	addq	$8, %rax	#, D.12806
	movzbl	(%rax), %eax	# MEM[(unsigned char *)_89], D.12807
	.loc 1 1392 0
	movzbl	%al, %r12d	# D.12807, D.12804
	.loc 1 1393 0
	movq	-24(%rbp), %rax	# entry, tmp204
	movq	8(%rax), %rax	# entry_83->hent_hek, D.12803
	.loc 1 1392 0
	movl	(%rax), %ebx	# _92->hek_hash, D.12799
	movq	-24(%rbp), %rax	# entry, tmp205
	movq	16(%rax), %rax	# entry_83->hent_val, D.12808
	movq	%rax, %rdi	# D.12808,
	call	Perl_newSVsv	#
	movq	%rax, %rcx	#, D.12808
	movq	-24(%rbp), %rax	# entry, tmp206
	movq	8(%rax), %rax	# entry_83->hent_hek, D.12803
	movl	4(%rax), %edx	# _96->hek_len, D.12804
	movq	-24(%rbp), %rax	# entry, tmp207
	movq	8(%rax), %rax	# entry_83->hent_hek, D.12803
	leaq	8(%rax), %rsi	#, D.12811
	movq	-96(%rbp), %rax	# hv, tmp208
	movl	%r12d, %r9d	# D.12804,
	movl	%ebx, %r8d	# D.12799,
	movq	%rax, %rdi	# tmp208,
	call	Perl_hv_store_flags	#
.L315:
	.loc 1 1391 0 discriminator 1
	movq	-152(%rbp), %rax	# ohv, tmp209
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp209,
	call	Perl_hv_iternext_flags	#
	movq	%rax, -24(%rbp)	# tmp210, entry
	cmpq	$0, -24(%rbp)	#, entry
	jne	.L316	#,
	.loc 1 1396 0
	movq	-152(%rbp), %rax	# ohv, tmp211
	movq	(%rax), %rax	# ohv_9(D)->sv_any, D.12798
	movl	-132(%rbp), %edx	# riter, tmp212
	movl	%edx, 56(%rax)	# tmp212, _100->xhv_riter
	.loc 1 1397 0
	movq	-152(%rbp), %rax	# ohv, tmp213
	movq	(%rax), %rax	# ohv_9(D)->sv_any, D.12798
	movq	-32(%rbp), %rdx	# eiter, tmp214
	movq	%rdx, 64(%rax)	# tmp214, _101->xhv_eiter
.L311:
.LBE23:
	.loc 1 1400 0
	movq	-96(%rbp), %rax	# hv, D.12797
.L297:
	.loc 1 1401 0
	addq	$144, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	Perl_newHVhv, .-Perl_newHVhv
	.globl	Perl_hv_free_ent
	.type	Perl_hv_free_ent, @function
Perl_hv_free_ent:
.LFB25:
	.loc 1 1405 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# hv, hv
	movq	%rsi, %rbx	# entry, entry
	.loc 1 1408 0
	testq	%rbx, %rbx	# entry
	jne	.L318	#,
	.loc 1 1409 0
	jmp	.L317	#
.L318:
	.loc 1 1410 0
	movq	16(%rbx), %rax	# entry_1(D)->hent_val, tmp82
	movq	%rax, -24(%rbp)	# tmp82, val
	.loc 1 1411 0
	cmpq	$0, -24(%rbp)	#, val
	je	.L320	#,
	.loc 1 1411 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# val, tmp83
	movl	12(%rax), %eax	# val_2->sv_flags, D.12812
	movzbl	%al, %eax	# D.12812, D.12812
	cmpl	$13, %eax	#, D.12812
	jne	.L320	#,
	movq	-24(%rbp), %rax	# val, tmp84
	movq	(%rax), %rax	# val_2->sv_any, D.12813
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_5].xgv_gp, D.12814
	movl	64(%rax), %eax	# _6->gp_cvgen, D.12812
	testl	%eax, %eax	# D.12812
	jne	.L320	#,
	movq	-24(%rbp), %rax	# val, tmp85
	movq	(%rax), %rax	# val_2->sv_any, D.12813
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_8].xgv_gp, D.12814
	movq	56(%rax), %rax	# _9->gp_cv, D.12815
	testq	%rax, %rax	# D.12815
	je	.L320	#,
	.loc 1 1411 0 discriminator 2
	movq	-40(%rbp), %rax	# hv, tmp86
	movq	(%rax), %rax	# hv_11(D)->sv_any, D.12816
	movq	80(%rax), %rax	# _12->xhv_name, D.12817
	testq	%rax, %rax	# D.12817
	je	.L320	#,
	.loc 1 1412 0 is_stmt 1
	movl	PL_sub_generation(%rip), %eax	# PL_sub_generation, PL_sub_generation.102
	addl	$1, %eax	#, PL_sub_generation.103
	movl	%eax, PL_sub_generation(%rip)	# PL_sub_generation.103, PL_sub_generation
.L320:
	.loc 1 1413 0
	movq	-24(%rbp), %rax	# val, tmp87
	movq	%rax, %rdi	# tmp87,
	call	Perl_sv_free	#
	.loc 1 1414 0
	movq	8(%rbx), %rax	# entry_1(D)->hent_hek, D.12818
	movl	4(%rax), %eax	# _16->hek_len, D.12819
	cmpl	$-2, %eax	#, D.12819
	jne	.L321	#,
	.loc 1 1415 0
	movq	8(%rbx), %rax	# entry_1(D)->hent_hek, D.12818
	addq	$8, %rax	#, D.12820
	movq	(%rax), %rax	# MEM[(struct SV * *)_19], D.12821
	movq	%rax, %rdi	# D.12821,
	call	Perl_sv_free	#
	.loc 1 1416 0
	movq	8(%rbx), %rax	# entry_1(D)->hent_hek, D.12818
	movq	%rax, %rdi	# D.12818,
	call	Perl_safesysfree	#
	jmp	.L322	#
.L321:
	.loc 1 1418 0
	movq	-40(%rbp), %rax	# hv, tmp88
	movl	12(%rax), %eax	# hv_11(D)->sv_flags, D.12812
	andl	$536870912, %eax	#, D.12812
	testl	%eax, %eax	# D.12812
	je	.L323	#,
	.loc 1 1419 0
	movq	8(%rbx), %rax	# entry_1(D)->hent_hek, D.12818
	movq	%rax, %rdi	# D.12818,
	call	Perl_unshare_hek	#
	jmp	.L322	#
.L323:
	.loc 1 1421 0
	movq	8(%rbx), %rax	# entry_1(D)->hent_hek, D.12818
	movq	%rax, %rdi	# D.12818,
	call	Perl_safesysfree	#
.L322:
	.loc 1 1422 0
	movq	%rbx, %rdi	# entry,
	call	S_del_he	#
.L317:
	.loc 1 1423 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	Perl_hv_free_ent, .-Perl_hv_free_ent
	.globl	Perl_hv_delayfree_ent
	.type	Perl_hv_delayfree_ent, @function
Perl_hv_delayfree_ent:
.LFB26:
	.loc 1 1427 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# hv, hv
	movq	%rsi, %rbx	# entry, entry
	.loc 1 1428 0
	testq	%rbx, %rbx	# entry
	jne	.L325	#,
	.loc 1 1429 0
	jmp	.L324	#
.L325:
	.loc 1 1430 0
	movq	16(%rbx), %rax	# entry_1(D)->hent_val, D.12822
	movl	12(%rax), %eax	# _2->sv_flags, D.12823
	movzbl	%al, %eax	# D.12823, D.12823
	cmpl	$13, %eax	#, D.12823
	jne	.L327	#,
	.loc 1 1430 0 is_stmt 0 discriminator 1
	movq	16(%rbx), %rax	# entry_1(D)->hent_val, D.12822
	movq	(%rax), %rax	# _5->sv_any, D.12824
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_6].xgv_gp, D.12825
	movl	64(%rax), %eax	# _7->gp_cvgen, D.12823
	testl	%eax, %eax	# D.12823
	jne	.L327	#,
	movq	16(%rbx), %rax	# entry_1(D)->hent_val, D.12822
	movq	(%rax), %rax	# _9->sv_any, D.12824
	movq	56(%rax), %rax	# MEM[(struct XPVGV *)_10].xgv_gp, D.12825
	movq	56(%rax), %rax	# _11->gp_cv, D.12826
	testq	%rax, %rax	# D.12826
	je	.L327	#,
	.loc 1 1430 0 discriminator 2
	movq	-24(%rbp), %rax	# hv, tmp86
	movq	(%rax), %rax	# hv_13(D)->sv_any, D.12827
	movq	80(%rax), %rax	# _14->xhv_name, D.12828
	testq	%rax, %rax	# D.12828
	je	.L327	#,
	.loc 1 1431 0 is_stmt 1
	movl	PL_sub_generation(%rip), %eax	# PL_sub_generation, PL_sub_generation.104
	addl	$1, %eax	#, PL_sub_generation.105
	movl	%eax, PL_sub_generation(%rip)	# PL_sub_generation.105, PL_sub_generation
.L327:
	.loc 1 1432 0
	movq	16(%rbx), %rax	# entry_1(D)->hent_val, D.12822
	movq	%rax, %rdi	# D.12822,
	call	Perl_sv_2mortal	#
	.loc 1 1433 0
	movq	8(%rbx), %rax	# entry_1(D)->hent_hek, D.12829
	movl	4(%rax), %eax	# _19->hek_len, D.12830
	cmpl	$-2, %eax	#, D.12830
	jne	.L328	#,
	.loc 1 1434 0
	movq	8(%rbx), %rax	# entry_1(D)->hent_hek, D.12829
	addq	$8, %rax	#, D.12831
	movq	(%rax), %rax	# MEM[(struct SV * *)_22], D.12822
	movq	%rax, %rdi	# D.12822,
	call	Perl_sv_2mortal	#
	.loc 1 1435 0
	movq	8(%rbx), %rax	# entry_1(D)->hent_hek, D.12829
	movq	%rax, %rdi	# D.12829,
	call	Perl_safesysfree	#
	jmp	.L329	#
.L328:
	.loc 1 1437 0
	movq	-24(%rbp), %rax	# hv, tmp87
	movl	12(%rax), %eax	# hv_13(D)->sv_flags, D.12823
	andl	$536870912, %eax	#, D.12823
	testl	%eax, %eax	# D.12823
	je	.L330	#,
	.loc 1 1438 0
	movq	8(%rbx), %rax	# entry_1(D)->hent_hek, D.12829
	movq	%rax, %rdi	# D.12829,
	call	Perl_unshare_hek	#
	jmp	.L329	#
.L330:
	.loc 1 1440 0
	movq	8(%rbx), %rax	# entry_1(D)->hent_hek, D.12829
	movq	%rax, %rdi	# D.12829,
	call	Perl_safesysfree	#
.L329:
	.loc 1 1441 0
	movq	%rbx, %rdi	# entry,
	call	S_del_he	#
.L324:
	.loc 1 1442 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	Perl_hv_delayfree_ent, .-Perl_hv_delayfree_ent
	.section	.rodata
	.align 8
.LC7:
	.string	"Attempt to delete readonly key '%_' from a restricted hash"
	.text
	.globl	Perl_hv_clear
	.type	Perl_hv_clear, @function
Perl_hv_clear:
.LFB27:
	.loc 1 1454 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# hv, hv
	.loc 1 1456 0
	cmpq	$0, -56(%rbp)	#, hv
	jne	.L332	#,
	.loc 1 1457 0
	jmp	.L331	#
.L332:
	.loc 1 1459 0
	movq	-56(%rbp), %rax	# hv, tmp89
	movq	(%rax), %rbx	# hv_3(D)->sv_any, xhv
	.loc 1 1461 0
	movq	-56(%rbp), %rax	# hv, tmp90
	movl	12(%rax), %eax	# hv_3(D)->sv_flags, D.12832
	andl	$8388608, %eax	#, D.12832
	testl	%eax, %eax	# D.12832
	je	.L334	#,
	.loc 1 1461 0 is_stmt 0 discriminator 1
	movq	(%rbx), %rax	# xhv_4->xhv_array, D.12833
	testq	%rax, %rax	# D.12833
	je	.L334	#,
.LBB24:
	.loc 1 1465 0 is_stmt 1
	movl	$0, -36(%rbp)	#, i
	jmp	.L335	#
.L340:
	.loc 1 1466 0
	movq	(%rbx), %rax	# xhv_4->xhv_array, D.12833
	movl	-36(%rbp), %edx	# i, tmp91
	movslq	%edx, %rdx	# tmp91, D.12834
	salq	$3, %rdx	#, D.12834
	addq	%rdx, %rax	# D.12834, D.12836
	movq	(%rax), %rax	# *_14, tmp92
	movq	%rax, -32(%rbp)	# tmp92, entry
	.loc 1 1467 0
	jmp	.L336	#
.L339:
	.loc 1 1469 0
	movq	-32(%rbp), %rax	# entry, tmp93
	movq	16(%rax), %rax	# entry_2->hent_val, D.12837
	cmpq	$PL_sv_placeholder, %rax	#, D.12837
	je	.L337	#,
	.loc 1 1470 0
	movq	-32(%rbp), %rax	# entry, tmp94
	movq	16(%rax), %rax	# entry_2->hent_val, D.12837
	testq	%rax, %rax	# D.12837
	je	.L338	#,
	.loc 1 1470 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# entry, tmp95
	movq	16(%rax), %rax	# entry_2->hent_val, D.12837
	movl	12(%rax), %eax	# _18->sv_flags, D.12832
	andl	$8388608, %eax	#, D.12832
	testl	%eax, %eax	# D.12832
	je	.L338	#,
.LBB25:
	.loc 1 1471 0 is_stmt 1
	movq	-32(%rbp), %rax	# entry, tmp96
	movq	%rax, %rdi	# tmp96,
	call	Perl_hv_iterkeysv	#
	movq	%rax, -24(%rbp)	# tmp97, keysv
	.loc 1 1472 0
	movq	-24(%rbp), %rax	# keysv, tmp98
	movq	%rax, %rsi	# tmp98,
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L338:
.LBE25:
	.loc 1 1476 0
	movq	-32(%rbp), %rax	# entry, tmp99
	movq	16(%rax), %rax	# entry_2->hent_val, D.12837
	movq	%rax, %rdi	# D.12837,
	call	Perl_sv_free	#
	.loc 1 1477 0
	movq	-32(%rbp), %rax	# entry, tmp100
	movq	$PL_sv_placeholder, 16(%rax)	#, entry_2->hent_val
	.loc 1 1478 0
	movsd	32(%rbx), %xmm1	# xhv_4->xnv_nv, D.12838
	movsd	.LC2(%rip), %xmm0	#, tmp101
	addsd	%xmm1, %xmm0	# D.12838, D.12838
	movsd	%xmm0, 32(%rbx)	# D.12838, xhv_4->xnv_nv
.L337:
	.loc 1 1467 0
	movq	-32(%rbp), %rax	# entry, tmp102
	movq	(%rax), %rax	# entry_2->hent_next, tmp103
	movq	%rax, -32(%rbp)	# tmp103, entry
.L336:
	.loc 1 1467 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, entry
	jne	.L339	#,
	.loc 1 1465 0 is_stmt 1
	addl	$1, -36(%rbp)	#, i
.L335:
	.loc 1 1465 0 is_stmt 0 discriminator 1
	movq	16(%rbx), %rax	# xhv_4->xhv_max, D.12834
	cmpl	-36(%rbp), %eax	# i, D.12835
	jge	.L340	#,
	.loc 1 1482 0 is_stmt 1
	jmp	.L341	#
.L334:
.LBE24:
	.loc 1 1485 0
	movq	-56(%rbp), %rax	# hv, tmp104
	movq	%rax, %rdi	# tmp104,
	call	S_hfreeentries	#
	.loc 1 1486 0
	movl	$0, %eax	#, tmp105
	movq	%rax, 32(%rbx)	# tmp105, xhv_4->xnv_nv
	.loc 1 1487 0
	movq	(%rbx), %rax	# xhv_4->xhv_array, D.12833
	testq	%rax, %rax	# D.12833
	je	.L342	#,
	.loc 1 1488 0
	movq	16(%rbx), %rax	# xhv_4->xhv_max, D.12834
	addq	$1, %rax	#, D.12834
	leaq	0(,%rax,8), %rdx	#, D.12834
	movq	(%rbx), %rax	# xhv_4->xhv_array, D.12833
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.12833,
	call	memset	#
.L342:
	.loc 1 1491 0
	movq	-56(%rbp), %rax	# hv, tmp106
	movl	12(%rax), %eax	# hv_3(D)->sv_flags, D.12832
	andl	$32768, %eax	#, D.12832
	testl	%eax, %eax	# D.12832
	je	.L343	#,
	.loc 1 1492 0
	movq	-56(%rbp), %rax	# hv, tmp107
	movq	%rax, %rdi	# tmp107,
	call	Perl_mg_clear	#
.L343:
	.loc 1 1494 0
	movq	-56(%rbp), %rax	# hv, tmp108
	movl	12(%rax), %eax	# hv_3(D)->sv_flags, D.12832
	andl	$2147483647, %eax	#, D.12832
	movl	%eax, %edx	# D.12832, D.12832
	movq	-56(%rbp), %rax	# hv, tmp109
	movl	%edx, 12(%rax)	# D.12832, hv_3(D)->sv_flags
	.loc 1 1495 0
	movq	-56(%rbp), %rax	# hv, tmp110
	movl	12(%rax), %eax	# hv_3(D)->sv_flags, D.12832
	andl	$-268435457, %eax	#, D.12832
	movl	%eax, %edx	# D.12832, D.12832
	movq	-56(%rbp), %rax	# hv, tmp111
	movl	%edx, 12(%rax)	# D.12832, hv_3(D)->sv_flags
.L341:
	.loc 1 1497 0
	movq	-56(%rbp), %rax	# hv, tmp112
	movq	(%rax), %rax	# hv_3(D)->sv_any, D.12839
	movq	$0, 64(%rax)	#, _38->xhv_eiter
.L331:
	.loc 1 1498 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	Perl_hv_clear, .-Perl_hv_clear
	.globl	Perl_hv_clear_placeholders
	.type	Perl_hv_clear_placeholders, @function
Perl_hv_clear_placeholders:
.LFB28:
	.loc 1 1516 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# hv, hv
	.loc 1 1517 0
	movq	-40(%rbp), %rax	# hv, tmp93
	movq	(%rax), %rax	# hv_11(D)->sv_any, D.12841
	movsd	32(%rax), %xmm0	# _12->xnv_nv, D.12842
	cvttsd2si	%xmm0, %eax	# D.12842, tmp94
	movl	%eax, -28(%rbp)	# tmp94, items
	.loc 1 1518 0
	movq	-40(%rbp), %rax	# hv, tmp95
	movq	(%rax), %rax	# hv_11(D)->sv_any, D.12841
	movq	16(%rax), %rax	# _15->xhv_max, D.12843
	movl	%eax, -24(%rbp)	# D.12843, i
	.loc 1 1520 0
	cmpl	$0, -28(%rbp)	#, items
	jne	.L345	#,
	.loc 1 1521 0
	jmp	.L344	#
.L345:
.LBB26:
	.loc 1 1525 0
	movl	$1, -20(%rbp)	#, first
	.loc 1 1526 0
	movq	-40(%rbp), %rax	# hv, tmp96
	movq	(%rax), %rax	# hv_11(D)->sv_any, D.12841
	movq	(%rax), %rax	# MEM[(struct HE * * *)_20], D.12845
	movl	-24(%rbp), %edx	# i, tmp97
	movslq	%edx, %rdx	# tmp97, D.12843
	salq	$3, %rdx	#, D.12843
	addq	%rdx, %rax	# D.12843, tmp98
	movq	%rax, -16(%rbp)	# tmp98, oentry
	.loc 1 1527 0
	movq	-16(%rbp), %rax	# oentry, tmp99
	movq	(%rax), %rax	# *oentry_24, tmp100
	movq	%rax, -8(%rbp)	# tmp100, entry
	.loc 1 1529 0
	cmpq	$0, -8(%rbp)	#, entry
	jne	.L347	#,
	.loc 1 1530 0
	jmp	.L348	#
.L347:
	.loc 1 1532 0
	jmp	.L349	#
.L356:
	.loc 1 1533 0
	movq	-8(%rbp), %rax	# entry, tmp101
	movq	16(%rax), %rax	# entry_10->hent_val, D.12846
	cmpq	$PL_sv_placeholder, %rax	#, D.12846
	jne	.L350	#,
	.loc 1 1534 0
	movq	-8(%rbp), %rax	# entry, tmp102
	movq	(%rax), %rdx	# entry_10->hent_next, D.12847
	movq	-16(%rbp), %rax	# oentry, tmp103
	movq	%rdx, (%rax)	# D.12847, *oentry_9
	.loc 1 1535 0
	cmpl	$0, -20(%rbp)	#, first
	je	.L351	#,
	.loc 1 1535 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# oentry, tmp104
	movq	(%rax), %rax	# *oentry_9, D.12847
	testq	%rax, %rax	# D.12847
	jne	.L351	#,
	.loc 1 1536 0 is_stmt 1
	movq	-40(%rbp), %rax	# hv, tmp105
	movq	(%rax), %rax	# hv_11(D)->sv_any, D.12841
	movq	8(%rax), %rdx	# _29->xhv_fill, D.12843
	subq	$1, %rdx	#, D.12843
	movq	%rdx, 8(%rax)	# D.12843, _29->xhv_fill
.L351:
	.loc 1 1537 0
	movq	-40(%rbp), %rax	# hv, tmp106
	movq	(%rax), %rax	# hv_11(D)->sv_any, D.12841
	movq	64(%rax), %rax	# _32->xhv_eiter, D.12847
	testq	%rax, %rax	# D.12847
	je	.L352	#,
	.loc 1 1538 0
	movq	-40(%rbp), %rax	# hv, tmp107
	movl	12(%rax), %eax	# hv_11(D)->sv_flags, D.12848
	orl	$1073741824, %eax	#, D.12848
	movl	%eax, %edx	# D.12848, D.12848
	movq	-40(%rbp), %rax	# hv, tmp108
	movl	%edx, 12(%rax)	# D.12848, hv_11(D)->sv_flags
	jmp	.L353	#
.L352:
	.loc 1 1540 0
	movq	-8(%rbp), %rdx	# entry, tmp109
	movq	-40(%rbp), %rax	# hv, tmp110
	movq	%rdx, %rsi	# tmp109,
	movq	%rax, %rdi	# tmp110,
	call	Perl_hv_free_ent	#
.L353:
	.loc 1 1542 0
	subl	$1, -28(%rbp)	#, items
	cmpl	$0, -28(%rbp)	#, items
	jne	.L354	#,
	.loc 1 1544 0
	movq	-40(%rbp), %rax	# hv, tmp111
	movq	(%rax), %rax	# hv_11(D)->sv_any, D.12841
	movq	-40(%rbp), %rdx	# hv, tmp112
	movq	(%rdx), %rdx	# hv_11(D)->sv_any, D.12841
	movq	24(%rdx), %rcx	# _38->xhv_keys, D.12849
	movq	-40(%rbp), %rdx	# hv, tmp113
	movq	(%rdx), %rdx	# hv_11(D)->sv_any, D.12841
	movsd	32(%rdx), %xmm0	# _40->xnv_nv, D.12842
	cvttsd2siq	%xmm0, %rdx	# D.12842, D.12849
	subq	%rdx, %rcx	# D.12849, D.12849
	movq	%rcx, %rdx	# D.12849, D.12849
	movq	%rdx, 24(%rax)	# D.12849, _37->xhv_keys
	.loc 1 1545 0
	movq	-40(%rbp), %rax	# hv, tmp114
	movq	(%rax), %rax	# hv_11(D)->sv_any, D.12841
	movq	24(%rax), %rdx	# _44->xhv_keys, D.12849
	movq	-40(%rbp), %rax	# hv, tmp115
	movq	(%rax), %rax	# hv_11(D)->sv_any, D.12841
	movsd	32(%rax), %xmm0	# _46->xnv_nv, D.12842
	cvttsd2siq	%xmm0, %rax	# D.12842, D.12849
	cmpq	%rax, %rdx	# D.12849, D.12849
	jne	.L355	#,
	.loc 1 1546 0
	movq	-40(%rbp), %rax	# hv, tmp116
	movl	12(%rax), %eax	# hv_11(D)->sv_flags, D.12848
	andl	$2147483647, %eax	#, D.12848
	movl	%eax, %edx	# D.12848, D.12848
	movq	-40(%rbp), %rax	# hv, tmp117
	movl	%edx, 12(%rax)	# D.12848, hv_11(D)->sv_flags
.L355:
	.loc 1 1547 0
	movq	-40(%rbp), %rax	# hv, tmp118
	movq	(%rax), %rdx	# hv_11(D)->sv_any, D.12841
	movl	$0, %eax	#, tmp119
	movq	%rax, 32(%rdx)	# tmp119, _51->xnv_nv
	.loc 1 1548 0
	jmp	.L344	#
.L350:
	.loc 1 1551 0
	movq	-8(%rbp), %rax	# entry, tmp120
	movq	%rax, -16(%rbp)	# tmp120, oentry
	.loc 1 1552 0
	movl	$0, -20(%rbp)	#, first
.L354:
	.loc 1 1532 0
	movq	-16(%rbp), %rax	# oentry, tmp121
	movq	(%rax), %rax	# *oentry_8, tmp122
	movq	%rax, -8(%rbp)	# tmp122, entry
.L349:
	.loc 1 1532 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, entry
	jne	.L356	#,
.L348:
.LBE26:
	.loc 1 1555 0 is_stmt 1
	subl	$1, -24(%rbp)	#, i
	cmpl	$0, -24(%rbp)	#, i
	jns	.L345	#,
.L344:
	.loc 1 1559 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	Perl_hv_clear_placeholders, .-Perl_hv_clear_placeholders
	.type	S_hfreeentries, @function
S_hfreeentries:
.LFB29:
	.loc 1 1563 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)	# hv, hv
	.loc 1 1566 0
	movl	$0, %r13d	#, oentry
	.loc 1 1570 0
	cmpq	$0, -56(%rbp)	#, hv
	jne	.L358	#,
	.loc 1 1571 0
	jmp	.L357	#
.L358:
	.loc 1 1572 0
	movq	-56(%rbp), %rax	# hv, tmp77
	movq	(%rax), %rax	# hv_7(D)->sv_any, D.12850
	movq	(%rax), %rax	# MEM[(struct HE * * *)_9], D.12852
	testq	%rax, %rax	# D.12852
	jne	.L360	#,
	.loc 1 1573 0
	jmp	.L357	#
.L360:
	.loc 1 1575 0
	movl	$0, -40(%rbp)	#, riter
	.loc 1 1576 0
	movq	-56(%rbp), %rax	# hv, tmp78
	movq	(%rax), %rax	# hv_7(D)->sv_any, D.12850
	movq	16(%rax), %rax	# _12->xhv_max, D.12853
	movl	%eax, -36(%rbp)	# D.12853, max
	.loc 1 1577 0
	movq	-56(%rbp), %rax	# hv, tmp79
	movq	(%rax), %rax	# hv_7(D)->sv_any, D.12850
	movq	(%rax), %r12	# _15->xhv_array, array
	.loc 1 1580 0
	movq	-56(%rbp), %rax	# hv, tmp80
	movq	(%rax), %rax	# hv_7(D)->sv_any, D.12850
	movq	$0, (%rax)	#, MEM[(struct HE * * *)_18]
	.loc 1 1581 0
	movq	-56(%rbp), %rax	# hv, tmp81
	movq	(%rax), %rax	# hv_7(D)->sv_any, D.12850
	movq	$0, 8(%rax)	#, _19->xhv_fill
	.loc 1 1582 0
	movq	-56(%rbp), %rax	# hv, tmp82
	movq	(%rax), %rax	# hv_7(D)->sv_any, D.12850
	movq	$0, 24(%rax)	#, _20->xhv_keys
	.loc 1 1584 0
	movq	(%r12), %rbx	# *array_16, entry
.L365:
	.loc 1 1586 0
	testq	%rbx, %rbx	# entry
	je	.L361	#,
	.loc 1 1587 0
	movq	%rbx, %r13	# entry, oentry
	.loc 1 1588 0
	movq	(%rbx), %rbx	# entry_1->hent_next, entry
	.loc 1 1589 0
	movq	-56(%rbp), %rax	# hv, tmp83
	movq	%r13, %rsi	# oentry,
	movq	%rax, %rdi	# tmp83,
	call	Perl_hv_free_ent	#
.L361:
	.loc 1 1591 0
	testq	%rbx, %rbx	# entry
	jne	.L362	#,
	.loc 1 1592 0
	addl	$1, -40(%rbp)	#, riter
	movl	-40(%rbp), %eax	# riter, tmp84
	cmpl	-36(%rbp), %eax	# max, tmp84
	jle	.L363	#,
	.loc 1 1593 0
	nop
	.loc 1 1597 0
	movq	-56(%rbp), %rax	# hv, tmp86
	movq	(%rax), %rax	# hv_7(D)->sv_any, D.12850
	movq	%r12, (%rax)	# array, MEM[(struct HE * * *)_26]
	.loc 1 1598 0
	movq	-56(%rbp), %rax	# hv, tmp87
	movq	%rax, %rdi	# tmp87,
	call	Perl_hv_iterinit	#
	jmp	.L357	#
.L363:
	.loc 1 1594 0
	movl	-40(%rbp), %eax	# riter, tmp85
	cltq
	salq	$3, %rax	#, D.12853
	addq	%r12, %rax	# array, D.12852
	movq	(%rax), %rbx	# *_29, entry
	.loc 1 1596 0
	jmp	.L365	#
.L362:
	jmp	.L365	#
.L357:
	.loc 1 1599 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	S_hfreeentries, .-S_hfreeentries
	.globl	Perl_hv_undef
	.type	Perl_hv_undef, @function
Perl_hv_undef:
.LFB30:
	.loc 1 1611 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# hv, hv
	.loc 1 1613 0
	cmpq	$0, -24(%rbp)	#, hv
	jne	.L367	#,
	.loc 1 1614 0
	jmp	.L366	#
.L367:
	.loc 1 1615 0
	movq	-24(%rbp), %rax	# hv, tmp76
	movq	(%rax), %rbx	# hv_1(D)->sv_any, xhv
	.loc 1 1616 0
	movq	-24(%rbp), %rax	# hv, tmp77
	movq	%rax, %rdi	# tmp77,
	call	S_hfreeentries	#
	.loc 1 1617 0
	movq	(%rbx), %rax	# xhv_2->xhv_array, D.12854
	movq	%rax, %rdi	# D.12854,
	call	Perl_safesysfree	#
	.loc 1 1618 0
	movq	-24(%rbp), %rax	# hv, tmp78
	movq	(%rax), %rax	# hv_1(D)->sv_any, D.12855
	movq	80(%rax), %rax	# _4->xhv_name, D.12854
	testq	%rax, %rax	# D.12854
	je	.L369	#,
	.loc 1 1619 0
	movq	PL_stashcache(%rip), %rax	# PL_stashcache, PL_stashcache.106
	testq	%rax, %rax	# PL_stashcache.106
	je	.L370	#,
	.loc 1 1620 0
	movq	-24(%rbp), %rax	# hv, tmp79
	movq	(%rax), %rax	# hv_1(D)->sv_any, D.12855
	movq	80(%rax), %rax	# _7->xhv_name, D.12854
	movq	%rax, %rdi	# D.12854,
	call	strlen	#
	movl	%eax, %edx	# D.12856, D.12857
	movq	-24(%rbp), %rax	# hv, tmp80
	movq	(%rax), %rax	# hv_1(D)->sv_any, D.12855
	movq	80(%rax), %rsi	# _11->xhv_name, D.12854
	movq	PL_stashcache(%rip), %rax	# PL_stashcache, PL_stashcache.107
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# PL_stashcache.107,
	call	Perl_hv_delete	#
.L370:
	.loc 1 1621 0
	movq	-24(%rbp), %rax	# hv, tmp81
	movq	(%rax), %rax	# hv_1(D)->sv_any, D.12855
	movq	80(%rax), %rax	# _14->xhv_name, D.12854
	movq	%rax, %rdi	# D.12854,
	call	Perl_safesysfree	#
	.loc 1 1622 0
	movq	-24(%rbp), %rax	# hv, tmp82
	movq	(%rax), %rax	# hv_1(D)->sv_any, D.12855
	movq	$0, 80(%rax)	#, _16->xhv_name
.L369:
	.loc 1 1624 0
	movq	$7, 16(%rbx)	#, xhv_2->xhv_max
	.loc 1 1625 0
	movq	$0, (%rbx)	#, xhv_2->xhv_array
	.loc 1 1626 0
	movl	$0, %eax	#, tmp83
	movq	%rax, 32(%rbx)	# tmp83, xhv_2->xnv_nv
	.loc 1 1628 0
	movq	-24(%rbp), %rax	# hv, tmp84
	movl	12(%rax), %eax	# hv_1(D)->sv_flags, D.12858
	andl	$32768, %eax	#, D.12858
	testl	%eax, %eax	# D.12858
	je	.L366	#,
	.loc 1 1629 0
	movq	-24(%rbp), %rax	# hv, tmp85
	movq	%rax, %rdi	# tmp85,
	call	Perl_mg_clear	#
.L366:
	.loc 1 1630 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	Perl_hv_undef, .-Perl_hv_undef
	.section	.rodata
.LC8:
	.string	"Bad hash"
	.text
	.globl	Perl_hv_iterinit
	.type	Perl_hv_iterinit, @function
Perl_hv_iterinit:
.LFB31:
	.loc 1 1649 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# hv, hv
	.loc 1 1653 0
	cmpq	$0, -40(%rbp)	#, hv
	jne	.L372	#,
	.loc 1 1654 0
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L372:
	.loc 1 1655 0
	movq	-40(%rbp), %rax	# hv, tmp67
	movq	(%rax), %rbx	# hv_1(D)->sv_any, xhv
	.loc 1 1656 0
	movq	64(%rbx), %rax	# xhv_2->xhv_eiter, tmp68
	movq	%rax, -24(%rbp)	# tmp68, entry
	.loc 1 1657 0
	cmpq	$0, -24(%rbp)	#, entry
	je	.L373	#,
	.loc 1 1657 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# hv, tmp69
	movl	12(%rax), %eax	# hv_1(D)->sv_flags, D.12859
	andl	$1073741824, %eax	#, D.12859
	testl	%eax, %eax	# D.12859
	je	.L373	#,
	.loc 1 1658 0 is_stmt 1
	movq	-40(%rbp), %rax	# hv, tmp70
	movl	12(%rax), %eax	# hv_1(D)->sv_flags, D.12859
	andl	$-1073741825, %eax	#, D.12859
	movl	%eax, %edx	# D.12859, D.12859
	movq	-40(%rbp), %rax	# hv, tmp71
	movl	%edx, 12(%rax)	# D.12859, hv_1(D)->sv_flags
	.loc 1 1659 0
	movq	-24(%rbp), %rdx	# entry, tmp72
	movq	-40(%rbp), %rax	# hv, tmp73
	movq	%rdx, %rsi	# tmp72,
	movq	%rax, %rdi	# tmp73,
	call	Perl_hv_free_ent	#
.L373:
	.loc 1 1661 0
	movl	$-1, 56(%rbx)	#, xhv_2->xhv_riter
	.loc 1 1662 0
	movq	$0, 64(%rbx)	#, xhv_2->xhv_eiter
	.loc 1 1664 0
	movq	24(%rbx), %rax	# xhv_2->xhv_keys, D.12860
	.loc 1 1665 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	Perl_hv_iterinit, .-Perl_hv_iterinit
	.globl	Perl_hv_iternext
	.type	Perl_hv_iternext, @function
Perl_hv_iternext:
.LFB32:
	.loc 1 1684 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# hv, hv
	.loc 1 1685 0
	movq	-8(%rbp), %rax	# hv, tmp61
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp61,
	call	Perl_hv_iternext_flags	#
	.loc 1 1686 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	Perl_hv_iternext, .-Perl_hv_iternext
	.globl	Perl_hv_iternext_flags
	.type	Perl_hv_iternext_flags, @function
Perl_hv_iternext_flags:
.LFB33:
	.loc 1 1705 0
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
	movq	%rdi, -72(%rbp)	# hv, hv
	movl	%esi, -76(%rbp)	# flags, flags
	.loc 1 1711 0
	cmpq	$0, -72(%rbp)	#, hv
	jne	.L378	#,
	.loc 1 1712 0
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L378:
	.loc 1 1713 0
	movq	-72(%rbp), %rax	# hv, tmp141
	movq	(%rax), %r12	# hv_13(D)->sv_any, xhv
	.loc 1 1714 0
	movq	64(%r12), %rbx	# xhv_14->xhv_eiter, entry
	movq	%rbx, -56(%rbp)	# entry, oldentry
	.loc 1 1716 0
	movq	-72(%rbp), %rax	# hv, tmp142
	movl	12(%rax), %eax	# MEM[(struct SV *)hv_13(D)].sv_flags, D.12865
	andl	$32768, %eax	#, D.12865
	testl	%eax, %eax	# D.12865
	je	.L379	#,
	.loc 1 1716 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# hv, tmp143
	movl	$80, %esi	#,
	movq	%rax, %rdi	# tmp143,
	call	Perl_mg_find	#
	jmp	.L380	#
.L379:
	.loc 1 1716 0 discriminator 2
	movl	$0, %eax	#, iftmp.108
.L380:
	.loc 1 1716 0 discriminator 3
	movq	%rax, -48(%rbp)	# iftmp.108, mg
	cmpq	$0, -48(%rbp)	#, mg
	je	.L381	#,
.LBB27:
	.loc 1 1717 0 is_stmt 1
	call	Perl_sv_newmortal	#
	movq	%rax, -40(%rbp)	# tmp144, key
	.loc 1 1718 0
	testq	%rbx, %rbx	# entry
	je	.L382	#,
	.loc 1 1719 0
	movq	8(%rbx), %rax	# entry_15->hent_hek, D.12866
	addq	$8, %rax	#, D.12867
	testq	%rax, %rax	# D.12867
	je	.L383	#,
	.loc 1 1719 0 is_stmt 0 discriminator 1
	movq	8(%rbx), %rax	# entry_15->hent_hek, D.12866
	movl	4(%rax), %eax	# _25->hek_len, D.12868
	cmpl	$-2, %eax	#, D.12868
	jne	.L384	#,
	movq	8(%rbx), %rax	# entry_15->hent_hek, D.12866
	addq	$8, %rax	#, D.12867
	movq	(%rax), %rax	# MEM[(struct SV * *)_28], iftmp.110
	jmp	.L386	#
.L384:
	.loc 1 1719 0 discriminator 2
	movq	8(%rbx), %rax	# entry_15->hent_hek, D.12866
	movl	4(%rax), %eax	# _30->hek_len, D.12868
	cltq
	movq	8(%rbx), %rdx	# entry_15->hent_hek, D.12866
	addq	$8, %rdx	#, D.12867
	movq	%rax, %rsi	# D.12869,
	movq	%rdx, %rdi	# D.12867,
	call	Perl_newSVpvn	#
	movq	%rax, %rdi	# D.12870,
	call	Perl_sv_2mortal	#
	jmp	.L386	#
.L383:
	movl	$PL_sv_undef, %eax	#, iftmp.109
.L386:
	.loc 1 1719 0 discriminator 3
	movq	-40(%rbp), %rcx	# key, tmp145
	movl	$2, %edx	#,
	movq	%rax, %rsi	# iftmp.109,
	movq	%rcx, %rdi	# tmp145,
	call	Perl_sv_setsv_flags	#
	.loc 1 1720 0 is_stmt 1 discriminator 3
	movq	8(%rbx), %rax	# entry_15->hent_hek, D.12866
	addq	$8, %rax	#, D.12867
	testq	%rax, %rax	# D.12867
	je	.L387	#,
	.loc 1 1720 0 is_stmt 0 discriminator 1
	movq	8(%rbx), %rax	# entry_15->hent_hek, D.12866
	movl	4(%rax), %eax	# _41->hek_len, D.12868
	cmpl	$-2, %eax	#, D.12868
	jne	.L387	#,
	movq	8(%rbx), %rax	# entry_15->hent_hek, D.12866
	addq	$8, %rax	#, D.12867
	movq	(%rax), %rax	# MEM[(struct SV * *)_44], iftmp.111
	jmp	.L388	#
.L387:
	.loc 1 1720 0 discriminator 2
	movl	$0, %eax	#, iftmp.111
.L388:
	.loc 1 1720 0 discriminator 3
	movq	%rax, %rdi	# iftmp.111,
	call	Perl_sv_free	#
	jmp	.L389	#
.L382:
.LBB28:
	.loc 1 1727 0 is_stmt 1
	call	S_new_he	#
	movq	%rax, %rbx	#, entry
	movq	%rbx, 64(%r12)	# entry, xhv_14->xhv_eiter
	.loc 1 1728 0
	movl	$24, %edx	#,
	movl	$0, %esi	#,
	movq	%rbx, %rdi	# entry,
	call	memset	#
	.loc 1 1729 0
	movl	$16, %edi	#,
	call	Perl_safesysmalloc	#
	movq	%rax, -32(%rbp)	# tmp146, k
	movq	-32(%rbp), %rax	# k, tmp147
	movl	$16, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp147,
	call	memset	#
	.loc 1 1730 0
	movq	-32(%rbp), %rax	# k, tmp148
	movq	%rax, -24(%rbp)	# tmp148, hek
	.loc 1 1731 0
	movq	-24(%rbp), %rax	# hek, tmp149
	movq	%rax, 8(%rbx)	# tmp149, entry_47->hent_hek
	.loc 1 1732 0
	movq	8(%rbx), %rax	# entry_47->hent_hek, D.12866
	movl	$-2, 4(%rax)	#, _50->hek_len
.L389:
.LBE28:
	.loc 1 1734 0
	movq	-40(%rbp), %rdx	# key, tmp150
	movq	-48(%rbp), %rcx	# mg, tmp151
	movq	-72(%rbp), %rax	# hv, tmp152
	movq	%rcx, %rsi	# tmp151,
	movq	%rax, %rdi	# tmp152,
	call	Perl_magic_nextpack	#
	.loc 1 1735 0
	movq	-40(%rbp), %rax	# key, tmp153
	movl	12(%rax), %eax	# key_22->sv_flags, D.12865
	andl	$118423552, %eax	#, D.12865
	testl	%eax, %eax	# D.12865
	je	.L390	#,
	.loc 1 1737 0
	movq	8(%rbx), %rax	# entry_1->hent_hek, D.12866
	movl	$-2, 4(%rax)	#, _53->hek_len
	movq	-40(%rbp), %rax	# key, tmp154
	movq	%rax, PL_Sv(%rip)	# tmp154, PL_Sv
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.113
	testq	%rax, %rax	# PL_Sv.113
	je	.L392	#,
	.loc 1 1737 0 is_stmt 0 discriminator 1
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.114
	movl	8(%rax), %edx	# PL_Sv.114_55->sv_refcnt, D.12865
	addl	$1, %edx	#, D.12865
	movl	%edx, 8(%rax)	# D.12865, PL_Sv.114_55->sv_refcnt
	movl	8(%rax), %eax	# PL_Sv.114_55->sv_refcnt, D.12865
	testl	%eax, %eax	# D.12865
	je	.L392	#,
	.loc 1 1737 0
	nop
.L392:
	.loc 1 1737 0 discriminator 4
	movq	8(%rbx), %rax	# entry_1->hent_hek, D.12866
	leaq	8(%rax), %rdx	#, D.12867
	movq	PL_Sv(%rip), %rax	# PL_Sv, PL_Sv.115
	movq	%rax, (%rdx)	# PL_Sv.115, MEM[(struct SV * *)_62]
	.loc 1 1738 0 is_stmt 1 discriminator 4
	movq	%rbx, %rax	# entry, D.12864
	jmp	.L393	#
.L390:
	.loc 1 1740 0
	movq	16(%rbx), %rax	# entry_1->hent_val, D.12870
	testq	%rax, %rax	# D.12870
	je	.L394	#,
	.loc 1 1741 0
	movq	16(%rbx), %rax	# entry_1->hent_val, D.12870
	movq	%rax, %rdi	# D.12870,
	call	Perl_sv_free	#
.L394:
	.loc 1 1742 0
	movq	8(%rbx), %rax	# entry_1->hent_hek, D.12866
	movq	%rax, %rdi	# D.12866,
	call	Perl_safesysfree	#
	.loc 1 1743 0
	movq	%rbx, %rdi	# entry,
	call	S_del_he	#
	.loc 1 1744 0
	movq	$0, 64(%r12)	#, xhv_14->xhv_eiter
	.loc 1 1745 0
	movl	$0, %eax	#, D.12864
	jmp	.L393	#
.L381:
.LBE27:
	.loc 1 1752 0
	movq	(%r12), %rax	# xhv_14->xhv_array, D.12871
	testq	%rax, %rax	# D.12871
	jne	.L395	#,
	.loc 1 1753 0
	movq	16(%r12), %rax	# xhv_14->xhv_max, D.12869
	addq	$1, %rax	#, D.12869
	cmpq	$63, %rax	#, D.12869
	ja	.L396	#,
	.loc 1 1753 0 is_stmt 0 discriminator 1
	movq	16(%r12), %rax	# xhv_14->xhv_max, D.12869
	addq	$1, %rax	#, D.12869
	salq	$3, %rax	#, iftmp.116
	jmp	.L397	#
.L396:
	.loc 1 1753 0 discriminator 2
	movq	16(%r12), %rax	# xhv_14->xhv_max, D.12869
	addq	$1, %rax	#, D.12869
	salq	$4, %rax	#, D.12869
	subq	$16, %rax	#, iftmp.116
.L397:
	.loc 1 1753 0 discriminator 3
	movq	%rax, %rdi	# iftmp.116,
	call	Perl_safesysmalloc	#
	movq	%rax, (%r12)	# D.12872, xhv_14->xhv_array
	movq	16(%r12), %rax	# xhv_14->xhv_max, D.12869
	addq	$1, %rax	#, D.12869
	cmpq	$63, %rax	#, D.12869
	ja	.L398	#,
	.loc 1 1753 0 discriminator 1
	movq	16(%r12), %rax	# xhv_14->xhv_max, D.12869
	addq	$1, %rax	#, D.12869
	salq	$3, %rax	#, iftmp.117
	jmp	.L399	#
.L398:
	.loc 1 1753 0 discriminator 2
	movq	16(%r12), %rax	# xhv_14->xhv_max, D.12869
	addq	$1, %rax	#, D.12869
	salq	$4, %rax	#, D.12869
	subq	$16, %rax	#, iftmp.117
.L399:
	.loc 1 1753 0 discriminator 3
	movq	(%r12), %rcx	# xhv_14->xhv_array, D.12871
	movq	%rax, %rdx	# iftmp.117,
	movl	$0, %esi	#,
	movq	%rcx, %rdi	# D.12871,
	call	memset	#
.L395:
	.loc 1 1757 0 is_stmt 1
	testq	%rbx, %rbx	# entry
	je	.L400	#,
	.loc 1 1759 0
	movq	(%rbx), %rbx	# entry_15->hent_next, entry
	.loc 1 1760 0
	movl	-76(%rbp), %eax	# flags, tmp155
	andl	$1, %eax	#, D.12868
	testl	%eax, %eax	# D.12868
	jne	.L400	#,
	.loc 1 1765 0
	jmp	.L401	#
.L402:
	.loc 1 1766 0
	movq	(%rbx), %rbx	# entry_2->hent_next, entry
.L401:
	.loc 1 1765 0 discriminator 1
	testq	%rbx, %rbx	# entry
	je	.L400	#,
	.loc 1 1765 0 is_stmt 0 discriminator 2
	movq	16(%rbx), %rax	# entry_2->hent_val, D.12870
	cmpq	$PL_sv_placeholder, %rax	#, D.12870
	je	.L402	#,
.L400:
	.loc 1 1770 0 is_stmt 1
	jmp	.L403	#
.L408:
	.loc 1 1773 0
	movl	56(%r12), %eax	# xhv_14->xhv_riter, D.12868
	addl	$1, %eax	#, D.12868
	movl	%eax, 56(%r12)	# D.12868, xhv_14->xhv_riter
	.loc 1 1774 0
	movl	56(%r12), %edx	# xhv_14->xhv_riter, D.12868
	movq	16(%r12), %rax	# xhv_14->xhv_max, D.12869
	cmpl	%eax, %edx	# D.12868, D.12868
	jle	.L404	#,
	.loc 1 1776 0
	movl	$-1, 56(%r12)	#, xhv_14->xhv_riter
	.loc 1 1777 0
	jmp	.L405	#
.L404:
	.loc 1 1780 0
	movq	(%r12), %rax	# xhv_14->xhv_array, D.12871
	movl	56(%r12), %edx	# xhv_14->xhv_riter, D.12868
	movslq	%edx, %rdx	# D.12868, D.12869
	salq	$3, %rdx	#, D.12869
	addq	%rdx, %rax	# D.12869, D.12873
	movq	(%rax), %rbx	# *_104, entry
	.loc 1 1782 0
	movl	-76(%rbp), %eax	# flags, tmp156
	andl	$1, %eax	#, D.12868
	testl	%eax, %eax	# D.12868
	jne	.L403	#,
	.loc 1 1785 0
	jmp	.L406	#
.L407:
	.loc 1 1786 0
	movq	(%rbx), %rbx	# entry_4->hent_next, entry
.L406:
	.loc 1 1785 0 discriminator 1
	testq	%rbx, %rbx	# entry
	je	.L403	#,
	.loc 1 1785 0 is_stmt 0 discriminator 2
	movq	16(%rbx), %rax	# entry_4->hent_val, D.12870
	cmpq	$PL_sv_placeholder, %rax	#, D.12870
	je	.L407	#,
.L403:
	.loc 1 1770 0 is_stmt 1 discriminator 1
	testq	%rbx, %rbx	# entry
	je	.L408	#,
.L405:
	.loc 1 1793 0
	cmpq	$0, -56(%rbp)	#, oldentry
	je	.L409	#,
	.loc 1 1793 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# hv, tmp157
	movl	12(%rax), %eax	# hv_13(D)->sv_flags, D.12865
	andl	$1073741824, %eax	#, D.12865
	testl	%eax, %eax	# D.12865
	je	.L409	#,
	.loc 1 1794 0 is_stmt 1
	movq	-72(%rbp), %rax	# hv, tmp158
	movl	12(%rax), %eax	# hv_13(D)->sv_flags, D.12865
	andl	$-1073741825, %eax	#, D.12865
	movl	%eax, %edx	# D.12865, D.12865
	movq	-72(%rbp), %rax	# hv, tmp159
	movl	%edx, 12(%rax)	# D.12865, hv_13(D)->sv_flags
	.loc 1 1795 0
	movq	-56(%rbp), %rdx	# oldentry, tmp160
	movq	-72(%rbp), %rax	# hv, tmp161
	movq	%rdx, %rsi	# tmp160,
	movq	%rax, %rdi	# tmp161,
	call	Perl_hv_free_ent	#
.L409:
	.loc 1 1801 0
	movq	%rbx, 64(%r12)	# entry, xhv_14->xhv_eiter
	.loc 1 1802 0
	movq	%rbx, %rax	# entry, D.12864
.L393:
	.loc 1 1803 0
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	Perl_hv_iternext_flags, .-Perl_hv_iternext_flags
	.globl	Perl_hv_iterkey
	.type	Perl_hv_iterkey, @function
Perl_hv_iterkey:
.LFB34:
	.loc 1 1816 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, %rax	# entry, entry
	movq	%rsi, -24(%rbp)	# retlen, retlen
	.loc 1 1817 0
	movq	8(%rax), %rdx	# entry_3(D)->hent_hek, D.12875
	movl	4(%rdx), %edx	# _4->hek_len, D.12876
	cmpl	$-2, %edx	#, D.12876
	jne	.L411	#,
.LBB29:
	.loc 1 1819 0
	movq	8(%rax), %rdx	# entry_3(D)->hent_hek, D.12875
	addq	$8, %rdx	#, D.12877
	movq	(%rdx), %rdx	# MEM[(struct SV * *)_7], D.12878
	movl	12(%rdx), %edx	# _8->sv_flags, D.12879
	andl	$262144, %edx	#, D.12879
	testl	%edx, %edx	# D.12879
	je	.L412	#,
	.loc 1 1819 0 is_stmt 0 discriminator 1
	movq	8(%rax), %rdx	# entry_3(D)->hent_hek, D.12875
	addq	$8, %rdx	#, D.12877
	movq	(%rdx), %rdx	# MEM[(struct SV * *)_12], D.12878
	movq	(%rdx), %rdx	# _13->sv_any, D.12880
	movq	8(%rdx), %rdx	# MEM[(struct XPV *)_14].xpv_cur, len.119
	movq	%rdx, -16(%rbp)	# len.119, len
	movq	8(%rax), %rax	# entry_3(D)->hent_hek, D.12875
	addq	$8, %rax	#, D.12877
	movq	(%rax), %rax	# MEM[(struct SV * *)_17], D.12878
	movq	(%rax), %rax	# _18->sv_any, D.12880
	movq	(%rax), %rax	# MEM[(struct XPV *)_19].xpv_pv, iftmp.118
	jmp	.L413	#
.L412:
	.loc 1 1819 0 discriminator 2
	movq	8(%rax), %rax	# entry_3(D)->hent_hek, D.12875
	addq	$8, %rax	#, D.12877
	movq	(%rax), %rax	# MEM[(struct SV * *)_22], D.12878
	leaq	-16(%rbp), %rcx	#, tmp87
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp87,
	movq	%rax, %rdi	# D.12878,
	call	Perl_sv_2pv_flags	#
.L413:
	.loc 1 1819 0 discriminator 3
	movq	%rax, -8(%rbp)	# iftmp.118, p
	.loc 1 1820 0 is_stmt 1 discriminator 3
	movq	-16(%rbp), %rax	# len, len.120
	movl	%eax, %edx	# len.120, D.12876
	movq	-24(%rbp), %rax	# retlen, tmp88
	movl	%edx, (%rax)	# D.12876, *retlen_28(D)
	.loc 1 1821 0 discriminator 3
	movq	-8(%rbp), %rax	# p, D.12874
	jmp	.L414	#
.L411:
.LBE29:
	.loc 1 1824 0
	movq	8(%rax), %rdx	# entry_3(D)->hent_hek, D.12875
	movl	4(%rdx), %ecx	# _30->hek_len, D.12876
	movq	-24(%rbp), %rdx	# retlen, tmp89
	movl	%ecx, (%rdx)	# D.12876, *retlen_28(D)
	.loc 1 1825 0
	movq	8(%rax), %rax	# entry_3(D)->hent_hek, D.12875
	addq	$8, %rax	#, D.12874
.L414:
	.loc 1 1827 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	Perl_hv_iterkey, .-Perl_hv_iterkey
	.globl	Perl_hv_iterkeysv
	.type	Perl_hv_iterkeysv, @function
Perl_hv_iterkeysv:
.LFB35:
	.loc 1 1842 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, %rax	# entry, entry
	.loc 1 1843 0
	movq	8(%rax), %rdx	# entry_4(D)->hent_hek, D.12882
	movl	4(%rdx), %edx	# _5->hek_len, D.12883
	cmpl	$-2, %edx	#, D.12883
	je	.L416	#,
.LBB30:
	.loc 1 1844 0
	movq	8(%rax), %rax	# entry_4(D)->hent_hek, tmp103
	movq	%rax, -16(%rbp)	# tmp103, hek
	.loc 1 1845 0
	movq	-16(%rbp), %rax	# hek, tmp104
	movl	4(%rax), %eax	# hek_7->hek_len, D.12883
	cltq
	leaq	1(%rax), %rdx	#, D.12884
	movq	-16(%rbp), %rax	# hek, tmp106
	addq	%rdx, %rax	# D.12884, tmp105
	addq	$8, %rax	#, D.12885
	movzbl	(%rax), %eax	# MEM[(unsigned char *)_11], D.12886
	movzbl	%al, %eax	# D.12886, tmp107
	movl	%eax, -36(%rbp)	# tmp107, flags
	.loc 1 1848 0
	movl	-36(%rbp), %eax	# flags, tmp108
	andl	$2, %eax	#, D.12883
	testl	%eax, %eax	# D.12883
	je	.L417	#,
.LBB31:
	.loc 1 1852 0
	movq	-16(%rbp), %rax	# hek, tmp109
	movl	4(%rax), %eax	# hek_7->hek_len, D.12883
	cltq
	movq	%rax, -32(%rbp)	# utf8_len.121, utf8_len
	.loc 1 1853 0
	movq	-16(%rbp), %rax	# hek, tmp110
	leaq	8(%rax), %rdx	#, D.12887
	leaq	-32(%rbp), %rax	#, tmp111
	movq	%rax, %rsi	# tmp111,
	movq	%rdx, %rdi	# D.12887,
	call	Perl_bytes_to_utf8	#
	movq	%rax, -8(%rbp)	# tmp112, as_utf8
	.loc 1 1855 0
	movq	-32(%rbp), %rdx	# utf8_len, utf8_len.122
	movq	-8(%rbp), %rax	# as_utf8, tmp113
	movq	%rdx, %rsi	# utf8_len.122,
	movq	%rax, %rdi	# tmp113,
	call	Perl_newSVpvn	#
	movq	%rax, -24(%rbp)	# tmp114, sv
	.loc 1 1856 0
	movq	-24(%rbp), %rax	# sv, tmp115
	movl	12(%rax), %eax	# sv_20->sv_flags, D.12888
	orl	$536870912, %eax	#, D.12888
	movl	%eax, %edx	# D.12888, D.12888
	movq	-24(%rbp), %rax	# sv, tmp116
	movl	%edx, 12(%rax)	# D.12888, sv_20->sv_flags
	.loc 1 1857 0
	movq	-8(%rbp), %rax	# as_utf8, tmp117
	movq	%rax, %rdi	# tmp117,
	call	Perl_safesysfree	#
.LBE31:
	jmp	.L418	#
.L417:
	.loc 1 1858 0
	movl	-36(%rbp), %eax	# flags, tmp118
	andl	$4, %eax	#, D.12883
	testl	%eax, %eax	# D.12883
	je	.L419	#,
	.loc 1 1865 0
	movq	-16(%rbp), %rax	# hek, tmp119
	movl	4(%rax), %eax	# hek_7->hek_len, D.12883
	cltq
	movq	-16(%rbp), %rdx	# hek, tmp120
	addq	$8, %rdx	#, D.12887
	movq	%rax, %rsi	# D.12889,
	movq	%rdx, %rdi	# D.12887,
	call	Perl_newSVpvn	#
	movq	%rax, -24(%rbp)	# tmp121, sv
	.loc 1 1866 0
	movq	-16(%rbp), %rax	# hek, tmp122
	movl	4(%rax), %eax	# hek_7->hek_len, D.12883
	cltq
	leaq	1(%rax), %rdx	#, D.12884
	movq	-16(%rbp), %rax	# hek, tmp124
	addq	%rdx, %rax	# D.12884, tmp123
	addq	$8, %rax	#, D.12885
	movzbl	(%rax), %eax	# MEM[(unsigned char *)_31], D.12886
	movzbl	%al, %eax	# D.12886, D.12883
	andl	$1, %eax	#, D.12883
	testl	%eax, %eax	# D.12883
	je	.L418	#,
	.loc 1 1867 0
	movq	-24(%rbp), %rax	# sv, tmp125
	movl	12(%rax), %eax	# sv_27->sv_flags, D.12888
	orl	$536870912, %eax	#, D.12888
	movl	%eax, %edx	# D.12888, D.12888
	movq	-24(%rbp), %rax	# sv, tmp126
	movl	%edx, 12(%rax)	# D.12888, sv_27->sv_flags
	jmp	.L418	#
.L419:
	.loc 1 1869 0
	movq	-16(%rbp), %rax	# hek, tmp127
	movl	(%rax), %edx	# hek_7->hek_hash, D.12888
	.loc 1 1870 0
	movq	-16(%rbp), %rax	# hek, tmp128
	movl	4(%rax), %eax	# hek_7->hek_len, D.12883
	cltq
	leaq	1(%rax), %rcx	#, D.12884
	movq	-16(%rbp), %rax	# hek, tmp130
	addq	%rcx, %rax	# D.12884, tmp129
	addq	$8, %rax	#, D.12885
	movzbl	(%rax), %eax	# MEM[(unsigned char *)_41], D.12886
	movzbl	%al, %eax	# D.12886, D.12883
	andl	$1, %eax	#, D.12883
	.loc 1 1869 0
	testl	%eax, %eax	# D.12883
	je	.L421	#,
	.loc 1 1870 0
	movq	-16(%rbp), %rax	# hek, tmp131
	movl	4(%rax), %eax	# hek_7->hek_len, D.12883
	.loc 1 1869 0
	negl	%eax	# iftmp.123
	jmp	.L422	#
.L421:
	.loc 1 1869 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# hek, tmp132
	movl	4(%rax), %eax	# hek_7->hek_len, iftmp.123
.L422:
	.loc 1 1869 0 discriminator 2
	movq	-16(%rbp), %rcx	# hek, tmp133
	addq	$8, %rcx	#, D.12887
	movl	%eax, %esi	# iftmp.123,
	movq	%rcx, %rdi	# D.12887,
	call	Perl_newSVpvn_share	#
	movq	%rax, -24(%rbp)	# tmp134, sv
.L418:
	.loc 1 1873 0 is_stmt 1
	movq	-24(%rbp), %rax	# sv, tmp135
	movq	%rax, %rdi	# tmp135,
	call	Perl_sv_2mortal	#
	jmp	.L423	#
.L416:
.LBE30:
	.loc 1 1875 0
	movq	8(%rax), %rax	# entry_4(D)->hent_hek, D.12882
	addq	$8, %rax	#, D.12887
	movq	(%rax), %rax	# MEM[(struct SV * *)_52], D.12881
	movq	%rax, %rdi	# D.12881,
	call	Perl_sv_mortalcopy	#
.L423:
	.loc 1 1876 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	Perl_hv_iterkeysv, .-Perl_hv_iterkeysv
	.globl	Perl_hv_iterval
	.type	Perl_hv_iterval, @function
Perl_hv_iterval:
.LFB36:
	.loc 1 1889 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# hv, hv
	movq	%rsi, %rbx	# entry, entry
	.loc 1 1890 0
	movq	-40(%rbp), %rax	# hv, tmp74
	movl	12(%rax), %eax	# hv_2(D)->sv_flags, D.12891
	andl	$32768, %eax	#, D.12891
	testl	%eax, %eax	# D.12891
	je	.L425	#,
	.loc 1 1891 0
	movq	-40(%rbp), %rax	# hv, tmp75
	movl	$80, %esi	#,
	movq	%rax, %rdi	# tmp75,
	call	Perl_mg_find	#
	testq	%rax, %rax	# D.12892
	je	.L425	#,
.LBB32:
	.loc 1 1892 0
	call	Perl_sv_newmortal	#
	movq	%rax, -24(%rbp)	# tmp76, sv
	.loc 1 1893 0
	movq	8(%rbx), %rax	# entry_7(D)->hent_hek, D.12893
	movl	4(%rax), %eax	# _8->hek_len, D.12894
	cmpl	$-2, %eax	#, D.12894
	jne	.L426	#,
	.loc 1 1894 0
	movq	8(%rbx), %rax	# entry_7(D)->hent_hek, D.12893
	addq	$8, %rax	#, D.12895
	movq	(%rax), %rdx	# MEM[(struct SV * *)_11], D.12890
	movq	-24(%rbp), %rsi	# sv, tmp77
	movq	-40(%rbp), %rax	# hv, tmp78
	movl	$-2, %ecx	#,
	movq	%rax, %rdi	# tmp78,
	call	Perl_mg_copy	#
	jmp	.L427	#
.L426:
	.loc 1 1895 0
	movq	8(%rbx), %rax	# entry_7(D)->hent_hek, D.12893
	movl	4(%rax), %edx	# _13->hek_len, D.12894
	movq	8(%rbx), %rax	# entry_7(D)->hent_hek, D.12893
	leaq	8(%rax), %rdi	#, D.12895
	movq	-24(%rbp), %rsi	# sv, tmp79
	movq	-40(%rbp), %rax	# hv, tmp80
	movl	%edx, %ecx	# D.12894,
	movq	%rdi, %rdx	# D.12895,
	movq	%rax, %rdi	# tmp80,
	call	Perl_mg_copy	#
.L427:
	.loc 1 1896 0
	movq	-24(%rbp), %rax	# sv, D.12890
	jmp	.L428	#
.L425:
.LBE32:
	.loc 1 1899 0
	movq	16(%rbx), %rax	# entry_7(D)->hent_val, D.12890
.L428:
	.loc 1 1900 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	Perl_hv_iterval, .-Perl_hv_iterval
	.globl	Perl_hv_iternextsv
	.type	Perl_hv_iternextsv, @function
Perl_hv_iternextsv:
.LFB37:
	.loc 1 1913 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# hv, hv
	movq	%rsi, -32(%rbp)	# key, key
	movq	%rdx, -40(%rbp)	# retlen, retlen
	.loc 1 1915 0
	movq	-24(%rbp), %rax	# hv, tmp62
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp62,
	call	Perl_hv_iternext_flags	#
	movq	%rax, -8(%rbp)	# tmp63, he
	cmpq	$0, -8(%rbp)	#, he
	jne	.L430	#,
	.loc 1 1916 0
	movl	$0, %eax	#, D.12896
	jmp	.L431	#
.L430:
	.loc 1 1917 0
	movq	-40(%rbp), %rdx	# retlen, tmp64
	movq	-8(%rbp), %rax	# he, tmp65
	movq	%rdx, %rsi	# tmp64,
	movq	%rax, %rdi	# tmp65,
	call	Perl_hv_iterkey	#
	movq	-32(%rbp), %rdx	# key, tmp66
	movq	%rax, (%rdx)	# D.12897, *key_7(D)
	.loc 1 1918 0
	movq	-8(%rbp), %rdx	# he, tmp67
	movq	-24(%rbp), %rax	# hv, tmp68
	movq	%rdx, %rsi	# tmp67,
	movq	%rax, %rdi	# tmp68,
	call	Perl_hv_iterval	#
.L431:
	.loc 1 1919 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	Perl_hv_iternextsv, .-Perl_hv_iternextsv
	.globl	Perl_hv_magic
	.type	Perl_hv_magic, @function
Perl_hv_magic:
.LFB38:
	.loc 1 1931 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# hv, hv
	movq	%rsi, -16(%rbp)	# gv, gv
	movl	%edx, -20(%rbp)	# how, how
	.loc 1 1932 0
	movl	-20(%rbp), %edx	# how, tmp59
	movq	-16(%rbp), %rsi	# gv, tmp60
	movq	-8(%rbp), %rax	# hv, tmp61
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp61,
	call	Perl_sv_magic	#
	.loc 1 1933 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	Perl_hv_magic, .-Perl_hv_magic
	.globl	Perl_unsharepvn
	.type	Perl_unsharepvn, @function
Perl_unsharepvn:
.LFB39:
	.loc 1 1950 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# str, str
	movl	%esi, -12(%rbp)	# len, len
	movl	%edx, -16(%rbp)	# hash, hash
	.loc 1 1951 0
	movl	-16(%rbp), %ecx	# hash, tmp59
	movl	-12(%rbp), %edx	# len, tmp60
	movq	-8(%rbp), %rax	# str, tmp61
	movq	%rax, %rsi	# tmp61,
	movl	$0, %edi	#,
	call	S_unshare_hek_or_pvn	#
	.loc 1 1952 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	Perl_unsharepvn, .-Perl_unsharepvn
	.globl	Perl_unshare_hek
	.type	Perl_unshare_hek, @function
Perl_unshare_hek:
.LFB40:
	.loc 1 1957 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# hek, hek
	.loc 1 1958 0
	movq	-8(%rbp), %rax	# hek, tmp59
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp59,
	call	S_unshare_hek_or_pvn	#
	.loc 1 1959 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	Perl_unshare_hek, .-Perl_unshare_hek
	.section	.rodata
.LC9:
	.string	" (utf8)"
.LC10:
	.string	""
	.align 8
.LC11:
	.string	"Attempt to free non-existent shared string '%s'%s"
	.text
	.type	S_unshare_hek_or_pvn, @function
S_unshare_hek_or_pvn:
.LFB41:
	.loc 1 1967 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$64, %rsp	#,
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -72(%rbp)	# hek, hek
	movq	%rsi, -80(%rbp)	# str, str
	movl	%edx, -84(%rbp)	# len, len
	movl	%ecx, -88(%rbp)	# hash, hash
	.loc 1 1971 0
	movl	$1, %r14d	#, i
	.loc 1 1972 0
	movl	$0, -60(%rbp)	#, found
	.loc 1 1973 0
	movb	$0, -61(%rbp)	#, is_utf8
	.loc 1 1974 0
	movl	$0, -56(%rbp)	#, k_flags
	.loc 1 1975 0
	movq	-80(%rbp), %rax	# str, tmp121
	movq	%rax, -40(%rbp)	# tmp121, save
	.loc 1 1977 0
	cmpq	$0, -72(%rbp)	#, hek
	je	.L436	#,
	.loc 1 1978 0
	movq	-72(%rbp), %rax	# hek, tmp122
	movl	(%rax), %eax	# hek_25(D)->hek_hash, tmp123
	movl	%eax, -88(%rbp)	# tmp123, hash
	jmp	.L437	#
.L436:
	.loc 1 1979 0
	cmpl	$0, -84(%rbp)	#, len
	jns	.L437	#,
.LBB33:
	.loc 1 1980 0
	movl	-84(%rbp), %eax	# len, tmp124
	negl	%eax	# D.12898
	cltq
	movq	%rax, -48(%rbp)	# tmplen.124, tmplen
	.loc 1 1981 0
	movb	$1, -61(%rbp)	#, is_utf8
	.loc 1 1983 0
	leaq	-61(%rbp), %rdx	#, tmp125
	leaq	-48(%rbp), %rcx	#, tmp126
	movq	-80(%rbp), %rax	# str, tmp127
	movq	%rcx, %rsi	# tmp126,
	movq	%rax, %rdi	# tmp127,
	call	Perl_bytes_from_utf8	#
	movq	%rax, -80(%rbp)	# tmp128, str
	.loc 1 1984 0
	movq	-48(%rbp), %rax	# tmplen, tmplen.125
	movl	%eax, -84(%rbp)	# tmplen.125, len
	.loc 1 1985 0
	movzbl	-61(%rbp), %eax	# is_utf8, is_utf8.126
	testb	%al, %al	# is_utf8.126
	je	.L438	#,
	.loc 1 1986 0
	movl	$1, -56(%rbp)	#, k_flags
.L438:
	.loc 1 1987 0
	movq	-80(%rbp), %rax	# str, tmp129
	cmpq	-40(%rbp), %rax	# save, tmp129
	je	.L437	#,
	.loc 1 1988 0
	orl	$258, -56(%rbp)	#, k_flags
.L437:
.LBE33:
	.loc 1 1996 0
	movq	PL_strtab(%rip), %rax	# PL_strtab, PL_strtab.127
	movq	(%rax), %r13	# PL_strtab.127_37->sv_any, xhv
	.loc 1 2000 0
	movq	0(%r13), %rdx	# xhv_38->xhv_array, D.12899
	movq	16(%r13), %rax	# xhv_38->xhv_max, D.12900
	andl	-88(%rbp), %eax	# hash, D.12901
	movl	%eax, %eax	# D.12901, D.12900
	salq	$3, %rax	#, D.12900
	leaq	(%rdx,%rax), %r12	#, oentry
	.loc 1 2001 0
	cmpq	$0, -72(%rbp)	#, hek
	je	.L440	#,
	.loc 1 2002 0
	movq	(%r12), %rbx	# *oentry_45, entry
	jmp	.L441	#
.L444:
	.loc 1 2003 0
	movq	8(%rbx), %rax	# entry_4->hent_hek, D.12902
	cmpq	-72(%rbp), %rax	# hek, D.12902
	je	.L442	#,
	.loc 1 2002 0
	movl	$0, %r14d	#, i
	movq	%rbx, %r12	# entry, oentry
	movq	(%r12), %rbx	# *oentry_49, entry
	jmp	.L441	#
.L442:
	.loc 1 2005 0
	movl	$1, -60(%rbp)	#, found
	.loc 1 2006 0
	nop
	jmp	.L445	#
.L441:
	.loc 1 2002 0 discriminator 1
	testq	%rbx, %rbx	# entry
	jne	.L444	#,
	jmp	.L445	#
.L440:
.LBB34:
	.loc 1 2009 0
	movl	-56(%rbp), %eax	# k_flags, tmp133
	movzbl	%al, %eax	# tmp133, tmp132
	movl	%eax, -52(%rbp)	# tmp132, flags_masked
	.loc 1 2010 0
	movq	(%r12), %rbx	# *oentry_45, entry
	jmp	.L446	#
.L452:
	.loc 1 2011 0
	movq	8(%rbx), %rax	# entry_5->hent_hek, D.12902
	movl	(%rax), %eax	# _54->hek_hash, D.12901
	cmpl	-88(%rbp), %eax	# hash, D.12901
	je	.L447	#,
	.loc 1 2012 0
	jmp	.L448	#
.L447:
	.loc 1 2013 0
	movq	8(%rbx), %rax	# entry_5->hent_hek, D.12902
	movl	4(%rax), %eax	# _56->hek_len, D.12898
	cmpl	-84(%rbp), %eax	# len, D.12898
	je	.L449	#,
	.loc 1 2014 0
	jmp	.L448	#
.L449:
	.loc 1 2015 0
	movq	8(%rbx), %rax	# entry_5->hent_hek, D.12902
	addq	$8, %rax	#, D.12903
	cmpq	-80(%rbp), %rax	# str, D.12903
	je	.L450	#,
	.loc 1 2015 0 is_stmt 0 discriminator 1
	movl	-84(%rbp), %eax	# len, tmp134
	movslq	%eax, %rdx	# tmp134, D.12900
	movq	8(%rbx), %rax	# entry_5->hent_hek, D.12902
	leaq	8(%rax), %rcx	#, D.12903
	movq	-80(%rbp), %rax	# str, tmp135
	movq	%rax, %rsi	# tmp135,
	movq	%rcx, %rdi	# D.12903,
	call	memcmp	#
	testl	%eax, %eax	# D.12898
	je	.L450	#,
	.loc 1 2016 0 is_stmt 1
	jmp	.L448	#
.L450:
	.loc 1 2017 0
	movq	8(%rbx), %rdx	# entry_5->hent_hek, D.12902
	movq	8(%rbx), %rax	# entry_5->hent_hek, D.12902
	movl	4(%rax), %eax	# _65->hek_len, D.12898
	cltq
	addq	$1, %rax	#, D.12904
	addq	%rdx, %rax	# D.12902, tmp136
	addq	$8, %rax	#, D.12899
	movzbl	(%rax), %eax	# MEM[(unsigned char *)_69], D.12905
	movzbl	%al, %eax	# D.12905, D.12898
	cmpl	-52(%rbp), %eax	# flags_masked, D.12898
	je	.L451	#,
	.loc 1 2018 0
	jmp	.L448	#
.L451:
	.loc 1 2019 0
	movl	$1, -60(%rbp)	#, found
	.loc 1 2020 0
	jmp	.L445	#
.L448:
	.loc 1 2010 0
	movl	$0, %r14d	#, i
	movq	%rbx, %r12	# entry, oentry
	movq	(%r12), %rbx	# *oentry_74, entry
.L446:
	.loc 1 2010 0 is_stmt 0 discriminator 1
	testq	%rbx, %rbx	# entry
	jne	.L452	#,
.L445:
.LBE34:
	.loc 1 2024 0 is_stmt 1
	cmpl	$0, -60(%rbp)	#, found
	je	.L453	#,
	.loc 1 2025 0
	movq	16(%rbx), %rax	# entry_6->hent_val, D.12906
	subq	$16, %rax	#, D.12906
	movq	%rax, 16(%rbx)	# D.12906, entry_6->hent_val
	movq	16(%rbx), %rax	# entry_6->hent_val, D.12906
	testq	%rax, %rax	# D.12906
	jne	.L453	#,
	.loc 1 2026 0
	movq	(%rbx), %rax	# entry_6->hent_next, D.12907
	movq	%rax, (%r12)	# D.12907, *oentry_9
	.loc 1 2027 0
	testl	%r14d, %r14d	# i
	je	.L454	#,
	.loc 1 2027 0 is_stmt 0 discriminator 1
	movq	(%r12), %rax	# *oentry_9, D.12907
	testq	%rax, %rax	# D.12907
	jne	.L454	#,
	.loc 1 2028 0 is_stmt 1
	movq	8(%r13), %rax	# xhv_38->xhv_fill, D.12900
	subq	$1, %rax	#, D.12900
	movq	%rax, 8(%r13)	# D.12900, xhv_38->xhv_fill
.L454:
	.loc 1 2029 0
	movq	8(%rbx), %rax	# entry_6->hent_hek, D.12902
	movq	%rax, %rdi	# D.12902,
	call	Perl_safesysfree	#
	.loc 1 2030 0
	movq	%rbx, %rdi	# entry,
	call	S_del_he	#
	.loc 1 2031 0
	movq	24(%r13), %rax	# xhv_38->xhv_keys, D.12908
	subq	$1, %rax	#, D.12908
	movq	%rax, 24(%r13)	# D.12908, xhv_38->xhv_keys
.L453:
	.loc 1 2036 0
	cmpl	$0, -60(%rbp)	#, found
	jne	.L455	#,
	.loc 1 2036 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.128
	movq	80(%rax), %rax	# PL_curcop.128_86->cop_warnings, D.12906
	testq	%rax, %rax	# D.12906
	je	.L456	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.129
	movq	80(%rax), %rax	# PL_curcop.129_88->cop_warnings, D.12906
	cmpq	$16, %rax	#, D.12906
	je	.L456	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.130
	movq	80(%rax), %rax	# PL_curcop.130_90->cop_warnings, D.12906
	cmpq	$32, %rax	#, D.12906
	je	.L455	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.131
	movq	80(%rax), %rax	# PL_curcop.131_92->cop_warnings, D.12906
	movq	(%rax), %rax	# _93->sv_any, D.12909
	movq	(%rax), %rax	# MEM[(struct XPV *)_94].xpv_pv, D.12899
	addq	$6, %rax	#, D.12899
	movzbl	(%rax), %eax	# *_96, D.12910
	movsbl	%al, %eax	# D.12910, D.12898
	andl	$1, %eax	#, D.12898
	testl	%eax, %eax	# D.12898
	je	.L455	#,
.L456:
	.loc 1 2041 0 is_stmt 1
	movl	-56(%rbp), %eax	# k_flags, tmp137
	andl	$1, %eax	#, D.12898
	.loc 1 2037 0
	testl	%eax, %eax	# D.12898
	je	.L457	#,
	.loc 1 2037 0 is_stmt 0 discriminator 1
	movl	$.LC9, %eax	#, iftmp.132
	jmp	.L458	#
.L457:
	.loc 1 2037 0 discriminator 2
	movl	$.LC10, %eax	#, iftmp.132
.L458:
	.loc 1 2037 0 discriminator 3
	cmpq	$0, -72(%rbp)	#, hek
	je	.L459	#,
	.loc 1 2037 0 discriminator 4
	movq	-72(%rbp), %rdx	# hek, tmp138
	addq	$8, %rdx	#, iftmp.133
	jmp	.L460	#
.L459:
	.loc 1 2037 0 discriminator 5
	movq	-80(%rbp), %rdx	# str, iftmp.133
.L460:
	.loc 1 2037 0 discriminator 6
	movq	%rax, %rcx	# iftmp.132,
	movl	$.LC11, %esi	#,
	movl	$24, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L455:
	.loc 1 2042 0 is_stmt 1
	movl	-56(%rbp), %eax	# k_flags, tmp139
	andl	$256, %eax	#, D.12898
	testl	%eax, %eax	# D.12898
	je	.L435	#,
	.loc 1 2043 0
	movq	-80(%rbp), %rax	# str, tmp140
	movq	%rax, %rdi	# tmp140,
	call	Perl_safesysfree	#
.L435:
	.loc 1 2044 0
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	S_unshare_hek_or_pvn, .-S_unshare_hek_or_pvn
	.globl	Perl_share_hek
	.type	Perl_share_hek, @function
Perl_share_hek:
.LFB42:
	.loc 1 2052 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# str, str
	movl	%esi, -60(%rbp)	# len, len
	movl	%edx, %ebx	# hash, hash
	.loc 1 2053 0
	movb	$0, -37(%rbp)	#, is_utf8
	.loc 1 2054 0
	movl	$0, -36(%rbp)	#, flags
	.loc 1 2055 0
	movq	-56(%rbp), %rax	# str, tmp66
	movq	%rax, -24(%rbp)	# tmp66, save
	.loc 1 2057 0
	cmpl	$0, -60(%rbp)	#, len
	jns	.L463	#,
.LBB35:
	.loc 1 2058 0
	movl	-60(%rbp), %eax	# len, tmp67
	negl	%eax	# D.12914
	cltq
	movq	%rax, -32(%rbp)	# tmplen.134, tmplen
	.loc 1 2059 0
	movb	$1, -37(%rbp)	#, is_utf8
	.loc 1 2061 0
	leaq	-37(%rbp), %rdx	#, tmp68
	leaq	-32(%rbp), %rcx	#, tmp69
	movq	-56(%rbp), %rax	# str, tmp70
	movq	%rcx, %rsi	# tmp69,
	movq	%rax, %rdi	# tmp70,
	call	Perl_bytes_from_utf8	#
	movq	%rax, -56(%rbp)	# tmp71, str
	.loc 1 2062 0
	movq	-32(%rbp), %rax	# tmplen, tmplen.135
	movl	%eax, -60(%rbp)	# tmplen.135, len
	.loc 1 2065 0
	movzbl	-37(%rbp), %eax	# is_utf8, is_utf8.136
	testb	%al, %al	# is_utf8.136
	je	.L464	#,
	.loc 1 2066 0
	movl	$1, -36(%rbp)	#, flags
.L464:
	.loc 1 2070 0
	movq	-56(%rbp), %rax	# str, tmp72
	cmpq	-24(%rbp), %rax	# save, tmp72
	je	.L463	#,
	.loc 1 2071 0
	orl	$258, -36(%rbp)	#, flags
.L463:
.LBE35:
	.loc 1 2074 0
	movl	-36(%rbp), %edx	# flags, tmp73
	movl	-60(%rbp), %esi	# len, tmp74
	movq	-56(%rbp), %rax	# str, tmp75
	movl	%edx, %ecx	# tmp73,
	movl	%ebx, %edx	# hash,
	movq	%rax, %rdi	# tmp75,
	call	S_share_hek_flags	#
	.loc 1 2075 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	Perl_share_hek, .-Perl_share_hek
	.type	S_share_hek_flags, @function
S_share_hek_flags:
.LFB43:
	.loc 1 2079 0
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
	subq	$40, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -72(%rbp)	# str, str
	movl	%esi, -76(%rbp)	# len, len
	movl	%edx, %r14d	# hash, hash
	movl	%ecx, -80(%rbp)	# flags, flags
	.loc 1 2083 0
	movl	$1, %r15d	#, i
	.loc 1 2084 0
	movl	$0, -56(%rbp)	#, found
	.loc 1 2085 0
	movl	-80(%rbp), %eax	# flags, tmp107
	movzbl	%al, %eax	# tmp107, tmp106
	movl	%eax, -52(%rbp)	# tmp106, flags_masked
	.loc 1 2095 0
	movq	PL_strtab(%rip), %rax	# PL_strtab, PL_strtab.137
	movq	(%rax), %r12	# PL_strtab.137_9->sv_any, xhv
	.loc 1 2099 0
	movq	(%r12), %rax	# xhv_10->xhv_array, D.12916
	movq	16(%r12), %rdx	# xhv_10->xhv_max, D.12917
	andl	%r14d, %edx	# hash, D.12918
	movl	%edx, %edx	# D.12918, D.12917
	salq	$3, %rdx	#, D.12917
	leaq	(%rax,%rdx), %r13	#, oentry
	.loc 1 2100 0
	movq	0(%r13), %rbx	# *oentry_18, entry
	jmp	.L468	#
.L475:
	.loc 1 2101 0
	movq	8(%rbx), %rax	# entry_1->hent_hek, D.12919
	movl	(%rax), %eax	# _20->hek_hash, D.12918
	cmpl	%r14d, %eax	# hash, D.12918
	je	.L469	#,
	.loc 1 2102 0
	jmp	.L470	#
.L469:
	.loc 1 2103 0
	movq	8(%rbx), %rax	# entry_1->hent_hek, D.12919
	movl	4(%rax), %eax	# _22->hek_len, D.12920
	cmpl	-76(%rbp), %eax	# len, D.12920
	je	.L471	#,
	.loc 1 2104 0
	jmp	.L470	#
.L471:
	.loc 1 2105 0
	movq	8(%rbx), %rax	# entry_1->hent_hek, D.12919
	addq	$8, %rax	#, D.12921
	cmpq	-72(%rbp), %rax	# str, D.12921
	je	.L472	#,
	.loc 1 2105 0 is_stmt 0 discriminator 1
	movl	-76(%rbp), %eax	# len, tmp108
	movslq	%eax, %rdx	# tmp108, D.12917
	movq	8(%rbx), %rax	# entry_1->hent_hek, D.12919
	leaq	8(%rax), %rcx	#, D.12921
	movq	-72(%rbp), %rax	# str, tmp109
	movq	%rax, %rsi	# tmp109,
	movq	%rcx, %rdi	# D.12921,
	call	memcmp	#
	testl	%eax, %eax	# D.12920
	je	.L472	#,
	.loc 1 2106 0 is_stmt 1
	jmp	.L470	#
.L472:
	.loc 1 2107 0
	movq	8(%rbx), %rdx	# entry_1->hent_hek, D.12919
	movq	8(%rbx), %rax	# entry_1->hent_hek, D.12919
	movl	4(%rax), %eax	# _33->hek_len, D.12920
	cltq
	addq	$1, %rax	#, D.12922
	addq	%rdx, %rax	# D.12919, tmp110
	addq	$8, %rax	#, D.12916
	movzbl	(%rax), %eax	# MEM[(unsigned char *)_37], D.12923
	movzbl	%al, %eax	# D.12923, D.12920
	cmpl	-52(%rbp), %eax	# flags_masked, D.12920
	je	.L473	#,
	.loc 1 2108 0
	jmp	.L470	#
.L473:
	.loc 1 2109 0
	movl	$1, -56(%rbp)	#, found
	.loc 1 2110 0
	jmp	.L474	#
.L470:
	.loc 1 2100 0
	movl	$0, %r15d	#, i
	movq	(%rbx), %rbx	# entry_1->hent_next, entry
.L468:
	.loc 1 2100 0 is_stmt 0 discriminator 1
	testq	%rbx, %rbx	# entry
	jne	.L475	#,
.L474:
	.loc 1 2112 0 is_stmt 1
	cmpl	$0, -56(%rbp)	#, found
	jne	.L476	#,
	.loc 1 2113 0
	call	S_new_he	#
	movq	%rax, %rbx	#, entry
	.loc 1 2114 0
	movl	-52(%rbp), %edx	# flags_masked, tmp111
	movl	-76(%rbp), %esi	# len, tmp112
	movq	-72(%rbp), %rax	# str, tmp113
	movl	%edx, %ecx	# tmp111,
	movl	%r14d, %edx	# hash,
	movq	%rax, %rdi	# tmp113,
	call	S_save_hek_flags	#
	movq	%rax, 8(%rbx)	# D.12919, entry_43->hent_hek
	.loc 1 2115 0
	movq	$0, 16(%rbx)	#, entry_43->hent_val
	.loc 1 2116 0
	movq	0(%r13), %rax	# *oentry_18, D.12924
	movq	%rax, (%rbx)	# D.12924, entry_43->hent_next
	.loc 1 2117 0
	movq	%rbx, 0(%r13)	# entry, *oentry_18
	.loc 1 2118 0
	movq	24(%r12), %rax	# xhv_10->xhv_keys, D.12925
	addq	$1, %rax	#, D.12925
	movq	%rax, 24(%r12)	# D.12925, xhv_10->xhv_keys
	.loc 1 2119 0
	testl	%r15d, %r15d	# i
	je	.L477	#,
	.loc 1 2120 0
	movq	8(%r12), %rax	# xhv_10->xhv_fill, D.12917
	addq	$1, %rax	#, D.12917
	movq	%rax, 8(%r12)	# D.12917, xhv_10->xhv_fill
	jmp	.L476	#
.L477:
	.loc 1 2121 0
	movq	24(%r12), %rdx	# xhv_10->xhv_keys, D.12925
	movq	16(%r12), %rax	# xhv_10->xhv_max, D.12917
	cmpq	%rax, %rdx	# D.12925, D.12925
	jle	.L476	#,
	.loc 1 2122 0
	movq	PL_strtab(%rip), %rax	# PL_strtab, PL_strtab.138
	movq	%rax, %rdi	# PL_strtab.138,
	call	S_hsplit	#
.L476:
	.loc 1 2126 0
	movq	16(%rbx), %rax	# entry_2->hent_val, D.12926
	addq	$16, %rax	#, D.12926
	movq	%rax, 16(%rbx)	# D.12926, entry_2->hent_val
	.loc 1 2129 0
	movl	-80(%rbp), %eax	# flags, tmp114
	andl	$256, %eax	#, D.12920
	testl	%eax, %eax	# D.12920
	je	.L478	#,
	.loc 1 2130 0
	movq	-72(%rbp), %rax	# str, tmp115
	movq	%rax, %rdi	# tmp115,
	call	Perl_safesysfree	#
.L478:
	.loc 1 2132 0
	movq	8(%rbx), %rax	# entry_2->hent_hek, D.12919
	.loc 1 2133 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	S_share_hek_flags, .-S_share_hek_flags
	.section	.rodata
	.align 8
.LC2:
	.long	0
	.long	1072693248
	.text
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
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2a49
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF340
	.byte	0x1
	.long	.LASF341
	.long	.LASF342
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
	.long	.LASF191
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
	.long	0xfa3
	.byte	0
	.uleb128 0xd
	.long	.LASF17
	.byte	0x7
	.byte	0xe3
	.long	0xfa3
	.byte	0x8
	.uleb128 0xd
	.long	.LASF18
	.byte	0x7
	.byte	0xe3
	.long	0x1027
	.byte	0x10
	.uleb128 0xd
	.long	.LASF19
	.byte	0x7
	.byte	0xe3
	.long	0x1011
	.byte	0x18
	.uleb128 0xd
	.long	.LASF20
	.byte	0x7
	.byte	0xe3
	.long	0xe15
	.byte	0x20
	.uleb128 0xd
	.long	.LASF21
	.byte	0x7
	.byte	0xe3
	.long	0xe15
	.byte	0x22
	.uleb128 0xd
	.long	.LASF22
	.byte	0x7
	.byte	0xe3
	.long	0xe0b
	.byte	0x24
	.uleb128 0xd
	.long	.LASF23
	.byte	0x7
	.byte	0xe3
	.long	0xe0b
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
	.long	0xfa3
	.byte	0
	.uleb128 0xd
	.long	.LASF17
	.byte	0x8
	.byte	0x11
	.long	0xfa3
	.byte	0x8
	.uleb128 0xd
	.long	.LASF18
	.byte	0x8
	.byte	0x11
	.long	0x1027
	.byte	0x10
	.uleb128 0xd
	.long	.LASF19
	.byte	0x8
	.byte	0x11
	.long	0x1011
	.byte	0x18
	.uleb128 0xd
	.long	.LASF20
	.byte	0x8
	.byte	0x11
	.long	0xe15
	.byte	0x20
	.uleb128 0xd
	.long	.LASF21
	.byte	0x8
	.byte	0x11
	.long	0xe15
	.byte	0x22
	.uleb128 0xd
	.long	.LASF22
	.byte	0x8
	.byte	0x11
	.long	0xe0b
	.byte	0x24
	.uleb128 0xd
	.long	.LASF23
	.byte	0x8
	.byte	0x11
	.long	0xe0b
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
	.long	0xf8b
	.byte	0x30
	.uleb128 0xd
	.long	.LASF26
	.byte	0x8
	.byte	0x18
	.long	0xfc0
	.byte	0x38
	.uleb128 0xd
	.long	.LASF27
	.byte	0x8
	.byte	0x1a
	.long	0xe2b
	.byte	0x40
	.uleb128 0xd
	.long	.LASF28
	.byte	0x8
	.byte	0x1b
	.long	0xe20
	.byte	0x44
	.uleb128 0xd
	.long	.LASF29
	.byte	0x8
	.byte	0x1c
	.long	0xe36
	.byte	0x48
	.uleb128 0xd
	.long	.LASF30
	.byte	0x8
	.byte	0x1d
	.long	0xe53
	.byte	0x50
	.uleb128 0xd
	.long	.LASF31
	.byte	0x8
	.byte	0x1e
	.long	0xe53
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
	.long	0xfa3
	.byte	0
	.uleb128 0xd
	.long	.LASF17
	.byte	0x7
	.byte	0xfe
	.long	0xfa3
	.byte	0x8
	.uleb128 0xd
	.long	.LASF18
	.byte	0x7
	.byte	0xfe
	.long	0x1027
	.byte	0x10
	.uleb128 0xd
	.long	.LASF19
	.byte	0x7
	.byte	0xfe
	.long	0x1011
	.byte	0x18
	.uleb128 0xd
	.long	.LASF20
	.byte	0x7
	.byte	0xfe
	.long	0xe15
	.byte	0x20
	.uleb128 0xd
	.long	.LASF21
	.byte	0x7
	.byte	0xfe
	.long	0xe15
	.byte	0x22
	.uleb128 0xd
	.long	.LASF22
	.byte	0x7
	.byte	0xfe
	.long	0xe0b
	.byte	0x24
	.uleb128 0xd
	.long	.LASF23
	.byte	0x7
	.byte	0xfe
	.long	0xe0b
	.byte	0x25
	.uleb128 0xd
	.long	.LASF34
	.byte	0x7
	.byte	0xff
	.long	0xfa3
	.byte	0x28
	.uleb128 0xf
	.long	.LASF35
	.byte	0x7
	.value	0x100
	.long	0xfa3
	.byte	0x30
	.uleb128 0xf
	.long	.LASF36
	.byte	0x7
	.value	0x101
	.long	0xfa3
	.byte	0x38
	.uleb128 0xf
	.long	.LASF37
	.byte	0x7
	.value	0x102
	.long	0xfa3
	.byte	0x40
	.uleb128 0xf
	.long	.LASF38
	.byte	0x7
	.value	0x103
	.long	0x102d
	.byte	0x48
	.uleb128 0xf
	.long	.LASF39
	.byte	0x7
	.value	0x107
	.long	0x1033
	.byte	0x50
	.uleb128 0xf
	.long	.LASF40
	.byte	0x7
	.value	0x109
	.long	0xe2b
	.byte	0x58
	.uleb128 0xf
	.long	.LASF41
	.byte	0x7
	.value	0x10a
	.long	0xe2b
	.byte	0x5c
	.uleb128 0xf
	.long	.LASF42
	.byte	0x7
	.value	0x10b
	.long	0xe0b
	.byte	0x60
	.uleb128 0xf
	.long	.LASF43
	.byte	0x7
	.value	0x10f
	.long	0xf8b
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
	.long	0xe2b
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x46
	.long	0xe2b
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
	.long	0xf73
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x57
	.long	0xe2b
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x58
	.long	0xe2b
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
	.long	0xf79
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x5d
	.long	0xe2b
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x5e
	.long	0xe2b
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
	.long	0xf6d
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x51
	.long	0xe2b
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x52
	.long	0xe2b
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
	.long	0xec6
	.byte	0
	.uleb128 0xd
	.long	.LASF53
	.byte	0xa
	.byte	0x21
	.long	0xec6
	.byte	0x8
	.uleb128 0xd
	.long	.LASF54
	.byte	0xa
	.byte	0x22
	.long	0xecc
	.byte	0x10
	.uleb128 0xd
	.long	.LASF55
	.byte	0xa
	.byte	0x23
	.long	0xed7
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
	.long	0xee2
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
	.long	0xee8
	.byte	0x38
	.uleb128 0xd
	.long	.LASF60
	.byte	0xa
	.byte	0x29
	.long	0xe20
	.byte	0x40
	.uleb128 0xd
	.long	.LASF61
	.byte	0xa
	.byte	0x2a
	.long	0xe20
	.byte	0x44
	.uleb128 0xd
	.long	.LASF62
	.byte	0xa
	.byte	0x2b
	.long	0xe20
	.byte	0x48
	.uleb128 0xd
	.long	.LASF63
	.byte	0xa
	.byte	0x2c
	.long	0xe20
	.byte	0x4c
	.uleb128 0xd
	.long	.LASF64
	.byte	0xa
	.byte	0x2d
	.long	0xe2b
	.byte	0x50
	.uleb128 0xd
	.long	.LASF65
	.byte	0xa
	.byte	0x2e
	.long	0xe2b
	.byte	0x54
	.uleb128 0xd
	.long	.LASF66
	.byte	0xa
	.byte	0x2f
	.long	0xe2b
	.byte	0x58
	.uleb128 0xd
	.long	.LASF67
	.byte	0xa
	.byte	0x30
	.long	0xe2b
	.byte	0x5c
	.uleb128 0xd
	.long	.LASF68
	.byte	0xa
	.byte	0x32
	.long	0xeee
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
	.long	0xe53
	.byte	0
	.uleb128 0xd
	.long	.LASF70
	.byte	0xb
	.byte	0xd
	.long	0xe2b
	.byte	0x8
	.uleb128 0xd
	.long	.LASF71
	.byte	0xb
	.byte	0xe
	.long	0x1000
	.byte	0x10
	.uleb128 0xd
	.long	.LASF72
	.byte	0xb
	.byte	0xf
	.long	0xfb4
	.byte	0x18
	.uleb128 0xd
	.long	.LASF73
	.byte	0xb
	.byte	0x10
	.long	0xfc6
	.byte	0x20
	.uleb128 0xd
	.long	.LASF74
	.byte	0xb
	.byte	0x11
	.long	0xf8b
	.byte	0x28
	.uleb128 0xd
	.long	.LASF75
	.byte	0xb
	.byte	0x12
	.long	0xfc0
	.byte	0x30
	.uleb128 0xd
	.long	.LASF76
	.byte	0xb
	.byte	0x13
	.long	0xfb4
	.byte	0x38
	.uleb128 0xd
	.long	.LASF77
	.byte	0xb
	.byte	0x14
	.long	0xe2b
	.byte	0x40
	.uleb128 0xd
	.long	.LASF78
	.byte	0xb
	.byte	0x15
	.long	0xe2b
	.byte	0x44
	.uleb128 0xd
	.long	.LASF79
	.byte	0xb
	.byte	0x16
	.long	0xe36
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
	.long	0xf67
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x4b
	.long	0xe2b
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x4c
	.long	0xe2b
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
	.long	0xf7f
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x9
	.byte	0x63
	.long	0xe2b
	.byte	0x8
	.uleb128 0xd
	.long	.LASF49
	.byte	0x9
	.byte	0x64
	.long	0xe2b
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
	.long	0xf85
	.byte	0
	.uleb128 0xd
	.long	.LASF84
	.byte	0xc
	.byte	0x1c
	.long	0x1144
	.byte	0x8
	.uleb128 0xd
	.long	.LASF85
	.byte	0xc
	.byte	0x1d
	.long	0xe15
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
	.long	0xe0b
	.byte	0x13
	.uleb128 0xd
	.long	.LASF88
	.byte	0xc
	.byte	0x20
	.long	0xe53
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
	.long	0xe20
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
	.long	0xf85
	.byte	0x28
	.uleb128 0xf
	.long	.LASF103
	.byte	0x9
	.value	0x11d
	.long	0xf8b
	.byte	0x30
	.byte	0
	.uleb128 0xb
	.long	.LASF104
	.byte	0x6
	.value	0x7fc
	.long	0x82c
	.uleb128 0x10
	.long	.LASF105
	.byte	0x58
	.byte	0x9
	.value	0x120
	.long	0x8c9
	.uleb128 0xf
	.long	.LASF91
	.byte	0x9
	.value	0x121
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF92
	.byte	0x9
	.value	0x122
	.long	0xed
	.byte	0x8
	.uleb128 0xf
	.long	.LASF93
	.byte	0x9
	.value	0x123
	.long	0xed
	.byte	0x10
	.uleb128 0xf
	.long	.LASF96
	.byte	0x9
	.value	0x124
	.long	0xc5
	.byte	0x18
	.uleb128 0xf
	.long	.LASF99
	.byte	0x9
	.value	0x125
	.long	0xdb
	.byte	0x20
	.uleb128 0xf
	.long	.LASF102
	.byte	0x9
	.value	0x126
	.long	0xf85
	.byte	0x28
	.uleb128 0xf
	.long	.LASF103
	.byte	0x9
	.value	0x127
	.long	0xf8b
	.byte	0x30
	.uleb128 0xf
	.long	.LASF106
	.byte	0x9
	.value	0x129
	.long	0xed
	.byte	0x38
	.uleb128 0xf
	.long	.LASF107
	.byte	0x9
	.value	0x12a
	.long	0xed
	.byte	0x40
	.uleb128 0xf
	.long	.LASF108
	.byte	0x9
	.value	0x12b
	.long	0xe53
	.byte	0x48
	.uleb128 0xf
	.long	.LASF109
	.byte	0x9
	.value	0x12c
	.long	0x7f
	.byte	0x50
	.byte	0
	.uleb128 0xb
	.long	.LASF110
	.byte	0x6
	.value	0x7fd
	.long	0x8d5
	.uleb128 0xe
	.long	.LASF111
	.byte	0x50
	.byte	0xd
	.byte	0xb
	.long	0x95a
	.uleb128 0xd
	.long	.LASF112
	.byte	0xd
	.byte	0xc
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF113
	.byte	0xd
	.byte	0xd
	.long	0x86
	.byte	0x8
	.uleb128 0xd
	.long	.LASF114
	.byte	0xd
	.byte	0xe
	.long	0x86
	.byte	0x10
	.uleb128 0xd
	.long	.LASF115
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
	.long	0xf85
	.byte	0x28
	.uleb128 0xd
	.long	.LASF103
	.byte	0xd
	.byte	0x12
	.long	0xf8b
	.byte	0x30
	.uleb128 0xd
	.long	.LASF116
	.byte	0xd
	.byte	0x14
	.long	0x1039
	.byte	0x38
	.uleb128 0xd
	.long	.LASF117
	.byte	0xd
	.byte	0x15
	.long	0xe53
	.byte	0x40
	.uleb128 0xd
	.long	.LASF118
	.byte	0xd
	.byte	0x16
	.long	0xe0b
	.byte	0x48
	.byte	0
	.uleb128 0xb
	.long	.LASF119
	.byte	0x6
	.value	0x7fe
	.long	0x966
	.uleb128 0xe
	.long	.LASF120
	.byte	0x58
	.byte	0xe
	.byte	0x22
	.long	0x9f7
	.uleb128 0xd
	.long	.LASF121
	.byte	0xe
	.byte	0x23
	.long	0x79
	.byte	0
	.uleb128 0xd
	.long	.LASF122
	.byte	0xe
	.byte	0x24
	.long	0xed
	.byte	0x8
	.uleb128 0xd
	.long	.LASF123
	.byte	0xe
	.byte	0x25
	.long	0xed
	.byte	0x10
	.uleb128 0xd
	.long	.LASF124
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
	.long	0xf85
	.byte	0x28
	.uleb128 0xd
	.long	.LASF103
	.byte	0xe
	.byte	0x2a
	.long	0xf8b
	.byte	0x30
	.uleb128 0xd
	.long	.LASF125
	.byte	0xe
	.byte	0x2c
	.long	0xe20
	.byte	0x38
	.uleb128 0xd
	.long	.LASF126
	.byte	0xe
	.byte	0x2d
	.long	0x10bb
	.byte	0x40
	.uleb128 0xd
	.long	.LASF127
	.byte	0xe
	.byte	0x2e
	.long	0x102d
	.byte	0x48
	.uleb128 0xd
	.long	.LASF128
	.byte	0xe
	.byte	0x2f
	.long	0x79
	.byte	0x50
	.byte	0
	.uleb128 0xb
	.long	.LASF129
	.byte	0x6
	.value	0x7ff
	.long	0xa03
	.uleb128 0x10
	.long	.LASF130
	.byte	0x60
	.byte	0x9
	.value	0x130
	.long	0xaad
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
	.long	0xf85
	.byte	0x28
	.uleb128 0xf
	.long	.LASF103
	.byte	0x9
	.value	0x137
	.long	0xf8b
	.byte	0x30
	.uleb128 0xf
	.long	.LASF131
	.byte	0x9
	.value	0x139
	.long	0xf91
	.byte	0x38
	.uleb128 0xf
	.long	.LASF132
	.byte	0x9
	.value	0x13a
	.long	0x79
	.byte	0x40
	.uleb128 0xf
	.long	.LASF133
	.byte	0x9
	.value	0x13b
	.long	0xed
	.byte	0x48
	.uleb128 0xf
	.long	.LASF134
	.byte	0x9
	.value	0x13c
	.long	0xf8b
	.byte	0x50
	.uleb128 0xf
	.long	.LASF135
	.byte	0x9
	.value	0x13d
	.long	0xe0b
	.byte	0x58
	.byte	0
	.uleb128 0xb
	.long	.LASF136
	.byte	0x6
	.value	0x800
	.long	0xab9
	.uleb128 0xe
	.long	.LASF137
	.byte	0x90
	.byte	0xf
	.byte	0xe
	.long	0xbaa
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
	.long	.LASF115
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
	.long	0xf85
	.byte	0x28
	.uleb128 0xd
	.long	.LASF103
	.byte	0xf
	.byte	0x15
	.long	0xf8b
	.byte	0x30
	.uleb128 0xd
	.long	.LASF138
	.byte	0xf
	.byte	0x17
	.long	0xf8b
	.byte	0x38
	.uleb128 0xd
	.long	.LASF139
	.byte	0xf
	.byte	0x18
	.long	0xfa3
	.byte	0x40
	.uleb128 0xd
	.long	.LASF140
	.byte	0xf
	.byte	0x19
	.long	0xfa3
	.byte	0x48
	.uleb128 0xd
	.long	.LASF141
	.byte	0xf
	.byte	0x1a
	.long	0xfba
	.byte	0x50
	.uleb128 0xd
	.long	.LASF142
	.byte	0xf
	.byte	0x1b
	.long	0xd5c
	.byte	0x58
	.uleb128 0xd
	.long	.LASF143
	.byte	0xf
	.byte	0x1c
	.long	0xfc0
	.byte	0x60
	.uleb128 0xd
	.long	.LASF144
	.byte	0xf
	.byte	0x1d
	.long	0x79
	.byte	0x68
	.uleb128 0xd
	.long	.LASF145
	.byte	0xf
	.byte	0x1e
	.long	0x5e
	.byte	0x70
	.uleb128 0xd
	.long	.LASF146
	.byte	0xf
	.byte	0x1f
	.long	0x101c
	.byte	0x78
	.uleb128 0xd
	.long	.LASF147
	.byte	0xf
	.byte	0x20
	.long	0xfb4
	.byte	0x80
	.uleb128 0xd
	.long	.LASF148
	.byte	0xf
	.byte	0x25
	.long	0xf97
	.byte	0x88
	.uleb128 0xd
	.long	.LASF149
	.byte	0xf
	.byte	0x26
	.long	0xe2b
	.byte	0x8c
	.byte	0
	.uleb128 0xb
	.long	.LASF150
	.byte	0x6
	.value	0x803
	.long	0xbb6
	.uleb128 0x10
	.long	.LASF151
	.byte	0xa8
	.byte	0x9
	.value	0x170
	.long	0xcef
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
	.long	0xf85
	.byte	0x28
	.uleb128 0xf
	.long	.LASF103
	.byte	0x9
	.value	0x177
	.long	0xf8b
	.byte	0x30
	.uleb128 0xf
	.long	.LASF152
	.byte	0x9
	.value	0x179
	.long	0xff4
	.byte	0x38
	.uleb128 0xf
	.long	.LASF153
	.byte	0x9
	.value	0x17a
	.long	0xff4
	.byte	0x40
	.uleb128 0xf
	.long	.LASF154
	.byte	0x9
	.value	0x187
	.long	0xfcc
	.byte	0x48
	.uleb128 0xf
	.long	.LASF155
	.byte	0x9
	.value	0x188
	.long	0xc5
	.byte	0x50
	.uleb128 0xf
	.long	.LASF156
	.byte	0x9
	.value	0x189
	.long	0xc5
	.byte	0x58
	.uleb128 0xf
	.long	.LASF157
	.byte	0x9
	.value	0x18a
	.long	0xc5
	.byte	0x60
	.uleb128 0xf
	.long	.LASF158
	.byte	0x9
	.value	0x18b
	.long	0xc5
	.byte	0x68
	.uleb128 0xf
	.long	.LASF159
	.byte	0x9
	.value	0x18c
	.long	0x79
	.byte	0x70
	.uleb128 0xf
	.long	.LASF160
	.byte	0x9
	.value	0x18d
	.long	0xfc0
	.byte	0x78
	.uleb128 0xf
	.long	.LASF161
	.byte	0x9
	.value	0x18e
	.long	0x79
	.byte	0x80
	.uleb128 0xf
	.long	.LASF162
	.byte	0x9
	.value	0x18f
	.long	0xfc0
	.byte	0x88
	.uleb128 0xf
	.long	.LASF163
	.byte	0x9
	.value	0x190
	.long	0x79
	.byte	0x90
	.uleb128 0xf
	.long	.LASF164
	.byte	0x9
	.value	0x191
	.long	0xfc0
	.byte	0x98
	.uleb128 0xf
	.long	.LASF165
	.byte	0x9
	.value	0x192
	.long	0x50
	.byte	0xa0
	.uleb128 0xf
	.long	.LASF166
	.byte	0x9
	.value	0x193
	.long	0x7f
	.byte	0xa2
	.uleb128 0xf
	.long	.LASF167
	.byte	0x9
	.value	0x194
	.long	0x7f
	.byte	0xa3
	.byte	0
	.uleb128 0xb
	.long	.LASF168
	.byte	0x6
	.value	0x804
	.long	0xcfb
	.uleb128 0xe
	.long	.LASF169
	.byte	0x38
	.byte	0xc
	.byte	0xe
	.long	0xd5c
	.uleb128 0xd
	.long	.LASF170
	.byte	0xc
	.byte	0xf
	.long	0x10db
	.byte	0
	.uleb128 0xd
	.long	.LASF171
	.byte	0xc
	.byte	0x10
	.long	0x10db
	.byte	0x8
	.uleb128 0xd
	.long	.LASF172
	.byte	0xc
	.byte	0x11
	.long	0x10f5
	.byte	0x10
	.uleb128 0xd
	.long	.LASF173
	.byte	0xc
	.byte	0x12
	.long	0x10db
	.byte	0x18
	.uleb128 0xd
	.long	.LASF174
	.byte	0xc
	.byte	0x13
	.long	0x10db
	.byte	0x20
	.uleb128 0xd
	.long	.LASF175
	.byte	0xc
	.byte	0x14
	.long	0x111e
	.byte	0x28
	.uleb128 0xd
	.long	.LASF176
	.byte	0xc
	.byte	0x16
	.long	0x113e
	.byte	0x30
	.byte	0
	.uleb128 0xa
	.string	"ANY"
	.byte	0x6
	.value	0x805
	.long	0xd68
	.uleb128 0x11
	.string	"any"
	.byte	0x8
	.byte	0x6
	.value	0x9f1
	.long	0xdca
	.uleb128 0x12
	.long	.LASF177
	.byte	0x6
	.value	0x9f2
	.long	0x6c
	.uleb128 0x12
	.long	.LASF178
	.byte	0x6
	.value	0x9f3
	.long	0xe20
	.uleb128 0x12
	.long	.LASF179
	.byte	0x6
	.value	0x9f4
	.long	0xc5
	.uleb128 0x12
	.long	.LASF180
	.byte	0x6
	.value	0x9f5
	.long	0x5e
	.uleb128 0x12
	.long	.LASF181
	.byte	0x6
	.value	0x9f6
	.long	0x7f
	.uleb128 0x12
	.long	.LASF182
	.byte	0x6
	.value	0x9f7
	.long	0xe4d
	.uleb128 0x12
	.long	.LASF183
	.byte	0x6
	.value	0x9f8
	.long	0xe4d
	.byte	0
	.uleb128 0xb
	.long	.LASF184
	.byte	0x6
	.value	0x808
	.long	0xdd6
	.uleb128 0x10
	.long	.LASF185
	.byte	0x18
	.byte	0x9
	.value	0x4ed
	.long	0xe0b
	.uleb128 0xf
	.long	.LASF186
	.byte	0x9
	.value	0x4ee
	.long	0xfc6
	.byte	0
	.uleb128 0xf
	.long	.LASF187
	.byte	0x9
	.value	0x4ef
	.long	0xd0
	.byte	0x8
	.uleb128 0xf
	.long	.LASF188
	.byte	0x9
	.value	0x4f0
	.long	0xffa
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
	.long	.LASF189
	.byte	0x10
	.value	0x209
	.long	0xe2b
	.uleb128 0x13
	.long	0xe4d
	.uleb128 0x14
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xe42
	.uleb128 0x6
	.byte	0x8
	.long	0x36a
	.uleb128 0x15
	.long	0x7f
	.long	0xe69
	.uleb128 0x16
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF190
	.byte	0x11
	.byte	0x63
	.long	0xe74
	.uleb128 0x9
	.long	.LASF192
	.uleb128 0x5
	.long	.LASF193
	.byte	0x11
	.byte	0x65
	.long	0xe84
	.uleb128 0x6
	.byte	0x8
	.long	0xe69
	.uleb128 0xe
	.long	.LASF194
	.byte	0x4
	.byte	0xa
	.byte	0x13
	.long	0xebb
	.uleb128 0xd
	.long	.LASF187
	.byte	0xa
	.byte	0x14
	.long	0xe0b
	.byte	0
	.uleb128 0xd
	.long	.LASF195
	.byte	0xa
	.byte	0x15
	.long	0xe0b
	.byte	0x1
	.uleb128 0xd
	.long	.LASF196
	.byte	0xa
	.byte	0x16
	.long	0xe15
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF194
	.byte	0xa
	.byte	0x19
	.long	0xe8a
	.uleb128 0x6
	.byte	0x8
	.long	0xe20
	.uleb128 0x6
	.byte	0x8
	.long	0xebb
	.uleb128 0x9
	.long	.LASF197
	.uleb128 0x6
	.byte	0x8
	.long	0xed2
	.uleb128 0x9
	.long	.LASF198
	.uleb128 0x6
	.byte	0x8
	.long	0xedd
	.uleb128 0x6
	.byte	0x8
	.long	0xe2b
	.uleb128 0x15
	.long	0xebb
	.long	0xefe
	.uleb128 0x16
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.byte	0x9
	.byte	0x2e
	.long	0xf67
	.uleb128 0x18
	.long	.LASF199
	.sleb128 0
	.uleb128 0x18
	.long	.LASF200
	.sleb128 1
	.uleb128 0x18
	.long	.LASF201
	.sleb128 2
	.uleb128 0x18
	.long	.LASF202
	.sleb128 3
	.uleb128 0x18
	.long	.LASF203
	.sleb128 4
	.uleb128 0x18
	.long	.LASF204
	.sleb128 5
	.uleb128 0x18
	.long	.LASF205
	.sleb128 6
	.uleb128 0x18
	.long	.LASF206
	.sleb128 7
	.uleb128 0x18
	.long	.LASF207
	.sleb128 8
	.uleb128 0x18
	.long	.LASF208
	.sleb128 9
	.uleb128 0x18
	.long	.LASF209
	.sleb128 10
	.uleb128 0x18
	.long	.LASF210
	.sleb128 11
	.uleb128 0x18
	.long	.LASF211
	.sleb128 12
	.uleb128 0x18
	.long	.LASF212
	.sleb128 13
	.uleb128 0x18
	.long	.LASF213
	.sleb128 14
	.uleb128 0x18
	.long	.LASF214
	.sleb128 15
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9f7
	.uleb128 0x6
	.byte	0x8
	.long	0xaad
	.uleb128 0x6
	.byte	0x8
	.long	0x8c9
	.uleb128 0x6
	.byte	0x8
	.long	0x95a
	.uleb128 0x6
	.byte	0x8
	.long	0xbaa
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
	.long	.LASF215
	.byte	0x9
	.value	0x150
	.long	0xe15
	.uleb128 0x6
	.byte	0x8
	.long	0xf9
	.uleb128 0x13
	.long	0xfb4
	.uleb128 0x14
	.long	0xfb4
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x41b
	.uleb128 0x6
	.byte	0x8
	.long	0xfa9
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
	.long	0xfee
	.uleb128 0x12
	.long	.LASF216
	.byte	0x9
	.value	0x185
	.long	0xfee
	.uleb128 0x12
	.long	.LASF217
	.byte	0x9
	.value	0x186
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb5
	.uleb128 0x6
	.byte	0x8
	.long	0xe79
	.uleb128 0x6
	.byte	0x8
	.long	0x343
	.uleb128 0x6
	.byte	0x8
	.long	0x61d
	.uleb128 0x5
	.long	.LASF218
	.byte	0x12
	.byte	0x13
	.long	0x3a5
	.uleb128 0x5
	.long	.LASF219
	.byte	0x12
	.byte	0x1d
	.long	0x42
	.uleb128 0x6
	.byte	0x8
	.long	0x1006
	.uleb128 0x1a
	.long	0xfa3
	.uleb128 0x6
	.byte	0x8
	.long	0x1022
	.uleb128 0x6
	.byte	0x8
	.long	0x249
	.uleb128 0x6
	.byte	0x8
	.long	0x456
	.uleb128 0x6
	.byte	0x8
	.long	0xe53
	.uleb128 0x6
	.byte	0x8
	.long	0x170
	.uleb128 0x8
	.string	"HE"
	.byte	0xe
	.byte	0xc
	.long	0x104f
	.uleb128 0xc
	.string	"he"
	.byte	0x18
	.byte	0xe
	.byte	0x10
	.long	0x107f
	.uleb128 0xd
	.long	.LASF220
	.byte	0xe
	.byte	0x11
	.long	0x10bb
	.byte	0
	.uleb128 0xd
	.long	.LASF221
	.byte	0xe
	.byte	0x12
	.long	0x10c1
	.byte	0x8
	.uleb128 0xd
	.long	.LASF222
	.byte	0xe
	.byte	0x13
	.long	0xe53
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.string	"HEK"
	.byte	0xe
	.byte	0xd
	.long	0x108a
	.uleb128 0xc
	.string	"hek"
	.byte	0xc
	.byte	0xe
	.byte	0x17
	.long	0x10bb
	.uleb128 0xd
	.long	.LASF223
	.byte	0xe
	.byte	0x18
	.long	0xe2b
	.byte	0
	.uleb128 0xd
	.long	.LASF224
	.byte	0xe
	.byte	0x19
	.long	0xe20
	.byte	0x4
	.uleb128 0xd
	.long	.LASF225
	.byte	0xe
	.byte	0x1a
	.long	0xe59
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1045
	.uleb128 0x6
	.byte	0x8
	.long	0x107f
	.uleb128 0x1b
	.long	0x57
	.long	0x10db
	.uleb128 0x14
	.long	0xe53
	.uleb128 0x14
	.long	0xf85
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x10c7
	.uleb128 0x1b
	.long	0xe2b
	.long	0x10f5
	.uleb128 0x14
	.long	0xe53
	.uleb128 0x14
	.long	0xf85
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x10e1
	.uleb128 0x1b
	.long	0x57
	.long	0x111e
	.uleb128 0x14
	.long	0xe53
	.uleb128 0x14
	.long	0xf85
	.uleb128 0x14
	.long	0xe53
	.uleb128 0x14
	.long	0xaa
	.uleb128 0x14
	.long	0x57
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x10fb
	.uleb128 0x1b
	.long	0x57
	.long	0x1138
	.uleb128 0x14
	.long	0xf85
	.uleb128 0x14
	.long	0x1138
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xdca
	.uleb128 0x6
	.byte	0x8
	.long	0x1124
	.uleb128 0x6
	.byte	0x8
	.long	0xcef
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF226
	.uleb128 0x1c
	.long	.LASF230
	.byte	0x1
	.byte	0x25
	.long	0x10bb
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1180
	.uleb128 0x1d
	.string	"he"
	.byte	0x1
	.byte	0x27
	.long	0x10bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1e
	.long	.LASF227
	.byte	0x1
	.byte	0x32
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x11aa
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.byte	0x32
	.long	0x10bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x20
	.long	.LASF228
	.byte	0x1
	.byte	0x3b
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x11ef
	.uleb128 0x1d
	.string	"he"
	.byte	0x1
	.byte	0x3d
	.long	0x10bb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.long	.LASF229
	.byte	0x1
	.byte	0x3e
	.long	0x10bb
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1d
	.string	"ptr"
	.byte	0x1
	.byte	0x3f
	.long	0x11ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x6c6
	.uleb128 0x1c
	.long	.LASF231
	.byte	0x1
	.byte	0x5b
	.long	0x10c1
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1277
	.uleb128 0x1f
	.string	"str"
	.byte	0x1
	.byte	0x5b
	.long	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.string	"len"
	.byte	0x1
	.byte	0x5b
	.long	0xe20
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x22
	.long	.LASF232
	.byte	0x1
	.byte	0x5b
	.long	0xe2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.long	.LASF187
	.byte	0x1
	.byte	0x5b
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x21
	.long	.LASF233
	.byte	0x1
	.byte	0x5d
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1d
	.string	"k"
	.byte	0x1
	.byte	0x5e
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.string	"hek"
	.byte	0x1
	.byte	0x5f
	.long	0x10c1
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x23
	.long	.LASF280
	.byte	0x1
	.byte	0x72
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x12b0
	.uleb128 0x1d
	.string	"ohe"
	.byte	0x1
	.byte	0x74
	.long	0x10bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.string	"he"
	.byte	0x1
	.byte	0x75
	.long	0x10bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x20
	.long	.LASF234
	.byte	0x1
	.byte	0xa3
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x1321
	.uleb128 0x22
	.long	.LASF187
	.byte	0x1
	.byte	0xa3
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.string	"key"
	.byte	0x1
	.byte	0xa3
	.long	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.long	.LASF235
	.byte	0x1
	.byte	0xa3
	.long	0xe20
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.string	"msg"
	.byte	0x1
	.byte	0xa4
	.long	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.string	"sv"
	.byte	0x1
	.byte	0xa6
	.long	0xe53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.string	"esv"
	.byte	0x1
	.byte	0xa6
	.long	0xe53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.long	.LASF237
	.byte	0x1
	.byte	0xd9
	.long	0x1039
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x13b5
	.uleb128 0x1f
	.string	"hv"
	.byte	0x1
	.byte	0xd9
	.long	0xf8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.string	"key"
	.byte	0x1
	.byte	0xd9
	.long	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.long	.LASF236
	.byte	0x1
	.byte	0xd9
	.long	0xe20
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1f
	.string	"val"
	.byte	0x1
	.byte	0xd9
	.long	0xe53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x22
	.long	.LASF232
	.byte	0x1
	.byte	0xd9
	.long	0xe2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1d
	.string	"hek"
	.byte	0x1
	.byte	0xdb
	.long	0x10bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.long	.LASF235
	.byte	0x1
	.byte	0xdc
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.long	.LASF187
	.byte	0x1
	.byte	0xdd
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x24
	.long	.LASF238
	.byte	0x1
	.byte	0xec
	.long	0x1039
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x1437
	.uleb128 0x1f
	.string	"hv"
	.byte	0x1
	.byte	0xec
	.long	0xf8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.string	"key"
	.byte	0x1
	.byte	0xec
	.long	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.long	.LASF235
	.byte	0x1
	.byte	0xec
	.long	0xe20
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1f
	.string	"val"
	.byte	0x1
	.byte	0xec
	.long	0xe53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.long	.LASF232
	.byte	0x1
	.byte	0xed
	.long	0xe2b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x22
	.long	.LASF187
	.byte	0x1
	.byte	0xed
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.string	"hek"
	.byte	0x1
	.byte	0xef
	.long	0x10bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF239
	.byte	0x1
	.value	0x112
	.long	0x10bb
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x1495
	.uleb128 0x26
	.string	"hv"
	.byte	0x1
	.value	0x112
	.long	0xf8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LASF240
	.byte	0x1
	.value	0x112
	.long	0xe53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.string	"val"
	.byte	0x1
	.value	0x112
	.long	0xe53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF232
	.byte	0x1
	.value	0x112
	.long	0xe2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x25
	.long	.LASF241
	.byte	0x1
	.value	0x121
	.long	0x7f
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x1502
	.uleb128 0x26
	.string	"hv"
	.byte	0x1
	.value	0x121
	.long	0xf8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"key"
	.byte	0x1
	.value	0x121
	.long	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF236
	.byte	0x1
	.value	0x121
	.long	0xe20
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.long	.LASF235
	.byte	0x1
	.value	0x123
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF187
	.byte	0x1
	.value	0x124
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x25
	.long	.LASF242
	.byte	0x1
	.value	0x140
	.long	0x1039
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x158f
	.uleb128 0x26
	.string	"hv"
	.byte	0x1
	.value	0x140
	.long	0xf8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.string	"key"
	.byte	0x1
	.value	0x140
	.long	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.long	.LASF236
	.byte	0x1
	.value	0x140
	.long	0xe20
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x27
	.long	.LASF243
	.byte	0x1
	.value	0x140
	.long	0xe20
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.string	"hek"
	.byte	0x1
	.value	0x142
	.long	0x10bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF235
	.byte	0x1
	.value	0x143
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF187
	.byte	0x1
	.value	0x144
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x25
	.long	.LASF244
	.byte	0x1
	.value	0x15e
	.long	0x7f
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x15de
	.uleb128 0x26
	.string	"hv"
	.byte	0x1
	.value	0x15e
	.long	0xf8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LASF240
	.byte	0x1
	.value	0x15e
	.long	0xe53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	.LASF232
	.byte	0x1
	.value	0x15e
	.long	0xe2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x25
	.long	.LASF245
	.byte	0x1
	.value	0x178
	.long	0x10bb
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x163b
	.uleb128 0x26
	.string	"hv"
	.byte	0x1
	.value	0x178
	.long	0xf8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LASF240
	.byte	0x1
	.value	0x178
	.long	0xe53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	.LASF243
	.byte	0x1
	.value	0x178
	.long	0xe20
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.long	.LASF232
	.byte	0x1
	.value	0x178
	.long	0xe2b
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x2a
	.long	.LASF246
	.byte	0x1
	.value	0x17f
	.long	0x10bb
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x18cd
	.uleb128 0x26
	.string	"hv"
	.byte	0x1
	.value	0x17f
	.long	0xf8b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x27
	.long	.LASF240
	.byte	0x1
	.value	0x17f
	.long	0xe53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x26
	.string	"key"
	.byte	0x1
	.value	0x17f
	.long	0xaa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x27
	.long	.LASF235
	.byte	0x1
	.value	0x17f
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x27
	.long	.LASF187
	.byte	0x1
	.value	0x180
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x27
	.long	.LASF247
	.byte	0x1
	.value	0x180
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x26
	.string	"val"
	.byte	0x1
	.value	0x180
	.long	0xe53
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF232
	.byte	0x1
	.value	0x180
	.long	0xe2b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.string	"xhv"
	.byte	0x1
	.value	0x182
	.long	0xf79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x28
	.long	.LASF248
	.byte	0x1
	.value	0x183
	.long	0xe2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x28
	.long	.LASF249
	.byte	0x1
	.value	0x184
	.long	0x10bb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x28
	.long	.LASF250
	.byte	0x1
	.value	0x185
	.long	0x18cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"sv"
	.byte	0x1
	.value	0x186
	.long	0xe53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.long	.LASF251
	.byte	0x1
	.value	0x187
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x28
	.long	.LASF252
	.byte	0x1
	.value	0x188
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2b
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x176b
	.uleb128 0x29
	.string	"k"
	.byte	0x1
	.value	0x1b0
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x2b
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x1791
	.uleb128 0x28
	.long	.LASF253
	.byte	0x1
	.value	0x1e4
	.long	0xe53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x2b
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x17e9
	.uleb128 0x28
	.long	.LASF254
	.byte	0x1
	.value	0x210
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -123
	.uleb128 0x28
	.long	.LASF255
	.byte	0x1
	.value	0x211
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -122
	.uleb128 0x2c
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x28
	.long	.LASF256
	.byte	0x1
	.value	0x214
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -121
	.byte	0
	.byte	0
	.uleb128 0x2b
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x180f
	.uleb128 0x28
	.long	.LASF257
	.byte	0x1
	.value	0x256
	.long	0xaa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x2b
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0x185d
	.uleb128 0x28
	.long	.LASF258
	.byte	0x1
	.value	0x264
	.long	0xaa
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.long	.LASF259
	.byte	0x1
	.value	0x264
	.long	0x18d3
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x28
	.long	.LASF260
	.byte	0x1
	.value	0x264
	.long	0xe20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x28
	.long	.LASF261
	.byte	0x1
	.value	0x264
	.long	0xe2b
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x2b
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x18ab
	.uleb128 0x28
	.long	.LASF258
	.byte	0x1
	.value	0x273
	.long	0xaa
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.long	.LASF259
	.byte	0x1
	.value	0x273
	.long	0x18d3
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x28
	.long	.LASF260
	.byte	0x1
	.value	0x273
	.long	0xe20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x28
	.long	.LASF261
	.byte	0x1
	.value	0x273
	.long	0xe2b
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x2c
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x28
	.long	.LASF262
	.byte	0x1
	.value	0x298
	.long	0x10c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x10bb
	.uleb128 0x6
	.byte	0x8
	.long	0x18d9
	.uleb128 0x7
	.long	0x2d
	.uleb128 0x2d
	.long	.LASF263
	.byte	0x1
	.value	0x31d
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x1937
	.uleb128 0x26
	.string	"hv"
	.byte	0x1
	.value	0x31d
	.long	0xf8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF254
	.byte	0x1
	.value	0x31d
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF255
	.byte	0x1
	.value	0x31d
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"mg"
	.byte	0x1
	.value	0x31f
	.long	0xf85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF264
	.byte	0x1
	.value	0x338
	.long	0xe53
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x1984
	.uleb128 0x26
	.string	"hv"
	.byte	0x1
	.value	0x338
	.long	0xf8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"mg"
	.byte	0x1
	.value	0x33a
	.long	0xf85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"sv"
	.byte	0x1
	.value	0x33b
	.long	0xe53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF265
	.byte	0x1
	.value	0x358
	.long	0xe53
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a00
	.uleb128 0x26
	.string	"hv"
	.byte	0x1
	.value	0x358
	.long	0xf8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"key"
	.byte	0x1
	.value	0x358
	.long	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF236
	.byte	0x1
	.value	0x358
	.long	0xe20
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x27
	.long	.LASF187
	.byte	0x1
	.value	0x358
	.long	0xe20
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF235
	.byte	0x1
	.value	0x35a
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF266
	.byte	0x1
	.value	0x35b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x25
	.long	.LASF267
	.byte	0x1
	.value	0x372
	.long	0xe53
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a5e
	.uleb128 0x26
	.string	"hv"
	.byte	0x1
	.value	0x372
	.long	0xf8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LASF240
	.byte	0x1
	.value	0x372
	.long	0xe53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	.LASF187
	.byte	0x1
	.value	0x372
	.long	0xe20
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.long	.LASF232
	.byte	0x1
	.value	0x372
	.long	0xe2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2a
	.long	.LASF268
	.byte	0x1
	.value	0x378
	.long	0xe53
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c46
	.uleb128 0x26
	.string	"hv"
	.byte	0x1
	.value	0x378
	.long	0xf8b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.long	.LASF240
	.byte	0x1
	.value	0x378
	.long	0xe53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.string	"key"
	.byte	0x1
	.value	0x378
	.long	0xaa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x27
	.long	.LASF235
	.byte	0x1
	.value	0x378
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x27
	.long	.LASF266
	.byte	0x1
	.value	0x379
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x27
	.long	.LASF269
	.byte	0x1
	.value	0x379
	.long	0xe20
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x27
	.long	.LASF232
	.byte	0x1
	.value	0x379
	.long	0xe2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"xhv"
	.byte	0x1
	.value	0x37b
	.long	0xf79
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x37c
	.long	0xe20
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x28
	.long	.LASF249
	.byte	0x1
	.value	0x37d
	.long	0x10bb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.long	.LASF250
	.byte	0x1
	.value	0x37e
	.long	0x18cd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x29
	.string	"sv"
	.byte	0x1
	.value	0x37f
	.long	0xe53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF251
	.byte	0x1
	.value	0x380
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -71
	.uleb128 0x28
	.long	.LASF252
	.byte	0x1
	.value	0x381
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x1b88
	.uleb128 0x28
	.long	.LASF254
	.byte	0x1
	.value	0x391
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -70
	.uleb128 0x28
	.long	.LASF255
	.byte	0x1
	.value	0x392
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -69
	.byte	0
	.uleb128 0x2b
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0x1bad
	.uleb128 0x28
	.long	.LASF257
	.byte	0x1
	.value	0x3bb
	.long	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x2b
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0x1bfb
	.uleb128 0x28
	.long	.LASF258
	.byte	0x1
	.value	0x3ce
	.long	0xaa
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.long	.LASF259
	.byte	0x1
	.value	0x3ce
	.long	0x18d3
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x28
	.long	.LASF260
	.byte	0x1
	.value	0x3ce
	.long	0xe20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x28
	.long	.LASF261
	.byte	0x1
	.value	0x3ce
	.long	0xe2b
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x2c
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x28
	.long	.LASF258
	.byte	0x1
	.value	0x3d7
	.long	0xaa
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.long	.LASF259
	.byte	0x1
	.value	0x3d7
	.long	0x18d3
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x28
	.long	.LASF260
	.byte	0x1
	.value	0x3d7
	.long	0xe20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x28
	.long	.LASF261
	.byte	0x1
	.value	0x3d7
	.long	0xe2b
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF270
	.byte	0x1
	.value	0x427
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e1a
	.uleb128 0x26
	.string	"hv"
	.byte	0x1
	.value	0x427
	.long	0xf8b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x29
	.string	"xhv"
	.byte	0x1
	.value	0x429
	.long	0xf79
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x28
	.long	.LASF271
	.byte	0x1
	.value	0x42a
	.long	0xe20
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x28
	.long	.LASF272
	.byte	0x1
	.value	0x42b
	.long	0xe20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.value	0x42c
	.long	0xe20
	.uleb128 0x2f
	.string	"a"
	.byte	0x1
	.value	0x42d
	.long	0x79
	.uleb128 0x29
	.string	"aep"
	.byte	0x1
	.value	0x42e
	.long	0x18cd
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x29
	.string	"bep"
	.byte	0x1
	.value	0x42f
	.long	0x18cd
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x28
	.long	.LASF249
	.byte	0x1
	.value	0x430
	.long	0x10bb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.long	.LASF250
	.byte	0x1
	.value	0x431
	.long	0x18cd
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x28
	.long	.LASF273
	.byte	0x1
	.value	0x432
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x28
	.long	.LASF274
	.byte	0x1
	.value	0x433
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2b
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.long	0x1d41
	.uleb128 0x28
	.long	.LASF275
	.byte	0x1
	.value	0x44f
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.long	.LASF276
	.byte	0x1
	.value	0x44f
	.long	0xe2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x2b
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.long	0x1d77
	.uleb128 0x28
	.long	.LASF277
	.byte	0x1
	.value	0x45d
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x28
	.long	.LASF278
	.byte	0x1
	.value	0x45e
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x2c
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x28
	.long	.LASF279
	.byte	0x1
	.value	0x49d
	.long	0x10bb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.long	.LASF232
	.byte	0x1
	.value	0x49e
	.long	0xd0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.long	0x1df6
	.uleb128 0x28
	.long	.LASF258
	.byte	0x1
	.value	0x4a1
	.long	0xaa
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x28
	.long	.LASF259
	.byte	0x1
	.value	0x4a1
	.long	0x18d3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x28
	.long	.LASF260
	.byte	0x1
	.value	0x4a1
	.long	0xe20
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x28
	.long	.LASF261
	.byte	0x1
	.value	0x4a1
	.long	0xe2b
	.uleb128 0x1
	.byte	0x5e
	.byte	0
	.uleb128 0x2c
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x28
	.long	.LASF262
	.byte	0x1
	.value	0x4a5
	.long	0x10c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF281
	.byte	0x1
	.value	0x4c1
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f04
	.uleb128 0x26
	.string	"hv"
	.byte	0x1
	.value	0x4c1
	.long	0xf8b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.long	.LASF282
	.byte	0x1
	.value	0x4c1
	.long	0xc5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.string	"xhv"
	.byte	0x1
	.value	0x4c3
	.long	0xf79
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x28
	.long	.LASF271
	.byte	0x1
	.value	0x4c4
	.long	0xe20
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.long	.LASF272
	.byte	0x1
	.value	0x4c5
	.long	0xe20
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x4c6
	.long	0xe20
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0x4c7
	.long	0xe20
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x29
	.string	"a"
	.byte	0x1
	.value	0x4c8
	.long	0x79
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x29
	.string	"aep"
	.byte	0x1
	.value	0x4c9
	.long	0x18cd
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x28
	.long	.LASF249
	.byte	0x1
	.value	0x4ca
	.long	0x10bb
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x28
	.long	.LASF250
	.byte	0x1
	.value	0x4cb
	.long	0x18cd
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2c
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x28
	.long	.LASF275
	.byte	0x1
	.value	0x4e9
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF276
	.byte	0x1
	.value	0x4e9
	.long	0xe2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF283
	.byte	0x1
	.value	0x518
	.long	0xf8b
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f42
	.uleb128 0x29
	.string	"hv"
	.byte	0x1
	.value	0x51a
	.long	0xf8b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.string	"xhv"
	.byte	0x1
	.value	0x51b
	.long	0xf79
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.uleb128 0x25
	.long	.LASF284
	.byte	0x1
	.value	0x52e
	.long	0xf8b
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x20d8
	.uleb128 0x26
	.string	"ohv"
	.byte	0x1
	.value	0x52e
	.long	0xf8b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x29
	.string	"hv"
	.byte	0x1
	.value	0x530
	.long	0xf8b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x28
	.long	.LASF285
	.byte	0x1
	.value	0x531
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x28
	.long	.LASF286
	.byte	0x1
	.value	0x531
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.long	0x2097
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x539
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x28
	.long	.LASF287
	.byte	0x1
	.value	0x53a
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -157
	.uleb128 0x28
	.long	.LASF288
	.byte	0x1
	.value	0x53b
	.long	0x18cd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.long	.LASF289
	.byte	0x1
	.value	0x53b
	.long	0x18cd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.string	"a"
	.byte	0x1
	.value	0x53c
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x28
	.long	.LASF290
	.byte	0x1
	.value	0x542
	.long	0x10bb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x29
	.string	"ent"
	.byte	0x1
	.value	0x542
	.long	0x10bb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF291
	.byte	0x1
	.value	0x542
	.long	0x10bb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2c
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x28
	.long	.LASF232
	.byte	0x1
	.value	0x54b
	.long	0xe2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x29
	.string	"key"
	.byte	0x1
	.value	0x54c
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.string	"len"
	.byte	0x1
	.value	0x54d
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF187
	.byte	0x1
	.value	0x54e
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x28
	.long	.LASF249
	.byte	0x1
	.value	0x565
	.long	0x10bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF292
	.byte	0x1
	.value	0x566
	.long	0xe20
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x28
	.long	.LASF293
	.byte	0x1
	.value	0x567
	.long	0x10bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF294
	.byte	0x1
	.value	0x57c
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x2122
	.uleb128 0x26
	.string	"hv"
	.byte	0x1
	.value	0x57c
	.long	0xf8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF249
	.byte	0x1
	.value	0x57c
	.long	0x10bb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.string	"val"
	.byte	0x1
	.value	0x57e
	.long	0xe53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x30
	.long	.LASF295
	.byte	0x1
	.value	0x592
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x215d
	.uleb128 0x26
	.string	"hv"
	.byte	0x1
	.value	0x592
	.long	0xf8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF249
	.byte	0x1
	.value	0x592
	.long	0x10bb
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x30
	.long	.LASF296
	.byte	0x1
	.value	0x5ad
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x21f8
	.uleb128 0x26
	.string	"hv"
	.byte	0x1
	.value	0x5ad
	.long	0xf8b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.string	"xhv"
	.byte	0x1
	.value	0x5af
	.long	0xf79
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x31
	.long	.LASF343
	.byte	0x1
	.value	0x5d8
	.quad	.L341
	.uleb128 0x2c
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x5b7
	.long	0xe20
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.long	.LASF249
	.byte	0x1
	.value	0x5b8
	.long	0x10bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x28
	.long	.LASF240
	.byte	0x1
	.value	0x5bf
	.long	0xe53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF297
	.byte	0x1
	.value	0x5eb
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x2280
	.uleb128 0x26
	.string	"hv"
	.byte	0x1
	.value	0x5eb
	.long	0xf8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF298
	.byte	0x1
	.value	0x5ed
	.long	0xe20
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x5ee
	.long	0xe20
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x28
	.long	.LASF299
	.byte	0x1
	.value	0x5f5
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.long	.LASF250
	.byte	0x1
	.value	0x5f6
	.long	0x18cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF249
	.byte	0x1
	.value	0x5f7
	.long	0x10bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF300
	.byte	0x1
	.value	0x61a
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x22f6
	.uleb128 0x26
	.string	"hv"
	.byte	0x1
	.value	0x61a
	.long	0xf8b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF301
	.byte	0x1
	.value	0x61c
	.long	0x18cd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x28
	.long	.LASF249
	.byte	0x1
	.value	0x61d
	.long	0x10bb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.long	.LASF250
	.byte	0x1
	.value	0x61e
	.long	0x10bb
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x28
	.long	.LASF292
	.byte	0x1
	.value	0x61f
	.long	0xe20
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"max"
	.byte	0x1
	.value	0x620
	.long	0xe20
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x30
	.long	.LASF302
	.byte	0x1
	.value	0x64a
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x2331
	.uleb128 0x26
	.string	"hv"
	.byte	0x1
	.value	0x64a
	.long	0xf8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"xhv"
	.byte	0x1
	.value	0x64c
	.long	0xf79
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x25
	.long	.LASF303
	.byte	0x1
	.value	0x670
	.long	0xe20
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x237f
	.uleb128 0x26
	.string	"hv"
	.byte	0x1
	.value	0x670
	.long	0xf8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"xhv"
	.byte	0x1
	.value	0x672
	.long	0xf79
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.long	.LASF249
	.byte	0x1
	.value	0x673
	.long	0x10bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x25
	.long	.LASF304
	.byte	0x1
	.value	0x693
	.long	0x10bb
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x23b0
	.uleb128 0x26
	.string	"hv"
	.byte	0x1
	.value	0x693
	.long	0xf8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF305
	.byte	0x1
	.value	0x6a8
	.long	0x10bb
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x247b
	.uleb128 0x26
	.string	"hv"
	.byte	0x1
	.value	0x6a8
	.long	0xf8b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.long	.LASF187
	.byte	0x1
	.value	0x6a8
	.long	0xe20
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x29
	.string	"xhv"
	.byte	0x1
	.value	0x6aa
	.long	0xf79
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x28
	.long	.LASF249
	.byte	0x1
	.value	0x6ab
	.long	0x10bb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.long	.LASF306
	.byte	0x1
	.value	0x6ac
	.long	0x10bb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.string	"mg"
	.byte	0x1
	.value	0x6ad
	.long	0xf85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x29
	.string	"key"
	.byte	0x1
	.value	0x6b5
	.long	0xe53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x29
	.string	"k"
	.byte	0x1
	.value	0x6bb
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"hek"
	.byte	0x1
	.value	0x6bc
	.long	0x10c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF307
	.byte	0x1
	.value	0x717
	.long	0x79
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x24e9
	.uleb128 0x27
	.long	.LASF249
	.byte	0x1
	.value	0x717
	.long	0x10bb
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x27
	.long	.LASF308
	.byte	0x1
	.value	0x717
	.long	0xec6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x29
	.string	"len"
	.byte	0x1
	.value	0x71a
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"p"
	.byte	0x1
	.value	0x71b
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF309
	.byte	0x1
	.value	0x731
	.long	0xe53
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x2588
	.uleb128 0x27
	.long	.LASF249
	.byte	0x1
	.value	0x731
	.long	0x10bb
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2c
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.uleb128 0x29
	.string	"hek"
	.byte	0x1
	.value	0x734
	.long	0x10c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF187
	.byte	0x1
	.value	0x735
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.string	"sv"
	.byte	0x1
	.value	0x736
	.long	0xe53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.uleb128 0x28
	.long	.LASF310
	.byte	0x1
	.value	0x73c
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF311
	.byte	0x1
	.value	0x73d
	.long	0x2588
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xe0b
	.uleb128 0x25
	.long	.LASF312
	.byte	0x1
	.value	0x760
	.long	0xe53
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x25ed
	.uleb128 0x26
	.string	"hv"
	.byte	0x1
	.value	0x760
	.long	0xf8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF249
	.byte	0x1
	.value	0x760
	.long	0x10bb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2c
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.uleb128 0x29
	.string	"sv"
	.byte	0x1
	.value	0x764
	.long	0xe53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF313
	.byte	0x1
	.value	0x778
	.long	0xe53
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x264a
	.uleb128 0x26
	.string	"hv"
	.byte	0x1
	.value	0x778
	.long	0xf8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"key"
	.byte	0x1
	.value	0x778
	.long	0x264a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF308
	.byte	0x1
	.value	0x778
	.long	0xec6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"he"
	.byte	0x1
	.value	0x77a
	.long	0x10bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x79
	.uleb128 0x30
	.long	.LASF314
	.byte	0x1
	.value	0x78a
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x269a
	.uleb128 0x26
	.string	"hv"
	.byte	0x1
	.value	0x78a
	.long	0xf8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"gv"
	.byte	0x1
	.value	0x78a
	.long	0xfc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.string	"how"
	.byte	0x1
	.value	0x78a
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x30
	.long	.LASF315
	.byte	0x1
	.value	0x79d
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x26e6
	.uleb128 0x26
	.string	"str"
	.byte	0x1
	.value	0x79d
	.long	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"len"
	.byte	0x1
	.value	0x79d
	.long	0xe20
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.long	.LASF232
	.byte	0x1
	.value	0x79d
	.long	0xe2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x30
	.long	.LASF316
	.byte	0x1
	.value	0x7a4
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x2714
	.uleb128 0x26
	.string	"hek"
	.byte	0x1
	.value	0x7a4
	.long	0x10c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2e
	.long	.LASF317
	.byte	0x1
	.value	0x7ae
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x282f
	.uleb128 0x26
	.string	"hek"
	.byte	0x1
	.value	0x7ae
	.long	0x10c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.string	"str"
	.byte	0x1
	.value	0x7ae
	.long	0xaa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.string	"len"
	.byte	0x1
	.value	0x7ae
	.long	0xe20
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x27
	.long	.LASF232
	.byte	0x1
	.value	0x7ae
	.long	0xe2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x29
	.string	"xhv"
	.byte	0x1
	.value	0x7b0
	.long	0xf79
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x28
	.long	.LASF249
	.byte	0x1
	.value	0x7b1
	.long	0x10bb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.long	.LASF250
	.byte	0x1
	.value	0x7b2
	.long	0x18cd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x7b3
	.long	0xe20
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x28
	.long	.LASF318
	.byte	0x1
	.value	0x7b4
	.long	0xe20
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x28
	.long	.LASF251
	.byte	0x1
	.value	0x7b5
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -77
	.uleb128 0x28
	.long	.LASF266
	.byte	0x1
	.value	0x7b6
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF319
	.byte	0x1
	.value	0x7b7
	.long	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.long	0x280c
	.uleb128 0x28
	.long	.LASF320
	.byte	0x1
	.value	0x7bc
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x2c
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.uleb128 0x28
	.long	.LASF233
	.byte	0x1
	.value	0x7d9
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF321
	.byte	0x1
	.value	0x803
	.long	0x10c1
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x28ce
	.uleb128 0x26
	.string	"str"
	.byte	0x1
	.value	0x803
	.long	0xaa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.string	"len"
	.byte	0x1
	.value	0x803
	.long	0xe20
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x27
	.long	.LASF232
	.byte	0x1
	.value	0x803
	.long	0xe2b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.long	.LASF251
	.byte	0x1
	.value	0x805
	.long	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -53
	.uleb128 0x28
	.long	.LASF187
	.byte	0x1
	.value	0x806
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.long	.LASF319
	.byte	0x1
	.value	0x807
	.long	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.uleb128 0x28
	.long	.LASF320
	.byte	0x1
	.value	0x80a
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF322
	.byte	0x1
	.value	0x81e
	.long	0x10c1
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x2985
	.uleb128 0x26
	.string	"str"
	.byte	0x1
	.value	0x81e
	.long	0xaa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.string	"len"
	.byte	0x1
	.value	0x81e
	.long	0xe20
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x27
	.long	.LASF232
	.byte	0x1
	.value	0x81e
	.long	0xe2b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x27
	.long	.LASF187
	.byte	0x1
	.value	0x81e
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.string	"xhv"
	.byte	0x1
	.value	0x820
	.long	0xf79
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x28
	.long	.LASF249
	.byte	0x1
	.value	0x821
	.long	0x10bb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.long	.LASF250
	.byte	0x1
	.value	0x822
	.long	0x18cd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x823
	.long	0xe20
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x28
	.long	.LASF318
	.byte	0x1
	.value	0x824
	.long	0xe20
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF233
	.byte	0x1
	.value	0x825
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x32
	.long	.LASF323
	.byte	0x13
	.byte	0x88
	.long	0xf8b
	.uleb128 0x32
	.long	.LASF324
	.byte	0x13
	.byte	0x89
	.long	0xe2b
	.uleb128 0x32
	.long	.LASF325
	.byte	0x13
	.byte	0x98
	.long	0x7f
	.uleb128 0x32
	.long	.LASF326
	.byte	0x13
	.byte	0xf1
	.long	0x7f
	.uleb128 0x33
	.long	.LASF327
	.byte	0x13
	.value	0x10e
	.long	0x10bb
	.uleb128 0x33
	.long	.LASF328
	.byte	0x13
	.value	0x10f
	.long	0x79
	.uleb128 0x33
	.long	.LASF329
	.byte	0x13
	.value	0x110
	.long	0xe2b
	.uleb128 0x33
	.long	.LASF330
	.byte	0x13
	.value	0x125
	.long	0x36a
	.uleb128 0x33
	.long	.LASF331
	.byte	0x13
	.value	0x1dd
	.long	0x11ef
	.uleb128 0x33
	.long	.LASF332
	.byte	0x13
	.value	0x21c
	.long	0xf8b
	.uleb128 0x33
	.long	.LASF333
	.byte	0x13
	.value	0x233
	.long	0xd0
	.uleb128 0x32
	.long	.LASF334
	.byte	0x14
	.byte	0x43
	.long	0xe53
	.uleb128 0x32
	.long	.LASF335
	.byte	0x14
	.byte	0x44
	.long	0x11ef
	.uleb128 0x32
	.long	.LASF336
	.byte	0x14
	.byte	0x5f
	.long	0x7f
	.uleb128 0x32
	.long	.LASF337
	.byte	0x14
	.byte	0x81
	.long	0x2a31
	.uleb128 0x34
	.long	0x103f
	.uleb128 0x32
	.long	.LASF338
	.byte	0x14
	.byte	0x95
	.long	0x10bb
	.uleb128 0x32
	.long	.LASF339
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x34
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF157:
	.string	"xio_page_len"
.LASF27:
	.string	"cop_seq"
.LASF163:
	.string	"xio_bottom_name"
.LASF238:
	.string	"Perl_hv_store_flags"
.LASF290:
	.string	"prev"
.LASF69:
	.string	"gp_sv"
.LASF326:
	.string	"PL_nomemok"
.LASF190:
	.string	"PerlIOl"
.LASF305:
	.string	"Perl_hv_iternext_flags"
.LASF342:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/400.perlbench/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF327:
	.string	"PL_he_root"
.LASF136:
	.string	"XPVCV"
.LASF8:
	.string	"char"
.LASF208:
	.string	"SVt_PVLV"
.LASF170:
	.string	"svt_get"
.LASF31:
	.string	"cop_io"
.LASF166:
	.string	"xio_type"
.LASF137:
	.string	"xpvcv"
.LASF87:
	.string	"mg_flags"
.LASF19:
	.string	"op_targ"
.LASF187:
	.string	"flags"
.LASF122:
	.string	"xhv_fill"
.LASF200:
	.string	"SVt_IV"
.LASF80:
	.string	"gp_file"
.LASF167:
	.string	"xio_flags"
.LASF279:
	.string	"next"
.LASF293:
	.string	"eiter"
.LASF206:
	.string	"SVt_PVMG"
.LASF216:
	.string	"xiou_dirp"
.LASF194:
	.string	"regnode"
.LASF310:
	.string	"utf8_len"
.LASF181:
	.string	"any_bool"
.LASF337:
	.string	"PL_curcop"
.LASF39:
	.string	"op_pmregexp"
.LASF218:
	.string	"PADLIST"
.LASF319:
	.string	"save"
.LASF56:
	.string	"precomp"
.LASF118:
	.string	"xav_flags"
.LASF48:
	.string	"sv_refcnt"
.LASF134:
	.string	"xgv_stash"
.LASF53:
	.string	"endp"
.LASF97:
	.string	"XPVNV"
.LASF255:
	.string	"needs_store"
.LASF253:
	.string	"svret"
.LASF243:
	.string	"lval"
.LASF236:
	.string	"klen_i32"
.LASF10:
	.string	"ssize_t"
.LASF192:
	.string	"_PerlIO"
.LASF38:
	.string	"op_pmnext"
.LASF334:
	.string	"PL_Sv"
.LASF318:
	.string	"found"
.LASF141:
	.string	"xcv_xsub"
.LASF126:
	.string	"xhv_eiter"
.LASF83:
	.string	"mg_moremagic"
.LASF231:
	.string	"S_save_hek_flags"
.LASF338:
	.string	"PL_hv_fetch_ent_mh"
.LASF282:
	.string	"newmax"
.LASF193:
	.string	"PerlIO"
.LASF230:
	.string	"S_new_he"
.LASF226:
	.string	"float"
.LASF124:
	.string	"xhv_keys"
.LASF55:
	.string	"substrs"
.LASF245:
	.string	"Perl_hv_fetch_ent"
.LASF262:
	.string	"new_hek"
.LASF169:
	.string	"mgvtbl"
.LASF322:
	.string	"S_share_hek_flags"
.LASF144:
	.string	"xcv_file"
.LASF72:
	.string	"gp_form"
.LASF333:
	.string	"PL_rehash_seed"
.LASF12:
	.string	"long long unsigned int"
.LASF283:
	.string	"Perl_newHV"
.LASF50:
	.string	"REGEXP"
.LASF280:
	.string	"Perl_free_tied_hv_pool"
.LASF198:
	.string	"reg_data"
.LASF274:
	.string	"was_shared"
.LASF99:
	.string	"xnv_nv"
.LASF185:
	.string	"clone_params"
.LASF197:
	.string	"reg_substr_data"
.LASF85:
	.string	"mg_private"
.LASF96:
	.string	"xiv_iv"
.LASF135:
	.string	"xgv_flags"
.LASF155:
	.string	"xio_lines"
.LASF233:
	.string	"flags_masked"
.LASF45:
	.string	"interpreter"
.LASF74:
	.string	"gp_hv"
.LASF91:
	.string	"xpv_pv"
.LASF129:
	.string	"XPVGV"
.LASF329:
	.string	"PL_nice_chunk_size"
.LASF268:
	.string	"S_hv_delete_common"
.LASF23:
	.string	"op_private"
.LASF223:
	.string	"hek_hash"
.LASF29:
	.string	"cop_line"
.LASF209:
	.string	"SVt_PVAV"
.LASF130:
	.string	"xpvgv"
.LASF189:
	.string	"line_t"
.LASF314:
	.string	"Perl_hv_magic"
.LASF260:
	.string	"i_PeRlHaSh"
.LASF11:
	.string	"size_t"
.LASF307:
	.string	"Perl_hv_iterkey"
.LASF145:
	.string	"xcv_depth"
.LASF18:
	.string	"op_ppaddr"
.LASF162:
	.string	"xio_fmt_gv"
.LASF225:
	.string	"hek_key"
.LASF278:
	.string	"right_length"
.LASF275:
	.string	"new_chunk"
.LASF68:
	.string	"program"
.LASF71:
	.string	"gp_io"
.LASF127:
	.string	"xhv_pmroot"
.LASF311:
	.string	"as_utf8"
.LASF317:
	.string	"S_unshare_hek_or_pvn"
.LASF119:
	.string	"XPVHV"
.LASF328:
	.string	"PL_nice_chunk"
.LASF173:
	.string	"svt_clear"
.LASF207:
	.string	"SVt_PVBM"
.LASF306:
	.string	"oldentry"
.LASF154:
	.string	"xio_dirpu"
.LASF120:
	.string	"xpvhv"
.LASF36:
	.string	"op_pmreplroot"
.LASF303:
	.string	"Perl_hv_iterinit"
.LASF289:
	.string	"oents"
.LASF42:
	.string	"op_pmdynflags"
.LASF175:
	.string	"svt_copy"
.LASF267:
	.string	"Perl_hv_delete_ent"
.LASF228:
	.string	"S_more_he"
.LASF93:
	.string	"xpv_len"
.LASF229:
	.string	"heend"
.LASF150:
	.string	"XPVIO"
.LASF179:
	.string	"any_iv"
.LASF186:
	.string	"stashes"
.LASF63:
	.string	"prelen"
.LASF94:
	.string	"XPVIV"
.LASF70:
	.string	"gp_refcnt"
.LASF65:
	.string	"lastparen"
.LASF151:
	.string	"xpvio"
.LASF292:
	.string	"riter"
.LASF57:
	.string	"data"
.LASF20:
	.string	"op_type"
.LASF211:
	.string	"SVt_PVCV"
.LASF2:
	.string	"unsigned int"
.LASF95:
	.string	"xpviv"
.LASF281:
	.string	"Perl_hv_ksplit"
.LASF330:
	.string	"PL_sv_undef"
.LASF60:
	.string	"sublen"
.LASF35:
	.string	"op_last"
.LASF221:
	.string	"hent_hek"
.LASF67:
	.string	"reganch"
.LASF256:
	.string	"save_taint"
.LASF199:
	.string	"SVt_NULL"
.LASF5:
	.string	"short int"
.LASF297:
	.string	"Perl_hv_clear_placeholders"
.LASF276:
	.string	"new_chunk_size"
.LASF58:
	.string	"subbeg"
.LASF17:
	.string	"op_sibling"
.LASF341:
	.string	"hv.c"
.LASF188:
	.string	"proto_perl"
.LASF82:
	.string	"magic"
.LASF220:
	.string	"hent_next"
.LASF13:
	.string	"long long int"
.LASF121:
	.string	"xhv_array"
.LASF108:
	.string	"xlv_targ"
.LASF159:
	.string	"xio_top_name"
.LASF313:
	.string	"Perl_hv_iternextsv"
.LASF66:
	.string	"lastcloseparen"
.LASF234:
	.string	"S_hv_notallowed"
.LASF196:
	.string	"next_off"
.LASF84:
	.string	"mg_virtual"
.LASF30:
	.string	"cop_warnings"
.LASF32:
	.string	"PMOP"
.LASF15:
	.string	"STRLEN"
.LASF272:
	.string	"newsize"
.LASF286:
	.string	"hv_fill"
.LASF241:
	.string	"Perl_hv_exists"
.LASF250:
	.string	"oentry"
.LASF263:
	.string	"S_hv_magic_check"
.LASF89:
	.string	"mg_ptr"
.LASF143:
	.string	"xcv_gv"
.LASF246:
	.string	"S_hv_fetch_common"
.LASF158:
	.string	"xio_lines_left"
.LASF152:
	.string	"xio_ifp"
.LASF302:
	.string	"Perl_hv_undef"
.LASF46:
	.string	"broiled"
.LASF201:
	.string	"SVt_NV"
.LASF336:
	.string	"PL_tainted"
.LASF240:
	.string	"keysv"
.LASF16:
	.string	"op_next"
.LASF75:
	.string	"gp_egv"
.LASF277:
	.string	"left_length"
.LASF52:
	.string	"startp"
.LASF298:
	.string	"items"
.LASF26:
	.string	"cop_filegv"
.LASF47:
	.string	"sv_any"
.LASF301:
	.string	"array"
.LASF25:
	.string	"cop_stash"
.LASF43:
	.string	"op_pmstash"
.LASF104:
	.string	"XPVLV"
.LASF222:
	.string	"hent_val"
.LASF156:
	.string	"xio_page"
.LASF217:
	.string	"xiou_any"
.LASF335:
	.string	"PL_Xpv"
.LASF213:
	.string	"SVt_PVFM"
.LASF325:
	.string	"PL_tainting"
.LASF227:
	.string	"S_del_he"
.LASF264:
	.string	"Perl_hv_scalar"
.LASF81:
	.string	"MAGIC"
.LASF105:
	.string	"xpvlv"
.LASF172:
	.string	"svt_len"
.LASF332:
	.string	"PL_stashcache"
.LASF340:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF258:
	.string	"s_PeRlHaSh_tmp"
.LASF294:
	.string	"Perl_hv_free_ent"
.LASF49:
	.string	"sv_flags"
.LASF44:
	.string	"PerlInterpreter"
.LASF116:
	.string	"xav_alloc"
.LASF252:
	.string	"masked_flags"
.LASF261:
	.string	"hash_PeRlHaSh"
.LASF315:
	.string	"Perl_unsharepvn"
.LASF321:
	.string	"Perl_share_hek"
.LASF324:
	.string	"PL_sub_generation"
.LASF88:
	.string	"mg_obj"
.LASF128:
	.string	"xhv_name"
.LASF205:
	.string	"SVt_PVNV"
.LASF34:
	.string	"op_first"
.LASF6:
	.string	"long int"
.LASF139:
	.string	"xcv_start"
.LASF149:
	.string	"xcv_outside_seq"
.LASF232:
	.string	"hash"
.LASF304:
	.string	"Perl_hv_iternext"
.LASF265:
	.string	"Perl_hv_delete"
.LASF101:
	.string	"xpvmg"
.LASF165:
	.string	"xio_subprocess"
.LASF259:
	.string	"s_PeRlHaSh"
.LASF59:
	.string	"offsets"
.LASF115:
	.string	"xof_off"
.LASF212:
	.string	"SVt_PVGV"
.LASF203:
	.string	"SVt_PV"
.LASF247:
	.string	"action"
.LASF224:
	.string	"hek_len"
.LASF168:
	.string	"MGVTBL"
.LASF14:
	.string	"double"
.LASF28:
	.string	"cop_arybase"
.LASF61:
	.string	"refcnt"
.LASF117:
	.string	"xav_arylen"
.LASF343:
	.string	"reset"
.LASF138:
	.string	"xcv_stash"
.LASF133:
	.string	"xgv_namelen"
.LASF9:
	.string	"__ssize_t"
.LASF140:
	.string	"xcv_root"
.LASF51:
	.string	"regexp"
.LASF239:
	.string	"Perl_hv_store_ent"
.LASF147:
	.string	"xcv_outside"
.LASF251:
	.string	"is_utf8"
.LASF40:
	.string	"op_pmflags"
.LASF123:
	.string	"xhv_max"
.LASF146:
	.string	"xcv_padlist"
.LASF210:
	.string	"SVt_PVHV"
.LASF102:
	.string	"xmg_magic"
.LASF98:
	.string	"xpvnv"
.LASF308:
	.string	"retlen"
.LASF287:
	.string	"shared"
.LASF7:
	.string	"sizetype"
.LASF3:
	.string	"long unsigned int"
.LASF178:
	.string	"any_i32"
.LASF237:
	.string	"Perl_hv_store"
.LASF171:
	.string	"svt_set"
.LASF184:
	.string	"CLONE_PARAMS"
.LASF161:
	.string	"xio_fmt_name"
.LASF21:
	.string	"op_seq"
.LASF191:
	.string	"__dirstream"
.LASF288:
	.string	"ents"
.LASF180:
	.string	"any_long"
.LASF33:
	.string	"pmop"
.LASF266:
	.string	"k_flags"
.LASF113:
	.string	"xav_fill"
.LASF285:
	.string	"hv_max"
.LASF257:
	.string	"keysave"
.LASF312:
	.string	"Perl_hv_iterval"
.LASF331:
	.string	"PL_he_arenaroot"
.LASF249:
	.string	"entry"
.LASF195:
	.string	"type"
.LASF214:
	.string	"SVt_PVIO"
.LASF0:
	.string	"unsigned char"
.LASF125:
	.string	"xhv_riter"
.LASF131:
	.string	"xgv_gp"
.LASF242:
	.string	"Perl_hv_fetch"
.LASF107:
	.string	"xlv_targlen"
.LASF204:
	.string	"SVt_PVIV"
.LASF202:
	.string	"SVt_RV"
.LASF295:
	.string	"Perl_hv_delayfree_ent"
.LASF112:
	.string	"xav_array"
.LASF299:
	.string	"first"
.LASF269:
	.string	"d_flags"
.LASF235:
	.string	"klen"
.LASF254:
	.string	"needs_copy"
.LASF148:
	.string	"xcv_flags"
.LASF78:
	.string	"gp_flags"
.LASF22:
	.string	"op_flags"
.LASF86:
	.string	"mg_type"
.LASF109:
	.string	"xlv_type"
.LASF176:
	.string	"svt_dup"
.LASF164:
	.string	"xio_bottom_gv"
.LASF24:
	.string	"cop_label"
.LASF92:
	.string	"xpv_cur"
.LASF177:
	.string	"any_ptr"
.LASF110:
	.string	"XPVAV"
.LASF284:
	.string	"Perl_newHVhv"
.LASF273:
	.string	"longest_chain"
.LASF114:
	.string	"xav_max"
.LASF174:
	.string	"svt_free"
.LASF4:
	.string	"signed char"
.LASF270:
	.string	"S_hsplit"
.LASF219:
	.string	"PADOFFSET"
.LASF1:
	.string	"short unsigned int"
.LASF41:
	.string	"op_pmpermflags"
.LASF106:
	.string	"xlv_targoff"
.LASF111:
	.string	"xpvav"
.LASF103:
	.string	"xmg_stash"
.LASF73:
	.string	"gp_av"
.LASF77:
	.string	"gp_cvgen"
.LASF79:
	.string	"gp_line"
.LASF62:
	.string	"minlen"
.LASF142:
	.string	"xcv_xsubany"
.LASF215:
	.string	"cv_flags_t"
.LASF339:
	.string	"PL_sv_placeholder"
.LASF296:
	.string	"Perl_hv_clear"
.LASF316:
	.string	"Perl_unshare_hek"
.LASF153:
	.string	"xio_ofp"
.LASF323:
	.string	"PL_strtab"
.LASF320:
	.string	"tmplen"
.LASF76:
	.string	"gp_cv"
.LASF183:
	.string	"any_dxptr"
.LASF54:
	.string	"regstclass"
.LASF160:
	.string	"xio_top_gv"
.LASF300:
	.string	"S_hfreeentries"
.LASF244:
	.string	"Perl_hv_exists_ent"
.LASF64:
	.string	"nparens"
.LASF100:
	.string	"XPVMG"
.LASF309:
	.string	"Perl_hv_iterkeysv"
.LASF271:
	.string	"oldsize"
.LASF90:
	.string	"mg_len"
.LASF37:
	.string	"op_pmreplstart"
.LASF182:
	.string	"any_dptr"
.LASF248:
	.string	"n_links"
.LASF132:
	.string	"xgv_name"
.LASF291:
	.string	"oent"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
