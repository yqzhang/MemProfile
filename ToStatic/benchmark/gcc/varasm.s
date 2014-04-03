	.file	"varasm.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 varasm.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.comm	first_global_object_name,8,8
	.comm	weak_global_object_name,8,8
	.comm	const_labelno,4,4
	.comm	var_labelno,4,4
	.comm	size_directive_output,4,4
	.comm	last_assemble_variable_decl,8,8
	.local	const_alias_set
	.comm	const_alias_set,8,8
	.local	in_section
	.comm	in_section,4,4
	.local	in_named_name
	.comm	in_named_name,8,8
	.local	in_named_htab
	.comm	in_named_htab,8,8
	.section	.rodata
.LC0:
	.string	"\t.section\t.rodata"
.LC1:
	.string	"%s\n"
	.text
	.globl	const_section
	.type	const_section, @function
const_section:
.LFB2:
	.file 1 "varasm.c"
	.loc 1 230 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 230 0
	movl	in_section(%rip), %eax	# in_section, in_section.0
	cmpl	$5, %eax	#, in_section.0
	je	.L1	#,
	.loc 1 230 0 is_stmt 0 discriminator 1
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.1
	movl	$.LC0, %edx	#,
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# asm_out_file.1,
	movl	$0, %eax	#,
	call	fprintf	#
	movl	$5, in_section(%rip)	#, in_section
.L1:
	.loc 1 230 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	const_section, .-const_section
	.section	.rodata
.LC2:
	.string	"\t.text"
	.text
	.globl	text_section
	.type	text_section, @function
text_section:
.LFB3:
	.loc 1 237 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 238 0
	movl	in_section(%rip), %eax	# in_section, in_section.2
	cmpl	$1, %eax	#, in_section.2
	je	.L3	#,
	.loc 1 243 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.3
	movl	$.LC2, %edx	#,
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# asm_out_file.3,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 245 0
	movl	$1, in_section(%rip)	#, in_section
.L3:
	.loc 1 247 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	text_section, .-text_section
	.section	.rodata
.LC3:
	.string	"\t.data"
	.text
	.globl	data_section
	.type	data_section, @function
data_section:
.LFB4:
	.loc 1 253 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 254 0
	movl	in_section(%rip), %eax	# in_section, in_section.4
	cmpl	$2, %eax	#, in_section.4
	je	.L5	#,
	.loc 1 256 0
	movl	flag_shared_data(%rip), %eax	# flag_shared_data, flag_shared_data.5
	testl	%eax, %eax	# flag_shared_data.5
	je	.L7	#,
	.loc 1 261 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.6
	movl	$.LC3, %edx	#,
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# asm_out_file.6,
	movl	$0, %eax	#,
	call	fprintf	#
	jmp	.L8	#
.L7:
	.loc 1 265 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.7
	movl	$.LC3, %edx	#,
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# asm_out_file.7,
	movl	$0, %eax	#,
	call	fprintf	#
.L8:
	.loc 1 267 0
	movl	$2, in_section(%rip)	#, in_section
.L5:
	.loc 1 269 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	data_section, .-data_section
	.globl	force_data_section
	.type	force_data_section, @function
force_data_section:
.LFB5:
	.loc 1 275 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 276 0
	movl	$0, in_section(%rip)	#, in_section
	.loc 1 277 0
	call	data_section	#
	.loc 1 278 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	force_data_section, .-force_data_section
	.globl	readonly_data_section
	.type	readonly_data_section, @function
readonly_data_section:
.LFB6:
	.loc 1 285 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 287 0
	call	const_section	#
	.loc 1 291 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	readonly_data_section, .-readonly_data_section
	.globl	in_text_section
	.type	in_text_section, @function
in_text_section:
.LFB7:
	.loc 1 297 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 298 0
	movl	in_section(%rip), %eax	# in_section, in_section.8
	cmpl	$1, %eax	#, in_section.8
	sete	%al	#, D.18344
	movzbl	%al, %eax	# D.18344, D.18345
	.loc 1 299 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	in_text_section, .-in_text_section
	.globl	in_data_section
	.type	in_data_section, @function
in_data_section:
.LFB8:
	.loc 1 305 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 306 0
	movl	in_section(%rip), %eax	# in_section, in_section.9
	cmpl	$2, %eax	#, in_section.9
	sete	%al	#, D.18346
	movzbl	%al, %eax	# D.18346, D.18347
	.loc 1 307 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	in_data_section, .-in_data_section
	.type	in_named_entry_eq, @function
in_named_entry_eq:
.LFB9:
	.loc 1 315 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# p1, p1
	movq	%rsi, -32(%rbp)	# p2, p2
	.loc 1 316 0
	movq	-24(%rbp), %rax	# p1, tmp64
	movq	%rax, -16(%rbp)	# tmp64, old
	.loc 1 317 0
	movq	-32(%rbp), %rax	# p2, tmp65
	movq	%rax, -8(%rbp)	# tmp65, new
	.loc 1 319 0
	movq	-16(%rbp), %rax	# old, tmp66
	movq	(%rax), %rax	# old_2->name, D.18348
	movq	-8(%rbp), %rdx	# new, tmp67
	movq	%rdx, %rsi	# tmp67,
	movq	%rax, %rdi	# D.18348,
	call	strcmp	#
	testl	%eax, %eax	# D.18349
	sete	%al	#, D.18350
	movzbl	%al, %eax	# D.18350, D.18349
	.loc 1 320 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	in_named_entry_eq, .-in_named_entry_eq
	.type	in_named_entry_hash, @function
in_named_entry_hash:
.LFB10:
	.loc 1 325 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# p, p
	.loc 1 326 0
	movq	-24(%rbp), %rax	# p, tmp62
	movq	%rax, -8(%rbp)	# tmp62, old
	.loc 1 327 0
	movq	-8(%rbp), %rax	# old, tmp63
	movq	(%rax), %rax	# old_2->name, D.18351
	movq	%rax, %rdi	# D.18351,
	call	htab_hash_string	#
	.loc 1 328 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	in_named_entry_hash, .-in_named_entry_hash
	.globl	get_named_section_flags
	.type	get_named_section_flags, @function
get_named_section_flags:
.LFB11:
	.loc 1 338 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# section, section
	.loc 1 342 0
	movq	-24(%rbp), %rax	# section, tmp65
	movq	%rax, %rdi	# tmp65,
	call	htab_hash_string	#
	movl	%eax, %edx	#, D.18353
	movq	in_named_htab(%rip), %rax	# in_named_htab, in_named_htab.10
	.loc 1 341 0
	movq	-24(%rbp), %rsi	# section, tmp66
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# in_named_htab.10,
	call	htab_find_slot_with_hash	#
	movq	%rax, -8(%rbp)	# tmp67, slot
	.loc 1 345 0
	cmpq	$0, -8(%rbp)	#, slot
	je	.L20	#,
	.loc 1 345 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# slot, tmp68
	movq	(%rax), %rax	# *slot_5, D.18354
	movl	8(%rax), %eax	# _6->flags, iftmp.11
	jmp	.L21	#
.L20:
	.loc 1 345 0 discriminator 2
	movl	$0, %eax	#, iftmp.11
.L21:
	.loc 1 346 0 is_stmt 1 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	get_named_section_flags, .-get_named_section_flags
	.globl	named_section_first_declaration
	.type	named_section_first_declaration, @function
named_section_first_declaration:
.LFB12:
	.loc 1 355 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# name, name
	.loc 1 359 0
	movq	-24(%rbp), %rax	# name, tmp67
	movq	%rax, %rdi	# tmp67,
	call	htab_hash_string	#
	movl	%eax, %edx	#, D.18356
	movq	in_named_htab(%rip), %rax	# in_named_htab, in_named_htab.12
	.loc 1 358 0
	movq	-24(%rbp), %rsi	# name, tmp68
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# in_named_htab.12,
	call	htab_find_slot_with_hash	#
	movq	%rax, -8(%rbp)	# tmp69, slot
	.loc 1 361 0
	movq	-8(%rbp), %rax	# slot, tmp70
	movq	(%rax), %rax	# *slot_5, D.18357
	movzbl	12(%rax), %eax	# _6->declared, D.18355
	xorl	$1, %eax	#, D.18355
	testb	%al, %al	# D.18355
	je	.L24	#,
	.loc 1 363 0
	movq	-8(%rbp), %rax	# slot, tmp71
	movq	(%rax), %rax	# *slot_5, D.18357
	movb	$1, 12(%rax)	#, _9->declared
	.loc 1 364 0
	movl	$1, %eax	#, D.18355
	jmp	.L25	#
.L24:
	.loc 1 368 0
	movl	$0, %eax	#, D.18355
.L25:
	.loc 1 370 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	named_section_first_declaration, .-named_section_first_declaration
	.globl	set_named_section_flags
	.type	set_named_section_flags, @function
set_named_section_flags:
.LFB13:
	.loc 1 380 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# section, section
	movl	%esi, -28(%rbp)	# flags, flags
	.loc 1 384 0
	movq	-24(%rbp), %rax	# section, tmp65
	movq	%rax, %rdi	# tmp65,
	call	htab_hash_string	#
	movl	%eax, %edx	#, D.18359
	movq	in_named_htab(%rip), %rax	# in_named_htab, in_named_htab.13
	.loc 1 383 0
	movq	-24(%rbp), %rsi	# section, tmp66
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# in_named_htab.13,
	call	htab_find_slot_with_hash	#
	movq	%rax, -16(%rbp)	# tmp67, slot
	.loc 1 386 0
	movq	-16(%rbp), %rax	# slot, tmp68
	movq	(%rax), %rax	# *slot_5, tmp69
	movq	%rax, -8(%rbp)	# tmp69, entry
	.loc 1 388 0
	cmpq	$0, -8(%rbp)	#, entry
	jne	.L27	#,
	.loc 1 390 0
	movl	$16, %edi	#,
	call	xmalloc	#
	movq	%rax, -8(%rbp)	# tmp70, entry
	.loc 1 391 0
	movq	-16(%rbp), %rax	# slot, tmp71
	movq	-8(%rbp), %rdx	# entry, tmp72
	movq	%rdx, (%rax)	# tmp72, *slot_5
	.loc 1 392 0
	movq	-24(%rbp), %rax	# section, tmp73
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# tmp73,
	call	ggc_alloc_string	#
	movq	-8(%rbp), %rdx	# entry, tmp74
	movq	%rax, (%rdx)	# D.18360, entry_7->name
	.loc 1 393 0
	movq	-8(%rbp), %rax	# entry, tmp75
	movl	-28(%rbp), %edx	# flags, tmp76
	movl	%edx, 8(%rax)	# tmp76, entry_7->flags
	.loc 1 394 0
	movq	-8(%rbp), %rax	# entry, tmp77
	movb	$0, 12(%rax)	#, entry_7->declared
	jmp	.L28	#
.L27:
	.loc 1 396 0
	movq	-8(%rbp), %rax	# entry, tmp78
	movl	8(%rax), %eax	# entry_6->flags, D.18359
	cmpl	-28(%rbp), %eax	# flags, D.18359
	je	.L28	#,
	.loc 1 397 0
	movl	$0, %eax	#, D.18358
	jmp	.L29	#
.L28:
	.loc 1 399 0
	movl	$1, %eax	#, D.18358
.L29:
	.loc 1 400 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	set_named_section_flags, .-set_named_section_flags
	.section	.rodata
.LC4:
	.string	"varasm.c"
	.text
	.globl	named_section_flags
	.type	named_section_flags, @function
named_section_flags:
.LFB14:
	.loc 1 408 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# name, name
	movl	%esi, -12(%rbp)	# flags, flags
	.loc 1 409 0
	movl	in_section(%rip), %eax	# in_section, in_section.14
	cmpl	$3, %eax	#, in_section.14
	jne	.L31	#,
	.loc 1 409 0 is_stmt 0 discriminator 1
	movq	in_named_name(%rip), %rdx	# in_named_name, in_named_name.15
	movq	-8(%rbp), %rax	# name, tmp67
	movq	%rdx, %rsi	# in_named_name.15,
	movq	%rax, %rdi	# tmp67,
	call	strcmp	#
	testl	%eax, %eax	# D.18361
	je	.L30	#,
.L31:
	.loc 1 411 0 is_stmt 1
	movl	-12(%rbp), %edx	# flags, tmp68
	movq	-8(%rbp), %rax	# name, tmp69
	movl	%edx, %esi	# tmp68,
	movq	%rax, %rdi	# tmp69,
	call	set_named_section_flags	#
	xorl	$1, %eax	#, D.18362
	testb	%al, %al	# D.18362
	je	.L33	#,
	.loc 1 412 0
	movl	$__FUNCTION__.12961, %edx	#,
	movl	$412, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L33:
	.loc 1 414 0
	movq	targetm+128(%rip), %rax	# targetm.asm_out.named_section, D.18363
	movl	-12(%rbp), %ecx	# flags, tmp70
	movq	-8(%rbp), %rdx	# name, tmp71
	movl	%ecx, %esi	# tmp70,
	movq	%rdx, %rdi	# tmp71,
	call	*%rax	# D.18363
	.loc 1 416 0
	movl	-12(%rbp), %eax	# flags, tmp72
	andl	$16384, %eax	#, D.18364
	testl	%eax, %eax	# D.18364
	je	.L34	#,
	.loc 1 417 0
	movl	$0, in_section(%rip)	#, in_section
	jmp	.L30	#
.L34:
	.loc 1 420 0
	movq	-8(%rbp), %rax	# name, tmp73
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# tmp73,
	call	ggc_alloc_string	#
	movq	%rax, in_named_name(%rip)	# in_named_name.16, in_named_name
	.loc 1 421 0
	movl	$3, in_section(%rip)	#, in_section
.L30:
	.loc 1 424 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	named_section_flags, .-named_section_flags
	.section	.rodata
	.align 8
.LC5:
	.string	"%s causes a section type conflict"
	.text
	.globl	named_section
	.type	named_section, @function
named_section:
.LFB15:
	.loc 1 436 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# decl, decl
	movq	%rsi, -32(%rbp)	# name, name
	movl	%edx, -36(%rbp)	# reloc, reloc
	.loc 1 439 0
	cmpq	$0, -24(%rbp)	#, decl
	je	.L36	#,
	.loc 1 439 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# decl, tmp67
	movzbl	16(%rax), %eax	# decl_3(D)->common.code, D.18366
	movzbl	%al, %eax	# D.18366, D.18367
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.18368
	cmpb	$100, %al	#, D.18368
	je	.L36	#,
	.loc 1 440 0 is_stmt 1
	movl	$__FUNCTION__.12968, %edx	#,
	movl	$440, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L36:
	.loc 1 441 0
	cmpq	$0, -32(%rbp)	#, name
	jne	.L37	#,
	.loc 1 442 0
	movq	-24(%rbp), %rax	# decl, tmp69
	movq	128(%rax), %rax	# decl_3(D)->decl.section_name, D.18369
	movq	40(%rax), %rax	# _8->string.pointer, tmp70
	movq	%rax, -32(%rbp)	# tmp70, name
.L37:
	.loc 1 444 0
	movq	targetm+320(%rip), %rax	# targetm.section_type_flags, D.18370
	movl	-36(%rbp), %edx	# reloc, tmp71
	movq	-32(%rbp), %rsi	# name, tmp72
	movq	-24(%rbp), %rcx	# decl, tmp73
	movq	%rcx, %rdi	# tmp73,
	call	*%rax	# D.18370
	movl	%eax, -4(%rbp)	# tmp74, flags
	.loc 1 451 0
	cmpq	$0, -24(%rbp)	#, decl
	je	.L38	#,
	.loc 1 451 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %edx	# flags, tmp75
	movq	-32(%rbp), %rax	# name, tmp76
	movl	%edx, %esi	# tmp75,
	movq	%rax, %rdi	# tmp76,
	call	set_named_section_flags	#
	xorl	$1, %eax	#, D.18371
	testb	%al, %al	# D.18371
	je	.L38	#,
	.loc 1 453 0 is_stmt 1
	movq	-32(%rbp), %rax	# name, tmp77
	movq	%rax, %rdi	# tmp77,
	call	get_named_section_flags	#
	movl	%eax, -4(%rbp)	# tmp78, flags
	.loc 1 454 0
	movl	-4(%rbp), %eax	# flags, tmp79
	andl	$131072, %eax	#, D.18372
	testl	%eax, %eax	# D.18372
	jne	.L38	#,
	.loc 1 455 0
	movq	-24(%rbp), %rax	# decl, tmp80
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp80,
	movl	$0, %eax	#,
	call	error_with_decl	#
.L38:
	.loc 1 458 0
	movl	-4(%rbp), %edx	# flags, tmp81
	movq	-32(%rbp), %rax	# name, tmp82
	movl	%edx, %esi	# tmp81,
	movq	%rax, %rdi	# tmp82,
	call	named_section_flags	#
	.loc 1 459 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	named_section, .-named_section
	.section	.rodata
.LC6:
	.string	"%s%s"
	.text
	.type	resolve_unique_section, @function
resolve_unique_section:
.LFB16:
	.loc 1 468 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# decl, decl
	movl	%esi, -60(%rbp)	# reloc, reloc
	movl	%edx, -64(%rbp)	# flag_function_or_data_sections, flag_function_or_data_sections
	.loc 1 469 0
	movq	-56(%rbp), %rax	# decl, tmp96
	movq	128(%rax), %rax	# decl_2(D)->decl.section_name, D.18374
	testq	%rax, %rax	# D.18374
	jne	.L39	#,
	.loc 1 470 0
	cmpl	$0, -64(%rbp)	#, flag_function_or_data_sections
	jne	.L41	#,
	.loc 1 471 0
	movzbl	targetm+328(%rip), %eax	# targetm.have_named_sections, D.18375
	testb	%al, %al	# D.18375
	je	.L39	#,
	.loc 1 472 0
	movq	-56(%rbp), %rax	# decl, tmp97
	movzbl	50(%rax), %eax	# *decl_2(D), D.18376
	andl	$8, %eax	#, D.18376
	testb	%al, %al	# D.18376
	je	.L39	#,
.L41:
.LBB2:
	.loc 1 473 0
	movq	-56(%rbp), %rax	# decl, tmp98
	movzbl	16(%rax), %eax	# decl_2(D)->common.code, D.18376
	cmpb	$30, %al	#, D.18376
	jne	.L42	#,
	.loc 1 473 0 is_stmt 0 discriminator 1
	movl	$0, -48(%rbp)	#, sec
	jmp	.L43	#
.L42:
	.loc 1 473 0 discriminator 2
	movq	-56(%rbp), %rax	# decl, tmp99
	movq	104(%rax), %rax	# decl_2(D)->decl.initial, D.18374
	testq	%rax, %rax	# D.18374
	je	.L44	#,
	movq	-56(%rbp), %rax	# decl, tmp100
	movq	104(%rax), %rdx	# decl_2(D)->decl.initial, D.18374
	movq	global_trees(%rip), %rax	# global_trees, D.18374
	cmpq	%rax, %rdx	# D.18374, D.18374
	jne	.L45	#,
.L44:
	.loc 1 473 0 discriminator 1
	movl	$3, -48(%rbp)	#, sec
	jmp	.L43	#
.L45:
	movq	-56(%rbp), %rax	# decl, tmp101
	movzbl	17(%rax), %eax	# *decl_2(D), D.18376
	andl	$16, %eax	#, D.18376
	testb	%al, %al	# D.18376
	je	.L46	#,
	movq	-56(%rbp), %rax	# decl, tmp102
	movzbl	17(%rax), %eax	# *decl_2(D), D.18376
	andl	$8, %eax	#, D.18376
	testb	%al, %al	# D.18376
	jne	.L46	#,
	movq	-56(%rbp), %rax	# decl, tmp103
	movq	104(%rax), %rax	# decl_2(D)->decl.initial, D.18374
	testq	%rax, %rax	# D.18374
	je	.L46	#,
	movq	-56(%rbp), %rax	# decl, tmp104
	movq	104(%rax), %rdx	# decl_2(D)->decl.initial, D.18374
	movq	global_trees(%rip), %rax	# global_trees, D.18374
	cmpq	%rax, %rdx	# D.18374, D.18374
	je	.L47	#,
	.loc 1 473 0 discriminator 2
	movq	-56(%rbp), %rax	# decl, tmp105
	movq	104(%rax), %rax	# decl_2(D)->decl.initial, D.18374
	movzbl	17(%rax), %eax	# *_20, D.18376
	andl	$2, %eax	#, D.18376
	testb	%al, %al	# D.18376
	je	.L46	#,
.L47:
	.loc 1 473 0 discriminator 1
	cmpl	$0, -60(%rbp)	#, reloc
	je	.L48	#,
	.loc 1 473 0 discriminator 2
	movl	flag_pic(%rip), %eax	# flag_pic, flag_pic.17
	testl	%eax, %eax	# flag_pic.17
	jne	.L46	#,
	.loc 1 473 0 discriminator 1
	movq	-56(%rbp), %rax	# decl, tmp106
	movzbl	50(%rax), %eax	# *decl_2(D), D.18376
	andl	$8, %eax	#, D.18376
	testb	%al, %al	# D.18376
	jne	.L46	#,
.L48:
	movl	$1, -48(%rbp)	#, sec
	jmp	.L43	#
.L46:
	.loc 1 473 0 discriminator 2
	movl	$2, -48(%rbp)	#, sec
.L43:
	.loc 1 473 0 discriminator 1
	movq	-56(%rbp), %rax	# decl, tmp107
	movq	120(%rax), %rax	# decl_2(D)->decl.assembler_name, D.18374
	testq	%rax, %rax	# D.18374
	jne	.L49	#,
	movq	lang_set_decl_assembler_name(%rip), %rax	# lang_set_decl_assembler_name, lang_set_decl_assembler_name.18
	movq	-56(%rbp), %rdx	# decl, tmp108
	movq	%rdx, %rdi	# tmp108,
	call	*%rax	# lang_set_decl_assembler_name.18
.L49:
	.loc 1 473 0 discriminator 2
	movq	-56(%rbp), %rax	# decl, tmp109
	movq	120(%rax), %rax	# decl_2(D)->decl.assembler_name, D.18374
	movq	32(%rax), %rax	# _32->identifier.id.str, tmp110
	movq	%rax, -40(%rbp)	# tmp110, name
	movq	-40(%rbp), %rax	# name, tmp111
	movzbl	(%rax), %eax	# *name_33, D.18377
	cmpb	$42, %al	#, D.18377
	sete	%al	#, D.18375
	movzbl	%al, %eax	# D.18375, D.18378
	addq	%rax, -40(%rbp)	# D.18378, name
	movq	-56(%rbp), %rax	# decl, tmp112
	movzbl	50(%rax), %eax	# *decl_2(D), tmp115
	shrb	$3, %al	#, D.18379
	andl	$1, %eax	#, D.18379
	movzbl	%al, %eax	# D.18379, D.18380
	cltq
	movl	-48(%rbp), %edx	# sec, tmp118
	movslq	%edx, %rdx	# tmp118, tmp117
	addq	%rdx, %rdx	# tmp119
	addq	%rdx, %rax	# tmp119, tmp120
	movq	prefixes.12979(,%rax,8), %rax	# prefixes, tmp121
	movq	%rax, -32(%rbp)	# tmp121, prefix
	movq	-40(%rbp), %rax	# name, tmp122
	movq	%rax, %rdi	# tmp122,
	call	strlen	#
	movl	%eax, %ebx	# D.18378, D.18381
	movq	-32(%rbp), %rax	# prefix, tmp123
	movq	%rax, %rdi	# tmp123,
	call	strlen	#
	addl	%ebx, %eax	# D.18381, D.18381
	movl	%eax, -44(%rbp)	# D.18381, len
	movl	-44(%rbp), %eax	# len, tmp124
	addl	$1, %eax	#, D.18380
	cltq
	leaq	15(%rax), %rdx	#, tmp125
	movl	$16, %eax	#, tmp142
	subq	$1, %rax	#, tmp126
	addq	%rdx, %rax	# tmp125, tmp127
	movl	$16, %ebx	#, tmp143
	movl	$0, %edx	#, tmp130
	divq	%rbx	# tmp143
	imulq	$16, %rax, %rax	#, tmp129, tmp131
	subq	%rax, %rsp	# tmp131,
	movq	%rsp, %rax	#, tmp132
	addq	$15, %rax	#, tmp133
	shrq	$4, %rax	#, tmp134
	salq	$4, %rax	#, tmp135
	movq	%rax, -24(%rbp)	# tmp135, string
	movq	-40(%rbp), %rcx	# name, tmp136
	movq	-32(%rbp), %rdx	# prefix, tmp137
	movq	-24(%rbp), %rax	# string, tmp138
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# tmp138,
	movl	$0, %eax	#,
	call	sprintf	#
	movq	-24(%rbp), %rdx	# string, tmp139
	movl	-44(%rbp), %eax	# len, tmp140
	movq	%rdx, %rsi	# tmp139,
	movl	%eax, %edi	# tmp140,
	call	build_string	#
	movq	-56(%rbp), %rdx	# decl, tmp141
	movq	%rax, 128(%rdx)	# D.18374, decl_2(D)->decl.section_name
.L39:
.LBE2:
	.loc 1 474 0 is_stmt 1
	movq	-8(%rbp), %rbx	#,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	resolve_unique_section, .-resolve_unique_section
	.section	.rodata
.LC7:
	.string	"\t.bss"
	.text
	.globl	bss_section
	.type	bss_section, @function
bss_section:
.LFB17:
	.loc 1 482 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 483 0
	movl	in_section(%rip), %eax	# in_section, in_section.19
	cmpl	$4, %eax	#, in_section.19
	je	.L50	#,
	.loc 1 490 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.20
	movl	$.LC7, %edx	#,
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# asm_out_file.20,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 492 0
	movl	$4, in_section(%rip)	#, in_section
.L50:
	.loc 1 494 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	bss_section, .-bss_section
	.section	.rodata
.LC8:
	.string	".globl "
.LC9:
	.string	"\t.align %d\n"
.LC10:
	.string	"\t.type\t"
.LC11:
	.string	"object"
.LC12:
	.string	"@%s"
.LC13:
	.string	"\t.size\t"
.LC14:
	.string	"%ld"
.LC15:
	.string	":\n"
.LC16:
	.string	"\t.zero\t"
.LC17:
	.string	"%s%u\n"
	.text
	.type	asm_output_aligned_bss, @function
asm_output_aligned_bss:
.LFB18:
	.loc 1 537 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# file, file
	movq	%rsi, -16(%rbp)	# decl, decl
	movq	%rdx, -24(%rbp)	# name, name
	movl	%ecx, -28(%rbp)	# size, size
	movl	%r8d, -32(%rbp)	# align, align
	.loc 1 538 0
	movq	-8(%rbp), %rax	# file, tmp71
	movq	%rax, %rcx	# tmp71,
	movl	$7, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC8, %edi	#,
	call	fwrite	#
	movq	-24(%rbp), %rdx	# name, tmp72
	movq	-8(%rbp), %rax	# file, tmp73
	movq	%rdx, %rsi	# tmp72,
	movq	%rax, %rdi	# tmp73,
	call	assemble_name	#
	movq	-8(%rbp), %rax	# file, tmp74
	movq	%rax, %rsi	# tmp74,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 539 0
	call	bss_section	#
	.loc 1 540 0
	movl	-32(%rbp), %eax	# align, tmp75
	leal	7(%rax), %edx	#, tmp77
	testl	%eax, %eax	# tmp76
	cmovs	%edx, %eax	# tmp77,, tmp76
	sarl	$3, %eax	#, tmp78
	cltq
	movq	%rax, %rdi	# D.18386,
	call	floor_log2_wide	#
	testl	%eax, %eax	# D.18385
	je	.L53	#,
	.loc 1 540 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# align, tmp79
	leal	7(%rax), %edx	#, tmp81
	testl	%eax, %eax	# tmp80
	cmovs	%edx, %eax	# tmp81,, tmp80
	sarl	$3, %eax	#, tmp82
	cltq
	movq	%rax, %rdi	# D.18386,
	call	floor_log2_wide	#
	movl	$1, %edx	#, tmp83
	movl	%eax, %ecx	# D.18385, tmp104
	sall	%cl, %edx	# tmp104, D.18385
	movq	-8(%rbp), %rax	# file, tmp84
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# tmp84,
	movl	$0, %eax	#,
	call	fprintf	#
.L53:
	.loc 1 542 0 is_stmt 1
	movq	-16(%rbp), %rax	# decl, tmp85
	movq	%rax, last_assemble_variable_decl(%rip)	# tmp85, last_assemble_variable_decl
	.loc 1 543 0
	movq	-8(%rbp), %rax	# file, tmp86
	movq	%rax, %rcx	# tmp86,
	movl	$7, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC10, %edi	#,
	call	fwrite	#
	movq	-24(%rbp), %rdx	# name, tmp87
	movq	-8(%rbp), %rax	# file, tmp88
	movq	%rdx, %rsi	# tmp87,
	movq	%rax, %rdi	# tmp88,
	call	assemble_name	#
	movq	-8(%rbp), %rax	# file, tmp89
	movq	%rax, %rsi	# tmp89,
	movl	$44, %edi	#,
	call	_IO_putc	#
	movq	-8(%rbp), %rax	# file, tmp90
	movl	$.LC11, %edx	#,
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# tmp90,
	movl	$0, %eax	#,
	call	fprintf	#
	movq	-8(%rbp), %rax	# file, tmp91
	movq	%rax, %rsi	# tmp91,
	movl	$10, %edi	#,
	call	_IO_putc	#
	movl	$0, size_directive_output(%rip)	#, size_directive_output
	movl	flag_inhibit_size_directive(%rip), %eax	# flag_inhibit_size_directive, flag_inhibit_size_directive.21
	testl	%eax, %eax	# flag_inhibit_size_directive.21
	jne	.L54	#,
	.loc 1 543 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, decl
	je	.L54	#,
	movq	-16(%rbp), %rax	# decl, tmp92
	movq	40(%rax), %rax	# decl_12(D)->decl.size, D.18387
	testq	%rax, %rax	# D.18387
	je	.L54	#,
	movl	$1, size_directive_output(%rip)	#, size_directive_output
	movq	-8(%rbp), %rax	# file, tmp93
	movq	%rax, %rcx	# tmp93,
	movl	$7, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC13, %edi	#,
	call	fwrite	#
	movq	-24(%rbp), %rdx	# name, tmp94
	movq	-8(%rbp), %rax	# file, tmp95
	movq	%rdx, %rsi	# tmp94,
	movq	%rax, %rdi	# tmp95,
	call	assemble_name	#
	movq	-8(%rbp), %rax	# file, tmp96
	movq	%rax, %rsi	# tmp96,
	movl	$44, %edi	#,
	call	_IO_putc	#
	movq	-16(%rbp), %rax	# decl, tmp97
	movq	8(%rax), %rax	# decl_12(D)->common.type, D.18387
	movq	%rax, %rdi	# D.18387,
	call	int_size_in_bytes	#
	movq	%rax, %rdx	#, D.18388
	movq	-8(%rbp), %rax	# file, tmp98
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# tmp98,
	movl	$0, %eax	#,
	call	fprintf	#
	movq	-8(%rbp), %rax	# file, tmp99
	movq	%rax, %rsi	# tmp99,
	movl	$10, %edi	#,
	call	fputc	#
.L54:
	.loc 1 543 0 discriminator 2
	movq	-24(%rbp), %rdx	# name, tmp100
	movq	-8(%rbp), %rax	# file, tmp101
	movq	%rdx, %rsi	# tmp100,
	movq	%rax, %rdi	# tmp101,
	call	assemble_name	#
	movq	-8(%rbp), %rax	# file, tmp102
	movq	%rax, %rcx	# tmp102,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC15, %edi	#,
	call	fwrite	#
	.loc 1 548 0 is_stmt 1 discriminator 2
	cmpl	$0, -28(%rbp)	#, size
	je	.L55	#,
	.loc 1 548 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# size, iftmp.22
	jmp	.L56	#
.L55:
	.loc 1 548 0 discriminator 2
	movl	$1, %eax	#, iftmp.22
.L56:
	.loc 1 548 0 discriminator 3
	movq	-8(%rbp), %rdi	# file, tmp103
	movl	%eax, %ecx	# iftmp.22,
	movl	$.LC16, %edx	#,
	movl	$.LC17, %esi	#,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 549 0 is_stmt 1 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	asm_output_aligned_bss, .-asm_output_aligned_bss
	.globl	function_section
	.type	function_section, @function
function_section:
.LFB19:
	.loc 1 564 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# decl, decl
	.loc 1 565 0
	cmpq	$0, -8(%rbp)	#, decl
	je	.L58	#,
	.loc 1 566 0
	movq	-8(%rbp), %rax	# decl, tmp60
	movq	128(%rax), %rax	# decl_1(D)->decl.section_name, D.18399
	testq	%rax, %rax	# D.18399
	je	.L58	#,
	.loc 1 567 0
	movq	-8(%rbp), %rax	# decl, tmp61
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp61,
	call	named_section	#
	jmp	.L57	#
.L58:
	.loc 1 569 0
	call	text_section	#
.L57:
	.loc 1 570 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	function_section, .-function_section
	.section	.rodata
.LC18:
	.string	".data.rel"
.LC19:
	.string	".data.rel.local"
.LC20:
	.string	".data.rel.ro"
.LC21:
	.string	".data.rel.ro.local"
	.text
	.globl	variable_section
	.type	variable_section, @function
variable_section:
.LFB20:
	.loc 1 580 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# decl, decl
	movl	%esi, -12(%rbp)	# reloc, reloc
	.loc 1 581 0
	movq	-8(%rbp), %rax	# decl, tmp99
	movzbl	16(%rax), %eax	# decl_1(D)->common.code, D.18400
	cmpb	$30, %al	#, D.18400
	je	.L61	#,
	.loc 1 581 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# decl, tmp100
	movzbl	16(%rax), %eax	# decl_1(D)->common.code, D.18400
	cmpb	$34, %al	#, D.18400
	jne	.L62	#,
.L61:
	.loc 1 581 0 discriminator 1
	movq	-8(%rbp), %rax	# decl, tmp101
	movq	128(%rax), %rax	# decl_1(D)->decl.section_name, D.18401
	testq	%rax, %rax	# D.18401
	je	.L62	#,
	.loc 1 582 0 is_stmt 1
	movl	-12(%rbp), %edx	# reloc, tmp102
	movq	-8(%rbp), %rax	# decl, tmp103
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp103,
	call	named_section	#
	jmp	.L60	#
.L62:
	.loc 1 599 0
	movq	-8(%rbp), %rax	# decl, tmp104
	movzbl	16(%rax), %eax	# decl_1(D)->common.code, D.18400
	cmpb	$29, %al	#, D.18400
	jne	.L64	#,
	.loc 1 599 0 is_stmt 0 discriminator 1
	movl	flag_writable_strings(%rip), %eax	# flag_writable_strings, flag_writable_strings.23
	testl	%eax, %eax	# flag_writable_strings.23
	jne	.L65	#,
	movq	-8(%rbp), %rax	# decl, tmp105
	movl	56(%rax), %eax	# *decl_1(D), tmp108
	andl	$16777215, %eax	#, D.18402
	movl	%eax, %ecx	# D.18402, D.18403
	movq	-8(%rbp), %rax	# decl, tmp109
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.18403,
	movq	%rax, %rdi	# tmp109,
	call	mergeable_string_section	#
	jmp	.L60	#
.L65:
	.loc 1 599 0 discriminator 2
	call	data_section	#
	jmp	.L60	#
.L64:
	movq	-8(%rbp), %rax	# decl, tmp110
	movzbl	16(%rax), %eax	# decl_1(D)->common.code, D.18400
	cmpb	$34, %al	#, D.18400
	jne	.L67	#,
	.loc 1 599 0 discriminator 1
	movq	-8(%rbp), %rax	# decl, tmp111
	movzbl	17(%rax), %eax	# *decl_1(D), D.18400
	andl	$16, %eax	#, D.18400
	testb	%al, %al	# D.18400
	je	.L68	#,
	.loc 1 599 0 discriminator 2
	movq	-8(%rbp), %rax	# decl, tmp112
	movzbl	17(%rax), %eax	# *decl_1(D), D.18400
	andl	$1, %eax	#, D.18400
	testb	%al, %al	# D.18400
	jne	.L68	#,
	.loc 1 599 0 discriminator 1
	movq	-8(%rbp), %rax	# decl, tmp113
	movq	104(%rax), %rax	# decl_1(D)->decl.initial, D.18401
	testq	%rax, %rax	# D.18401
	je	.L68	#,
	movq	-8(%rbp), %rax	# decl, tmp114
	movq	104(%rax), %rdx	# decl_1(D)->decl.initial, D.18401
	movq	global_trees(%rip), %rax	# global_trees, D.18401
	cmpq	%rax, %rdx	# D.18401, D.18401
	je	.L69	#,
	movq	-8(%rbp), %rax	# decl, tmp115
	movq	104(%rax), %rax	# decl_1(D)->decl.initial, D.18401
	movzbl	17(%rax), %eax	# *_18, D.18400
	andl	$2, %eax	#, D.18400
	testb	%al, %al	# D.18400
	jne	.L69	#,
.L68:
	movl	flag_pic(%rip), %eax	# flag_pic, flag_pic.24
	testl	%eax, %eax	# flag_pic.24
	je	.L70	#,
	movl	-12(%rbp), %eax	# reloc, tmp116
	andl	$2, %eax	#, D.18404
	testl	%eax, %eax	# D.18404
	je	.L70	#,
	movl	-12(%rbp), %eax	# reloc, tmp117
	movl	%eax, %edx	# tmp117,
	movl	$.LC18, %esi	#,
	movl	$0, %edi	#,
	call	named_section	#
	jmp	.L71	#
.L70:
	.loc 1 599 0 discriminator 2
	movl	flag_pic(%rip), %eax	# flag_pic, flag_pic.25
	testl	%eax, %eax	# flag_pic.25
	je	.L72	#,
	.loc 1 599 0 discriminator 1
	cmpl	$0, -12(%rbp)	#, reloc
	je	.L72	#,
	movl	-12(%rbp), %eax	# reloc, tmp118
	movl	%eax, %edx	# tmp118,
	movl	$.LC19, %esi	#,
	movl	$0, %edi	#,
	call	named_section	#
	jmp	.L71	#
.L72:
	.loc 1 599 0 discriminator 2
	call	data_section	#
	jmp	.L73	#
.L71:
	.loc 1 599 0 discriminator 1
	jmp	.L73	#
.L69:
	.loc 1 599 0 discriminator 2
	movl	flag_pic(%rip), %eax	# flag_pic, flag_pic.26
	testl	%eax, %eax	# flag_pic.26
	je	.L74	#,
	.loc 1 599 0 discriminator 1
	movl	-12(%rbp), %eax	# reloc, tmp119
	andl	$2, %eax	#, D.18404
	testl	%eax, %eax	# D.18404
	je	.L74	#,
	movl	-12(%rbp), %eax	# reloc, tmp120
	movl	%eax, %edx	# tmp120,
	movl	$.LC20, %esi	#,
	movl	$0, %edi	#,
	call	named_section	#
	jmp	.L73	#
.L74:
	.loc 1 599 0 discriminator 2
	movl	flag_pic(%rip), %eax	# flag_pic, flag_pic.27
	testl	%eax, %eax	# flag_pic.27
	je	.L75	#,
	.loc 1 599 0 discriminator 1
	cmpl	$0, -12(%rbp)	#, reloc
	je	.L75	#,
	movl	-12(%rbp), %eax	# reloc, tmp121
	movl	%eax, %edx	# tmp121,
	movl	$.LC21, %esi	#,
	movl	$0, %edi	#,
	call	named_section	#
	jmp	.L73	#
.L75:
	.loc 1 599 0 discriminator 2
	movl	flag_merge_constants(%rip), %eax	# flag_merge_constants, flag_merge_constants.28
	cmpl	$1, %eax	#, flag_merge_constants.28
	jg	.L76	#,
	.loc 1 599 0 discriminator 1
	call	const_section	#
	jmp	.L60	#
.L76:
	.loc 1 599 0 discriminator 2
	movq	-8(%rbp), %rax	# decl, tmp122
	movq	104(%rax), %rax	# decl_1(D)->decl.initial, D.18401
	movzbl	16(%rax), %eax	# _25->common.code, D.18400
	cmpb	$29, %al	#, D.18400
	jne	.L77	#,
	.loc 1 599 0 discriminator 1
	movq	-8(%rbp), %rax	# decl, tmp123
	movl	56(%rax), %eax	# *decl_1(D), tmp126
	andl	$16777215, %eax	#, D.18402
	movl	%eax, %ecx	# D.18402, D.18403
	movq	-8(%rbp), %rax	# decl, tmp127
	movq	104(%rax), %rax	# decl_1(D)->decl.initial, D.18401
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.18403,
	movq	%rax, %rdi	# D.18401,
	call	mergeable_string_section	#
	jmp	.L60	#
.L77:
	.loc 1 599 0 discriminator 2
	movq	-8(%rbp), %rax	# decl, tmp128
	movl	56(%rax), %eax	# *decl_1(D), tmp131
	andl	$16777215, %eax	#, D.18402
	movl	%eax, %ecx	# D.18402, D.18403
	movq	-8(%rbp), %rax	# decl, tmp132
	movzbl	48(%rax), %eax	# decl_1(D)->decl.mode, D.18400
	movzbl	%al, %eax	# D.18400, D.18405
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.18403,
	movl	%eax, %edi	# D.18405,
	call	mergeable_constant_section	#
	jmp	.L60	#
.L73:
	jmp	.L60	#
.L67:
	movq	-8(%rbp), %rax	# decl, tmp133
	movzbl	16(%rax), %eax	# decl_1(D)->common.code, D.18400
	cmpb	$46, %al	#, D.18400
	jne	.L78	#,
	.loc 1 599 0 discriminator 1
	movl	flag_pic(%rip), %eax	# flag_pic, flag_pic.29
	testl	%eax, %eax	# flag_pic.29
	je	.L79	#,
	cmpl	$0, -12(%rbp)	#, reloc
	jne	.L80	#,
.L79:
	.loc 1 599 0 discriminator 2
	movq	-8(%rbp), %rax	# decl, tmp134
	movzbl	17(%rax), %eax	# *decl_1(D), D.18400
	andl	$1, %eax	#, D.18400
	testb	%al, %al	# D.18400
	jne	.L80	#,
	.loc 1 599 0 discriminator 1
	movq	-8(%rbp), %rax	# decl, tmp135
	movzbl	17(%rax), %eax	# *decl_1(D), D.18400
	andl	$2, %eax	#, D.18400
	testb	%al, %al	# D.18400
	jne	.L81	#,
.L80:
	call	data_section	#
	jmp	.L60	#
.L81:
	call	const_section	#
	jmp	.L60	#
.L78:
	.loc 1 599 0 discriminator 2
	call	const_section	#
.L60:
	.loc 1 607 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	variable_section, .-variable_section
	.section	.rodata
.LC22:
	.string	".gcc_except_table"
	.text
	.globl	default_exception_section
	.type	default_exception_section, @function
default_exception_section:
.LFB21:
	.loc 1 614 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 615 0
	movzbl	targetm+328(%rip), %eax	# targetm.have_named_sections, D.18410
	testb	%al, %al	# D.18410
	je	.L84	#,
	.loc 1 616 0
	movl	$0, %edx	#,
	movl	$.LC22, %esi	#,
	movl	$0, %edi	#,
	call	named_section	#
	jmp	.L83	#
.L84:
	.loc 1 617 0
	movl	flag_pic(%rip), %eax	# flag_pic, flag_pic.30
	testl	%eax, %eax	# flag_pic.30
	je	.L86	#,
	.loc 1 618 0
	call	data_section	#
	jmp	.L83	#
.L86:
	.loc 1 620 0
	call	readonly_data_section	#
.L83:
	.loc 1 621 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	default_exception_section, .-default_exception_section
	.section	.rodata
.LC23:
	.string	".rodata.str%d.%d"
.LC24:
	.string	"\t.subsection\t-1"
	.text
	.globl	mergeable_string_section
	.type	mergeable_string_section, @function
mergeable_string_section:
.LFB22:
	.loc 1 630 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$120, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)	# decl, decl
	movq	%rsi, -112(%rbp)	# align, align
	movl	%edx, -116(%rbp)	# flags, flags
	.loc 1 630 0
	movq	%fs:40, %rax	#, tmp125
	movq	%rax, -24(%rbp)	# tmp125, D.18423
	xorl	%eax, %eax	# tmp125
	.loc 1 632 0
	movl	flag_merge_constants(%rip), %eax	# flag_merge_constants, flag_merge_constants.31
	testl	%eax, %eax	# flag_merge_constants.31
	je	.L88	#,
	.loc 1 633 0
	movq	-104(%rbp), %rax	# decl, tmp89
	movzbl	16(%rax), %eax	# decl_5(D)->common.code, D.18412
	cmpb	$29, %al	#, D.18412
	jne	.L88	#,
	.loc 1 634 0
	movq	-104(%rbp), %rax	# decl, tmp90
	movq	8(%rax), %rax	# decl_5(D)->common.type, D.18413
	movzbl	16(%rax), %eax	# _7->common.code, D.18412
	cmpb	$18, %al	#, D.18412
	jne	.L88	#,
	.loc 1 635 0
	cmpq	$256, -112(%rbp)	#, align
	ja	.L88	#,
	.loc 1 636 0
	movq	-104(%rbp), %rax	# decl, tmp91
	movl	32(%rax), %eax	# decl_5(D)->string.length, D.18414
	movslq	%eax, %rbx	# D.18414, D.18415
	movq	-104(%rbp), %rax	# decl, tmp92
	movq	8(%rax), %rax	# decl_5(D)->common.type, D.18413
	movq	%rax, %rdi	# D.18413,
	call	int_size_in_bytes	#
	cmpq	%rax, %rbx	# D.18415, D.18415
	jl	.L88	#,
.LBB3:
	.loc 1 644 0
	movq	-104(%rbp), %rax	# decl, tmp93
	movq	8(%rax), %rax	# decl_5(D)->common.type, D.18413
	movq	8(%rax), %rax	# _14->common.type, D.18413
	movzbl	61(%rax), %eax	# *_15, tmp96
	shrb	%al	# D.18416
	movzbl	%al, %eax	# D.18416, tmp97
	movl	%eax, -88(%rbp)	# tmp97, mode
	.loc 1 645 0
	movl	-88(%rbp), %eax	# mode, mode.32
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.18417
	movzwl	%ax, %eax	# D.18417, tmp99
	movl	%eax, -84(%rbp)	# tmp99, modesize
	.loc 1 646 0
	cmpl	$7, -84(%rbp)	#, modesize
	jbe	.L88	#,
	.loc 1 646 0 is_stmt 0 discriminator 1
	cmpl	$256, -84(%rbp)	#, modesize
	ja	.L88	#,
	.loc 1 647 0 is_stmt 1
	movl	-84(%rbp), %eax	# modesize, tmp100
	subl	$1, %eax	#, D.18418
	andl	-84(%rbp), %eax	# modesize, D.18418
	testl	%eax, %eax	# D.18418
	jne	.L88	#,
	.loc 1 649 0
	movl	-84(%rbp), %eax	# modesize, D.18419
	cmpq	-112(%rbp), %rax	# align, D.18419
	jbe	.L90	#,
	.loc 1 650 0
	movl	-84(%rbp), %eax	# modesize, tmp127
	movq	%rax, -112(%rbp)	# tmp127, align
.L90:
	.loc 1 652 0
	movq	-104(%rbp), %rax	# decl, tmp101
	movq	40(%rax), %rax	# decl_5(D)->string.pointer, tmp102
	movq	%rax, -72(%rbp)	# tmp102, str
	.loc 1 653 0
	movq	-104(%rbp), %rax	# decl, tmp103
	movl	32(%rax), %eax	# decl_5(D)->string.length, tmp104
	movl	%eax, -80(%rbp)	# tmp104, len
	.loc 1 654 0
	movl	-88(%rbp), %eax	# mode, mode.33
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.18412
	movzbl	%al, %eax	# D.18412, tmp106
	movl	%eax, -76(%rbp)	# tmp106, unit
	.loc 1 657 0
	movl	$0, -96(%rbp)	#, i
	jmp	.L91	#
.L98:
	.loc 1 659 0
	movl	$0, -92(%rbp)	#, j
	jmp	.L92	#
.L95:
	.loc 1 660 0
	movl	-92(%rbp), %eax	# j, tmp107
	movl	-96(%rbp), %edx	# i, tmp108
	addl	%edx, %eax	# tmp108, D.18414
	movslq	%eax, %rdx	# D.18414, D.18420
	movq	-72(%rbp), %rax	# str, tmp109
	addq	%rdx, %rax	# D.18420, D.18421
	movzbl	(%rax), %eax	# *_34, D.18422
	testb	%al, %al	# D.18422
	je	.L93	#,
	.loc 1 661 0
	jmp	.L94	#
.L93:
	.loc 1 659 0
	addl	$1, -92(%rbp)	#, j
.L92:
	.loc 1 659 0 is_stmt 0 discriminator 1
	movl	-92(%rbp), %eax	# j, tmp110
	cmpl	-76(%rbp), %eax	# unit, tmp110
	jl	.L95	#,
.L94:
	.loc 1 662 0 is_stmt 1
	movl	-92(%rbp), %eax	# j, tmp111
	cmpl	-76(%rbp), %eax	# unit, tmp111
	jne	.L96	#,
	.loc 1 663 0
	jmp	.L97	#
.L96:
	.loc 1 657 0
	movl	-76(%rbp), %eax	# unit, tmp112
	addl	%eax, -96(%rbp)	# tmp112, i
.L91:
	.loc 1 657 0 is_stmt 0 discriminator 1
	movl	-96(%rbp), %eax	# i, tmp113
	cmpl	-80(%rbp), %eax	# len, tmp113
	jl	.L98	#,
.L97:
	.loc 1 665 0 is_stmt 1
	movl	-76(%rbp), %eax	# unit, tmp114
	movl	-80(%rbp), %edx	# len, tmp115
	subl	%eax, %edx	# tmp114, D.18414
	movl	%edx, %eax	# D.18414, D.18414
	cmpl	-96(%rbp), %eax	# i, D.18414
	jne	.L88	#,
	.loc 1 668 0
	movq	-112(%rbp), %rax	# align, tmp116
	shrq	$3, %rax	#, D.18419
	.loc 1 667 0
	movl	%eax, %edx	# D.18419, D.18414
	movl	-84(%rbp), %eax	# modesize, tmp117
	shrl	$3, %eax	#, D.18418
	movl	%eax, %esi	# D.18418, D.18418
	leaq	-64(%rbp), %rax	#, tmp118
	movl	%edx, %ecx	# D.18414,
	movl	%esi, %edx	# D.18418,
	movl	$.LC23, %esi	#,
	movq	%rax, %rdi	# tmp118,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 1 669 0
	movl	-84(%rbp), %eax	# modesize, tmp119
	shrl	$3, %eax	#, D.18418
	orl	-116(%rbp), %eax	# flags, D.18418
	orl	$98304, %eax	#, tmp120
	movl	%eax, -116(%rbp)	# tmp120, flags
	.loc 1 670 0
	cmpl	$0, -96(%rbp)	#, i
	jne	.L99	#,
	.loc 1 670 0 is_stmt 0 discriminator 1
	movl	-84(%rbp), %eax	# modesize, D.18419
	cmpq	-112(%rbp), %rax	# align, D.18419
	jae	.L99	#,
	.loc 1 681 0 is_stmt 1
	movl	-116(%rbp), %edx	# flags, tmp121
	leaq	-64(%rbp), %rax	#, tmp122
	movl	%edx, %esi	# tmp121,
	movq	%rax, %rdi	# tmp122,
	call	named_section_flags	#
	.loc 1 682 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.34
	movl	$.LC24, %edx	#,
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# asm_out_file.34,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 686 0
	jmp	.L87	#
.L99:
	.loc 1 689 0
	movl	-116(%rbp), %edx	# flags, tmp123
	leaq	-64(%rbp), %rax	#, tmp124
	movl	%edx, %esi	# tmp123,
	movq	%rax, %rdi	# tmp124,
	call	named_section_flags	#
	.loc 1 690 0
	nop
	jmp	.L87	#
.L88:
.LBE3:
	.loc 1 695 0
	call	readonly_data_section	#
.L87:
	.loc 1 696 0
	movq	-24(%rbp), %rax	# D.18423, tmp126
	xorq	%fs:40, %rax	#, tmp126
	je	.L102	#,
	call	__stack_chk_fail	#
.L102:
	addq	$120, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	mergeable_string_section, .-mergeable_string_section
	.section	.rodata
.LC25:
	.string	".rodata.cst%d"
	.text
	.globl	mergeable_constant_section
	.type	mergeable_constant_section, @function
mergeable_constant_section:
.LFB23:
	.loc 1 705 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -52(%rbp)	# mode, mode
	movq	%rsi, -64(%rbp)	# align, align
	movl	%edx, -56(%rbp)	# flags, flags
	.loc 1 705 0
	movq	%fs:40, %rax	#, tmp79
	movq	%rax, -8(%rbp)	# tmp79, D.18432
	xorl	%eax, %eax	# tmp79
	.loc 1 707 0
	movl	-52(%rbp), %eax	# mode, mode.35
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.18428
	movzwl	%ax, %eax	# D.18428, tmp71
	movl	%eax, -36(%rbp)	# tmp71, modesize
	.loc 1 709 0
	movl	flag_merge_constants(%rip), %eax	# flag_merge_constants, flag_merge_constants.36
	testl	%eax, %eax	# flag_merge_constants.36
	je	.L104	#,
	.loc 1 710 0
	cmpl	$0, -52(%rbp)	#, mode
	je	.L104	#,
	.loc 1 711 0
	cmpl	$51, -52(%rbp)	#, mode
	je	.L104	#,
	.loc 1 712 0
	movl	-36(%rbp), %eax	# modesize, D.18429
	cmpq	-64(%rbp), %rax	# align, D.18429
	ja	.L104	#,
	.loc 1 713 0
	cmpq	$7, -64(%rbp)	#, align
	jbe	.L104	#,
	.loc 1 714 0
	cmpq	$256, -64(%rbp)	#, align
	ja	.L104	#,
	.loc 1 715 0
	movq	-64(%rbp), %rax	# align, tmp72
	subq	$1, %rax	#, D.18429
	andq	-64(%rbp), %rax	# align, D.18429
	testq	%rax, %rax	# D.18429
	jne	.L104	#,
.LBB4:
	.loc 1 719 0
	movq	-64(%rbp), %rax	# align, tmp73
	shrq	$3, %rax	#, D.18429
	movl	%eax, %edx	# D.18429, D.18430
	leaq	-32(%rbp), %rax	#, tmp74
	movl	$.LC25, %esi	#,
	movq	%rax, %rdi	# tmp74,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 1 720 0
	movq	-64(%rbp), %rax	# align, tmp75
	shrq	$3, %rax	#, D.18429
	orl	-56(%rbp), %eax	# flags, D.18431
	orb	$128, %ah	#, tmp76
	movl	%eax, -56(%rbp)	# tmp76, flags
	.loc 1 721 0
	movl	-56(%rbp), %edx	# flags, tmp77
	leaq	-32(%rbp), %rax	#, tmp78
	movl	%edx, %esi	# tmp77,
	movq	%rax, %rdi	# tmp78,
	call	named_section_flags	#
	.loc 1 722 0
	nop
	jmp	.L103	#
.L104:
.LBE4:
	.loc 1 725 0
	call	readonly_data_section	#
.L103:
	.loc 1 726 0
	movq	-8(%rbp), %rax	# D.18432, tmp80
	xorq	%fs:40, %rax	#, tmp80
	je	.L106	#,
	call	__stack_chk_fail	#
.L106:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	mergeable_constant_section, .-mergeable_constant_section
	.type	strip_reg_name, @function
strip_reg_name:
.LFB24:
	.loc 1 733 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# name, name
	.loc 1 738 0
	movq	-8(%rbp), %rax	# name, tmp63
	movzbl	(%rax), %eax	# *name_2(D), D.18434
	cmpb	$37, %al	#, D.18434
	je	.L108	#,
	.loc 1 738 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# name, tmp64
	movzbl	(%rax), %eax	# *name_2(D), D.18434
	cmpb	$35, %al	#, D.18434
	jne	.L109	#,
.L108:
	.loc 1 739 0 is_stmt 1
	addq	$1, -8(%rbp)	#, name
.L109:
	.loc 1 740 0
	movq	-8(%rbp), %rax	# name, D.18435
	.loc 1 741 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	strip_reg_name, .-strip_reg_name
	.section	.rodata
.LC26:
	.string	"memory"
.LC27:
	.string	"cc"
	.text
	.globl	decode_reg_name
	.type	decode_reg_name, @function
decode_reg_name:
.LFB25:
	.loc 1 754 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# asmspec, asmspec
	.loc 1 755 0
	cmpq	$0, -24(%rbp)	#, asmspec
	je	.L112	#,
.LBB5:
	.loc 1 760 0
	movq	-24(%rbp), %rax	# asmspec, tmp82
	movq	%rax, %rdi	# tmp82,
	call	strip_reg_name	#
	movq	%rax, -24(%rbp)	# tmp83, asmspec
	.loc 1 763 0
	movq	-24(%rbp), %rax	# asmspec, tmp84
	movq	%rax, %rdi	# tmp84,
	call	strlen	#
	subl	$1, %eax	#, D.18438
	movl	%eax, -4(%rbp)	# D.18438, i
	jmp	.L113	#
.L116:
	.loc 1 764 0
	movl	-4(%rbp), %eax	# i, tmp85
	movslq	%eax, %rdx	# tmp85, D.18439
	movq	-24(%rbp), %rax	# asmspec, tmp86
	addq	%rdx, %rax	# D.18439, D.18440
	movzbl	(%rax), %eax	# *_12, D.18441
	movsbl	%al, %eax	# D.18441, D.18436
	movzbl	%al, %eax	# D.18436, D.18436
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.18442
	movzwl	%ax, %eax	# D.18442, D.18436
	andl	$4, %eax	#, D.18436
	testl	%eax, %eax	# D.18436
	jne	.L114	#,
	.loc 1 765 0
	jmp	.L115	#
.L114:
	.loc 1 763 0
	subl	$1, -4(%rbp)	#, i
.L113:
	.loc 1 763 0 is_stmt 0 discriminator 1
	cmpl	$0, -4(%rbp)	#, i
	jns	.L116	#,
.L115:
	.loc 1 766 0 is_stmt 1
	movq	-24(%rbp), %rax	# asmspec, tmp88
	movzbl	(%rax), %eax	# *asmspec_6, D.18441
	testb	%al, %al	# D.18441
	je	.L117	#,
	.loc 1 766 0 is_stmt 0 discriminator 1
	cmpl	$0, -4(%rbp)	#, i
	jns	.L117	#,
	.loc 1 768 0 is_stmt 1
	movq	-24(%rbp), %rax	# asmspec, tmp89
	movq	%rax, %rdi	# tmp89,
	call	atoi	#
	movl	%eax, -4(%rbp)	# tmp90, i
	.loc 1 769 0
	cmpl	$52, -4(%rbp)	#, i
	jg	.L118	#,
	.loc 1 769 0 is_stmt 0 discriminator 1
	cmpl	$0, -4(%rbp)	#, i
	js	.L118	#,
	.loc 1 770 0 is_stmt 1
	movl	-4(%rbp), %eax	# i, D.18436
	jmp	.L119	#
.L118:
	.loc 1 772 0
	movl	$-2, %eax	#, D.18436
	jmp	.L119	#
.L117:
	.loc 1 775 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L120	#
.L122:
	.loc 1 776 0
	movl	-4(%rbp), %eax	# i, tmp92
	cltq
	movq	reg_names(,%rax,8), %rax	# reg_names, D.18440
	movzbl	(%rax), %eax	# *_25, D.18441
	testb	%al, %al	# D.18441
	je	.L121	#,
	.loc 1 777 0
	movl	-4(%rbp), %eax	# i, tmp94
	cltq
	movq	reg_names(,%rax,8), %rax	# reg_names, D.18440
	movq	%rax, %rdi	# D.18440,
	call	strip_reg_name	#
	movq	%rax, %rdx	#, D.18440
	movq	-24(%rbp), %rax	# asmspec, tmp95
	movq	%rdx, %rsi	# D.18440,
	movq	%rax, %rdi	# tmp95,
	call	strcmp	#
	testl	%eax, %eax	# D.18436
	jne	.L121	#,
	.loc 1 778 0
	movl	-4(%rbp), %eax	# i, D.18436
	jmp	.L119	#
.L121:
	.loc 1 775 0
	addl	$1, -4(%rbp)	#, i
.L120:
	.loc 1 775 0 is_stmt 0 discriminator 1
	cmpl	$52, -4(%rbp)	#, i
	jle	.L122	#,
.LBB6:
	.loc 1 785 0 is_stmt 1
	movl	$0, -4(%rbp)	#, i
	jmp	.L123	#
.L125:
	.loc 1 786 0
	movl	-4(%rbp), %eax	# i, tmp97
	cltq
	salq	$4, %rax	#, tmp98
	addq	$table.13040, %rax	#, tmp99
	movq	(%rax), %rdx	# table[i_3].name, D.18440
	movq	-24(%rbp), %rax	# asmspec, tmp100
	movq	%rdx, %rsi	# D.18440,
	movq	%rax, %rdi	# tmp100,
	call	strcmp	#
	testl	%eax, %eax	# D.18436
	jne	.L124	#,
	.loc 1 787 0
	movl	-4(%rbp), %eax	# i, tmp102
	cltq
	salq	$4, %rax	#, tmp103
	addq	$table.13040, %rax	#, tmp104
	movl	8(%rax), %eax	# table[i_3].number, D.18436
	jmp	.L119	#
.L124:
	.loc 1 785 0
	addl	$1, -4(%rbp)	#, i
.L123:
	.loc 1 785 0 is_stmt 0 discriminator 1
	cmpl	$31, -4(%rbp)	#, i
	jle	.L125	#,
.LBE6:
	.loc 1 791 0 is_stmt 1
	movq	-24(%rbp), %rax	# asmspec, tmp105
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp105,
	call	strcmp	#
	testl	%eax, %eax	# D.18436
	jne	.L126	#,
	.loc 1 792 0
	movl	$-4, %eax	#, D.18436
	jmp	.L119	#
.L126:
	.loc 1 794 0
	movq	-24(%rbp), %rax	# asmspec, tmp106
	movl	$.LC27, %esi	#,
	movq	%rax, %rdi	# tmp106,
	call	strcmp	#
	testl	%eax, %eax	# D.18436
	jne	.L127	#,
	.loc 1 795 0
	movl	$-3, %eax	#, D.18436
	jmp	.L119	#
.L127:
	.loc 1 797 0
	movl	$-2, %eax	#, D.18436
	jmp	.L119	#
.L112:
.LBE5:
	.loc 1 800 0
	movl	$-1, %eax	#, D.18436
.L119:
	.loc 1 801 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	decode_reg_name, .-decode_reg_name
	.section	.rodata
	.align 8
.LC28:
	.string	"register name not specified for `%s'"
	.align 8
.LC29:
	.string	"invalid register name for `%s'"
	.align 8
.LC30:
	.string	"data type of `%s' isn't suitable for a register"
	.align 8
.LC31:
	.string	"register specified for `%s' isn't suitable for data type"
	.align 8
.LC32:
	.string	"global register variable has initial value"
	.align 8
.LC33:
	.string	"volatile register variables don't work as you might wish"
	.align 8
.LC34:
	.string	"register name given for non-register variable `%s'"
.LC35:
	.string	"%s.%d"
.LC36:
	.string	"Encode %s, public = %d\n"
	.text
	.globl	make_decl_rtl
	.type	make_decl_rtl, @function
make_decl_rtl:
.LFB26:
	.loc 1 819 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# decl, decl
	movq	%rsi, -96(%rbp)	# asmspec, asmspec
	.loc 1 820 0
	movq	-88(%rbp), %rax	# decl, tmp214
	movq	80(%rax), %rax	# decl_21(D)->decl.context, D.18445
	testq	%rax, %rax	# D.18445
	sete	%al	#, D.18446
	movzbl	%al, %eax	# D.18446, tmp215
	movl	%eax, -72(%rbp)	# tmp215, top_level
	.loc 1 821 0
	movq	$0, -64(%rbp)	#, name
	.loc 1 822 0
	movq	$0, -56(%rbp)	#, new_name
	.loc 1 828 0
	movq	-88(%rbp), %rax	# decl, tmp216
	movzbl	16(%rax), %eax	# decl_21(D)->common.code, D.18447
	cmpb	$35, %al	#, D.18447
	je	.L129	#,
	.loc 1 829 0
	movq	-88(%rbp), %rax	# decl, tmp217
	movzbl	16(%rax), %eax	# decl_21(D)->common.code, D.18447
	cmpb	$36, %al	#, D.18447
	je	.L129	#,
	.loc 1 830 0
	movq	-88(%rbp), %rax	# decl, tmp218
	movzbl	16(%rax), %eax	# decl_21(D)->common.code, D.18447
	cmpb	$34, %al	#, D.18447
	jne	.L130	#,
	.loc 1 831 0
	movq	-88(%rbp), %rax	# decl, tmp219
	movzbl	18(%rax), %eax	# *decl_21(D), D.18447
	andl	$4, %eax	#, D.18447
	testb	%al, %al	# D.18447
	jne	.L130	#,
	.loc 1 832 0
	movq	-88(%rbp), %rax	# decl, tmp220
	movzbl	18(%rax), %eax	# *decl_21(D), D.18447
	andl	$8, %eax	#, D.18447
	testb	%al, %al	# D.18447
	jne	.L130	#,
	.loc 1 833 0
	movq	-88(%rbp), %rax	# decl, tmp221
	movzbl	49(%rax), %eax	# *decl_21(D), D.18447
	andl	$1, %eax	#, D.18447
	testb	%al, %al	# D.18447
	jne	.L130	#,
	.loc 1 834 0
	movq	-88(%rbp), %rax	# decl, tmp222
	movzbl	49(%rax), %eax	# *decl_21(D), D.18447
	andl	$4, %eax	#, D.18447
	testb	%al, %al	# D.18447
	jne	.L130	#,
.L129:
	.loc 1 835 0
	movl	$__FUNCTION__.13053, %edx	#,
	movl	$835, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L130:
	.loc 1 837 0
	movq	-88(%rbp), %rax	# decl, tmp223
	movzbl	16(%rax), %eax	# decl_21(D)->common.code, D.18447
	cmpb	$33, %al	#, D.18447
	je	.L131	#,
	.loc 1 838 0
	movq	-88(%rbp), %rax	# decl, tmp224
	movzbl	16(%rax), %eax	# decl_21(D)->common.code, D.18447
	cmpb	$31, %al	#, D.18447
	jne	.L132	#,
.L131:
	.loc 1 839 0
	movl	$__FUNCTION__.13053, %edx	#,
	movl	$839, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L132:
	.loc 1 843 0
	movq	-88(%rbp), %rax	# decl, tmp225
	movq	144(%rax), %rax	# decl_21(D)->decl.rtl, D.18448
	testq	%rax, %rax	# D.18448
	je	.L133	#,
	.loc 1 846 0
	movq	-88(%rbp), %rax	# decl, tmp226
	movq	144(%rax), %rax	# decl_21(D)->decl.rtl, D.18448
	testq	%rax, %rax	# D.18448
	je	.L134	#,
	.loc 1 846 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# decl, tmp227
	movq	144(%rax), %rax	# decl_21(D)->decl.rtl, iftmp.37
	jmp	.L135	#
.L134:
	.loc 1 846 0 discriminator 2
	movq	-88(%rbp), %rax	# decl, tmp228
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp228,
	call	make_decl_rtl	#
	movq	-88(%rbp), %rax	# decl, tmp229
	movq	144(%rax), %rax	# decl_21(D)->decl.rtl, iftmp.37
.L135:
	.loc 1 846 0 discriminator 3
	movzbl	2(%rax), %edx	# iftmp.37_5->mode, D.18447
	movq	-88(%rbp), %rax	# decl, tmp230
	movzbl	48(%rax), %eax	# decl_21(D)->decl.mode, D.18447
	cmpb	%al, %dl	# D.18447, D.18447
	je	.L136	#,
	.loc 1 847 0 is_stmt 1
	movq	-88(%rbp), %rax	# decl, tmp231
	movzbl	48(%rax), %eax	# decl_21(D)->decl.mode, D.18447
	movzbl	%al, %ebx	# D.18447, D.18449
	movq	-88(%rbp), %rax	# decl, tmp232
	movq	144(%rax), %rax	# decl_21(D)->decl.rtl, D.18448
	testq	%rax, %rax	# D.18448
	je	.L137	#,
	.loc 1 847 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# decl, tmp233
	movq	144(%rax), %rax	# decl_21(D)->decl.rtl, iftmp.38
	jmp	.L138	#
.L137:
	.loc 1 847 0 discriminator 2
	movq	-88(%rbp), %rax	# decl, tmp234
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp234,
	call	make_decl_rtl	#
	movq	-88(%rbp), %rax	# decl, tmp235
	movq	144(%rax), %rax	# decl_21(D)->decl.rtl, iftmp.38
.L138:
	.loc 1 847 0 discriminator 3
	movl	$1, %r8d	#,
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	%ebx, %esi	# D.18449,
	movq	%rax, %rdi	# iftmp.38,
	call	adjust_address_1	#
	movq	-88(%rbp), %rdx	# decl, tmp236
	movq	%rax, 144(%rdx)	# D.18448, decl_21(D)->decl.rtl
	.loc 1 861 0 is_stmt 1 discriminator 3
	jmp	.L128	#
.L136:
	.loc 1 861 0 is_stmt 0
	jmp	.L128	#
.L133:
	.loc 1 864 0 is_stmt 1
	movq	-88(%rbp), %rax	# decl, tmp237
	movq	120(%rax), %rax	# decl_21(D)->decl.assembler_name, D.18445
	testq	%rax, %rax	# D.18445
	jne	.L140	#,
	.loc 1 864 0 is_stmt 0 discriminator 1
	movq	lang_set_decl_assembler_name(%rip), %rax	# lang_set_decl_assembler_name, lang_set_decl_assembler_name.39
	movq	-88(%rbp), %rdx	# decl, tmp238
	movq	%rdx, %rdi	# tmp238,
	call	*%rax	# lang_set_decl_assembler_name.39
.L140:
	.loc 1 864 0 discriminator 2
	movq	-88(%rbp), %rax	# decl, tmp239
	movq	120(%rax), %rax	# decl_21(D)->decl.assembler_name, D.18445
	movq	32(%rax), %rax	# _54->identifier.id.str, tmp240
	movq	%rax, -64(%rbp)	# tmp240, name
	movq	-64(%rbp), %rax	# name, tmp241
	movq	%rax, -56(%rbp)	# tmp241, new_name
	.loc 1 866 0 is_stmt 1 discriminator 2
	movq	-96(%rbp), %rax	# asmspec, tmp242
	movq	%rax, %rdi	# tmp242,
	call	decode_reg_name	#
	movl	%eax, -68(%rbp)	# tmp243, reg_number
	.loc 1 867 0 discriminator 2
	cmpl	$-2, -68(%rbp)	#, reg_number
	jne	.L141	#,
.LBB7:
	.loc 1 871 0
	movq	-96(%rbp), %rax	# asmspec, tmp244
	movq	%rax, %rdi	# tmp244,
	call	strlen	#
	addq	$2, %rax	#, D.18450
	leaq	15(%rax), %rdx	#, tmp245
	movl	$16, %eax	#, tmp395
	subq	$1, %rax	#, tmp246
	addq	%rdx, %rax	# tmp245, tmp247
	movl	$16, %ebx	#, tmp396
	movl	$0, %edx	#, tmp250
	divq	%rbx	# tmp396
	imulq	$16, %rax, %rax	#, tmp249, tmp251
	subq	%rax, %rsp	# tmp251,
	movq	%rsp, %rax	#, tmp252
	addq	$15, %rax	#, tmp253
	shrq	$4, %rax	#, tmp254
	salq	$4, %rax	#, tmp255
	movq	%rax, -48(%rbp)	# tmp255, starred
	.loc 1 872 0
	movq	-48(%rbp), %rax	# starred, tmp256
	movb	$42, (%rax)	#, *starred_61
	.loc 1 873 0
	movq	-48(%rbp), %rax	# starred, tmp257
	leaq	1(%rax), %rdx	#, D.18451
	movq	-96(%rbp), %rax	# asmspec, tmp258
	movq	%rax, %rsi	# tmp258,
	movq	%rdx, %rdi	# D.18451,
	call	strcpy	#
	.loc 1 874 0
	movq	-48(%rbp), %rax	# starred, tmp259
	movq	%rax, -56(%rbp)	# tmp259, new_name
.L141:
.LBE7:
	.loc 1 877 0
	movq	-88(%rbp), %rax	# decl, tmp260
	movzbl	16(%rax), %eax	# decl_21(D)->common.code, D.18447
	cmpb	$30, %al	#, D.18447
	je	.L142	#,
	.loc 1 877 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# decl, tmp261
	movzbl	49(%rax), %eax	# *decl_21(D), D.18447
	andl	$4, %eax	#, D.18447
	testb	%al, %al	# D.18447
	je	.L142	#,
	.loc 1 880 0 is_stmt 1
	cmpl	$-1, -68(%rbp)	#, reg_number
	jne	.L143	#,
	.loc 1 881 0
	movq	-88(%rbp), %rax	# decl, tmp262
	movl	$.LC28, %esi	#,
	movq	%rax, %rdi	# tmp262,
	movl	$0, %eax	#,
	call	error_with_decl	#
	jmp	.L142	#
.L143:
	.loc 1 882 0
	cmpl	$0, -68(%rbp)	#, reg_number
	jns	.L144	#,
	.loc 1 883 0
	movq	-88(%rbp), %rax	# decl, tmp263
	movl	$.LC29, %esi	#,
	movq	%rax, %rdi	# tmp263,
	movl	$0, %eax	#,
	call	error_with_decl	#
	jmp	.L142	#
.L144:
	.loc 1 884 0
	movq	-88(%rbp), %rax	# decl, tmp264
	movq	8(%rax), %rax	# decl_21(D)->common.type, D.18445
	movzbl	61(%rax), %eax	# *_67, D.18447
	andl	$-2, %eax	#, D.18447
	cmpb	$102, %al	#, D.18447
	jne	.L145	#,
	.loc 1 885 0
	movq	-88(%rbp), %rax	# decl, tmp265
	movl	$.LC30, %esi	#,
	movq	%rax, %rdi	# tmp265,
	movl	$0, %eax	#,
	call	error_with_decl	#
	jmp	.L142	#
.L145:
	.loc 1 887 0
	movq	-88(%rbp), %rax	# decl, tmp266
	movq	8(%rax), %rax	# decl_21(D)->common.type, D.18445
	movzbl	61(%rax), %eax	# *_70, tmp269
	shrb	%al	# D.18452
	movzbl	%al, %edx	# D.18452, D.18449
	movl	-68(%rbp), %eax	# reg_number, tmp270
	movl	%edx, %esi	# D.18449,
	movl	%eax, %edi	# tmp270,
	call	ix86_hard_regno_mode_ok	#
	testl	%eax, %eax	# D.18453
	jne	.L146	#,
	.loc 1 888 0
	movq	-88(%rbp), %rax	# decl, tmp271
	movl	$.LC31, %esi	#,
	movq	%rax, %rdi	# tmp271,
	movl	$0, %eax	#,
	call	error_with_decl	#
	jmp	.L142	#
.L146:
.LBB8:
	.loc 1 895 0
	movq	-88(%rbp), %rax	# decl, tmp272
	movq	104(%rax), %rax	# decl_21(D)->decl.initial, D.18445
	testq	%rax, %rax	# D.18445
	je	.L147	#,
	.loc 1 895 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# decl, tmp273
	movzbl	18(%rax), %eax	# *decl_21(D), D.18447
	andl	$4, %eax	#, D.18447
	testb	%al, %al	# D.18447
	je	.L147	#,
	.loc 1 897 0 is_stmt 1
	movq	-88(%rbp), %rax	# decl, tmp274
	movq	$0, 104(%rax)	#, decl_21(D)->decl.initial
	.loc 1 898 0
	movl	$.LC32, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.L147:
	.loc 1 900 0
	movq	-88(%rbp), %rax	# decl, tmp275
	movzbl	17(%rax), %eax	# *decl_21(D), D.18447
	andl	$8, %eax	#, D.18447
	testb	%al, %al	# D.18447
	je	.L148	#,
	.loc 1 901 0
	movl	$.LC33, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L148:
	.loc 1 908 0
	movq	-88(%rbp), %rax	# decl, tmp276
	movzbl	48(%rax), %eax	# decl_21(D)->decl.mode, D.18447
	movzbl	%al, %eax	# D.18447, D.18449
	movl	-68(%rbp), %edx	# reg_number, tmp277
	movl	%eax, %esi	# D.18449,
	movl	$61, %edi	#,
	call	gen_rtx_fmt_i0	#
	movq	-88(%rbp), %rdx	# decl, tmp278
	movq	%rax, 144(%rdx)	# D.18448, decl_21(D)->decl.rtl
	.loc 1 909 0
	movq	-88(%rbp), %rax	# decl, tmp279
	movq	144(%rax), %rax	# decl_21(D)->decl.rtl, D.18448
	testq	%rax, %rax	# D.18448
	je	.L149	#,
	.loc 1 909 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# decl, tmp280
	movq	144(%rax), %rax	# decl_21(D)->decl.rtl, iftmp.40
	jmp	.L150	#
.L149:
	.loc 1 909 0 discriminator 2
	movq	-88(%rbp), %rax	# decl, tmp281
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp281,
	call	make_decl_rtl	#
	movq	-88(%rbp), %rax	# decl, tmp282
	movq	144(%rax), %rax	# decl_21(D)->decl.rtl, iftmp.40
.L150:
	.loc 1 909 0 discriminator 3
	movl	-68(%rbp), %edx	# reg_number, reg_number.41
	movl	%edx, 16(%rax)	# reg_number.41, iftmp.40_7->fld[1].rtuint
	.loc 1 910 0 is_stmt 1 discriminator 3
	movq	-88(%rbp), %rax	# decl, tmp283
	movq	144(%rax), %rax	# decl_21(D)->decl.rtl, D.18448
	testq	%rax, %rax	# D.18448
	je	.L151	#,
	.loc 1 910 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# decl, tmp284
	movq	144(%rax), %rax	# decl_21(D)->decl.rtl, iftmp.42
	jmp	.L152	#
.L151:
	.loc 1 910 0 discriminator 2
	movq	-88(%rbp), %rax	# decl, tmp285
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp285,
	call	make_decl_rtl	#
	movq	-88(%rbp), %rax	# decl, tmp286
	movq	144(%rax), %rax	# decl_21(D)->decl.rtl, iftmp.42
.L152:
	.loc 1 910 0 discriminator 3
	movzbl	3(%rax), %edx	# iftmp.42_8->volatil, tmp289
	orl	$8, %edx	#, tmp290
	movb	%dl, 3(%rax)	# tmp290, iftmp.42_8->volatil
	.loc 1 912 0 is_stmt 1 discriminator 3
	movq	-88(%rbp), %rax	# decl, tmp291
	movzbl	18(%rax), %eax	# *decl_21(D), D.18447
	andl	$4, %eax	#, D.18447
	testb	%al, %al	# D.18447
	je	.L153	#,
	.loc 1 919 0
	cmpl	$7, -68(%rbp)	#, reg_number
	jle	.L154	#,
	.loc 1 919 0 is_stmt 0 discriminator 1
	cmpl	$15, -68(%rbp)	#, reg_number
	jle	.L155	#,
.L154:
	.loc 1 919 0 discriminator 2
	cmpl	$20, -68(%rbp)	#, reg_number
	jle	.L156	#,
	.loc 1 919 0 discriminator 1
	cmpl	$28, -68(%rbp)	#, reg_number
	jle	.L155	#,
.L156:
	.loc 1 919 0 discriminator 2
	cmpl	$44, -68(%rbp)	#, reg_number
	jle	.L157	#,
	.loc 1 919 0 discriminator 1
	cmpl	$52, -68(%rbp)	#, reg_number
	jle	.L155	#,
.L157:
	.loc 1 919 0 discriminator 2
	cmpl	$28, -68(%rbp)	#, reg_number
	jle	.L158	#,
	.loc 1 919 0 discriminator 1
	cmpl	$36, -68(%rbp)	#, reg_number
	jg	.L158	#,
.L155:
	movq	-88(%rbp), %rax	# decl, tmp292
	movzbl	48(%rax), %eax	# decl_21(D)->decl.mode, D.18447
	movzbl	%al, %eax	# D.18447, D.18453
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.18454
	cmpl	$5, %eax	#, D.18454
	je	.L159	#,
	.loc 1 919 0 discriminator 2
	movq	-88(%rbp), %rax	# decl, tmp294
	movzbl	48(%rax), %eax	# decl_21(D)->decl.mode, D.18447
	movzbl	%al, %eax	# D.18447, D.18453
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.18454
	cmpl	$6, %eax	#, D.18454
	jne	.L160	#,
.L159:
	.loc 1 919 0 discriminator 1
	movl	$2, %eax	#, iftmp.44
	jmp	.L161	#
.L160:
	movl	$1, %eax	#, iftmp.44
.L161:
	.loc 1 919 0 discriminator 3
	jmp	.L162	#
.L158:
	.loc 1 919 0 discriminator 2
	movq	-88(%rbp), %rax	# decl, tmp296
	movzbl	48(%rax), %eax	# decl_21(D)->decl.mode, D.18447
	cmpb	$18, %al	#, D.18447
	jne	.L163	#,
	.loc 1 919 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.47
	andl	$33554432, %eax	#, D.18453
	testl	%eax, %eax	# D.18453
	je	.L164	#,
	movl	$2, %eax	#, iftmp.46
	jmp	.L162	#
.L164:
	.loc 1 919 0 discriminator 2
	movl	$3, %eax	#, iftmp.46
	jmp	.L162	#
.L163:
	movq	-88(%rbp), %rax	# decl, tmp297
	movzbl	48(%rax), %eax	# decl_21(D)->decl.mode, D.18447
	cmpb	$24, %al	#, D.18447
	jne	.L167	#,
	.loc 1 919 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.50
	andl	$33554432, %eax	#, D.18453
	testl	%eax, %eax	# D.18453
	je	.L168	#,
	movl	$4, %eax	#, iftmp.49
	jmp	.L162	#
.L168:
	.loc 1 919 0 discriminator 2
	movl	$6, %eax	#, iftmp.49
	jmp	.L162	#
.L167:
	movq	-88(%rbp), %rax	# decl, tmp298
	movzbl	48(%rax), %eax	# decl_21(D)->decl.mode, D.18447
	movzbl	%al, %eax	# D.18447, D.18453
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.18447
	movzbl	%al, %edx	# D.18447, D.18453
	movl	target_flags(%rip), %eax	# target_flags, target_flags.52
	andl	$33554432, %eax	#, D.18453
	testl	%eax, %eax	# D.18453
	je	.L171	#,
	.loc 1 919 0 discriminator 1
	movl	$8, %eax	#, iftmp.51
	jmp	.L172	#
.L171:
	.loc 1 919 0 discriminator 2
	movl	$4, %eax	#, iftmp.51
.L172:
	.loc 1 919 0 discriminator 3
	addl	%edx, %eax	# D.18453, D.18453
	subl	$1, %eax	#, D.18453
	movl	target_flags(%rip), %edx	# target_flags, target_flags.54
	andl	$33554432, %edx	#, D.18453
	testl	%edx, %edx	# D.18453
	je	.L173	#,
	.loc 1 919 0 discriminator 1
	movl	$8, %ebx	#, iftmp.53
	jmp	.L174	#
.L173:
	.loc 1 919 0 discriminator 2
	movl	$4, %ebx	#, iftmp.53
.L174:
	.loc 1 919 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.53
.L162:
	movl	%eax, -76(%rbp)	# iftmp.43, nregs
	.loc 1 920 0 is_stmt 1 discriminator 3
	jmp	.L175	#
.L176:
	.loc 1 921 0
	subl	$1, -76(%rbp)	#, nregs
	movl	-68(%rbp), %eax	# reg_number, tmp302
	movl	-76(%rbp), %edx	# nregs, tmp303
	addl	%edx, %eax	# tmp303, D.18453
	movl	%eax, %edi	# D.18453,
	call	globalize_reg	#
.L175:
	.loc 1 920 0 discriminator 1
	cmpl	$0, -76(%rbp)	#, nregs
	jg	.L176	#,
.L153:
	.loc 1 925 0
	jmp	.L128	#
.L142:
.LBE8:
	.loc 1 932 0
	cmpl	$0, -68(%rbp)	#, reg_number
	jns	.L177	#,
	.loc 1 932 0 is_stmt 0 discriminator 1
	cmpl	$-3, -68(%rbp)	#, reg_number
	jne	.L178	#,
.L177:
	.loc 1 933 0 is_stmt 1
	movq	-88(%rbp), %rax	# decl, tmp304
	movl	$.LC34, %esi	#,
	movq	%rax, %rdi	# tmp304,
	movl	$0, %eax	#,
	call	error_with_decl	#
.L178:
	.loc 1 938 0
	movq	-88(%rbp), %rax	# decl, tmp305
	movzbl	16(%rax), %eax	# decl_21(D)->common.code, D.18447
	cmpb	$34, %al	#, D.18447
	jne	.L179	#,
	.loc 1 939 0
	movq	-88(%rbp), %rax	# decl, tmp306
	movq	128(%rax), %rax	# decl_21(D)->decl.section_name, D.18445
	testq	%rax, %rax	# D.18445
	je	.L179	#,
	.loc 1 940 0
	movq	-88(%rbp), %rax	# decl, tmp307
	movq	104(%rax), %rax	# decl_21(D)->decl.initial, D.18445
	testq	%rax, %rax	# D.18445
	jne	.L179	#,
	.loc 1 941 0
	movq	-88(%rbp), %rax	# decl, tmp308
	movzbl	50(%rax), %eax	# *decl_21(D), D.18447
	andl	$2, %eax	#, D.18447
	testb	%al, %al	# D.18447
	je	.L179	#,
	.loc 1 942 0
	movq	-88(%rbp), %rax	# decl, tmp309
	movzbl	50(%rax), %edx	#, tmp312
	andl	$-3, %edx	#, tmp313
	movb	%dl, 50(%rax)	# tmp313,
.L179:
	.loc 1 948 0
	cmpl	$0, -72(%rbp)	#, top_level
	jne	.L180	#,
	.loc 1 948 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# decl, tmp314
	movzbl	18(%rax), %eax	# *decl_21(D), D.18447
	andl	$8, %eax	#, D.18447
	testb	%al, %al	# D.18447
	jne	.L180	#,
	.loc 1 949 0 is_stmt 1
	movq	-88(%rbp), %rax	# decl, tmp315
	movq	80(%rax), %rax	# decl_21(D)->decl.context, D.18445
	testq	%rax, %rax	# D.18445
	je	.L181	#,
	.loc 1 949 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# decl, tmp316
	movq	80(%rax), %rax	# decl_21(D)->decl.context, D.18445
	movzbl	16(%rax), %eax	# _140->common.code, D.18447
	movzbl	%al, %eax	# D.18447, D.18453
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.18455
	cmpb	$116, %al	#, D.18455
	je	.L180	#,
.L181:
	.loc 1 950 0 is_stmt 1
	cmpq	$0, -96(%rbp)	#, asmspec
	jne	.L180	#,
	.loc 1 951 0
	movq	-88(%rbp), %rax	# decl, tmp318
	movq	72(%rax), %rax	# decl_21(D)->decl.name, D.18445
	movq	32(%rax), %rax	# _144->identifier.id.str, D.18456
	cmpq	-64(%rbp), %rax	# name, D.18456
	jne	.L180	#,
.LBB9:
	.loc 1 955 0
	movq	-64(%rbp), %rax	# name, tmp319
	movq	%rax, %rdi	# tmp319,
	call	strlen	#
	addq	$10, %rax	#, D.18450
	leaq	15(%rax), %rdx	#, tmp320
	movl	$16, %eax	#, tmp397
	subq	$1, %rax	#, tmp321
	addq	%rdx, %rax	# tmp320, tmp322
	movl	$16, %ebx	#, tmp398
	movl	$0, %edx	#, tmp325
	divq	%rbx	# tmp398
	imulq	$16, %rax, %rax	#, tmp324, tmp326
	subq	%rax, %rsp	# tmp326,
	movq	%rsp, %rax	#, tmp327
	addq	$15, %rax	#, tmp328
	shrq	$4, %rax	#, tmp329
	salq	$4, %rax	#, tmp330
	movq	%rax, -40(%rbp)	# tmp330, label
	movl	var_labelno(%rip), %ecx	# var_labelno, var_labelno.55
	movq	-64(%rbp), %rdx	# name, tmp331
	movq	-40(%rbp), %rax	# label, tmp332
	movl	$.LC35, %esi	#,
	movq	%rax, %rdi	# tmp332,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 1 956 0
	movl	var_labelno(%rip), %eax	# var_labelno, var_labelno.56
	addl	$1, %eax	#, var_labelno.57
	movl	%eax, var_labelno(%rip)	# var_labelno.57, var_labelno
	.loc 1 957 0
	movq	-40(%rbp), %rax	# label, tmp333
	movq	%rax, -56(%rbp)	# tmp333, new_name
.L180:
.LBE9:
	.loc 1 960 0
	movq	-64(%rbp), %rax	# name, tmp334
	cmpq	-56(%rbp), %rax	# new_name, tmp334
	je	.L182	#,
	.loc 1 962 0
	movq	-56(%rbp), %rax	# new_name, tmp335
	movq	%rax, %rdi	# tmp335,
	call	get_identifier	#
	movq	-88(%rbp), %rdx	# decl, tmp336
	movq	%rax, 120(%rdx)	# D.18445, decl_21(D)->decl.assembler_name
	.loc 1 963 0
	movq	-88(%rbp), %rax	# decl, tmp337
	movq	120(%rax), %rax	# decl_21(D)->decl.assembler_name, D.18445
	testq	%rax, %rax	# D.18445
	jne	.L183	#,
	.loc 1 963 0 is_stmt 0 discriminator 1
	movq	lang_set_decl_assembler_name(%rip), %rax	# lang_set_decl_assembler_name, lang_set_decl_assembler_name.58
	movq	-88(%rbp), %rdx	# decl, tmp338
	movq	%rdx, %rdi	# tmp338,
	call	*%rax	# lang_set_decl_assembler_name.58
.L183:
	.loc 1 963 0 discriminator 2
	movq	-88(%rbp), %rax	# decl, tmp339
	movq	120(%rax), %rax	# decl_21(D)->decl.assembler_name, D.18445
	movq	32(%rax), %rax	# _156->identifier.id.str, tmp340
	movq	%rax, -64(%rbp)	# tmp340, name
.L182:
	.loc 1 968 0 is_stmt 1
	movl	flag_volatile_global(%rip), %eax	# flag_volatile_global, flag_volatile_global.59
	testl	%eax, %eax	# flag_volatile_global.59
	je	.L184	#,
	.loc 1 968 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# decl, tmp341
	movzbl	16(%rax), %eax	# decl_21(D)->common.code, D.18447
	cmpb	$34, %al	#, D.18447
	jne	.L184	#,
	.loc 1 969 0 is_stmt 1
	movq	-88(%rbp), %rax	# decl, tmp342
	movzbl	18(%rax), %eax	# *decl_21(D), D.18447
	andl	$8, %eax	#, D.18447
	testb	%al, %al	# D.18447
	jne	.L185	#,
.L184:
	.loc 1 970 0
	movl	flag_volatile_static(%rip), %eax	# flag_volatile_static, flag_volatile_static.60
	testl	%eax, %eax	# flag_volatile_static.60
	je	.L186	#,
	.loc 1 970 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# decl, tmp343
	movzbl	16(%rax), %eax	# decl_21(D)->common.code, D.18447
	cmpb	$34, %al	#, D.18447
	jne	.L186	#,
	.loc 1 971 0 is_stmt 1
	movq	-88(%rbp), %rax	# decl, tmp344
	movzbl	18(%rax), %eax	# *decl_21(D), D.18447
	andl	$8, %eax	#, D.18447
	testb	%al, %al	# D.18447
	jne	.L185	#,
	.loc 1 971 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# decl, tmp345
	movzbl	18(%rax), %eax	# *decl_21(D), D.18447
	andl	$4, %eax	#, D.18447
	testb	%al, %al	# D.18447
	je	.L186	#,
.L185:
	.loc 1 972 0 is_stmt 1
	movq	-88(%rbp), %rax	# decl, tmp346
	movzbl	17(%rax), %edx	#, tmp349
	orl	$1, %edx	#, tmp350
	movb	%dl, 17(%rax)	# tmp350,
.L186:
	.loc 1 974 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.62
	andl	$33554432, %eax	#, D.18453
	testl	%eax, %eax	# D.18453
	je	.L187	#,
	.loc 1 974 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.61
	jmp	.L188	#
.L187:
	.loc 1 974 0 discriminator 2
	movl	$4, %eax	#, iftmp.61
.L188:
	.loc 1 974 0 discriminator 3
	movq	-64(%rbp), %rdx	# name, tmp351
	movl	%eax, %esi	# iftmp.61,
	movl	$68, %edi	#,
	call	gen_rtx_fmt_s	#
	movq	%rax, %rdx	#, D.18448
	movq	-88(%rbp), %rax	# decl, tmp352
	movzbl	48(%rax), %eax	# decl_21(D)->decl.mode, D.18447
	movzbl	%al, %eax	# D.18447, D.18449
	movq	%rdx, %rsi	# D.18448,
	movl	%eax, %edi	# D.18449,
	call	gen_rtx_MEM	#
	movq	%rax, -32(%rbp)	# tmp353, x
	.loc 1 975 0 is_stmt 1 discriminator 3
	movq	-32(%rbp), %rax	# x, tmp354
	movq	8(%rax), %rax	# x_175->fld[0].rtx, D.18448
	movq	-88(%rbp), %rdx	# decl, tmp355
	movzbl	50(%rdx), %edx	# *decl_21(D), tmp358
	shrb	$7, %dl	#, D.18457
	andl	$1, %edx	#, tmp360
	movl	%edx, %ecx	# tmp360, tmp361
	sall	$6, %ecx	#, tmp361
	movzbl	3(%rax), %edx	# _176->integrated, tmp362
	andl	$-65, %edx	#, tmp363
	orl	%ecx, %edx	# tmp361, tmp364
	movb	%dl, 3(%rax)	# tmp364, _176->integrated
	.loc 1 976 0 discriminator 3
	movq	-88(%rbp), %rax	# decl, tmp365
	movzbl	16(%rax), %eax	# decl_21(D)->common.code, D.18447
	cmpb	$30, %al	#, D.18447
	je	.L189	#,
	.loc 1 977 0
	movq	-88(%rbp), %rcx	# decl, tmp366
	movq	-32(%rbp), %rax	# x, tmp367
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp366,
	movq	%rax, %rdi	# tmp367,
	call	set_mem_attributes	#
.L189:
	.loc 1 978 0
	movq	-88(%rbp), %rax	# decl, tmp368
	movq	-32(%rbp), %rdx	# x, tmp369
	movq	%rdx, 144(%rax)	# tmp369, decl_21(D)->decl.rtl
	.loc 1 985 0
	movl	flag_pic(%rip), %eax	# flag_pic, flag_pic.63
	testl	%eax, %eax	# flag_pic.63
	je	.L128	#,
.LBB10:
	.loc 1 985 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# decl, tmp370
	movzbl	16(%rax), %eax	# decl_21(D)->common.code, D.18447
	movzbl	%al, %eax	# D.18447, D.18453
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.18455
	cmpb	$100, %al	#, D.18455
	je	.L190	#,
	movq	-88(%rbp), %rax	# decl, tmp372
	movq	24(%rax), %rax	# decl_21(D)->real_cst.rtl, iftmp.64
	jmp	.L191	#
.L190:
	.loc 1 985 0 discriminator 2
	movq	-88(%rbp), %rax	# decl, tmp373
	movq	144(%rax), %rax	# decl_21(D)->decl.rtl, D.18448
	testq	%rax, %rax	# D.18448
	je	.L192	#,
	.loc 1 985 0 discriminator 1
	movq	-88(%rbp), %rax	# decl, tmp374
	movq	144(%rax), %rax	# decl_21(D)->decl.rtl, iftmp.65
	jmp	.L191	#
.L192:
	.loc 1 985 0 discriminator 2
	movq	-88(%rbp), %rax	# decl, tmp375
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp375,
	call	make_decl_rtl	#
	movq	-88(%rbp), %rax	# decl, tmp376
	movq	144(%rax), %rax	# decl_21(D)->decl.rtl, iftmp.65
.L191:
	.loc 1 985 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.64, rtl
	movq	-24(%rbp), %rax	# rtl, tmp377
	movzwl	(%rax), %eax	# rtl_188->code, D.18458
	cmpw	$66, %ax	#, D.18458
	jne	.L128	#,
	.loc 1 985 0 discriminator 1
	movq	ix86_debug_addr_string(%rip), %rax	# ix86_debug_addr_string, ix86_debug_addr_string.66
	testq	%rax, %rax	# ix86_debug_addr_string.66
	je	.L194	#,
	movq	-88(%rbp), %rax	# decl, tmp378
	movzbl	16(%rax), %eax	# decl_21(D)->common.code, D.18447
	movzbl	%al, %eax	# D.18447, D.18453
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.18455
	cmpb	$100, %al	#, D.18455
	jne	.L194	#,
	movq	-88(%rbp), %rax	# decl, tmp380
	movzbl	18(%rax), %eax	# *decl_21(D), tmp383
	shrb	$3, %al	#, D.18457
	andl	$1, %eax	#, D.18457
	movzbl	%al, %ecx	# D.18457, D.18453
	movq	-88(%rbp), %rax	# decl, tmp384
	movq	72(%rax), %rax	# decl_21(D)->decl.name, D.18445
	movq	32(%rax), %rdx	# _196->identifier.id.str, D.18456
	movq	stderr(%rip), %rax	# stderr, stderr.67
	movl	$.LC36, %esi	#,
	movq	%rax, %rdi	# stderr.67,
	movl	$0, %eax	#,
	call	fprintf	#
.L194:
	.loc 1 985 0 discriminator 2
	movq	-24(%rbp), %rax	# rtl, tmp385
	movq	8(%rax), %rax	# rtl_188->fld[0].rtx, D.18448
	movq	-88(%rbp), %rdx	# decl, tmp386
	movzbl	16(%rdx), %edx	# decl_21(D)->common.code, D.18447
	movzbl	%dl, %edx	# D.18447, D.18453
	movslq	%edx, %rdx	# D.18453, tmp387
	movzbl	tree_code_type(%rdx), %edx	# tree_code_type, D.18455
	cmpb	$100, %dl	#, D.18455
	jne	.L195	#,
	movq	-88(%rbp), %rdx	# decl, tmp388
	movzbl	18(%rdx), %edx	# *decl_21(D), D.18447
	andl	$8, %edx	#, D.18447
	testb	%dl, %dl	# D.18447
	jne	.L196	#,
.L195:
	.loc 1 985 0 discriminator 1
	movl	$1, %edx	#, iftmp.68
	jmp	.L197	#
.L196:
	.loc 1 985 0 discriminator 3
	movl	$0, %edx	#, iftmp.68
.L197:
	.loc 1 985 0 discriminator 4
	andl	$1, %edx	#, D.18457
	andl	$1, %edx	#, tmp390
	leal	0(,%rdx,8), %ecx	#, tmp391
	movzbl	3(%rax), %edx	# _199->volatil, tmp392
	andl	$-9, %edx	#, tmp393
	orl	%ecx, %edx	# tmp391, tmp394
	movb	%dl, 3(%rax)	# tmp394, _199->volatil
.L128:
.LBE10:
	.loc 1 987 0 is_stmt 1
	movq	-8(%rbp), %rbx	#,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	make_decl_rtl, .-make_decl_rtl
	.globl	make_var_volatile
	.type	make_var_volatile, @function
make_var_volatile:
.LFB27:
	.loc 1 995 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# var, var
	.loc 1 996 0
	movq	-8(%rbp), %rax	# var, tmp64
	movq	144(%rax), %rax	# var_3(D)->decl.rtl, D.18468
	testq	%rax, %rax	# D.18468
	je	.L199	#,
	.loc 1 996 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# var, tmp65
	movq	144(%rax), %rax	# var_3(D)->decl.rtl, iftmp.69
	jmp	.L200	#
.L199:
	.loc 1 996 0 discriminator 2
	movq	-8(%rbp), %rax	# var, tmp66
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp66,
	call	make_decl_rtl	#
	movq	-8(%rbp), %rax	# var, tmp67
	movq	144(%rax), %rax	# var_3(D)->decl.rtl, iftmp.69
.L200:
	.loc 1 996 0 discriminator 3
	movzwl	(%rax), %eax	# iftmp.69_1->code, D.18469
	cmpw	$66, %ax	#, D.18469
	je	.L201	#,
	.loc 1 997 0 is_stmt 1
	movl	$__FUNCTION__.13064, %edx	#,
	movl	$997, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L201:
	.loc 1 999 0
	movq	-8(%rbp), %rax	# var, tmp68
	movq	144(%rax), %rax	# var_3(D)->decl.rtl, D.18468
	testq	%rax, %rax	# D.18468
	je	.L202	#,
	.loc 1 999 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# var, tmp69
	movq	144(%rax), %rax	# var_3(D)->decl.rtl, iftmp.70
	jmp	.L203	#
.L202:
	.loc 1 999 0 discriminator 2
	movq	-8(%rbp), %rax	# var, tmp70
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp70,
	call	make_decl_rtl	#
	movq	-8(%rbp), %rax	# var, tmp71
	movq	144(%rax), %rax	# var_3(D)->decl.rtl, iftmp.70
.L203:
	.loc 1 999 0 discriminator 3
	movzbl	3(%rax), %edx	# iftmp.70_2->volatil, tmp74
	orl	$8, %edx	#, tmp75
	movb	%dl, 3(%rax)	# tmp75, iftmp.70_2->volatil
	.loc 1 1000 0 is_stmt 1 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	make_var_volatile, .-make_var_volatile
	.globl	assemble_constant_align
	.type	assemble_constant_align, @function
assemble_constant_align:
.LFB28:
	.loc 1 1007 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# exp, exp
	.loc 1 1011 0
	movq	-24(%rbp), %rax	# exp, tmp69
	movq	8(%rax), %rax	# exp_1(D)->common.type, D.18470
	movl	64(%rax), %eax	# _2->type.align, D.18471
	movl	%eax, -4(%rbp)	# D.18471, align
	.loc 1 1013 0
	movl	-4(%rbp), %edx	# align, tmp70
	movq	-24(%rbp), %rax	# exp, tmp71
	movl	%edx, %esi	# tmp70,
	movq	%rax, %rdi	# tmp71,
	call	ix86_constant_alignment	#
	movl	%eax, -4(%rbp)	# tmp72, align
	.loc 1 1016 0
	cmpl	$8, -4(%rbp)	#, align
	jle	.L204	#,
	.loc 1 1018 0
	movl	-4(%rbp), %eax	# align, tmp73
	leal	7(%rax), %edx	#, tmp75
	testl	%eax, %eax	# tmp74
	cmovs	%edx, %eax	# tmp75,, tmp74
	sarl	$3, %eax	#, tmp76
	cltq
	movq	%rax, %rdi	# D.18473,
	call	floor_log2_wide	#
	testl	%eax, %eax	# D.18472
	je	.L204	#,
	.loc 1 1018 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# align, tmp77
	leal	7(%rax), %edx	#, tmp79
	testl	%eax, %eax	# tmp78
	cmovs	%edx, %eax	# tmp79,, tmp78
	sarl	$3, %eax	#, tmp80
	cltq
	movq	%rax, %rdi	# D.18473,
	call	floor_log2_wide	#
	movl	$1, %edx	#, tmp81
	movl	%eax, %ecx	# D.18472, tmp82
	sall	%cl, %edx	# tmp82, D.18472
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.71
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# asm_out_file.71,
	movl	$0, %eax	#,
	call	fprintf	#
.L204:
	.loc 1 1020 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	assemble_constant_align, .-assemble_constant_align
	.section	.rodata
.LC37:
	.string	"\t%s\n"
	.text
	.globl	assemble_asm
	.type	assemble_asm, @function
assemble_asm:
.LFB29:
	.loc 1 1028 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# string, string
	.loc 1 1029 0
	call	app_enable	#
	.loc 1 1031 0
	movq	-8(%rbp), %rax	# string, tmp62
	movzbl	16(%rax), %eax	# string_2(D)->common.code, D.18474
	cmpb	$121, %al	#, D.18474
	jne	.L207	#,
	.loc 1 1032 0
	movq	-8(%rbp), %rax	# string, tmp63
	movq	32(%rax), %rax	# string_2(D)->exp.operands, tmp64
	movq	%rax, -8(%rbp)	# tmp64, string
.L207:
	.loc 1 1034 0
	movq	-8(%rbp), %rax	# string, tmp65
	movq	40(%rax), %rdx	# string_1->string.pointer, D.18475
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.72
	movl	$.LC37, %esi	#,
	movq	%rax, %rdi	# asm_out_file.72,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1035 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	assemble_asm, .-assemble_asm
	.section	.rodata
.LC38:
	.string	"\t.stabs\t"
.LC39:
	.string	"%s\"___DTOR_LIST__\",22,0,0,"
	.text
	.globl	default_stabs_asm_out_destructor
	.type	default_stabs_asm_out_destructor, @function
default_stabs_asm_out_destructor:
.LFB30:
	.loc 1 1045 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# symbol, symbol
	movl	%esi, -12(%rbp)	# priority, priority
	.loc 1 1049 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.73
	movl	$.LC38, %edx	#,
	movl	$.LC39, %esi	#,
	movq	%rax, %rdi	# asm_out_file.73,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1050 0
	movq	-8(%rbp), %rax	# symbol, tmp63
	movq	8(%rax), %rdx	# symbol_2(D)->fld[0].rtstr, D.18477
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.74
	movq	%rdx, %rsi	# D.18477,
	movq	%rax, %rdi	# asm_out_file.74,
	call	assemble_name	#
	.loc 1 1051 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.75
	movq	%rax, %rsi	# asm_out_file.75,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 1052 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	default_stabs_asm_out_destructor, .-default_stabs_asm_out_destructor
	.section	.rodata
.LC40:
	.string	".dtors"
.LC41:
	.string	".dtors.%.5u"
	.text
	.globl	default_named_section_asm_out_destructor
	.type	default_named_section_asm_out_destructor, @function
default_named_section_asm_out_destructor:
.LFB31:
	.loc 1 1058 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# symbol, symbol
	movl	%esi, -60(%rbp)	# priority, priority
	.loc 1 1058 0
	movq	%fs:40, %rax	#, tmp74
	movq	%rax, -8(%rbp)	# tmp74, D.18481
	xorl	%eax, %eax	# tmp74
	.loc 1 1059 0
	movq	$.LC40, -40(%rbp)	#, section
	.loc 1 1063 0
	cmpl	$65535, -60(%rbp)	#, priority
	je	.L210	#,
	.loc 1 1065 0
	movl	$65535, %eax	#, tmp69
	subl	-60(%rbp), %eax	# priority, D.18480
	movl	%eax, %edx	# D.18480, D.18480
	leaq	-32(%rbp), %rax	#, tmp70
	movl	$.LC41, %esi	#,
	movq	%rax, %rdi	# tmp70,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 1 1070 0
	leaq	-32(%rbp), %rax	#, tmp71
	movq	%rax, -40(%rbp)	# tmp71, section
.L210:
	.loc 1 1073 0
	movq	-40(%rbp), %rax	# section, tmp72
	movl	$512, %esi	#,
	movq	%rax, %rdi	# tmp72,
	call	named_section_flags	#
	.loc 1 1074 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.77
	andl	$33554432, %eax	#, D.18480
	testl	%eax, %eax	# D.18480
	je	.L211	#,
	.loc 1 1074 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.76
	jmp	.L212	#
.L211:
	.loc 1 1074 0 discriminator 2
	movl	$32, %eax	#, iftmp.76
.L212:
	.loc 1 1074 0 discriminator 3
	movl	%eax, %edi	# iftmp.76,
	call	assemble_align	#
	.loc 1 1075 0 is_stmt 1 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.79
	andl	$33554432, %eax	#, D.18480
	testl	%eax, %eax	# D.18480
	je	.L213	#,
	.loc 1 1075 0 is_stmt 0 discriminator 1
	movl	$64, %edx	#, iftmp.78
	jmp	.L214	#
.L213:
	.loc 1 1075 0 discriminator 2
	movl	$32, %edx	#, iftmp.78
.L214:
	.loc 1 1075 0 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.81
	andl	$33554432, %eax	#, D.18480
	testl	%eax, %eax	# D.18480
	je	.L215	#,
	.loc 1 1075 0 discriminator 4
	movl	$8, %eax	#, iftmp.80
	jmp	.L216	#
.L215:
	.loc 1 1075 0 discriminator 5
	movl	$4, %eax	#, iftmp.80
.L216:
	.loc 1 1075 0 discriminator 6
	movq	-56(%rbp), %rdi	# symbol, tmp73
	movl	$1, %ecx	#,
	movl	%eax, %esi	# iftmp.80,
	call	assemble_integer	#
	.loc 1 1076 0 is_stmt 1 discriminator 6
	movq	-8(%rbp), %rax	# D.18481, tmp75
	xorq	%fs:40, %rax	#, tmp75
	je	.L217	#,
	.loc 1 1076 0 is_stmt 0
	call	__stack_chk_fail	#
.L217:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	default_named_section_asm_out_destructor, .-default_named_section_asm_out_destructor
	.section	.rodata
.LC42:
	.string	"%s\"___CTOR_LIST__\",22,0,0,"
	.text
	.globl	default_stabs_asm_out_constructor
	.type	default_stabs_asm_out_constructor, @function
default_stabs_asm_out_constructor:
.LFB32:
	.loc 1 1107 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# symbol, symbol
	movl	%esi, -12(%rbp)	# priority, priority
	.loc 1 1111 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.82
	movl	$.LC38, %edx	#,
	movl	$.LC42, %esi	#,
	movq	%rax, %rdi	# asm_out_file.82,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1112 0
	movq	-8(%rbp), %rax	# symbol, tmp63
	movq	8(%rax), %rdx	# symbol_2(D)->fld[0].rtstr, D.18484
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.83
	movq	%rdx, %rsi	# D.18484,
	movq	%rax, %rdi	# asm_out_file.83,
	call	assemble_name	#
	.loc 1 1113 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.84
	movq	%rax, %rsi	# asm_out_file.84,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 1114 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	default_stabs_asm_out_constructor, .-default_stabs_asm_out_constructor
	.section	.rodata
.LC43:
	.string	".ctors"
.LC44:
	.string	".ctors.%.5u"
	.text
	.globl	default_named_section_asm_out_constructor
	.type	default_named_section_asm_out_constructor, @function
default_named_section_asm_out_constructor:
.LFB33:
	.loc 1 1120 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# symbol, symbol
	movl	%esi, -60(%rbp)	# priority, priority
	.loc 1 1120 0
	movq	%fs:40, %rax	#, tmp74
	movq	%rax, -8(%rbp)	# tmp74, D.18487
	xorl	%eax, %eax	# tmp74
	.loc 1 1121 0
	movq	$.LC43, -40(%rbp)	#, section
	.loc 1 1125 0
	cmpl	$65535, -60(%rbp)	#, priority
	je	.L220	#,
	.loc 1 1127 0
	movl	$65535, %eax	#, tmp69
	subl	-60(%rbp), %eax	# priority, D.18486
	movl	%eax, %edx	# D.18486, D.18486
	leaq	-32(%rbp), %rax	#, tmp70
	movl	$.LC44, %esi	#,
	movq	%rax, %rdi	# tmp70,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 1 1132 0
	leaq	-32(%rbp), %rax	#, tmp71
	movq	%rax, -40(%rbp)	# tmp71, section
.L220:
	.loc 1 1135 0
	movq	-40(%rbp), %rax	# section, tmp72
	movl	$512, %esi	#,
	movq	%rax, %rdi	# tmp72,
	call	named_section_flags	#
	.loc 1 1136 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.86
	andl	$33554432, %eax	#, D.18486
	testl	%eax, %eax	# D.18486
	je	.L221	#,
	.loc 1 1136 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.85
	jmp	.L222	#
.L221:
	.loc 1 1136 0 discriminator 2
	movl	$32, %eax	#, iftmp.85
.L222:
	.loc 1 1136 0 discriminator 3
	movl	%eax, %edi	# iftmp.85,
	call	assemble_align	#
	.loc 1 1137 0 is_stmt 1 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.88
	andl	$33554432, %eax	#, D.18486
	testl	%eax, %eax	# D.18486
	je	.L223	#,
	.loc 1 1137 0 is_stmt 0 discriminator 1
	movl	$64, %edx	#, iftmp.87
	jmp	.L224	#
.L223:
	.loc 1 1137 0 discriminator 2
	movl	$32, %edx	#, iftmp.87
.L224:
	.loc 1 1137 0 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.90
	andl	$33554432, %eax	#, D.18486
	testl	%eax, %eax	# D.18486
	je	.L225	#,
	.loc 1 1137 0 discriminator 4
	movl	$8, %eax	#, iftmp.89
	jmp	.L226	#
.L225:
	.loc 1 1137 0 discriminator 5
	movl	$4, %eax	#, iftmp.89
.L226:
	.loc 1 1137 0 discriminator 6
	movq	-56(%rbp), %rdi	# symbol, tmp73
	movl	$1, %ecx	#,
	movl	%eax, %esi	# iftmp.89,
	call	assemble_integer	#
	.loc 1 1138 0 is_stmt 1 discriminator 6
	movq	-8(%rbp), %rax	# D.18487, tmp75
	xorq	%fs:40, %rax	#, tmp75
	je	.L227	#,
	.loc 1 1138 0 is_stmt 0
	call	__stack_chk_fail	#
.L227:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	default_named_section_asm_out_constructor, .-default_named_section_asm_out_constructor
	.section	.rodata
.LC45:
	.string	"\t.p2align %d\n"
.LC46:
	.string	"\t.p2align %d,,%d\n"
.LC47:
	.string	"function"
	.text
	.globl	assemble_start_function
	.type	assemble_start_function, @function
assemble_start_function:
.LFB34:
	.loc 1 1182 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# decl, decl
	movq	%rsi, -48(%rbp)	# fnname, fnname
	.loc 1 1187 0
	call	app_disable	#
	.loc 1 1190 0
	movq	-40(%rbp), %rdx	# decl, tmp94
	movq	-48(%rbp), %rax	# fnname, tmp95
	movq	%rdx, %rsi	# tmp94,
	movq	%rax, %rdi	# tmp95,
	call	output_constant_pool	#
	.loc 1 1192 0
	movl	flag_function_sections(%rip), %edx	# flag_function_sections, flag_function_sections.91
	movq	-40(%rbp), %rax	# decl, tmp96
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp96,
	call	resolve_unique_section	#
	.loc 1 1193 0
	movq	-40(%rbp), %rax	# decl, tmp97
	movq	%rax, %rdi	# tmp97,
	call	function_section	#
	.loc 1 1196 0
	movl	$2, %edi	#,
	call	floor_log2_wide	#
	movl	%eax, -20(%rbp)	# tmp98, align
	.loc 1 1197 0
	cmpl	$0, -20(%rbp)	#, align
	jle	.L229	#,
	.loc 1 1199 0
	cmpl	$0, -20(%rbp)	#, align
	je	.L229	#,
	.loc 1 1199 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# align, tmp99
	movl	$1, %edx	#, tmp100
	movl	%eax, %ecx	# tmp99, tmp119
	sall	%cl, %edx	# tmp119, D.18490
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.92
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# asm_out_file.92,
	movl	$0, %eax	#,
	call	fprintf	#
.L229:
	.loc 1 1205 0 is_stmt 1
	movl	align_functions_log(%rip), %eax	# align_functions_log, align_functions_log.93
	cmpl	-20(%rbp), %eax	# align, align_functions_log.93
	jle	.L230	#,
	.loc 1 1208 0
	movl	align_functions_log(%rip), %eax	# align_functions_log, align_functions_log.94
	testl	%eax, %eax	# align_functions_log.94
	je	.L230	#,
	.loc 1 1208 0 is_stmt 0 discriminator 1
	movl	align_functions(%rip), %eax	# align_functions, align_functions.95
	cmpl	$1, %eax	#, align_functions.95
	jne	.L231	#,
	movl	align_functions_log(%rip), %edx	# align_functions_log, align_functions_log.96
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.97
	movl	$.LC45, %esi	#,
	movq	%rax, %rdi	# asm_out_file.97,
	movl	$0, %eax	#,
	call	fprintf	#
	jmp	.L230	#
.L231:
	.loc 1 1208 0 discriminator 2
	movl	align_functions(%rip), %eax	# align_functions, align_functions.98
	leal	-1(%rax), %ecx	#, D.18490
	movl	align_functions_log(%rip), %edx	# align_functions_log, align_functions_log.99
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.100
	movl	$.LC46, %esi	#,
	movq	%rax, %rdi	# asm_out_file.100,
	movl	$0, %eax	#,
	call	fprintf	#
.L230:
	.loc 1 1219 0 is_stmt 1
	movq	debug_hooks(%rip), %rax	# debug_hooks, debug_hooks.101
	movq	104(%rax), %rax	# debug_hooks.101_16->begin_function, D.18491
	movq	-40(%rbp), %rdx	# decl, tmp101
	movq	%rdx, %rdi	# tmp101,
	call	*%rax	# D.18491
	.loc 1 1223 0
	movq	-40(%rbp), %rax	# decl, tmp102
	movzbl	18(%rax), %eax	# *decl_2(D), D.18492
	andl	$8, %eax	#, D.18492
	testb	%al, %al	# D.18492
	je	.L232	#,
	.loc 1 1225 0
	movq	first_global_object_name(%rip), %rax	# first_global_object_name, first_global_object_name.102
	testq	%rax, %rax	# first_global_object_name.102
	jne	.L233	#,
.LBB11:
	.loc 1 1230 0
	movq	-48(%rbp), %rax	# fnname, tmp103
	movzbl	(%rax), %eax	# *fnname_1(D), D.18493
	cmpb	$42, %al	#, D.18493
	sete	%al	#, D.18494
	movzbl	%al, %edx	# D.18494, D.18495
	movq	-48(%rbp), %rax	# fnname, tmp107
	addq	%rdx, %rax	# D.18495, tmp106
	movq	%rax, -16(%rbp)	# tmp106, p
	.loc 1 1231 0
	movq	-16(%rbp), %rax	# p, tmp108
	movq	%rax, %rdi	# tmp108,
	call	strlen	#
	addl	$1, %eax	#, D.18496
	movl	%eax, %edi	# D.18490,
	call	permalloc	#
	movq	%rax, -8(%rbp)	# tmp109, name
	.loc 1 1232 0
	movq	-16(%rbp), %rdx	# p, tmp110
	movq	-8(%rbp), %rax	# name, tmp111
	movq	%rdx, %rsi	# tmp110,
	movq	%rax, %rdi	# tmp111,
	call	strcpy	#
	.loc 1 1234 0
	movq	-40(%rbp), %rax	# decl, tmp112
	movzbl	50(%rax), %eax	# *decl_2(D), D.18492
	andl	$-128, %eax	#, D.18492
	testb	%al, %al	# D.18492
	jne	.L234	#,
	.loc 1 1234 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# decl, tmp113
	movzbl	50(%rax), %eax	# *decl_2(D), D.18492
	andl	$8, %eax	#, D.18492
	testb	%al, %al	# D.18492
	jne	.L234	#,
	.loc 1 1235 0 is_stmt 1
	movq	-8(%rbp), %rax	# name, tmp114
	movq	%rax, first_global_object_name(%rip)	# tmp114, first_global_object_name
	jmp	.L233	#
.L234:
	.loc 1 1237 0
	movq	-8(%rbp), %rax	# name, tmp115
	movq	%rax, weak_global_object_name(%rip)	# tmp115, weak_global_object_name
.L233:
.LBE11:
	.loc 1 1240 0
	movq	-40(%rbp), %rax	# decl, tmp116
	movq	%rax, %rdi	# tmp116,
	call	globalize_decl	#
.L232:
	.loc 1 1245 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.103
	movq	%rax, %rcx	# asm_out_file.103,
	movl	$7, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC10, %edi	#,
	call	fwrite	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.104
	movq	-48(%rbp), %rdx	# fnname, tmp117
	movq	%rdx, %rsi	# tmp117,
	movq	%rax, %rdi	# asm_out_file.104,
	call	assemble_name	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.105
	movq	%rax, %rsi	# asm_out_file.105,
	movl	$44, %edi	#,
	call	_IO_putc	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.106
	movl	$.LC47, %edx	#,
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# asm_out_file.106,
	movl	$0, %eax	#,
	call	fprintf	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.107
	movq	%rax, %rsi	# asm_out_file.107,
	movl	$10, %edi	#,
	call	_IO_putc	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.108
	movq	-48(%rbp), %rdx	# fnname, tmp118
	movq	%rdx, %rsi	# tmp118,
	movq	%rax, %rdi	# asm_out_file.108,
	call	assemble_name	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.109
	movq	%rax, %rcx	# asm_out_file.109,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC15, %edi	#,
	call	fwrite	#
	.loc 1 1250 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	assemble_start_function, .-assemble_start_function
	.section	.rodata
.LC48:
	.string	"Lfe"
.LC49:
	.string	"*.%s%u"
.LC50:
	.string	".%s%u:\n"
	.text
	.globl	assemble_end_function
	.type	assemble_end_function, @function
assemble_end_function:
.LFB35:
	.loc 1 1259 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$288, %rsp	#,
	movq	%rdi, -280(%rbp)	# decl, decl
	movq	%rsi, -288(%rbp)	# fnname, fnname
	.loc 1 1259 0
	movq	%fs:40, %rax	#, tmp78
	movq	%rax, -8(%rbp)	# tmp78, D.18500
	xorl	%eax, %eax	# tmp78
	.loc 1 1261 0
	movl	flag_inhibit_size_directive(%rip), %eax	# flag_inhibit_size_directive, flag_inhibit_size_directive.110
	testl	%eax, %eax	# flag_inhibit_size_directive.110
	jne	.L238	#,
.LBB12:
	.loc 1 1261 0 is_stmt 0 discriminator 1
	movl	labelno.13104(%rip), %eax	# labelno, labelno.111
	addl	$1, %eax	#, labelno.112
	movl	%eax, labelno.13104(%rip)	# labelno.112, labelno
	movl	labelno.13104(%rip), %eax	# labelno, labelno.113
	movl	%eax, %edx	# labelno.113, labelno.114
	leaq	-272(%rbp), %rax	#, tmp74
	movl	%edx, %ecx	# labelno.114,
	movl	$.LC48, %edx	#,
	movl	$.LC49, %esi	#,
	movq	%rax, %rdi	# tmp74,
	movl	$0, %eax	#,
	call	sprintf	#
	movl	labelno.13104(%rip), %eax	# labelno, labelno.115
	movl	%eax, %edx	# labelno.115, labelno.116
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.117
	movl	%edx, %ecx	# labelno.116,
	movl	$.LC48, %edx	#,
	movl	$.LC50, %esi	#,
	movq	%rax, %rdi	# asm_out_file.117,
	movl	$0, %eax	#,
	call	fprintf	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.118
	movq	%rax, %rcx	# asm_out_file.118,
	movl	$7, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC13, %edi	#,
	call	fwrite	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.119
	movq	-288(%rbp), %rdx	# fnname, tmp75
	movq	%rdx, %rsi	# tmp75,
	movq	%rax, %rdi	# asm_out_file.119,
	call	assemble_name	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.120
	movq	%rax, %rsi	# asm_out_file.120,
	movl	$44, %edi	#,
	call	fputc	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.121
	leaq	-272(%rbp), %rdx	#, tmp76
	movq	%rdx, %rsi	# tmp76,
	movq	%rax, %rdi	# asm_out_file.121,
	call	assemble_name	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.122
	movq	%rax, %rsi	# asm_out_file.122,
	movl	$45, %edi	#,
	call	fputc	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.123
	movq	-288(%rbp), %rdx	# fnname, tmp77
	movq	%rdx, %rsi	# tmp77,
	movq	%rax, %rdi	# asm_out_file.123,
	call	assemble_name	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.124
	movq	%rax, %rsi	# asm_out_file.124,
	movl	$10, %edi	#,
	call	_IO_putc	#
.L238:
.LBE12:
	.loc 1 1270 0 is_stmt 1
	call	output_after_function_constants	#
	.loc 1 1271 0
	movq	-8(%rbp), %rax	# D.18500, tmp79
	xorq	%fs:40, %rax	#, tmp79
	je	.L237	#,
	call	__stack_chk_fail	#
.L237:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	assemble_end_function, .-assemble_end_function
	.globl	assemble_zeros
	.type	assemble_zeros, @function
assemble_zeros:
.LFB36:
	.loc 1 1278 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# size, size
	.loc 1 1280 0
	movl	flag_syntax_only(%rip), %eax	# flag_syntax_only, flag_syntax_only.125
	testl	%eax, %eax	# flag_syntax_only.125
	je	.L240	#,
	.loc 1 1281 0
	jmp	.L239	#
.L240:
	.loc 1 1286 0
	call	in_text_section	#
	testl	%eax, %eax	# D.18504
	je	.L242	#,
.LBB13:
	.loc 1 1289 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L243	#
.L244:
	.loc 1 1290 0 discriminator 2
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.18505
	movl	$1, %ecx	#,
	movl	$8, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.18505,
	call	assemble_integer	#
	.loc 1 1289 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L243:
	.loc 1 1289 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp63
	cmpl	-20(%rbp), %eax	# size, tmp63
	jl	.L244	#,
.LBE13:
	jmp	.L239	#
.L242:
	.loc 1 1294 0 is_stmt 1
	cmpl	$0, -20(%rbp)	#, size
	jle	.L239	#,
	.loc 1 1295 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.126
	movl	-20(%rbp), %edx	# size, tmp64
	movl	%edx, %ecx	# tmp64,
	movl	$.LC16, %edx	#,
	movl	$.LC17, %esi	#,
	movq	%rax, %rdi	# asm_out_file.126,
	movl	$0, %eax	#,
	call	fprintf	#
.L239:
	.loc 1 1296 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	assemble_zeros, .-assemble_zeros
	.globl	assemble_align
	.type	assemble_align, @function
assemble_align:
.LFB37:
	.loc 1 1303 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# align, align
	.loc 1 1304 0
	cmpl	$8, -4(%rbp)	#, align
	jle	.L245	#,
	.loc 1 1306 0
	movl	-4(%rbp), %eax	# align, tmp67
	leal	7(%rax), %edx	#, tmp69
	testl	%eax, %eax	# tmp68
	cmovs	%edx, %eax	# tmp69,, tmp68
	sarl	$3, %eax	#, tmp70
	cltq
	movq	%rax, %rdi	# D.18507,
	call	floor_log2_wide	#
	testl	%eax, %eax	# D.18506
	je	.L245	#,
	.loc 1 1306 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# align, tmp71
	leal	7(%rax), %edx	#, tmp73
	testl	%eax, %eax	# tmp72
	cmovs	%edx, %eax	# tmp73,, tmp72
	sarl	$3, %eax	#, tmp74
	cltq
	movq	%rax, %rdi	# D.18507,
	call	floor_log2_wide	#
	movl	$1, %edx	#, tmp75
	movl	%eax, %ecx	# D.18506, tmp76
	sall	%cl, %edx	# tmp76, D.18506
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.127
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# asm_out_file.127,
	movl	$0, %eax	#,
	call	fprintf	#
.L245:
	.loc 1 1308 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	assemble_align, .-assemble_align
	.section	.rodata
.LC51:
	.string	"\"\n"
.LC52:
	.string	"\t.string\t"
.LC53:
	.string	"%s\""
.LC55:
	.string	"\\%03o"
.LC56:
	.string	"\t.ascii\t"
	.align 8
.LC54:
	.string	"\001\001\001\001\001\001\001\001btn\001fr\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001"
	.string	""
	.string	"\""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\\"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001"
	.text
	.globl	assemble_string
	.type	assemble_string, @function
assemble_string:
.LFB38:
	.loc 1 1316 0
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
	subq	$56, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -72(%rbp)	# p, p
	movl	%esi, -76(%rbp)	# size, size
	.loc 1 1317 0
	movl	$0, -60(%rbp)	#, pos
	.loc 1 1318 0
	movl	$2000, -52(%rbp)	#, maximum
	.loc 1 1322 0
	jmp	.L248	#
.L270:
.LBB14:
	.loc 1 1324 0
	movl	-60(%rbp), %eax	# pos, tmp98
	movl	-76(%rbp), %edx	# size, tmp99
	subl	%eax, %edx	# tmp98, tmp97
	movl	%edx, %eax	# tmp97, tmp97
	movl	%eax, -56(%rbp)	# tmp97, thissize
	.loc 1 1325 0
	movl	-56(%rbp), %eax	# thissize, tmp100
	cmpl	-52(%rbp), %eax	# maximum, tmp100
	jle	.L249	#,
	.loc 1 1326 0
	movl	-52(%rbp), %eax	# maximum, tmp101
	movl	%eax, -56(%rbp)	# tmp101, thissize
.L249:
.LBB15:
	.loc 1 1328 0
	movq	-72(%rbp), %r12	# p, _ascii_bytes
	movl	-56(%rbp), %eax	# thissize, tmp102
	cltq
	addq	%r12, %rax	# _ascii_bytes, limit
	movq	%rax, -88(%rbp)	# limit, %sfp
	movl	$0, %ebx	#, bytes_in_chunk
	jmp	.L250	#
.L268:
.LBB16:
	.loc 1 1328 0 is_stmt 0 discriminator 2
	cmpl	$59, %ebx	#, bytes_in_chunk
	jbe	.L251	#,
	.loc 1 1328 0 discriminator 1
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.128
	movq	%rax, %rcx	# asm_out_file.128,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC51, %edi	#,
	call	fwrite	#
	movl	$0, %ebx	#, bytes_in_chunk
.L251:
	.loc 1 1328 0 discriminator 2
	movq	%r12, %r13	# _ascii_bytes, p
	jmp	.L252	#
.L254:
	.loc 1 1328 0 discriminator 1
	addq	$1, %r13	#, p
.L252:
	cmpq	-88(%rbp), %r13	# %sfp, p
	jae	.L253	#,
	.loc 1 1328 0 discriminator 2
	movzbl	0(%r13), %eax	# *p_10, D.18509
	testb	%al, %al	# D.18509
	jne	.L254	#,
.L253:
	.loc 1 1328 0 discriminator 3
	cmpq	-88(%rbp), %r13	# %sfp, p
	jae	.L255	#,
	.loc 1 1328 0 discriminator 1
	movq	%r13, %rdx	# p, p.129
	movq	%r12, %rax	# _ascii_bytes, _ascii_bytes.130
	subq	%rax, %rdx	# _ascii_bytes.130, D.18510
	movq	%rdx, %rax	# D.18510, D.18510
	cmpq	$256, %rax	#, D.18510
	jg	.L255	#,
	testl	%ebx, %ebx	# bytes_in_chunk
	je	.L256	#,
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.131
	movq	%rax, %rcx	# asm_out_file.131,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC51, %edi	#,
	call	fwrite	#
	movl	$0, %ebx	#, bytes_in_chunk
.L256:
.LBB17:
	.loc 1 1328 0 discriminator 2
	movq	%r12, %r15	# _ascii_bytes, _limited_str
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.132
	movl	$.LC52, %edx	#,
	movl	$.LC53, %esi	#,
	movq	%rax, %rdi	# asm_out_file.132,
	movl	$0, %eax	#,
	call	fprintf	#
	jmp	.L257	#
.L262:
.LBB18:
	movl	%r12d, %eax	# ch, tmp103
	movzbl	.LC54(%rax), %eax	#, D.18511
	movsbl	%al, %r14d	# D.18511, escape
	testl	%r14d, %r14d	# escape
	je	.L259	#,
	cmpl	$1, %r14d	#, escape
	je	.L260	#,
	.loc 1 1328 0
	jmp	.L271	#
.L259:
	.loc 1 1328 0 discriminator 2
	movq	asm_out_file(%rip), %rdx	# asm_out_file, asm_out_file.133
	movl	%r12d, %eax	# ch, ch.134
	movq	%rdx, %rsi	# asm_out_file.133,
	movl	%eax, %edi	# ch.134,
	call	_IO_putc	#
	jmp	.L273	#
.L260:
	.loc 1 1328 0 discriminator 3
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.135
	movl	%r12d, %edx	# ch,
	movl	$.LC55, %esi	#,
	movq	%rax, %rdi	# asm_out_file.135,
	movl	$0, %eax	#,
	call	fprintf	#
	jmp	.L273	#
.L271:
	.loc 1 1328 0 discriminator 1
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.136
	movq	%rax, %rsi	# asm_out_file.136,
	movl	$92, %edi	#,
	call	_IO_putc	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.137
	movq	%rax, %rsi	# asm_out_file.137,
	movl	%r14d, %edi	# escape,
	call	_IO_putc	#
.L273:
	.loc 1 1328 0
	nop
.LBE18:
	addq	$1, %r15	#, _limited_str
.L257:
	.loc 1 1328 0 discriminator 1
	movzbl	(%r15), %eax	# *_limited_str_11, D.18509
	movzbl	%al, %r12d	# D.18509, ch
	testl	%r12d, %r12d	# ch
	jne	.L262	#,
	.loc 1 1328 0 discriminator 3
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.138
	movq	%rax, %rcx	# asm_out_file.138,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC51, %edi	#,
	call	fwrite	#
.LBE17:
	movq	%r13, %r12	# p, _ascii_bytes
	jmp	.L263	#
.L255:
.LBB19:
	.loc 1 1328 0 discriminator 2
	testl	%ebx, %ebx	# bytes_in_chunk
	jne	.L264	#,
	.loc 1 1328 0 discriminator 1
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.139
	movl	$.LC56, %edx	#,
	movl	$.LC53, %esi	#,
	movq	%rax, %rdi	# asm_out_file.139,
	movl	$0, %eax	#,
	call	fprintf	#
.L264:
	.loc 1 1328 0 discriminator 2
	movzbl	(%r12), %eax	# *_ascii_bytes_5, D.18509
	movzbl	%al, %r14d	# D.18509, ch
	movl	%r14d, %eax	# ch, tmp104
	movzbl	.LC54(%rax), %eax	#, D.18511
	movsbl	%al, %r13d	# D.18511, escape
	testl	%r13d, %r13d	# escape
	je	.L266	#,
	cmpl	$1, %r13d	#, escape
	je	.L267	#,
	.loc 1 1328 0
	jmp	.L272	#
.L266:
	.loc 1 1328 0 discriminator 2
	movq	asm_out_file(%rip), %rdx	# asm_out_file, asm_out_file.140
	movl	%r14d, %eax	# ch, ch.141
	movq	%rdx, %rsi	# asm_out_file.140,
	movl	%eax, %edi	# ch.141,
	call	_IO_putc	#
	addl	$1, %ebx	#, bytes_in_chunk
	jmp	.L274	#
.L267:
	.loc 1 1328 0 discriminator 3
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.142
	movl	%r14d, %edx	# ch,
	movl	$.LC55, %esi	#,
	movq	%rax, %rdi	# asm_out_file.142,
	movl	$0, %eax	#,
	call	fprintf	#
	addl	$4, %ebx	#, bytes_in_chunk
	jmp	.L274	#
.L272:
	.loc 1 1328 0 discriminator 1
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.143
	movq	%rax, %rsi	# asm_out_file.143,
	movl	$92, %edi	#,
	call	_IO_putc	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.144
	movq	%rax, %rsi	# asm_out_file.144,
	movl	%r13d, %edi	# escape,
	call	_IO_putc	#
	addl	$2, %ebx	#, bytes_in_chunk
.L274:
	.loc 1 1328 0
	nop
.L263:
.LBE19:
.LBE16:
	.loc 1 1328 0 discriminator 1
	addq	$1, %r12	#, _ascii_bytes
.L250:
	cmpq	-88(%rbp), %r12	# %sfp, _ascii_bytes
	jb	.L268	#,
	.loc 1 1328 0 discriminator 3
	testl	%ebx, %ebx	# bytes_in_chunk
	je	.L269	#,
	.loc 1 1328 0 discriminator 1
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.145
	movq	%rax, %rcx	# asm_out_file.145,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC51, %edi	#,
	call	fwrite	#
.L269:
.LBE15:
	.loc 1 1330 0 is_stmt 1
	movl	-56(%rbp), %eax	# thissize, tmp105
	addl	%eax, -60(%rbp)	# tmp105, pos
	.loc 1 1331 0
	movl	-56(%rbp), %eax	# thissize, tmp106
	cltq
	addq	%rax, -72(%rbp)	# D.18508, p
.L248:
.LBE14:
	.loc 1 1322 0 discriminator 1
	movl	-60(%rbp), %eax	# pos, tmp107
	cmpl	-76(%rbp), %eax	# size, tmp107
	jl	.L270	#,
	.loc 1 1333 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	assemble_string, .-assemble_string
	.section	.rodata
.LC57:
	.string	"\t.comm\t"
.LC58:
	.string	",%u,%u\n"
.LC59:
	.string	"\t.local\t"
	.text
	.type	asm_emit_uninitialised, @function
asm_emit_uninitialised:
.LFB39:
	.loc 1 1380 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# decl, decl
	movq	%rsi, -32(%rbp)	# name, name
	movl	%edx, -36(%rbp)	# size, size
	movl	%ecx, -40(%rbp)	# rounded, rounded
	.loc 1 1387 0
	movl	$2, -4(%rbp)	#, destination
	.loc 1 1389 0
	movq	-24(%rbp), %rax	# decl, tmp83
	movzbl	18(%rax), %eax	# *decl_3(D), D.18519
	andl	$8, %eax	#, D.18519
	testb	%al, %al	# D.18519
	je	.L276	#,
	.loc 1 1392 0
	movq	-24(%rbp), %rax	# decl, tmp84
	movzbl	50(%rax), %eax	# *decl_3(D), D.18519
	andl	$2, %eax	#, D.18519
	testb	%al, %al	# D.18519
	jne	.L277	#,
	.loc 1 1393 0
	movl	$1, -4(%rbp)	#, destination
	jmp	.L276	#
.L277:
	.loc 1 1396 0
	movl	$0, -4(%rbp)	#, destination
.L276:
	.loc 1 1399 0
	cmpl	$1, -4(%rbp)	#, destination
	jne	.L278	#,
	.loc 1 1400 0
	movq	-24(%rbp), %rax	# decl, tmp85
	movq	%rax, %rdi	# tmp85,
	call	globalize_decl	#
.L278:
	.loc 1 1401 0
	movl	flag_data_sections(%rip), %edx	# flag_data_sections, flag_data_sections.146
	movq	-24(%rbp), %rax	# decl, tmp86
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp86,
	call	resolve_unique_section	#
	.loc 1 1403 0
	movl	flag_shared_data(%rip), %eax	# flag_shared_data, flag_shared_data.147
	testl	%eax, %eax	# flag_shared_data.147
	je	.L279	#,
	.loc 1 1423 0
	nop
.L279:
	.loc 1 1427 0
	movl	-4(%rbp), %eax	# destination, destination
	cmpl	$1, %eax	#, destination
	je	.L281	#,
	cmpl	$1, %eax	#, destination
	jb	.L282	#,
	cmpl	$2, %eax	#, destination
	je	.L283	#,
	jmp	.L286	#
.L281:
	.loc 1 1431 0
	movq	-24(%rbp), %rax	# decl, tmp88
	movl	56(%rax), %eax	# *decl_3(D), tmp91
	andl	$16777215, %eax	#, D.18520
	movl	%eax, %edi	# D.18520, D.18521
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.148
	movl	-36(%rbp), %ecx	# size, tmp92
	movq	-32(%rbp), %rdx	# name, tmp93
	movq	-24(%rbp), %rsi	# decl, tmp94
	movl	%edi, %r8d	# D.18521,
	movq	%rax, %rdi	# asm_out_file.148,
	call	asm_output_aligned_bss	#
	.loc 1 1432 0
	jmp	.L284	#
.L282:
	.loc 1 1435 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.149
	movq	%rax, %rcx	# asm_out_file.149,
	movl	$7, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC57, %edi	#,
	call	fwrite	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.150
	movq	-32(%rbp), %rdx	# name, tmp95
	movq	%rdx, %rsi	# tmp95,
	movq	%rax, %rdi	# asm_out_file.150,
	call	assemble_name	#
	movq	-24(%rbp), %rax	# decl, tmp96
	movl	56(%rax), %eax	# *decl_3(D), tmp99
	andl	$16777215, %eax	#, D.18520
	leal	7(%rax), %edx	#, tmp101
	testl	%eax, %eax	# tmp100
	cmovs	%edx, %eax	# tmp101,, tmp100
	sarl	$3, %eax	#, tmp102
	movl	%eax, %ecx	# tmp102, D.18521
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.151
	movl	-36(%rbp), %edx	# size, tmp103
	movl	$.LC58, %esi	#,
	movq	%rax, %rdi	# asm_out_file.151,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1436 0
	jmp	.L284	#
.L283:
	.loc 1 1438 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.152
	movq	%rax, %rcx	# asm_out_file.152,
	movl	$8, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC59, %edi	#,
	call	fwrite	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.153
	movq	-32(%rbp), %rdx	# name, tmp104
	movq	%rdx, %rsi	# tmp104,
	movq	%rax, %rdi	# asm_out_file.153,
	call	assemble_name	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.154
	movq	%rax, %rsi	# asm_out_file.154,
	movl	$10, %edi	#,
	call	fputc	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.155
	movq	%rax, %rcx	# asm_out_file.155,
	movl	$7, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC57, %edi	#,
	call	fwrite	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.156
	movq	-32(%rbp), %rdx	# name, tmp105
	movq	%rdx, %rsi	# tmp105,
	movq	%rax, %rdi	# asm_out_file.156,
	call	assemble_name	#
	movq	-24(%rbp), %rax	# decl, tmp106
	movl	56(%rax), %eax	# *decl_3(D), tmp109
	andl	$16777215, %eax	#, D.18520
	leal	7(%rax), %edx	#, tmp111
	testl	%eax, %eax	# tmp110
	cmovs	%edx, %eax	# tmp111,, tmp110
	sarl	$3, %eax	#, tmp112
	movl	%eax, %ecx	# tmp112, D.18521
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.157
	movl	-36(%rbp), %edx	# size, tmp113
	movl	$.LC58, %esi	#,
	movq	%rax, %rdi	# asm_out_file.157,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1439 0
	jmp	.L284	#
.L286:
	.loc 1 1441 0
	movl	$__FUNCTION__.13170, %edx	#,
	movl	$1441, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L284:
	.loc 1 1444 0
	nop
	.loc 1 1445 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	asm_emit_uninitialised, .-asm_emit_uninitialised
	.section	.rodata
	.align 8
.LC60:
	.string	"storage size of `%s' isn't known"
	.align 8
.LC61:
	.string	"size of variable `%s' is too large"
	.align 8
.LC62:
	.string	"alignment of `%s' is greater than maximum object file alignment. Using %d"
	.text
	.globl	assemble_variable
	.type	assemble_variable, @function
assemble_variable:
.LFB40:
	.loc 1 1463 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# decl, decl
	movl	%esi, -76(%rbp)	# top_level, top_level
	movl	%edx, -80(%rbp)	# at_end, at_end
	movl	%ecx, -84(%rbp)	# dont_output_data, dont_output_data
	.loc 1 1466 0
	movl	$0, -52(%rbp)	#, reloc
	.loc 1 1469 0
	movq	$0, last_assemble_variable_decl(%rip)	#, last_assemble_variable_decl
	.loc 1 1475 0
	movq	-72(%rbp), %rax	# decl, tmp177
	movzbl	49(%rax), %eax	# *decl_10(D), D.18525
	andl	$1, %eax	#, D.18525
	testb	%al, %al	# D.18525
	je	.L288	#,
	.loc 1 1476 0
	jmp	.L287	#
.L288:
	.loc 1 1481 0
	movq	-72(%rbp), %rax	# decl, tmp178
	movzbl	16(%rax), %eax	# decl_10(D)->common.code, D.18525
	cmpb	$30, %al	#, D.18525
	jne	.L290	#,
	.loc 1 1482 0
	jmp	.L287	#
.L290:
	.loc 1 1485 0
	movq	-72(%rbp), %rax	# decl, tmp179
	movq	144(%rax), %rax	# decl_10(D)->decl.rtl, D.18526
	testq	%rax, %rax	# D.18526
	je	.L291	#,
	.loc 1 1485 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# decl, tmp180
	movq	144(%rax), %rax	# decl_10(D)->decl.rtl, D.18526
	testq	%rax, %rax	# D.18526
	je	.L292	#,
	movq	-72(%rbp), %rax	# decl, tmp181
	movq	144(%rax), %rax	# decl_10(D)->decl.rtl, iftmp.158
	jmp	.L293	#
.L292:
	.loc 1 1485 0 discriminator 2
	movq	-72(%rbp), %rax	# decl, tmp182
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp182,
	call	make_decl_rtl	#
	movq	-72(%rbp), %rax	# decl, tmp183
	movq	144(%rax), %rax	# decl_10(D)->decl.rtl, iftmp.158
.L293:
	.loc 1 1485 0 discriminator 3
	movzwl	(%rax), %eax	# iftmp.158_6->code, D.18527
	cmpw	$61, %ax	#, D.18527
	jne	.L291	#,
	.loc 1 1487 0 is_stmt 1
	movq	-72(%rbp), %rax	# decl, tmp184
	movzbl	17(%rax), %edx	#, tmp187
	orl	$64, %edx	#, tmp188
	movb	%dl, 17(%rax)	# tmp188,
	.loc 1 1488 0
	jmp	.L287	#
.L291:
	.loc 1 1494 0
	movq	-72(%rbp), %rax	# decl, tmp189
	movq	40(%rax), %rax	# decl_10(D)->decl.size, D.18528
	testq	%rax, %rax	# D.18528
	jne	.L294	#,
	.loc 1 1495 0
	movq	-72(%rbp), %rax	# decl, tmp190
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp190,
	call	layout_decl	#
.L294:
	.loc 1 1500 0
	cmpl	$0, -84(%rbp)	#, dont_output_data
	jne	.L295	#,
	.loc 1 1500 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# decl, tmp191
	movq	40(%rax), %rax	# decl_10(D)->decl.size, D.18528
	testq	%rax, %rax	# D.18528
	jne	.L295	#,
	.loc 1 1505 0 is_stmt 1
	movq	-72(%rbp), %rax	# decl, tmp192
	movq	72(%rax), %rax	# decl_10(D)->decl.name, D.18528
	movq	32(%rax), %rdx	# _22->identifier.id.str, D.18529
	.loc 1 1502 0
	movq	-72(%rbp), %rax	# decl, tmp193
	movl	32(%rax), %esi	# decl_10(D)->decl.linenum, D.18530
	movq	-72(%rbp), %rax	# decl, tmp194
	movq	24(%rax), %rax	# decl_10(D)->decl.filename, D.18531
	movq	%rdx, %rcx	# D.18529,
	movl	$.LC60, %edx	#,
	movq	%rax, %rdi	# D.18531,
	movl	$0, %eax	#,
	call	error_with_file_and_line	#
	.loc 1 1506 0
	movq	-72(%rbp), %rax	# decl, tmp195
	movzbl	17(%rax), %edx	#, tmp198
	orl	$64, %edx	#, tmp199
	movb	%dl, 17(%rax)	# tmp199,
	.loc 1 1507 0
	jmp	.L287	#
.L295:
	.loc 1 1515 0
	movq	-72(%rbp), %rax	# decl, tmp200
	movzbl	17(%rax), %eax	# *decl_10(D), D.18525
	andl	$64, %eax	#, D.18525
	testb	%al, %al	# D.18525
	je	.L296	#,
	.loc 1 1516 0
	jmp	.L287	#
.L296:
	.loc 1 1519 0
	movq	-72(%rbp), %rax	# decl, tmp201
	movq	144(%rax), %rax	# decl_10(D)->decl.rtl, D.18526
	testq	%rax, %rax	# D.18526
	je	.L297	#,
	.loc 1 1519 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# decl, tmp202
	movq	144(%rax), %rax	# decl_10(D)->decl.rtl, iftmp.159
	jmp	.L298	#
.L297:
	.loc 1 1519 0 discriminator 2
	movq	-72(%rbp), %rax	# decl, tmp203
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp203,
	call	make_decl_rtl	#
	movq	-72(%rbp), %rax	# decl, tmp204
	movq	144(%rax), %rax	# decl_10(D)->decl.rtl, iftmp.159
.L298:
	.loc 1 1519 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.159, decl_rtl
	.loc 1 1521 0 is_stmt 1 discriminator 3
	movq	-72(%rbp), %rax	# decl, tmp205
	movzbl	17(%rax), %edx	#, tmp208
	orl	$64, %edx	#, tmp209
	movb	%dl, 17(%rax)	# tmp209,
	.loc 1 1524 0 discriminator 3
	movl	flag_syntax_only(%rip), %eax	# flag_syntax_only, flag_syntax_only.160
	testl	%eax, %eax	# flag_syntax_only.160
	je	.L299	#,
	.loc 1 1525 0
	jmp	.L287	#
.L299:
	.loc 1 1527 0
	call	app_disable	#
	.loc 1 1529 0
	cmpl	$0, -84(%rbp)	#, dont_output_data
	jne	.L300	#,
	.loc 1 1530 0
	movq	-72(%rbp), %rax	# decl, tmp210
	movq	64(%rax), %rax	# decl_10(D)->decl.size_unit, D.18528
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.18528,
	call	host_integerp	#
	testl	%eax, %eax	# D.18530
	jne	.L300	#,
	.loc 1 1532 0
	movq	-72(%rbp), %rax	# decl, tmp211
	movl	$.LC61, %esi	#,
	movq	%rax, %rdi	# tmp211,
	movl	$0, %eax	#,
	call	error_with_decl	#
	.loc 1 1533 0
	jmp	.L287	#
.L300:
	.loc 1 1536 0
	movq	-40(%rbp), %rax	# decl_rtl, tmp212
	movq	8(%rax), %rax	# decl_rtl_31->fld[0].rtx, D.18526
	movq	8(%rax), %rax	# _35->fld[0].rtstr, tmp213
	movq	%rax, -32(%rbp)	# tmp213, name
	.loc 1 1537 0
	movq	-72(%rbp), %rax	# decl, tmp214
	movzbl	18(%rax), %eax	# *decl_10(D), D.18525
	andl	$8, %eax	#, D.18525
	testb	%al, %al	# D.18525
	je	.L301	#,
	.loc 1 1537 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# decl, tmp215
	movq	72(%rax), %rax	# decl_10(D)->decl.name, D.18528
	testq	%rax, %rax	# D.18528
	je	.L301	#,
	.loc 1 1538 0 is_stmt 1
	movq	first_global_object_name(%rip), %rax	# first_global_object_name, first_global_object_name.161
	testq	%rax, %rax	# first_global_object_name.161
	jne	.L301	#,
	.loc 1 1539 0
	movq	-72(%rbp), %rax	# decl, tmp216
	movzbl	50(%rax), %eax	# *decl_10(D), D.18525
	andl	$2, %eax	#, D.18525
	testb	%al, %al	# D.18525
	je	.L302	#,
	.loc 1 1539 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# decl, tmp217
	movq	104(%rax), %rax	# decl_10(D)->decl.initial, D.18528
	testq	%rax, %rax	# D.18528
	je	.L301	#,
	.loc 1 1540 0 is_stmt 1
	movq	-72(%rbp), %rax	# decl, tmp218
	movq	104(%rax), %rdx	# decl_10(D)->decl.initial, D.18528
	movq	global_trees(%rip), %rax	# global_trees, D.18528
	cmpq	%rax, %rdx	# D.18528, D.18528
	je	.L301	#,
.L302:
	.loc 1 1541 0
	movq	-72(%rbp), %rax	# decl, tmp219
	movzbl	50(%rax), %eax	# *decl_10(D), D.18525
	andl	$-128, %eax	#, D.18525
	testb	%al, %al	# D.18525
	jne	.L301	#,
	.loc 1 1542 0
	movq	-72(%rbp), %rax	# decl, tmp220
	movzbl	50(%rax), %eax	# *decl_10(D), D.18525
	andl	$8, %eax	#, D.18525
	testb	%al, %al	# D.18525
	jne	.L301	#,
.LBB20:
	.loc 1 1547 0
	movq	-32(%rbp), %rax	# name, tmp221
	movzbl	(%rax), %eax	# *name_36, D.18532
	cmpb	$42, %al	#, D.18532
	sete	%al	#, D.18533
	movzbl	%al, %edx	# D.18533, D.18534
	movq	-32(%rbp), %rax	# name, tmp225
	addq	%rdx, %rax	# D.18534, tmp224
	movq	%rax, -24(%rbp)	# tmp224, p
	.loc 1 1548 0
	movq	-24(%rbp), %rax	# p, tmp226
	movq	%rax, %rdi	# tmp226,
	call	strlen	#
	addl	$1, %eax	#, D.18535
	movl	%eax, %edi	# D.18530,
	call	permalloc	#
	movq	%rax, -16(%rbp)	# tmp227, xname
	.loc 1 1549 0
	movq	-24(%rbp), %rdx	# p, tmp228
	movq	-16(%rbp), %rax	# xname, tmp229
	movq	%rdx, %rsi	# tmp228,
	movq	%rax, %rdi	# tmp229,
	call	strcpy	#
	.loc 1 1550 0
	movq	-16(%rbp), %rax	# xname, tmp230
	movq	%rax, first_global_object_name(%rip)	# tmp230, first_global_object_name
.L301:
.LBE20:
	.loc 1 1555 0
	movq	-72(%rbp), %rax	# decl, tmp231
	movl	56(%rax), %eax	# *decl_10(D), tmp234
	andl	$16777215, %eax	#, D.18536
	movl	%eax, -56(%rbp)	# D.18536, align
	.loc 1 1560 0
	cmpl	$0, -84(%rbp)	#, dont_output_data
	je	.L303	#,
	.loc 1 1560 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# decl, tmp235
	movq	40(%rax), %rax	# decl_10(D)->decl.size, D.18528
	testq	%rax, %rax	# D.18528
	jne	.L303	#,
	.loc 1 1561 0 is_stmt 1
	movq	-72(%rbp), %rax	# decl, tmp236
	movq	8(%rax), %rax	# decl_10(D)->common.type, D.18528
	movzbl	16(%rax), %eax	# _62->common.code, D.18525
	cmpb	$18, %al	#, D.18525
	jne	.L303	#,
	.loc 1 1562 0
	movq	-72(%rbp), %rax	# decl, tmp237
	movq	8(%rax), %rax	# decl_10(D)->common.type, D.18528
	movq	8(%rax), %rax	# _64->common.type, D.18528
	movl	64(%rax), %edx	# _65->type.align, D.18537
	movl	-56(%rbp), %eax	# align, tmp239
	cmpl	%eax, %edx	# tmp239, D.18537
	cmovae	%edx, %eax	# D.18537,, tmp238
	movl	%eax, -56(%rbp)	# tmp238, align
.L303:
	.loc 1 1569 0
	cmpl	$262144, -56(%rbp)	#, align
	jbe	.L304	#,
	.loc 1 1571 0
	movq	-72(%rbp), %rax	# decl, tmp240
	movl	$32768, %edx	#,
	movl	$.LC62, %esi	#,
	movq	%rax, %rdi	# tmp240,
	movl	$0, %eax	#,
	call	warning_with_decl	#
	.loc 1 1574 0
	movl	$262144, -56(%rbp)	#, align
.L304:
	.loc 1 1578 0
	movq	-72(%rbp), %rax	# decl, tmp241
	movzbl	52(%rax), %eax	# *decl_10(D), D.18525
	andl	$8, %eax	#, D.18525
	testb	%al, %al	# D.18525
	jne	.L305	#,
	.loc 1 1581 0
	movl	-56(%rbp), %edx	# align, align.162
	movq	-72(%rbp), %rax	# decl, tmp242
	movq	8(%rax), %rax	# decl_10(D)->common.type, D.18528
	movl	%edx, %esi	# align.162,
	movq	%rax, %rdi	# D.18528,
	call	ix86_data_alignment	#
	movl	%eax, -56(%rbp)	# D.18530, align
	.loc 1 1584 0
	movq	-72(%rbp), %rax	# decl, tmp243
	movq	104(%rax), %rax	# decl_10(D)->decl.initial, D.18528
	testq	%rax, %rax	# D.18528
	je	.L305	#,
	.loc 1 1584 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# decl, tmp244
	movq	104(%rax), %rdx	# decl_10(D)->decl.initial, D.18528
	movq	global_trees(%rip), %rax	# global_trees, D.18528
	cmpq	%rax, %rdx	# D.18528, D.18528
	je	.L305	#,
	.loc 1 1585 0 is_stmt 1
	movl	-56(%rbp), %edx	# align, align.163
	movq	-72(%rbp), %rax	# decl, tmp245
	movq	104(%rax), %rax	# decl_10(D)->decl.initial, D.18528
	movl	%edx, %esi	# align.163,
	movq	%rax, %rdi	# D.18528,
	call	ix86_constant_alignment	#
	movl	%eax, -56(%rbp)	# D.18530, align
.L305:
	.loc 1 1591 0
	movl	-56(%rbp), %eax	# align, tmp246
	andl	$16777215, %eax	#, D.18536
	movl	%eax, %edx	# D.18536, D.18536
	movq	-72(%rbp), %rax	# decl, tmp247
	movl	%edx, %ecx	# D.18536, tmp249
	andl	$16777215, %ecx	#, tmp249
	movl	56(%rax), %edx	#, tmp250
	andl	$-16777216, %edx	#, tmp251
	orl	%ecx, %edx	# tmp249, tmp252
	movl	%edx, 56(%rax)	# tmp252,
	.loc 1 1592 0
	movl	-56(%rbp), %edx	# align, tmp253
	movq	-40(%rbp), %rax	# decl_rtl, tmp254
	movl	%edx, %esi	# tmp253,
	movq	%rax, %rdi	# tmp254,
	call	set_mem_align	#
	.loc 1 1596 0
	movq	-72(%rbp), %rax	# decl, tmp255
	movq	104(%rax), %rax	# decl_10(D)->decl.initial, D.18528
	testq	%rax, %rax	# D.18528
	je	.L306	#,
	.loc 1 1596 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# decl, tmp256
	movq	104(%rax), %rdx	# decl_10(D)->decl.initial, D.18528
	movq	global_trees(%rip), %rax	# global_trees, D.18528
	cmpq	%rax, %rdx	# D.18528, D.18528
	jne	.L307	#,
.L306:
	.loc 1 1602 0 is_stmt 1
	movq	-72(%rbp), %rax	# decl, tmp257
	movq	128(%rax), %rax	# decl_10(D)->decl.section_name, D.18528
	testq	%rax, %rax	# D.18528
	jne	.L307	#,
	.loc 1 1603 0
	cmpl	$0, -84(%rbp)	#, dont_output_data
	jne	.L307	#,
.LBB21:
	.loc 1 1605 0
	movq	-72(%rbp), %rax	# decl, tmp258
	movq	64(%rax), %rax	# decl_10(D)->decl.size_unit, D.18528
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.18528,
	call	tree_low_cst	#
	movq	%rax, -8(%rbp)	# D.18538, size
	.loc 1 1606 0
	movq	-8(%rbp), %rax	# size, tmp259
	movq	%rax, -48(%rbp)	# tmp259, rounded
	.loc 1 1610 0
	cmpq	$0, -8(%rbp)	#, size
	jne	.L308	#,
	.loc 1 1611 0
	movq	$1, -48(%rbp)	#, rounded
.L308:
	.loc 1 1615 0
	addq	$15, -48(%rbp)	#, rounded
	.loc 1 1616 0
	movq	-48(%rbp), %rax	# rounded, tmp260
	shrq	$4, %rax	#, D.18534
	salq	$4, %rax	#, tmp261
	movq	%rax, -48(%rbp)	# tmp261, rounded
	.loc 1 1626 0
	movq	-48(%rbp), %rax	# rounded, tmp262
	movl	%eax, %ecx	# tmp262, D.18530
	movq	-8(%rbp), %rax	# size, tmp263
	movl	%eax, %edx	# tmp263, D.18530
	movq	-32(%rbp), %rsi	# name, tmp264
	movq	-72(%rbp), %rax	# decl, tmp265
	movq	%rax, %rdi	# tmp265,
	call	asm_emit_uninitialised	#
	.loc 1 1628 0
	jmp	.L287	#
.L307:
.LBE21:
	.loc 1 1636 0
	movq	-72(%rbp), %rax	# decl, tmp266
	movzbl	18(%rax), %eax	# *decl_10(D), D.18525
	andl	$8, %eax	#, D.18525
	testb	%al, %al	# D.18525
	je	.L309	#,
	.loc 1 1636 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# decl, tmp267
	movq	72(%rax), %rax	# decl_10(D)->decl.name, D.18528
	testq	%rax, %rax	# D.18528
	je	.L309	#,
	.loc 1 1637 0 is_stmt 1
	movq	-72(%rbp), %rax	# decl, tmp268
	movq	%rax, %rdi	# tmp268,
	call	globalize_decl	#
.L309:
	.loc 1 1640 0
	movq	-72(%rbp), %rax	# decl, tmp269
	movq	104(%rax), %rdx	# decl_10(D)->decl.initial, D.18528
	movq	global_trees(%rip), %rax	# global_trees, D.18528
	cmpq	%rax, %rdx	# D.18528, D.18528
	jne	.L310	#,
	.loc 1 1641 0
	movq	-72(%rbp), %rax	# decl, tmp270
	movq	8(%rax), %rax	# decl_10(D)->common.type, D.18528
	movq	%rax, %rdi	# D.18528,
	call	contains_pointers_p	#
	testl	%eax, %eax	# D.18530
	je	.L311	#,
	.loc 1 1641 0 is_stmt 0 discriminator 1
	movl	$3, %eax	#, iftmp.164
	jmp	.L312	#
.L311:
	.loc 1 1641 0 discriminator 2
	movl	$0, %eax	#, iftmp.164
.L312:
	.loc 1 1641 0 discriminator 1
	movl	%eax, -52(%rbp)	# iftmp.164, reloc
	jmp	.L313	#
.L310:
	.loc 1 1642 0 is_stmt 1
	movq	-72(%rbp), %rax	# decl, tmp271
	movq	104(%rax), %rax	# decl_10(D)->decl.initial, D.18528
	testq	%rax, %rax	# D.18528
	je	.L313	#,
	.loc 1 1643 0
	movq	-72(%rbp), %rax	# decl, tmp272
	movq	104(%rax), %rax	# decl_10(D)->decl.initial, D.18528
	movq	%rax, %rdi	# D.18528,
	call	output_addressed_constants	#
	movl	%eax, -52(%rbp)	# tmp273, reloc
.L313:
	.loc 1 1646 0
	movl	flag_data_sections(%rip), %edx	# flag_data_sections, flag_data_sections.165
	movl	-52(%rbp), %ecx	# reloc, tmp274
	movq	-72(%rbp), %rax	# decl, tmp275
	movl	%ecx, %esi	# tmp274,
	movq	%rax, %rdi	# tmp275,
	call	resolve_unique_section	#
	.loc 1 1647 0
	movl	-52(%rbp), %edx	# reloc, tmp276
	movq	-72(%rbp), %rax	# decl, tmp277
	movl	%edx, %esi	# tmp276,
	movq	%rax, %rdi	# tmp277,
	call	variable_section	#
	.loc 1 1650 0
	call	in_text_section	#
	testl	%eax, %eax	# D.18530
	je	.L314	#,
	.loc 1 1651 0
	movq	-72(%rbp), %rax	# decl, tmp278
	movzbl	49(%rax), %edx	#, tmp281
	orl	$16, %edx	#, tmp282
	movb	%dl, 49(%rax)	# tmp282,
.L314:
	.loc 1 1654 0
	cmpl	$8, -56(%rbp)	#, align
	jbe	.L315	#,
	.loc 1 1656 0
	movq	-72(%rbp), %rax	# decl, tmp283
	movl	56(%rax), %eax	# *decl_10(D), tmp286
	andl	$16777215, %eax	#, D.18536
	leal	7(%rax), %edx	#, tmp288
	testl	%eax, %eax	# tmp287
	cmovs	%edx, %eax	# tmp288,, tmp287
	sarl	$3, %eax	#, tmp289
	cltq
	movq	%rax, %rdi	# D.18534,
	call	floor_log2_wide	#
	testl	%eax, %eax	# D.18530
	je	.L315	#,
	.loc 1 1656 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# decl, tmp290
	movl	56(%rax), %eax	# *decl_10(D), tmp293
	andl	$16777215, %eax	#, D.18536
	leal	7(%rax), %edx	#, tmp295
	testl	%eax, %eax	# tmp294
	cmovs	%edx, %eax	# tmp295,, tmp294
	sarl	$3, %eax	#, tmp296
	cltq
	movq	%rax, %rdi	# D.18534,
	call	floor_log2_wide	#
	movl	$1, %edx	#, tmp297
	movl	%eax, %ecx	# D.18530, tmp312
	sall	%cl, %edx	# tmp312, D.18530
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.166
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# asm_out_file.166,
	movl	$0, %eax	#,
	call	fprintf	#
.L315:
	.loc 1 1662 0 is_stmt 1
	movq	-72(%rbp), %rax	# decl, tmp298
	movq	%rax, last_assemble_variable_decl(%rip)	# tmp298, last_assemble_variable_decl
	.loc 1 1663 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.167
	movq	%rax, %rcx	# asm_out_file.167,
	movl	$7, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC10, %edi	#,
	call	fwrite	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.168
	movq	-32(%rbp), %rdx	# name, tmp299
	movq	%rdx, %rsi	# tmp299,
	movq	%rax, %rdi	# asm_out_file.168,
	call	assemble_name	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.169
	movq	%rax, %rsi	# asm_out_file.169,
	movl	$44, %edi	#,
	call	_IO_putc	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.170
	movl	$.LC11, %edx	#,
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# asm_out_file.170,
	movl	$0, %eax	#,
	call	fprintf	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.171
	movq	%rax, %rsi	# asm_out_file.171,
	movl	$10, %edi	#,
	call	_IO_putc	#
	movl	$0, size_directive_output(%rip)	#, size_directive_output
	movl	flag_inhibit_size_directive(%rip), %eax	# flag_inhibit_size_directive, flag_inhibit_size_directive.172
	testl	%eax, %eax	# flag_inhibit_size_directive.172
	jne	.L316	#,
	.loc 1 1663 0 is_stmt 0 discriminator 1
	cmpq	$0, -72(%rbp)	#, decl
	je	.L316	#,
	movq	-72(%rbp), %rax	# decl, tmp300
	movq	40(%rax), %rax	# decl_10(D)->decl.size, D.18528
	testq	%rax, %rax	# D.18528
	je	.L316	#,
	movl	$1, size_directive_output(%rip)	#, size_directive_output
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.173
	movq	%rax, %rcx	# asm_out_file.173,
	movl	$7, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC13, %edi	#,
	call	fwrite	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.174
	movq	-32(%rbp), %rdx	# name, tmp301
	movq	%rdx, %rsi	# tmp301,
	movq	%rax, %rdi	# asm_out_file.174,
	call	assemble_name	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.175
	movq	%rax, %rsi	# asm_out_file.175,
	movl	$44, %edi	#,
	call	_IO_putc	#
	movq	-72(%rbp), %rax	# decl, tmp302
	movq	8(%rax), %rax	# decl_10(D)->common.type, D.18528
	movq	%rax, %rdi	# D.18528,
	call	int_size_in_bytes	#
	movq	%rax, %rdx	#, D.18538
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.176
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# asm_out_file.176,
	movl	$0, %eax	#,
	call	fprintf	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.177
	movq	%rax, %rsi	# asm_out_file.177,
	movl	$10, %edi	#,
	call	fputc	#
.L316:
	.loc 1 1663 0 discriminator 2
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.178
	movq	-32(%rbp), %rdx	# name, tmp303
	movq	%rdx, %rsi	# tmp303,
	movq	%rax, %rdi	# asm_out_file.178,
	call	assemble_name	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.179
	movq	%rax, %rcx	# asm_out_file.179,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC15, %edi	#,
	call	fwrite	#
	.loc 1 1669 0 is_stmt 1 discriminator 2
	cmpl	$0, -84(%rbp)	#, dont_output_data
	jne	.L287	#,
	.loc 1 1671 0
	movq	-72(%rbp), %rax	# decl, tmp304
	movq	104(%rax), %rax	# decl_10(D)->decl.initial, D.18528
	testq	%rax, %rax	# D.18528
	je	.L317	#,
	.loc 1 1671 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# decl, tmp305
	movq	104(%rax), %rdx	# decl_10(D)->decl.initial, D.18528
	movq	global_trees(%rip), %rax	# global_trees, D.18528
	cmpq	%rax, %rdx	# D.18528, D.18528
	je	.L317	#,
	.loc 1 1673 0 is_stmt 1
	movq	-72(%rbp), %rax	# decl, tmp306
	movq	64(%rax), %rax	# decl_10(D)->decl.size_unit, D.18528
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.18528,
	call	tree_low_cst	#
	movq	%rax, %rcx	#, D.18538
	movq	-72(%rbp), %rax	# decl, tmp307
	movq	104(%rax), %rax	# decl_10(D)->decl.initial, D.18528
	movl	-56(%rbp), %edx	# align, tmp308
	movq	%rcx, %rsi	# D.18538,
	movq	%rax, %rdi	# D.18528,
	call	output_constant	#
	jmp	.L287	#
.L317:
	.loc 1 1678 0
	movq	-72(%rbp), %rax	# decl, tmp309
	movq	64(%rax), %rax	# decl_10(D)->decl.size_unit, D.18528
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.18528,
	call	tree_low_cst	#
	movl	%eax, %edi	# D.18530,
	call	assemble_zeros	#
.L287:
	.loc 1 1680 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	assemble_variable, .-assemble_variable
	.type	contains_pointers_p, @function
contains_pointers_p:
.LFB41:
	.loc 1 1687 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# type, type
	.loc 1 1688 0
	movq	-24(%rbp), %rax	# type, tmp67
	movzbl	16(%rax), %eax	# type_3(D)->common.code, D.18543
	movzbl	%al, %eax	# D.18543, D.18544
	subl	$13, %eax	#, tmp68
	cmpl	$9, %eax	#, tmp68
	ja	.L319	#,
	movl	%eax, %eax	# tmp68, tmp69
	movq	.L321(,%rax,8), %rax	#, tmp70
	jmp	*%rax	# tmp70
	.section	.rodata
	.align 8
	.align 4
.L321:
	.quad	.L320
	.quad	.L320
	.quad	.L320
	.quad	.L319
	.quad	.L319
	.quad	.L322
	.quad	.L319
	.quad	.L323
	.quad	.L323
	.quad	.L323
	.text
.L320:
	.loc 1 1695 0
	movl	$1, %eax	#, D.18542
	jmp	.L324	#
.L323:
.LBB22:
	.loc 1 1703 0
	movq	-24(%rbp), %rax	# type, tmp71
	movq	24(%rax), %rax	# type_3(D)->type.values, tmp72
	movq	%rax, -8(%rbp)	# tmp72, fields
	jmp	.L325	#
.L327:
	.loc 1 1704 0
	movq	-8(%rbp), %rax	# fields, tmp73
	movzbl	16(%rax), %eax	# fields_1->common.code, D.18543
	cmpb	$37, %al	#, D.18543
	jne	.L326	#,
	.loc 1 1705 0
	movq	-8(%rbp), %rax	# fields, tmp74
	movq	8(%rax), %rax	# fields_1->common.type, D.18545
	movq	%rax, %rdi	# D.18545,
	call	contains_pointers_p	#
	testl	%eax, %eax	# D.18542
	je	.L326	#,
	.loc 1 1706 0
	movl	$1, %eax	#, D.18542
	jmp	.L324	#
.L326:
	.loc 1 1703 0
	movq	-8(%rbp), %rax	# fields, tmp75
	movq	(%rax), %rax	# fields_1->common.chain, tmp76
	movq	%rax, -8(%rbp)	# tmp76, fields
.L325:
	.loc 1 1703 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, fields
	jne	.L327	#,
	.loc 1 1707 0 is_stmt 1
	movl	$0, %eax	#, D.18542
	jmp	.L324	#
.L322:
.LBE22:
	.loc 1 1712 0
	movq	-24(%rbp), %rax	# type, tmp77
	movq	8(%rax), %rax	# type_3(D)->common.type, D.18545
	movq	%rax, %rdi	# D.18545,
	call	contains_pointers_p	#
	jmp	.L324	#
.L319:
	.loc 1 1715 0
	movl	$0, %eax	#, D.18542
.L324:
	.loc 1 1717 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	contains_pointers_p, .-contains_pointers_p
	.globl	assemble_external
	.type	assemble_external, @function
assemble_external:
.LFB42:
	.loc 1 1726 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# decl, decl
	.loc 1 1731 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.180
	testq	%rax, %rax	# asm_out_file.180
	jne	.L328	#,
	.loc 1 1732 0
	movl	$__FUNCTION__.13203, %edx	#,
	movl	$1732, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L328:
	.loc 1 1748 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	assemble_external, .-assemble_external
	.globl	assemble_external_libcall
	.type	assemble_external_libcall, @function
assemble_external_libcall:
.LFB43:
	.loc 1 1755 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# fun, fun
	.loc 1 1758 0
	movq	-8(%rbp), %rax	# fun, tmp65
	movzbl	3(%rax), %eax	# *fun_1(D), D.18546
	andl	$32, %eax	#, D.18546
	testb	%al, %al	# D.18546
	jne	.L330	#,
	.loc 1 1760 0
	movq	-8(%rbp), %rax	# fun, tmp66
	movzbl	3(%rax), %edx	# fun_1(D)->used, tmp69
	orl	$32, %edx	#, tmp70
	movb	%dl, 3(%rax)	# tmp70, fun_1(D)->used
	.loc 1 1761 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.181
	movq	%rax, %rcx	# asm_out_file.181,
	movl	$7, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC8, %edi	#,
	call	fwrite	#
	movq	-8(%rbp), %rax	# fun, tmp71
	movq	8(%rax), %rdx	# fun_1(D)->fld[0].rtstr, D.18547
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.182
	movq	%rdx, %rsi	# D.18547,
	movq	%rax, %rdi	# asm_out_file.182,
	call	assemble_name	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.183
	movq	%rax, %rsi	# asm_out_file.183,
	movl	$10, %edi	#,
	call	fputc	#
.L330:
	.loc 1 1764 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	assemble_external_libcall, .-assemble_external_libcall
	.globl	assemble_global
	.type	assemble_global, @function
assemble_global:
.LFB44:
	.loc 1 1771 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# name, name
	.loc 1 1772 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.184
	movq	%rax, %rcx	# asm_out_file.184,
	movl	$7, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC8, %edi	#,
	call	fwrite	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.185
	movq	-8(%rbp), %rdx	# name, tmp62
	movq	%rdx, %rsi	# tmp62,
	movq	%rax, %rdi	# asm_out_file.185,
	call	assemble_name	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.186
	movq	%rax, %rsi	# asm_out_file.186,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 1773 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	assemble_global, .-assemble_global
	.globl	assemble_label
	.type	assemble_label, @function
assemble_label:
.LFB45:
	.loc 1 1780 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# name, name
	.loc 1 1781 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.187
	movq	-8(%rbp), %rdx	# name, tmp61
	movq	%rdx, %rsi	# tmp61,
	movq	%rax, %rdi	# asm_out_file.187,
	call	assemble_name	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.188
	movq	%rax, %rcx	# asm_out_file.188,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC15, %edi	#,
	call	fwrite	#
	.loc 1 1782 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	assemble_label, .-assemble_label
	.section	.rodata
.LC63:
	.string	"%U%s"
	.text
	.globl	assemble_name
	.type	assemble_name, @function
assemble_name:
.LFB46:
	.loc 1 1794 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# file, file
	movq	%rsi, -32(%rbp)	# name, name
	.loc 1 1798 0
	movq	-32(%rbp), %rax	# name, tmp64
	movzbl	(%rax), %eax	# *name_1(D), D.18548
	cmpb	$42, %al	#, D.18548
	sete	%al	#, D.18549
	movzbl	%al, %edx	# D.18549, D.18550
	movq	-32(%rbp), %rax	# name, tmp68
	addq	%rdx, %rax	# D.18550, tmp67
	movq	%rax, -16(%rbp)	# tmp67, real_name
	.loc 1 1800 0
	movq	-16(%rbp), %rax	# real_name, tmp69
	movq	%rax, %rdi	# tmp69,
	call	maybe_get_identifier	#
	movq	%rax, -8(%rbp)	# tmp70, id
	.loc 1 1801 0
	cmpq	$0, -8(%rbp)	#, id
	je	.L335	#,
	.loc 1 1802 0
	movq	-8(%rbp), %rax	# id, tmp71
	movzbl	18(%rax), %edx	#, tmp74
	orl	$4, %edx	#, tmp75
	movb	%dl, 18(%rax)	# tmp75,
.L335:
	.loc 1 1804 0
	movq	-32(%rbp), %rax	# name, tmp76
	movzbl	(%rax), %eax	# *name_1(D), D.18548
	cmpb	$42, %al	#, D.18548
	jne	.L336	#,
	.loc 1 1805 0
	movq	-32(%rbp), %rax	# name, tmp77
	leaq	1(%rax), %rdx	#, D.18551
	movq	-24(%rbp), %rax	# file, tmp78
	movq	%rax, %rsi	# tmp78,
	movq	%rdx, %rdi	# D.18551,
	call	fputs	#
	jmp	.L334	#
.L336:
	.loc 1 1807 0
	movq	-32(%rbp), %rdx	# name, tmp79
	movq	-24(%rbp), %rax	# file, tmp80
	movl	$.LC63, %esi	#,
	movq	%rax, %rdi	# tmp80,
	movl	$0, %eax	#,
	call	asm_fprintf	#
.L334:
	.loc 1 1808 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	assemble_name, .-assemble_name
	.section	.rodata
.LC64:
	.string	"LF"
	.text
	.globl	assemble_static_space
	.type	assemble_static_space, @function
assemble_static_space:
.LFB47:
	.loc 1 1816 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -68(%rbp)	# size, size
	.loc 1 1816 0
	movq	%fs:40, %rax	#, tmp83
	movq	%rax, -24(%rbp)	# tmp83, D.18555
	xorl	%eax, %eax	# tmp83
	.loc 1 1826 0
	movl	const_labelno(%rip), %eax	# const_labelno, const_labelno.189
	movl	%eax, %edx	# const_labelno.189, const_labelno.190
	leaq	-48(%rbp), %rax	#, tmp74
	movl	%edx, %ecx	# const_labelno.190,
	movl	$.LC64, %edx	#,
	movl	$.LC49, %esi	#,
	movq	%rax, %rdi	# tmp74,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 1 1827 0
	movl	const_labelno(%rip), %eax	# const_labelno, const_labelno.191
	addl	$1, %eax	#, const_labelno.192
	movl	%eax, const_labelno(%rip)	# const_labelno.192, const_labelno
	.loc 1 1828 0
	leaq	-48(%rbp), %rax	#, tmp75
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# tmp75,
	call	ggc_alloc_string	#
	movq	%rax, -64(%rbp)	# tmp76, namestring
	.loc 1 1830 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.194
	andl	$33554432, %eax	#, D.18553
	testl	%eax, %eax	# D.18553
	je	.L339	#,
	.loc 1 1830 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.193
	jmp	.L340	#
.L339:
	.loc 1 1830 0 discriminator 2
	movl	$4, %eax	#, iftmp.193
.L340:
	.loc 1 1830 0 discriminator 3
	movq	-64(%rbp), %rdx	# namestring, tmp77
	movl	%eax, %esi	# iftmp.193,
	movl	$68, %edi	#,
	call	gen_rtx_fmt_s	#
	movq	%rax, -56(%rbp)	# tmp78, x
	.loc 1 1837 0 is_stmt 1 discriminator 3
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.195
	movq	%rax, %rcx	# asm_out_file.195,
	movl	$8, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC59, %edi	#,
	call	fwrite	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.196
	leaq	-48(%rbp), %rdx	#, tmp79
	movq	%rdx, %rsi	# tmp79,
	movq	%rax, %rdi	# asm_out_file.196,
	call	assemble_name	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.197
	movq	%rax, %rsi	# asm_out_file.197,
	movl	$10, %edi	#,
	call	fputc	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.198
	movq	%rax, %rcx	# asm_out_file.198,
	movl	$7, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC57, %edi	#,
	call	fwrite	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.199
	leaq	-48(%rbp), %rdx	#, tmp80
	movq	%rdx, %rsi	# tmp80,
	movq	%rax, %rdi	# asm_out_file.199,
	call	assemble_name	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.200
	movl	-68(%rbp), %edx	# size, tmp81
	movl	$16, %ecx	#,
	movl	$.LC58, %esi	#,
	movq	%rax, %rdi	# asm_out_file.200,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1851 0 discriminator 3
	movq	-56(%rbp), %rax	# x, D.18554
	.loc 1 1852 0 discriminator 3
	movq	-24(%rbp), %rbx	# D.18555, tmp84
	xorq	%fs:40, %rbx	#, tmp84
	je	.L342	#,
	.loc 1 1852 0 is_stmt 0
	call	__stack_chk_fail	#
.L342:
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	assemble_static_space, .-assemble_static_space
	.type	min_align, @function
min_align:
.LFB48:
	.loc 1 1897 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# a, a
	movl	%esi, -8(%rbp)	# b, b
	.loc 1 1898 0
	movl	-8(%rbp), %eax	# b, tmp64
	movl	-4(%rbp), %edx	# a, tmp65
	movl	%edx, %ecx	# tmp65, D.18557
	orl	%eax, %ecx	# tmp64, D.18557
	movl	-8(%rbp), %eax	# b, tmp66
	movl	-4(%rbp), %edx	# a, tmp67
	orl	%edx, %eax	# tmp67, D.18557
	negl	%eax	# D.18557
	andl	%ecx, %eax	# D.18557, D.18557
	.loc 1 1899 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	min_align, .-min_align
	.globl	integer_asm_op
	.type	integer_asm_op, @function
integer_asm_op:
.LFB49:
	.loc 1 1913 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# size, size
	movl	%esi, -24(%rbp)	# aligned_p, aligned_p
	.loc 1 1916 0
	cmpl	$0, -24(%rbp)	#, aligned_p
	je	.L346	#,
	.loc 1 1917 0
	movq	$targetm+24, -8(%rbp)	#, ops
	jmp	.L347	#
.L346:
	.loc 1 1919 0
	movq	$targetm+56, -8(%rbp)	#, ops
.L347:
	.loc 1 1921 0
	cmpl	$16, -20(%rbp)	#, size
	ja	.L348	#,
	movl	-20(%rbp), %eax	# size, tmp61
	movq	.L350(,%rax,8), %rax	#, tmp62
	jmp	*%rax	# tmp62
	.section	.rodata
	.align 8
	.align 4
.L350:
	.quad	.L348
	.quad	.L349
	.quad	.L351
	.quad	.L348
	.quad	.L352
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L353
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L354
	.text
.L349:
	.loc 1 1924 0
	movq	targetm+16(%rip), %rax	# targetm.asm_out.byte_op, D.18558
	jmp	.L355	#
.L351:
	.loc 1 1926 0
	movq	-8(%rbp), %rax	# ops, tmp63
	movq	(%rax), %rax	# ops_1->hi, D.18558
	jmp	.L355	#
.L352:
	.loc 1 1928 0
	movq	-8(%rbp), %rax	# ops, tmp64
	movq	8(%rax), %rax	# ops_1->si, D.18558
	jmp	.L355	#
.L353:
	.loc 1 1930 0
	movq	-8(%rbp), %rax	# ops, tmp65
	movq	16(%rax), %rax	# ops_1->di, D.18558
	jmp	.L355	#
.L354:
	.loc 1 1932 0
	movq	-8(%rbp), %rax	# ops, tmp66
	movq	24(%rax), %rax	# ops_1->ti, D.18558
	jmp	.L355	#
.L348:
	.loc 1 1934 0
	movl	$0, %eax	#, D.18558
.L355:
	.loc 1 1936 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	integer_asm_op, .-integer_asm_op
	.globl	assemble_integer_with_op
	.type	assemble_integer_with_op, @function
assemble_integer_with_op:
.LFB50:
	.loc 1 1945 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# op, op
	movq	%rsi, -16(%rbp)	# x, x
	.loc 1 1946 0
	movq	asm_out_file(%rip), %rdx	# asm_out_file, asm_out_file.201
	movq	-8(%rbp), %rax	# op, tmp62
	movq	%rdx, %rsi	# asm_out_file.201,
	movq	%rax, %rdi	# tmp62,
	call	fputs	#
	.loc 1 1947 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.202
	movq	-16(%rbp), %rdx	# x, tmp63
	movq	%rdx, %rsi	# tmp63,
	movq	%rax, %rdi	# asm_out_file.202,
	call	output_addr_const	#
	.loc 1 1948 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.203
	movq	%rax, %rsi	# asm_out_file.203,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 1949 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	assemble_integer_with_op, .-assemble_integer_with_op
	.globl	default_assemble_integer
	.type	default_assemble_integer, @function
default_assemble_integer:
.LFB51:
	.loc 1 1958 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	movl	%esi, -28(%rbp)	# size, size
	movl	%edx, -32(%rbp)	# aligned_p, aligned_p
	.loc 1 1959 0
	movl	-28(%rbp), %eax	# size, size.204
	movl	-32(%rbp), %edx	# aligned_p, tmp63
	movl	%edx, %esi	# tmp63,
	movl	%eax, %edi	# size.204,
	call	integer_asm_op	#
	movq	%rax, -8(%rbp)	# tmp64, op
	.loc 1 1960 0
	cmpq	$0, -8(%rbp)	#, op
	je	.L358	#,
	.loc 1 1960 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rdx	# x, tmp65
	movq	-8(%rbp), %rax	# op, tmp66
	movq	%rdx, %rsi	# tmp65,
	movq	%rax, %rdi	# tmp66,
	call	assemble_integer_with_op	#
	movl	$1, %eax	#, iftmp.205
	jmp	.L359	#
.L358:
	.loc 1 1960 0 discriminator 2
	movl	$0, %eax	#, iftmp.205
.L359:
	.loc 1 1960 0 discriminator 4
	andl	$1, %eax	#, D.18559
	.loc 1 1961 0 is_stmt 1 discriminator 4
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	default_assemble_integer, .-default_assemble_integer
	.globl	assemble_integer
	.type	assemble_integer, @function
assemble_integer:
.LFB52:
	.loc 1 1974 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	movl	%esi, -44(%rbp)	# size, size
	movl	%edx, -48(%rbp)	# align, align
	movl	%ecx, -52(%rbp)	# force, force
	.loc 1 1977 0
	movl	-44(%rbp), %eax	# size, tmp78
	sall	$3, %eax	#, D.18561
	movl	$128, %edx	#, tmp79
	cmpl	$128, %eax	#, D.18561
	cmova	%edx, %eax	# D.18561,, tmp79, D.18561
	cmpl	-48(%rbp), %eax	# align, D.18561
	setbe	%al	#, D.18560
	movzbl	%al, %eax	# D.18560, tmp80
	movl	%eax, -28(%rbp)	# tmp80, aligned_p
	.loc 1 1980 0
	movq	targetm+88(%rip), %rax	# targetm.asm_out.integer, D.18562
	movl	-28(%rbp), %edx	# aligned_p, tmp81
	movl	-44(%rbp), %esi	# size, tmp82
	movq	-40(%rbp), %rcx	# x, tmp83
	movq	%rcx, %rdi	# tmp83,
	call	*%rax	# D.18562
	testb	%al, %al	# D.18560
	je	.L362	#,
	.loc 1 1981 0
	movl	$1, %eax	#, D.18560
	jmp	.L363	#
.L362:
	.loc 1 1985 0
	cmpl	$1, -44(%rbp)	#, size
	jbe	.L364	#,
.LBB23:
	.loc 1 1991 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.208
	andl	$33554432, %eax	#, D.18563
	testl	%eax, %eax	# D.18563
	je	.L365	#,
	.loc 1 1991 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.207
	jmp	.L366	#
.L365:
	.loc 1 1991 0 discriminator 2
	movl	$4, %eax	#, iftmp.207
.L366:
	.loc 1 1991 0 discriminator 3
	cmpl	-44(%rbp), %eax	# size, iftmp.207
	jae	.L367	#,
	.loc 1 1991 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.210
	andl	$33554432, %eax	#, D.18563
	testl	%eax, %eax	# D.18563
	je	.L368	#,
	.loc 1 1991 0 discriminator 3
	movl	$8, %eax	#, iftmp.209
	jmp	.L370	#
.L368:
	.loc 1 1991 0 discriminator 4
	movl	$4, %eax	#, iftmp.209
	jmp	.L370	#
.L367:
	.loc 1 1991 0 discriminator 2
	movl	$1, %eax	#, iftmp.206
.L370:
	.loc 1 1991 0 discriminator 5
	movl	%eax, -24(%rbp)	# iftmp.206, subsize
	.loc 1 1992 0 is_stmt 1 discriminator 5
	movl	-24(%rbp), %eax	# subsize, tmp84
	leal	0(,%rax,8), %edx	#, D.18561
	movl	-48(%rbp), %eax	# align, tmp86
	cmpl	%eax, %edx	# tmp86, D.18561
	cmovbe	%edx, %eax	# D.18561,, tmp85
	movl	%eax, -20(%rbp)	# tmp85, subalign
	.loc 1 1993 0 discriminator 5
	movl	-24(%rbp), %eax	# subsize, tmp87
	sall	$3, %eax	#, D.18561
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movl	%eax, %edi	# D.18561,
	call	mode_for_size	#
	movl	%eax, -16(%rbp)	# tmp88, omode
	.loc 1 1994 0 discriminator 5
	movl	-44(%rbp), %eax	# size, tmp89
	sall	$3, %eax	#, D.18561
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movl	%eax, %edi	# D.18561,
	call	mode_for_size	#
	movl	%eax, -12(%rbp)	# tmp90, imode
	.loc 1 1996 0 discriminator 5
	movl	$0, -32(%rbp)	#, i
	jmp	.L371	#
.L373:
.LBB24:
	.loc 1 1998 0
	movl	-32(%rbp), %ecx	# i, tmp91
	movl	-12(%rbp), %edx	# imode, tmp92
	movq	-40(%rbp), %rsi	# x, tmp93
	movl	-16(%rbp), %eax	# omode, tmp94
	movl	%eax, %edi	# tmp94,
	call	simplify_subreg	#
	movq	%rax, -8(%rbp)	# tmp95, partial
	.loc 1 1999 0
	cmpq	$0, -8(%rbp)	#, partial
	je	.L372	#,
	.loc 1 1999 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %edx	# subalign, tmp96
	movl	-24(%rbp), %esi	# subsize, tmp97
	movq	-8(%rbp), %rax	# partial, tmp98
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp98,
	call	assemble_integer	#
	xorl	$1, %eax	#, D.18560
	testb	%al, %al	# D.18560
	jne	.L372	#,
.LBE24:
	.loc 1 1996 0 is_stmt 1
	movl	-24(%rbp), %eax	# subsize, tmp99
	addl	%eax, -32(%rbp)	# tmp99, i
.L371:
	.loc 1 1996 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# i, tmp100
	cmpl	-44(%rbp), %eax	# size, tmp100
	jb	.L373	#,
.L372:
	.loc 1 2002 0 is_stmt 1
	movl	-32(%rbp), %eax	# i, tmp101
	cmpl	-44(%rbp), %eax	# size, tmp101
	jne	.L374	#,
	.loc 1 2003 0
	movl	$1, %eax	#, D.18560
	jmp	.L363	#
.L374:
	.loc 1 2007 0
	cmpl	$0, -32(%rbp)	#, i
	je	.L364	#,
	.loc 1 2008 0
	movl	$__FUNCTION__.13266, %edx	#,
	movl	$2008, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L364:
.LBE23:
	.loc 1 2011 0
	cmpl	$0, -52(%rbp)	#, force
	je	.L375	#,
	.loc 1 2012 0
	movl	$__FUNCTION__.13266, %edx	#,
	movl	$2012, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L375:
	.loc 1 2014 0
	movl	$0, %eax	#, D.18560
.L363:
	.loc 1 2015 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	assemble_integer, .-assemble_integer
	.globl	assemble_real
	.type	assemble_real, @function
assemble_real:
.LFB53:
	.loc 1 2022 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movl	%edi, -52(%rbp)	# mode, mode
	movl	%esi, -56(%rbp)	# align, align
	.loc 1 2025 0
	movl	-56(%rbp), %eax	# align, tmp97
	movl	$32, %esi	#,
	movl	%eax, %edi	# tmp97,
	call	min_align	#
	movl	%eax, -44(%rbp)	# tmp98, nalign
	.loc 1 2030 0
	movl	-52(%rbp), %eax	# mode, mode
	cmpl	$16, %eax	#, mode
	je	.L378	#,
	cmpl	$16, %eax	#, mode
	ja	.L379	#,
	cmpl	$15, %eax	#, mode
	je	.L380	#,
	jmp	.L377	#
.L379:
	cmpl	$17, %eax	#, mode
	je	.L381	#,
	cmpl	$18, %eax	#, mode
	je	.L382	#,
	jmp	.L377	#
.L380:
	.loc 1 2033 0
	movq	16(%rbp), %rax	# d, tmp100
	movq	%rax, (%rsp)	# tmp100,
	movq	24(%rbp), %rax	# d, tmp101
	movq	%rax, 8(%rsp)	# tmp101,
	movq	32(%rbp), %rax	# d, tmp102
	movq	%rax, 16(%rsp)	# tmp102,
	call	etarsingle	#
	movq	%rax, -40(%rbp)	# D.18564, l
	.loc 1 2034 0
	movq	-40(%rbp), %rax	# l, l.211
	movq	%rax, %rsi	# l.211,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movl	-56(%rbp), %edx	# align, tmp103
	movl	$1, %ecx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.18565,
	call	assemble_integer	#
	.loc 1 2035 0
	jmp	.L383	#
.L378:
	.loc 1 2037 0
	leaq	-32(%rbp), %rax	#, tmp104
	movq	16(%rbp), %rdx	# d, tmp105
	movq	%rdx, (%rsp)	# tmp105,
	movq	24(%rbp), %rdx	# d, tmp106
	movq	%rdx, 8(%rsp)	# tmp106,
	movq	32(%rbp), %rdx	# d, tmp107
	movq	%rdx, 16(%rsp)	# tmp107,
	movq	%rax, %rdi	# tmp104,
	call	etardouble	#
	.loc 1 2038 0
	movq	-32(%rbp), %rax	# data, D.18566
	movq	%rax, %rsi	# D.18564,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movl	-56(%rbp), %edx	# align, tmp108
	movl	$1, %ecx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.18565,
	call	assemble_integer	#
	.loc 1 2039 0
	movq	-24(%rbp), %rax	# data, D.18566
	movq	%rax, %rsi	# D.18564,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movl	-44(%rbp), %edx	# nalign, tmp109
	movl	$1, %ecx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.18565,
	call	assemble_integer	#
	.loc 1 2040 0
	jmp	.L383	#
.L381:
	.loc 1 2042 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.212
	andl	$16777216, %eax	#, D.18567
	testl	%eax, %eax	# D.18567
	jne	.L384	#,
	.loc 1 2042 0 is_stmt 0 discriminator 1
	leaq	-32(%rbp), %rax	#, tmp110
	movq	16(%rbp), %rdx	# d, tmp111
	movq	%rdx, (%rsp)	# tmp111,
	movq	24(%rbp), %rdx	# d, tmp112
	movq	%rdx, 8(%rsp)	# tmp112,
	movq	32(%rbp), %rdx	# d, tmp113
	movq	%rdx, 16(%rsp)	# tmp113,
	movq	%rax, %rdi	# tmp110,
	call	etarldouble	#
	jmp	.L385	#
.L384:
	.loc 1 2042 0 discriminator 2
	movl	target_flags(%rip), %eax	# target_flags, target_flags.213
	andl	$16777216, %eax	#, D.18567
	testl	%eax, %eax	# D.18567
	je	.L386	#,
	.loc 1 2042 0 discriminator 1
	leaq	-32(%rbp), %rax	#, tmp114
	movq	16(%rbp), %rdx	# d, tmp115
	movq	%rdx, (%rsp)	# tmp115,
	movq	24(%rbp), %rdx	# d, tmp116
	movq	%rdx, 8(%rsp)	# tmp116,
	movq	32(%rbp), %rdx	# d, tmp117
	movq	%rdx, 16(%rsp)	# tmp117,
	movq	%rax, %rdi	# tmp114,
	call	etartdouble	#
	jmp	.L385	#
.L386:
	.loc 1 2042 0 discriminator 2
	movl	$__FUNCTION__.13280, %edx	#,
	movl	$2042, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L385:
	.loc 1 2043 0 is_stmt 1
	movq	-32(%rbp), %rax	# data, D.18566
	movq	%rax, %rsi	# D.18564,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movl	-56(%rbp), %edx	# align, tmp118
	movl	$1, %ecx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.18565,
	call	assemble_integer	#
	.loc 1 2044 0
	movq	-24(%rbp), %rax	# data, D.18566
	movq	%rax, %rsi	# D.18564,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movl	-44(%rbp), %edx	# nalign, tmp119
	movl	$1, %ecx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.18565,
	call	assemble_integer	#
	.loc 1 2045 0
	movq	-16(%rbp), %rax	# data, D.18566
	movq	%rax, %rsi	# D.18564,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movl	-44(%rbp), %edx	# nalign, tmp120
	movl	$1, %ecx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.18565,
	call	assemble_integer	#
	.loc 1 2046 0
	jmp	.L383	#
.L382:
	.loc 1 2048 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.214
	andl	$16777216, %eax	#, D.18567
	testl	%eax, %eax	# D.18567
	jne	.L387	#,
	.loc 1 2048 0 is_stmt 0 discriminator 1
	leaq	-32(%rbp), %rax	#, tmp121
	movq	16(%rbp), %rdx	# d, tmp122
	movq	%rdx, (%rsp)	# tmp122,
	movq	24(%rbp), %rdx	# d, tmp123
	movq	%rdx, 8(%rsp)	# tmp123,
	movq	32(%rbp), %rdx	# d, tmp124
	movq	%rdx, 16(%rsp)	# tmp124,
	movq	%rax, %rdi	# tmp121,
	call	etarldouble	#
	jmp	.L388	#
.L387:
	.loc 1 2048 0 discriminator 2
	movl	target_flags(%rip), %eax	# target_flags, target_flags.215
	andl	$16777216, %eax	#, D.18567
	testl	%eax, %eax	# D.18567
	je	.L389	#,
	.loc 1 2048 0 discriminator 1
	leaq	-32(%rbp), %rax	#, tmp125
	movq	16(%rbp), %rdx	# d, tmp126
	movq	%rdx, (%rsp)	# tmp126,
	movq	24(%rbp), %rdx	# d, tmp127
	movq	%rdx, 8(%rsp)	# tmp127,
	movq	32(%rbp), %rdx	# d, tmp128
	movq	%rdx, 16(%rsp)	# tmp128,
	movq	%rax, %rdi	# tmp125,
	call	etartdouble	#
	jmp	.L388	#
.L389:
	.loc 1 2048 0 discriminator 2
	movl	$__FUNCTION__.13280, %edx	#,
	movl	$2048, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L388:
	.loc 1 2049 0 is_stmt 1
	movq	-32(%rbp), %rax	# data, D.18566
	movq	%rax, %rsi	# D.18564,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movl	-56(%rbp), %edx	# align, tmp129
	movl	$1, %ecx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.18565,
	call	assemble_integer	#
	.loc 1 2050 0
	movq	-24(%rbp), %rax	# data, D.18566
	movq	%rax, %rsi	# D.18564,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movl	-44(%rbp), %edx	# nalign, tmp130
	movl	$1, %ecx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.18565,
	call	assemble_integer	#
	.loc 1 2051 0
	movq	-16(%rbp), %rax	# data, D.18566
	movq	%rax, %rsi	# D.18564,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movl	-44(%rbp), %edx	# nalign, tmp131
	movl	$1, %ecx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.18565,
	call	assemble_integer	#
	.loc 1 2052 0
	movq	-8(%rbp), %rax	# data, D.18566
	movq	%rax, %rsi	# D.18564,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movl	-44(%rbp), %edx	# nalign, tmp132
	movl	$1, %ecx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.18565,
	call	assemble_integer	#
	.loc 1 2053 0
	jmp	.L383	#
.L377:
	.loc 1 2055 0
	movl	$__FUNCTION__.13280, %edx	#,
	movl	$2055, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L383:
	.loc 1 2057 0
	nop
	.loc 1 2096 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	assemble_real, .-assemble_real
	.globl	immed_double_const
	.type	immed_double_const, @function
immed_double_const:
.LFB54:
	.loc 1 2110 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# i0, i0
	movq	%rsi, -32(%rbp)	# i1, i1
	movl	%edx, -36(%rbp)	# mode, mode
	.loc 1 2113 0
	movl	-36(%rbp), %eax	# mode, mode.218
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.18571
	cmpl	$1, %eax	#, D.18571
	je	.L391	#,
	.loc 1 2114 0
	movl	-36(%rbp), %eax	# mode, mode.219
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.18571
	cmpl	$3, %eax	#, D.18571
	jne	.L392	#,
.L391:
.LBB25:
	.loc 1 2119 0
	movl	-36(%rbp), %eax	# mode, mode.220
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.18572
	movzwl	%ax, %eax	# D.18572, tmp95
	movl	%eax, -12(%rbp)	# tmp95, width
	.loc 1 2120 0
	cmpl	$63, -12(%rbp)	#, width
	jg	.L393	#,
	.loc 1 2121 0
	movl	-12(%rbp), %eax	# width, tmp96
	subl	$1, %eax	#, D.18573
	movq	$-1, %rdx	#, tmp97
	movl	%eax, %ecx	# D.18573, tmp121
	salq	%cl, %rdx	# tmp121, D.18574
	movq	%rdx, %rax	# D.18574, D.18574
	andq	-24(%rbp), %rax	# i0, D.18574
	.loc 1 2122 0
	movl	-12(%rbp), %edx	# width, tmp98
	subl	$1, %edx	#, D.18573
	movq	$-1, %rsi	#, tmp99
	movl	%edx, %ecx	# D.18573, tmp123
	salq	%cl, %rsi	# tmp123, D.18574
	movq	%rsi, %rdx	# D.18574, D.18574
	.loc 1 2121 0
	cmpq	%rdx, %rax	# D.18574, D.18574
	je	.L393	#,
	.loc 1 2123 0
	movl	-12(%rbp), %eax	# width, tmp100
	movl	$1, %edx	#, tmp101
	movl	%eax, %ecx	# tmp100, tmp125
	salq	%cl, %rdx	# tmp125, D.18574
	movq	%rdx, %rax	# D.18574, D.18574
	subq	$1, %rax	#, D.18574
	andq	%rax, -24(%rbp)	# D.18574, i0
	movq	$0, -32(%rbp)	#, i1
	jmp	.L394	#
.L393:
	.loc 1 2124 0
	cmpl	$64, -12(%rbp)	#, width
	jne	.L395	#,
	.loc 1 2125 0
	cmpq	$-1, -32(%rbp)	#, i1
	jne	.L396	#,
	.loc 1 2125 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, i0
	js	.L395	#,
.L396:
	.loc 1 2126 0 is_stmt 1
	movq	$0, -32(%rbp)	#, i1
	jmp	.L394	#
.L395:
	.loc 1 2127 0
	cmpl	$128, -12(%rbp)	#, width
	jle	.L394	#,
	.loc 1 2129 0
	movl	$__FUNCTION__.13302, %edx	#,
	movl	$2129, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L394:
	.loc 1 2140 0
	cmpl	$63, -12(%rbp)	#, width
	jg	.L397	#,
	.loc 1 2141 0
	movl	-12(%rbp), %eax	# width, tmp102
	subl	$1, %eax	#, D.18573
	movq	-24(%rbp), %rdx	# i0, tmp103
	movl	%eax, %ecx	# D.18573, tmp127
	sarq	%cl, %rdx	# tmp127, D.18574
	movq	%rdx, %rax	# D.18574, D.18574
	andl	$1, %eax	#, D.18574
	testq	%rax, %rax	# D.18574
	je	.L397	#,
	.loc 1 2142 0
	movl	-12(%rbp), %eax	# width, tmp104
	movq	$-1, %rdx	#, tmp105
	movl	%eax, %ecx	# tmp104, tmp129
	salq	%cl, %rdx	# tmp129, D.18574
	movq	%rdx, %rax	# D.18574, D.18574
	orq	%rax, -24(%rbp)	# D.18574, i0
.L397:
	.loc 1 2161 0
	cmpl	$64, -12(%rbp)	#, width
	jg	.L398	#,
	.loc 1 2162 0
	cmpq	$0, -24(%rbp)	#, i0
	jns	.L399	#,
	.loc 1 2162 0 is_stmt 0 discriminator 1
	movq	$-1, %rax	#, iftmp.221
	jmp	.L400	#
.L399:
	.loc 1 2162 0 discriminator 2
	movl	$0, %eax	#, iftmp.221
.L400:
	.loc 1 2162 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.221, i1
.L398:
	.loc 1 2165 0 is_stmt 1
	cmpq	$0, -32(%rbp)	#, i1
	jne	.L401	#,
	.loc 1 2165 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, i0
	jns	.L402	#,
.L401:
	.loc 1 2166 0 is_stmt 1
	cmpq	$-1, -32(%rbp)	#, i1
	jne	.L403	#,
	.loc 1 2166 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, i0
	jns	.L403	#,
.L402:
	.loc 1 2167 0 is_stmt 1
	movq	-24(%rbp), %rax	# i0, tmp106
	movq	%rax, %rsi	# tmp106,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	jmp	.L404	#
.L403:
	.loc 1 2170 0
	movl	$0, -36(%rbp)	#, mode
.L392:
.LBE25:
	.loc 1 2175 0
	movq	cfun(%rip), %rax	# cfun, cfun.222
	testq	%rax, %rax	# cfun.222
	je	.L405	#,
	.loc 1 2176 0
	movq	cfun(%rip), %rax	# cfun, cfun.223
	movq	32(%rax), %rax	# cfun.223_42->varasm, D.18575
	movq	40(%rax), %rax	# _43->x_const_double_chain, tmp107
	movq	%rax, -8(%rbp)	# tmp107, r
	jmp	.L406	#
.L408:
	.loc 1 2177 0
	movq	-8(%rbp), %rax	# r, tmp108
	movq	16(%rax), %rax	# r_8->fld[1].rtwint, D.18574
	cmpq	-24(%rbp), %rax	# i0, D.18574
	jne	.L407	#,
	.loc 1 2177 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# r, tmp109
	movq	24(%rax), %rax	# r_8->fld[2].rtwint, D.18574
	cmpq	-32(%rbp), %rax	# i1, D.18574
	jne	.L407	#,
	.loc 1 2178 0 is_stmt 1
	movq	-8(%rbp), %rax	# r, tmp110
	movzbl	2(%rax), %eax	# r_8->mode, D.18576
	movzbl	%al, %eax	# D.18576, D.18577
	cmpl	-36(%rbp), %eax	# mode, D.18577
	jne	.L407	#,
	.loc 1 2179 0
	movq	-8(%rbp), %rax	# r, D.18570
	jmp	.L404	#
.L407:
	.loc 1 2176 0
	movq	-8(%rbp), %rax	# r, tmp111
	movq	8(%rax), %rax	# r_8->fld[0].rtx, tmp112
	movq	%rax, -8(%rbp)	# tmp112, r
.L406:
	.loc 1 2176 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, r
	jne	.L408	#,
.L405:
	.loc 1 2182 0 is_stmt 1
	movq	-32(%rbp), %rdx	# i1, tmp113
	movq	-24(%rbp), %rcx	# i0, tmp114
	movl	-36(%rbp), %eax	# mode, tmp115
	movq	%rcx, %rsi	# tmp114,
	movl	%eax, %edi	# tmp115,
	call	gen_rtx_CONST_DOUBLE	#
	movq	%rax, -8(%rbp)	# tmp116, r
	.loc 1 2185 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.224
	testq	%rax, %rax	# current_function_decl.224
	je	.L409	#,
	.loc 1 2187 0
	movq	cfun(%rip), %rax	# cfun, cfun.225
	movq	32(%rax), %rax	# cfun.225_53->varasm, D.18575
	movq	40(%rax), %rdx	# _54->x_const_double_chain, D.18578
	movq	-8(%rbp), %rax	# r, tmp117
	movq	%rdx, 8(%rax)	# D.18578, r_51->fld[0].rtx
	.loc 1 2188 0
	movq	cfun(%rip), %rax	# cfun, cfun.226
	movq	32(%rax), %rax	# cfun.226_56->varasm, D.18575
	movq	-8(%rbp), %rdx	# r, tmp118
	movq	%rdx, 40(%rax)	# tmp118, _57->x_const_double_chain
.L409:
	.loc 1 2191 0
	movq	-8(%rbp), %rax	# r, D.18570
.L404:
	.loc 1 2192 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	immed_double_const, .-immed_double_const
	.globl	immed_real_const_1
	.type	immed_real_const_1, @function
immed_real_const_1:
.LFB55:
	.loc 1 2201 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movl	%edi, -52(%rbp)	# mode, mode
	.loc 1 2208 0
	movq	16(%rbp), %rax	# d, tmp85
	movq	%rax, -32(%rbp)	# tmp85, u.d
	movq	24(%rbp), %rax	# d, tmp86
	movq	%rax, -24(%rbp)	# tmp86, u.d
	movq	32(%rbp), %rax	# d, tmp87
	movq	%rax, -16(%rbp)	# tmp87, u.d
	.loc 1 2214 0
	movq	16(%rbp), %rax	# d, tmp88
	movq	%rax, (%rsp)	# tmp88,
	movq	24(%rbp), %rax	# d, tmp89
	movq	%rax, 8(%rsp)	# tmp89,
	movq	32(%rbp), %rax	# d, tmp90
	movq	%rax, 16(%rsp)	# tmp90,
	call	target_isnan	#
	testl	%eax, %eax	# D.18580
	jne	.L411	#,
	.loc 1 2214 0 is_stmt 0 discriminator 1
	movl	$24, %edx	#,
	leaq	16(%rbp), %rsi	#,
	movl	$dconst0, %edi	#,
	call	memcmp	#
	testl	%eax, %eax	# D.18580
	jne	.L411	#,
	.loc 1 2215 0 is_stmt 1
	movl	-52(%rbp), %eax	# mode, mode.227
	cltq
	movq	const_tiny_rtx(,%rax,8), %rax	# const_tiny_rtx, D.18579
	jmp	.L421	#
.L411:
	.loc 1 2216 0
	movq	16(%rbp), %rax	# d, tmp92
	movq	%rax, (%rsp)	# tmp92,
	movq	24(%rbp), %rax	# d, tmp93
	movq	%rax, 8(%rsp)	# tmp93,
	movq	32(%rbp), %rax	# d, tmp94
	movq	%rax, 16(%rsp)	# tmp94,
	call	target_isnan	#
	testl	%eax, %eax	# D.18580
	jne	.L413	#,
	.loc 1 2216 0 is_stmt 0 discriminator 1
	movq	16(%rbp), %rax	# d, tmp95
	movq	%rax, 24(%rsp)	# tmp95,
	movq	24(%rbp), %rax	# d, tmp96
	movq	%rax, 32(%rsp)	# tmp96,
	movq	32(%rbp), %rax	# d, tmp97
	movq	%rax, 40(%rsp)	# tmp97,
	movq	dconst1(%rip), %rax	# dconst1, tmp99
	movq	%rax, (%rsp)	# tmp99,
	movq	dconst1+8(%rip), %rax	# dconst1, tmp100
	movq	%rax, 8(%rsp)	# tmp100,
	movq	dconst1+16(%rip), %rax	# dconst1, tmp101
	movq	%rax, 16(%rsp)	# tmp101,
	call	ereal_cmp	#
	testl	%eax, %eax	# D.18580
	jne	.L413	#,
	.loc 1 2217 0 is_stmt 1
	movl	-52(%rbp), %eax	# mode, mode.228
	cltq
	addq	$59, %rax	#, tmp103
	movq	const_tiny_rtx(,%rax,8), %rax	# const_tiny_rtx, D.18579
	jmp	.L421	#
.L413:
	.loc 1 2218 0
	movq	16(%rbp), %rax	# d, tmp104
	movq	%rax, (%rsp)	# tmp104,
	movq	24(%rbp), %rax	# d, tmp105
	movq	%rax, 8(%rsp)	# tmp105,
	movq	32(%rbp), %rax	# d, tmp106
	movq	%rax, 16(%rsp)	# tmp106,
	call	target_isnan	#
	testl	%eax, %eax	# D.18580
	jne	.L414	#,
	.loc 1 2218 0 is_stmt 0 discriminator 1
	movq	16(%rbp), %rax	# d, tmp107
	movq	%rax, 24(%rsp)	# tmp107,
	movq	24(%rbp), %rax	# d, tmp108
	movq	%rax, 32(%rsp)	# tmp108,
	movq	32(%rbp), %rax	# d, tmp109
	movq	%rax, 40(%rsp)	# tmp109,
	movq	dconst2(%rip), %rax	# dconst2, tmp111
	movq	%rax, (%rsp)	# tmp111,
	movq	dconst2+8(%rip), %rax	# dconst2, tmp112
	movq	%rax, 8(%rsp)	# tmp112,
	movq	dconst2+16(%rip), %rax	# dconst2, tmp113
	movq	%rax, 16(%rsp)	# tmp113,
	call	ereal_cmp	#
	testl	%eax, %eax	# D.18580
	jne	.L414	#,
	.loc 1 2219 0 is_stmt 1
	movl	-52(%rbp), %eax	# mode, mode.229
	cltq
	addq	$118, %rax	#, tmp115
	movq	const_tiny_rtx(,%rax,8), %rax	# const_tiny_rtx, D.18579
	jmp	.L421	#
.L414:
	.loc 1 2232 0
	movq	cfun(%rip), %rax	# cfun, cfun.230
	testq	%rax, %rax	# cfun.230
	je	.L415	#,
	.loc 1 2233 0
	movq	cfun(%rip), %rax	# cfun, cfun.231
	movq	32(%rax), %rax	# cfun.231_17->varasm, D.18581
	movq	40(%rax), %rax	# _18->x_const_double_chain, tmp116
	movq	%rax, -40(%rbp)	# tmp116, r
	jmp	.L416	#
.L418:
	.loc 1 2234 0
	movq	-40(%rbp), %rax	# r, tmp117
	leaq	16(%rax), %rcx	#, D.18582
	leaq	-32(%rbp), %rax	#, tmp118
	movl	$24, %edx	#,
	movq	%rax, %rsi	# tmp118,
	movq	%rcx, %rdi	# D.18582,
	call	memcmp	#
	testl	%eax, %eax	# D.18580
	jne	.L417	#,
	.loc 1 2235 0
	movq	-40(%rbp), %rax	# r, tmp119
	movzbl	2(%rax), %eax	# r_1->mode, D.18583
	movzbl	%al, %eax	# D.18583, D.18584
	cmpl	-52(%rbp), %eax	# mode, D.18584
	jne	.L417	#,
	.loc 1 2236 0
	movq	-40(%rbp), %rax	# r, D.18579
	jmp	.L421	#
.L417:
	.loc 1 2233 0
	movq	-40(%rbp), %rax	# r, tmp120
	movq	8(%rax), %rax	# r_1->fld[0].rtx, tmp121
	movq	%rax, -40(%rbp)	# tmp121, r
.L416:
	.loc 1 2233 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, r
	jne	.L418	#,
.L415:
	.loc 1 2244 0 is_stmt 1
	movl	$55, %edi	#,
	call	rtx_alloc	#
	movq	%rax, -40(%rbp)	# tmp122, r
	.loc 1 2245 0
	movl	-52(%rbp), %eax	# mode, tmp123
	movl	%eax, %edx	# tmp123, D.18583
	movq	-40(%rbp), %rax	# r, tmp124
	movb	%dl, 2(%rax)	# D.18583, r_26->mode
	.loc 1 2246 0
	movq	-40(%rbp), %rax	# r, tmp125
	leaq	16(%rax), %rcx	#, D.18582
	leaq	-32(%rbp), %rax	#, tmp126
	movl	$24, %edx	#,
	movq	%rax, %rsi	# tmp126,
	movq	%rcx, %rdi	# D.18582,
	call	memcpy	#
	.loc 1 2250 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.232
	testq	%rax, %rax	# current_function_decl.232
	je	.L419	#,
	.loc 1 2252 0
	movq	cfun(%rip), %rax	# cfun, cfun.233
	movq	32(%rax), %rax	# cfun.233_30->varasm, D.18581
	movq	40(%rax), %rdx	# _31->x_const_double_chain, D.18579
	movq	-40(%rbp), %rax	# r, tmp127
	movq	%rdx, 8(%rax)	# D.18579, r_26->fld[0].rtx
	.loc 1 2253 0
	movq	cfun(%rip), %rax	# cfun, cfun.234
	movq	32(%rax), %rax	# cfun.234_33->varasm, D.18581
	movq	-40(%rbp), %rdx	# r, tmp128
	movq	%rdx, 40(%rax)	# tmp128, _34->x_const_double_chain
	jmp	.L420	#
.L419:
	.loc 1 2256 0
	movq	-40(%rbp), %rax	# r, tmp129
	movq	$0, 8(%rax)	#, r_26->fld[0].rtx
.L420:
	.loc 1 2258 0
	movq	-40(%rbp), %rax	# r, D.18579
.L421:
	.loc 1 2259 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	immed_real_const_1, .-immed_real_const_1
	.globl	immed_real_const
	.type	immed_real_const, @function
immed_real_const:
.LFB56:
	.loc 1 2267 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# exp, exp
	.loc 1 2268 0
	movq	-8(%rbp), %rax	# exp, tmp64
	movq	8(%rax), %rax	# exp_1(D)->common.type, D.18585
	movzbl	61(%rax), %eax	# *_2, tmp67
	shrb	%al	# D.18586
	movzbl	%al, %edx	# D.18586, D.18587
	movq	-8(%rbp), %rax	# exp, tmp68
	movq	32(%rax), %rcx	# exp_1(D)->real_cst.real_cst, tmp69
	movq	%rcx, (%rsp)	# tmp69,
	movq	40(%rax), %rcx	# exp_1(D)->real_cst.real_cst, tmp70
	movq	%rcx, 8(%rsp)	# tmp70,
	movq	48(%rax), %rax	# exp_1(D)->real_cst.real_cst, tmp71
	movq	%rax, 16(%rsp)	# tmp71,
	movl	%edx, %edi	# D.18587,
	call	immed_real_const_1	#
	.loc 1 2269 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	immed_real_const, .-immed_real_const
	.globl	clear_const_double_mem
	.type	clear_const_double_mem, @function
clear_const_double_mem:
.LFB57:
	.loc 1 2277 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2280 0
	movq	cfun(%rip), %rax	# cfun, cfun.235
	movq	32(%rax), %rax	# cfun.235_2->varasm, D.18589
	movq	40(%rax), %rax	# _3->x_const_double_chain, tmp63
	movq	%rax, -16(%rbp)	# tmp63, r
	jmp	.L425	#
.L426:
	.loc 1 2282 0 discriminator 2
	movq	-16(%rbp), %rax	# r, tmp64
	movq	8(%rax), %rax	# r_1->fld[0].rtx, tmp65
	movq	%rax, -8(%rbp)	# tmp65, next
	.loc 1 2283 0 discriminator 2
	movq	-16(%rbp), %rax	# r, tmp66
	movq	$0, 8(%rax)	#, r_1->fld[0].rtx
	.loc 1 2280 0 discriminator 2
	movq	-8(%rbp), %rax	# next, tmp67
	movq	%rax, -16(%rbp)	# tmp67, r
.L425:
	.loc 1 2280 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, r
	jne	.L426	#,
	.loc 1 2285 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.236
	movq	32(%rax), %rax	# cfun.236_7->varasm, D.18589
	movq	$0, 40(%rax)	#, _8->x_const_double_chain
	.loc 1 2286 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	clear_const_double_mem, .-clear_const_double_mem
	.type	decode_addr_const, @function
decode_addr_const:
.LFB58:
	.loc 1 2303 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# exp, exp
	movq	%rsi, -64(%rbp)	# value, value
	.loc 1 2304 0
	movq	-56(%rbp), %rax	# exp, tmp89
	movq	32(%rax), %rax	# exp_7(D)->exp.operands, tmp90
	movq	%rax, -32(%rbp)	# tmp90, target
	.loc 1 2305 0
	movl	$0, -36(%rbp)	#, offset
.L432:
	.loc 1 2310 0
	movq	-32(%rbp), %rax	# target, tmp91
	movzbl	16(%rax), %eax	# target_1->common.code, D.18590
	cmpb	$39, %al	#, D.18590
	jne	.L428	#,
	.loc 1 2311 0
	movq	-32(%rbp), %rax	# target, tmp92
	movq	40(%rax), %rax	# target_1->exp.operands, D.18591
	movq	%rax, %rdi	# D.18591,
	call	byte_position	#
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.18591,
	call	host_integerp	#
	testl	%eax, %eax	# D.18592
	je	.L428	#,
	.loc 1 2314 0
	movq	-32(%rbp), %rax	# target, tmp93
	movq	40(%rax), %rax	# target_1->exp.operands, D.18591
	movq	%rax, %rdi	# D.18591,
	call	int_byte_position	#
	movl	%eax, %edx	# D.18593, D.18594
	movl	-36(%rbp), %eax	# offset, offset.237
	addl	%edx, %eax	# D.18594, D.18594
	movl	%eax, -36(%rbp)	# D.18594, offset
	.loc 1 2315 0
	movq	-32(%rbp), %rax	# target, tmp94
	movq	32(%rax), %rax	# target_1->exp.operands, tmp95
	movq	%rax, -32(%rbp)	# tmp95, target
	.loc 1 2326 0
	jmp	.L432	#
.L428:
	.loc 1 2317 0
	movq	-32(%rbp), %rax	# target, tmp96
	movzbl	16(%rax), %eax	# target_1->common.code, D.18590
	cmpb	$43, %al	#, D.18590
	je	.L430	#,
	.loc 1 2318 0
	movq	-32(%rbp), %rax	# target, tmp97
	movzbl	16(%rax), %eax	# target_1->common.code, D.18590
	cmpb	$44, %al	#, D.18590
	jne	.L431	#,
.L430:
	.loc 1 2320 0
	movq	-32(%rbp), %rax	# target, tmp98
	movq	8(%rax), %rax	# target_1->common.type, D.18591
	movq	40(%rax), %rax	# _38->type.size_unit, D.18591
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.18591,
	call	tree_low_cst	#
	movl	%eax, %ebx	# D.18593, D.18594
	.loc 1 2321 0
	movq	-32(%rbp), %rax	# target, tmp99
	movq	40(%rax), %rax	# target_1->exp.operands, D.18591
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.18591,
	call	tree_low_cst	#
	.loc 1 2320 0
	imull	%eax, %ebx	# D.18594, D.18594
	movl	%ebx, %edx	# D.18594, D.18594
	movl	-36(%rbp), %eax	# offset, offset.238
	addl	%edx, %eax	# D.18594, D.18594
	movl	%eax, -36(%rbp)	# D.18594, offset
	.loc 1 2322 0
	movq	-32(%rbp), %rax	# target, tmp100
	movq	32(%rax), %rax	# target_1->exp.operands, tmp101
	movq	%rax, -32(%rbp)	# tmp101, target
	.loc 1 2326 0
	jmp	.L432	#
.L431:
	.loc 1 2328 0
	movq	-32(%rbp), %rax	# target, tmp102
	movzbl	16(%rax), %eax	# target_1->common.code, D.18590
	movzbl	%al, %eax	# D.18590, D.18595
	subl	$25, %eax	#, tmp103
	cmpl	$21, %eax	#, tmp103
	ja	.L433	#,
	movl	%eax, %eax	# tmp103, tmp104
	movq	.L435(,%rax,8), %rax	#, tmp105
	jmp	*%rax	# tmp105
	.section	.rodata
	.align 8
	.align 4
.L435:
	.quad	.L434
	.quad	.L434
	.quad	.L434
	.quad	.L433
	.quad	.L434
	.quad	.L436
	.quad	.L437
	.quad	.L433
	.quad	.L433
	.quad	.L436
	.quad	.L433
	.quad	.L433
	.quad	.L433
	.quad	.L433
	.quad	.L433
	.quad	.L433
	.quad	.L433
	.quad	.L433
	.quad	.L433
	.quad	.L433
	.quad	.L433
	.quad	.L434
	.text
.L436:
	.loc 1 2332 0
	movq	-32(%rbp), %rax	# target, tmp106
	movq	144(%rax), %rax	# target_1->decl.rtl, D.18596
	testq	%rax, %rax	# D.18596
	je	.L438	#,
	.loc 1 2332 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# target, tmp107
	movq	144(%rax), %rax	# target_1->decl.rtl, iftmp.239
	jmp	.L439	#
.L438:
	.loc 1 2332 0 discriminator 2
	movq	-32(%rbp), %rax	# target, tmp108
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp108,
	call	make_decl_rtl	#
	movq	-32(%rbp), %rax	# target, tmp109
	movq	144(%rax), %rax	# target_1->decl.rtl, iftmp.239
.L439:
	.loc 1 2332 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.239, x
	.loc 1 2333 0 is_stmt 1 discriminator 3
	jmp	.L440	#
.L437:
	.loc 1 2336 0
	movq	-56(%rbp), %rax	# exp, tmp110
	movq	32(%rax), %rax	# exp_7(D)->exp.operands, D.18591
	movq	%rax, %rdi	# D.18591,
	call	label_rtx	#
	movq	%rax, %rdx	# D.18596,
	movl	$0, %esi	#,
	movl	$67, %edi	#,
	call	gen_rtx_fmt_u00	#
	movq	%rax, %rsi	# D.18596,
	movl	$2, %edi	#,
	call	gen_rtx_MEM	#
	movq	%rax, -24(%rbp)	# tmp111, x
	.loc 1 2339 0
	jmp	.L440	#
.L434:
	.loc 1 2348 0
	movq	-32(%rbp), %rax	# target, tmp112
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp112,
	call	output_constant_def	#
	movq	%rax, -24(%rbp)	# tmp113, x
	.loc 1 2349 0
	jmp	.L440	#
.L433:
	.loc 1 2352 0
	movl	$__FUNCTION__.13346, %edx	#,
	movl	$2352, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L440:
	.loc 1 2355 0
	movq	-24(%rbp), %rax	# x, tmp114
	movzwl	(%rax), %eax	# x_5->code, D.18597
	cmpw	$66, %ax	#, D.18597
	je	.L441	#,
	.loc 1 2356 0
	movl	$__FUNCTION__.13346, %edx	#,
	movl	$2356, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L441:
	.loc 1 2357 0
	movq	-24(%rbp), %rax	# x, tmp115
	movq	8(%rax), %rax	# x_5->fld[0].rtx, tmp116
	movq	%rax, -24(%rbp)	# tmp116, x
	.loc 1 2359 0
	movq	-64(%rbp), %rax	# value, tmp117
	movq	-24(%rbp), %rdx	# x, tmp118
	movq	%rdx, (%rax)	# tmp118, value_36(D)->base
	.loc 1 2360 0
	movl	-36(%rbp), %eax	# offset, tmp119
	movslq	%eax, %rdx	# tmp119, D.18593
	movq	-64(%rbp), %rax	# value, tmp120
	movq	%rdx, 8(%rax)	# D.18593, value_36(D)->offset
	.loc 1 2361 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	decode_addr_const, .-decode_addr_const
	.local	const_hash_table
	.comm	const_hash_table,8072,32
	.local	const_str_htab
	.comm	const_str_htab,8,8
	.type	mark_const_hash_entry, @function
mark_const_hash_entry:
.LFB59:
	.loc 1 2431 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# ptr, ptr
	.loc 1 2432 0
	movq	-24(%rbp), %rax	# ptr, tmp60
	movq	(%rax), %rax	# MEM[(struct constant_descriptor * *)ptr_2(D)], tmp61
	movq	%rax, -16(%rbp)	# tmp61, desc
	.loc 1 2434 0
	jmp	.L443	#
.L445:
.LBB26:
	.loc 1 2436 0
	movq	-16(%rbp), %rax	# desc, tmp62
	movq	16(%rax), %rax	# desc_1->rtl, tmp63
	movq	%rax, -8(%rbp)	# tmp63, r__
	cmpq	$0, -8(%rbp)	#, r__
	je	.L444	#,
	.loc 1 2436 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# r__, tmp64
	movq	%rax, %rdi	# tmp64,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.18598
	jne	.L444	#,
	movq	-8(%rbp), %rax	# r__, tmp65
	movq	%rax, %rdi	# tmp65,
	call	ggc_mark_rtx_children	#
.L444:
.LBE26:
	.loc 1 2437 0 is_stmt 1
	movq	-16(%rbp), %rax	# desc, tmp66
	movq	(%rax), %rax	# desc_1->next, tmp67
	movq	%rax, -16(%rbp)	# tmp67, desc
.L443:
	.loc 1 2434 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, desc
	jne	.L445	#,
	.loc 1 2439 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	mark_const_hash_entry, .-mark_const_hash_entry
	.type	mark_const_str_htab_1, @function
mark_const_str_htab_1:
.LFB60:
	.loc 1 2448 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	movq	%rsi, -32(%rbp)	# data, data
.LBB27:
	.loc 1 2449 0
	movq	-24(%rbp), %rax	# x, tmp76
	movq	(%rax), %rax	# *x_1(D), D.18599
	movq	8(%rax), %rax	# MEM[(struct deferred_string *)_2].exp, tmp77
	movq	%rax, -8(%rbp)	# tmp77, t__
	cmpq	$0, -8(%rbp)	#, t__
	je	.L447	#,
	.loc 1 2449 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# t__, tmp78
	movq	%rax, %rdi	# tmp78,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.18600
	jne	.L447	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.240
	movq	8(%rax), %rdx	# ggc_pending_trees.240_5->elements_used, D.18601
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.241
	movq	(%rax), %rax	# ggc_pending_trees.241_7->num_elements, D.18601
	cmpq	%rax, %rdx	# D.18601, D.18601
	jb	.L448	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.242
	movq	(%rax), %rax	# ggc_pending_trees.242_9->num_elements, D.18601
	leaq	(%rax,%rax), %rdx	#, D.18601
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.243
	movq	%rdx, %rsi	# D.18601,
	movq	%rax, %rdi	# ggc_pending_trees.243,
	call	varray_grow	#
	movq	%rax, ggc_pending_trees(%rip)	# ggc_pending_trees.244, ggc_pending_trees
.L448:
	.loc 1 2449 0 discriminator 2
	movq	ggc_pending_trees(%rip), %rcx	# ggc_pending_trees, ggc_pending_trees.245
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.246
	movq	8(%rax), %rdx	# ggc_pending_trees.246_15->elements_used, D.18601
	leaq	1(%rdx), %rsi	#, D.18601
	movq	%rsi, 8(%rax)	# D.18601, ggc_pending_trees.246_15->elements_used
	addq	$4, %rdx	#, tmp79
	movq	-8(%rbp), %rax	# t__, tmp80
	movq	%rax, (%rcx,%rdx,8)	# tmp80, ggc_pending_trees.245_14->data.tree
.L447:
.LBE27:
	.loc 1 2450 0 is_stmt 1
	movl	$1, %eax	#, D.18600
	.loc 1 2451 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	mark_const_str_htab_1, .-mark_const_str_htab_1
	.type	mark_const_str_htab, @function
mark_const_str_htab:
.LFB61:
	.loc 1 2458 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# htab, htab
	.loc 1 2459 0
	movq	-8(%rbp), %rax	# htab, tmp60
	movq	(%rax), %rax	# MEM[(struct htab * *)htab_1(D)], D.18602
	movl	$0, %edx	#,
	movl	$mark_const_str_htab_1, %esi	#,
	movq	%rax, %rdi	# D.18602,
	call	htab_traverse	#
	.loc 1 2460 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	mark_const_str_htab, .-mark_const_str_htab
	.type	const_str_htab_hash, @function
const_str_htab_hash:
.LFB62:
	.loc 1 2468 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# x, x
	.loc 1 2469 0
	movq	-8(%rbp), %rax	# x, tmp64
	movq	(%rax), %rax	# MEM[(const struct deferred_string *)x_1(D)].label, D.18603
	sarq	$3, %rax	#, D.18604
	.loc 1 2470 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	const_str_htab_hash, .-const_str_htab_hash
	.type	const_str_htab_eq, @function
const_str_htab_eq:
.LFB63:
	.loc 1 2480 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# x, x
	movq	%rsi, -16(%rbp)	# y, y
	.loc 1 2481 0
	movq	-8(%rbp), %rax	# x, tmp63
	movq	(%rax), %rax	# MEM[(const struct deferred_string *)x_1(D)].label, D.18606
	cmpq	-16(%rbp), %rax	# y, D.18606
	sete	%al	#, D.18607
	movzbl	%al, %eax	# D.18607, D.18608
	.loc 1 2482 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	const_str_htab_eq, .-const_str_htab_eq
	.type	const_str_htab_del, @function
const_str_htab_del:
.LFB64:
	.loc 1 2489 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# dfsp, dfsp
	.loc 1 2490 0
	movq	-8(%rbp), %rax	# dfsp, tmp59
	movq	%rax, %rdi	# tmp59,
	call	free	#
	.loc 1 2491 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	const_str_htab_del, .-const_str_htab_del
	.type	const_hash, @function
const_hash:
.LFB65:
	.loc 1 2498 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# exp, exp
	.loc 1 2501 0
	movq	-88(%rbp), %rax	# exp, tmp128
	movzbl	16(%rax), %eax	# exp_13(D)->common.code, D.18610
	movzbl	%al, %eax	# D.18610, tmp129
	movl	%eax, -60(%rbp)	# tmp129, code
	.loc 1 2506 0
	movl	-60(%rbp), %eax	# code, tmp131
	subl	$25, %eax	#, tmp130
	cmpl	$99, %eax	#, tmp130
	ja	.L457	#,
	movl	%eax, %eax	# tmp130, tmp132
	movq	.L459(,%rax,8), %rax	#, tmp133
	jmp	*%rax	# tmp133
	.section	.rodata
	.align 8
	.align 4
.L459:
	.quad	.L458
	.quad	.L460
	.quad	.L461
	.quad	.L457
	.quad	.L462
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L463
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L464
	.quad	.L464
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L465
	.quad	.L465
	.quad	.L465
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L457
	.quad	.L466
	.quad	.L457
	.quad	.L457
	.quad	.L466
	.text
.L458:
	.loc 1 2509 0
	movq	-88(%rbp), %rax	# exp, tmp137
	addq	$32, %rax	#, tmp136
	movq	%rax, -56(%rbp)	# tmp136, p
	.loc 1 2510 0
	movl	$16, -72(%rbp)	#, len
	.loc 1 2511 0
	jmp	.L467	#
.L460:
	.loc 1 2514 0
	movq	-88(%rbp), %rax	# exp, tmp141
	addq	$32, %rax	#, tmp140
	movq	%rax, -56(%rbp)	# tmp140, p
	.loc 1 2515 0
	movl	$24, -72(%rbp)	#, len
	.loc 1 2516 0
	jmp	.L467	#
.L462:
	.loc 1 2519 0
	movq	-88(%rbp), %rax	# exp, tmp142
	movq	40(%rax), %rax	# exp_13(D)->string.pointer, tmp143
	movq	%rax, -56(%rbp)	# tmp143, p
	.loc 1 2520 0
	movq	-88(%rbp), %rax	# exp, tmp144
	movl	32(%rax), %eax	# exp_13(D)->string.length, tmp145
	movl	%eax, -72(%rbp)	# tmp145, len
	.loc 1 2521 0
	jmp	.L467	#
.L461:
	.loc 1 2524 0
	movq	-88(%rbp), %rax	# exp, tmp146
	movq	32(%rax), %rax	# exp_13(D)->complex.real, D.18611
	movq	%rax, %rdi	# D.18611,
	call	const_hash	#
	movl	%eax, %edx	#, D.18609
	movl	%edx, %eax	# D.18609, tmp147
	sall	$2, %eax	#, tmp147
	leal	(%rax,%rdx), %ebx	#, D.18609
	.loc 1 2525 0
	movq	-88(%rbp), %rax	# exp, tmp148
	movq	40(%rax), %rax	# exp_13(D)->complex.imag, D.18611
	movq	%rax, %rdi	# D.18611,
	call	const_hash	#
	.loc 1 2524 0
	addl	%ebx, %eax	# D.18609, D.18609
	jmp	.L468	#
.L463:
	.loc 1 2528 0
	movq	-88(%rbp), %rax	# exp, tmp149
	movq	8(%rax), %rax	# exp_13(D)->common.type, D.18611
	movzbl	16(%rax), %eax	# _28->common.code, D.18610
	cmpb	$19, %al	#, D.18610
	jne	.L469	#,
.LBB28:
	.loc 1 2532 0
	movq	-88(%rbp), %rax	# exp, tmp150
	movq	8(%rax), %rax	# exp_13(D)->common.type, D.18611
	movq	%rax, %rdi	# D.18611,
	call	int_size_in_bytes	#
	movl	%eax, -72(%rbp)	# D.18612, len
	.loc 1 2533 0
	movl	-72(%rbp), %eax	# len, tmp151
	cltq
	leaq	15(%rax), %rdx	#, tmp152
	movl	$16, %eax	#, tmp244
	subq	$1, %rax	#, tmp153
	addq	%rdx, %rax	# tmp152, tmp154
	movl	$16, %ebx	#, tmp245
	movl	$0, %edx	#, tmp157
	divq	%rbx	# tmp245
	imulq	$16, %rax, %rax	#, tmp156, tmp158
	subq	%rax, %rsp	# tmp158,
	movq	%rsp, %rax	#, tmp159
	addq	$15, %rax	#, tmp160
	shrq	$4, %rax	#, tmp161
	salq	$4, %rax	#, tmp162
	movq	%rax, -40(%rbp)	# tmp162, tmp
	.loc 1 2534 0
	movl	-72(%rbp), %edx	# len, tmp163
	movq	-40(%rbp), %rcx	# tmp, tmp164
	movq	-88(%rbp), %rax	# exp, tmp165
	movq	%rcx, %rsi	# tmp164,
	movq	%rax, %rdi	# tmp165,
	call	get_set_constructor_bytes	#
	.loc 1 2535 0
	movq	-40(%rbp), %rax	# tmp, tmp166
	movq	%rax, -56(%rbp)	# tmp166, p
	.loc 1 2536 0
	jmp	.L467	#
.L469:
.LBE28:
.LBB29:
	.loc 1 2548 0
	movq	-88(%rbp), %rax	# exp, tmp167
	movq	8(%rax), %rax	# exp_13(D)->common.type, D.18611
	movzbl	16(%rax), %eax	# _36->common.code, D.18610
	cmpb	$20, %al	#, D.18610
	jne	.L470	#,
	.loc 1 2549 0
	movq	-88(%rbp), %rax	# exp, tmp168
	movq	8(%rax), %rax	# exp_13(D)->common.type, D.18611
	andl	$1073741823, %eax	#, D.18613
	movq	%rax, %rsi	# D.18613, D.18613
	.loc 1 2550 0
	movabsq	$-9086255505087856445, %rdx	#, tmp170
	movq	%rsi, %rax	# D.18613, tmp246
	mulq	%rdx	# tmp170
	movq	%rdx, %rcx	# tmp169, D.18613
	shrq	$9, %rcx	#, D.18613
	movq	%rcx, %rdx	# D.18613, tmp171
	movq	%rdx, %rax	# tmp171, tmp172
	salq	$4, %rax	#, tmp172
	movq	%rax, %rdx	# tmp172, tmp171
	movq	%rdx, %rax	# tmp171, tmp173
	salq	$6, %rax	#, tmp173
	subq	%rdx, %rax	# tmp171, tmp173
	addq	%rcx, %rax	# D.18613, tmp173
	subq	%rax, %rsi	# tmp173, D.18613
	movq	%rsi, %rcx	# D.18613, D.18613
	.loc 1 2549 0
	movl	%ecx, -68(%rbp)	# D.18613, hi
	jmp	.L471	#
.L470:
	.loc 1 2552 0
	movq	-88(%rbp), %rax	# exp, tmp174
	movq	8(%rax), %rax	# exp_13(D)->common.type, D.18611
	movq	%rax, %rdi	# D.18611,
	call	int_size_in_bytes	#
	addq	$5, %rax	#, D.18612
	.loc 1 2553 0
	andl	$1073741823, %eax	#, D.18612
	movq	%rax, %rsi	# D.18612, D.18612
	movabsq	$-9086255505087856445, %rdx	#, tmp176
	movq	%rsi, %rax	# D.18612, tmp247
	imulq	%rdx	# tmp176
	leaq	(%rdx,%rsi), %rax	#, tmp177
	sarq	$9, %rax	#, tmp178
	movq	%rax, %rdx	# tmp178, tmp178
	movq	%rsi, %rax	# D.18612, tmp179
	sarq	$63, %rax	#, tmp179
	movq	%rdx, %rcx	# tmp178, D.18612
	subq	%rax, %rcx	# tmp179, D.18612
	movq	%rcx, %rdx	# D.18612, tmp180
	movq	%rdx, %rax	# tmp180, tmp181
	salq	$4, %rax	#, tmp181
	movq	%rax, %rdx	# tmp181, tmp180
	movq	%rdx, %rax	# tmp180, tmp182
	salq	$6, %rax	#, tmp182
	subq	%rdx, %rax	# tmp180, tmp182
	addq	%rcx, %rax	# D.18612, tmp182
	subq	%rax, %rsi	# tmp182, D.18612
	movq	%rsi, %rcx	# D.18612, D.18612
	.loc 1 2552 0
	movl	%ecx, -68(%rbp)	# D.18612, hi
.L471:
	.loc 1 2555 0
	movq	-88(%rbp), %rax	# exp, tmp183
	movq	40(%rax), %rax	# exp_13(D)->exp.operands, tmp184
	movq	%rax, -48(%rbp)	# tmp184, link
	jmp	.L472	#
.L474:
	.loc 1 2556 0
	movq	-48(%rbp), %rax	# link, tmp185
	movq	32(%rax), %rax	# link_11->list.value, D.18611
	testq	%rax, %rax	# D.18611
	je	.L473	#,
	.loc 1 2558 0
	movl	-68(%rbp), %eax	# hi, tmp186
	imull	$603, %eax, %ebx	#, tmp186, D.18609
	movq	-48(%rbp), %rax	# link, tmp187
	movq	32(%rax), %rax	# link_11->list.value, D.18611
	movq	%rax, %rdi	# D.18611,
	call	const_hash	#
	leal	(%rbx,%rax), %ecx	#, D.18609
	movl	$-2115558717, %edx	#, tmp189
	movl	%ecx, %eax	# D.18609, tmp248
	imull	%edx	# tmp189
	leal	(%rdx,%rcx), %eax	#, tmp190
	sarl	$9, %eax	#, tmp191
	movl	%eax, %edx	# tmp191, tmp191
	movl	%ecx, %eax	# D.18609, tmp192
	sarl	$31, %eax	#, tmp192
	subl	%eax, %edx	# tmp192, tmp193
	movl	%edx, %eax	# tmp193, tmp193
	movl	%eax, -68(%rbp)	# tmp193, hi
	movl	-68(%rbp), %eax	# hi, tmp195
	imull	$1009, %eax, %eax	#, tmp195, tmp194
	subl	%eax, %ecx	# tmp194, tmp196
	movl	%ecx, %eax	# tmp196, tmp196
	movl	%eax, -68(%rbp)	# tmp196, hi
.L473:
	.loc 1 2555 0
	movq	-48(%rbp), %rax	# link, tmp197
	movq	(%rax), %rax	# link_11->common.chain, tmp198
	movq	%rax, -48(%rbp)	# tmp198, link
.L472:
	.loc 1 2555 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, link
	jne	.L474	#,
	.loc 1 2560 0 is_stmt 1
	movl	-68(%rbp), %eax	# hi, D.18609
	jmp	.L468	#
.L466:
.LBE29:
.LBB30:
	.loc 1 2568 0
	leaq	-32(%rbp), %rdx	#, tmp199
	movq	-88(%rbp), %rax	# exp, tmp200
	movq	%rdx, %rsi	# tmp199,
	movq	%rax, %rdi	# tmp200,
	call	decode_addr_const	#
	.loc 1 2569 0
	movq	-32(%rbp), %rax	# value.base, D.18614
	movzwl	(%rax), %eax	# _58->code, D.18615
	cmpw	$68, %ax	#, D.18615
	jne	.L475	#,
	.loc 1 2573 0
	movq	-24(%rbp), %rax	# value.offset, D.18612
	movl	%eax, -68(%rbp)	# D.18612, hi
	.loc 1 2574 0
	movq	-32(%rbp), %rax	# value.base, D.18614
	movq	8(%rax), %rax	# _62->fld[0].rtstr, tmp201
	movq	%rax, -56(%rbp)	# tmp201, p
	.loc 1 2575 0
	movl	$0, -64(%rbp)	#, i
	jmp	.L476	#
.L477:
	.loc 1 2576 0 discriminator 2
	movl	-68(%rbp), %eax	# hi, tmp202
	imull	$613, %eax, %eax	#, tmp202, D.18609
	movl	%eax, %edx	# D.18609, D.18619
	movl	-64(%rbp), %eax	# i, tmp203
	movslq	%eax, %rcx	# tmp203, D.18616
	movq	-56(%rbp), %rax	# p, tmp204
	addq	%rcx, %rax	# D.18616, D.18617
	movzbl	(%rax), %eax	# *_71, D.18618
	movsbl	%al, %eax	# D.18618, D.18619
	addl	%edx, %eax	# D.18619, D.18619
	movl	%eax, -68(%rbp)	# D.18619, hi
	.loc 1 2575 0 discriminator 2
	addl	$1, -64(%rbp)	#, i
.L476:
	.loc 1 2575 0 is_stmt 0 discriminator 1
	movl	-64(%rbp), %eax	# i, tmp205
	movslq	%eax, %rdx	# tmp205, D.18616
	movq	-56(%rbp), %rax	# p, tmp206
	addq	%rdx, %rax	# D.18616, D.18617
	movzbl	(%rax), %eax	# *_66, D.18618
	testb	%al, %al	# D.18618
	jne	.L477	#,
	jmp	.L478	#
.L475:
	.loc 1 2578 0 is_stmt 1
	movq	-32(%rbp), %rax	# value.base, D.18614
	movzwl	(%rax), %eax	# _77->code, D.18615
	cmpw	$67, %ax	#, D.18615
	jne	.L479	#,
	.loc 1 2579 0
	movq	-24(%rbp), %rax	# value.offset, D.18612
	movl	%eax, %ecx	# D.18612, D.18620
	movq	-32(%rbp), %rax	# value.base, D.18614
	movq	8(%rax), %rax	# _81->fld[0].rtx, D.18614
	movl	48(%rax), %edx	# _82->fld[5].rtint, D.18609
	movl	%edx, %eax	# D.18609, tmp207
	addl	%eax, %eax	# tmp207
	addl	%edx, %eax	# D.18609, tmp207
	sall	$2, %eax	#, tmp207
	addl	%edx, %eax	# D.18609, D.18609
	addl	%ecx, %eax	# D.18620, D.18620
	movl	%eax, -68(%rbp)	# D.18620, hi
	jmp	.L478	#
.L479:
	.loc 1 2581 0
	movl	$__FUNCTION__.13430, %edx	#,
	movl	$2581, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L478:
	.loc 1 2583 0
	andl	$1073741823, -68(%rbp)	#, hi
	.loc 1 2584 0
	movl	-68(%rbp), %ecx	# hi, tmp209
	movl	$-2115558717, %edx	#, tmp211
	movl	%ecx, %eax	# tmp209, tmp249
	imull	%edx	# tmp211
	leal	(%rdx,%rcx), %eax	#, tmp212
	sarl	$9, %eax	#, tmp213
	movl	%eax, %edx	# tmp213, tmp213
	movl	%ecx, %eax	# tmp209, tmp214
	sarl	$31, %eax	#, tmp214
	subl	%eax, %edx	# tmp214, tmp208
	movl	%edx, %eax	# tmp208, tmp208
	imull	$1009, %eax, %eax	#, tmp208, tmp215
	subl	%eax, %ecx	# tmp215, tmp216
	movl	%ecx, %eax	# tmp216, tmp216
	movl	%eax, -68(%rbp)	# tmp216, hi
.LBE30:
	.loc 1 2586 0
	movl	-68(%rbp), %eax	# hi, D.18609
	jmp	.L468	#
.L464:
	.loc 1 2590 0
	movq	-88(%rbp), %rax	# exp, tmp217
	movq	32(%rax), %rax	# exp_13(D)->exp.operands, D.18611
	movq	%rax, %rdi	# D.18611,
	call	const_hash	#
	movl	%eax, %edx	#, D.18609
	movl	%edx, %eax	# D.18609, tmp218
	sall	$3, %eax	#, tmp218
	leal	(%rax,%rdx), %ebx	#, D.18609
	.loc 1 2591 0
	movq	-88(%rbp), %rax	# exp, tmp219
	movq	40(%rax), %rax	# exp_13(D)->exp.operands, D.18611
	movq	%rax, %rdi	# D.18611,
	call	const_hash	#
	.loc 1 2590 0
	addl	%ebx, %eax	# D.18609, D.18609
	jmp	.L468	#
.L465:
	.loc 1 2596 0
	movq	-88(%rbp), %rax	# exp, tmp220
	movq	32(%rax), %rax	# exp_13(D)->exp.operands, D.18611
	movq	%rax, %rdi	# D.18611,
	call	const_hash	#
	movl	%eax, %edx	#, D.18609
	movl	%edx, %eax	# D.18609, tmp221
	sall	$3, %eax	#, tmp222
	subl	%edx, %eax	# D.18609, D.18609
	addl	$2, %eax	#, D.18609
	jmp	.L468	#
.L457:
	.loc 1 2600 0
	movl	-60(%rbp), %ecx	# code, code.247
	movl	$-2115558717, %edx	#, tmp224
	movl	%ecx, %eax	# code.247, tmp250
	imull	%edx	# tmp224
	leal	(%rdx,%rcx), %eax	#, tmp225
	sarl	$9, %eax	#, tmp226
	movl	%eax, %edx	# tmp226, tmp226
	movl	%ecx, %eax	# code.247, tmp227
	sarl	$31, %eax	#, tmp227
	subl	%eax, %edx	# tmp227, D.18609
	movl	%edx, %eax	# D.18609, D.18609
	imull	$1009, %eax, %eax	#, D.18609, tmp228
	subl	%eax, %ecx	# tmp228, D.18609
	movl	%ecx, %eax	# D.18609, D.18609
	jmp	.L468	#
.L467:
	.loc 1 2604 0
	movl	-72(%rbp), %eax	# len, tmp229
	movl	%eax, -68(%rbp)	# tmp229, hi
	.loc 1 2605 0
	movl	$0, -64(%rbp)	#, i
	jmp	.L480	#
.L481:
	.loc 1 2606 0 discriminator 2
	movl	-68(%rbp), %eax	# hi, tmp230
	imull	$613, %eax, %eax	#, tmp230, D.18609
	movl	%eax, %edx	# D.18609, D.18619
	movl	-64(%rbp), %eax	# i, tmp231
	movslq	%eax, %rcx	# tmp231, D.18616
	movq	-56(%rbp), %rax	# p, tmp232
	addq	%rcx, %rax	# D.18616, D.18617
	movzbl	(%rax), %eax	# *_108, D.18618
	movsbl	%al, %eax	# D.18618, D.18619
	addl	%edx, %eax	# D.18619, D.18619
	movl	%eax, -68(%rbp)	# D.18619, hi
	.loc 1 2605 0 discriminator 2
	addl	$1, -64(%rbp)	#, i
.L480:
	.loc 1 2605 0 is_stmt 0 discriminator 1
	movl	-64(%rbp), %eax	# i, tmp233
	cmpl	-72(%rbp), %eax	# len, tmp233
	jl	.L481	#,
	.loc 1 2608 0 is_stmt 1
	andl	$1073741823, -68(%rbp)	#, hi
	.loc 1 2609 0
	movl	-68(%rbp), %ecx	# hi, tmp235
	movl	$-2115558717, %edx	#, tmp237
	movl	%ecx, %eax	# tmp235, tmp251
	imull	%edx	# tmp237
	leal	(%rdx,%rcx), %eax	#, tmp238
	sarl	$9, %eax	#, tmp239
	movl	%eax, %edx	# tmp239, tmp239
	movl	%ecx, %eax	# tmp235, tmp240
	sarl	$31, %eax	#, tmp240
	subl	%eax, %edx	# tmp240, tmp234
	movl	%edx, %eax	# tmp234, tmp234
	imull	$1009, %eax, %eax	#, tmp234, tmp241
	subl	%eax, %ecx	# tmp241, tmp242
	movl	%ecx, %eax	# tmp242, tmp242
	movl	%eax, -68(%rbp)	# tmp242, hi
	.loc 1 2610 0
	movl	-68(%rbp), %eax	# hi, D.18609
.L468:
	.loc 1 2611 0
	movq	-8(%rbp), %rbx	#,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	const_hash, .-const_hash
	.type	compare_constant, @function
compare_constant:
.LFB66:
	.loc 1 2620 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# exp, exp
	movq	%rsi, -16(%rbp)	# desc, desc
	.loc 1 2621 0
	movq	-16(%rbp), %rax	# desc, tmp64
	leaq	32(%rax), %rdx	#, D.18621
	movq	-8(%rbp), %rax	# exp, tmp65
	movq	%rdx, %rsi	# D.18621,
	movq	%rax, %rdi	# tmp65,
	call	compare_constant_1	#
	testq	%rax, %rax	# D.18622
	setne	%al	#, D.18623
	movzbl	%al, %eax	# D.18623, D.18624
	.loc 1 2622 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	compare_constant, .-compare_constant
	.type	compare_constant_1, @function
compare_constant_1:
.LFB67:
	.loc 1 2637 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)	# exp, exp
	movq	%rsi, -112(%rbp)	# p, p
	.loc 1 2640 0
	movq	-104(%rbp), %rax	# exp, tmp141
	movzbl	16(%rax), %eax	# exp_19(D)->common.code, D.18626
	movzbl	%al, %eax	# D.18626, tmp142
	movl	%eax, -76(%rbp)	# tmp142, code
	.loc 1 2642 0
	movq	-112(%rbp), %rax	# p, p.248
	leaq	1(%rax), %rdx	#, tmp143
	movq	%rdx, -112(%rbp)	# tmp143, p
	movzbl	(%rax), %eax	# *p.248_23, D.18626
	movzbl	%al, %eax	# D.18626, D.18627
	cmpl	-76(%rbp), %eax	# code, D.18627
	je	.L485	#,
	.loc 1 2643 0
	movl	$0, %eax	#, D.18625
	jmp	.L486	#
.L485:
	.loc 1 2648 0
	movl	-76(%rbp), %eax	# code, tmp145
	subl	$25, %eax	#, tmp144
	cmpl	$99, %eax	#, tmp144
	ja	.L487	#,
	movl	%eax, %eax	# tmp144, tmp146
	movq	.L489(,%rax,8), %rax	#, tmp147
	jmp	*%rax	# tmp147
	.section	.rodata
	.align 8
	.align 4
.L489:
	.quad	.L488
	.quad	.L490
	.quad	.L491
	.quad	.L487
	.quad	.L492
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L493
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L494
	.quad	.L494
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L494
	.quad	.L495
	.quad	.L495
	.quad	.L495
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L487
	.quad	.L496
	.quad	.L487
	.quad	.L487
	.quad	.L496
	.text
.L488:
	.loc 1 2652 0
	movq	-112(%rbp), %rax	# p, p.249
	leaq	1(%rax), %rdx	#, tmp148
	movq	%rdx, -112(%rbp)	# tmp148, p
	movzbl	(%rax), %eax	# *p.249_28, D.18626
	movzbl	%al, %edx	# D.18626, D.18628
	movq	-104(%rbp), %rax	# exp, tmp149
	movq	8(%rax), %rax	# exp_19(D)->common.type, D.18629
	movzwl	60(%rax), %eax	# *_32, tmp152
	andw	$511, %ax	#, D.18630
	movzwl	%ax, %eax	# D.18630, D.18628
	cmpl	%eax, %edx	# D.18628, D.18628
	je	.L497	#,
	.loc 1 2653 0
	movl	$0, %eax	#, D.18625
	jmp	.L486	#
.L497:
	.loc 1 2655 0
	movq	-104(%rbp), %rax	# exp, tmp156
	addq	$32, %rax	#, tmp155
	movq	%rax, -64(%rbp)	# tmp155, strp
	.loc 1 2656 0
	movl	$16, -80(%rbp)	#, len
	.loc 1 2657 0
	jmp	.L498	#
.L490:
	.loc 1 2661 0
	movq	-112(%rbp), %rax	# p, p.250
	leaq	1(%rax), %rdx	#, tmp157
	movq	%rdx, -112(%rbp)	# tmp157, p
	movzbl	(%rax), %eax	# *p.250_38, D.18626
	movzbl	%al, %edx	# D.18626, D.18628
	movq	-104(%rbp), %rax	# exp, tmp158
	movq	8(%rax), %rax	# exp_19(D)->common.type, D.18629
	movzwl	60(%rax), %eax	# *_42, tmp161
	andw	$511, %ax	#, D.18630
	movzwl	%ax, %eax	# D.18630, D.18628
	cmpl	%eax, %edx	# D.18628, D.18628
	je	.L499	#,
	.loc 1 2662 0
	movl	$0, %eax	#, D.18625
	jmp	.L486	#
.L499:
	.loc 1 2664 0
	movq	-104(%rbp), %rax	# exp, tmp165
	addq	$32, %rax	#, tmp164
	movq	%rax, -64(%rbp)	# tmp164, strp
	.loc 1 2665 0
	movl	$24, -80(%rbp)	#, len
	.loc 1 2666 0
	jmp	.L498	#
.L492:
	.loc 1 2669 0
	movl	flag_writable_strings(%rip), %eax	# flag_writable_strings, flag_writable_strings.251
	testl	%eax, %eax	# flag_writable_strings.251
	je	.L500	#,
	.loc 1 2670 0
	movl	$0, %eax	#, D.18625
	jmp	.L486	#
.L500:
	.loc 1 2672 0
	movq	-112(%rbp), %rax	# p, p.252
	leaq	1(%rax), %rdx	#, tmp166
	movq	%rdx, -112(%rbp)	# tmp166, p
	movzbl	(%rax), %edx	# *p.252_50, D.18626
	movq	-104(%rbp), %rax	# exp, tmp167
	movq	8(%rax), %rax	# exp_19(D)->common.type, D.18629
	movzbl	61(%rax), %eax	# *_53, tmp170
	shrb	%al	# D.18631
	cmpb	%al, %dl	# D.18626, D.18626
	je	.L501	#,
	.loc 1 2673 0
	movl	$0, %eax	#, D.18625
	jmp	.L486	#
.L501:
	.loc 1 2675 0
	movq	-104(%rbp), %rax	# exp, tmp171
	movq	40(%rax), %rax	# exp_19(D)->string.pointer, tmp172
	movq	%rax, -64(%rbp)	# tmp172, strp
	.loc 1 2676 0
	movq	-104(%rbp), %rax	# exp, tmp173
	movl	32(%rax), %eax	# exp_19(D)->string.length, tmp174
	movl	%eax, -80(%rbp)	# tmp174, len
	.loc 1 2677 0
	movq	-104(%rbp), %rax	# exp, tmp175
	leaq	32(%rax), %rcx	#, D.18632
	movq	-112(%rbp), %rax	# p, tmp176
	movl	$4, %edx	#,
	movq	%rax, %rsi	# tmp176,
	movq	%rcx, %rdi	# D.18632,
	call	memcmp	#
	testl	%eax, %eax	# D.18628
	je	.L502	#,
	.loc 1 2679 0
	movl	$0, %eax	#, D.18625
	jmp	.L486	#
.L502:
	.loc 1 2681 0
	addq	$4, -112(%rbp)	#, p
	.loc 1 2682 0
	jmp	.L498	#
.L491:
	.loc 1 2685 0
	movq	-104(%rbp), %rax	# exp, tmp177
	movq	32(%rax), %rax	# exp_19(D)->complex.real, D.18629
	movq	-112(%rbp), %rdx	# p, tmp178
	movq	%rdx, %rsi	# tmp178,
	movq	%rax, %rdi	# D.18629,
	call	compare_constant_1	#
	movq	%rax, -112(%rbp)	# tmp179, p
	.loc 1 2686 0
	cmpq	$0, -112(%rbp)	#, p
	jne	.L503	#,
	.loc 1 2687 0
	movl	$0, %eax	#, D.18625
	jmp	.L486	#
.L503:
	.loc 1 2689 0
	movq	-104(%rbp), %rax	# exp, tmp180
	movq	40(%rax), %rax	# exp_19(D)->complex.imag, D.18629
	movq	-112(%rbp), %rdx	# p, tmp181
	movq	%rdx, %rsi	# tmp181,
	movq	%rax, %rdi	# D.18629,
	call	compare_constant_1	#
	jmp	.L486	#
.L493:
	.loc 1 2692 0
	movq	-104(%rbp), %rax	# exp, tmp182
	movq	8(%rax), %rax	# exp_19(D)->common.type, D.18629
	movzbl	16(%rax), %eax	# _68->common.code, D.18626
	cmpb	$19, %al	#, D.18626
	jne	.L504	#,
.LBB31:
	.loc 1 2694 0
	movq	-104(%rbp), %rax	# exp, tmp183
	movq	8(%rax), %rax	# exp_19(D)->common.type, D.18629
	movq	%rax, %rdi	# D.18629,
	call	int_size_in_bytes	#
	movl	%eax, -80(%rbp)	# D.18633, len
	movl	-80(%rbp), %eax	# len, tmp184
	movl	%eax, -32(%rbp)	# tmp184, xlen
	.loc 1 2695 0
	movl	-80(%rbp), %eax	# len, tmp185
	cltq
	leaq	15(%rax), %rdx	#, tmp186
	movl	$16, %eax	#, tmp271
	subq	$1, %rax	#, tmp187
	addq	%rdx, %rax	# tmp186, tmp188
	movl	$16, %ebx	#, tmp272
	movl	$0, %edx	#, tmp191
	divq	%rbx	# tmp272
	imulq	$16, %rax, %rax	#, tmp190, tmp192
	subq	%rax, %rsp	# tmp192,
	movq	%rsp, %rax	#, tmp193
	addq	$15, %rax	#, tmp194
	shrq	$4, %rax	#, tmp195
	salq	$4, %rax	#, tmp196
	movq	%rax, -48(%rbp)	# tmp196, tmp
	.loc 1 2697 0
	movl	-80(%rbp), %edx	# len, tmp197
	movq	-48(%rbp), %rcx	# tmp, tmp198
	movq	-104(%rbp), %rax	# exp, tmp199
	movq	%rcx, %rsi	# tmp198,
	movq	%rax, %rdi	# tmp199,
	call	get_set_constructor_bytes	#
	.loc 1 2698 0
	movq	-48(%rbp), %rax	# tmp, tmp200
	movq	%rax, -64(%rbp)	# tmp200, strp
	.loc 1 2699 0
	movq	-112(%rbp), %rcx	# p, tmp201
	leaq	-32(%rbp), %rax	#, tmp202
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp201,
	movq	%rax, %rdi	# tmp202,
	call	memcmp	#
	testl	%eax, %eax	# D.18628
	je	.L505	#,
	.loc 1 2700 0
	movl	$0, %eax	#, D.18625
	jmp	.L486	#
.L505:
	.loc 1 2702 0
	addq	$4, -112(%rbp)	#, p
.LBE31:
	.loc 1 2850 0
	jmp	.L533	#
.L504:
.LBB32:
	.loc 1 2708 0
	movq	-104(%rbp), %rax	# exp, tmp203
	movq	40(%rax), %rax	# exp_19(D)->exp.operands, D.18629
	movq	%rax, %rdi	# D.18629,
	call	list_length	#
	movl	%eax, -92(%rbp)	# length.253, length
	.loc 1 2710 0
	movq	-104(%rbp), %rax	# exp, tmp204
	movq	8(%rax), %rax	# exp_19(D)->common.type, D.18629
	movzbl	61(%rax), %eax	# *_81, tmp207
	shrb	%al	# D.18631
	movzbl	%al, %eax	# D.18631, mode.254
	movl	%eax, -88(%rbp)	# mode.254, mode
	.loc 1 2711 0
	movl	$0, -84(%rbp)	#, have_purpose
	.loc 1 2713 0
	movq	-104(%rbp), %rax	# exp, tmp208
	movq	40(%rax), %rax	# exp_19(D)->exp.operands, tmp209
	movq	%rax, -56(%rbp)	# tmp209, link
	jmp	.L506	#
.L508:
	.loc 1 2714 0
	movq	-56(%rbp), %rax	# link, tmp210
	movq	24(%rax), %rax	# link_15->list.purpose, D.18629
	testq	%rax, %rax	# D.18629
	je	.L507	#,
	.loc 1 2715 0
	movl	$1, -84(%rbp)	#, have_purpose
.L507:
	.loc 1 2713 0
	movq	-56(%rbp), %rax	# link, tmp211
	movq	(%rax), %rax	# link_15->common.chain, tmp212
	movq	%rax, -56(%rbp)	# tmp212, link
.L506:
	.loc 1 2713 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, link
	jne	.L508	#,
	.loc 1 2717 0 is_stmt 1
	movq	-112(%rbp), %rcx	# p, tmp213
	leaq	-92(%rbp), %rax	#, tmp214
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp213,
	movq	%rax, %rdi	# tmp214,
	call	memcmp	#
	testl	%eax, %eax	# D.18628
	je	.L509	#,
	.loc 1 2718 0
	movl	$0, %eax	#, D.18625
	jmp	.L486	#
.L509:
	.loc 1 2720 0
	addq	$4, -112(%rbp)	#, p
	.loc 1 2726 0
	movq	-104(%rbp), %rax	# exp, tmp215
	movq	8(%rax), %rax	# exp_19(D)->common.type, D.18629
	movzbl	16(%rax), %eax	# _90->common.code, D.18626
	cmpb	$20, %al	#, D.18626
	jne	.L511	#,
	.loc 1 2727 0
	movq	-104(%rbp), %rax	# exp, tmp216
	movq	8(%rax), %rax	# exp_19(D)->common.type, type.255
	movq	%rax, -72(%rbp)	# type.255, type
	jmp	.L512	#
.L511:
	.loc 1 2729 0
	movq	$0, -72(%rbp)	#, type
.L512:
	.loc 1 2731 0
	movq	-112(%rbp), %rcx	# p, tmp217
	leaq	-72(%rbp), %rax	#, tmp218
	movl	$8, %edx	#,
	movq	%rcx, %rsi	# tmp217,
	movq	%rax, %rdi	# tmp218,
	call	memcmp	#
	testl	%eax, %eax	# D.18628
	je	.L513	#,
	.loc 1 2732 0
	movl	$0, %eax	#, D.18625
	jmp	.L486	#
.L513:
	.loc 1 2734 0
	movq	-104(%rbp), %rax	# exp, tmp219
	movq	8(%rax), %rax	# exp_19(D)->common.type, D.18629
	movzbl	16(%rax), %eax	# _95->common.code, D.18626
	cmpb	$18, %al	#, D.18626
	jne	.L514	#,
	.loc 1 2736 0
	movq	-112(%rbp), %rcx	# p, tmp220
	leaq	-88(%rbp), %rax	#, tmp221
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp220,
	movq	%rax, %rdi	# tmp221,
	call	memcmp	#
	testl	%eax, %eax	# D.18628
	je	.L515	#,
	.loc 1 2737 0
	movl	$0, %eax	#, D.18625
	jmp	.L486	#
.L515:
	.loc 1 2739 0
	addq	$4, -112(%rbp)	#, p
.L514:
	.loc 1 2742 0
	addq	$8, -112(%rbp)	#, p
	.loc 1 2744 0
	movq	-112(%rbp), %rcx	# p, tmp222
	leaq	-84(%rbp), %rax	#, tmp223
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp222,
	movq	%rax, %rdi	# tmp223,
	call	memcmp	#
	testl	%eax, %eax	# D.18628
	je	.L516	#,
	.loc 1 2745 0
	movl	$0, %eax	#, D.18625
	jmp	.L486	#
.L516:
	.loc 1 2747 0
	addq	$4, -112(%rbp)	#, p
	.loc 1 2750 0
	movq	-104(%rbp), %rax	# exp, tmp224
	movq	8(%rax), %rax	# exp_19(D)->common.type, D.18629
	movzbl	16(%rax), %eax	# _104->common.code, D.18626
	cmpb	$18, %al	#, D.18626
	jne	.L517	#,
.LBB33:
	.loc 1 2752 0
	movq	-104(%rbp), %rax	# exp, tmp225
	movq	8(%rax), %rax	# exp_19(D)->common.type, D.18629
	movq	%rax, %rdi	# D.18629,
	call	int_size_in_bytes	#
	movq	%rax, -32(%rbp)	# size.256, size
	.loc 1 2754 0
	movq	-112(%rbp), %rcx	# p, tmp226
	leaq	-32(%rbp), %rax	#, tmp227
	movl	$8, %edx	#,
	movq	%rcx, %rsi	# tmp226,
	movq	%rax, %rdi	# tmp227,
	call	memcmp	#
	testl	%eax, %eax	# D.18628
	je	.L518	#,
	.loc 1 2755 0
	movl	$0, %eax	#, D.18625
.LBE33:
	jmp	.L486	#
.L518:
.LBB34:
	.loc 1 2757 0
	addq	$8, -112(%rbp)	#, p
.L517:
.LBE34:
	.loc 1 2760 0
	movq	-104(%rbp), %rax	# exp, tmp228
	movq	40(%rax), %rax	# exp_19(D)->exp.operands, tmp229
	movq	%rax, -56(%rbp)	# tmp229, link
	jmp	.L519	#
.L528:
	.loc 1 2762 0
	movq	-56(%rbp), %rax	# link, tmp230
	movq	32(%rax), %rax	# link_16->list.value, D.18629
	testq	%rax, %rax	# D.18629
	je	.L520	#,
	.loc 1 2764 0
	movq	-56(%rbp), %rax	# link, tmp231
	movq	32(%rax), %rax	# link_16->list.value, D.18629
	movq	-112(%rbp), %rdx	# p, tmp232
	movq	%rdx, %rsi	# tmp232,
	movq	%rax, %rdi	# D.18629,
	call	compare_constant_1	#
	movq	%rax, -112(%rbp)	# tmp233, p
	cmpq	$0, -112(%rbp)	#, p
	jne	.L521	#,
	.loc 1 2765 0
	movl	$0, %eax	#, D.18625
	jmp	.L486	#
.L520:
.LBB35:
	.loc 1 2769 0
	movq	$0, -32(%rbp)	#, zero
	.loc 1 2771 0
	movq	-112(%rbp), %rcx	# p, tmp234
	leaq	-32(%rbp), %rax	#, tmp235
	movl	$8, %edx	#,
	movq	%rcx, %rsi	# tmp234,
	movq	%rax, %rdi	# tmp235,
	call	memcmp	#
	testl	%eax, %eax	# D.18628
	je	.L522	#,
	.loc 1 2772 0
	movl	$0, %eax	#, D.18625
.LBE35:
	jmp	.L486	#
.L522:
.LBB36:
	.loc 1 2774 0
	addq	$8, -112(%rbp)	#, p
.L521:
.LBE36:
	.loc 1 2777 0
	movq	-56(%rbp), %rax	# link, tmp236
	movq	24(%rax), %rax	# link_16->list.purpose, D.18629
	testq	%rax, %rax	# D.18629
	je	.L523	#,
	.loc 1 2778 0
	movq	-56(%rbp), %rax	# link, tmp237
	movq	24(%rax), %rax	# link_16->list.purpose, D.18629
	movzbl	16(%rax), %eax	# _120->common.code, D.18626
	cmpb	$37, %al	#, D.18626
	jne	.L523	#,
	.loc 1 2780 0
	movq	-56(%rbp), %rax	# link, tmp238
	leaq	24(%rax), %rcx	#, D.18635
	movq	-112(%rbp), %rax	# p, tmp239
	movl	$8, %edx	#,
	movq	%rax, %rsi	# tmp239,
	movq	%rcx, %rdi	# D.18635,
	call	memcmp	#
	testl	%eax, %eax	# D.18628
	je	.L524	#,
	.loc 1 2782 0
	movl	$0, %eax	#, D.18625
	jmp	.L486	#
.L524:
	.loc 1 2784 0
	addq	$8, -112(%rbp)	#, p
	jmp	.L525	#
.L523:
	.loc 1 2786 0
	movq	-56(%rbp), %rax	# link, tmp240
	movq	24(%rax), %rax	# link_16->list.purpose, D.18629
	testq	%rax, %rax	# D.18629
	je	.L526	#,
	.loc 1 2788 0
	movq	-56(%rbp), %rax	# link, tmp241
	movq	24(%rax), %rax	# link_16->list.purpose, D.18629
	movq	-112(%rbp), %rdx	# p, tmp242
	movq	%rdx, %rsi	# tmp242,
	movq	%rax, %rdi	# D.18629,
	call	compare_constant_1	#
	movq	%rax, -112(%rbp)	# tmp243, p
	cmpq	$0, -112(%rbp)	#, p
	jne	.L525	#,
	.loc 1 2789 0
	movl	$0, %eax	#, D.18625
	jmp	.L486	#
.L526:
	.loc 1 2791 0
	movl	-84(%rbp), %eax	# have_purpose, have_purpose.257
	testl	%eax, %eax	# have_purpose.257
	je	.L525	#,
.LBB37:
	.loc 1 2793 0
	movl	$0, -32(%rbp)	#, zero
	.loc 1 2795 0
	movq	-112(%rbp), %rcx	# p, tmp244
	leaq	-32(%rbp), %rax	#, tmp245
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp244,
	movq	%rax, %rdi	# tmp245,
	call	memcmp	#
	testl	%eax, %eax	# D.18628
	je	.L527	#,
	.loc 1 2796 0
	movl	$0, %eax	#, D.18625
.LBE37:
	jmp	.L486	#
.L527:
.LBB38:
	.loc 1 2798 0
	addq	$4, -112(%rbp)	#, p
.L525:
.LBE38:
	.loc 1 2760 0
	movq	-56(%rbp), %rax	# link, tmp246
	movq	(%rax), %rax	# link_16->common.chain, tmp247
	movq	%rax, -56(%rbp)	# tmp247, link
.L519:
	.loc 1 2760 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, link
	jne	.L528	#,
	.loc 1 2802 0 is_stmt 1
	movq	-112(%rbp), %rax	# p, D.18625
	jmp	.L486	#
.L496:
.LBE32:
.LBB39:
	.loc 1 2810 0
	leaq	-32(%rbp), %rdx	#, tmp248
	movq	-104(%rbp), %rax	# exp, tmp249
	movq	%rdx, %rsi	# tmp248,
	movq	%rax, %rdi	# tmp249,
	call	decode_addr_const	#
	.loc 1 2811 0
	leaq	-32(%rbp), %rax	#, tmp250
	addq	$8, %rax	#, tmp251
	movq	%rax, -64(%rbp)	# tmp251, strp
	.loc 1 2812 0
	movl	$8, -80(%rbp)	#, len
	.loc 1 2814 0
	jmp	.L529	#
.L530:
	.loc 1 2815 0
	movq	-112(%rbp), %rax	# p, p.258
	leaq	1(%rax), %rdx	#, tmp252
	movq	%rdx, -112(%rbp)	# tmp252, p
	movzbl	(%rax), %ecx	# *p.258_139, D.18626
	movq	-64(%rbp), %rax	# strp, strp.259
	leaq	1(%rax), %rdx	#, tmp253
	movq	%rdx, -64(%rbp)	# tmp253, strp
	movzbl	(%rax), %eax	# *strp.259_142, D.18626
	cmpb	%al, %cl	# D.18626, D.18626
	je	.L529	#,
	.loc 1 2816 0
	movl	$0, %eax	#, D.18625
	jmp	.L486	#
.L529:
	.loc 1 2814 0 discriminator 1
	subl	$1, -80(%rbp)	#, len
	cmpl	$0, -80(%rbp)	#, len
	jns	.L530	#,
	.loc 1 2819 0
	movq	-32(%rbp), %rax	# value.base, D.18636
	movq	8(%rax), %rax	# _146->fld[0].rtstr, tmp254
	movq	%rax, -64(%rbp)	# tmp254, strp
	.loc 1 2820 0
	movq	-64(%rbp), %rax	# strp, tmp255
	movq	%rax, %rdi	# tmp255,
	call	strlen	#
	addl	$1, %eax	#, D.18637
	movl	%eax, -80(%rbp)	# D.18637, len
.LBE39:
	.loc 1 2822 0
	jmp	.L498	#
.L494:
	.loc 1 2827 0
	movq	-104(%rbp), %rax	# exp, tmp256
	movq	32(%rax), %rax	# exp_19(D)->exp.operands, D.18629
	movq	-112(%rbp), %rdx	# p, tmp257
	movq	%rdx, %rsi	# tmp257,
	movq	%rax, %rdi	# D.18629,
	call	compare_constant_1	#
	movq	%rax, -112(%rbp)	# tmp258, p
	.loc 1 2828 0
	cmpq	$0, -112(%rbp)	#, p
	jne	.L531	#,
	.loc 1 2829 0
	movl	$0, %eax	#, D.18625
	jmp	.L486	#
.L531:
	.loc 1 2831 0
	movq	-104(%rbp), %rax	# exp, tmp259
	movq	40(%rax), %rax	# exp_19(D)->exp.operands, D.18629
	movq	-112(%rbp), %rdx	# p, tmp260
	movq	%rdx, %rsi	# tmp260,
	movq	%rax, %rdi	# D.18629,
	call	compare_constant_1	#
	jmp	.L486	#
.L495:
	.loc 1 2836 0
	movq	-104(%rbp), %rax	# exp, tmp261
	movq	32(%rax), %rax	# exp_19(D)->exp.operands, D.18629
	movq	-112(%rbp), %rdx	# p, tmp262
	movq	%rdx, %rsi	# tmp262,
	movq	%rax, %rdi	# D.18629,
	call	compare_constant_1	#
	jmp	.L486	#
.L487:
.LBB40:
	.loc 1 2840 0
	movq	lang_hooks+72(%rip), %rax	# lang_hooks.expand_constant, D.18638
	movq	-104(%rbp), %rdx	# exp, tmp263
	movq	%rdx, %rdi	# tmp263,
	call	*%rax	# D.18638
	movq	%rax, -40(%rbp)	# tmp264, new
	.loc 1 2842 0
	movq	-40(%rbp), %rax	# new, tmp265
	cmpq	-104(%rbp), %rax	# exp, tmp265
	je	.L532	#,
	.loc 1 2843 0
	movq	-112(%rbp), %rdx	# p, tmp266
	movq	-40(%rbp), %rax	# new, tmp267
	movq	%rdx, %rsi	# tmp266,
	movq	%rax, %rdi	# tmp267,
	call	compare_constant_1	#
	jmp	.L486	#
.L532:
	.loc 1 2845 0
	movl	$0, %eax	#, D.18625
	jmp	.L486	#
.L498:
.LBE40:
	.loc 1 2850 0
	jmp	.L533	#
.L534:
	.loc 1 2851 0
	movq	-112(%rbp), %rax	# p, p.260
	leaq	1(%rax), %rdx	#, tmp268
	movq	%rdx, -112(%rbp)	# tmp268, p
	movzbl	(%rax), %ecx	# *p.260_164, D.18626
	movq	-64(%rbp), %rax	# strp, strp.261
	leaq	1(%rax), %rdx	#, tmp269
	movq	%rdx, -64(%rbp)	# tmp269, strp
	movzbl	(%rax), %eax	# *strp.261_167, D.18626
	cmpb	%al, %cl	# D.18626, D.18626
	je	.L533	#,
	.loc 1 2852 0
	movl	$0, %eax	#, D.18625
	jmp	.L486	#
.L533:
	.loc 1 2850 0 discriminator 1
	subl	$1, -80(%rbp)	#, len
	cmpl	$0, -80(%rbp)	#, len
	jns	.L534	#,
	.loc 1 2854 0
	movq	-112(%rbp), %rax	# p, D.18625
.L486:
	.loc 1 2855 0
	movq	-8(%rbp), %rbx	#,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	compare_constant_1, .-compare_constant_1
	.type	record_constant, @function
record_constant:
.LFB68:
	.loc 1 2863 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -104(%rbp)	# exp, exp
	.loc 1 2864 0
	movq	$0, -72(%rbp)	#, next
	.loc 1 2865 0
	movq	$0, -64(%rbp)	#, label
	.loc 1 2866 0
	movq	$0, -56(%rbp)	#, rtl
.LBB41:
	.loc 1 2872 0
	movq	$permanent_obstack, -48(%rbp)	#, __o
	movl	$8, -92(%rbp)	#, __len
	movq	-48(%rbp), %rax	# __o, tmp121
	movq	24(%rax), %rdx	# __o_1->next_free, D.18640
	movl	-92(%rbp), %eax	# __len, tmp122
	cltq
	addq	%rax, %rdx	# D.18641, D.18640
	movq	-48(%rbp), %rax	# __o, tmp123
	movq	32(%rax), %rax	# __o_1->chunk_limit, D.18640
	cmpq	%rax, %rdx	# D.18640, D.18640
	jbe	.L536	#,
	.loc 1 2872 0 is_stmt 0 discriminator 1
	movl	-92(%rbp), %edx	# __len, tmp124
	movq	-48(%rbp), %rax	# __o, tmp125
	movl	%edx, %esi	# tmp124,
	movq	%rax, %rdi	# tmp125,
	call	_obstack_newchunk	#
.L536:
	.loc 1 2872 0 discriminator 2
	movl	-92(%rbp), %eax	# __len, tmp126
	movslq	%eax, %rdx	# tmp126, D.18642
	movq	-48(%rbp), %rax	# __o, tmp127
	movq	24(%rax), %rax	# __o_1->next_free, D.18640
	leaq	-72(%rbp), %rcx	#, tmp128
	movq	%rcx, %rsi	# tmp128,
	movq	%rax, %rdi	# D.18640,
	call	memcpy	#
	movq	-48(%rbp), %rax	# __o, tmp129
	movq	24(%rax), %rdx	# __o_1->next_free, D.18640
	movl	-92(%rbp), %eax	# __len, tmp130
	cltq
	addq	%rax, %rdx	# D.18641, D.18640
	movq	-48(%rbp), %rax	# __o, tmp131
	movq	%rdx, 24(%rax)	# D.18640, __o_1->next_free
.LBE41:
.LBB42:
	.loc 1 2873 0 is_stmt 1 discriminator 2
	movq	$permanent_obstack, -40(%rbp)	#, __o
	movl	$8, -88(%rbp)	#, __len
	movq	-40(%rbp), %rax	# __o, tmp132
	movq	24(%rax), %rdx	# __o_12->next_free, D.18640
	movl	-88(%rbp), %eax	# __len, tmp133
	cltq
	addq	%rax, %rdx	# D.18641, D.18640
	movq	-40(%rbp), %rax	# __o, tmp134
	movq	32(%rax), %rax	# __o_12->chunk_limit, D.18640
	cmpq	%rax, %rdx	# D.18640, D.18640
	jbe	.L537	#,
	.loc 1 2873 0 is_stmt 0 discriminator 1
	movl	-88(%rbp), %edx	# __len, tmp135
	movq	-40(%rbp), %rax	# __o, tmp136
	movl	%edx, %esi	# tmp135,
	movq	%rax, %rdi	# tmp136,
	call	_obstack_newchunk	#
.L537:
	.loc 1 2873 0 discriminator 2
	movl	-88(%rbp), %eax	# __len, tmp137
	movslq	%eax, %rdx	# tmp137, D.18642
	movq	-40(%rbp), %rax	# __o, tmp138
	movq	24(%rax), %rax	# __o_12->next_free, D.18640
	leaq	-64(%rbp), %rcx	#, tmp139
	movq	%rcx, %rsi	# tmp139,
	movq	%rax, %rdi	# D.18640,
	call	memcpy	#
	movq	-40(%rbp), %rax	# __o, tmp140
	movq	24(%rax), %rdx	# __o_12->next_free, D.18640
	movl	-88(%rbp), %eax	# __len, tmp141
	cltq
	addq	%rax, %rdx	# D.18641, D.18640
	movq	-40(%rbp), %rax	# __o, tmp142
	movq	%rdx, 24(%rax)	# D.18640, __o_12->next_free
.LBE42:
.LBB43:
	.loc 1 2874 0 is_stmt 1 discriminator 2
	movq	$permanent_obstack, -32(%rbp)	#, __o
	movl	$8, -84(%rbp)	#, __len
	movq	-32(%rbp), %rax	# __o, tmp143
	movq	24(%rax), %rdx	# __o_23->next_free, D.18640
	movl	-84(%rbp), %eax	# __len, tmp144
	cltq
	addq	%rax, %rdx	# D.18641, D.18640
	movq	-32(%rbp), %rax	# __o, tmp145
	movq	32(%rax), %rax	# __o_23->chunk_limit, D.18640
	cmpq	%rax, %rdx	# D.18640, D.18640
	jbe	.L538	#,
	.loc 1 2874 0 is_stmt 0 discriminator 1
	movl	-84(%rbp), %edx	# __len, tmp146
	movq	-32(%rbp), %rax	# __o, tmp147
	movl	%edx, %esi	# tmp146,
	movq	%rax, %rdi	# tmp147,
	call	_obstack_newchunk	#
.L538:
	.loc 1 2874 0 discriminator 2
	movl	-84(%rbp), %eax	# __len, tmp148
	movslq	%eax, %rdx	# tmp148, D.18642
	movq	-32(%rbp), %rax	# __o, tmp149
	movq	24(%rax), %rax	# __o_23->next_free, D.18640
	leaq	-56(%rbp), %rcx	#, tmp150
	movq	%rcx, %rsi	# tmp150,
	movq	%rax, %rdi	# D.18640,
	call	memcpy	#
	movq	-32(%rbp), %rax	# __o, tmp151
	movq	24(%rax), %rdx	# __o_23->next_free, D.18640
	movl	-84(%rbp), %eax	# __len, tmp152
	cltq
	addq	%rax, %rdx	# D.18641, D.18640
	movq	-32(%rbp), %rax	# __o, tmp153
	movq	%rdx, 24(%rax)	# D.18640, __o_23->next_free
.LBE43:
	.loc 1 2877 0 is_stmt 1 discriminator 2
	movl	$8, -80(%rbp)	#, pad
	.loc 1 2880 0 discriminator 2
	cmpl	$0, -80(%rbp)	#, pad
	jle	.L539	#,
.LBB44:
	.loc 1 2881 0
	movq	$permanent_obstack, -24(%rbp)	#, __o
	movl	-80(%rbp), %eax	# pad, tmp154
	movl	%eax, -76(%rbp)	# tmp154, __len
	movq	-24(%rbp), %rax	# __o, tmp155
	movq	32(%rax), %rax	# __o_35->chunk_limit, D.18640
	movq	%rax, %rdx	# D.18640, D.18643
	movq	-24(%rbp), %rax	# __o, tmp156
	movq	24(%rax), %rax	# __o_35->next_free, D.18640
	subq	%rax, %rdx	# D.18643, D.18643
	movl	-76(%rbp), %eax	# __len, tmp157
	cltq
	cmpq	%rax, %rdx	# D.18643, D.18643
	jge	.L540	#,
	.loc 1 2881 0 is_stmt 0 discriminator 1
	movl	-76(%rbp), %edx	# __len, tmp158
	movq	-24(%rbp), %rax	# __o, tmp159
	movl	%edx, %esi	# tmp158,
	movq	%rax, %rdi	# tmp159,
	call	_obstack_newchunk	#
.L540:
	.loc 1 2881 0 discriminator 2
	movq	-24(%rbp), %rax	# __o, tmp160
	movq	24(%rax), %rdx	# __o_35->next_free, D.18640
	movl	-76(%rbp), %eax	# __len, tmp161
	cltq
	addq	%rax, %rdx	# D.18641, D.18640
	movq	-24(%rbp), %rax	# __o, tmp162
	movq	%rdx, 24(%rax)	# D.18640, __o_35->next_free
.L539:
.LBE44:
	.loc 1 2883 0 is_stmt 1
	movq	-104(%rbp), %rax	# exp, tmp163
	movq	%rax, %rdi	# tmp163,
	call	record_constant_1	#
.LBB45:
	.loc 1 2884 0
	movq	$permanent_obstack, -16(%rbp)	#, __o1
	movq	-16(%rbp), %rax	# __o1, tmp164
	movq	16(%rax), %rax	# __o1_47->object_base, tmp165
	movq	%rax, -8(%rbp)	# tmp165, value
	movq	-16(%rbp), %rax	# __o1, tmp166
	movq	24(%rax), %rax	# __o1_47->next_free, D.18640
	cmpq	-8(%rbp), %rax	# value, D.18640
	jne	.L541	#,
	.loc 1 2884 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# __o1, tmp167
	movzbl	80(%rax), %edx	# __o1_47->maybe_empty_object, tmp170
	orl	$2, %edx	#, tmp171
	movb	%dl, 80(%rax)	# tmp171, __o1_47->maybe_empty_object
.L541:
	.loc 1 2884 0 discriminator 2
	movq	-16(%rbp), %rax	# __o1, tmp172
	movq	24(%rax), %rax	# __o1_47->next_free, D.18640
	movq	%rax, %rdx	# D.18640, D.18643
	movq	-16(%rbp), %rax	# __o1, tmp173
	movl	48(%rax), %eax	# __o1_47->alignment_mask, D.18644
	cltq
	addq	%rax, %rdx	# D.18643, D.18643
	movq	-16(%rbp), %rax	# __o1, tmp174
	movl	48(%rax), %eax	# __o1_47->alignment_mask, D.18644
	notl	%eax	# D.18644
	cltq
	andq	%rdx, %rax	# D.18643, D.18643
	movq	%rax, %rdx	# D.18643, D.18640
	movq	-16(%rbp), %rax	# __o1, tmp175
	movq	%rdx, 24(%rax)	# D.18640, __o1_47->next_free
	movq	-16(%rbp), %rax	# __o1, tmp176
	movq	24(%rax), %rax	# __o1_47->next_free, D.18640
	movq	%rax, %rdx	# D.18640, D.18643
	movq	-16(%rbp), %rax	# __o1, tmp177
	movq	8(%rax), %rax	# __o1_47->chunk, D.18645
	movq	%rdx, %rcx	# D.18643, D.18643
	subq	%rax, %rcx	# D.18643, D.18643
	movq	-16(%rbp), %rax	# __o1, tmp178
	movq	32(%rax), %rax	# __o1_47->chunk_limit, D.18640
	movq	%rax, %rdx	# D.18640, D.18643
	movq	-16(%rbp), %rax	# __o1, tmp179
	movq	8(%rax), %rax	# __o1_47->chunk, D.18645
	subq	%rax, %rdx	# D.18643, D.18643
	movq	%rdx, %rax	# D.18643, D.18643
	cmpq	%rax, %rcx	# D.18643, D.18643
	jle	.L542	#,
	.loc 1 2884 0 discriminator 1
	movq	-16(%rbp), %rax	# __o1, tmp180
	movq	32(%rax), %rdx	# __o1_47->chunk_limit, D.18640
	movq	-16(%rbp), %rax	# __o1, tmp181
	movq	%rdx, 24(%rax)	# D.18640, __o1_47->next_free
.L542:
	.loc 1 2884 0 discriminator 2
	movq	-16(%rbp), %rax	# __o1, tmp182
	movq	24(%rax), %rdx	# __o1_47->next_free, D.18640
	movq	-16(%rbp), %rax	# __o1, tmp183
	movq	%rdx, 16(%rax)	# D.18640, __o1_47->object_base
	movq	-8(%rbp), %rax	# value, D.18646
.LBE45:
	.loc 1 2885 0 is_stmt 1 discriminator 2
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	record_constant, .-record_constant
	.type	record_constant_1, @function
record_constant_1:
.LFB69:
	.loc 1 2895 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$304, %rsp	#,
	movq	%rdi, -296(%rbp)	# exp, exp
	.loc 1 2898 0
	movq	-296(%rbp), %rax	# exp, tmp280
	movzbl	16(%rax), %eax	# exp_5(D)->common.code, D.18648
	movzbl	%al, %eax	# D.18648, tmp281
	movl	%eax, -264(%rbp)	# tmp281, code
.LBB46:
	.loc 1 2900 0
	movq	$permanent_obstack, -176(%rbp)	#, __o
	movq	-176(%rbp), %rax	# __o, tmp282
	movq	24(%rax), %rax	# __o_8->next_free, D.18649
	leaq	1(%rax), %rdx	#, D.18649
	movq	-176(%rbp), %rax	# __o, tmp283
	movq	32(%rax), %rax	# __o_8->chunk_limit, D.18649
	cmpq	%rax, %rdx	# D.18649, D.18649
	jbe	.L545	#,
	.loc 1 2900 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# __o, tmp284
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp284,
	call	_obstack_newchunk	#
.L545:
	.loc 1 2900 0 discriminator 2
	movq	-176(%rbp), %rax	# __o, tmp285
	movq	24(%rax), %rax	# __o_8->next_free, D.18649
	leaq	1(%rax), %rcx	#, D.18649
	movq	-176(%rbp), %rdx	# __o, tmp286
	movq	%rcx, 24(%rdx)	# D.18649, __o_8->next_free
	movl	-264(%rbp), %edx	# code, tmp287
	movb	%dl, (%rax)	# D.18650, *_13
.LBE46:
	.loc 1 2902 0 is_stmt 1 discriminator 2
	movl	-264(%rbp), %eax	# code, tmp289
	subl	$25, %eax	#, tmp288
	cmpl	$96, %eax	#, tmp288
	ja	.L546	#,
	movl	%eax, %eax	# tmp288, tmp290
	movq	.L548(,%rax,8), %rax	#, tmp291
	jmp	*%rax	# tmp291
	.section	.rodata
	.align 8
	.align 4
.L548:
	.quad	.L547
	.quad	.L549
	.quad	.L550
	.quad	.L546
	.quad	.L551
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L552
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L553
	.quad	.L553
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L553
	.quad	.L554
	.quad	.L554
	.quad	.L554
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L546
	.quad	.L555
	.text
.L547:
.LBB47:
	.loc 1 2905 0
	movq	$permanent_obstack, -168(%rbp)	#, __o
	movq	-168(%rbp), %rax	# __o, tmp292
	movq	24(%rax), %rax	# __o_16->next_free, D.18649
	leaq	1(%rax), %rdx	#, D.18649
	movq	-168(%rbp), %rax	# __o, tmp293
	movq	32(%rax), %rax	# __o_16->chunk_limit, D.18649
	cmpq	%rax, %rdx	# D.18649, D.18649
	jbe	.L556	#,
	.loc 1 2905 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# __o, tmp294
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp294,
	call	_obstack_newchunk	#
.L556:
	.loc 1 2905 0 discriminator 2
	movq	-168(%rbp), %rax	# __o, tmp295
	movq	24(%rax), %rax	# __o_16->next_free, D.18649
	leaq	1(%rax), %rcx	#, D.18649
	movq	-168(%rbp), %rdx	# __o, tmp296
	movq	%rcx, 24(%rdx)	# D.18649, __o_16->next_free
	movq	-296(%rbp), %rdx	# exp, tmp297
	movq	8(%rdx), %rdx	# exp_5(D)->common.type, D.18651
	movzwl	60(%rdx), %edx	# *_23, tmp300
	andw	$511, %dx	#, D.18652
	movb	%dl, (%rax)	# D.18650, *_21
.LBE47:
	.loc 1 2906 0 is_stmt 1 discriminator 2
	movq	-296(%rbp), %rax	# exp, tmp304
	addq	$32, %rax	#, tmp303
	movq	%rax, -192(%rbp)	# tmp303, strp
	.loc 1 2907 0 discriminator 2
	movl	$16, -268(%rbp)	#, len
	.loc 1 2908 0 discriminator 2
	jmp	.L557	#
.L549:
.LBB48:
	.loc 1 2911 0
	movq	$permanent_obstack, -160(%rbp)	#, __o
	movq	-160(%rbp), %rax	# __o, tmp305
	movq	24(%rax), %rax	# __o_28->next_free, D.18649
	leaq	1(%rax), %rdx	#, D.18649
	movq	-160(%rbp), %rax	# __o, tmp306
	movq	32(%rax), %rax	# __o_28->chunk_limit, D.18649
	cmpq	%rax, %rdx	# D.18649, D.18649
	jbe	.L558	#,
	.loc 1 2911 0 is_stmt 0 discriminator 1
	movq	-160(%rbp), %rax	# __o, tmp307
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp307,
	call	_obstack_newchunk	#
.L558:
	.loc 1 2911 0 discriminator 2
	movq	-160(%rbp), %rax	# __o, tmp308
	movq	24(%rax), %rax	# __o_28->next_free, D.18649
	leaq	1(%rax), %rcx	#, D.18649
	movq	-160(%rbp), %rdx	# __o, tmp309
	movq	%rcx, 24(%rdx)	# D.18649, __o_28->next_free
	movq	-296(%rbp), %rdx	# exp, tmp310
	movq	8(%rdx), %rdx	# exp_5(D)->common.type, D.18651
	movzwl	60(%rdx), %edx	# *_35, tmp313
	andw	$511, %dx	#, D.18652
	movb	%dl, (%rax)	# D.18650, *_33
.LBE48:
	.loc 1 2912 0 is_stmt 1 discriminator 2
	movq	-296(%rbp), %rax	# exp, tmp317
	addq	$32, %rax	#, tmp316
	movq	%rax, -192(%rbp)	# tmp316, strp
	.loc 1 2913 0 discriminator 2
	movl	$24, -268(%rbp)	#, len
	.loc 1 2914 0 discriminator 2
	jmp	.L557	#
.L551:
	.loc 1 2917 0
	movl	flag_writable_strings(%rip), %eax	# flag_writable_strings, flag_writable_strings.262
	testl	%eax, %eax	# flag_writable_strings.262
	je	.L559	#,
	.loc 1 2918 0
	jmp	.L544	#
.L559:
.LBB49:
	.loc 1 2920 0
	movq	$permanent_obstack, -152(%rbp)	#, __o
	movq	-152(%rbp), %rax	# __o, tmp318
	movq	24(%rax), %rax	# __o_41->next_free, D.18649
	leaq	1(%rax), %rdx	#, D.18649
	movq	-152(%rbp), %rax	# __o, tmp319
	movq	32(%rax), %rax	# __o_41->chunk_limit, D.18649
	cmpq	%rax, %rdx	# D.18649, D.18649
	jbe	.L561	#,
	.loc 1 2920 0 is_stmt 0 discriminator 1
	movq	-152(%rbp), %rax	# __o, tmp320
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp320,
	call	_obstack_newchunk	#
.L561:
	.loc 1 2920 0 discriminator 2
	movq	-152(%rbp), %rax	# __o, tmp321
	movq	24(%rax), %rax	# __o_41->next_free, D.18649
	leaq	1(%rax), %rcx	#, D.18649
	movq	-152(%rbp), %rdx	# __o, tmp322
	movq	%rcx, 24(%rdx)	# D.18649, __o_41->next_free
	movq	-296(%rbp), %rdx	# exp, tmp323
	movq	8(%rdx), %rdx	# exp_5(D)->common.type, D.18651
	movzbl	61(%rdx), %edx	# *_48, tmp326
	shrb	%dl	# D.18653
	movb	%dl, (%rax)	# D.18650, *_46
.LBE49:
	.loc 1 2921 0 is_stmt 1 discriminator 2
	movq	-296(%rbp), %rax	# exp, tmp327
	movq	40(%rax), %rax	# exp_5(D)->string.pointer, tmp328
	movq	%rax, -192(%rbp)	# tmp328, strp
	.loc 1 2922 0 discriminator 2
	movq	-296(%rbp), %rax	# exp, tmp329
	movl	32(%rax), %eax	# exp_5(D)->string.length, tmp330
	movl	%eax, -268(%rbp)	# tmp330, len
.LBB50:
	.loc 1 2923 0 discriminator 2
	movq	$permanent_obstack, -144(%rbp)	#, __o
	movl	$4, -260(%rbp)	#, __len
	movq	-144(%rbp), %rax	# __o, tmp331
	movq	24(%rax), %rdx	# __o_53->next_free, D.18649
	movl	-260(%rbp), %eax	# __len, tmp332
	cltq
	addq	%rax, %rdx	# D.18654, D.18649
	movq	-144(%rbp), %rax	# __o, tmp333
	movq	32(%rax), %rax	# __o_53->chunk_limit, D.18649
	cmpq	%rax, %rdx	# D.18649, D.18649
	jbe	.L562	#,
	.loc 1 2923 0 is_stmt 0 discriminator 1
	movl	-260(%rbp), %edx	# __len, tmp334
	movq	-144(%rbp), %rax	# __o, tmp335
	movl	%edx, %esi	# tmp334,
	movq	%rax, %rdi	# tmp335,
	call	_obstack_newchunk	#
.L562:
	.loc 1 2923 0 discriminator 2
	movl	-260(%rbp), %eax	# __len, tmp336
	movslq	%eax, %rdx	# tmp336, D.18655
	movq	-296(%rbp), %rax	# exp, tmp337
	leaq	32(%rax), %rcx	#, D.18656
	movq	-144(%rbp), %rax	# __o, tmp338
	movq	24(%rax), %rax	# __o_53->next_free, D.18649
	movq	%rcx, %rsi	# D.18656,
	movq	%rax, %rdi	# D.18649,
	call	memcpy	#
	movq	-144(%rbp), %rax	# __o, tmp339
	movq	24(%rax), %rdx	# __o_53->next_free, D.18649
	movl	-260(%rbp), %eax	# __len, tmp340
	cltq
	addq	%rax, %rdx	# D.18654, D.18649
	movq	-144(%rbp), %rax	# __o, tmp341
	movq	%rdx, 24(%rax)	# D.18649, __o_53->next_free
.LBE50:
	.loc 1 2925 0 is_stmt 1 discriminator 2
	jmp	.L557	#
.L550:
	.loc 1 2928 0
	movq	-296(%rbp), %rax	# exp, tmp342
	movq	32(%rax), %rax	# exp_5(D)->complex.real, D.18651
	movq	%rax, %rdi	# D.18651,
	call	record_constant_1	#
	.loc 1 2929 0
	movq	-296(%rbp), %rax	# exp, tmp343
	movq	40(%rax), %rax	# exp_5(D)->complex.imag, D.18651
	movq	%rax, %rdi	# D.18651,
	call	record_constant_1	#
	.loc 1 2930 0
	jmp	.L544	#
.L552:
	.loc 1 2933 0
	movq	-296(%rbp), %rax	# exp, tmp344
	movq	8(%rax), %rax	# exp_5(D)->common.type, D.18651
	movzbl	16(%rax), %eax	# _67->common.code, D.18648
	cmpb	$19, %al	#, D.18648
	jne	.L563	#,
.LBB51:
	.loc 1 2935 0
	movq	-296(%rbp), %rax	# exp, tmp345
	movq	8(%rax), %rax	# exp_5(D)->common.type, D.18651
	movq	%rax, %rdi	# D.18651,
	call	int_size_in_bytes	#
	movl	%eax, -16(%rbp)	# nbytes.263, nbytes
.LBB52:
	.loc 1 2936 0
	movq	$permanent_obstack, -136(%rbp)	#, __o
	movl	$4, -256(%rbp)	#, __len
	movq	-136(%rbp), %rax	# __o, tmp346
	movq	24(%rax), %rdx	# __o_72->next_free, D.18649
	movl	-256(%rbp), %eax	# __len, tmp347
	cltq
	addq	%rax, %rdx	# D.18654, D.18649
	movq	-136(%rbp), %rax	# __o, tmp348
	movq	32(%rax), %rax	# __o_72->chunk_limit, D.18649
	cmpq	%rax, %rdx	# D.18649, D.18649
	jbe	.L564	#,
	.loc 1 2936 0 is_stmt 0 discriminator 1
	movl	-256(%rbp), %edx	# __len, tmp349
	movq	-136(%rbp), %rax	# __o, tmp350
	movl	%edx, %esi	# tmp349,
	movq	%rax, %rdi	# tmp350,
	call	_obstack_newchunk	#
.L564:
	.loc 1 2936 0 discriminator 2
	movl	-256(%rbp), %eax	# __len, tmp351
	movslq	%eax, %rdx	# tmp351, D.18655
	movq	-136(%rbp), %rax	# __o, tmp352
	movq	24(%rax), %rax	# __o_72->next_free, D.18649
	leaq	-16(%rbp), %rcx	#, tmp353
	movq	%rcx, %rsi	# tmp353,
	movq	%rax, %rdi	# D.18649,
	call	memcpy	#
	movq	-136(%rbp), %rax	# __o, tmp354
	movq	24(%rax), %rdx	# __o_72->next_free, D.18649
	movl	-256(%rbp), %eax	# __len, tmp355
	cltq
	addq	%rax, %rdx	# D.18654, D.18649
	movq	-136(%rbp), %rax	# __o, tmp356
	movq	%rdx, 24(%rax)	# D.18649, __o_72->next_free
.LBE52:
.LBB53:
	.loc 1 2937 0 is_stmt 1 discriminator 2
	movq	$permanent_obstack, -128(%rbp)	#, __o
	movl	-16(%rbp), %eax	# nbytes, tmp357
	movl	%eax, -252(%rbp)	# tmp357, __len
	movq	-128(%rbp), %rax	# __o, tmp358
	movq	32(%rax), %rax	# __o_83->chunk_limit, D.18649
	movq	%rax, %rdx	# D.18649, D.18657
	movq	-128(%rbp), %rax	# __o, tmp359
	movq	24(%rax), %rax	# __o_83->next_free, D.18649
	subq	%rax, %rdx	# D.18657, D.18657
	movl	-252(%rbp), %eax	# __len, tmp360
	cltq
	cmpq	%rax, %rdx	# D.18657, D.18657
	jge	.L565	#,
	.loc 1 2937 0 is_stmt 0 discriminator 1
	movl	-252(%rbp), %edx	# __len, tmp361
	movq	-128(%rbp), %rax	# __o, tmp362
	movl	%edx, %esi	# tmp361,
	movq	%rax, %rdi	# tmp362,
	call	_obstack_newchunk	#
.L565:
	.loc 1 2937 0 discriminator 2
	movq	-128(%rbp), %rax	# __o, tmp363
	movq	24(%rax), %rdx	# __o_83->next_free, D.18649
	movl	-252(%rbp), %eax	# __len, tmp364
	cltq
	addq	%rax, %rdx	# D.18654, D.18649
	movq	-128(%rbp), %rax	# __o, tmp365
	movq	%rdx, 24(%rax)	# D.18649, __o_83->next_free
.LBE53:
	.loc 1 2939 0 is_stmt 1 discriminator 2
	movl	-16(%rbp), %edx	# nbytes, nbytes.264
	movq	permanent_obstack+24(%rip), %rax	# permanent_obstack.next_free, D.18649
	movl	-16(%rbp), %ecx	# nbytes, nbytes.265
	movslq	%ecx, %rcx	# nbytes.265, D.18654
	negq	%rcx	# D.18654
	addq	%rax, %rcx	# D.18649, D.18658
	movq	-296(%rbp), %rax	# exp, tmp366
	movq	%rcx, %rsi	# D.18658,
	movq	%rax, %rdi	# tmp366,
	call	get_set_constructor_bytes	#
	.loc 1 2941 0 discriminator 2
	nop
	jmp	.L544	#
.L563:
.LBE51:
.LBB54:
	.loc 1 2946 0
	movq	-296(%rbp), %rax	# exp, tmp367
	movq	40(%rax), %rax	# exp_5(D)->exp.operands, D.18651
	movq	%rax, %rdi	# D.18651,
	call	list_length	#
	movl	%eax, -280(%rbp)	# length.266, length
	.loc 1 2947 0
	movq	-296(%rbp), %rax	# exp, tmp368
	movq	8(%rax), %rax	# exp_5(D)->common.type, D.18651
	movzbl	61(%rax), %eax	# *_102, tmp371
	shrb	%al	# D.18653
	movzbl	%al, %eax	# D.18653, mode.267
	movl	%eax, -276(%rbp)	# mode.267, mode
	.loc 1 2949 0
	movl	$0, -272(%rbp)	#, have_purpose
	.loc 1 2951 0
	movq	-296(%rbp), %rax	# exp, tmp372
	movq	40(%rax), %rax	# exp_5(D)->exp.operands, tmp373
	movq	%rax, -184(%rbp)	# tmp373, link
	jmp	.L566	#
.L568:
	.loc 1 2952 0
	movq	-184(%rbp), %rax	# link, tmp374
	movq	24(%rax), %rax	# link_3->list.purpose, D.18651
	testq	%rax, %rax	# D.18651
	je	.L567	#,
	.loc 1 2953 0
	movl	$1, -272(%rbp)	#, have_purpose
.L567:
	.loc 1 2951 0
	movq	-184(%rbp), %rax	# link, tmp375
	movq	(%rax), %rax	# link_3->common.chain, tmp376
	movq	%rax, -184(%rbp)	# tmp376, link
.L566:
	.loc 1 2951 0 is_stmt 0 discriminator 1
	cmpq	$0, -184(%rbp)	#, link
	jne	.L568	#,
.LBB55:
	.loc 1 2955 0 is_stmt 1
	movq	$permanent_obstack, -120(%rbp)	#, __o
	movl	$4, -248(%rbp)	#, __len
	movq	-120(%rbp), %rax	# __o, tmp377
	movq	24(%rax), %rdx	# __o_108->next_free, D.18649
	movl	-248(%rbp), %eax	# __len, tmp378
	cltq
	addq	%rax, %rdx	# D.18654, D.18649
	movq	-120(%rbp), %rax	# __o, tmp379
	movq	32(%rax), %rax	# __o_108->chunk_limit, D.18649
	cmpq	%rax, %rdx	# D.18649, D.18649
	jbe	.L569	#,
	.loc 1 2955 0 is_stmt 0 discriminator 1
	movl	-248(%rbp), %edx	# __len, tmp380
	movq	-120(%rbp), %rax	# __o, tmp381
	movl	%edx, %esi	# tmp380,
	movq	%rax, %rdi	# tmp381,
	call	_obstack_newchunk	#
.L569:
	.loc 1 2955 0 discriminator 2
	movl	-248(%rbp), %eax	# __len, tmp382
	movslq	%eax, %rdx	# tmp382, D.18655
	movq	-120(%rbp), %rax	# __o, tmp383
	movq	24(%rax), %rax	# __o_108->next_free, D.18649
	leaq	-280(%rbp), %rcx	#, tmp384
	movq	%rcx, %rsi	# tmp384,
	movq	%rax, %rdi	# D.18649,
	call	memcpy	#
	movq	-120(%rbp), %rax	# __o, tmp385
	movq	24(%rax), %rdx	# __o_108->next_free, D.18649
	movl	-248(%rbp), %eax	# __len, tmp386
	cltq
	addq	%rax, %rdx	# D.18654, D.18649
	movq	-120(%rbp), %rax	# __o, tmp387
	movq	%rdx, 24(%rax)	# D.18649, __o_108->next_free
.LBE55:
	.loc 1 2961 0 is_stmt 1 discriminator 2
	movq	-296(%rbp), %rax	# exp, tmp388
	movq	8(%rax), %rax	# exp_5(D)->common.type, D.18651
	movzbl	16(%rax), %eax	# _119->common.code, D.18648
	cmpb	$20, %al	#, D.18648
	jne	.L570	#,
	.loc 1 2962 0
	movq	-296(%rbp), %rax	# exp, tmp389
	movq	8(%rax), %rax	# exp_5(D)->common.type, type.268
	movq	%rax, -200(%rbp)	# type.268, type
	jmp	.L571	#
.L570:
	.loc 1 2964 0
	movq	$0, -200(%rbp)	#, type
.L571:
.LBB56:
	.loc 1 2966 0
	movq	$permanent_obstack, -112(%rbp)	#, __o
	movl	$8, -244(%rbp)	#, __len
	movq	-112(%rbp), %rax	# __o, tmp390
	movq	24(%rax), %rdx	# __o_122->next_free, D.18649
	movl	-244(%rbp), %eax	# __len, tmp391
	cltq
	addq	%rax, %rdx	# D.18654, D.18649
	movq	-112(%rbp), %rax	# __o, tmp392
	movq	32(%rax), %rax	# __o_122->chunk_limit, D.18649
	cmpq	%rax, %rdx	# D.18649, D.18649
	jbe	.L572	#,
	.loc 1 2966 0 is_stmt 0 discriminator 1
	movl	-244(%rbp), %edx	# __len, tmp393
	movq	-112(%rbp), %rax	# __o, tmp394
	movl	%edx, %esi	# tmp393,
	movq	%rax, %rdi	# tmp394,
	call	_obstack_newchunk	#
.L572:
	.loc 1 2966 0 discriminator 2
	movl	-244(%rbp), %eax	# __len, tmp395
	movslq	%eax, %rdx	# tmp395, D.18655
	movq	-112(%rbp), %rax	# __o, tmp396
	movq	24(%rax), %rax	# __o_122->next_free, D.18649
	leaq	-200(%rbp), %rcx	#, tmp397
	movq	%rcx, %rsi	# tmp397,
	movq	%rax, %rdi	# D.18649,
	call	memcpy	#
	movq	-112(%rbp), %rax	# __o, tmp398
	movq	24(%rax), %rdx	# __o_122->next_free, D.18649
	movl	-244(%rbp), %eax	# __len, tmp399
	cltq
	addq	%rax, %rdx	# D.18654, D.18649
	movq	-112(%rbp), %rax	# __o, tmp400
	movq	%rdx, 24(%rax)	# D.18649, __o_122->next_free
.LBE56:
	.loc 1 2967 0 is_stmt 1 discriminator 2
	movq	-296(%rbp), %rax	# exp, tmp401
	movq	8(%rax), %rax	# exp_5(D)->common.type, D.18651
	movzbl	16(%rax), %eax	# _133->common.code, D.18648
	cmpb	$18, %al	#, D.18648
	jne	.L573	#,
.LBB57:
	.loc 1 2968 0
	movq	$permanent_obstack, -104(%rbp)	#, __o
	movl	$4, -240(%rbp)	#, __len
	movq	-104(%rbp), %rax	# __o, tmp402
	movq	24(%rax), %rdx	# __o_135->next_free, D.18649
	movl	-240(%rbp), %eax	# __len, tmp403
	cltq
	addq	%rax, %rdx	# D.18654, D.18649
	movq	-104(%rbp), %rax	# __o, tmp404
	movq	32(%rax), %rax	# __o_135->chunk_limit, D.18649
	cmpq	%rax, %rdx	# D.18649, D.18649
	jbe	.L574	#,
	.loc 1 2968 0 is_stmt 0 discriminator 1
	movl	-240(%rbp), %edx	# __len, tmp405
	movq	-104(%rbp), %rax	# __o, tmp406
	movl	%edx, %esi	# tmp405,
	movq	%rax, %rdi	# tmp406,
	call	_obstack_newchunk	#
.L574:
	.loc 1 2968 0 discriminator 2
	movl	-240(%rbp), %eax	# __len, tmp407
	movslq	%eax, %rdx	# tmp407, D.18655
	movq	-104(%rbp), %rax	# __o, tmp408
	movq	24(%rax), %rax	# __o_135->next_free, D.18649
	leaq	-276(%rbp), %rcx	#, tmp409
	movq	%rcx, %rsi	# tmp409,
	movq	%rax, %rdi	# D.18649,
	call	memcpy	#
	movq	-104(%rbp), %rax	# __o, tmp410
	movq	24(%rax), %rdx	# __o_135->next_free, D.18649
	movl	-240(%rbp), %eax	# __len, tmp411
	cltq
	addq	%rax, %rdx	# D.18654, D.18649
	movq	-104(%rbp), %rax	# __o, tmp412
	movq	%rdx, 24(%rax)	# D.18649, __o_135->next_free
.L573:
.LBE57:
.LBB58:
	.loc 1 2970 0 is_stmt 1
	movq	$permanent_obstack, -96(%rbp)	#, __o
	movl	$4, -236(%rbp)	#, __len
	movq	-96(%rbp), %rax	# __o, tmp413
	movq	24(%rax), %rdx	# __o_146->next_free, D.18649
	movl	-236(%rbp), %eax	# __len, tmp414
	cltq
	addq	%rax, %rdx	# D.18654, D.18649
	movq	-96(%rbp), %rax	# __o, tmp415
	movq	32(%rax), %rax	# __o_146->chunk_limit, D.18649
	cmpq	%rax, %rdx	# D.18649, D.18649
	jbe	.L575	#,
	.loc 1 2970 0 is_stmt 0 discriminator 1
	movl	-236(%rbp), %edx	# __len, tmp416
	movq	-96(%rbp), %rax	# __o, tmp417
	movl	%edx, %esi	# tmp416,
	movq	%rax, %rdi	# tmp417,
	call	_obstack_newchunk	#
.L575:
	.loc 1 2970 0 discriminator 2
	movl	-236(%rbp), %eax	# __len, tmp418
	movslq	%eax, %rdx	# tmp418, D.18655
	movq	-96(%rbp), %rax	# __o, tmp419
	movq	24(%rax), %rax	# __o_146->next_free, D.18649
	leaq	-272(%rbp), %rcx	#, tmp420
	movq	%rcx, %rsi	# tmp420,
	movq	%rax, %rdi	# D.18649,
	call	memcpy	#
	movq	-96(%rbp), %rax	# __o, tmp421
	movq	24(%rax), %rdx	# __o_146->next_free, D.18649
	movl	-236(%rbp), %eax	# __len, tmp422
	cltq
	addq	%rax, %rdx	# D.18654, D.18649
	movq	-96(%rbp), %rax	# __o, tmp423
	movq	%rdx, 24(%rax)	# D.18649, __o_146->next_free
.LBE58:
	.loc 1 2974 0 is_stmt 1 discriminator 2
	movq	-296(%rbp), %rax	# exp, tmp424
	movq	8(%rax), %rax	# exp_5(D)->common.type, D.18651
	movzbl	16(%rax), %eax	# _157->common.code, D.18648
	cmpb	$18, %al	#, D.18648
	jne	.L576	#,
.LBB59:
	.loc 1 2976 0
	movq	-296(%rbp), %rax	# exp, tmp425
	movq	8(%rax), %rax	# exp_5(D)->common.type, D.18651
	movq	%rax, %rdi	# D.18651,
	call	int_size_in_bytes	#
	movq	%rax, -16(%rbp)	# size.269, size
.LBB60:
	.loc 1 2977 0
	movq	$permanent_obstack, -88(%rbp)	#, __o
	movl	$8, -232(%rbp)	#, __len
	movq	-88(%rbp), %rax	# __o, tmp426
	movq	24(%rax), %rdx	# __o_161->next_free, D.18649
	movl	-232(%rbp), %eax	# __len, tmp427
	cltq
	addq	%rax, %rdx	# D.18654, D.18649
	movq	-88(%rbp), %rax	# __o, tmp428
	movq	32(%rax), %rax	# __o_161->chunk_limit, D.18649
	cmpq	%rax, %rdx	# D.18649, D.18649
	jbe	.L577	#,
	.loc 1 2977 0 is_stmt 0 discriminator 1
	movl	-232(%rbp), %edx	# __len, tmp429
	movq	-88(%rbp), %rax	# __o, tmp430
	movl	%edx, %esi	# tmp429,
	movq	%rax, %rdi	# tmp430,
	call	_obstack_newchunk	#
.L577:
	.loc 1 2977 0 discriminator 2
	movl	-232(%rbp), %eax	# __len, tmp431
	movslq	%eax, %rdx	# tmp431, D.18655
	movq	-88(%rbp), %rax	# __o, tmp432
	movq	24(%rax), %rax	# __o_161->next_free, D.18649
	leaq	-16(%rbp), %rcx	#, tmp433
	movq	%rcx, %rsi	# tmp433,
	movq	%rax, %rdi	# D.18649,
	call	memcpy	#
	movq	-88(%rbp), %rax	# __o, tmp434
	movq	24(%rax), %rdx	# __o_161->next_free, D.18649
	movl	-232(%rbp), %eax	# __len, tmp435
	cltq
	addq	%rax, %rdx	# D.18654, D.18649
	movq	-88(%rbp), %rax	# __o, tmp436
	movq	%rdx, 24(%rax)	# D.18649, __o_161->next_free
.L576:
.LBE60:
.LBE59:
	.loc 1 2980 0 is_stmt 1
	movq	-296(%rbp), %rax	# exp, tmp437
	movq	40(%rax), %rax	# exp_5(D)->exp.operands, tmp438
	movq	%rax, -184(%rbp)	# tmp438, link
	jmp	.L578	#
.L587:
	.loc 1 2982 0
	movq	-184(%rbp), %rax	# link, tmp439
	movq	32(%rax), %rax	# link_4->list.value, D.18651
	testq	%rax, %rax	# D.18651
	je	.L579	#,
	.loc 1 2983 0
	movq	-184(%rbp), %rax	# link, tmp440
	movq	32(%rax), %rax	# link_4->list.value, D.18651
	movq	%rax, %rdi	# D.18651,
	call	record_constant_1	#
	jmp	.L580	#
.L579:
.LBB61:
	.loc 1 2986 0
	movq	$0, -16(%rbp)	#, zero
.LBB62:
	.loc 1 2988 0
	movq	$permanent_obstack, -80(%rbp)	#, __o
	movl	$8, -228(%rbp)	#, __len
	movq	-80(%rbp), %rax	# __o, tmp441
	movq	24(%rax), %rdx	# __o_175->next_free, D.18649
	movl	-228(%rbp), %eax	# __len, tmp442
	cltq
	addq	%rax, %rdx	# D.18654, D.18649
	movq	-80(%rbp), %rax	# __o, tmp443
	movq	32(%rax), %rax	# __o_175->chunk_limit, D.18649
	cmpq	%rax, %rdx	# D.18649, D.18649
	jbe	.L581	#,
	.loc 1 2988 0 is_stmt 0 discriminator 1
	movl	-228(%rbp), %edx	# __len, tmp444
	movq	-80(%rbp), %rax	# __o, tmp445
	movl	%edx, %esi	# tmp444,
	movq	%rax, %rdi	# tmp445,
	call	_obstack_newchunk	#
.L581:
	.loc 1 2988 0 discriminator 2
	movl	-228(%rbp), %eax	# __len, tmp446
	movslq	%eax, %rdx	# tmp446, D.18655
	movq	-80(%rbp), %rax	# __o, tmp447
	movq	24(%rax), %rax	# __o_175->next_free, D.18649
	leaq	-16(%rbp), %rcx	#, tmp448
	movq	%rcx, %rsi	# tmp448,
	movq	%rax, %rdi	# D.18649,
	call	memcpy	#
	movq	-80(%rbp), %rax	# __o, tmp449
	movq	24(%rax), %rdx	# __o_175->next_free, D.18649
	movl	-228(%rbp), %eax	# __len, tmp450
	cltq
	addq	%rax, %rdx	# D.18654, D.18649
	movq	-80(%rbp), %rax	# __o, tmp451
	movq	%rdx, 24(%rax)	# D.18649, __o_175->next_free
.L580:
.LBE62:
.LBE61:
	.loc 1 2992 0 is_stmt 1
	movq	-184(%rbp), %rax	# link, tmp452
	movq	24(%rax), %rax	# link_4->list.purpose, D.18651
	testq	%rax, %rax	# D.18651
	je	.L582	#,
	.loc 1 2993 0
	movq	-184(%rbp), %rax	# link, tmp453
	movq	24(%rax), %rax	# link_4->list.purpose, D.18651
	movzbl	16(%rax), %eax	# _187->common.code, D.18648
	cmpb	$37, %al	#, D.18648
	jne	.L582	#,
.LBB63:
	.loc 1 2994 0
	movq	$permanent_obstack, -72(%rbp)	#, __o
	movl	$8, -224(%rbp)	#, __len
	movq	-72(%rbp), %rax	# __o, tmp454
	movq	24(%rax), %rdx	# __o_189->next_free, D.18649
	movl	-224(%rbp), %eax	# __len, tmp455
	cltq
	addq	%rax, %rdx	# D.18654, D.18649
	movq	-72(%rbp), %rax	# __o, tmp456
	movq	32(%rax), %rax	# __o_189->chunk_limit, D.18649
	cmpq	%rax, %rdx	# D.18649, D.18649
	jbe	.L583	#,
	.loc 1 2994 0 is_stmt 0 discriminator 1
	movl	-224(%rbp), %edx	# __len, tmp457
	movq	-72(%rbp), %rax	# __o, tmp458
	movl	%edx, %esi	# tmp457,
	movq	%rax, %rdi	# tmp458,
	call	_obstack_newchunk	#
.L583:
	.loc 1 2994 0 discriminator 2
	movl	-224(%rbp), %eax	# __len, tmp459
	movslq	%eax, %rdx	# tmp459, D.18655
	movq	-184(%rbp), %rax	# link, tmp460
	leaq	24(%rax), %rcx	#, D.18659
	movq	-72(%rbp), %rax	# __o, tmp461
	movq	24(%rax), %rax	# __o_189->next_free, D.18649
	movq	%rcx, %rsi	# D.18659,
	movq	%rax, %rdi	# D.18649,
	call	memcpy	#
	movq	-72(%rbp), %rax	# __o, tmp462
	movq	24(%rax), %rdx	# __o_189->next_free, D.18649
	movl	-224(%rbp), %eax	# __len, tmp463
	cltq
	addq	%rax, %rdx	# D.18654, D.18649
	movq	-72(%rbp), %rax	# __o, tmp464
	movq	%rdx, 24(%rax)	# D.18649, __o_189->next_free
.LBE63:
	jmp	.L584	#
.L582:
	.loc 1 2997 0 is_stmt 1
	movq	-184(%rbp), %rax	# link, tmp465
	movq	24(%rax), %rax	# link_4->list.purpose, D.18651
	testq	%rax, %rax	# D.18651
	je	.L585	#,
	.loc 1 2998 0
	movq	-184(%rbp), %rax	# link, tmp466
	movq	24(%rax), %rax	# link_4->list.purpose, D.18651
	movq	%rax, %rdi	# D.18651,
	call	record_constant_1	#
	jmp	.L584	#
.L585:
	.loc 1 2999 0
	movl	-272(%rbp), %eax	# have_purpose, have_purpose.270
	testl	%eax, %eax	# have_purpose.270
	je	.L584	#,
.LBB64:
	.loc 1 3001 0
	movl	$0, -16(%rbp)	#, zero
.LBB65:
	.loc 1 3003 0
	movq	$permanent_obstack, -64(%rbp)	#, __o
	movl	$4, -220(%rbp)	#, __len
	movq	-64(%rbp), %rax	# __o, tmp467
	movq	24(%rax), %rdx	# __o_204->next_free, D.18649
	movl	-220(%rbp), %eax	# __len, tmp468
	cltq
	addq	%rax, %rdx	# D.18654, D.18649
	movq	-64(%rbp), %rax	# __o, tmp469
	movq	32(%rax), %rax	# __o_204->chunk_limit, D.18649
	cmpq	%rax, %rdx	# D.18649, D.18649
	jbe	.L586	#,
	.loc 1 3003 0 is_stmt 0 discriminator 1
	movl	-220(%rbp), %edx	# __len, tmp470
	movq	-64(%rbp), %rax	# __o, tmp471
	movl	%edx, %esi	# tmp470,
	movq	%rax, %rdi	# tmp471,
	call	_obstack_newchunk	#
.L586:
	.loc 1 3003 0 discriminator 2
	movl	-220(%rbp), %eax	# __len, tmp472
	movslq	%eax, %rdx	# tmp472, D.18655
	movq	-64(%rbp), %rax	# __o, tmp473
	movq	24(%rax), %rax	# __o_204->next_free, D.18649
	leaq	-16(%rbp), %rcx	#, tmp474
	movq	%rcx, %rsi	# tmp474,
	movq	%rax, %rdi	# D.18649,
	call	memcpy	#
	movq	-64(%rbp), %rax	# __o, tmp475
	movq	24(%rax), %rdx	# __o_204->next_free, D.18649
	movl	-220(%rbp), %eax	# __len, tmp476
	cltq
	addq	%rax, %rdx	# D.18654, D.18649
	movq	-64(%rbp), %rax	# __o, tmp477
	movq	%rdx, 24(%rax)	# D.18649, __o_204->next_free
.L584:
.LBE65:
.LBE64:
	.loc 1 2980 0 is_stmt 1
	movq	-184(%rbp), %rax	# link, tmp478
	movq	(%rax), %rax	# link_4->common.chain, tmp479
	movq	%rax, -184(%rbp)	# tmp479, link
.L578:
	.loc 1 2980 0 is_stmt 0 discriminator 1
	cmpq	$0, -184(%rbp)	#, link
	jne	.L587	#,
.LBE54:
	.loc 1 3008 0 is_stmt 1
	jmp	.L544	#
.L555:
.LBB66:
	.loc 1 3014 0
	leaq	-16(%rbp), %rdx	#, tmp480
	movq	-296(%rbp), %rax	# exp, tmp481
	movq	%rdx, %rsi	# tmp480,
	movq	%rax, %rdi	# tmp481,
	call	decode_addr_const	#
.LBB67:
	.loc 1 3016 0
	movq	$permanent_obstack, -56(%rbp)	#, __o
	movl	$8, -216(%rbp)	#, __len
	movq	-56(%rbp), %rax	# __o, tmp482
	movq	24(%rax), %rdx	# __o_216->next_free, D.18649
	movl	-216(%rbp), %eax	# __len, tmp483
	cltq
	addq	%rax, %rdx	# D.18654, D.18649
	movq	-56(%rbp), %rax	# __o, tmp484
	movq	32(%rax), %rax	# __o_216->chunk_limit, D.18649
	cmpq	%rax, %rdx	# D.18649, D.18649
	jbe	.L588	#,
	.loc 1 3016 0 is_stmt 0 discriminator 1
	movl	-216(%rbp), %edx	# __len, tmp485
	movq	-56(%rbp), %rax	# __o, tmp486
	movl	%edx, %esi	# tmp485,
	movq	%rax, %rdi	# tmp486,
	call	_obstack_newchunk	#
.L588:
	.loc 1 3016 0 discriminator 2
	movl	-216(%rbp), %eax	# __len, tmp487
	movslq	%eax, %rdx	# tmp487, D.18655
	movq	-56(%rbp), %rax	# __o, tmp488
	movq	24(%rax), %rax	# __o_216->next_free, D.18649
	leaq	-16(%rbp), %rcx	#, tmp489
	addq	$8, %rcx	#, tmp490
	movq	%rcx, %rsi	# tmp490,
	movq	%rax, %rdi	# D.18649,
	call	memcpy	#
	movq	-56(%rbp), %rax	# __o, tmp491
	movq	24(%rax), %rdx	# __o_216->next_free, D.18649
	movl	-216(%rbp), %eax	# __len, tmp492
	cltq
	addq	%rax, %rdx	# D.18654, D.18649
	movq	-56(%rbp), %rax	# __o, tmp493
	movq	%rdx, 24(%rax)	# D.18649, __o_216->next_free
.LBE67:
	.loc 1 3019 0 is_stmt 1 discriminator 2
	movq	-16(%rbp), %rax	# value.base, D.18660
	movzwl	(%rax), %eax	# _227->code, D.18661
	movzwl	%ax, %eax	# D.18661, D.18662
	cmpl	$67, %eax	#, D.18662
	je	.L590	#,
	cmpl	$68, %eax	#, D.18662
	jne	.L597	#,
.LBB68:
	.loc 1 3023 0
	movq	$permanent_obstack, -48(%rbp)	#, __o
	movq	-16(%rbp), %rax	# value.base, D.18660
	movq	8(%rax), %rax	# _231->fld[0].rtstr, D.18663
	movq	%rax, %rdi	# D.18663,
	call	strlen	#
	addl	$1, %eax	#, D.18664
	movl	%eax, -212(%rbp)	# D.18664, __len
	movq	-48(%rbp), %rax	# __o, tmp494
	movq	24(%rax), %rdx	# __o_230->next_free, D.18649
	movl	-212(%rbp), %eax	# __len, tmp495
	cltq
	addq	%rax, %rdx	# D.18654, D.18649
	movq	-48(%rbp), %rax	# __o, tmp496
	movq	32(%rax), %rax	# __o_230->chunk_limit, D.18649
	cmpq	%rax, %rdx	# D.18649, D.18649
	jbe	.L592	#,
	.loc 1 3023 0 is_stmt 0 discriminator 1
	movl	-212(%rbp), %edx	# __len, tmp497
	movq	-48(%rbp), %rax	# __o, tmp498
	movl	%edx, %esi	# tmp497,
	movq	%rax, %rdi	# tmp498,
	call	_obstack_newchunk	#
.L592:
	.loc 1 3023 0 discriminator 2
	movl	-212(%rbp), %eax	# __len, tmp499
	movslq	%eax, %rdx	# tmp499, D.18655
	movq	-16(%rbp), %rax	# value.base, D.18660
	movq	8(%rax), %rcx	# _242->fld[0].rtstr, D.18663
	movq	-48(%rbp), %rax	# __o, tmp500
	movq	24(%rax), %rax	# __o_230->next_free, D.18649
	movq	%rcx, %rsi	# D.18663,
	movq	%rax, %rdi	# D.18649,
	call	memcpy	#
	movq	-48(%rbp), %rax	# __o, tmp501
	movq	24(%rax), %rdx	# __o_230->next_free, D.18649
	movl	-212(%rbp), %eax	# __len, tmp502
	cltq
	addq	%rax, %rdx	# D.18654, D.18649
	movq	-48(%rbp), %rax	# __o, tmp503
	movq	%rdx, 24(%rax)	# D.18649, __o_230->next_free
.LBE68:
	.loc 1 3025 0 is_stmt 1 discriminator 2
	jmp	.L593	#
.L590:
.LBB69:
	.loc 1 3030 0
	movq	$permanent_obstack, -40(%rbp)	#, __o
	movl	$8, -208(%rbp)	#, __len
	movq	-40(%rbp), %rax	# __o, tmp504
	movq	24(%rax), %rdx	# __o_248->next_free, D.18649
	movl	-208(%rbp), %eax	# __len, tmp505
	cltq
	addq	%rax, %rdx	# D.18654, D.18649
	movq	-40(%rbp), %rax	# __o, tmp506
	movq	32(%rax), %rax	# __o_248->chunk_limit, D.18649
	cmpq	%rax, %rdx	# D.18649, D.18649
	jbe	.L594	#,
	.loc 1 3030 0 is_stmt 0 discriminator 1
	movl	-208(%rbp), %edx	# __len, tmp507
	movq	-40(%rbp), %rax	# __o, tmp508
	movl	%edx, %esi	# tmp507,
	movq	%rax, %rdi	# tmp508,
	call	_obstack_newchunk	#
.L594:
	.loc 1 3030 0 discriminator 2
	movl	-208(%rbp), %eax	# __len, tmp509
	movslq	%eax, %rdx	# tmp509, D.18655
	movq	-16(%rbp), %rax	# value.base, D.18660
	leaq	8(%rax), %rcx	#, D.18665
	movq	-40(%rbp), %rax	# __o, tmp510
	movq	24(%rax), %rax	# __o_248->next_free, D.18649
	movq	%rcx, %rsi	# D.18665,
	movq	%rax, %rdi	# D.18649,
	call	memcpy	#
	movq	-40(%rbp), %rax	# __o, tmp511
	movq	24(%rax), %rdx	# __o_248->next_free, D.18649
	movl	-208(%rbp), %eax	# __len, tmp512
	cltq
	addq	%rax, %rdx	# D.18654, D.18649
	movq	-40(%rbp), %rax	# __o, tmp513
	movq	%rdx, 24(%rax)	# D.18649, __o_248->next_free
.LBE69:
	.loc 1 3032 0 is_stmt 1 discriminator 2
	jmp	.L593	#
.L597:
	.loc 1 3034 0
	movl	$__FUNCTION__.13573, %edx	#,
	movl	$3034, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L593:
.LBE66:
	.loc 1 3037 0
	jmp	.L544	#
.L553:
	.loc 1 3042 0
	movq	-296(%rbp), %rax	# exp, tmp514
	movq	32(%rax), %rax	# exp_5(D)->exp.operands, D.18651
	movq	%rax, %rdi	# D.18651,
	call	record_constant_1	#
	.loc 1 3043 0
	movq	-296(%rbp), %rax	# exp, tmp515
	movq	40(%rax), %rax	# exp_5(D)->exp.operands, D.18651
	movq	%rax, %rdi	# D.18651,
	call	record_constant_1	#
	.loc 1 3044 0
	jmp	.L544	#
.L554:
	.loc 1 3049 0
	movq	-296(%rbp), %rax	# exp, tmp516
	movq	32(%rax), %rax	# exp_5(D)->exp.operands, D.18651
	movq	%rax, %rdi	# D.18651,
	call	record_constant_1	#
	.loc 1 3050 0
	jmp	.L544	#
.L546:
.LBB70:
	.loc 1 3054 0
	movq	lang_hooks+72(%rip), %rax	# lang_hooks.expand_constant, D.18666
	movq	-296(%rbp), %rdx	# exp, tmp517
	movq	%rdx, %rdi	# tmp517,
	call	*%rax	# D.18666
	movq	%rax, -32(%rbp)	# tmp518, new
	.loc 1 3056 0
	movq	-32(%rbp), %rax	# new, tmp519
	cmpq	-296(%rbp), %rax	# exp, tmp519
	je	.L595	#,
	.loc 1 3057 0
	movq	-32(%rbp), %rax	# new, tmp520
	movq	%rax, %rdi	# tmp520,
	call	record_constant_1	#
	.loc 1 3058 0
	jmp	.L544	#
.L595:
	jmp	.L544	#
.L557:
.LBE70:
.LBB71:
	.loc 1 3063 0
	movq	$permanent_obstack, -24(%rbp)	#, __o
	movl	-268(%rbp), %eax	# len, tmp521
	movl	%eax, -204(%rbp)	# tmp521, __len
	movq	-24(%rbp), %rax	# __o, tmp522
	movq	24(%rax), %rdx	# __o_266->next_free, D.18649
	movl	-204(%rbp), %eax	# __len, tmp523
	cltq
	addq	%rax, %rdx	# D.18654, D.18649
	movq	-24(%rbp), %rax	# __o, tmp524
	movq	32(%rax), %rax	# __o_266->chunk_limit, D.18649
	cmpq	%rax, %rdx	# D.18649, D.18649
	jbe	.L596	#,
	.loc 1 3063 0 is_stmt 0 discriminator 1
	movl	-204(%rbp), %edx	# __len, tmp525
	movq	-24(%rbp), %rax	# __o, tmp526
	movl	%edx, %esi	# tmp525,
	movq	%rax, %rdi	# tmp526,
	call	_obstack_newchunk	#
.L596:
	.loc 1 3063 0 discriminator 2
	movl	-204(%rbp), %eax	# __len, tmp527
	movslq	%eax, %rdx	# tmp527, D.18655
	movq	-24(%rbp), %rax	# __o, tmp528
	movq	24(%rax), %rax	# __o_266->next_free, D.18649
	movq	-192(%rbp), %rcx	# strp, tmp529
	movq	%rcx, %rsi	# tmp529,
	movq	%rax, %rdi	# D.18649,
	call	memcpy	#
	movq	-24(%rbp), %rax	# __o, tmp530
	movq	24(%rax), %rdx	# __o_266->next_free, D.18649
	movl	-204(%rbp), %eax	# __len, tmp531
	cltq
	addq	%rax, %rdx	# D.18654, D.18649
	movq	-24(%rbp), %rax	# __o, tmp532
	movq	%rdx, 24(%rax)	# D.18649, __o_266->next_free
.L544:
.LBE71:
	.loc 1 3064 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	record_constant_1, .-record_constant_1
	.local	deferred_constants
	.comm	deferred_constants,8,8
	.local	after_function_constants
	.comm	after_function_constants,8,8
	.local	defer_addressed_constants_flag
	.comm	defer_addressed_constants_flag,4,4
	.globl	defer_addressed_constants
	.type	defer_addressed_constants, @function
defer_addressed_constants:
.LFB70:
	.loc 1 3091 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 3092 0
	movl	defer_addressed_constants_flag(%rip), %eax	# defer_addressed_constants_flag, defer_addressed_constants_flag.271
	addl	$1, %eax	#, defer_addressed_constants_flag.272
	movl	%eax, defer_addressed_constants_flag(%rip)	# defer_addressed_constants_flag.272, defer_addressed_constants_flag
	.loc 1 3093 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	defer_addressed_constants, .-defer_addressed_constants
	.globl	output_deferred_addressed_constants
	.type	output_deferred_addressed_constants, @function
output_deferred_addressed_constants:
.LFB71:
	.loc 1 3100 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 3103 0
	movl	defer_addressed_constants_flag(%rip), %eax	# defer_addressed_constants_flag, defer_addressed_constants_flag.273
	subl	$1, %eax	#, defer_addressed_constants_flag.274
	movl	%eax, defer_addressed_constants_flag(%rip)	# defer_addressed_constants_flag.274, defer_addressed_constants_flag
	.loc 1 3105 0
	movl	defer_addressed_constants_flag(%rip), %eax	# defer_addressed_constants_flag, defer_addressed_constants_flag.275
	testl	%eax, %eax	# defer_addressed_constants_flag.275
	jle	.L600	#,
	.loc 1 3106 0
	jmp	.L599	#
.L600:
	.loc 1 3108 0
	movq	deferred_constants(%rip), %rax	# deferred_constants, tmp65
	movq	%rax, -16(%rbp)	# tmp65, p
	jmp	.L602	#
.L603:
	.loc 1 3110 0 discriminator 2
	movq	-16(%rbp), %rax	# p, tmp66
	movl	20(%rax), %edx	# p_1->labelno, D.18668
	movq	-16(%rbp), %rax	# p, tmp67
	movl	16(%rax), %ecx	# p_1->reloc, D.18668
	movq	-16(%rbp), %rax	# p, tmp68
	movq	8(%rax), %rax	# p_1->exp, D.18669
	movl	%ecx, %esi	# D.18668,
	movq	%rax, %rdi	# D.18669,
	call	output_constant_def_contents	#
	.loc 1 3111 0 discriminator 2
	movq	-16(%rbp), %rax	# p, tmp69
	movq	(%rax), %rax	# p_1->next, tmp70
	movq	%rax, -8(%rbp)	# tmp70, next
	.loc 1 3112 0 discriminator 2
	movq	-16(%rbp), %rax	# p, tmp71
	movq	%rax, %rdi	# tmp71,
	call	free	#
	.loc 1 3108 0 discriminator 2
	movq	-8(%rbp), %rax	# next, tmp72
	movq	%rax, -16(%rbp)	# tmp72, p
.L602:
	.loc 1 3108 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, p
	jne	.L603	#,
	.loc 1 3115 0 is_stmt 1
	movq	$0, deferred_constants(%rip)	#, deferred_constants
.L599:
	.loc 1 3116 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	output_deferred_addressed_constants, .-output_deferred_addressed_constants
	.type	output_after_function_constants, @function
output_after_function_constants:
.LFB72:
	.loc 1 3122 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 3125 0
	movq	after_function_constants(%rip), %rax	# after_function_constants, tmp62
	movq	%rax, -16(%rbp)	# tmp62, p
	jmp	.L605	#
.L606:
	.loc 1 3127 0 discriminator 2
	movq	-16(%rbp), %rax	# p, tmp63
	movl	20(%rax), %edx	# p_1->labelno, D.18670
	movq	-16(%rbp), %rax	# p, tmp64
	movl	16(%rax), %ecx	# p_1->reloc, D.18670
	movq	-16(%rbp), %rax	# p, tmp65
	movq	8(%rax), %rax	# p_1->exp, D.18671
	movl	%ecx, %esi	# D.18670,
	movq	%rax, %rdi	# D.18671,
	call	output_constant_def_contents	#
	.loc 1 3128 0 discriminator 2
	movq	-16(%rbp), %rax	# p, tmp66
	movq	(%rax), %rax	# p_1->next, tmp67
	movq	%rax, -8(%rbp)	# tmp67, next
	.loc 1 3129 0 discriminator 2
	movq	-16(%rbp), %rax	# p, tmp68
	movq	%rax, %rdi	# tmp68,
	call	free	#
	.loc 1 3125 0 discriminator 2
	movq	-8(%rbp), %rax	# next, tmp69
	movq	%rax, -16(%rbp)	# tmp69, p
.L605:
	.loc 1 3125 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, p
	jne	.L606	#,
	.loc 1 3132 0 is_stmt 1
	movq	$0, after_function_constants(%rip)	#, after_function_constants
	.loc 1 3133 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	output_after_function_constants, .-output_after_function_constants
	.type	copy_constant, @function
copy_constant:
.LFB73:
	.loc 1 3142 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# exp, exp
	.loc 1 3143 0
	movq	-56(%rbp), %rax	# exp, tmp96
	movzbl	16(%rax), %eax	# exp_4(D)->common.code, D.18673
	movzbl	%al, %eax	# D.18673, D.18674
	subl	$25, %eax	#, tmp97
	cmpl	$96, %eax	#, tmp97
	ja	.L608	#,
	movl	%eax, %eax	# tmp97, tmp98
	movq	.L610(,%rax,8), %rax	#, tmp99
	jmp	*%rax	# tmp99
	.section	.rodata
	.align 8
	.align 4
.L610:
	.quad	.L609
	.quad	.L609
	.quad	.L611
	.quad	.L608
	.quad	.L609
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L612
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L613
	.quad	.L613
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L614
	.quad	.L614
	.quad	.L614
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L608
	.quad	.L615
	.text
.L615:
	.loc 1 3148 0
	movq	-56(%rbp), %rax	# exp, tmp100
	movq	32(%rax), %rax	# exp_4(D)->exp.operands, D.18675
	movzbl	16(%rax), %eax	# _7->common.code, D.18673
	movzbl	%al, %eax	# D.18673, D.18676
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.18677
	cmpb	$99, %al	#, D.18677
	jne	.L616	#,
	.loc 1 3149 0
	movq	-56(%rbp), %rax	# exp, tmp102
	movq	32(%rax), %rax	# exp_4(D)->exp.operands, D.18675
	movq	%rax, %rdi	# D.18675,
	call	copy_constant	#
	movq	%rax, %rdx	#, D.18675
	movq	-56(%rbp), %rax	# exp, tmp103
	movq	8(%rax), %rcx	# exp_4(D)->common.type, D.18675
	movq	-56(%rbp), %rax	# exp, tmp104
	movzbl	16(%rax), %eax	# exp_4(D)->common.code, D.18673
	movzbl	%al, %eax	# D.18673, D.18678
	movq	%rcx, %rsi	# D.18675,
	movl	%eax, %edi	# D.18678,
	call	build1	#
	jmp	.L617	#
.L616:
	.loc 1 3152 0
	movq	-56(%rbp), %rax	# exp, tmp105
	movq	%rax, %rdi	# tmp105,
	call	copy_node	#
	jmp	.L617	#
.L609:
	.loc 1 3157 0
	movq	-56(%rbp), %rax	# exp, tmp106
	movq	%rax, %rdi	# tmp106,
	call	copy_node	#
	jmp	.L617	#
.L611:
	.loc 1 3160 0
	movq	-56(%rbp), %rax	# exp, tmp107
	movq	40(%rax), %rax	# exp_4(D)->complex.imag, D.18675
	movq	%rax, %rdi	# D.18675,
	call	copy_constant	#
	movq	%rax, %rbx	#, D.18675
	movq	-56(%rbp), %rax	# exp, tmp108
	movq	32(%rax), %rax	# exp_4(D)->complex.real, D.18675
	movq	%rax, %rdi	# D.18675,
	call	copy_constant	#
	movq	%rax, %rcx	#, D.18675
	movq	-56(%rbp), %rax	# exp, tmp109
	movq	8(%rax), %rax	# exp_4(D)->common.type, D.18675
	movq	%rbx, %rdx	# D.18675,
	movq	%rcx, %rsi	# D.18675,
	movq	%rax, %rdi	# D.18675,
	call	build_complex	#
	jmp	.L617	#
.L613:
	.loc 1 3166 0
	movq	-56(%rbp), %rax	# exp, tmp110
	movq	40(%rax), %rax	# exp_4(D)->exp.operands, D.18675
	movq	%rax, %rdi	# D.18675,
	call	copy_constant	#
	movq	%rax, %rbx	#, D.18675
	movq	-56(%rbp), %rax	# exp, tmp111
	movq	32(%rax), %rax	# exp_4(D)->exp.operands, D.18675
	movq	%rax, %rdi	# D.18675,
	call	copy_constant	#
	movq	%rax, %rdx	#, D.18675
	movq	-56(%rbp), %rax	# exp, tmp112
	movq	8(%rax), %rsi	# exp_4(D)->common.type, D.18675
	movq	-56(%rbp), %rax	# exp, tmp113
	movzbl	16(%rax), %eax	# exp_4(D)->common.code, D.18673
	movzbl	%al, %eax	# D.18673, D.18678
	movq	%rbx, %rcx	# D.18675,
	movl	%eax, %edi	# D.18678,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L617	#
.L614:
	.loc 1 3173 0
	movq	-56(%rbp), %rax	# exp, tmp114
	movq	32(%rax), %rax	# exp_4(D)->exp.operands, D.18675
	movq	%rax, %rdi	# D.18675,
	call	copy_constant	#
	movq	%rax, %rdx	#, D.18675
	movq	-56(%rbp), %rax	# exp, tmp115
	movq	8(%rax), %rcx	# exp_4(D)->common.type, D.18675
	movq	-56(%rbp), %rax	# exp, tmp116
	movzbl	16(%rax), %eax	# exp_4(D)->common.code, D.18673
	movzbl	%al, %eax	# D.18673, D.18678
	movq	%rcx, %rsi	# D.18675,
	movl	%eax, %edi	# D.18678,
	call	build1	#
	jmp	.L617	#
.L612:
.LBB72:
	.loc 1 3178 0
	movq	-56(%rbp), %rax	# exp, tmp117
	movq	%rax, %rdi	# tmp117,
	call	copy_node	#
	movq	%rax, -32(%rbp)	# tmp118, copy
	.loc 1 3179 0
	movq	-56(%rbp), %rax	# exp, tmp119
	movq	40(%rax), %rax	# exp_4(D)->exp.operands, D.18675
	movq	%rax, %rdi	# D.18675,
	call	copy_list	#
	movq	%rax, -24(%rbp)	# tmp120, list
	.loc 1 3182 0
	movq	-32(%rbp), %rax	# copy, tmp121
	movq	-24(%rbp), %rdx	# list, tmp122
	movq	%rdx, 40(%rax)	# tmp122, copy_39->exp.operands
	.loc 1 3183 0
	movq	-24(%rbp), %rax	# list, tmp123
	movq	%rax, -40(%rbp)	# tmp123, tail
	jmp	.L618	#
.L619:
	.loc 1 3184 0 discriminator 2
	movq	-40(%rbp), %rax	# tail, tmp124
	movq	32(%rax), %rax	# tail_1->list.value, D.18675
	movq	%rax, %rdi	# D.18675,
	call	copy_constant	#
	movq	-40(%rbp), %rdx	# tail, tmp125
	movq	%rax, 32(%rdx)	# D.18675, tail_1->list.value
	.loc 1 3183 0 discriminator 2
	movq	-40(%rbp), %rax	# tail, tmp126
	movq	(%rax), %rax	# tail_1->common.chain, tmp127
	movq	%rax, -40(%rbp)	# tmp127, tail
.L618:
	.loc 1 3183 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, tail
	jne	.L619	#,
	.loc 1 3185 0 is_stmt 1
	movq	-56(%rbp), %rax	# exp, tmp128
	movq	8(%rax), %rax	# exp_4(D)->common.type, D.18675
	movzbl	16(%rax), %eax	# _46->common.code, D.18673
	cmpb	$19, %al	#, D.18673
	jne	.L620	#,
	.loc 1 3186 0
	movq	-24(%rbp), %rax	# list, tmp129
	movq	%rax, -40(%rbp)	# tmp129, tail
	jmp	.L621	#
.L622:
	.loc 1 3187 0 discriminator 2
	movq	-40(%rbp), %rax	# tail, tmp130
	movq	24(%rax), %rax	# tail_2->list.purpose, D.18675
	movq	%rax, %rdi	# D.18675,
	call	copy_constant	#
	movq	-40(%rbp), %rdx	# tail, tmp131
	movq	%rax, 24(%rdx)	# D.18675, tail_2->list.purpose
	.loc 1 3186 0 discriminator 2
	movq	-40(%rbp), %rax	# tail, tmp132
	movq	(%rax), %rax	# tail_2->common.chain, tmp133
	movq	%rax, -40(%rbp)	# tmp133, tail
.L621:
	.loc 1 3186 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, tail
	jne	.L622	#,
.L620:
	.loc 1 3189 0 is_stmt 1
	movq	-32(%rbp), %rax	# copy, D.18672
	jmp	.L617	#
.L608:
.LBE72:
	.loc 1 3193 0
	movl	$__FUNCTION__.13632, %edx	#,
	movl	$3193, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L617:
	.loc 1 3195 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	copy_constant, .-copy_constant
	.section	.rodata
.LC65:
	.string	"LC"
	.text
	.globl	output_constant_def
	.type	output_constant_def, @function
output_constant_def:
.LFB74:
	.loc 1 3215 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$376, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -376(%rbp)	# exp, exp
	movl	%esi, -380(%rbp)	# defer, defer
	.loc 1 3215 0
	movq	%fs:40, %rax	#, tmp271
	movq	%rax, -24(%rbp)	# tmp271, D.18695
	xorl	%eax, %eax	# tmp271
	.loc 1 3221 0
	movl	$1, -356(%rbp)	#, found
	.loc 1 3222 0
	movl	$0, -348(%rbp)	#, after_function
	.loc 1 3223 0
	movl	$-1, -352(%rbp)	#, labelno
	.loc 1 3228 0
	movq	-376(%rbp), %rax	# exp, tmp145
	movzbl	16(%rax), %eax	# exp_16(D)->common.code, D.18680
	cmpb	$25, %al	#, D.18680
	je	.L624	#,
	.loc 1 3228 0 is_stmt 0 discriminator 1
	movq	-376(%rbp), %rax	# exp, tmp146
	movq	24(%rax), %rax	# exp_16(D)->real_cst.rtl, D.18681
	testq	%rax, %rax	# D.18681
	je	.L624	#,
	.loc 1 3229 0 is_stmt 1
	cmpl	$0, -380(%rbp)	#, defer
	jne	.L625	#,
	.loc 1 3229 0 is_stmt 0 discriminator 1
	movq	-376(%rbp), %rax	# exp, tmp147
	movq	24(%rax), %rax	# exp_16(D)->real_cst.rtl, D.18681
	movq	8(%rax), %rax	# _20->fld[0].rtx, D.18681
	movzbl	3(%rax), %eax	# *_21, D.18680
	andl	$-128, %eax	#, D.18680
	testb	%al, %al	# D.18680
	jne	.L624	#,
.L625:
	.loc 1 3230 0 is_stmt 1
	movq	-376(%rbp), %rax	# exp, tmp148
	movq	24(%rax), %rax	# exp_16(D)->real_cst.rtl, D.18679
	jmp	.L655	#
.L624:
	.loc 1 3235 0
	movq	-376(%rbp), %rax	# exp, tmp149
	movq	%rax, %rdi	# tmp149,
	call	output_addressed_constants	#
	movl	%eax, -344(%rbp)	# tmp150, reloc
	.loc 1 3241 0
	movq	-376(%rbp), %rax	# exp, tmp151
	movq	%rax, %rdi	# tmp151,
	call	const_hash	#
	movl	%eax, %ecx	#, D.18682
	movl	$-2115558717, %edx	#, tmp153
	movl	%ecx, %eax	# D.18682, tmp272
	imull	%edx	# tmp153
	leal	(%rdx,%rcx), %eax	#, tmp154
	sarl	$9, %eax	#, tmp155
	movl	%eax, %edx	# tmp155, tmp155
	movl	%ecx, %eax	# D.18682, tmp156
	sarl	$31, %eax	#, tmp156
	subl	%eax, %edx	# tmp156, tmp157
	movl	%edx, %eax	# tmp157, tmp157
	movl	%eax, -340(%rbp)	# tmp157, hash
	movl	-340(%rbp), %eax	# hash, tmp159
	imull	$1009, %eax, %eax	#, tmp159, tmp158
	subl	%eax, %ecx	# tmp158, tmp160
	movl	%ecx, %eax	# tmp160, tmp160
	movl	%eax, -340(%rbp)	# tmp160, hash
	.loc 1 3243 0
	movl	-340(%rbp), %eax	# hash, tmp162
	cltq
	movq	const_hash_table(,%rax,8), %rax	# const_hash_table, tmp163
	movq	%rax, -336(%rbp)	# tmp163, desc
	jmp	.L627	#
.L630:
	.loc 1 3244 0
	movq	-336(%rbp), %rdx	# desc, tmp164
	movq	-376(%rbp), %rax	# exp, tmp165
	movq	%rdx, %rsi	# tmp164,
	movq	%rax, %rdi	# tmp165,
	call	compare_constant	#
	testl	%eax, %eax	# D.18682
	je	.L628	#,
	.loc 1 3245 0
	jmp	.L629	#
.L628:
	.loc 1 3243 0
	movq	-336(%rbp), %rax	# desc, tmp166
	movq	(%rax), %rax	# desc_1->next, tmp167
	movq	%rax, -336(%rbp)	# tmp167, desc
.L627:
	.loc 1 3243 0 is_stmt 0 discriminator 1
	cmpq	$0, -336(%rbp)	#, desc
	jne	.L630	#,
.L629:
	.loc 1 3247 0 is_stmt 1
	cmpq	$0, -336(%rbp)	#, desc
	jne	.L631	#,
	.loc 1 3255 0
	movl	const_labelno(%rip), %eax	# const_labelno, const_labelno.276
	leal	1(%rax), %edx	#, const_labelno.278
	movl	%edx, const_labelno(%rip)	# const_labelno.278, const_labelno
	movl	%eax, -352(%rbp)	# const_labelno.277, labelno
	.loc 1 3256 0
	movl	-352(%rbp), %edx	# labelno, labelno.279
	leaq	-288(%rbp), %rax	#, tmp168
	movl	%edx, %ecx	# labelno.279,
	movl	$.LC65, %edx	#,
	movl	$.LC49, %esi	#,
	movq	%rax, %rdi	# tmp168,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 1 3258 0
	movq	-376(%rbp), %rax	# exp, tmp169
	movq	%rax, %rdi	# tmp169,
	call	record_constant	#
	movq	%rax, -336(%rbp)	# tmp170, desc
	.loc 1 3259 0
	movl	-340(%rbp), %eax	# hash, tmp172
	cltq
	movq	const_hash_table(,%rax,8), %rdx	# const_hash_table, D.18683
	movq	-336(%rbp), %rax	# desc, tmp173
	movq	%rdx, (%rax)	# D.18683, desc_36->next
	.loc 1 3260 0
	leaq	-288(%rbp), %rax	#, tmp174
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# tmp174,
	call	ggc_alloc_string	#
	movq	-336(%rbp), %rdx	# desc, tmp175
	movq	%rax, 8(%rdx)	# D.18684, desc_36->label
	.loc 1 3261 0
	movl	-340(%rbp), %eax	# hash, tmp177
	cltq
	movq	-336(%rbp), %rdx	# desc, tmp178
	movq	%rdx, const_hash_table(,%rax,8)	# tmp178, const_hash_table
	.loc 1 3265 0
	movq	-336(%rbp), %rax	# desc, tmp179
	movq	8(%rax), %rdx	# desc_36->label, D.18684
	.loc 1 3266 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.281
	andl	$33554432, %eax	#, D.18682
	.loc 1 3265 0
	testl	%eax, %eax	# D.18682
	je	.L632	#,
	.loc 1 3265 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.280
	jmp	.L633	#
.L632:
	.loc 1 3265 0 discriminator 2
	movl	$4, %eax	#, iftmp.280
.L633:
	.loc 1 3265 0 discriminator 1
	movl	%eax, %esi	# iftmp.280,
	movl	$68, %edi	#,
	call	gen_rtx_fmt_s	#
	movq	%rax, %rdx	#, D.18681
	movq	-376(%rbp), %rax	# exp, tmp180
	movq	8(%rax), %rax	# exp_16(D)->common.type, D.18685
	movzbl	61(%rax), %eax	# *_45, tmp183
	shrb	%al	# D.18686
	movzbl	%al, %eax	# D.18686, D.18687
	movq	%rdx, %rsi	# D.18681,
	movl	%eax, %edi	# D.18687,
	call	gen_rtx_MEM	#
	movq	-336(%rbp), %rdx	# desc, tmp184
	movq	%rax, 16(%rdx)	# D.18681, desc_36->rtl
	.loc 1 3264 0 is_stmt 1 discriminator 1
	movq	-336(%rbp), %rax	# desc, tmp185
	movq	16(%rax), %rax	# desc_36->rtl, tmp186
	movq	%rax, -328(%rbp)	# tmp186, rtl
	.loc 1 3268 0 discriminator 1
	movq	-376(%rbp), %rcx	# exp, tmp187
	movq	-328(%rbp), %rax	# rtl, tmp188
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp187,
	movq	%rax, %rdi	# tmp188,
	call	set_mem_attributes	#
	.loc 1 3269 0 discriminator 1
	movq	-328(%rbp), %rax	# rtl, tmp189
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp189,
	call	set_mem_alias_set	#
	.loc 1 3270 0 discriminator 1
	movq	const_alias_set(%rip), %rdx	# const_alias_set, const_alias_set.282
	movq	-328(%rbp), %rax	# rtl, tmp190
	movq	%rdx, %rsi	# const_alias_set.282,
	movq	%rax, %rdi	# tmp190,
	call	set_mem_alias_set	#
	.loc 1 3272 0 discriminator 1
	movl	$0, -356(%rbp)	#, found
	jmp	.L634	#
.L631:
	.loc 1 3275 0
	movq	-336(%rbp), %rax	# desc, tmp191
	movq	16(%rax), %rax	# desc_1->rtl, tmp192
	movq	%rax, -328(%rbp)	# tmp192, rtl
.L634:
	.loc 1 3277 0
	movq	-376(%rbp), %rax	# exp, tmp193
	movzbl	16(%rax), %eax	# exp_16(D)->common.code, D.18680
	cmpb	$25, %al	#, D.18680
	je	.L635	#,
	.loc 1 3278 0
	movq	-376(%rbp), %rax	# exp, tmp194
	movq	-328(%rbp), %rdx	# rtl, tmp195
	movq	%rdx, 24(%rax)	# tmp195, exp_16(D)->real_cst.rtl
.L635:
	.loc 1 3286 0
	cmpl	$0, -356(%rbp)	#, found
	jne	.L636	#,
	.loc 1 3290 0
	movq	-376(%rbp), %rax	# exp, tmp196
	movzbl	16(%rax), %eax	# exp_16(D)->common.code, D.18680
	cmpb	$25, %al	#, D.18680
	je	.L637	#,
	.loc 1 3291 0
	movl	flag_pic(%rip), %eax	# flag_pic, flag_pic.283
	testl	%eax, %eax	# flag_pic.283
	je	.L637	#,
.LBB73:
	.loc 1 3291 0 is_stmt 0 discriminator 1
	movq	-376(%rbp), %rax	# exp, tmp197
	movzbl	16(%rax), %eax	# exp_16(D)->common.code, D.18680
	movzbl	%al, %eax	# D.18680, D.18682
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.18688
	cmpb	$100, %al	#, D.18688
	je	.L638	#,
	movq	-376(%rbp), %rax	# exp, tmp199
	movq	24(%rax), %rax	# exp_16(D)->real_cst.rtl, iftmp.284
	jmp	.L639	#
.L638:
	.loc 1 3291 0 discriminator 2
	movq	-376(%rbp), %rax	# exp, tmp200
	movq	144(%rax), %rax	# exp_16(D)->decl.rtl, D.18681
	testq	%rax, %rax	# D.18681
	je	.L640	#,
	.loc 1 3291 0 discriminator 1
	movq	-376(%rbp), %rax	# exp, tmp201
	movq	144(%rax), %rax	# exp_16(D)->decl.rtl, iftmp.285
	jmp	.L639	#
.L640:
	.loc 1 3291 0 discriminator 2
	movq	-376(%rbp), %rax	# exp, tmp202
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp202,
	call	make_decl_rtl	#
	movq	-376(%rbp), %rax	# exp, tmp203
	movq	144(%rax), %rax	# exp_16(D)->decl.rtl, iftmp.285
.L639:
	.loc 1 3291 0 discriminator 3
	movq	%rax, -320(%rbp)	# iftmp.284, rtl
	movq	-320(%rbp), %rax	# rtl, tmp204
	movzwl	(%rax), %eax	# rtl_64->code, D.18689
	cmpw	$66, %ax	#, D.18689
	jne	.L637	#,
	.loc 1 3291 0 discriminator 1
	movq	ix86_debug_addr_string(%rip), %rax	# ix86_debug_addr_string, ix86_debug_addr_string.286
	testq	%rax, %rax	# ix86_debug_addr_string.286
	je	.L642	#,
	movq	-376(%rbp), %rax	# exp, tmp205
	movzbl	16(%rax), %eax	# exp_16(D)->common.code, D.18680
	movzbl	%al, %eax	# D.18680, D.18682
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.18688
	cmpb	$100, %al	#, D.18688
	jne	.L642	#,
	movq	-376(%rbp), %rax	# exp, tmp207
	movzbl	18(%rax), %eax	# *exp_16(D), tmp210
	shrb	$3, %al	#, D.18690
	andl	$1, %eax	#, D.18690
	movzbl	%al, %ecx	# D.18690, D.18682
	movq	-376(%rbp), %rax	# exp, tmp211
	movq	72(%rax), %rax	# exp_16(D)->decl.name, D.18685
	movq	32(%rax), %rdx	# _72->identifier.id.str, D.18691
	movq	stderr(%rip), %rax	# stderr, stderr.287
	movl	$.LC36, %esi	#,
	movq	%rax, %rdi	# stderr.287,
	movl	$0, %eax	#,
	call	fprintf	#
.L642:
	.loc 1 3291 0 discriminator 2
	movq	-320(%rbp), %rax	# rtl, tmp212
	movq	8(%rax), %rax	# rtl_64->fld[0].rtx, D.18681
	movq	-376(%rbp), %rdx	# exp, tmp213
	movzbl	16(%rdx), %edx	# exp_16(D)->common.code, D.18680
	movzbl	%dl, %edx	# D.18680, D.18682
	movslq	%edx, %rdx	# D.18682, tmp214
	movzbl	tree_code_type(%rdx), %edx	# tree_code_type, D.18688
	cmpb	$100, %dl	#, D.18688
	jne	.L643	#,
	movq	-376(%rbp), %rdx	# exp, tmp215
	movzbl	18(%rdx), %edx	# *exp_16(D), D.18680
	andl	$8, %edx	#, D.18680
	testb	%dl, %dl	# D.18680
	jne	.L644	#,
.L643:
	.loc 1 3291 0 discriminator 1
	movl	$1, %edx	#, iftmp.288
	jmp	.L645	#
.L644:
	.loc 1 3291 0 discriminator 3
	movl	$0, %edx	#, iftmp.288
.L645:
	.loc 1 3291 0 discriminator 4
	andl	$1, %edx	#, D.18690
	andl	$1, %edx	#, tmp217
	leal	0(,%rdx,8), %ecx	#, tmp218
	movzbl	3(%rax), %edx	# _75->volatil, tmp219
	andl	$-9, %edx	#, tmp220
	orl	%ecx, %edx	# tmp218, tmp221
	movb	%dl, 3(%rax)	# tmp221, _75->volatil
.L637:
.LBE73:
	.loc 1 3293 0 is_stmt 1
	movq	-336(%rbp), %rax	# desc, tmp222
	movq	-328(%rbp), %rdx	# rtl, tmp223
	movq	%rdx, 16(%rax)	# tmp223, desc_2->rtl
	.loc 1 3294 0
	movq	-336(%rbp), %rax	# desc, tmp224
	movq	16(%rax), %rax	# desc_2->rtl, D.18681
	movq	8(%rax), %rax	# _85->fld[0].rtx, D.18681
	movq	8(%rax), %rdx	# _86->fld[0].rtstr, D.18684
	movq	-336(%rbp), %rax	# desc, tmp225
	movq	%rdx, 8(%rax)	# D.18684, desc_2->label
.L636:
	.loc 1 3304 0
	cmpl	$0, -356(%rbp)	#, found
	je	.L646	#,
	.loc 1 3305 0
	movq	-328(%rbp), %rax	# rtl, tmp226
	movq	8(%rax), %rax	# rtl_7->fld[0].rtx, D.18681
	movzbl	3(%rax), %eax	# *_88, D.18680
	andl	$-128, %eax	#, D.18680
	testb	%al, %al	# D.18680
	je	.L646	#,
	.loc 1 3306 0
	cmpl	$0, -380(%rbp)	#, defer
	je	.L647	#,
	.loc 1 3306 0 is_stmt 0 discriminator 1
	movl	defer_addressed_constants_flag(%rip), %eax	# defer_addressed_constants_flag, defer_addressed_constants_flag.289
	testl	%eax, %eax	# defer_addressed_constants_flag.289
	jne	.L647	#,
	cmpl	$0, -348(%rbp)	#, after_function
	je	.L646	#,
.L647:
	.loc 1 3310 0 is_stmt 1
	movq	-336(%rbp), %rax	# desc, tmp227
	movq	8(%rax), %rax	# desc_2->label, D.18684
	sarq	$3, %rax	#, D.18692
	.loc 1 3309 0
	movl	%eax, %edx	# D.18692, D.18693
	movq	-336(%rbp), %rax	# desc, tmp228
	movq	8(%rax), %rsi	# desc_2->label, D.18684
	movq	const_str_htab(%rip), %rax	# const_str_htab, const_str_htab.290
	.loc 1 3308 0
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# const_str_htab.290,
	call	htab_find_slot_with_hash	#
	movq	%rax, -312(%rbp)	# tmp229, defstr
	.loc 1 3311 0
	cmpq	$0, -312(%rbp)	#, defstr
	je	.L646	#,
	.loc 1 3315 0
	movl	$0, -356(%rbp)	#, found
	.loc 1 3316 0
	movq	-312(%rbp), %rax	# defstr, tmp230
	movq	(%rax), %rax	# *defstr_98, D.18694
	movl	16(%rax), %eax	# _100->labelno, tmp231
	movl	%eax, -352(%rbp)	# tmp231, labelno
	.loc 1 3317 0
	movq	-328(%rbp), %rax	# rtl, tmp232
	movq	8(%rax), %rax	# rtl_7->fld[0].rtx, D.18681
	movzbl	3(%rax), %edx	# _102->frame_related, tmp235
	andl	$127, %edx	#, tmp236
	movb	%dl, 3(%rax)	# tmp236, _102->frame_related
	.loc 1 3318 0
	movq	const_str_htab(%rip), %rax	# const_str_htab, const_str_htab.291
	movq	-312(%rbp), %rdx	# defstr, tmp237
	movq	%rdx, %rsi	# tmp237,
	movq	%rax, %rdi	# const_str_htab.291,
	call	htab_clear_slot	#
.L646:
	.loc 1 3324 0
	cmpl	$0, -356(%rbp)	#, found
	jne	.L648	#,
	.loc 1 3326 0
	movl	defer_addressed_constants_flag(%rip), %eax	# defer_addressed_constants_flag, defer_addressed_constants_flag.292
	testl	%eax, %eax	# defer_addressed_constants_flag.292
	jne	.L649	#,
	.loc 1 3326 0 is_stmt 0 discriminator 1
	cmpl	$0, -348(%rbp)	#, after_function
	je	.L650	#,
.L649:
.LBB74:
	.loc 1 3328 0 is_stmt 1
	movl	$24, %edi	#,
	call	xmalloc	#
	movq	%rax, -296(%rbp)	# tmp238, p
	.loc 1 3332 0
	movq	-376(%rbp), %rax	# exp, tmp239
	movq	%rax, %rdi	# tmp239,
	call	copy_constant	#
	movq	-296(%rbp), %rdx	# p, tmp240
	movq	%rax, 8(%rdx)	# D.18685, p_119->exp
	.loc 1 3333 0
	movq	-296(%rbp), %rax	# p, tmp241
	movl	-344(%rbp), %edx	# reloc, tmp242
	movl	%edx, 16(%rax)	# tmp242, p_119->reloc
	.loc 1 3334 0
	movq	-296(%rbp), %rax	# p, tmp243
	movl	-352(%rbp), %edx	# labelno, tmp244
	movl	%edx, 20(%rax)	# tmp244, p_119->labelno
	.loc 1 3335 0
	cmpl	$0, -348(%rbp)	#, after_function
	je	.L651	#,
	.loc 1 3337 0
	movq	after_function_constants(%rip), %rdx	# after_function_constants, after_function_constants.293
	movq	-296(%rbp), %rax	# p, tmp245
	movq	%rdx, (%rax)	# after_function_constants.293, p_119->next
	.loc 1 3338 0
	movq	-296(%rbp), %rax	# p, tmp246
	movq	%rax, after_function_constants(%rip)	# tmp246, after_function_constants
.LBE74:
	.loc 1 3327 0
	jmp	.L648	#
.L651:
.LBB75:
	.loc 1 3342 0
	movq	deferred_constants(%rip), %rdx	# deferred_constants, deferred_constants.294
	movq	-296(%rbp), %rax	# p, tmp247
	movq	%rdx, (%rax)	# deferred_constants.294, p_119->next
	.loc 1 3343 0
	movq	-296(%rbp), %rax	# p, tmp248
	movq	%rax, deferred_constants(%rip)	# tmp248, deferred_constants
.LBE75:
	.loc 1 3327 0
	jmp	.L648	#
.L650:
	.loc 1 3349 0
	movl	flag_syntax_only(%rip), %eax	# flag_syntax_only, flag_syntax_only.295
	testl	%eax, %eax	# flag_syntax_only.295
	jne	.L648	#,
	.loc 1 3351 0
	movq	-376(%rbp), %rax	# exp, tmp249
	movzbl	16(%rax), %eax	# exp_16(D)->common.code, D.18680
	cmpb	$29, %al	#, D.18680
	jne	.L653	#,
	.loc 1 3352 0
	cmpl	$0, -380(%rbp)	#, defer
	je	.L653	#,
	.loc 1 3353 0
	movl	flag_writable_strings(%rip), %eax	# flag_writable_strings, flag_writable_strings.296
	testl	%eax, %eax	# flag_writable_strings.296
	jne	.L653	#,
	.loc 1 3357 0
	movq	-336(%rbp), %rax	# desc, tmp250
	movq	8(%rax), %rax	# desc_2->label, D.18684
	sarq	$3, %rax	#, D.18692
	.loc 1 3355 0
	movl	%eax, %edx	# D.18692, D.18693
	.loc 1 3356 0
	movq	-336(%rbp), %rax	# desc, tmp251
	movq	8(%rax), %rsi	# desc_2->label, D.18684
	.loc 1 3355 0
	movq	const_str_htab(%rip), %rax	# const_str_htab, const_str_htab.297
	.loc 1 3354 0
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# const_str_htab.297,
	call	htab_find_slot_with_hash	#
	movq	%rax, -312(%rbp)	# tmp252, defstr
	cmpq	$0, -312(%rbp)	#, defstr
	jne	.L654	#,
.L653:
	.loc 1 3359 0
	movl	-352(%rbp), %edx	# labelno, tmp253
	movl	-344(%rbp), %ecx	# reloc, tmp254
	movq	-376(%rbp), %rax	# exp, tmp255
	movl	%ecx, %esi	# tmp254,
	movq	%rax, %rdi	# tmp255,
	call	output_constant_def_contents	#
	jmp	.L648	#
.L654:
.LBB76:
	.loc 1 3364 0
	movl	$24, %edi	#,
	call	xmalloc	#
	movq	%rax, -304(%rbp)	# tmp256, p
	.loc 1 3367 0
	movq	-376(%rbp), %rax	# exp, tmp257
	movq	%rax, %rdi	# tmp257,
	call	copy_constant	#
	movq	-304(%rbp), %rdx	# p, tmp258
	movq	%rax, 8(%rdx)	# D.18685, p_115->exp
	.loc 1 3368 0
	movq	-336(%rbp), %rax	# desc, tmp259
	movq	8(%rax), %rdx	# desc_2->label, D.18684
	movq	-304(%rbp), %rax	# p, tmp260
	movq	%rdx, (%rax)	# D.18684, p_115->label
	.loc 1 3369 0
	movq	-304(%rbp), %rax	# p, tmp261
	movl	-352(%rbp), %edx	# labelno, tmp262
	movl	%edx, 16(%rax)	# tmp262, p_115->labelno
	.loc 1 3370 0
	movq	-312(%rbp), %rax	# defstr, tmp263
	movq	-304(%rbp), %rdx	# p, tmp264
	movq	%rdx, (%rax)	# tmp264, *defstr_114
	.loc 1 3371 0
	movq	-328(%rbp), %rax	# rtl, tmp265
	movq	8(%rax), %rax	# rtl_7->fld[0].rtx, D.18681
	movzbl	3(%rax), %edx	# _118->frame_related, tmp268
	orl	$-128, %edx	#, tmp269
	movb	%dl, 3(%rax)	# tmp269, _118->frame_related
.L648:
.LBE76:
	.loc 1 3377 0
	movq	-328(%rbp), %rax	# rtl, D.18679
.L655:
	.loc 1 3378 0
	movq	-24(%rbp), %rbx	# D.18695, tmp273
	xorq	%fs:40, %rbx	#, tmp273
	je	.L656	#,
	call	__stack_chk_fail	#
.L656:
	addq	$376, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	output_constant_def, .-output_constant_def
	.type	output_constant_def_contents, @function
output_constant_def_contents:
.LFB75:
	.loc 1 3388 0
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
	movq	%rdi, -40(%rbp)	# exp, exp
	movl	%esi, -44(%rbp)	# reloc, reloc
	movl	%edx, -48(%rbp)	# labelno, labelno
	.loc 1 3392 0
	movq	-40(%rbp), %rax	# exp, tmp119
	movq	8(%rax), %rax	# exp_3(D)->common.type, D.18697
	movl	64(%rax), %eax	# _4->type.align, D.18698
	movl	%eax, -20(%rbp)	# D.18698, align
	.loc 1 3394 0
	movl	-20(%rbp), %edx	# align, tmp120
	movq	-40(%rbp), %rax	# exp, tmp121
	movl	%edx, %esi	# tmp120,
	movq	%rax, %rdi	# tmp121,
	call	ix86_constant_alignment	#
	movl	%eax, -20(%rbp)	# tmp122, align
	.loc 1 3397 0
	movq	-40(%rbp), %rax	# exp, tmp123
	movzbl	16(%rax), %eax	# exp_3(D)->common.code, D.18699
	cmpb	$30, %al	#, D.18699
	je	.L658	#,
	.loc 1 3397 0 is_stmt 0 discriminator 2
	movq	-40(%rbp), %rax	# exp, tmp124
	movzbl	16(%rax), %eax	# exp_3(D)->common.code, D.18699
	cmpb	$34, %al	#, D.18699
	jne	.L659	#,
.L658:
	.loc 1 3397 0 discriminator 1
	movq	-40(%rbp), %rax	# exp, tmp125
	movq	128(%rax), %rax	# exp_3(D)->decl.section_name, D.18697
	testq	%rax, %rax	# D.18697
	je	.L659	#,
	.loc 1 3398 0 is_stmt 1
	movl	-44(%rbp), %edx	# reloc, tmp126
	movq	-40(%rbp), %rax	# exp, tmp127
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp127,
	call	named_section	#
	jmp	.L660	#
.L659:
	.loc 1 3403 0
	movq	-40(%rbp), %rax	# exp, tmp128
	movzbl	16(%rax), %eax	# exp_3(D)->common.code, D.18699
	cmpb	$29, %al	#, D.18699
	jne	.L661	#,
	.loc 1 3403 0 is_stmt 0 discriminator 1
	movl	flag_writable_strings(%rip), %eax	# flag_writable_strings, flag_writable_strings.298
	testl	%eax, %eax	# flag_writable_strings.298
	jne	.L662	#,
	movl	-20(%rbp), %eax	# align, tmp129
	movslq	%eax, %rcx	# tmp129, D.18700
	movq	-40(%rbp), %rax	# exp, tmp130
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.18700,
	movq	%rax, %rdi	# tmp130,
	call	mergeable_string_section	#
	jmp	.L660	#
.L662:
	.loc 1 3403 0 discriminator 2
	call	data_section	#
	jmp	.L660	#
.L661:
	movq	-40(%rbp), %rax	# exp, tmp131
	movzbl	16(%rax), %eax	# exp_3(D)->common.code, D.18699
	cmpb	$34, %al	#, D.18699
	jne	.L664	#,
	.loc 1 3403 0 discriminator 1
	movq	-40(%rbp), %rax	# exp, tmp132
	movzbl	17(%rax), %eax	# *exp_3(D), D.18699
	andl	$16, %eax	#, D.18699
	testb	%al, %al	# D.18699
	je	.L665	#,
	.loc 1 3403 0 discriminator 2
	movq	-40(%rbp), %rax	# exp, tmp133
	movzbl	17(%rax), %eax	# *exp_3(D), D.18699
	andl	$1, %eax	#, D.18699
	testb	%al, %al	# D.18699
	jne	.L665	#,
	.loc 1 3403 0 discriminator 1
	movq	-40(%rbp), %rax	# exp, tmp134
	movq	104(%rax), %rax	# exp_3(D)->decl.initial, D.18697
	testq	%rax, %rax	# D.18697
	je	.L665	#,
	movq	-40(%rbp), %rax	# exp, tmp135
	movq	104(%rax), %rdx	# exp_3(D)->decl.initial, D.18697
	movq	global_trees(%rip), %rax	# global_trees, D.18697
	cmpq	%rax, %rdx	# D.18697, D.18697
	je	.L666	#,
	movq	-40(%rbp), %rax	# exp, tmp136
	movq	104(%rax), %rax	# exp_3(D)->decl.initial, D.18697
	movzbl	17(%rax), %eax	# *_23, D.18699
	andl	$2, %eax	#, D.18699
	testb	%al, %al	# D.18699
	jne	.L666	#,
.L665:
	movl	flag_pic(%rip), %eax	# flag_pic, flag_pic.299
	testl	%eax, %eax	# flag_pic.299
	je	.L667	#,
	movl	-44(%rbp), %eax	# reloc, tmp137
	andl	$2, %eax	#, D.18701
	testl	%eax, %eax	# D.18701
	je	.L667	#,
	movl	-44(%rbp), %eax	# reloc, tmp138
	movl	%eax, %edx	# tmp138,
	movl	$.LC18, %esi	#,
	movl	$0, %edi	#,
	call	named_section	#
	jmp	.L668	#
.L667:
	.loc 1 3403 0 discriminator 2
	movl	flag_pic(%rip), %eax	# flag_pic, flag_pic.300
	testl	%eax, %eax	# flag_pic.300
	je	.L669	#,
	.loc 1 3403 0 discriminator 1
	cmpl	$0, -44(%rbp)	#, reloc
	je	.L669	#,
	movl	-44(%rbp), %eax	# reloc, tmp139
	movl	%eax, %edx	# tmp139,
	movl	$.LC19, %esi	#,
	movl	$0, %edi	#,
	call	named_section	#
	jmp	.L668	#
.L669:
	.loc 1 3403 0 discriminator 2
	call	data_section	#
	jmp	.L670	#
.L668:
	.loc 1 3403 0 discriminator 1
	jmp	.L670	#
.L666:
	.loc 1 3403 0 discriminator 2
	movl	flag_pic(%rip), %eax	# flag_pic, flag_pic.301
	testl	%eax, %eax	# flag_pic.301
	je	.L671	#,
	.loc 1 3403 0 discriminator 1
	movl	-44(%rbp), %eax	# reloc, tmp140
	andl	$2, %eax	#, D.18701
	testl	%eax, %eax	# D.18701
	je	.L671	#,
	movl	-44(%rbp), %eax	# reloc, tmp141
	movl	%eax, %edx	# tmp141,
	movl	$.LC20, %esi	#,
	movl	$0, %edi	#,
	call	named_section	#
	jmp	.L670	#
.L671:
	.loc 1 3403 0 discriminator 2
	movl	flag_pic(%rip), %eax	# flag_pic, flag_pic.302
	testl	%eax, %eax	# flag_pic.302
	je	.L672	#,
	.loc 1 3403 0 discriminator 1
	cmpl	$0, -44(%rbp)	#, reloc
	je	.L672	#,
	movl	-44(%rbp), %eax	# reloc, tmp142
	movl	%eax, %edx	# tmp142,
	movl	$.LC21, %esi	#,
	movl	$0, %edi	#,
	call	named_section	#
	jmp	.L670	#
.L672:
	.loc 1 3403 0 discriminator 2
	movl	flag_merge_constants(%rip), %eax	# flag_merge_constants, flag_merge_constants.303
	cmpl	$1, %eax	#, flag_merge_constants.303
	jg	.L673	#,
	.loc 1 3403 0 discriminator 1
	call	const_section	#
	jmp	.L660	#
.L673:
	.loc 1 3403 0 discriminator 2
	movq	-40(%rbp), %rax	# exp, tmp143
	movq	104(%rax), %rax	# exp_3(D)->decl.initial, D.18697
	movzbl	16(%rax), %eax	# _30->common.code, D.18699
	cmpb	$29, %al	#, D.18699
	jne	.L674	#,
	.loc 1 3403 0 discriminator 1
	movl	-20(%rbp), %eax	# align, tmp144
	movslq	%eax, %rcx	# tmp144, D.18700
	movq	-40(%rbp), %rax	# exp, tmp145
	movq	104(%rax), %rax	# exp_3(D)->decl.initial, D.18697
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.18700,
	movq	%rax, %rdi	# D.18697,
	call	mergeable_string_section	#
	jmp	.L660	#
.L674:
	.loc 1 3403 0 discriminator 2
	movl	-20(%rbp), %eax	# align, tmp146
	movslq	%eax, %rcx	# tmp146, D.18700
	movq	-40(%rbp), %rax	# exp, tmp147
	movzbl	48(%rax), %eax	# exp_3(D)->decl.mode, D.18699
	movzbl	%al, %eax	# D.18699, D.18702
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.18700,
	movl	%eax, %edi	# D.18702,
	call	mergeable_constant_section	#
	jmp	.L660	#
.L670:
	jmp	.L660	#
.L664:
	movq	-40(%rbp), %rax	# exp, tmp148
	movzbl	16(%rax), %eax	# exp_3(D)->common.code, D.18699
	cmpb	$46, %al	#, D.18699
	jne	.L675	#,
	.loc 1 3403 0 discriminator 1
	movl	flag_pic(%rip), %eax	# flag_pic, flag_pic.304
	testl	%eax, %eax	# flag_pic.304
	je	.L676	#,
	cmpl	$0, -44(%rbp)	#, reloc
	jne	.L677	#,
.L676:
	.loc 1 3403 0 discriminator 2
	movq	-40(%rbp), %rax	# exp, tmp149
	movzbl	17(%rax), %eax	# *exp_3(D), D.18699
	andl	$1, %eax	#, D.18699
	testb	%al, %al	# D.18699
	jne	.L677	#,
	.loc 1 3403 0 discriminator 1
	movq	-40(%rbp), %rax	# exp, tmp150
	movzbl	17(%rax), %eax	# *exp_3(D), D.18699
	andl	$2, %eax	#, D.18699
	testb	%al, %al	# D.18699
	jne	.L678	#,
.L677:
	call	data_section	#
	jmp	.L660	#
.L678:
	call	const_section	#
	jmp	.L660	#
.L675:
	.loc 1 3403 0 discriminator 2
	call	const_section	#
.L660:
	.loc 1 3413 0 is_stmt 1
	cmpl	$8, -20(%rbp)	#, align
	jle	.L680	#,
	.loc 1 3415 0
	movl	-20(%rbp), %eax	# align, tmp151
	leal	7(%rax), %edx	#, tmp153
	testl	%eax, %eax	# tmp152
	cmovs	%edx, %eax	# tmp153,, tmp152
	sarl	$3, %eax	#, tmp154
	cltq
	movq	%rax, %rdi	# D.18700,
	call	floor_log2_wide	#
	testl	%eax, %eax	# D.18701
	je	.L680	#,
	.loc 1 3415 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# align, tmp155
	leal	7(%rax), %edx	#, tmp157
	testl	%eax, %eax	# tmp156
	cmovs	%edx, %eax	# tmp157,, tmp156
	sarl	$3, %eax	#, tmp158
	cltq
	movq	%rax, %rdi	# D.18700,
	call	floor_log2_wide	#
	movl	$1, %edx	#, tmp159
	movl	%eax, %ecx	# D.18701, tmp167
	sall	%cl, %edx	# tmp167, D.18701
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.305
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# asm_out_file.305,
	movl	$0, %eax	#,
	call	fprintf	#
.L680:
	.loc 1 3419 0 is_stmt 1
	movl	-48(%rbp), %edx	# labelno, labelno.306
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.307
	movl	%edx, %ecx	# labelno.306,
	movl	$.LC65, %edx	#,
	movl	$.LC50, %esi	#,
	movq	%rax, %rdi	# asm_out_file.307,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 3422 0
	movl	-20(%rbp), %ebx	# align, align.308
	.loc 1 3423 0
	movq	-40(%rbp), %rax	# exp, tmp160
	movzbl	16(%rax), %eax	# exp_3(D)->common.code, D.18699
	.loc 1 3422 0
	cmpb	$29, %al	#, D.18699
	jne	.L681	#,
	.loc 1 3424 0
	movq	-40(%rbp), %rax	# exp, tmp161
	movl	32(%rax), %eax	# exp_3(D)->string.length, D.18701
	movslq	%eax, %r12	# D.18701, D.18703
	movq	-40(%rbp), %rax	# exp, tmp162
	movq	8(%rax), %rax	# exp_3(D)->common.type, D.18697
	movq	%rax, %rdi	# D.18697,
	call	int_size_in_bytes	#
	cmpq	%rax, %r12	# D.18703, D.18703
	jle	.L682	#,
	.loc 1 3424 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# exp, tmp163
	movl	32(%rax), %eax	# exp_3(D)->string.length, D.18701
	cltq
	jmp	.L684	#
.L682:
	.loc 1 3424 0 discriminator 2
	movq	-40(%rbp), %rax	# exp, tmp164
	movq	8(%rax), %rax	# exp_3(D)->common.type, D.18697
	movq	%rax, %rdi	# D.18697,
	call	int_size_in_bytes	#
	jmp	.L684	#
.L681:
	.loc 1 3426 0 is_stmt 1 discriminator 1
	movq	-40(%rbp), %rax	# exp, tmp165
	movq	8(%rax), %rax	# exp_3(D)->common.type, D.18697
	.loc 1 3422 0 discriminator 1
	movq	%rax, %rdi	# D.18697,
	call	int_size_in_bytes	#
.L684:
	.loc 1 3422 0 is_stmt 0 discriminator 2
	movq	-40(%rbp), %rcx	# exp, tmp166
	movl	%ebx, %edx	# align.308,
	movq	%rax, %rsi	# iftmp.309,
	movq	%rcx, %rdi	# tmp166,
	call	output_constant	#
	.loc 1 3429 0 is_stmt 1 discriminator 2
	addq	$32, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	output_constant_def_contents, .-output_constant_def_contents
	.globl	init_varasm_status
	.type	init_varasm_status, @function
init_varasm_status:
.LFB76:
	.loc 1 3459 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 3461 0
	movl	$48, %edi	#,
	call	xmalloc	#
	movq	%rax, -8(%rbp)	# tmp62, p
	.loc 1 3462 0
	movq	-24(%rbp), %rax	# f, tmp63
	movq	-8(%rbp), %rdx	# p, tmp64
	movq	%rdx, 32(%rax)	# tmp64, f_2(D)->varasm
	.loc 1 3465 0
	movl	$8, %esi	#,
	movl	$61, %edi	#,
	call	xcalloc	#
	movq	%rax, %rdx	# tmp65, D.18704
	.loc 1 3464 0
	movq	-8(%rbp), %rax	# p, tmp66
	movq	%rdx, (%rax)	# D.18704, p_1->x_const_rtx_hash_table
	.loc 1 3468 0
	movl	$8, %esi	#,
	movl	$61, %edi	#,
	call	xcalloc	#
	movq	%rax, %rdx	# tmp67, D.18704
	.loc 1 3467 0
	movq	-8(%rbp), %rax	# p, tmp68
	movq	%rdx, 8(%rax)	# D.18704, p_1->x_const_rtx_sym_hash_table
	.loc 1 3470 0
	movq	-8(%rbp), %rax	# p, tmp69
	movq	$0, 24(%rax)	#, p_1->x_last_pool
	movq	-8(%rbp), %rax	# p, tmp70
	movq	24(%rax), %rdx	# p_1->x_last_pool, D.18705
	movq	-8(%rbp), %rax	# p, tmp71
	movq	%rdx, 16(%rax)	# D.18705, p_1->x_first_pool
	.loc 1 3471 0
	movq	-8(%rbp), %rax	# p, tmp72
	movq	$0, 32(%rax)	#, p_1->x_pool_offset
	.loc 1 3472 0
	movq	-8(%rbp), %rax	# p, tmp73
	movq	$0, 40(%rax)	#, p_1->x_const_double_chain
	.loc 1 3473 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	init_varasm_status, .-init_varasm_status
	.type	mark_pool_constant, @function
mark_pool_constant:
.LFB77:
	.loc 1 3480 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# pc, pc
	.loc 1 3481 0
	jmp	.L687	#
.L691:
.LBB77:
	.loc 1 3483 0
	movq	-40(%rbp), %rax	# pc, tmp62
	movq	%rax, -24(%rbp)	# tmp62, a__
	cmpq	$0, -24(%rbp)	#, a__
	je	.L688	#,
	.loc 1 3483 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# a__, tmp63
	movq	%rax, %rdi	# tmp63,
	call	ggc_set_mark	#
.L688:
.LBE77:
.LBB78:
	.loc 1 3484 0 is_stmt 1
	movq	-40(%rbp), %rax	# pc, tmp64
	movq	24(%rax), %rax	# pc_1->constant, tmp65
	movq	%rax, -16(%rbp)	# tmp65, r__
	cmpq	$0, -16(%rbp)	#, r__
	je	.L689	#,
	.loc 1 3484 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# r__, tmp66
	movq	%rax, %rdi	# tmp66,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.18706
	jne	.L689	#,
	movq	-16(%rbp), %rax	# r__, tmp67
	movq	%rax, %rdi	# tmp67,
	call	ggc_mark_rtx_children	#
.L689:
.LBE78:
.LBB79:
	.loc 1 3485 0 is_stmt 1
	movq	-40(%rbp), %rax	# pc, tmp68
	movq	(%rax), %rax	# pc_1->desc, D.18707
	movq	16(%rax), %rax	# _6->rtl, tmp69
	movq	%rax, -8(%rbp)	# tmp69, r__
	cmpq	$0, -8(%rbp)	#, r__
	je	.L690	#,
	.loc 1 3485 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# r__, tmp70
	movq	%rax, %rdi	# tmp70,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.18706
	jne	.L690	#,
	movq	-8(%rbp), %rax	# r__, tmp71
	movq	%rax, %rdi	# tmp71,
	call	ggc_mark_rtx_children	#
.L690:
.LBE79:
	.loc 1 3486 0 is_stmt 1
	movq	-40(%rbp), %rax	# pc, tmp72
	movq	8(%rax), %rax	# pc_1->next, tmp73
	movq	%rax, -40(%rbp)	# tmp73, pc
.L687:
	.loc 1 3481 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, pc
	jne	.L691	#,
	.loc 1 3488 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	mark_pool_constant, .-mark_pool_constant
	.globl	mark_varasm_status
	.type	mark_varasm_status, @function
mark_varasm_status:
.LFB78:
	.loc 1 3495 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# p, p
	.loc 1 3496 0
	cmpq	$0, -24(%rbp)	#, p
	jne	.L693	#,
	.loc 1 3497 0
	jmp	.L692	#
.L693:
	.loc 1 3499 0
	movq	-24(%rbp), %rax	# p, tmp61
	movq	16(%rax), %rax	# p_1(D)->x_first_pool, D.18708
	movq	%rax, %rdi	# D.18708,
	call	mark_pool_constant	#
.LBB80:
	.loc 1 3500 0
	movq	-24(%rbp), %rax	# p, tmp62
	movq	40(%rax), %rax	# p_1(D)->x_const_double_chain, tmp63
	movq	%rax, -8(%rbp)	# tmp63, r__
	cmpq	$0, -8(%rbp)	#, r__
	je	.L692	#,
	.loc 1 3500 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# r__, tmp64
	movq	%rax, %rdi	# tmp64,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.18709
	jne	.L692	#,
	movq	-8(%rbp), %rax	# r__, tmp65
	movq	%rax, %rdi	# tmp65,
	call	ggc_mark_rtx_children	#
.L692:
.LBE80:
	.loc 1 3501 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	mark_varasm_status, .-mark_varasm_status
	.globl	free_varasm_status
	.type	free_varasm_status, @function
free_varasm_status:
.LFB79:
	.loc 1 3510 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# f, f
	.loc 1 3514 0
	movq	-40(%rbp), %rax	# f, tmp65
	movq	32(%rax), %rax	# f_3(D)->varasm, tmp66
	movq	%rax, -16(%rbp)	# tmp66, p
	.loc 1 3517 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L696	#
.L699:
.LBB81:
	.loc 1 3521 0
	movq	-16(%rbp), %rax	# p, tmp67
	movq	(%rax), %rax	# p_4->x_const_rtx_hash_table, D.18710
	movl	-28(%rbp), %edx	# i, tmp68
	movslq	%edx, %rdx	# tmp68, D.18711
	salq	$3, %rdx	#, D.18711
	addq	%rdx, %rax	# D.18711, D.18710
	movq	(%rax), %rax	# *_9, tmp69
	movq	%rax, -24(%rbp)	# tmp69, cd
	.loc 1 3522 0
	jmp	.L697	#
.L698:
.LBB82:
	.loc 1 3524 0
	movq	-24(%rbp), %rax	# cd, tmp70
	movq	(%rax), %rax	# cd_2->next, tmp71
	movq	%rax, -8(%rbp)	# tmp71, next
	.loc 1 3526 0
	movq	-24(%rbp), %rax	# cd, tmp72
	movq	%rax, %rdi	# tmp72,
	call	free	#
	.loc 1 3527 0
	movq	-8(%rbp), %rax	# next, tmp73
	movq	%rax, -24(%rbp)	# tmp73, cd
.L697:
.LBE82:
	.loc 1 3522 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, cd
	jne	.L698	#,
.LBE81:
	.loc 1 3517 0
	addl	$1, -28(%rbp)	#, i
.L696:
	.loc 1 3517 0 is_stmt 0 discriminator 1
	cmpl	$60, -28(%rbp)	#, i
	jle	.L699	#,
	.loc 1 3531 0 is_stmt 1
	movq	-16(%rbp), %rax	# p, tmp74
	movq	(%rax), %rax	# p_4->x_const_rtx_hash_table, D.18710
	movq	%rax, %rdi	# D.18710,
	call	free	#
	.loc 1 3532 0
	movq	-16(%rbp), %rax	# p, tmp75
	movq	8(%rax), %rax	# p_4->x_const_rtx_sym_hash_table, D.18712
	movq	%rax, %rdi	# D.18712,
	call	free	#
	.loc 1 3533 0
	movq	-16(%rbp), %rax	# p, tmp76
	movq	%rax, %rdi	# tmp76,
	call	free	#
	.loc 1 3535 0
	movq	-40(%rbp), %rax	# f, tmp77
	movq	$0, 32(%rax)	#, f_3(D)->varasm
	.loc 1 3536 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	free_varasm_status, .-free_varasm_status
	.type	decode_rtx_const, @function
decode_rtx_const:
.LFB80:
	.loc 1 3548 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# mode, mode
	movq	%rsi, -32(%rbp)	# x, x
	movq	%rdx, -40(%rbp)	# value, value
	.loc 1 3550 0
	movq	-40(%rbp), %rax	# value, tmp116
	movl	$136, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp116,
	call	memset	#
	.loc 1 3552 0
	movq	-40(%rbp), %rax	# value, tmp117
	movw	$2, (%rax)	#, value_2(D)->kind
	.loc 1 3553 0
	movl	-20(%rbp), %eax	# mode, tmp118
	movl	%eax, %edx	# tmp118, D.18713
	movq	-40(%rbp), %rax	# value, tmp119
	movw	%dx, 2(%rax)	# D.18713, value_2(D)->mode
	.loc 1 3555 0
	movq	-32(%rbp), %rax	# x, tmp120
	movzwl	(%rax), %eax	# x_5(D)->code, D.18713
	movzwl	%ax, %eax	# D.18713, D.18714
	subl	$54, %eax	#, tmp121
	cmpl	$14, %eax	#, tmp121
	ja	.L701	#,
	movl	%eax, %eax	# tmp121, tmp122
	movq	.L703(,%rax,8), %rax	#, tmp123
	jmp	*%rax	# tmp123
	.section	.rodata
	.align 8
	.align 4
.L703:
	.quad	.L702
	.quad	.L704
	.quad	.L705
	.quad	.L701
	.quad	.L706
	.quad	.L707
	.quad	.L701
	.quad	.L701
	.quad	.L701
	.quad	.L701
	.quad	.L701
	.quad	.L701
	.quad	.L701
	.quad	.L707
	.quad	.L707
	.text
.L704:
	.loc 1 3558 0
	movq	-40(%rbp), %rax	# value, tmp124
	movw	$1, (%rax)	#, value_2(D)->kind
	.loc 1 3559 0
	movq	-32(%rbp), %rax	# x, tmp125
	movzbl	2(%rax), %eax	# x_5(D)->mode, D.18715
	testb	%al, %al	# D.18715
	je	.L708	#,
	.loc 1 3561 0
	movq	-32(%rbp), %rax	# x, tmp126
	movzbl	2(%rax), %eax	# x_5(D)->mode, D.18715
	movzbl	%al, %edx	# D.18715, D.18713
	movq	-40(%rbp), %rax	# value, tmp127
	movw	%dx, 2(%rax)	# D.18713, value_2(D)->mode
	.loc 1 3563 0
	movq	-32(%rbp), %rax	# x, tmp128
	leaq	16(%rax), %rcx	#, D.18716
	.loc 1 3562 0
	movq	-40(%rbp), %rax	# value, tmp129
	addq	$8, %rax	#, D.18717
	movl	$24, %edx	#,
	movq	%rcx, %rsi	# D.18716,
	movq	%rax, %rdi	# D.18717,
	call	memcpy	#
	.loc 1 3570 0
	jmp	.L710	#
.L708:
	.loc 1 3567 0
	movq	-32(%rbp), %rax	# x, tmp130
	movq	16(%rax), %rdx	# x_5(D)->fld[1].rtwint, D.18718
	movq	-40(%rbp), %rax	# value, tmp131
	movq	%rdx, 16(%rax)	# D.18718, value_2(D)->un.di.low
	.loc 1 3568 0
	movq	-32(%rbp), %rax	# x, tmp132
	movq	24(%rax), %rdx	# x_5(D)->fld[2].rtwint, D.18718
	movq	-40(%rbp), %rax	# value, tmp133
	movq	%rdx, 8(%rax)	# D.18718, value_2(D)->un.di.high
	.loc 1 3570 0
	jmp	.L710	#
.L705:
.LBB83:
	.loc 1 3577 0
	movq	-32(%rbp), %rax	# x, tmp134
	movq	8(%rax), %rax	# x_5(D)->fld[0].rtvec, D.18719
	movl	(%rax), %eax	# _15->num_elem, tmp135
	movl	%eax, -12(%rbp)	# tmp135, units
	.loc 1 3578 0
	movq	-40(%rbp), %rax	# value, tmp136
	movw	$3, (%rax)	#, value_2(D)->kind
	.loc 1 3579 0
	movl	-20(%rbp), %eax	# mode, tmp137
	movl	%eax, %edx	# tmp137, D.18713
	movq	-40(%rbp), %rax	# value, tmp138
	movw	%dx, 2(%rax)	# D.18713, value_2(D)->mode
	.loc 1 3581 0
	movl	$0, -16(%rbp)	#, i
	jmp	.L711	#
.L715:
	.loc 1 3583 0
	movq	-32(%rbp), %rax	# x, tmp139
	movq	8(%rax), %rax	# x_5(D)->fld[0].rtvec, D.18719
	movl	-16(%rbp), %edx	# i, tmp141
	movslq	%edx, %rdx	# tmp141, tmp140
	movq	8(%rax,%rdx,8), %rax	# _19->elem, tmp142
	movq	%rax, -8(%rbp)	# tmp142, elt
	.loc 1 3584 0
	movl	-20(%rbp), %eax	# mode, mode.311
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.18720
	cmpl	$7, %eax	#, D.18720
	jne	.L712	#,
	.loc 1 3586 0
	movq	-8(%rbp), %rax	# elt, tmp144
	movq	8(%rax), %rcx	# elt_20->fld[0].rtwint, D.18718
	movq	-40(%rbp), %rax	# value, tmp145
	movl	-16(%rbp), %edx	# i, tmp147
	movslq	%edx, %rdx	# tmp147, tmp146
	movq	%rcx, 8(%rax,%rdx,8)	# D.18718, value_2(D)->un.veclo
	.loc 1 3587 0
	movq	-40(%rbp), %rax	# value, tmp148
	movl	-16(%rbp), %edx	# i, tmp150
	movslq	%edx, %rdx	# tmp150, tmp149
	movq	$0, 8(%rax,%rdx,8)	#, value_2(D)->un.vechi
	jmp	.L713	#
.L712:
	.loc 1 3589 0
	movl	-20(%rbp), %eax	# mode, mode.312
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.18720
	cmpl	$8, %eax	#, D.18720
	jne	.L714	#,
	.loc 1 3591 0
	movq	-8(%rbp), %rax	# elt, tmp152
	movq	16(%rax), %rcx	# elt_20->fld[1].rtwint, D.18718
	movq	-40(%rbp), %rax	# value, tmp153
	movl	-16(%rbp), %edx	# i, tmp155
	movslq	%edx, %rdx	# tmp155, tmp154
	movq	%rcx, 8(%rax,%rdx,8)	# D.18718, value_2(D)->un.veclo
	.loc 1 3592 0
	movq	-8(%rbp), %rax	# elt, tmp156
	movq	24(%rax), %rcx	# elt_20->fld[2].rtwint, D.18718
	movq	-40(%rbp), %rax	# value, tmp157
	movl	-16(%rbp), %edx	# i, tmp159
	movslq	%edx, %rdx	# tmp159, tmp158
	movq	%rcx, 8(%rax,%rdx,8)	# D.18718, value_2(D)->un.vechi
	jmp	.L713	#
.L714:
	.loc 1 3595 0
	movl	$__FUNCTION__.13708, %edx	#,
	movl	$3595, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L713:
	.loc 1 3581 0
	addl	$1, -16(%rbp)	#, i
.L711:
	.loc 1 3581 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# i, tmp160
	cmpl	-12(%rbp), %eax	# units, tmp160
	jl	.L715	#,
.LBE83:
	.loc 1 3598 0 is_stmt 1
	jmp	.L710	#
.L702:
	.loc 1 3601 0
	movq	-32(%rbp), %rax	# x, tmp161
	movq	8(%rax), %rdx	# x_5(D)->fld[0].rtwint, D.18718
	movq	-40(%rbp), %rax	# value, tmp162
	movq	%rdx, 16(%rax)	# D.18718, value_2(D)->un.addr.offset
	.loc 1 3602 0
	jmp	.L710	#
.L707:
	.loc 1 3607 0
	movq	-40(%rbp), %rax	# value, tmp163
	movq	-32(%rbp), %rdx	# x, tmp164
	movq	%rdx, 8(%rax)	# tmp164, value_2(D)->un.addr.base
	.loc 1 3608 0
	jmp	.L710	#
.L706:
	.loc 1 3611 0
	movq	-32(%rbp), %rax	# x, tmp165
	movq	8(%rax), %rax	# x_5(D)->fld[0].rtx, tmp166
	movq	%rax, -32(%rbp)	# tmp166, x
	.loc 1 3612 0
	movq	-32(%rbp), %rax	# x, tmp167
	movzwl	(%rax), %eax	# x_30->code, D.18713
	cmpw	$75, %ax	#, D.18713
	jne	.L716	#,
	.loc 1 3612 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# x, tmp168
	movq	16(%rax), %rax	# x_30->fld[1].rtx, D.18721
	movzwl	(%rax), %eax	# _32->code, D.18713
	cmpw	$54, %ax	#, D.18713
	jne	.L716	#,
	.loc 1 3614 0 is_stmt 1
	movq	-32(%rbp), %rax	# x, tmp169
	movq	8(%rax), %rdx	# x_30->fld[0].rtx, D.18721
	movq	-40(%rbp), %rax	# value, tmp170
	movq	%rdx, 8(%rax)	# D.18721, value_2(D)->un.addr.base
	.loc 1 3615 0
	movq	-32(%rbp), %rax	# x, tmp171
	movq	16(%rax), %rax	# x_30->fld[1].rtx, D.18721
	movq	8(%rax), %rdx	# _35->fld[0].rtwint, D.18718
	movq	-40(%rbp), %rax	# value, tmp172
	movq	%rdx, 16(%rax)	# D.18718, value_2(D)->un.addr.offset
	jmp	.L717	#
.L716:
	.loc 1 3617 0
	movq	-32(%rbp), %rax	# x, tmp173
	movzwl	(%rax), %eax	# x_30->code, D.18713
	cmpw	$76, %ax	#, D.18713
	jne	.L718	#,
	.loc 1 3617 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# x, tmp174
	movq	16(%rax), %rax	# x_30->fld[1].rtx, D.18721
	movzwl	(%rax), %eax	# _38->code, D.18713
	cmpw	$54, %ax	#, D.18713
	jne	.L718	#,
	.loc 1 3619 0 is_stmt 1
	movq	-32(%rbp), %rax	# x, tmp175
	movq	8(%rax), %rdx	# x_30->fld[0].rtx, D.18721
	movq	-40(%rbp), %rax	# value, tmp176
	movq	%rdx, 8(%rax)	# D.18721, value_2(D)->un.addr.base
	.loc 1 3620 0
	movq	-32(%rbp), %rax	# x, tmp177
	movq	16(%rax), %rax	# x_30->fld[1].rtx, D.18721
	movq	8(%rax), %rax	# _41->fld[0].rtwint, D.18718
	negq	%rax	# D.18718
	movq	%rax, %rdx	# D.18718, D.18718
	movq	-40(%rbp), %rax	# value, tmp178
	movq	%rdx, 16(%rax)	# D.18718, value_2(D)->un.addr.offset
	jmp	.L717	#
.L718:
	.loc 1 3624 0
	movq	-40(%rbp), %rax	# value, tmp179
	movq	-32(%rbp), %rdx	# x, tmp180
	movq	%rdx, 8(%rax)	# tmp180, value_2(D)->un.addr.base
	.loc 1 3625 0
	movq	-40(%rbp), %rax	# value, tmp181
	movq	$0, 16(%rax)	#, value_2(D)->un.addr.offset
	.loc 1 3627 0
	jmp	.L710	#
.L717:
	jmp	.L710	#
.L701:
	.loc 1 3630 0
	movq	-40(%rbp), %rax	# value, tmp182
	movw	$0, (%rax)	#, value_2(D)->kind
	.loc 1 3631 0
	nop
.L710:
	.loc 1 3634 0
	movq	-40(%rbp), %rax	# value, tmp183
	movzwl	(%rax), %eax	# value_2(D)->kind, D.18713
	cmpw	$2, %ax	#, D.18713
	jne	.L719	#,
	.loc 1 3634 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# value, tmp184
	movq	8(%rax), %rax	# value_2(D)->un.addr.base, D.18721
	testq	%rax, %rax	# D.18721
	je	.L719	#,
	.loc 1 3635 0 is_stmt 1
	movq	-40(%rbp), %rax	# value, tmp185
	movq	8(%rax), %rax	# value_2(D)->un.addr.base, D.18721
	movzwl	(%rax), %eax	# _46->code, D.18713
	cmpw	$42, %ax	#, D.18713
	jne	.L719	#,
	.loc 1 3644 0
	movq	-40(%rbp), %rax	# value, tmp186
	movq	8(%rax), %rax	# value_2(D)->un.addr.base, D.18721
	movq	8(%rax), %rax	# _48->fld[0].rtvec, D.18719
	movl	(%rax), %eax	# _49->num_elem, D.18722
	cmpl	$1, %eax	#, D.18722
	jne	.L719	#,
	.loc 1 3646 0
	movq	-40(%rbp), %rax	# value, tmp187
	movq	8(%rax), %rax	# value_2(D)->un.addr.base, D.18721
	movl	16(%rax), %eax	# _51->fld[1].rtint, D.18722
	leal	4(%rax), %edx	#, D.18713
	movq	-40(%rbp), %rax	# value, tmp188
	movw	%dx, (%rax)	# D.18713, value_2(D)->kind
	.loc 1 3647 0
	movq	-40(%rbp), %rax	# value, tmp189
	movq	8(%rax), %rax	# value_2(D)->un.addr.base, D.18721
	movq	8(%rax), %rax	# _55->fld[0].rtvec, D.18719
	movq	8(%rax), %rdx	# _56->elem, D.18721
	movq	-40(%rbp), %rax	# value, tmp190
	movq	%rdx, 8(%rax)	# D.18721, value_2(D)->un.addr.base
.L719:
	.loc 1 3651 0
	movq	-40(%rbp), %rax	# value, tmp191
	movzwl	(%rax), %eax	# value_2(D)->kind, D.18713
	cmpw	$1, %ax	#, D.18713
	jbe	.L700	#,
	.loc 1 3651 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# value, tmp192
	movq	8(%rax), %rax	# value_2(D)->un.addr.base, D.18721
	testq	%rax, %rax	# D.18721
	je	.L700	#,
	.loc 1 3652 0 is_stmt 1
	movq	-40(%rbp), %rax	# value, tmp193
	movq	8(%rax), %rax	# value_2(D)->un.addr.base, D.18721
	movzwl	(%rax), %eax	# _60->code, D.18713
	movzwl	%ax, %eax	# D.18713, D.18714
	cmpl	$67, %eax	#, D.18714
	je	.L722	#,
	cmpl	$68, %eax	#, D.18714
	je	.L723	#,
	.loc 1 3665 0
	jmp	.L700	#
.L723:
	.loc 1 3657 0
	movq	-40(%rbp), %rax	# value, tmp194
	movq	8(%rax), %rax	# value_2(D)->un.addr.base, D.18721
	movq	8(%rax), %rdx	# _63->fld[0].rtstr, D.18723
	movq	-40(%rbp), %rax	# value, tmp195
	movq	%rdx, 8(%rax)	# D.18723, value_2(D)->un.addr.base
	.loc 1 3658 0
	jmp	.L700	#
.L722:
	.loc 1 3662 0
	movq	-40(%rbp), %rax	# value, tmp196
	movq	8(%rax), %rax	# value_2(D)->un.addr.base, D.18721
	movq	8(%rax), %rdx	# _65->fld[0].rtx, D.18721
	movq	-40(%rbp), %rax	# value, tmp197
	movq	%rdx, 8(%rax)	# D.18721, value_2(D)->un.addr.base
	.loc 1 3665 0
	nop
.L700:
	.loc 1 3667 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	decode_rtx_const, .-decode_rtx_const
	.globl	simplify_subtraction
	.type	simplify_subtraction, @function
simplify_subtraction:
.LFB81:
	.loc 1 3675 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$304, %rsp	#,
	movq	%rdi, -296(%rbp)	# x, x
	.loc 1 3678 0
	movq	-296(%rbp), %rax	# x, tmp75
	movq	8(%rax), %rcx	# x_2(D)->fld[0].rtx, D.18725
	movq	-296(%rbp), %rax	# x, tmp76
	movzbl	2(%rax), %eax	# x_2(D)->mode, D.18726
	movzbl	%al, %eax	# D.18726, D.18727
	leaq	-288(%rbp), %rdx	#, tmp77
	movq	%rcx, %rsi	# D.18725,
	movl	%eax, %edi	# D.18727,
	call	decode_rtx_const	#
	.loc 1 3679 0
	movq	-296(%rbp), %rax	# x, tmp78
	movq	16(%rax), %rcx	# x_2(D)->fld[1].rtx, D.18725
	movq	-296(%rbp), %rax	# x, tmp79
	movzbl	2(%rax), %eax	# x_2(D)->mode, D.18726
	movzbl	%al, %eax	# D.18726, D.18727
	leaq	-144(%rbp), %rdx	#, tmp80
	movq	%rcx, %rsi	# D.18725,
	movl	%eax, %edi	# D.18727,
	call	decode_rtx_const	#
	.loc 1 3681 0
	movzwl	-288(%rbp), %eax	# val0.kind, D.18728
	cmpw	$1, %ax	#, D.18728
	jbe	.L725	#,
	.loc 1 3682 0
	movzwl	-288(%rbp), %edx	# val0.kind, D.18728
	movzwl	-144(%rbp), %eax	# val1.kind, D.18728
	cmpw	%ax, %dx	# D.18728, D.18728
	jne	.L725	#,
	.loc 1 3683 0
	movq	-280(%rbp), %rdx	# val0.un.addr.base, D.18725
	movq	-136(%rbp), %rax	# val1.un.addr.base, D.18725
	cmpq	%rax, %rdx	# D.18725, D.18725
	jne	.L725	#,
	.loc 1 3684 0
	movq	-272(%rbp), %rdx	# val0.un.addr.offset, D.18729
	movq	-128(%rbp), %rax	# val1.un.addr.offset, D.18729
	subq	%rax, %rdx	# D.18729, D.18729
	movq	%rdx, %rax	# D.18729, D.18729
	movq	%rax, %rsi	# D.18729,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	jmp	.L727	#
.L725:
	.loc 1 3686 0
	movq	-296(%rbp), %rax	# x, D.18724
.L727:
	.loc 1 3687 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	simplify_subtraction, .-simplify_subtraction
	.type	const_hash_rtx, @function
const_hash_rtx:
.LFB82:
	.loc 1 3695 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$176, %rsp	#,
	movl	%edi, -164(%rbp)	# mode, mode
	movq	%rsi, -176(%rbp)	# x, x
	.loc 1 3700 0
	leaq	-144(%rbp), %rdx	#, tmp64
	movq	-176(%rbp), %rcx	# x, tmp65
	movl	-164(%rbp), %eax	# mode, tmp66
	movq	%rcx, %rsi	# tmp65,
	movl	%eax, %edi	# tmp66,
	call	decode_rtx_const	#
	.loc 1 3703 0
	movl	$0, -156(%rbp)	#, hi
	.loc 1 3704 0
	movq	$0, -152(%rbp)	#, i
	jmp	.L729	#
.L730:
	.loc 1 3705 0 discriminator 2
	movq	-152(%rbp), %rax	# i, tmp67
	leaq	0(,%rax,4), %rdx	#, D.18730
	leaq	-144(%rbp), %rax	#, tmp68
	addq	%rdx, %rax	# D.18730, D.18731
	movl	(%rax), %eax	# *_8, D.18732
	addl	%eax, -156(%rbp)	# D.18732, hi
	.loc 1 3704 0 discriminator 2
	addq	$1, -152(%rbp)	#, i
.L729:
	.loc 1 3704 0 is_stmt 0 discriminator 1
	cmpq	$33, -152(%rbp)	#, i
	jbe	.L730	#,
	.loc 1 3707 0 is_stmt 1
	andl	$1073741823, -156(%rbp)	#, hi
	.loc 1 3708 0
	movl	-156(%rbp), %ecx	# hi, tmp70
	movl	$1126548799, %edx	#, tmp72
	movl	%ecx, %eax	# tmp70, tmp78
	imull	%edx	# tmp72
	sarl	$4, %edx	#, tmp73
	movl	%ecx, %eax	# tmp70, tmp74
	sarl	$31, %eax	#, tmp74
	subl	%eax, %edx	# tmp74, tmp69
	movl	%edx, %eax	# tmp69, tmp69
	imull	$61, %eax, %eax	#, tmp69, tmp75
	subl	%eax, %ecx	# tmp75, tmp76
	movl	%ecx, %eax	# tmp76, tmp76
	movl	%eax, -156(%rbp)	# tmp76, hi
	.loc 1 3709 0
	movl	-156(%rbp), %eax	# hi, D.18732
	.loc 1 3710 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	const_hash_rtx, .-const_hash_rtx
	.type	compare_constant_rtx, @function
compare_constant_rtx:
.LFB83:
	.loc 1 3720 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$208, %rsp	#,
	movl	%edi, -180(%rbp)	# mode, mode
	movq	%rsi, -192(%rbp)	# x, x
	movq	%rdx, -200(%rbp)	# desc, desc
	.loc 1 3721 0
	movq	-200(%rbp), %rax	# desc, tmp68
	addq	$32, %rax	#, tmp67
	movq	%rax, -160(%rbp)	# tmp67, p
	.loc 1 3726 0
	leaq	-144(%rbp), %rdx	#, tmp69
	movq	-192(%rbp), %rcx	# x, tmp70
	movl	-180(%rbp), %eax	# mode, tmp71
	movq	%rcx, %rsi	# tmp70,
	movl	%eax, %edi	# tmp71,
	call	decode_rtx_const	#
	.loc 1 3727 0
	leaq	-144(%rbp), %rax	#, tmp72
	movq	%rax, -152(%rbp)	# tmp72, strp
	.loc 1 3728 0
	movl	$34, -164(%rbp)	#, len
	.loc 1 3731 0
	jmp	.L733	#
.L735:
	.loc 1 3732 0
	movq	-160(%rbp), %rax	# p, p.313
	leaq	4(%rax), %rdx	#, tmp73
	movq	%rdx, -160(%rbp)	# tmp73, p
	movl	(%rax), %ecx	# *p.313_12, D.18733
	movq	-152(%rbp), %rax	# strp, strp.314
	leaq	4(%rax), %rdx	#, tmp74
	movq	%rdx, -152(%rbp)	# tmp74, strp
	movl	(%rax), %eax	# *strp.314_15, D.18733
	cmpl	%eax, %ecx	# D.18733, D.18733
	je	.L733	#,
	.loc 1 3733 0
	movl	$0, %eax	#, D.18733
	jmp	.L736	#
.L733:
	.loc 1 3731 0 discriminator 1
	subl	$1, -164(%rbp)	#, len
	cmpl	$0, -164(%rbp)	#, len
	jns	.L735	#,
	.loc 1 3735 0
	movl	$1, %eax	#, D.18733
.L736:
	.loc 1 3736 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	compare_constant_rtx, .-compare_constant_rtx
	.type	record_constant_rtx, @function
record_constant_rtx:
.LFB84:
	.loc 1 3745 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# mode, mode
	movq	%rsi, -32(%rbp)	# x, x
	.loc 1 3748 0
	movl	$168, %esi	#,
	movl	$1, %edi	#,
	call	xcalloc	#
	movq	%rax, -8(%rbp)	# tmp62, ptr
	.loc 1 3751 0
	movq	-8(%rbp), %rax	# ptr, tmp63
	leaq	32(%rax), %rdx	#, D.18734
	movq	-32(%rbp), %rcx	# x, tmp64
	movl	-20(%rbp), %eax	# mode, tmp65
	movq	%rcx, %rsi	# tmp64,
	movl	%eax, %edi	# tmp65,
	call	decode_rtx_const	#
	.loc 1 3753 0
	movq	-8(%rbp), %rax	# ptr, D.18735
	.loc 1 3754 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	record_constant_rtx, .-record_constant_rtx
	.globl	mem_for_const_double
	.type	mem_for_const_double, @function
mem_for_const_double:
.LFB85:
	.loc 1 3762 0
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
	.loc 1 3763 0
	movq	-40(%rbp), %rax	# x, tmp70
	movzbl	2(%rax), %eax	# x_3(D)->mode, D.18737
	movzbl	%al, %eax	# D.18737, tmp71
	movl	%eax, -28(%rbp)	# tmp71, mode
	.loc 1 3766 0
	movq	cfun(%rip), %rax	# cfun, cfun.315
	movq	32(%rax), %rax	# cfun.315_6->varasm, D.18738
	movq	(%rax), %rbx	# _7->x_const_rtx_hash_table, D.18739
	movq	-40(%rbp), %rdx	# x, tmp72
	movl	-28(%rbp), %eax	# mode, tmp73
	movq	%rdx, %rsi	# tmp72,
	movl	%eax, %edi	# tmp73,
	call	const_hash_rtx	#
	cltq
	salq	$3, %rax	#, D.18741
	addq	%rbx, %rax	# D.18739, D.18739
	movq	(%rax), %rax	# *_12, tmp74
	movq	%rax, -24(%rbp)	# tmp74, desc
	jmp	.L740	#
.L743:
	.loc 1 3768 0
	movq	-24(%rbp), %rdx	# desc, tmp75
	movq	-40(%rbp), %rcx	# x, tmp76
	movl	-28(%rbp), %eax	# mode, tmp77
	movq	%rcx, %rsi	# tmp76,
	movl	%eax, %edi	# tmp77,
	call	compare_constant_rtx	#
	testl	%eax, %eax	# D.18740
	je	.L741	#,
	.loc 1 3769 0
	movq	-24(%rbp), %rax	# desc, tmp78
	movq	16(%rax), %rax	# desc_1->rtl, D.18736
	jmp	.L742	#
.L741:
	.loc 1 3767 0
	movq	-24(%rbp), %rax	# desc, tmp79
	movq	(%rax), %rax	# desc_1->next, tmp80
	movq	%rax, -24(%rbp)	# tmp80, desc
.L740:
	.loc 1 3766 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, desc
	jne	.L743	#,
	.loc 1 3771 0
	movl	$0, %eax	#, D.18736
.L742:
	.loc 1 3772 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	mem_for_const_double, .-mem_for_const_double
	.globl	force_const_mem
	.type	force_const_mem, @function
force_const_mem:
.LFB86:
	.loc 1 3781 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$328, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -324(%rbp)	# mode, mode
	movq	%rsi, -336(%rbp)	# x, x
	.loc 1 3781 0
	movq	%fs:40, %rax	#, tmp243
	movq	%rax, -24(%rbp)	# tmp243, D.18757
	xorl	%eax, %eax	# tmp243
	.loc 1 3791 0
	movq	-336(%rbp), %rdx	# x, tmp161
	movl	-324(%rbp), %eax	# mode, tmp162
	movq	%rdx, %rsi	# tmp161,
	movl	%eax, %edi	# tmp162,
	call	const_hash_rtx	#
	movl	%eax, -320(%rbp)	# tmp163, hash
	.loc 1 3792 0
	movq	cfun(%rip), %rax	# cfun, cfun.316
	movq	32(%rax), %rax	# cfun.316_8->varasm, D.18743
	movq	(%rax), %rax	# _9->x_const_rtx_hash_table, D.18744
	movl	-320(%rbp), %edx	# hash, tmp164
	movslq	%edx, %rdx	# tmp164, D.18745
	salq	$3, %rdx	#, D.18745
	addq	%rdx, %rax	# D.18745, D.18744
	movq	(%rax), %rax	# *_13, tmp165
	movq	%rax, -312(%rbp)	# tmp165, desc
	jmp	.L745	#
.L748:
	.loc 1 3793 0
	movq	-312(%rbp), %rdx	# desc, tmp166
	movq	-336(%rbp), %rcx	# x, tmp167
	movl	-324(%rbp), %eax	# mode, tmp168
	movq	%rcx, %rsi	# tmp167,
	movl	%eax, %edi	# tmp168,
	call	compare_constant_rtx	#
	testl	%eax, %eax	# D.18746
	je	.L746	#,
	.loc 1 3794 0
	movq	-312(%rbp), %rax	# desc, tmp169
	movq	16(%rax), %rax	# desc_1->rtl, D.18742
	jmp	.L756	#
.L746:
	.loc 1 3792 0
	movq	-312(%rbp), %rax	# desc, tmp170
	movq	(%rax), %rax	# desc_1->next, tmp171
	movq	%rax, -312(%rbp)	# tmp171, desc
.L745:
	.loc 1 3792 0 is_stmt 0 discriminator 1
	cmpq	$0, -312(%rbp)	#, desc
	jne	.L748	#,
	.loc 1 3799 0 is_stmt 1
	movq	-336(%rbp), %rdx	# x, tmp172
	movl	-324(%rbp), %eax	# mode, tmp173
	movq	%rdx, %rsi	# tmp172,
	movl	%eax, %edi	# tmp173,
	call	record_constant_rtx	#
	movq	%rax, -312(%rbp)	# tmp174, desc
	.loc 1 3800 0
	movq	cfun(%rip), %rax	# cfun, cfun.317
	movq	32(%rax), %rax	# cfun.317_19->varasm, D.18743
	movq	(%rax), %rax	# _20->x_const_rtx_hash_table, D.18744
	movl	-320(%rbp), %edx	# hash, tmp175
	movslq	%edx, %rdx	# tmp175, D.18745
	salq	$3, %rdx	#, D.18745
	addq	%rdx, %rax	# D.18745, D.18744
	movq	(%rax), %rdx	# *_24, D.18747
	movq	-312(%rbp), %rax	# desc, tmp176
	movq	%rdx, (%rax)	# D.18747, desc_18->next
	.loc 1 3801 0
	movq	cfun(%rip), %rax	# cfun, cfun.318
	movq	32(%rax), %rax	# cfun.318_26->varasm, D.18743
	movq	(%rax), %rax	# _27->x_const_rtx_hash_table, D.18744
	movl	-320(%rbp), %edx	# hash, tmp177
	movslq	%edx, %rdx	# tmp177, D.18745
	salq	$3, %rdx	#, D.18745
	addq	%rax, %rdx	# D.18744, D.18744
	movq	-312(%rbp), %rax	# desc, tmp178
	movq	%rax, (%rdx)	# tmp178, *_31
	.loc 1 3804 0
	cmpl	$0, -324(%rbp)	#, mode
	jne	.L749	#,
	.loc 1 3804 0 is_stmt 0 discriminator 1
	movl	word_mode(%rip), %eax	# word_mode, iftmp.319
	jmp	.L750	#
.L749:
	.loc 1 3804 0 discriminator 2
	movl	-324(%rbp), %eax	# mode, iftmp.319
.L750:
	.loc 1 3804 0 discriminator 3
	movl	%eax, %edi	# iftmp.319,
	call	get_mode_alignment	#
	movl	%eax, -316(%rbp)	# tmp179, align
	.loc 1 3806 0 is_stmt 1 discriminator 3
	movl	-316(%rbp), %ebx	# align, align.320
	movl	-324(%rbp), %eax	# mode, tmp180
	movl	$0, %esi	#,
	movl	%eax, %edi	# tmp180,
	call	type_for_mode	#
	movq	-336(%rbp), %rdx	# x, tmp181
	movq	%rdx, %rsi	# tmp181,
	movq	%rax, %rdi	# D.18748,
	call	make_tree	#
	movl	%ebx, %esi	# align.320,
	movq	%rax, %rdi	# D.18748,
	call	ix86_constant_alignment	#
	movl	%eax, -316(%rbp)	# D.18746, align
	.loc 1 3809 0 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.321
	movq	32(%rax), %rax	# cfun.321_40->varasm, D.18743
	movq	cfun(%rip), %rdx	# cfun, cfun.322
	movq	32(%rdx), %rdx	# cfun.322_42->varasm, D.18743
	movq	32(%rdx), %rcx	# _43->x_pool_offset, D.18749
	movl	-316(%rbp), %edx	# align, tmp182
	shrl	$3, %edx	#, D.18750
	subl	$1, %edx	#, D.18750
	movl	%edx, %edx	# D.18750, D.18749
	addq	%rcx, %rdx	# D.18749, D.18749
	movq	%rdx, 32(%rax)	# D.18749, _41->x_pool_offset
	.loc 1 3810 0 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.323
	movq	32(%rax), %rax	# cfun.323_49->varasm, D.18743
	movq	cfun(%rip), %rdx	# cfun, cfun.324
	movq	32(%rdx), %rdx	# cfun.324_51->varasm, D.18743
	movq	32(%rdx), %rcx	# _52->x_pool_offset, D.18749
	movl	-316(%rbp), %edx	# align, tmp183
	shrl	$3, %edx	#, D.18750
	negl	%edx	# D.18750
	movl	%edx, %edx	# D.18750, D.18749
	andq	%rcx, %rdx	# D.18749, D.18749
	movq	%rdx, 32(%rax)	# D.18749, _50->x_pool_offset
	.loc 1 3812 0 discriminator 3
	movq	-336(%rbp), %rax	# x, tmp184
	movzwl	(%rax), %eax	# x_6(D)->code, D.18751
	cmpw	$67, %ax	#, D.18751
	jne	.L751	#,
	.loc 1 3813 0
	movq	-336(%rbp), %rax	# x, tmp185
	movq	8(%rax), %rax	# x_6(D)->fld[0].rtx, D.18752
	movzbl	3(%rax), %edx	# _59->in_struct, tmp188
	orl	$16, %edx	#, tmp189
	movb	%dl, 3(%rax)	# tmp189, _59->in_struct
.L751:
	.loc 1 3816 0
	movl	$64, %edi	#,
	call	ggc_alloc	#
	movq	%rax, -304(%rbp)	# tmp190, pool
	.loc 1 3817 0
	movq	-304(%rbp), %rax	# pool, tmp191
	movq	-312(%rbp), %rdx	# desc, tmp192
	movq	%rdx, (%rax)	# tmp192, pool_60->desc
	.loc 1 3818 0
	movq	-304(%rbp), %rax	# pool, tmp193
	movq	-336(%rbp), %rdx	# x, tmp194
	movq	%rdx, 24(%rax)	# tmp194, pool_60->constant
	.loc 1 3819 0
	movq	-304(%rbp), %rax	# pool, tmp195
	movl	-324(%rbp), %edx	# mode, tmp196
	movl	%edx, 32(%rax)	# tmp196, pool_60->mode
	.loc 1 3820 0
	movl	const_labelno(%rip), %edx	# const_labelno, const_labelno.325
	movq	-304(%rbp), %rax	# pool, tmp197
	movl	%edx, 36(%rax)	# const_labelno.325, pool_60->labelno
	.loc 1 3821 0
	movq	-304(%rbp), %rax	# pool, tmp198
	movl	-316(%rbp), %edx	# align, tmp199
	movl	%edx, 40(%rax)	# tmp199, pool_60->align
	.loc 1 3822 0
	movq	cfun(%rip), %rax	# cfun, cfun.326
	movq	32(%rax), %rax	# cfun.326_62->varasm, D.18743
	movq	32(%rax), %rdx	# _63->x_pool_offset, D.18749
	movq	-304(%rbp), %rax	# pool, tmp200
	movq	%rdx, 48(%rax)	# D.18749, pool_60->offset
	.loc 1 3823 0
	movq	-304(%rbp), %rax	# pool, tmp201
	movl	$1, 56(%rax)	#, pool_60->mark
	.loc 1 3824 0
	movq	-304(%rbp), %rax	# pool, tmp202
	movq	$0, 8(%rax)	#, pool_60->next
	.loc 1 3826 0
	movq	cfun(%rip), %rax	# cfun, cfun.327
	movq	32(%rax), %rax	# cfun.327_65->varasm, D.18743
	movq	24(%rax), %rax	# _66->x_last_pool, D.18753
	testq	%rax, %rax	# D.18753
	jne	.L752	#,
	.loc 1 3827 0
	movq	cfun(%rip), %rax	# cfun, cfun.328
	movq	32(%rax), %rax	# cfun.328_68->varasm, D.18743
	movq	-304(%rbp), %rdx	# pool, tmp203
	movq	%rdx, 16(%rax)	# tmp203, _69->x_first_pool
	jmp	.L753	#
.L752:
	.loc 1 3829 0
	movq	cfun(%rip), %rax	# cfun, cfun.329
	movq	32(%rax), %rax	# cfun.329_70->varasm, D.18743
	movq	24(%rax), %rax	# _71->x_last_pool, D.18753
	movq	-304(%rbp), %rdx	# pool, tmp204
	movq	%rdx, 8(%rax)	# tmp204, _72->next
.L753:
	.loc 1 3831 0
	movq	cfun(%rip), %rax	# cfun, cfun.330
	movq	32(%rax), %rax	# cfun.330_73->varasm, D.18743
	movq	-304(%rbp), %rdx	# pool, tmp205
	movq	%rdx, 24(%rax)	# tmp205, _74->x_last_pool
	.loc 1 3832 0
	movq	cfun(%rip), %rax	# cfun, cfun.331
	movq	32(%rax), %rax	# cfun.331_75->varasm, D.18743
	movq	cfun(%rip), %rdx	# cfun, cfun.332
	movq	32(%rdx), %rdx	# cfun.332_77->varasm, D.18743
	movq	32(%rdx), %rcx	# _78->x_pool_offset, D.18749
	movl	-324(%rbp), %edx	# mode, mode.333
	movslq	%edx, %rdx	# mode.333, tmp206
	movzbl	mode_size(%rdx), %edx	# mode_size, D.18754
	movzbl	%dl, %edx	# D.18754, D.18749
	addq	%rcx, %rdx	# D.18749, D.18749
	movq	%rdx, 32(%rax)	# D.18749, _76->x_pool_offset
	.loc 1 3835 0
	movl	const_labelno(%rip), %eax	# const_labelno, const_labelno.334
	movl	%eax, %edx	# const_labelno.334, const_labelno.335
	leaq	-288(%rbp), %rax	#, tmp207
	movl	%edx, %ecx	# const_labelno.335,
	movl	$.LC65, %edx	#,
	movl	$.LC49, %esi	#,
	movq	%rax, %rdi	# tmp207,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 1 3837 0
	movl	const_labelno(%rip), %eax	# const_labelno, const_labelno.336
	addl	$1, %eax	#, const_labelno.337
	movl	%eax, const_labelno(%rip)	# const_labelno.337, const_labelno
	.loc 1 3841 0
	movq	-304(%rbp), %rax	# pool, tmp208
	movq	(%rax), %rbx	# pool_60->desc, D.18747
	.loc 1 3842 0
	leaq	-288(%rbp), %rax	#, tmp209
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# tmp209,
	call	ggc_alloc_string	#
	movq	%rax, %rdx	#, D.18755
	movl	target_flags(%rip), %eax	# target_flags, target_flags.339
	andl	$33554432, %eax	#, D.18746
	testl	%eax, %eax	# D.18746
	je	.L754	#,
	.loc 1 3842 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.338
	jmp	.L755	#
.L754:
	.loc 1 3842 0 discriminator 2
	movl	$4, %eax	#, iftmp.338
.L755:
	.loc 1 3842 0 discriminator 3
	movl	%eax, %esi	# iftmp.338,
	movl	$68, %edi	#,
	call	gen_rtx_fmt_s	#
	movq	%rax, %rdx	#, D.18752
	.loc 1 3841 0 is_stmt 1 discriminator 3
	movl	-324(%rbp), %eax	# mode, tmp210
	movq	%rdx, %rsi	# D.18752,
	movl	%eax, %edi	# tmp210,
	call	gen_rtx_MEM	#
	movq	%rax, -296(%rbp)	# tmp211, def
	movq	-296(%rbp), %rax	# def, tmp212
	movq	%rax, 16(%rbx)	# tmp212, _88->rtl
	.loc 1 3843 0 discriminator 3
	movq	const_alias_set(%rip), %rdx	# const_alias_set, const_alias_set.340
	movq	-296(%rbp), %rax	# def, tmp213
	movq	%rdx, %rsi	# const_alias_set.340,
	movq	%rax, %rdi	# tmp213,
	call	set_mem_alias_set	#
	.loc 1 3844 0 discriminator 3
	movl	-324(%rbp), %eax	# mode, tmp214
	movl	$0, %esi	#,
	movl	%eax, %edi	# tmp214,
	call	type_for_mode	#
	movq	%rax, %rcx	#, D.18748
	movq	-296(%rbp), %rax	# def, tmp215
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# D.18748,
	movq	%rax, %rdi	# tmp215,
	call	set_mem_attributes	#
	.loc 1 3845 0 discriminator 3
	movq	-296(%rbp), %rax	# def, tmp216
	movzbl	3(%rax), %edx	# def_95->unchanging, tmp219
	orl	$4, %edx	#, tmp220
	movb	%dl, 3(%rax)	# tmp220, def_95->unchanging
	.loc 1 3848 0 discriminator 3
	movq	-296(%rbp), %rax	# def, tmp221
	movq	8(%rax), %rax	# def_95->fld[0].rtx, D.18752
	movq	8(%rax), %rax	# _98->fld[0].rtstr, D.18755
	andl	$1073741823, %eax	#, D.18745
	movq	%rax, %rcx	# D.18745, D.18745
	movabsq	$907216921657846801, %rdx	#, tmp223
	movq	%rcx, %rax	# D.18745, tmp244
	mulq	%rdx	# tmp223
	movq	%rcx, %rax	# D.18745, tmp224
	subq	%rdx, %rax	# tmp222, tmp224
	shrq	%rax	# tmp225
	addq	%rdx, %rax	# tmp222, tmp226
	shrq	$5, %rax	#, D.18745
	movq	%rax, %rdx	# D.18745, D.18745
	movq	%rdx, %rax	# D.18745, tmp227
	salq	$4, %rax	#, tmp228
	subq	%rdx, %rax	# D.18745, tmp227
	salq	$2, %rax	#, tmp227
	addq	%rdx, %rax	# D.18745, tmp227
	subq	%rax, %rcx	# tmp227, D.18745
	movq	%rcx, %rdx	# D.18745, D.18745
	movl	%edx, -320(%rbp)	# D.18745, hash
	.loc 1 3849 0 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.341
	movq	32(%rax), %rax	# cfun.341_104->varasm, D.18743
	movq	8(%rax), %rax	# _105->x_const_rtx_sym_hash_table, D.18756
	movl	-320(%rbp), %edx	# hash, tmp229
	movslq	%edx, %rdx	# tmp229, D.18745
	salq	$3, %rdx	#, D.18745
	addq	%rdx, %rax	# D.18745, D.18756
	movq	(%rax), %rdx	# *_109, D.18753
	movq	-304(%rbp), %rax	# pool, tmp230
	movq	%rdx, 16(%rax)	# D.18753, pool_60->next_sym
	.loc 1 3850 0 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.342
	movq	32(%rax), %rax	# cfun.342_111->varasm, D.18743
	movq	8(%rax), %rax	# _112->x_const_rtx_sym_hash_table, D.18756
	movl	-320(%rbp), %edx	# hash, tmp231
	movslq	%edx, %rdx	# tmp231, D.18745
	salq	$3, %rdx	#, D.18745
	addq	%rax, %rdx	# D.18756, D.18756
	movq	-304(%rbp), %rax	# pool, tmp232
	movq	%rax, (%rdx)	# tmp232, *_116
	.loc 1 3853 0 discriminator 3
	movq	-296(%rbp), %rax	# def, tmp233
	movq	8(%rax), %rax	# def_95->fld[0].rtx, D.18752
	movzbl	3(%rax), %edx	# _117->unchanging, tmp236
	orl	$4, %edx	#, tmp237
	movb	%dl, 3(%rax)	# tmp237, _117->unchanging
	.loc 1 3854 0 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.343
	movzbl	426(%rax), %edx	#, tmp240
	orl	$16, %edx	#, tmp241
	movb	%dl, 426(%rax)	# tmp241,
	.loc 1 3856 0 discriminator 3
	movq	-296(%rbp), %rax	# def, D.18742
.L756:
	.loc 1 3857 0
	movq	-24(%rbp), %rbx	# D.18757, tmp245
	xorq	%fs:40, %rbx	#, tmp245
	je	.L757	#,
	call	__stack_chk_fail	#
.L757:
	addq	$328, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE86:
	.size	force_const_mem, .-force_const_mem
	.type	find_pool_constant, @function
find_pool_constant:
.LFB87:
	.loc 1 3866 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	movq	%rsi, -32(%rbp)	# addr, addr
	.loc 1 3868 0
	movq	-32(%rbp), %rax	# addr, tmp72
	movq	8(%rax), %rax	# addr_2(D)->fld[0].rtstr, tmp73
	movq	%rax, -8(%rbp)	# tmp73, label
	.loc 1 3870 0
	movq	-24(%rbp), %rax	# f, tmp74
	movq	32(%rax), %rax	# f_4(D)->varasm, D.18758
	movq	8(%rax), %rsi	# _5->x_const_rtx_sym_hash_table, D.18759
	movq	-8(%rbp), %rax	# label, label.344
	andl	$1073741823, %eax	#, D.18760
	movq	%rax, %rcx	# D.18760, D.18760
	movabsq	$907216921657846801, %rdx	#, tmp76
	movq	%rcx, %rax	# D.18760, tmp87
	mulq	%rdx	# tmp76
	movq	%rcx, %rax	# D.18760, tmp77
	subq	%rdx, %rax	# tmp75, tmp77
	shrq	%rax	# tmp78
	addq	%rdx, %rax	# tmp75, tmp79
	shrq	$5, %rax	#, D.18760
	movq	%rax, %rdx	# D.18760, D.18760
	movq	%rdx, %rax	# D.18760, tmp80
	salq	$4, %rax	#, tmp81
	subq	%rdx, %rax	# D.18760, tmp80
	salq	$2, %rax	#, tmp80
	addq	%rdx, %rax	# D.18760, tmp80
	subq	%rax, %rcx	# tmp80, D.18760
	movq	%rcx, %rdx	# D.18760, D.18760
	leaq	0(,%rdx,8), %rax	#, D.18760
	addq	%rsi, %rax	# D.18759, D.18759
	movq	(%rax), %rax	# *_11, tmp82
	movq	%rax, -16(%rbp)	# tmp82, pool
	jmp	.L759	#
.L762:
	.loc 1 3872 0
	movq	-16(%rbp), %rax	# pool, tmp83
	movq	(%rax), %rax	# pool_1->desc, D.18761
	movq	16(%rax), %rax	# _13->rtl, D.18762
	movq	8(%rax), %rax	# _14->fld[0].rtx, D.18762
	movq	8(%rax), %rax	# _15->fld[0].rtstr, D.18763
	cmpq	-8(%rbp), %rax	# label, D.18763
	jne	.L760	#,
	.loc 1 3873 0
	movq	-16(%rbp), %rax	# pool, D.18764
	jmp	.L763	#
.L760:
	.loc 1 3871 0
	movq	-16(%rbp), %rax	# pool, tmp84
	movq	16(%rax), %rax	# pool_1->next_sym, tmp85
	movq	%rax, -16(%rbp)	# tmp85, pool
.L759:
	.loc 1 3870 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, pool
	jne	.L762	#,
	.loc 1 3875 0
	movl	$__FUNCTION__.13784, %edx	#,
	movl	$3875, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L763:
	.loc 1 3876 0 discriminator 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE87:
	.size	find_pool_constant, .-find_pool_constant
	.globl	get_pool_constant
	.type	get_pool_constant, @function
get_pool_constant:
.LFB88:
	.loc 1 3883 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# addr, addr
	.loc 1 3884 0
	movq	cfun(%rip), %rax	# cfun, cfun.345
	movq	-8(%rbp), %rdx	# addr, tmp63
	movq	%rdx, %rsi	# tmp63,
	movq	%rax, %rdi	# cfun.345,
	call	find_pool_constant	#
	movq	24(%rax), %rax	# _3->constant, D.18766
	.loc 1 3885 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE88:
	.size	get_pool_constant, .-get_pool_constant
	.globl	get_pool_constant_mark
	.type	get_pool_constant_mark, @function
get_pool_constant_mark:
.LFB89:
	.loc 1 3894 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# addr, addr
	movq	%rsi, -32(%rbp)	# pmarked, pmarked
	.loc 1 3895 0
	movq	cfun(%rip), %rax	# cfun, cfun.346
	movq	-24(%rbp), %rdx	# addr, tmp64
	movq	%rdx, %rsi	# tmp64,
	movq	%rax, %rdi	# cfun.346,
	call	find_pool_constant	#
	movq	%rax, -8(%rbp)	# tmp65, pool
	.loc 1 3896 0
	movq	-8(%rbp), %rax	# pool, tmp66
	movl	56(%rax), %eax	# pool_3->mark, D.18767
	testl	%eax, %eax	# D.18767
	setne	%dl	#, D.18768
	movq	-32(%rbp), %rax	# pmarked, tmp67
	movb	%dl, (%rax)	# D.18768, *pmarked_6(D)
	.loc 1 3897 0
	movq	-8(%rbp), %rax	# pool, tmp68
	movq	24(%rax), %rax	# pool_3->constant, D.18769
	.loc 1 3898 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE89:
	.size	get_pool_constant_mark, .-get_pool_constant_mark
	.globl	get_pool_constant_for_function
	.type	get_pool_constant_for_function, @function
get_pool_constant_for_function:
.LFB90:
	.loc 1 3906 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# f, f
	movq	%rsi, -16(%rbp)	# addr, addr
	.loc 1 3907 0
	movq	-16(%rbp), %rdx	# addr, tmp62
	movq	-8(%rbp), %rax	# f, tmp63
	movq	%rdx, %rsi	# tmp62,
	movq	%rax, %rdi	# tmp63,
	call	find_pool_constant	#
	movq	24(%rax), %rax	# _3->constant, D.18771
	.loc 1 3908 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE90:
	.size	get_pool_constant_for_function, .-get_pool_constant_for_function
	.globl	get_pool_mode
	.type	get_pool_mode, @function
get_pool_mode:
.LFB91:
	.loc 1 3915 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# addr, addr
	.loc 1 3916 0
	movq	cfun(%rip), %rax	# cfun, cfun.347
	movq	-8(%rbp), %rdx	# addr, tmp63
	movq	%rdx, %rsi	# tmp63,
	movq	%rax, %rdi	# cfun.347,
	call	find_pool_constant	#
	movl	32(%rax), %eax	# _3->mode, D.18773
	.loc 1 3917 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE91:
	.size	get_pool_mode, .-get_pool_mode
	.globl	get_pool_mode_for_function
	.type	get_pool_mode_for_function, @function
get_pool_mode_for_function:
.LFB92:
	.loc 1 3923 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# f, f
	movq	%rsi, -16(%rbp)	# addr, addr
	.loc 1 3924 0
	movq	-16(%rbp), %rdx	# addr, tmp62
	movq	-8(%rbp), %rax	# f, tmp63
	movq	%rdx, %rsi	# tmp62,
	movq	%rax, %rdi	# tmp63,
	call	find_pool_constant	#
	movl	32(%rax), %eax	# _3->mode, D.18775
	.loc 1 3925 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE92:
	.size	get_pool_mode_for_function, .-get_pool_mode_for_function
	.globl	get_pool_offset
	.type	get_pool_offset, @function
get_pool_offset:
.LFB93:
	.loc 1 3932 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# addr, addr
	.loc 1 3933 0
	movq	cfun(%rip), %rax	# cfun, cfun.348
	movq	-8(%rbp), %rdx	# addr, tmp64
	movq	%rdx, %rsi	# tmp64,
	movq	%rax, %rdi	# cfun.348,
	call	find_pool_constant	#
	movq	48(%rax), %rax	# _3->offset, D.18777
	.loc 1 3934 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE93:
	.size	get_pool_offset, .-get_pool_offset
	.globl	get_pool_size
	.type	get_pool_size, @function
get_pool_size:
.LFB94:
	.loc 1 3940 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 3941 0
	movq	cfun(%rip), %rax	# cfun, cfun.349
	movq	32(%rax), %rax	# cfun.349_1->varasm, D.18779
	movq	32(%rax), %rax	# _2->x_pool_offset, D.18780
	.loc 1 3942 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE94:
	.size	get_pool_size, .-get_pool_size
	.globl	output_constant_pool
	.type	output_constant_pool, @function
output_constant_pool:
.LFB95:
	.loc 1 3950 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$144, %rsp	#,
	movq	%rdi, -104(%rbp)	# fnname, fnname
	movq	%rsi, -112(%rbp)	# fndecl, fndecl
	.loc 1 3958 0
	call	mark_constant_pool	#
	.loc 1 3964 0
	movq	cfun(%rip), %rax	# cfun, cfun.350
	movq	32(%rax), %rax	# cfun.350_4->varasm, D.18782
	movq	16(%rax), %rax	# _5->x_first_pool, tmp115
	movq	%rax, -72(%rbp)	# tmp115, pool
	jmp	.L779	#
.L801:
.LBB84:
	.loc 1 3968 0
	movq	-72(%rbp), %rax	# pool, tmp116
	movq	24(%rax), %rax	# pool_1->constant, tmp117
	movq	%rax, -64(%rbp)	# tmp117, x
	.loc 1 3970 0
	movq	-72(%rbp), %rax	# pool, tmp118
	movl	56(%rax), %eax	# pool_1->mark, D.18783
	testl	%eax, %eax	# D.18783
	jne	.L780	#,
	.loc 1 3971 0
	jmp	.L781	#
.L780:
	.loc 1 3982 0
	movq	-64(%rbp), %rax	# x, tmp119
	movq	%rax, -56(%rbp)	# tmp119, tmp
	.loc 1 3983 0
	movq	-64(%rbp), %rax	# x, tmp120
	movzwl	(%rax), %eax	# x_7->code, D.18784
	movzwl	%ax, %eax	# D.18784, D.18785
	cmpl	$58, %eax	#, D.18785
	je	.L783	#,
	cmpl	$67, %eax	#, D.18785
	je	.L784	#,
	.loc 1 4004 0
	jmp	.L785	#
.L783:
	.loc 1 3986 0
	movq	-64(%rbp), %rax	# x, tmp121
	movq	8(%rax), %rax	# x_7->fld[0].rtx, D.18786
	movzwl	(%rax), %eax	# _12->code, D.18784
	cmpw	$75, %ax	#, D.18784
	jne	.L785	#,
	.loc 1 3987 0
	movq	-64(%rbp), %rax	# x, tmp122
	movq	8(%rax), %rax	# x_7->fld[0].rtx, D.18786
	movq	8(%rax), %rax	# _14->fld[0].rtx, D.18786
	movzwl	(%rax), %eax	# _15->code, D.18784
	cmpw	$67, %ax	#, D.18784
	jne	.L785	#,
	.loc 1 3989 0
	movq	-64(%rbp), %rax	# x, tmp123
	movq	8(%rax), %rax	# x_7->fld[0].rtx, D.18786
	movq	8(%rax), %rax	# _17->fld[0].rtx, tmp124
	movq	%rax, -56(%rbp)	# tmp124, tmp
.L784:
	.loc 1 3993 0
	movq	-64(%rbp), %rax	# x, tmp125
	movq	8(%rax), %rax	# x_7->fld[0].rtx, tmp126
	movq	%rax, -56(%rbp)	# tmp126, tmp
	.loc 1 3994 0
	movq	-56(%rbp), %rax	# tmp, tmp127
	movzbl	3(%rax), %eax	# *tmp_19, D.18787
	andl	$8, %eax	#, D.18787
	testb	%al, %al	# D.18787
	jne	.L786	#,
	.loc 1 3995 0
	movq	-56(%rbp), %rax	# tmp, tmp128
	movzwl	(%rax), %eax	# tmp_19->code, D.18784
	cmpw	$37, %ax	#, D.18784
	jne	.L787	#,
	.loc 1 3996 0
	movq	-56(%rbp), %rax	# tmp, tmp129
	movl	40(%rax), %eax	# tmp_19->fld[4].rtint, D.18783
	cmpl	$-99, %eax	#, D.18783
	jne	.L787	#,
.L786:
	.loc 1 3998 0
	movl	$__FUNCTION__.13821, %edx	#,
	movl	$3998, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L787:
	.loc 1 4001 0
	nop
.L785:
	.loc 1 4009 0
	movq	-72(%rbp), %rax	# pool, tmp130
	movl	40(%rax), %eax	# pool_1->align, D.18785
	movl	%eax, %ecx	# D.18785, D.18788
	movq	-72(%rbp), %rax	# pool, tmp131
	movl	32(%rax), %eax	# pool_1->mode, D.18789
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.18788,
	movl	%eax, %edi	# D.18789,
	call	mergeable_constant_section	#
	.loc 1 4019 0
	movq	-72(%rbp), %rax	# pool, tmp132
	movl	40(%rax), %eax	# pool_1->align, D.18785
	movl	%eax, %edi	# D.18783,
	call	assemble_align	#
	.loc 1 4022 0
	movq	-72(%rbp), %rax	# pool, tmp133
	movl	36(%rax), %eax	# pool_1->labelno, D.18783
	movl	%eax, %edx	# D.18783, D.18785
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.351
	movl	%edx, %ecx	# D.18785,
	movl	$.LC65, %edx	#,
	movl	$.LC50, %esi	#,
	movq	%rax, %rdi	# asm_out_file.351,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 4025 0
	movq	-72(%rbp), %rax	# pool, tmp134
	movl	32(%rax), %eax	# pool_1->mode, D.18789
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.18790
	cmpl	$8, %eax	#, D.18790
	ja	.L788	#,
	movl	%eax, %eax	# D.18790, tmp136
	movq	.L790(,%rax,8), %rax	#, tmp137
	jmp	*%rax	# tmp137
	.section	.rodata
	.align 8
	.align 4
.L790:
	.quad	.L788
	.quad	.L789
	.quad	.L791
	.quad	.L789
	.quad	.L788
	.quad	.L788
	.quad	.L788
	.quad	.L792
	.quad	.L793
	.text
.L791:
	.loc 1 4028 0
	movq	-64(%rbp), %rax	# x, tmp138
	movzwl	(%rax), %eax	# x_7->code, D.18784
	cmpw	$55, %ax	#, D.18784
	je	.L794	#,
	.loc 1 4029 0
	movl	$__FUNCTION__.13821, %edx	#,
	movl	$4029, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L794:
	.loc 1 4031 0
	movq	-64(%rbp), %rax	# x, tmp139
	leaq	16(%rax), %rcx	#, D.18791
	leaq	-32(%rbp), %rax	#, tmp140
	movl	$24, %edx	#,
	movq	%rcx, %rsi	# D.18791,
	movq	%rax, %rdi	# tmp140,
	call	memcpy	#
	.loc 1 4032 0
	movq	-72(%rbp), %rax	# pool, tmp141
	movl	40(%rax), %edx	# pool_1->align, D.18785
	movq	-72(%rbp), %rax	# pool, tmp142
	movl	32(%rax), %eax	# pool_1->mode, D.18789
	movq	-32(%rbp), %rcx	# u.d, tmp143
	movq	%rcx, (%rsp)	# tmp143,
	movq	-24(%rbp), %rcx	# u.d, tmp144
	movq	%rcx, 8(%rsp)	# tmp144,
	movq	-16(%rbp), %rcx	# u.d, tmp145
	movq	%rcx, 16(%rsp)	# tmp145,
	movl	%edx, %esi	# D.18785,
	movl	%eax, %edi	# D.18789,
	call	assemble_real	#
	.loc 1 4033 0
	jmp	.L781	#
.L789:
	.loc 1 4037 0
	movq	-72(%rbp), %rax	# pool, tmp146
	movl	40(%rax), %edx	# pool_1->align, D.18785
	movq	-72(%rbp), %rax	# pool, tmp147
	movl	32(%rax), %eax	# pool_1->mode, D.18789
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.18787
	movzbl	%al, %esi	# D.18787, D.18785
	movq	-64(%rbp), %rax	# x, tmp149
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp149,
	call	assemble_integer	#
	.loc 1 4038 0
	jmp	.L781	#
.L793:
.LBB85:
	.loc 1 4045 0
	movq	-64(%rbp), %rax	# x, tmp150
	movzwl	(%rax), %eax	# x_7->code, D.18784
	cmpw	$56, %ax	#, D.18784
	je	.L795	#,
	.loc 1 4046 0
	movl	$__FUNCTION__.13821, %edx	#,
	movl	$4046, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L795:
	.loc 1 4048 0
	movq	-64(%rbp), %rax	# x, tmp151
	movq	8(%rax), %rax	# x_7->fld[0].rtvec, D.18792
	movl	(%rax), %eax	# _45->num_elem, tmp152
	movl	%eax, -80(%rbp)	# tmp152, units
	.loc 1 4050 0
	movl	$0, -88(%rbp)	#, i
	jmp	.L796	#
.L797:
	.loc 1 4052 0 discriminator 2
	movq	-64(%rbp), %rax	# x, tmp153
	movq	8(%rax), %rax	# x_7->fld[0].rtvec, D.18792
	movl	-88(%rbp), %edx	# i, tmp155
	movslq	%edx, %rdx	# tmp155, tmp154
	movq	8(%rax,%rdx,8), %rax	# _48->elem, tmp156
	movq	%rax, -48(%rbp)	# tmp156, elt
	.loc 1 4054 0 discriminator 2
	movq	-48(%rbp), %rax	# elt, tmp157
	leaq	16(%rax), %rcx	#, D.18791
	.loc 1 4053 0 discriminator 2
	leaq	-32(%rbp), %rax	#, tmp158
	movl	$24, %edx	#,
	movq	%rcx, %rsi	# D.18791,
	movq	%rax, %rdi	# tmp158,
	call	memcpy	#
	.loc 1 4056 0 discriminator 2
	movq	-72(%rbp), %rax	# pool, tmp159
	movl	40(%rax), %edx	# pool_1->align, D.18785
	movq	-72(%rbp), %rax	# pool, tmp160
	movl	32(%rax), %eax	# pool_1->mode, D.18789
	cltq
	movl	inner_mode_array(,%rax,4), %eax	# inner_mode_array, D.18789
	movq	-32(%rbp), %rcx	# u.d, tmp162
	movq	%rcx, (%rsp)	# tmp162,
	movq	-24(%rbp), %rcx	# u.d, tmp163
	movq	%rcx, 8(%rsp)	# tmp163,
	movq	-16(%rbp), %rcx	# u.d, tmp164
	movq	%rcx, 16(%rsp)	# tmp164,
	movl	%edx, %esi	# D.18785,
	movl	%eax, %edi	# D.18789,
	call	assemble_real	#
	.loc 1 4050 0 discriminator 2
	addl	$1, -88(%rbp)	#, i
.L796:
	.loc 1 4050 0 is_stmt 0 discriminator 1
	movl	-88(%rbp), %eax	# i, tmp165
	cmpl	-80(%rbp), %eax	# units, tmp165
	jl	.L797	#,
.LBE85:
	.loc 1 4059 0 is_stmt 1
	jmp	.L781	#
.L792:
.LBB86:
	.loc 1 4066 0
	movq	-64(%rbp), %rax	# x, tmp166
	movzwl	(%rax), %eax	# x_7->code, D.18784
	cmpw	$56, %ax	#, D.18784
	je	.L798	#,
	.loc 1 4067 0
	movl	$__FUNCTION__.13821, %edx	#,
	movl	$4067, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L798:
	.loc 1 4069 0
	movq	-64(%rbp), %rax	# x, tmp167
	movq	8(%rax), %rax	# x_7->fld[0].rtvec, D.18792
	movl	(%rax), %eax	# _57->num_elem, tmp168
	movl	%eax, -76(%rbp)	# tmp168, units
	.loc 1 4071 0
	movl	$0, -84(%rbp)	#, i
	jmp	.L799	#
.L800:
	.loc 1 4073 0 discriminator 2
	movq	-64(%rbp), %rax	# x, tmp169
	movq	8(%rax), %rax	# x_7->fld[0].rtvec, D.18792
	movl	-84(%rbp), %edx	# i, tmp171
	movslq	%edx, %rdx	# tmp171, tmp170
	movq	8(%rax,%rdx,8), %rax	# _60->elem, tmp172
	movq	%rax, -40(%rbp)	# tmp172, elt
	.loc 1 4074 0 discriminator 2
	movq	-72(%rbp), %rax	# pool, tmp173
	movl	40(%rax), %edx	# pool_1->align, D.18785
	movq	-72(%rbp), %rax	# pool, tmp174
	movl	32(%rax), %eax	# pool_1->mode, D.18789
	cltq
	movzbl	mode_unit_size(%rax), %eax	# mode_unit_size, D.18787
	movzbl	%al, %esi	# D.18787, D.18785
	movq	-40(%rbp), %rax	# elt, tmp176
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp176,
	call	assemble_integer	#
	.loc 1 4071 0 discriminator 2
	addl	$1, -84(%rbp)	#, i
.L799:
	.loc 1 4071 0 is_stmt 0 discriminator 1
	movl	-84(%rbp), %eax	# i, tmp177
	cmpl	-76(%rbp), %eax	# units, tmp177
	jl	.L800	#,
.LBE86:
	.loc 1 4078 0 is_stmt 1
	jmp	.L781	#
.L788:
	.loc 1 4081 0
	movl	$__FUNCTION__.13821, %edx	#,
	movl	$4081, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L781:
.LBE84:
	.loc 1 3964 0
	movq	-72(%rbp), %rax	# pool, tmp178
	movq	8(%rax), %rax	# pool_1->next, tmp179
	movq	%rax, -72(%rbp)	# tmp179, pool
.L779:
	.loc 1 3964 0 is_stmt 0 discriminator 1
	cmpq	$0, -72(%rbp)	#, pool
	jne	.L801	#,
	.loc 1 4094 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.352
	movq	32(%rax), %rdx	# cfun.352_69->varasm, D.18782
	movq	cfun(%rip), %rax	# cfun, cfun.353
	movq	32(%rax), %rax	# cfun.353_71->varasm, D.18782
	movq	$0, 24(%rax)	#, _72->x_last_pool
	movq	24(%rax), %rax	# _72->x_last_pool, D.18793
	movq	%rax, 16(%rdx)	# D.18793, _70->x_first_pool
	.loc 1 4095 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE95:
	.size	output_constant_pool, .-output_constant_pool
	.type	mark_constant_pool, @function
mark_constant_pool:
.LFB96:
	.loc 1 4103 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 4107 0
	movq	cfun(%rip), %rax	# cfun, cfun.354
	movq	32(%rax), %rax	# cfun.354_4->varasm, D.18794
	movq	16(%rax), %rax	# _5->x_first_pool, D.18795
	testq	%rax, %rax	# D.18795
	jne	.L803	#,
	.loc 1 4107 0 is_stmt 0 discriminator 1
	movq	const_str_htab(%rip), %rax	# const_str_htab, const_str_htab.355
	movq	%rax, %rdi	# const_str_htab.355,
	call	htab_elements	#
	testq	%rax, %rax	# D.18796
	jne	.L803	#,
	.loc 1 4108 0 is_stmt 1
	jmp	.L802	#
.L803:
	.loc 1 4110 0
	movq	cfun(%rip), %rax	# cfun, cfun.356
	movq	32(%rax), %rax	# cfun.356_9->varasm, D.18794
	movq	16(%rax), %rax	# _10->x_first_pool, tmp75
	movq	%rax, -8(%rbp)	# tmp75, pool
	jmp	.L805	#
.L806:
	.loc 1 4111 0 discriminator 2
	movq	-8(%rbp), %rax	# pool, tmp76
	movl	$0, 56(%rax)	#, pool_3->mark
	.loc 1 4110 0 discriminator 2
	movq	-8(%rbp), %rax	# pool, tmp77
	movq	8(%rax), %rax	# pool_3->next, tmp78
	movq	%rax, -8(%rbp)	# tmp78, pool
.L805:
	.loc 1 4110 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, pool
	jne	.L806	#,
	.loc 1 4113 0 is_stmt 1
	call	get_insns	#
	movq	%rax, -16(%rbp)	# tmp79, insn
	jmp	.L807	#
.L809:
	.loc 1 4114 0
	movq	-16(%rbp), %rax	# insn, tmp80
	movzwl	(%rax), %eax	# insn_1->code, D.18797
	movzwl	%ax, %eax	# D.18797, D.18798
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.18799
	cmpb	$105, %al	#, D.18799
	jne	.L808	#,
	.loc 1 4115 0
	movq	-16(%rbp), %rax	# insn, tmp82
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.18800
	movq	%rax, %rdi	# D.18800,
	call	mark_constants	#
.L808:
	.loc 1 4113 0
	movq	-16(%rbp), %rax	# insn, tmp83
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp84
	movq	%rax, -16(%rbp)	# tmp84, insn
.L807:
	.loc 1 4113 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, insn
	jne	.L809	#,
	.loc 1 4117 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.357
	movq	416(%rax), %rax	# cfun.357_19->epilogue_delay_list, tmp85
	movq	%rax, -16(%rbp)	# tmp85, insn
	jmp	.L810	#
.L812:
	.loc 1 4120 0
	movq	-16(%rbp), %rax	# insn, tmp86
	movzwl	(%rax), %eax	# insn_2->code, D.18797
	movzwl	%ax, %eax	# D.18797, D.18798
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.18799
	cmpb	$105, %al	#, D.18799
	jne	.L811	#,
	.loc 1 4121 0
	movq	-16(%rbp), %rax	# insn, tmp88
	movq	32(%rax), %rax	# insn_2->fld[3].rtx, D.18800
	movq	%rax, %rdi	# D.18800,
	call	mark_constants	#
.L811:
	.loc 1 4119 0
	movq	-16(%rbp), %rax	# insn, tmp89
	movq	16(%rax), %rax	# insn_2->fld[1].rtx, tmp90
	movq	%rax, -16(%rbp)	# tmp90, insn
.L810:
	.loc 1 4117 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, insn
	jne	.L812	#,
.L802:
	.loc 1 4122 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE96:
	.size	mark_constant_pool, .-mark_constant_pool
	.type	mark_constants, @function
mark_constants:
.LFB97:
	.loc 1 4132 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	.loc 1 4136 0
	movq	-24(%rbp), %rax	# x, x.358
	testq	%rax, %rax	# x.358
	jne	.L814	#,
	.loc 1 4137 0
	jmp	.L813	#
.L814:
	.loc 1 4139 0
	movq	-24(%rbp), %rax	# x, x.359
	movzwl	(%rax), %eax	# x.359_5->code, D.18801
	cmpw	$68, %ax	#, D.18801
	jne	.L816	#,
	.loc 1 4141 0
	leaq	-24(%rbp), %rax	#, tmp89
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp89,
	call	mark_constant	#
	.loc 1 4142 0
	jmp	.L813	#
.L816:
	.loc 1 4148 0
	movq	-24(%rbp), %rax	# x, x.360
	movzwl	(%rax), %eax	# x.360_7->code, D.18801
	movzwl	%ax, %eax	# D.18801, D.18802
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.18803
	cmpb	$105, %al	#, D.18803
	jne	.L817	#,
	.loc 1 4150 0
	movq	-24(%rbp), %rax	# x, x.361
	movq	32(%rax), %rax	# x.361_11->fld[3].rtx, D.18804
	movq	%rax, %rdi	# D.18804,
	call	mark_constants	#
	.loc 1 4151 0
	jmp	.L813	#
.L817:
	.loc 1 4154 0
	movq	-24(%rbp), %rax	# x, x.362
	movzwl	(%rax), %eax	# x.362_13->code, D.18801
	movzwl	%ax, %eax	# D.18801, D.18802
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp92
	movq	%rax, -8(%rbp)	# tmp92, format_ptr
	.loc 1 4156 0
	movl	$0, -16(%rbp)	#, i
	jmp	.L818	#
.L828:
	.loc 1 4158 0
	movq	-8(%rbp), %rax	# format_ptr, format_ptr.363
	leaq	1(%rax), %rdx	#, tmp93
	movq	%rdx, -8(%rbp)	# tmp93, format_ptr
	movzbl	(%rax), %eax	# *format_ptr.363_23, D.18803
	movsbl	%al, %eax	# D.18803, D.18802
	subl	$48, %eax	#, tmp94
	cmpl	$71, %eax	#, tmp94
	ja	.L819	#,
	movl	%eax, %eax	# tmp94, tmp95
	movq	.L821(,%rax,8), %rax	#, tmp96
	jmp	*%rax	# tmp96
	.section	.rodata
	.align 8
	.align 4
.L821:
	.quad	.L829
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L822
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L829
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L823
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L829
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L829
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L819
	.quad	.L829
	.quad	.L819
	.quad	.L829
	.quad	.L819
	.quad	.L829
	.text
.L823:
	.loc 1 4161 0
	movq	-24(%rbp), %rax	# x, x.364
	movl	-16(%rbp), %edx	# i, tmp98
	movslq	%edx, %rdx	# tmp98, tmp97
	movq	8(%rax,%rdx,8), %rax	# x.364_27->fld[i_1].rtx, D.18804
	movq	%rax, %rdi	# D.18804,
	call	mark_constants	#
	.loc 1 4162 0
	jmp	.L824	#
.L822:
	.loc 1 4165 0
	movq	-24(%rbp), %rax	# x, x.365
	movl	-16(%rbp), %edx	# i, tmp100
	movslq	%edx, %rdx	# tmp100, tmp99
	movq	8(%rax,%rdx,8), %rax	# x.365_29->fld[i_1].rtvec, D.18806
	testq	%rax, %rax	# D.18806
	je	.L825	#,
.LBB87:
	.loc 1 4169 0
	movl	$0, -12(%rbp)	#, j
	jmp	.L826	#
.L827:
	.loc 1 4170 0 discriminator 2
	movq	-24(%rbp), %rax	# x, x.366
	movl	-16(%rbp), %edx	# i, tmp102
	movslq	%edx, %rdx	# tmp102, tmp101
	movq	8(%rax,%rdx,8), %rax	# x.366_35->fld[i_1].rtvec, D.18806
	movl	-12(%rbp), %edx	# j, tmp104
	movslq	%edx, %rdx	# tmp104, tmp103
	movq	8(%rax,%rdx,8), %rax	# _36->elem, D.18804
	movq	%rax, %rdi	# D.18804,
	call	mark_constants	#
	.loc 1 4169 0 discriminator 2
	addl	$1, -12(%rbp)	#, j
.L826:
	.loc 1 4169 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# x, x.367
	movl	-16(%rbp), %edx	# i, tmp106
	movslq	%edx, %rdx	# tmp106, tmp105
	movq	8(%rax,%rdx,8), %rax	# x.367_32->fld[i_1].rtvec, D.18806
	movl	(%rax), %eax	# _33->num_elem, D.18802
	cmpl	-12(%rbp), %eax	# j, D.18802
	jg	.L827	#,
.L825:
.LBE87:
	.loc 1 4172 0 is_stmt 1
	jmp	.L824	#
.L819:
	.loc 1 4184 0
	movl	$__FUNCTION__.13878, %edx	#,
	movl	$4184, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L829:
	.loc 1 4181 0
	nop
.L824:
	.loc 1 4156 0
	addl	$1, -16(%rbp)	#, i
.L818:
	.loc 1 4156 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# x, x.368
	movzwl	(%rax), %eax	# x.368_18->code, D.18801
	movzwl	%ax, %eax	# D.18801, D.18802
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.18805
	movzbl	%al, %eax	# D.18805, D.18802
	cmpl	-16(%rbp), %eax	# i, D.18802
	jg	.L828	#,
.L813:
	.loc 1 4187 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE97:
	.size	mark_constants, .-mark_constants
	.type	mark_constant, @function
mark_constant:
.LFB98:
	.loc 1 4197 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# current_rtx, current_rtx
	movq	%rsi, -48(%rbp)	# data, data
	.loc 1 4198 0
	movq	-40(%rbp), %rax	# current_rtx, tmp78
	movq	(%rax), %rax	# *current_rtx_2(D), tmp79
	movq	%rax, -32(%rbp)	# tmp79, x
	.loc 1 4200 0
	cmpq	$0, -32(%rbp)	#, x
	jne	.L831	#,
	.loc 1 4201 0
	movl	$0, %eax	#, D.18807
	jmp	.L832	#
.L831:
	.loc 1 4203 0
	movq	-32(%rbp), %rax	# x, tmp80
	movzwl	(%rax), %eax	# x_3->code, D.18808
	cmpw	$68, %ax	#, D.18808
	jne	.L833	#,
	.loc 1 4205 0
	movq	-32(%rbp), %rax	# x, tmp81
	movzbl	3(%rax), %eax	# *x_3, D.18809
	andl	$4, %eax	#, D.18809
	testb	%al, %al	# D.18809
	je	.L834	#,
.LBB88:
	.loc 1 4207 0
	movq	cfun(%rip), %rax	# cfun, cfun.369
	movq	-32(%rbp), %rdx	# x, tmp82
	movq	%rdx, %rsi	# tmp82,
	movq	%rax, %rdi	# cfun.369,
	call	find_pool_constant	#
	movq	%rax, -24(%rbp)	# tmp83, pool
	.loc 1 4208 0
	movq	-24(%rbp), %rax	# pool, tmp84
	movl	56(%rax), %eax	# pool_9->mark, D.18807
	testl	%eax, %eax	# D.18807
	jne	.L835	#,
	.loc 1 4209 0
	movq	-24(%rbp), %rax	# pool, tmp85
	movl	$1, 56(%rax)	#, pool_9->mark
	.loc 1 4210 0
	movq	-24(%rbp), %rax	# pool, tmp86
	addq	$24, %rax	#, D.18810
	movl	$0, %edx	#,
	movl	$mark_constant, %esi	#,
	movq	%rax, %rdi	# D.18810,
	call	for_each_rtx	#
	jmp	.L833	#
.L835:
	.loc 1 4213 0
	movl	$-1, %eax	#, D.18807
	jmp	.L832	#
.L834:
.LBE88:
	.loc 1 4215 0
	movq	-32(%rbp), %rax	# x, tmp87
	movzbl	3(%rax), %eax	# *x_3, D.18809
	andl	$-128, %eax	#, D.18809
	testb	%al, %al	# D.18809
	je	.L833	#,
.LBB89:
	.loc 1 4221 0
	movq	-32(%rbp), %rax	# x, tmp88
	movq	8(%rax), %rax	# x_3->fld[0].rtstr, D.18811
	sarq	$3, %rax	#, D.18812
	.loc 1 4220 0
	movl	%eax, %edx	# D.18812, D.18813
	movq	-32(%rbp), %rax	# x, tmp89
	movq	8(%rax), %rsi	# x_3->fld[0].rtstr, D.18811
	movq	const_str_htab(%rip), %rax	# const_str_htab, const_str_htab.370
	.loc 1 4219 0
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# const_str_htab.370,
	call	htab_find_slot_with_hash	#
	movq	%rax, -16(%rbp)	# tmp90, defstr
	.loc 1 4222 0
	cmpq	$0, -16(%rbp)	#, defstr
	je	.L833	#,
.LBB90:
	.loc 1 4224 0
	movq	-16(%rbp), %rax	# defstr, tmp91
	movq	(%rax), %rax	# *defstr_21, tmp92
	movq	%rax, -8(%rbp)	# tmp92, p
	.loc 1 4226 0
	movq	-32(%rbp), %rax	# x, tmp93
	movzbl	3(%rax), %edx	# x_3->frame_related, tmp96
	andl	$127, %edx	#, tmp97
	movb	%dl, 3(%rax)	# tmp97, x_3->frame_related
	.loc 1 4227 0
	movq	-8(%rbp), %rax	# p, tmp98
	movl	16(%rax), %edx	# p_22->labelno, D.18807
	movq	-8(%rbp), %rax	# p, tmp99
	movq	8(%rax), %rax	# p_22->exp, D.18814
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.18814,
	call	output_constant_def_contents	#
	.loc 1 4228 0
	movq	const_str_htab(%rip), %rax	# const_str_htab, const_str_htab.371
	movq	-16(%rbp), %rdx	# defstr, tmp100
	movq	%rdx, %rsi	# tmp100,
	movq	%rax, %rdi	# const_str_htab.371,
	call	htab_clear_slot	#
.L833:
.LBE90:
.LBE89:
	.loc 1 4232 0
	movl	$0, %eax	#, D.18807
.L832:
	.loc 1 4233 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE98:
	.size	mark_constant, .-mark_constant
	.type	output_addressed_constants, @function
output_addressed_constants:
.LFB99:
	.loc 1 4242 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# exp, exp
	.loc 1 4243 0
	movl	$0, -12(%rbp)	#, reloc
	.loc 1 4248 0
	movq	lang_hooks+72(%rip), %rax	# lang_hooks.expand_constant, D.18815
	movq	-24(%rbp), %rdx	# exp, tmp78
	movq	%rdx, %rdi	# tmp78,
	call	*%rax	# D.18815
	movq	%rax, -24(%rbp)	# tmp79, exp
	.loc 1 4250 0
	movq	-24(%rbp), %rax	# exp, tmp80
	movzbl	16(%rax), %eax	# exp_10->common.code, D.18816
	movzbl	%al, %eax	# D.18816, D.18817
	cmpl	$116, %eax	#, D.18817
	ja	.L839	#,
	cmpl	$114, %eax	#, D.18817
	jae	.L840	#,
	cmpl	$46, %eax	#, D.18817
	je	.L841	#,
	cmpl	$46, %eax	#, D.18817
	jb	.L856	#,
	subl	$59, %eax	#, tmp81
	cmpl	$1, %eax	#, tmp81
	ja	.L856	#,
	jmp	.L855	#
.L839:
	cmpl	$121, %eax	#, D.18817
	je	.L843	#,
	cmpl	$124, %eax	#, D.18817
	je	.L843	#,
	.loc 1 4291 0
	jmp	.L856	#
.L843:
	.loc 1 4257 0
	movq	-24(%rbp), %rax	# exp, tmp82
	movq	32(%rax), %rax	# exp_10->exp.operands, tmp83
	movq	%rax, -8(%rbp)	# tmp83, tem
	jmp	.L844	#
.L845:
	.loc 1 4258 0
	movq	-8(%rbp), %rax	# tem, tmp84
	movq	32(%rax), %rax	# tem_5->exp.operands, tmp85
	movq	%rax, -8(%rbp)	# tmp85, tem
.L844:
	.loc 1 4257 0 discriminator 1
	movq	-8(%rbp), %rax	# tem, tmp86
	movq	%rax, %rdi	# tmp86,
	call	handled_component_p	#
	testl	%eax, %eax	# D.18818
	jne	.L845	#,
	.loc 1 4261 0
	movq	-8(%rbp), %rax	# tem, tmp87
	movzbl	16(%rax), %eax	# tem_5->common.code, D.18816
	movzbl	%al, %eax	# D.18816, D.18818
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.18819
	cmpb	$99, %al	#, D.18819
	je	.L846	#,
	.loc 1 4262 0
	movq	-8(%rbp), %rax	# tem, tmp89
	movzbl	16(%rax), %eax	# tem_5->common.code, D.18816
	cmpb	$46, %al	#, D.18816
	jne	.L847	#,
.L846:
	.loc 1 4263 0
	movq	-8(%rbp), %rax	# tem, tmp90
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp90,
	call	output_constant_def	#
.L847:
	.loc 1 4265 0
	movq	-8(%rbp), %rax	# tem, tmp91
	movzbl	18(%rax), %eax	# *tem_5, D.18816
	andl	$8, %eax	#, D.18816
	testb	%al, %al	# D.18816
	je	.L848	#,
	.loc 1 4266 0
	orl	$2, -12(%rbp)	#, reloc
	.loc 1 4269 0
	jmp	.L850	#
.L848:
	.loc 1 4268 0
	orl	$1, -12(%rbp)	#, reloc
	.loc 1 4269 0
	jmp	.L850	#
.L855:
	.loc 1 4273 0
	movq	-24(%rbp), %rax	# exp, tmp92
	movq	32(%rax), %rax	# exp_10->exp.operands, D.18820
	movq	%rax, %rdi	# D.18820,
	call	output_addressed_constants	#
	movl	%eax, -12(%rbp)	# tmp93, reloc
	.loc 1 4274 0
	movq	-24(%rbp), %rax	# exp, tmp94
	movq	40(%rax), %rax	# exp_10->exp.operands, D.18820
	movq	%rax, %rdi	# D.18820,
	call	output_addressed_constants	#
	orl	%eax, -12(%rbp)	# D.18818, reloc
	.loc 1 4275 0
	jmp	.L850	#
.L840:
	.loc 1 4280 0
	movq	-24(%rbp), %rax	# exp, tmp95
	movq	32(%rax), %rax	# exp_10->exp.operands, D.18820
	movq	%rax, %rdi	# D.18820,
	call	output_addressed_constants	#
	movl	%eax, -12(%rbp)	# tmp96, reloc
	.loc 1 4281 0
	jmp	.L850	#
.L841:
	.loc 1 4284 0
	movq	-24(%rbp), %rax	# exp, tmp97
	movq	40(%rax), %rax	# exp_10->exp.operands, tmp98
	movq	%rax, -8(%rbp)	# tmp98, tem
	jmp	.L851	#
.L853:
	.loc 1 4285 0
	movq	-8(%rbp), %rax	# tem, tmp99
	movq	32(%rax), %rax	# tem_6->list.value, D.18820
	testq	%rax, %rax	# D.18820
	je	.L852	#,
	.loc 1 4286 0
	movq	-8(%rbp), %rax	# tem, tmp100
	movq	32(%rax), %rax	# tem_6->list.value, D.18820
	movq	%rax, %rdi	# D.18820,
	call	output_addressed_constants	#
	orl	%eax, -12(%rbp)	# D.18818, reloc
.L852:
	.loc 1 4284 0
	movq	-8(%rbp), %rax	# tem, tmp101
	movq	(%rax), %rax	# tem_6->common.chain, tmp102
	movq	%rax, -8(%rbp)	# tmp102, tem
.L851:
	.loc 1 4284 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, tem
	jne	.L853	#,
	.loc 1 4288 0 is_stmt 1
	jmp	.L850	#
.L856:
	.loc 1 4291 0
	nop
.L850:
	.loc 1 4293 0
	movl	-12(%rbp), %eax	# reloc, D.18818
	.loc 1 4294 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE99:
	.size	output_addressed_constants, .-output_addressed_constants
	.globl	initializer_constant_valid_p
	.type	initializer_constant_valid_p, @function
initializer_constant_valid_p:
.LFB100:
	.loc 1 4310 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -88(%rbp)	# value, value
	movq	%rsi, -96(%rbp)	# endtype, endtype
	.loc 1 4313 0
	movq	lang_hooks+72(%rip), %rax	# lang_hooks.expand_constant, D.18823
	movq	-88(%rbp), %rdx	# value, tmp303
	movq	%rdx, %rdi	# tmp303,
	call	*%rax	# D.18823
	movq	%rax, -88(%rbp)	# tmp304, value
	.loc 1 4315 0
	movq	-88(%rbp), %rax	# value, tmp305
	movzbl	16(%rax), %eax	# value_10->common.code, D.18824
	movzbl	%al, %eax	# D.18824, D.18825
	subl	$25, %eax	#, tmp306
	cmpl	$99, %eax	#, tmp306
	ja	.L919	#,
	movl	%eax, %eax	# tmp306, tmp307
	movq	.L860(,%rax,8), %rax	#, tmp308
	jmp	*%rax	# tmp308
	.section	.rodata
	.align 8
	.align 4
.L860:
	.quad	.L859
	.quad	.L859
	.quad	.L859
	.quad	.L859
	.quad	.L859
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L861
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L862
	.quad	.L863
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L864
	.quad	.L864
	.quad	.L865
	.quad	.L865
	.quad	.L919
	.quad	.L919
	.quad	.L919
	.quad	.L866
	.quad	.L919
	.quad	.L919
	.quad	.L866
	.text
.L861:
	.loc 1 4318 0
	movq	-88(%rbp), %rax	# value, tmp309
	movq	8(%rax), %rax	# value_10->common.type, D.18826
	movzbl	16(%rax), %eax	# _13->common.code, D.18824
	cmpb	$21, %al	#, D.18824
	je	.L867	#,
	.loc 1 4319 0
	movq	-88(%rbp), %rax	# value, tmp310
	movq	8(%rax), %rax	# value_10->common.type, D.18826
	movzbl	16(%rax), %eax	# _15->common.code, D.18824
	cmpb	$20, %al	#, D.18824
	jne	.L868	#,
.L867:
	.loc 1 4320 0
	movq	-88(%rbp), %rax	# value, tmp311
	movzbl	17(%rax), %eax	# *value_10, D.18824
	andl	$2, %eax	#, D.18824
	testb	%al, %al	# D.18824
	je	.L868	#,
	.loc 1 4321 0
	movq	-88(%rbp), %rax	# value, tmp312
	movq	40(%rax), %rax	# value_10->exp.operands, D.18826
	testq	%rax, %rax	# D.18826
	je	.L868	#,
	.loc 1 4323 0
	movq	-88(%rbp), %rax	# value, tmp313
	movq	40(%rax), %rax	# value_10->exp.operands, D.18826
	movq	32(%rax), %rax	# _20->list.value, D.18826
	.loc 1 4322 0
	movq	-96(%rbp), %rdx	# endtype, tmp314
	movq	%rdx, %rsi	# tmp314,
	movq	%rax, %rdi	# D.18826,
	call	initializer_constant_valid_p	#
	jmp	.L869	#
.L868:
	.loc 1 4326 0
	movq	-88(%rbp), %rax	# value, tmp315
	movzbl	18(%rax), %eax	# *value_10, D.18824
	andl	$4, %eax	#, D.18824
	testb	%al, %al	# D.18824
	je	.L870	#,
	.loc 1 4326 0 is_stmt 0 discriminator 1
	movq	global_trees+112(%rip), %rax	# global_trees, iftmp.372
	jmp	.L871	#
.L870:
	.loc 1 4326 0 discriminator 2
	movl	$0, %eax	#, iftmp.372
.L871:
	.loc 1 4326 0 discriminator 3
	jmp	.L869	#
.L859:
	.loc 1 4333 0 is_stmt 1
	movq	global_trees+112(%rip), %rax	# global_trees, D.18822
	jmp	.L869	#
.L866:
	.loc 1 4337 0
	movq	-88(%rbp), %rax	# value, tmp316
	movq	32(%rax), %rax	# value_10->exp.operands, D.18826
	movq	%rax, %rdi	# D.18826,
	call	staticp	#
	testl	%eax, %eax	# D.18827
	je	.L872	#,
	.loc 1 4337 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# value, tmp317
	movq	32(%rax), %rax	# value_10->exp.operands, iftmp.373
	jmp	.L873	#
.L872:
	.loc 1 4337 0 discriminator 2
	movl	$0, %eax	#, iftmp.373
.L873:
	.loc 1 4337 0 discriminator 3
	jmp	.L869	#
.L865:
	.loc 1 4341 0 is_stmt 1
	movq	-88(%rbp), %rax	# value, tmp318
	movq	32(%rax), %rax	# value_10->exp.operands, D.18826
	movq	-96(%rbp), %rdx	# endtype, tmp319
	movq	%rdx, %rsi	# tmp319,
	movq	%rax, %rdi	# D.18826,
	call	initializer_constant_valid_p	#
	jmp	.L869	#
.L864:
	.loc 1 4346 0
	movq	-88(%rbp), %rax	# value, tmp320
	movq	8(%rax), %rax	# value_10->common.type, D.18826
	movzbl	16(%rax), %eax	# _37->common.code, D.18824
	cmpb	$13, %al	#, D.18824
	je	.L874	#,
	.loc 1 4346 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# value, tmp321
	movq	8(%rax), %rax	# value_10->common.type, D.18826
	movzbl	16(%rax), %eax	# _39->common.code, D.18824
	cmpb	$15, %al	#, D.18824
	jne	.L875	#,
.L874:
	.loc 1 4347 0 is_stmt 1
	movq	-88(%rbp), %rax	# value, tmp322
	movq	32(%rax), %rax	# value_10->exp.operands, D.18826
	movq	8(%rax), %rax	# _41->common.type, D.18826
	movzbl	16(%rax), %eax	# _42->common.code, D.18824
	cmpb	$13, %al	#, D.18824
	je	.L876	#,
	.loc 1 4347 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# value, tmp323
	movq	32(%rax), %rax	# value_10->exp.operands, D.18826
	movq	8(%rax), %rax	# _44->common.type, D.18826
	movzbl	16(%rax), %eax	# _45->common.code, D.18824
	cmpb	$15, %al	#, D.18824
	jne	.L875	#,
.L876:
	.loc 1 4348 0 is_stmt 1
	movq	-88(%rbp), %rax	# value, tmp324
	movq	32(%rax), %rax	# value_10->exp.operands, D.18826
	movq	-96(%rbp), %rdx	# endtype, tmp325
	movq	%rdx, %rsi	# tmp325,
	movq	%rax, %rdi	# D.18826,
	call	initializer_constant_valid_p	#
	jmp	.L869	#
.L875:
	.loc 1 4351 0
	movq	-88(%rbp), %rax	# value, tmp326
	movq	8(%rax), %rax	# value_10->common.type, D.18826
	movzbl	16(%rax), %eax	# _49->common.code, D.18824
	cmpb	$7, %al	#, D.18824
	je	.L877	#,
	.loc 1 4351 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# value, tmp327
	movq	8(%rax), %rax	# value_10->common.type, D.18826
	movzbl	16(%rax), %eax	# _51->common.code, D.18824
	cmpb	$8, %al	#, D.18824
	jne	.L878	#,
	movq	-88(%rbp), %rax	# value, tmp328
	movq	8(%rax), %rax	# value_10->common.type, D.18826
	movq	8(%rax), %rax	# _53->common.type, D.18826
	movzbl	16(%rax), %eax	# _54->common.code, D.18824
	cmpb	$7, %al	#, D.18824
	jne	.L878	#,
.L877:
	.loc 1 4352 0 is_stmt 1
	movq	-88(%rbp), %rax	# value, tmp329
	movq	32(%rax), %rax	# value_10->exp.operands, D.18826
	movq	8(%rax), %rax	# _56->common.type, D.18826
	movzbl	16(%rax), %eax	# _57->common.code, D.18824
	cmpb	$7, %al	#, D.18824
	je	.L879	#,
	.loc 1 4352 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# value, tmp330
	movq	32(%rax), %rax	# value_10->exp.operands, D.18826
	movq	8(%rax), %rax	# _59->common.type, D.18826
	movzbl	16(%rax), %eax	# _60->common.code, D.18824
	cmpb	$8, %al	#, D.18824
	jne	.L878	#,
	movq	-88(%rbp), %rax	# value, tmp331
	movq	32(%rax), %rax	# value_10->exp.operands, D.18826
	movq	8(%rax), %rax	# _62->common.type, D.18826
	movq	8(%rax), %rax	# _63->common.type, D.18826
	movzbl	16(%rax), %eax	# _64->common.code, D.18824
	cmpb	$7, %al	#, D.18824
	jne	.L878	#,
.L879:
	.loc 1 4353 0 is_stmt 1
	movq	-88(%rbp), %rax	# value, tmp332
	movq	32(%rax), %rax	# value_10->exp.operands, D.18826
	movq	-96(%rbp), %rdx	# endtype, tmp333
	movq	%rdx, %rsi	# tmp333,
	movq	%rax, %rdi	# D.18826,
	call	initializer_constant_valid_p	#
	jmp	.L869	#
.L878:
	.loc 1 4356 0
	movq	-88(%rbp), %rax	# value, tmp334
	movq	8(%rax), %rax	# value_10->common.type, D.18826
	movzbl	16(%rax), %eax	# _68->common.code, D.18824
	cmpb	$6, %al	#, D.18824
	je	.L880	#,
	.loc 1 4356 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# value, tmp335
	movq	8(%rax), %rax	# value_10->common.type, D.18826
	movzbl	16(%rax), %eax	# _70->common.code, D.18824
	cmpb	$10, %al	#, D.18824
	je	.L880	#,
	movq	-88(%rbp), %rax	# value, tmp336
	movq	8(%rax), %rax	# value_10->common.type, D.18826
	movzbl	16(%rax), %eax	# _72->common.code, D.18824
	cmpb	$11, %al	#, D.18824
	je	.L880	#,
	movq	-88(%rbp), %rax	# value, tmp337
	movq	8(%rax), %rax	# value_10->common.type, D.18826
	movzbl	16(%rax), %eax	# _74->common.code, D.18824
	cmpb	$12, %al	#, D.18824
	jne	.L881	#,
.L880:
	.loc 1 4357 0 is_stmt 1
	movq	-88(%rbp), %rax	# value, tmp338
	movq	32(%rax), %rax	# value_10->exp.operands, D.18826
	movq	8(%rax), %rax	# _76->common.type, D.18826
	movzbl	16(%rax), %eax	# _77->common.code, D.18824
	cmpb	$6, %al	#, D.18824
	je	.L882	#,
	.loc 1 4357 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# value, tmp339
	movq	32(%rax), %rax	# value_10->exp.operands, D.18826
	movq	8(%rax), %rax	# _79->common.type, D.18826
	movzbl	16(%rax), %eax	# _80->common.code, D.18824
	cmpb	$10, %al	#, D.18824
	je	.L882	#,
	movq	-88(%rbp), %rax	# value, tmp340
	movq	32(%rax), %rax	# value_10->exp.operands, D.18826
	movq	8(%rax), %rax	# _82->common.type, D.18826
	movzbl	16(%rax), %eax	# _83->common.code, D.18824
	cmpb	$11, %al	#, D.18824
	je	.L882	#,
	movq	-88(%rbp), %rax	# value, tmp341
	movq	32(%rax), %rax	# value_10->exp.operands, D.18826
	movq	8(%rax), %rax	# _85->common.type, D.18826
	movzbl	16(%rax), %eax	# _86->common.code, D.18824
	cmpb	$12, %al	#, D.18824
	jne	.L881	#,
.L882:
	.loc 1 4358 0 is_stmt 1
	movq	-88(%rbp), %rax	# value, tmp342
	movq	8(%rax), %rax	# value_10->common.type, D.18826
	movzwl	60(%rax), %eax	# *_88, tmp345
	andw	$511, %ax	#, D.18828
	movl	%eax, %edx	# D.18828, D.18828
	.loc 1 4359 0
	movq	-88(%rbp), %rax	# value, tmp346
	movq	32(%rax), %rax	# value_10->exp.operands, D.18826
	movq	8(%rax), %rax	# _90->common.type, D.18826
	movzwl	60(%rax), %eax	# *_91, tmp349
	andw	$511, %ax	#, D.18828
	.loc 1 4358 0
	cmpw	%ax, %dx	# D.18828, D.18828
	jne	.L881	#,
	.loc 1 4360 0
	movq	-88(%rbp), %rax	# value, tmp350
	movq	32(%rax), %rax	# value_10->exp.operands, D.18826
	movq	-96(%rbp), %rdx	# endtype, tmp351
	movq	%rdx, %rsi	# tmp351,
	movq	%rax, %rdi	# D.18826,
	call	initializer_constant_valid_p	#
	jmp	.L869	#
.L881:
	.loc 1 4364 0
	movq	-88(%rbp), %rax	# value, tmp352
	movq	8(%rax), %rax	# value_10->common.type, D.18826
	movzbl	16(%rax), %eax	# _95->common.code, D.18824
	cmpb	$6, %al	#, D.18824
	je	.L883	#,
	.loc 1 4364 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# value, tmp353
	movq	8(%rax), %rax	# value_10->common.type, D.18826
	movzbl	16(%rax), %eax	# _97->common.code, D.18824
	cmpb	$10, %al	#, D.18824
	je	.L883	#,
	movq	-88(%rbp), %rax	# value, tmp354
	movq	8(%rax), %rax	# value_10->common.type, D.18826
	movzbl	16(%rax), %eax	# _99->common.code, D.18824
	cmpb	$11, %al	#, D.18824
	je	.L883	#,
	movq	-88(%rbp), %rax	# value, tmp355
	movq	8(%rax), %rax	# value_10->common.type, D.18826
	movzbl	16(%rax), %eax	# _101->common.code, D.18824
	cmpb	$12, %al	#, D.18824
	jne	.L884	#,
.L883:
	.loc 1 4365 0 is_stmt 1
	movq	-88(%rbp), %rax	# value, tmp356
	movq	32(%rax), %rax	# value_10->exp.operands, D.18826
	movq	8(%rax), %rax	# _103->common.type, D.18826
	movzbl	16(%rax), %eax	# _104->common.code, D.18824
	cmpb	$6, %al	#, D.18824
	je	.L885	#,
	.loc 1 4365 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# value, tmp357
	movq	32(%rax), %rax	# value_10->exp.operands, D.18826
	movq	8(%rax), %rax	# _106->common.type, D.18826
	movzbl	16(%rax), %eax	# _107->common.code, D.18824
	cmpb	$10, %al	#, D.18824
	je	.L885	#,
	movq	-88(%rbp), %rax	# value, tmp358
	movq	32(%rax), %rax	# value_10->exp.operands, D.18826
	movq	8(%rax), %rax	# _109->common.type, D.18826
	movzbl	16(%rax), %eax	# _110->common.code, D.18824
	cmpb	$11, %al	#, D.18824
	je	.L885	#,
	movq	-88(%rbp), %rax	# value, tmp359
	movq	32(%rax), %rax	# value_10->exp.operands, D.18826
	movq	8(%rax), %rax	# _112->common.type, D.18826
	movzbl	16(%rax), %eax	# _113->common.code, D.18824
	cmpb	$12, %al	#, D.18824
	jne	.L884	#,
.L885:
.LBB91:
	.loc 1 4367 0 is_stmt 1
	movq	-88(%rbp), %rax	# value, tmp360
	movq	32(%rax), %rax	# value_10->exp.operands, D.18826
	movq	-96(%rbp), %rdx	# endtype, tmp361
	movq	%rdx, %rsi	# tmp361,
	movq	%rax, %rdi	# D.18826,
	call	initializer_constant_valid_p	#
	movq	%rax, -56(%rbp)	# tmp362, inner
	.loc 1 4369 0
	movq	global_trees+112(%rip), %rax	# global_trees, D.18826
	cmpq	-56(%rbp), %rax	# inner, D.18826
	jne	.L886	#,
	.loc 1 4370 0
	movq	global_trees+112(%rip), %rax	# global_trees, D.18822
	jmp	.L869	#
.L886:
	.loc 1 4371 0
	jmp	.L887	#
.L884:
.LBE91:
	.loc 1 4375 0
	movq	-88(%rbp), %rax	# value, tmp363
	movq	8(%rax), %rax	# value_10->common.type, D.18826
	movzbl	16(%rax), %eax	# _119->common.code, D.18824
	cmpb	$6, %al	#, D.18824
	je	.L888	#,
	.loc 1 4375 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# value, tmp364
	movq	8(%rax), %rax	# value_10->common.type, D.18826
	movzbl	16(%rax), %eax	# _121->common.code, D.18824
	cmpb	$10, %al	#, D.18824
	je	.L888	#,
	movq	-88(%rbp), %rax	# value, tmp365
	movq	8(%rax), %rax	# value_10->common.type, D.18826
	movzbl	16(%rax), %eax	# _123->common.code, D.18824
	cmpb	$11, %al	#, D.18824
	je	.L888	#,
	movq	-88(%rbp), %rax	# value, tmp366
	movq	8(%rax), %rax	# value_10->common.type, D.18826
	movzbl	16(%rax), %eax	# _125->common.code, D.18824
	cmpb	$12, %al	#, D.18824
	jne	.L889	#,
.L888:
	.loc 1 4376 0 is_stmt 1
	movq	-88(%rbp), %rax	# value, tmp367
	movq	32(%rax), %rax	# value_10->exp.operands, D.18826
	movq	8(%rax), %rax	# _127->common.type, D.18826
	movzbl	16(%rax), %eax	# _128->common.code, D.18824
	cmpb	$13, %al	#, D.18824
	je	.L890	#,
	.loc 1 4376 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# value, tmp368
	movq	32(%rax), %rax	# value_10->exp.operands, D.18826
	movq	8(%rax), %rax	# _130->common.type, D.18826
	movzbl	16(%rax), %eax	# _131->common.code, D.18824
	cmpb	$15, %al	#, D.18824
	jne	.L889	#,
.L890:
	.loc 1 4377 0 is_stmt 1
	movq	-88(%rbp), %rax	# value, tmp369
	movq	8(%rax), %rax	# value_10->common.type, D.18826
	movzwl	60(%rax), %eax	# *_133, tmp372
	andw	$511, %ax	#, D.18828
	.loc 1 4378 0
	movzwl	%ax, %edx	# D.18828, D.18827
	movq	-88(%rbp), %rax	# value, tmp373
	movq	32(%rax), %rax	# value_10->exp.operands, D.18826
	movq	8(%rax), %rax	# _136->common.type, D.18826
	movzwl	60(%rax), %eax	# *_137, tmp376
	andw	$511, %ax	#, D.18828
	movzwl	%ax, %eax	# D.18828, D.18827
	.loc 1 4377 0
	cmpl	%eax, %edx	# D.18827, D.18827
	jl	.L889	#,
	.loc 1 4379 0
	movq	-88(%rbp), %rax	# value, tmp377
	movq	32(%rax), %rax	# value_10->exp.operands, D.18826
	movq	-96(%rbp), %rdx	# endtype, tmp378
	movq	%rdx, %rsi	# tmp378,
	movq	%rax, %rdi	# D.18826,
	call	initializer_constant_valid_p	#
	jmp	.L869	#
.L889:
	.loc 1 4384 0
	movq	-88(%rbp), %rax	# value, tmp379
	movq	8(%rax), %rax	# value_10->common.type, D.18826
	movzbl	16(%rax), %eax	# _142->common.code, D.18824
	cmpb	$13, %al	#, D.18824
	je	.L891	#,
	.loc 1 4384 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# value, tmp380
	movq	8(%rax), %rax	# value_10->common.type, D.18826
	movzbl	16(%rax), %eax	# _144->common.code, D.18824
	cmpb	$15, %al	#, D.18824
	jne	.L892	#,
.L891:
	.loc 1 4385 0 is_stmt 1
	movq	-88(%rbp), %rax	# value, tmp381
	movq	32(%rax), %rax	# value_10->exp.operands, D.18826
	movq	8(%rax), %rax	# _146->common.type, D.18826
	movzbl	16(%rax), %eax	# _147->common.code, D.18824
	cmpb	$6, %al	#, D.18824
	je	.L893	#,
	.loc 1 4385 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# value, tmp382
	movq	32(%rax), %rax	# value_10->exp.operands, D.18826
	movq	8(%rax), %rax	# _149->common.type, D.18826
	movzbl	16(%rax), %eax	# _150->common.code, D.18824
	cmpb	$10, %al	#, D.18824
	je	.L893	#,
	movq	-88(%rbp), %rax	# value, tmp383
	movq	32(%rax), %rax	# value_10->exp.operands, D.18826
	movq	8(%rax), %rax	# _152->common.type, D.18826
	movzbl	16(%rax), %eax	# _153->common.code, D.18824
	cmpb	$11, %al	#, D.18824
	je	.L893	#,
	movq	-88(%rbp), %rax	# value, tmp384
	movq	32(%rax), %rax	# value_10->exp.operands, D.18826
	movq	8(%rax), %rax	# _155->common.type, D.18826
	movzbl	16(%rax), %eax	# _156->common.code, D.18824
	cmpb	$12, %al	#, D.18824
	jne	.L892	#,
.L893:
	.loc 1 4387 0 is_stmt 1
	movq	-88(%rbp), %rax	# value, tmp385
	movq	32(%rax), %rax	# value_10->exp.operands, D.18826
	movq	%rax, %rdi	# D.18826,
	call	integer_zerop	#
	testl	%eax, %eax	# D.18827
	je	.L894	#,
	.loc 1 4388 0
	movq	global_trees+112(%rip), %rax	# global_trees, D.18822
	jmp	.L869	#
.L894:
	.loc 1 4389 0
	movq	-88(%rbp), %rax	# value, tmp386
	movq	8(%rax), %rax	# value_10->common.type, D.18826
	movzwl	60(%rax), %eax	# *_161, tmp389
	andw	$511, %ax	#, D.18828
	.loc 1 4390 0
	movzwl	%ax, %edx	# D.18828, D.18827
	movq	-88(%rbp), %rax	# value, tmp390
	movq	32(%rax), %rax	# value_10->exp.operands, D.18826
	movq	8(%rax), %rax	# _164->common.type, D.18826
	movzwl	60(%rax), %eax	# *_165, tmp393
	andw	$511, %ax	#, D.18828
	movzwl	%ax, %eax	# D.18828, D.18827
	.loc 1 4389 0
	cmpl	%eax, %edx	# D.18827, D.18827
	jg	.L892	#,
	.loc 1 4391 0
	movq	-88(%rbp), %rax	# value, tmp394
	movq	32(%rax), %rax	# value_10->exp.operands, D.18826
	movq	-96(%rbp), %rdx	# endtype, tmp395
	movq	%rdx, %rsi	# tmp395,
	movq	%rax, %rdi	# D.18826,
	call	initializer_constant_valid_p	#
	jmp	.L869	#
.L892:
	.loc 1 4396 0
	movq	-88(%rbp), %rax	# value, tmp396
	movq	8(%rax), %rax	# value_10->common.type, D.18826
	movzbl	16(%rax), %eax	# _170->common.code, D.18824
	cmpb	$21, %al	#, D.18824
	jne	.L895	#,
	.loc 1 4397 0
	movq	-88(%rbp), %rax	# value, tmp397
	movq	32(%rax), %rax	# value_10->exp.operands, D.18826
	movq	-96(%rbp), %rdx	# endtype, tmp398
	movq	%rdx, %rsi	# tmp398,
	movq	%rax, %rdi	# D.18826,
	call	initializer_constant_valid_p	#
	jmp	.L869	#
.L895:
	.loc 1 4399 0
	jmp	.L887	#
.L862:
	.loc 1 4402 0
	movq	-96(%rbp), %rax	# endtype, tmp399
	movzbl	16(%rax), %eax	# endtype_22(D)->common.code, D.18824
	cmpb	$6, %al	#, D.18824
	je	.L896	#,
	.loc 1 4402 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# endtype, tmp400
	movzbl	16(%rax), %eax	# endtype_22(D)->common.code, D.18824
	cmpb	$10, %al	#, D.18824
	je	.L896	#,
	movq	-96(%rbp), %rax	# endtype, tmp401
	movzbl	16(%rax), %eax	# endtype_22(D)->common.code, D.18824
	cmpb	$11, %al	#, D.18824
	je	.L896	#,
	movq	-96(%rbp), %rax	# endtype, tmp402
	movzbl	16(%rax), %eax	# endtype_22(D)->common.code, D.18824
	cmpb	$12, %al	#, D.18824
	jne	.L897	#,
.L896:
	.loc 1 4403 0 is_stmt 1
	movq	-96(%rbp), %rax	# endtype, tmp403
	movzwl	60(%rax), %eax	# *endtype_22(D), tmp406
	andw	$511, %ax	#, D.18828
	movzwl	%ax, %edx	# D.18828, D.18827
	movl	target_flags(%rip), %eax	# target_flags, target_flags.375
	andl	$33554432, %eax	#, D.18827
	testl	%eax, %eax	# D.18827
	je	.L898	#,
	.loc 1 4403 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.374
	jmp	.L899	#
.L898:
	.loc 1 4403 0 discriminator 2
	movl	$32, %eax	#, iftmp.374
.L899:
	.loc 1 4403 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.374, D.18827
	jl	.L900	#,
.L897:
.LBB92:
	.loc 1 4405 0 is_stmt 1
	movq	-88(%rbp), %rax	# value, tmp407
	movq	32(%rax), %rax	# value_10->exp.operands, D.18826
	movq	-96(%rbp), %rdx	# endtype, tmp408
	movq	%rdx, %rsi	# tmp408,
	movq	%rax, %rdi	# D.18826,
	call	initializer_constant_valid_p	#
	movq	%rax, -48(%rbp)	# tmp409, valid0
	.loc 1 4407 0
	movq	-88(%rbp), %rax	# value, tmp410
	movq	40(%rax), %rax	# value_10->exp.operands, D.18826
	movq	-96(%rbp), %rdx	# endtype, tmp411
	movq	%rdx, %rsi	# tmp411,
	movq	%rax, %rdi	# D.18826,
	call	initializer_constant_valid_p	#
	movq	%rax, -40(%rbp)	# tmp412, valid1
	.loc 1 4410 0
	movq	global_trees+112(%rip), %rax	# global_trees, D.18826
	cmpq	-48(%rbp), %rax	# valid0, D.18826
	jne	.L901	#,
	.loc 1 4411 0
	movq	-40(%rbp), %rax	# valid1, D.18822
	jmp	.L869	#
.L901:
	.loc 1 4412 0
	movq	global_trees+112(%rip), %rax	# global_trees, D.18826
	cmpq	-40(%rbp), %rax	# valid1, D.18826
	jne	.L900	#,
	.loc 1 4413 0
	movq	-48(%rbp), %rax	# valid0, D.18822
	jmp	.L869	#
.L900:
.LBE92:
	.loc 1 4415 0
	jmp	.L887	#
.L863:
	.loc 1 4418 0
	movq	-96(%rbp), %rax	# endtype, tmp413
	movzbl	16(%rax), %eax	# endtype_22(D)->common.code, D.18824
	cmpb	$6, %al	#, D.18824
	je	.L902	#,
	.loc 1 4418 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# endtype, tmp414
	movzbl	16(%rax), %eax	# endtype_22(D)->common.code, D.18824
	cmpb	$10, %al	#, D.18824
	je	.L902	#,
	movq	-96(%rbp), %rax	# endtype, tmp415
	movzbl	16(%rax), %eax	# endtype_22(D)->common.code, D.18824
	cmpb	$11, %al	#, D.18824
	je	.L902	#,
	movq	-96(%rbp), %rax	# endtype, tmp416
	movzbl	16(%rax), %eax	# endtype_22(D)->common.code, D.18824
	cmpb	$12, %al	#, D.18824
	jne	.L903	#,
.L902:
	.loc 1 4419 0 is_stmt 1
	movq	-96(%rbp), %rax	# endtype, tmp417
	movzwl	60(%rax), %eax	# *endtype_22(D), tmp420
	andw	$511, %ax	#, D.18828
	movzwl	%ax, %edx	# D.18828, D.18827
	movl	target_flags(%rip), %eax	# target_flags, target_flags.377
	andl	$33554432, %eax	#, D.18827
	testl	%eax, %eax	# D.18827
	je	.L904	#,
	.loc 1 4419 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.376
	jmp	.L905	#
.L904:
	.loc 1 4419 0 discriminator 2
	movl	$32, %eax	#, iftmp.376
.L905:
	.loc 1 4419 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.376, D.18827
	jl	.L906	#,
.L903:
.LBB93:
	.loc 1 4421 0 is_stmt 1
	movq	-88(%rbp), %rax	# value, tmp421
	movq	32(%rax), %rax	# value_10->exp.operands, D.18826
	movq	-96(%rbp), %rdx	# endtype, tmp422
	movq	%rdx, %rsi	# tmp422,
	movq	%rax, %rdi	# D.18826,
	call	initializer_constant_valid_p	#
	movq	%rax, -32(%rbp)	# tmp423, valid0
	.loc 1 4423 0
	movq	-88(%rbp), %rax	# value, tmp424
	movq	40(%rax), %rax	# value_10->exp.operands, D.18826
	movq	-96(%rbp), %rdx	# endtype, tmp425
	movq	%rdx, %rsi	# tmp425,
	movq	%rax, %rdi	# D.18826,
	call	initializer_constant_valid_p	#
	movq	%rax, -24(%rbp)	# tmp426, valid1
	.loc 1 4426 0
	movq	global_trees+112(%rip), %rax	# global_trees, D.18826
	cmpq	-24(%rbp), %rax	# valid1, D.18826
	jne	.L907	#,
	.loc 1 4427 0
	movq	-32(%rbp), %rax	# valid0, D.18822
	jmp	.L869	#
.L907:
	.loc 1 4430 0
	movq	-32(%rbp), %rax	# valid0, tmp427
	cmpq	-24(%rbp), %rax	# valid1, tmp427
	jne	.L908	#,
	.loc 1 4430 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, valid0
	je	.L908	#,
	.loc 1 4431 0 is_stmt 1
	movq	global_trees+112(%rip), %rax	# global_trees, D.18822
	jmp	.L869	#
.L908:
	.loc 1 4436 0
	cmpq	$0, -32(%rbp)	#, valid0
	je	.L906	#,
	.loc 1 4436 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# valid0, tmp428
	movzbl	16(%rax), %eax	# valid0_203->common.code, D.18824
	cmpb	$29, %al	#, D.18824
	jne	.L906	#,
	cmpq	$0, -24(%rbp)	#, valid1
	je	.L906	#,
	.loc 1 4437 0 is_stmt 1
	movq	-24(%rbp), %rax	# valid1, tmp429
	movzbl	16(%rax), %eax	# valid1_205->common.code, D.18824
	cmpb	$29, %al	#, D.18824
	jne	.L906	#,
	.loc 1 4438 0 discriminator 1
	movq	-32(%rbp), %rax	# valid0, tmp430
	movq	40(%rax), %rdx	# valid0_203->string.pointer, D.18829
	movq	-24(%rbp), %rax	# valid1, tmp431
	movq	40(%rax), %rax	# valid1_205->string.pointer, D.18829
	.loc 1 4437 0 discriminator 1
	cmpq	%rax, %rdx	# D.18829, D.18829
	jne	.L906	#,
	.loc 1 4439 0
	movq	global_trees+112(%rip), %rax	# global_trees, D.18822
	jmp	.L869	#
.L906:
.LBE93:
	.loc 1 4443 0
	movq	-96(%rbp), %rax	# endtype, tmp432
	movzbl	16(%rax), %eax	# endtype_22(D)->common.code, D.18824
	cmpb	$6, %al	#, D.18824
	je	.L909	#,
	.loc 1 4443 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# endtype, tmp433
	movzbl	16(%rax), %eax	# endtype_22(D)->common.code, D.18824
	cmpb	$10, %al	#, D.18824
	je	.L909	#,
	movq	-96(%rbp), %rax	# endtype, tmp434
	movzbl	16(%rax), %eax	# endtype_22(D)->common.code, D.18824
	cmpb	$11, %al	#, D.18824
	je	.L909	#,
	movq	-96(%rbp), %rax	# endtype, tmp435
	movzbl	16(%rax), %eax	# endtype_22(D)->common.code, D.18824
	cmpb	$12, %al	#, D.18824
	jne	.L910	#,
.L909:
.LBB94:
	.loc 1 4446 0 is_stmt 1
	movq	-88(%rbp), %rax	# value, tmp436
	movq	32(%rax), %rax	# value_10->exp.operands, tmp437
	movq	%rax, -72(%rbp)	# tmp437, op0
	.loc 1 4447 0
	movq	-88(%rbp), %rax	# value, tmp438
	movq	40(%rax), %rax	# value_10->exp.operands, tmp439
	movq	%rax, -64(%rbp)	# tmp439, op1
	.loc 1 4454 0
	jmp	.L911	#
.L914:
.LBB95:
	.loc 1 4458 0
	movq	-72(%rbp), %rax	# op0, tmp440
	movq	32(%rax), %rax	# op0_1->exp.operands, tmp441
	movq	%rax, -16(%rbp)	# tmp441, inner
	.loc 1 4459 0
	movq	global_trees(%rip), %rax	# global_trees, D.18826
	cmpq	-16(%rbp), %rax	# inner, D.18826
	je	.L912	#,
	.loc 1 4460 0
	movq	-16(%rbp), %rax	# inner, tmp442
	movq	8(%rax), %rax	# inner_223->common.type, D.18826
	movzbl	61(%rax), %eax	# *_225, tmp445
	shrb	%al	# D.18830
	movzbl	%al, %eax	# D.18830, D.18827
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.18831
	cmpl	$1, %eax	#, D.18831
	je	.L913	#,
	.loc 1 4460 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# inner, tmp447
	movq	8(%rax), %rax	# inner_223->common.type, D.18826
	movzbl	61(%rax), %eax	# *_229, tmp450
	shrb	%al	# D.18830
	movzbl	%al, %eax	# D.18830, D.18827
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.18831
	cmpl	$3, %eax	#, D.18831
	je	.L913	#,
	movq	-16(%rbp), %rax	# inner, tmp452
	movq	8(%rax), %rax	# inner_223->common.type, D.18826
	movzbl	61(%rax), %eax	# *_233, tmp455
	shrb	%al	# D.18830
	movzbl	%al, %eax	# D.18830, D.18827
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.18831
	cmpl	$5, %eax	#, D.18831
	je	.L913	#,
	movq	-16(%rbp), %rax	# inner, tmp457
	movq	8(%rax), %rax	# inner_223->common.type, D.18826
	movzbl	61(%rax), %eax	# *_237, tmp460
	shrb	%al	# D.18830
	movzbl	%al, %eax	# D.18830, D.18827
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.18831
	cmpl	$7, %eax	#, D.18831
	jne	.L912	#,
.L913:
	.loc 1 4461 0 is_stmt 1
	movq	-72(%rbp), %rax	# op0, tmp462
	movq	8(%rax), %rax	# op0_1->common.type, D.18826
	movzbl	61(%rax), %eax	# *_241, tmp465
	shrb	%al	# D.18830
	movzbl	%al, %eax	# D.18830, D.18827
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.18824
	.loc 1 4462 0
	movq	-16(%rbp), %rax	# inner, tmp467
	movq	8(%rax), %rax	# inner_223->common.type, D.18826
	movzbl	61(%rax), %eax	# *_245, tmp470
	shrb	%al	# D.18830
	movzbl	%al, %eax	# D.18830, D.18827
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.18824
	.loc 1 4461 0
	cmpb	%al, %dl	# D.18824, D.18824
	ja	.L912	#,
	.loc 1 4464 0
	movq	-16(%rbp), %rax	# inner, tmp472
	movq	%rax, -72(%rbp)	# tmp472, op0
.L911:
.LBE95:
	.loc 1 4454 0 discriminator 1
	movq	-72(%rbp), %rax	# op0, tmp473
	movzbl	16(%rax), %eax	# op0_1->common.code, D.18824
	cmpb	$115, %al	#, D.18824
	je	.L914	#,
	.loc 1 4455 0
	movq	-72(%rbp), %rax	# op0, tmp474
	movzbl	16(%rax), %eax	# op0_1->common.code, D.18824
	cmpb	$114, %al	#, D.18824
	je	.L914	#,
	.loc 1 4456 0
	movq	-72(%rbp), %rax	# op0, tmp475
	movzbl	16(%rax), %eax	# op0_1->common.code, D.18824
	cmpb	$116, %al	#, D.18824
	je	.L914	#,
.L912:
	.loc 1 4467 0
	jmp	.L915	#
.L918:
.LBB96:
	.loc 1 4471 0
	movq	-64(%rbp), %rax	# op1, tmp476
	movq	32(%rax), %rax	# op1_2->exp.operands, tmp477
	movq	%rax, -8(%rbp)	# tmp477, inner
	.loc 1 4472 0
	movq	global_trees(%rip), %rax	# global_trees, D.18826
	cmpq	-8(%rbp), %rax	# inner, D.18826
	je	.L916	#,
	.loc 1 4473 0
	movq	-8(%rbp), %rax	# inner, tmp478
	movq	8(%rax), %rax	# inner_253->common.type, D.18826
	movzbl	61(%rax), %eax	# *_255, tmp481
	shrb	%al	# D.18830
	movzbl	%al, %eax	# D.18830, D.18827
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.18831
	cmpl	$1, %eax	#, D.18831
	je	.L917	#,
	.loc 1 4473 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# inner, tmp483
	movq	8(%rax), %rax	# inner_253->common.type, D.18826
	movzbl	61(%rax), %eax	# *_259, tmp486
	shrb	%al	# D.18830
	movzbl	%al, %eax	# D.18830, D.18827
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.18831
	cmpl	$3, %eax	#, D.18831
	je	.L917	#,
	movq	-8(%rbp), %rax	# inner, tmp488
	movq	8(%rax), %rax	# inner_253->common.type, D.18826
	movzbl	61(%rax), %eax	# *_263, tmp491
	shrb	%al	# D.18830
	movzbl	%al, %eax	# D.18830, D.18827
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.18831
	cmpl	$5, %eax	#, D.18831
	je	.L917	#,
	movq	-8(%rbp), %rax	# inner, tmp493
	movq	8(%rax), %rax	# inner_253->common.type, D.18826
	movzbl	61(%rax), %eax	# *_267, tmp496
	shrb	%al	# D.18830
	movzbl	%al, %eax	# D.18830, D.18827
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.18831
	cmpl	$7, %eax	#, D.18831
	jne	.L916	#,
.L917:
	.loc 1 4474 0 is_stmt 1
	movq	-64(%rbp), %rax	# op1, tmp498
	movq	8(%rax), %rax	# op1_2->common.type, D.18826
	movzbl	61(%rax), %eax	# *_271, tmp501
	shrb	%al	# D.18830
	movzbl	%al, %eax	# D.18830, D.18827
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.18824
	.loc 1 4475 0
	movq	-8(%rbp), %rax	# inner, tmp503
	movq	8(%rax), %rax	# inner_253->common.type, D.18826
	movzbl	61(%rax), %eax	# *_275, tmp506
	shrb	%al	# D.18830
	movzbl	%al, %eax	# D.18830, D.18827
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.18824
	.loc 1 4474 0
	cmpb	%al, %dl	# D.18824, D.18824
	ja	.L916	#,
	.loc 1 4477 0
	movq	-8(%rbp), %rax	# inner, tmp508
	movq	%rax, -64(%rbp)	# tmp508, op1
.L915:
.LBE96:
	.loc 1 4467 0 discriminator 1
	movq	-64(%rbp), %rax	# op1, tmp509
	movzbl	16(%rax), %eax	# op1_2->common.code, D.18824
	cmpb	$115, %al	#, D.18824
	je	.L918	#,
	.loc 1 4468 0
	movq	-64(%rbp), %rax	# op1, tmp510
	movzbl	16(%rax), %eax	# op1_2->common.code, D.18824
	cmpb	$114, %al	#, D.18824
	je	.L918	#,
	.loc 1 4469 0
	movq	-64(%rbp), %rax	# op1, tmp511
	movzbl	16(%rax), %eax	# op1_2->common.code, D.18824
	cmpb	$116, %al	#, D.18824
	je	.L918	#,
.L916:
	.loc 1 4480 0
	movq	-72(%rbp), %rax	# op0, tmp512
	movzbl	16(%rax), %eax	# op0_1->common.code, D.18824
	cmpb	$121, %al	#, D.18824
	jne	.L910	#,
	.loc 1 4481 0
	movq	-72(%rbp), %rax	# op0, tmp513
	movq	32(%rax), %rax	# op0_1->exp.operands, D.18826
	movzbl	16(%rax), %eax	# _281->common.code, D.18824
	cmpb	$31, %al	#, D.18824
	jne	.L910	#,
	.loc 1 4482 0
	movq	-64(%rbp), %rax	# op1, tmp514
	movzbl	16(%rax), %eax	# op1_2->common.code, D.18824
	cmpb	$121, %al	#, D.18824
	jne	.L910	#,
	.loc 1 4483 0
	movq	-64(%rbp), %rax	# op1, tmp515
	movq	32(%rax), %rax	# op1_2->exp.operands, D.18826
	movzbl	16(%rax), %eax	# _284->common.code, D.18824
	cmpb	$31, %al	#, D.18824
	jne	.L910	#,
	.loc 1 4484 0
	movq	global_trees+112(%rip), %rax	# global_trees, D.18822
	jmp	.L869	#
.L910:
.LBE94:
	.loc 1 4486 0
	jmp	.L887	#
.L919:
	.loc 1 4489 0
	nop
.L887:
	.loc 1 4492 0
	movl	$0, %eax	#, D.18822
.L869:
	.loc 1 4493 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE100:
	.size	initializer_constant_valid_p, .-initializer_constant_valid_p
	.section	.rodata
	.align 8
.LC66:
	.string	"initializer for integer value is too complicated"
	.align 8
.LC67:
	.string	"initializer for floating value is not a floating constant"
.LC68:
	.string	"unknown set constructor type"
	.text
	.globl	output_constant
	.type	output_constant, @function
output_constant:
.LFB101:
	.loc 1 4520 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# exp, exp
	movq	%rsi, -64(%rbp)	# size, size
	movl	%edx, -68(%rbp)	# align, align
	.loc 1 4527 0
	movq	lang_hooks+72(%rip), %rax	# lang_hooks.expand_constant, D.18832
	movq	-56(%rbp), %rdx	# exp, tmp104
	movq	%rdx, %rdi	# tmp104,
	call	*%rax	# D.18832
	movq	%rax, -56(%rbp)	# tmp105, exp
	.loc 1 4529 0
	cmpq	$0, -64(%rbp)	#, size
	je	.L921	#,
	.loc 1 4529 0 is_stmt 0 discriminator 1
	movl	flag_syntax_only(%rip), %eax	# flag_syntax_only, flag_syntax_only.378
	testl	%eax, %eax	# flag_syntax_only.378
	je	.L922	#,
.L921:
	.loc 1 4530 0 is_stmt 1
	jmp	.L920	#
.L922:
	.loc 1 4534 0
	jmp	.L924	#
.L925:
	.loc 1 4537 0
	movq	-56(%rbp), %rax	# exp, tmp106
	movq	32(%rax), %rax	# exp_1->exp.operands, tmp107
	movq	%rax, -56(%rbp)	# tmp107, exp
.L924:
	.loc 1 4534 0 discriminator 1
	movq	-56(%rbp), %rax	# exp, tmp108
	movzbl	16(%rax), %eax	# exp_1->common.code, D.18833
	cmpb	$115, %al	#, D.18833
	je	.L925	#,
	.loc 1 4534 0 is_stmt 0 discriminator 2
	movq	-56(%rbp), %rax	# exp, tmp109
	movzbl	16(%rax), %eax	# exp_1->common.code, D.18833
	cmpb	$114, %al	#, D.18833
	je	.L925	#,
	.loc 1 4535 0 is_stmt 1
	movq	-56(%rbp), %rax	# exp, tmp110
	movzbl	16(%rax), %eax	# exp_1->common.code, D.18833
	cmpb	$116, %al	#, D.18833
	je	.L925	#,
	.loc 1 4536 0
	movq	-56(%rbp), %rax	# exp, tmp111
	movzbl	16(%rax), %eax	# exp_1->common.code, D.18833
	cmpb	$117, %al	#, D.18833
	je	.L925	#,
	.loc 1 4539 0
	movq	-56(%rbp), %rax	# exp, tmp112
	movq	8(%rax), %rax	# exp_1->common.type, D.18834
	movzbl	16(%rax), %eax	# _12->common.code, D.18833
	movzbl	%al, %eax	# D.18833, tmp113
	movl	%eax, -36(%rbp)	# tmp113, code
	.loc 1 4540 0
	movq	-56(%rbp), %rax	# exp, tmp114
	movq	8(%rax), %rax	# exp_1->common.type, D.18834
	movq	%rax, %rdi	# D.18834,
	call	int_size_in_bytes	#
	movq	%rax, -32(%rbp)	# tmp115, thissize
	.loc 1 4544 0
	movq	-56(%rbp), %rax	# exp, tmp116
	movzbl	16(%rax), %eax	# exp_1->common.code, D.18833
	cmpb	$46, %al	#, D.18833
	jne	.L926	#,
	.loc 1 4544 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# exp, tmp117
	movq	40(%rax), %rax	# exp_1->exp.operands, D.18834
	testq	%rax, %rax	# D.18834
	jne	.L926	#,
	.loc 1 4546 0 is_stmt 1
	movq	-64(%rbp), %rax	# size, tmp118
	movl	%eax, %edi	# D.18835,
	call	assemble_zeros	#
	.loc 1 4547 0
	jmp	.L920	#
.L926:
	.loc 1 4550 0
	movq	-56(%rbp), %rax	# exp, tmp119
	movzbl	16(%rax), %eax	# exp_1->common.code, D.18833
	cmpb	$124, %al	#, D.18833
	jne	.L927	#,
	.loc 1 4557 0
	movl	$__FUNCTION__.13956, %edx	#,
	movl	$4557, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L927:
	.loc 1 4564 0
	cmpl	$21, -36(%rbp)	#, code
	ja	.L928	#,
	movl	-36(%rbp), %eax	# code, tmp120
	movq	.L930(,%rax,8), %rax	#, tmp121
	jmp	*%rax	# tmp121
	.section	.rodata
	.align 8
	.align 4
.L930:
	.quad	.L949
	.quad	.L928
	.quad	.L928
	.quad	.L928
	.quad	.L928
	.quad	.L928
	.quad	.L931
	.quad	.L932
	.quad	.L933
	.quad	.L934
	.quad	.L931
	.quad	.L931
	.quad	.L931
	.quad	.L931
	.quad	.L928
	.quad	.L931
	.quad	.L928
	.quad	.L928
	.quad	.L934
	.quad	.L935
	.quad	.L936
	.quad	.L936
	.text
.L931:
	.loc 1 4572 0
	movq	-64(%rbp), %rax	# size, tmp122
	movl	%eax, %ebx	# tmp122, D.18836
	movq	-56(%rbp), %rax	# exp, tmp123
	movl	$3, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp123,
	call	expand_expr	#
	movl	-68(%rbp), %edx	# align, tmp124
	movl	$0, %ecx	#,
	movl	%ebx, %esi	# D.18836,
	movq	%rax, %rdi	# D.18837,
	call	assemble_integer	#
	xorl	$1, %eax	#, D.18838
	testb	%al, %al	# D.18838
	je	.L937	#,
	.loc 1 4575 0
	movl	$.LC66, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 4576 0
	jmp	.L938	#
.L937:
	jmp	.L938	#
.L932:
	.loc 1 4579 0
	movq	-56(%rbp), %rax	# exp, tmp125
	movzbl	16(%rax), %eax	# exp_1->common.code, D.18833
	cmpb	$26, %al	#, D.18833
	je	.L939	#,
	.loc 1 4580 0
	movl	$.LC67, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.L939:
	.loc 1 4582 0
	movq	-64(%rbp), %rax	# size, tmp126
	sall	$3, %eax	#, D.18836
	movl	$0, %edx	#,
	movl	$2, %esi	#,
	movl	%eax, %edi	# D.18836,
	call	mode_for_size	#
	movl	%eax, %edx	#, D.18839
	movl	-68(%rbp), %ecx	# align, tmp127
	movq	-56(%rbp), %rax	# exp, tmp128
	movq	32(%rax), %rsi	# exp_1->real_cst.real_cst, tmp129
	movq	%rsi, (%rsp)	# tmp129,
	movq	40(%rax), %rsi	# exp_1->real_cst.real_cst, tmp130
	movq	%rsi, 8(%rsp)	# tmp130,
	movq	48(%rax), %rax	# exp_1->real_cst.real_cst, tmp131
	movq	%rax, 16(%rsp)	# tmp131,
	movl	%ecx, %esi	# tmp127,
	movl	%edx, %edi	# D.18839,
	call	assemble_real	#
	.loc 1 4585 0
	jmp	.L938	#
.L933:
	.loc 1 4588 0
	movq	-32(%rbp), %rax	# thissize, tmp132
	movq	%rax, %rdx	# tmp132, tmp133
	shrq	$63, %rdx	#, tmp133
	addq	%rdx, %rax	# tmp133, tmp134
	sarq	%rax	# tmp135
	movq	%rax, %rcx	# tmp135, D.18840
	movq	-56(%rbp), %rax	# exp, tmp136
	movq	32(%rax), %rax	# exp_1->complex.real, D.18834
	movl	-68(%rbp), %edx	# align, tmp137
	movq	%rcx, %rsi	# D.18840,
	movq	%rax, %rdi	# D.18834,
	call	output_constant	#
	.loc 1 4590 0
	movq	-32(%rbp), %rax	# thissize, tmp138
	movq	%rax, %rdx	# tmp138, tmp139
	shrq	$63, %rdx	#, tmp139
	addq	%rdx, %rax	# tmp139, tmp140
	sarq	%rax	# tmp141
	.loc 1 4589 0
	leal	0(,%rax,8), %edx	#, D.18836
	movl	-68(%rbp), %eax	# align, tmp142
	movl	%edx, %esi	# D.18836,
	movl	%eax, %edi	# tmp142,
	call	min_align	#
	movl	%eax, %edx	#, D.18836
	movq	-32(%rbp), %rax	# thissize, tmp143
	movq	%rax, %rcx	# tmp143, tmp144
	shrq	$63, %rcx	#, tmp144
	addq	%rcx, %rax	# tmp144, tmp145
	sarq	%rax	# tmp146
	movq	%rax, %rcx	# tmp146, D.18840
	movq	-56(%rbp), %rax	# exp, tmp147
	movq	40(%rax), %rax	# exp_1->complex.imag, D.18834
	movq	%rcx, %rsi	# D.18840,
	movq	%rax, %rdi	# D.18834,
	call	output_constant	#
	.loc 1 4591 0
	jmp	.L938	#
.L934:
	.loc 1 4595 0
	movq	-56(%rbp), %rax	# exp, tmp148
	movzbl	16(%rax), %eax	# exp_1->common.code, D.18833
	cmpb	$46, %al	#, D.18833
	jne	.L940	#,
	.loc 1 4597 0
	movl	-68(%rbp), %edx	# align, tmp149
	movq	-64(%rbp), %rcx	# size, tmp150
	movq	-56(%rbp), %rax	# exp, tmp151
	movq	%rcx, %rsi	# tmp150,
	movq	%rax, %rdi	# tmp151,
	call	output_constructor	#
	.loc 1 4598 0
	jmp	.L920	#
.L940:
	.loc 1 4600 0
	movq	-56(%rbp), %rax	# exp, tmp152
	movzbl	16(%rax), %eax	# exp_1->common.code, D.18833
	cmpb	$29, %al	#, D.18833
	jne	.L941	#,
	.loc 1 4602 0
	movq	-56(%rbp), %rax	# exp, tmp153
	movl	32(%rax), %eax	# exp_1->string.length, D.18835
	movslq	%eax, %rdx	# D.18835, D.18840
	movq	-64(%rbp), %rax	# size, tmp155
	cmpq	%rax, %rdx	# tmp155, D.18840
	cmovle	%rdx, %rax	# D.18840,, tmp154
	movq	%rax, -32(%rbp)	# tmp154, thissize
	.loc 1 4603 0
	movq	-32(%rbp), %rax	# thissize, tmp156
	movl	%eax, %edx	# tmp156, D.18835
	movq	-56(%rbp), %rax	# exp, tmp157
	movq	40(%rax), %rax	# exp_1->string.pointer, D.18841
	movl	%edx, %esi	# D.18835,
	movq	%rax, %rdi	# D.18841,
	call	assemble_string	#
	.loc 1 4607 0
	jmp	.L938	#
.L941:
	.loc 1 4606 0
	movl	$__FUNCTION__.13956, %edx	#,
	movl	$4606, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L936:
	.loc 1 4611 0
	movq	-56(%rbp), %rax	# exp, tmp158
	movzbl	16(%rax), %eax	# exp_1->common.code, D.18833
	cmpb	$46, %al	#, D.18833
	jne	.L943	#,
	.loc 1 4612 0
	movl	-68(%rbp), %edx	# align, tmp159
	movq	-64(%rbp), %rcx	# size, tmp160
	movq	-56(%rbp), %rax	# exp, tmp161
	movq	%rcx, %rsi	# tmp160,
	movq	%rax, %rdi	# tmp161,
	call	output_constructor	#
	.loc 1 4615 0
	jmp	.L920	#
.L943:
	.loc 1 4614 0
	movl	$__FUNCTION__.13956, %edx	#,
	movl	$4614, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L935:
	.loc 1 4618 0
	movq	-56(%rbp), %rax	# exp, tmp162
	movzbl	16(%rax), %eax	# exp_1->common.code, D.18833
	cmpb	$25, %al	#, D.18833
	jne	.L945	#,
	.loc 1 4619 0
	movq	-32(%rbp), %rax	# thissize, tmp163
	movl	%eax, %ebx	# tmp163, D.18836
	movq	-56(%rbp), %rax	# exp, tmp164
	movl	$3, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp164,
	call	expand_expr	#
	movl	-68(%rbp), %edx	# align, tmp165
	movl	$1, %ecx	#,
	movl	%ebx, %esi	# D.18836,
	movq	%rax, %rdi	# D.18837,
	call	assemble_integer	#
	jmp	.L946	#
.L945:
	.loc 1 4622 0
	movq	-56(%rbp), %rax	# exp, tmp166
	movzbl	16(%rax), %eax	# exp_1->common.code, D.18833
	cmpb	$46, %al	#, D.18833
	jne	.L947	#,
.LBB97:
	.loc 1 4624 0
	movq	-32(%rbp), %rax	# thissize, thissize.379
	leaq	15(%rax), %rdx	#, tmp167
	movl	$16, %eax	#, tmp185
	subq	$1, %rax	#, tmp168
	addq	%rdx, %rax	# tmp167, tmp169
	movl	$16, %ebx	#, tmp186
	movl	$0, %edx	#, tmp172
	divq	%rbx	# tmp186
	imulq	$16, %rax, %rax	#, tmp171, tmp173
	subq	%rax, %rsp	# tmp173,
	leaq	24(%rsp), %rax	#, tmp174
	addq	$15, %rax	#, tmp175
	shrq	$4, %rax	#, tmp176
	salq	$4, %rax	#, tmp177
	movq	%rax, -24(%rbp)	# tmp177, buffer
	.loc 1 4625 0
	movq	-32(%rbp), %rax	# thissize, tmp178
	movl	%eax, %edx	# tmp178, D.18835
	movq	-24(%rbp), %rcx	# buffer, tmp179
	movq	-56(%rbp), %rax	# exp, tmp180
	movq	%rcx, %rsi	# tmp179,
	movq	%rax, %rdi	# tmp180,
	call	get_set_constructor_bytes	#
	testq	%rax, %rax	# D.18834
	je	.L948	#,
	.loc 1 4626 0
	movl	$__FUNCTION__.13956, %edx	#,
	movl	$4626, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L948:
	.loc 1 4627 0
	movq	-32(%rbp), %rax	# thissize, tmp181
	movl	%eax, %edx	# tmp181, D.18835
	movq	-24(%rbp), %rax	# buffer, tmp182
	movl	%edx, %esi	# D.18835,
	movq	%rax, %rdi	# tmp182,
	call	assemble_string	#
.LBE97:
	jmp	.L946	#
.L947:
	.loc 1 4630 0
	movl	$.LC68, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 4631 0
	jmp	.L920	#
.L946:
	jmp	.L920	#
.L928:
	.loc 1 4637 0
	movl	$__FUNCTION__.13956, %edx	#,
	movl	$4637, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L938:
	.loc 1 4640 0
	movq	-32(%rbp), %rax	# thissize, tmp183
	subq	%rax, -64(%rbp)	# tmp183, size
	.loc 1 4641 0
	cmpq	$0, -64(%rbp)	#, size
	jle	.L920	#,
	.loc 1 4642 0
	movq	-64(%rbp), %rax	# size, tmp184
	movl	%eax, %edi	# D.18835,
	call	assemble_zeros	#
	jmp	.L920	#
.L949:
	.loc 1 4634 0
	nop
.L920:
	.loc 1 4643 0
	movq	-8(%rbp), %rbx	#,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE101:
	.size	output_constant, .-output_constant
	.type	array_size_for_constructor, @function
array_size_for_constructor:
.LFB102:
	.loc 1 4653 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# val, val
	.loc 1 4659 0
	movq	-56(%rbp), %rax	# val, tmp79
	movzbl	16(%rax), %eax	# val_6(D)->common.code, D.18847
	cmpb	$29, %al	#, D.18847
	jne	.L951	#,
	.loc 1 4660 0
	movq	-56(%rbp), %rax	# val, tmp80
	movl	32(%rax), %eax	# val_6(D)->string.length, D.18848
	cltq
	jmp	.L952	#
.L951:
	.loc 1 4662 0
	movq	$0, -40(%rbp)	#, max_index
	.loc 1 4663 0
	movq	-56(%rbp), %rax	# val, tmp81
	movq	40(%rax), %rax	# val_6(D)->exp.operands, tmp82
	movq	%rax, -32(%rbp)	# tmp82, i
	jmp	.L953	#
.L957:
.LBB98:
	.loc 1 4665 0
	movq	-32(%rbp), %rax	# i, tmp83
	movq	24(%rax), %rax	# i_3->list.purpose, tmp84
	movq	%rax, -24(%rbp)	# tmp84, index
	.loc 1 4667 0
	movq	-24(%rbp), %rax	# index, tmp85
	movzbl	16(%rax), %eax	# index_12->common.code, D.18847
	cmpb	$113, %al	#, D.18847
	jne	.L954	#,
	.loc 1 4668 0
	movq	-24(%rbp), %rax	# index, tmp86
	movq	40(%rax), %rax	# index_12->exp.operands, tmp87
	movq	%rax, -24(%rbp)	# tmp87, index
.L954:
	.loc 1 4669 0
	cmpq	$0, -40(%rbp)	#, max_index
	je	.L955	#,
	.loc 1 4669 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rdx	# index, tmp88
	movq	-40(%rbp), %rax	# max_index, tmp89
	movq	%rdx, %rsi	# tmp88,
	movq	%rax, %rdi	# tmp89,
	call	tree_int_cst_lt	#
	testl	%eax, %eax	# D.18848
	je	.L956	#,
.L955:
	.loc 1 4670 0 is_stmt 1
	movq	-24(%rbp), %rax	# index, tmp90
	movq	%rax, -40(%rbp)	# tmp90, max_index
.L956:
.LBE98:
	.loc 1 4663 0
	movq	-32(%rbp), %rax	# i, tmp91
	movq	(%rax), %rax	# i_3->common.chain, tmp92
	movq	%rax, -32(%rbp)	# tmp92, i
.L953:
	.loc 1 4663 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, i
	jne	.L957	#,
	.loc 1 4673 0 is_stmt 1
	cmpq	$0, -40(%rbp)	#, max_index
	jne	.L958	#,
	.loc 1 4674 0
	movl	$0, %eax	#, D.18846
	jmp	.L952	#
.L958:
	.loc 1 4679 0
	movq	-56(%rbp), %rax	# val, tmp93
	movq	8(%rax), %rax	# val_6(D)->common.type, D.18849
	movq	24(%rax), %rax	# _19->type.values, D.18849
	.loc 1 4677 0
	movq	104(%rax), %rdx	# _20->type.minval, D.18849
	movq	sizetype_tab(%rip), %rax	# sizetype_tab, D.18849
	movq	%rdx, %rsi	# D.18849,
	movq	%rax, %rdi	# D.18849,
	call	convert	#
	movq	%rax, %rbx	#, D.18849
	movq	sizetype_tab(%rip), %rax	# sizetype_tab, D.18849
	movq	-40(%rbp), %rdx	# max_index, tmp94
	movq	%rdx, %rsi	# tmp94,
	movq	%rax, %rdi	# D.18849,
	call	convert	#
	movq	%rbx, %rdx	# D.18849,
	movq	%rax, %rsi	# D.18849,
	movl	$60, %edi	#,
	call	size_binop	#
	movq	%rax, -32(%rbp)	# tmp95, i
	.loc 1 4680 0
	movq	global_trees+96(%rip), %rdx	# global_trees, D.18849
	movq	sizetype_tab(%rip), %rax	# sizetype_tab, D.18849
	movq	%rdx, %rsi	# D.18849,
	movq	%rax, %rdi	# D.18849,
	call	convert	#
	movq	%rax, %rdx	#, D.18849
	movq	-32(%rbp), %rax	# i, tmp96
	movq	%rax, %rsi	# tmp96,
	movl	$59, %edi	#,
	call	size_binop	#
	movq	%rax, -32(%rbp)	# tmp97, i
	.loc 1 4683 0
	movq	-56(%rbp), %rax	# val, tmp98
	movq	8(%rax), %rax	# val_6(D)->common.type, D.18849
	movq	8(%rax), %rax	# _31->common.type, D.18849
	movq	40(%rax), %rdx	# _32->type.size_unit, D.18849
	movq	-32(%rbp), %rax	# i, tmp99
	movq	%rax, %rsi	# tmp99,
	movl	$61, %edi	#,
	call	size_binop	#
	movq	%rax, -32(%rbp)	# tmp100, i
	.loc 1 4685 0
	movq	-32(%rbp), %rax	# i, tmp101
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp101,
	call	tree_low_cst	#
.L952:
	.loc 1 4686 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE102:
	.size	array_size_for_constructor, .-array_size_for_constructor
	.section	.rodata
	.align 8
.LC69:
	.string	"invalid initial value for member `%s'"
	.text
	.type	output_constructor, @function
output_constructor:
.LFB103:
	.loc 1 4696 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$208, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -200(%rbp)	# exp, exp
	movq	%rsi, -208(%rbp)	# size, size
	movl	%edx, -212(%rbp)	# align, align
	.loc 1 4697 0
	movq	-200(%rbp), %rax	# exp, tmp166
	movq	8(%rax), %rax	# exp_41(D)->common.type, tmp167
	movq	%rax, -72(%rbp)	# tmp167, type
	.loc 1 4698 0
	movq	$0, -152(%rbp)	#, field
	.loc 1 4699 0
	movq	$0, -144(%rbp)	#, min_index
	.loc 1 4702 0
	movq	$0, -136(%rbp)	#, total_bytes
	.loc 1 4704 0
	movl	$0, -184(%rbp)	#, byte_buffer_in_use
	.loc 1 4705 0
	movl	$0, -180(%rbp)	#, byte
	.loc 1 4710 0
	movq	-72(%rbp), %rax	# type, tmp168
	movzbl	16(%rax), %eax	# type_42->common.code, D.18851
	cmpb	$20, %al	#, D.18851
	jne	.L960	#,
	.loc 1 4711 0
	movq	-72(%rbp), %rax	# type, tmp169
	movq	24(%rax), %rax	# type_42->type.values, tmp170
	movq	%rax, -152(%rbp)	# tmp170, field
.L960:
	.loc 1 4713 0
	movq	-72(%rbp), %rax	# type, tmp171
	movzbl	16(%rax), %eax	# type_42->common.code, D.18851
	cmpb	$18, %al	#, D.18851
	jne	.L961	#,
	.loc 1 4714 0
	movq	-72(%rbp), %rax	# type, tmp172
	movq	24(%rax), %rax	# type_42->type.values, D.18852
	testq	%rax, %rax	# D.18852
	je	.L961	#,
	.loc 1 4715 0
	movq	-72(%rbp), %rax	# type, tmp173
	movq	24(%rax), %rax	# type_42->type.values, D.18852
	movq	104(%rax), %rax	# _52->type.minval, tmp174
	movq	%rax, -144(%rbp)	# tmp174, min_index
.L961:
	.loc 1 4726 0
	movq	-200(%rbp), %rax	# exp, tmp175
	movq	40(%rax), %rax	# exp_41(D)->exp.operands, tmp176
	movq	%rax, -160(%rbp)	# tmp176, link
	jmp	.L962	#
.L1006:
.LBB99:
	.loc 1 4731 0
	movq	-160(%rbp), %rax	# link, tmp177
	movq	32(%rax), %rax	# link_1->list.value, tmp178
	movq	%rax, -128(%rbp)	# tmp178, val
	.loc 1 4732 0
	movq	$0, -120(%rbp)	#, index
	.loc 1 4736 0
	movq	-72(%rbp), %rax	# type, tmp179
	movzbl	16(%rax), %eax	# type_42->common.code, D.18851
	cmpb	$20, %al	#, D.18851
	je	.L963	#,
	.loc 1 4736 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# type, tmp180
	movzbl	16(%rax), %eax	# type_42->common.code, D.18851
	cmpb	$21, %al	#, D.18851
	je	.L963	#,
	.loc 1 4737 0 is_stmt 1
	movq	-72(%rbp), %rax	# type, tmp181
	movzbl	16(%rax), %eax	# type_42->common.code, D.18851
	cmpb	$22, %al	#, D.18851
	jne	.L964	#,
.L963:
	.loc 1 4738 0
	movq	-160(%rbp), %rax	# link, tmp182
	movq	24(%rax), %rax	# link_1->list.purpose, D.18852
	testq	%rax, %rax	# D.18852
	je	.L964	#,
	.loc 1 4739 0
	movq	-160(%rbp), %rax	# link, tmp183
	movq	24(%rax), %rax	# link_1->list.purpose, tmp184
	movq	%rax, -152(%rbp)	# tmp184, field
	jmp	.L965	#
.L964:
	.loc 1 4741 0
	movq	-72(%rbp), %rax	# type, tmp185
	movzbl	16(%rax), %eax	# type_42->common.code, D.18851
	cmpb	$18, %al	#, D.18851
	jne	.L965	#,
	.loc 1 4742 0
	movq	-160(%rbp), %rax	# link, tmp186
	movq	24(%rax), %rax	# link_1->list.purpose, tmp187
	movq	%rax, -120(%rbp)	# tmp187, index
.L965:
	.loc 1 4745 0
	cmpq	$0, -128(%rbp)	#, val
	je	.L966	#,
	.loc 1 4746 0
	jmp	.L967	#
.L969:
	.loc 1 4746 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# val, tmp188
	movq	32(%rax), %rax	# val_27->exp.operands, tmp189
	movq	%rax, -128(%rbp)	# tmp189, val
.L967:
	movq	-128(%rbp), %rax	# val, tmp190
	movzbl	16(%rax), %eax	# val_27->common.code, D.18851
	cmpb	$115, %al	#, D.18851
	je	.L968	#,
	.loc 1 4746 0 discriminator 3
	movq	-128(%rbp), %rax	# val, tmp191
	movzbl	16(%rax), %eax	# val_27->common.code, D.18851
	cmpb	$114, %al	#, D.18851
	je	.L968	#,
	.loc 1 4746 0 discriminator 1
	movq	-128(%rbp), %rax	# val, tmp192
	movzbl	16(%rax), %eax	# val_27->common.code, D.18851
	cmpb	$116, %al	#, D.18851
	jne	.L966	#,
.L968:
	.loc 1 4746 0 discriminator 2
	movq	-128(%rbp), %rax	# val, tmp193
	movq	32(%rax), %rdx	# val_27->exp.operands, D.18852
	movq	global_trees(%rip), %rax	# global_trees, D.18852
	cmpq	%rax, %rdx	# D.18852, D.18852
	je	.L966	#,
	.loc 1 4746 0 discriminator 1
	movq	-128(%rbp), %rax	# val, tmp194
	movq	8(%rax), %rax	# val_27->common.type, D.18852
	movzbl	61(%rax), %eax	# *_69, tmp197
	shrb	%al	# D.18853
	movl	%eax, %edx	# D.18853, D.18853
	movq	-128(%rbp), %rax	# val, tmp198
	movq	32(%rax), %rax	# val_27->exp.operands, D.18852
	movq	8(%rax), %rax	# _71->common.type, D.18852
	movzbl	61(%rax), %eax	# *_72, tmp201
	shrb	%al	# D.18853
	cmpb	%al, %dl	# D.18853, D.18853
	je	.L969	#,
.L966:
	.loc 1 4748 0 is_stmt 1
	cmpq	$0, -120(%rbp)	#, index
	je	.L970	#,
	.loc 1 4748 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# index, tmp202
	movzbl	16(%rax), %eax	# index_30->common.code, D.18851
	cmpb	$113, %al	#, D.18851
	jne	.L970	#,
.LBB100:
	.loc 1 4751 0 is_stmt 1
	movq	-72(%rbp), %rax	# type, tmp203
	movq	8(%rax), %rax	# type_42->common.type, D.18852
	movq	%rax, %rdi	# D.18852,
	call	int_size_in_bytes	#
	.loc 1 4750 0
	movq	%rax, -64(%rbp)	# D.18854, fieldsize
	.loc 1 4752 0
	movq	-120(%rbp), %rax	# index, tmp204
	movq	32(%rax), %rax	# index_30->exp.operands, D.18852
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.18852,
	call	tree_low_cst	#
	movq	%rax, -56(%rbp)	# tmp205, lo_index
	.loc 1 4753 0
	movq	-120(%rbp), %rax	# index, tmp206
	movq	40(%rax), %rax	# index_30->exp.operands, D.18852
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.18852,
	call	tree_low_cst	#
	movq	%rax, -48(%rbp)	# tmp207, hi_index
	.loc 1 4755 0
	movq	-64(%rbp), %rax	# fieldsize, tmp208
	leal	0(,%rax,8), %edx	#, D.18855
	movl	-212(%rbp), %eax	# align, tmp209
	movl	%edx, %esi	# D.18855,
	movl	%eax, %edi	# tmp209,
	call	min_align	#
	movl	%eax, -168(%rbp)	# tmp210, align2
	.loc 1 4757 0
	movq	-56(%rbp), %rax	# lo_index, tmp211
	movq	%rax, -112(%rbp)	# tmp211, index
	jmp	.L971	#
.L974:
	.loc 1 4760 0
	cmpq	$0, -128(%rbp)	#, val
	jne	.L972	#,
	.loc 1 4761 0
	movq	-64(%rbp), %rax	# fieldsize, tmp212
	movl	%eax, %edi	# D.18856,
	call	assemble_zeros	#
	jmp	.L973	#
.L972:
	.loc 1 4763 0
	movq	-64(%rbp), %rcx	# fieldsize, fieldsize.380
	movl	-168(%rbp), %edx	# align2, tmp213
	movq	-128(%rbp), %rax	# val, tmp214
	movq	%rcx, %rsi	# fieldsize.380,
	movq	%rax, %rdi	# tmp214,
	call	output_constant	#
.L973:
	.loc 1 4766 0
	movq	-136(%rbp), %rdx	# total_bytes, total_bytes.381
	movq	-64(%rbp), %rax	# fieldsize, tmp215
	addq	%rdx, %rax	# total_bytes.381, D.18857
	movq	%rax, -136(%rbp)	# D.18857, total_bytes
	.loc 1 4757 0
	addq	$1, -112(%rbp)	#, index
.L971:
	.loc 1 4757 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# index, tmp216
	cmpq	-48(%rbp), %rax	# hi_index, tmp216
	jle	.L974	#,
.LBE100:
	.loc 1 4749 0 is_stmt 1
	jmp	.L975	#
.L970:
	.loc 1 4769 0
	cmpq	$0, -152(%rbp)	#, field
	je	.L976	#,
	.loc 1 4769 0 is_stmt 0 discriminator 1
	movq	-152(%rbp), %rax	# field, tmp217
	movzbl	49(%rax), %eax	# *field_3, D.18851
	andl	$16, %eax	#, D.18851
	testb	%al, %al	# D.18851
	jne	.L977	#,
.L976:
.LBB101:
	.loc 1 4776 0 is_stmt 1
	cmpq	$0, -152(%rbp)	#, field
	je	.L978	#,
	.loc 1 4776 0 is_stmt 0 discriminator 1
	movq	-152(%rbp), %rax	# field, tmp218
	movq	%rax, %rdi	# tmp218,
	call	int_byte_position	#
	jmp	.L979	#
.L978:
	.loc 1 4776 0 discriminator 2
	movl	$0, %eax	#, iftmp.382
.L979:
	.loc 1 4776 0 discriminator 3
	movq	%rax, -96(%rbp)	# iftmp.382, pos
	.loc 1 4779 0 is_stmt 1 discriminator 3
	cmpq	$0, -120(%rbp)	#, index
	je	.L980	#,
	.loc 1 4780 0
	movq	-128(%rbp), %rax	# val, tmp219
	movq	8(%rax), %rax	# val_28->common.type, D.18852
	movq	40(%rax), %rax	# _153->type.size_unit, D.18852
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.18852,
	call	tree_low_cst	#
	movq	%rax, %rbx	#, D.18854
	.loc 1 4781 0
	movq	-120(%rbp), %rax	# index, tmp220
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp220,
	call	tree_low_cst	#
	movq	%rax, %r12	#, D.18854
	movq	-144(%rbp), %rax	# min_index, tmp221
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp221,
	call	tree_low_cst	#
	subq	%rax, %r12	# D.18854, D.18854
	movq	%r12, %rax	# D.18854, D.18854
	.loc 1 4780 0
	imulq	%rbx, %rax	# D.18854, tmp222
	movq	%rax, -96(%rbp)	# tmp222, pos
.L980:
	.loc 1 4784 0
	cmpl	$0, -184(%rbp)	#, byte_buffer_in_use
	je	.L981	#,
	.loc 1 4786 0
	movl	-180(%rbp), %eax	# byte, tmp223
	cltq
	movq	%rax, %rsi	# D.18854,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movl	$1, %ecx	#,
	movl	$8, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.18859,
	call	assemble_integer	#
	.loc 1 4787 0
	addq	$1, -136(%rbp)	#, total_bytes
	.loc 1 4788 0
	movl	$0, -184(%rbp)	#, byte_buffer_in_use
.L981:
	.loc 1 4794 0
	cmpq	$0, -152(%rbp)	#, field
	jne	.L982	#,
	.loc 1 4794 0 is_stmt 0 discriminator 2
	cmpq	$0, -120(%rbp)	#, index
	je	.L983	#,
.L982:
	.loc 1 4794 0 discriminator 1
	movq	-96(%rbp), %rax	# pos, tmp224
	cmpq	-136(%rbp), %rax	# total_bytes, tmp224
	je	.L983	#,
	.loc 1 4796 0 is_stmt 1
	movq	-96(%rbp), %rax	# pos, tmp225
	movl	%eax, %edx	# tmp225, D.18860
	movq	-136(%rbp), %rax	# total_bytes, tmp226
	subl	%eax, %edx	# D.18860, D.18860
	movl	%edx, %eax	# D.18860, D.18860
	movl	%eax, %edi	# D.18856,
	call	assemble_zeros	#
	.loc 1 4797 0
	movq	-96(%rbp), %rax	# pos, tmp227
	movq	%rax, -136(%rbp)	# tmp227, total_bytes
.L983:
	.loc 1 4801 0
	movq	-96(%rbp), %rax	# pos, tmp228
	leal	0(,%rax,8), %edx	#, D.18855
	movl	-212(%rbp), %eax	# align, tmp229
	movl	%edx, %esi	# D.18855,
	movl	%eax, %edi	# tmp229,
	call	min_align	#
	movl	%eax, -164(%rbp)	# tmp230, align2
	.loc 1 4804 0
	cmpq	$0, -152(%rbp)	#, field
	je	.L984	#,
	.loc 1 4806 0
	movq	$0, -104(%rbp)	#, fieldsize
	.loc 1 4813 0
	movq	-152(%rbp), %rax	# field, tmp231
	movq	8(%rax), %rax	# field_3->common.type, D.18852
	movzbl	16(%rax), %eax	# _173->common.code, D.18851
	cmpb	$18, %al	#, D.18851
	jne	.L985	#,
	.loc 1 4814 0
	movq	-152(%rbp), %rax	# field, tmp232
	movq	8(%rax), %rax	# field_3->common.type, D.18852
	movq	24(%rax), %rax	# _175->type.values, D.18852
	testq	%rax, %rax	# D.18852
	je	.L985	#,
	.loc 1 4815 0
	movq	-152(%rbp), %rax	# field, tmp233
	movq	8(%rax), %rax	# field_3->common.type, D.18852
	movq	24(%rax), %rax	# _177->type.values, D.18852
	movq	112(%rax), %rax	# _178->type.maxval, D.18852
	testq	%rax, %rax	# D.18852
	jne	.L985	#,
	.loc 1 4817 0
	movq	-128(%rbp), %rax	# val, tmp234
	movq	%rax, %rdi	# tmp234,
	call	array_size_for_constructor	#
	movq	%rax, -104(%rbp)	# tmp235, fieldsize
	.loc 1 4820 0
	cmpq	$0, -104(%rbp)	#, fieldsize
	je	.L986	#,
	.loc 1 4820 0 is_stmt 0 discriminator 1
	movq	-152(%rbp), %rax	# field, tmp236
	movq	(%rax), %rax	# field_3->common.chain, D.18852
	testq	%rax, %rax	# D.18852
	je	.L986	#,
	.loc 1 4821 0 is_stmt 1
	movl	$__FUNCTION__.13995, %edx	#,
	movl	$4821, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L986:
	.loc 1 4820 0 discriminator 2
	nop
	jmp	.L988	#
.L985:
	.loc 1 4823 0
	movq	-152(%rbp), %rax	# field, tmp237
	movq	64(%rax), %rax	# field_3->decl.size_unit, D.18852
	testq	%rax, %rax	# D.18852
	je	.L988	#,
	.loc 1 4827 0
	movq	-152(%rbp), %rax	# field, tmp238
	movq	64(%rax), %rax	# field_3->decl.size_unit, D.18852
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.18852,
	call	host_integerp	#
	testl	%eax, %eax	# D.18856
	je	.L988	#,
	.loc 1 4828 0
	movq	-152(%rbp), %rax	# field, tmp239
	movq	64(%rax), %rax	# field_3->decl.size_unit, D.18852
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.18852,
	call	tree_low_cst	#
	movq	%rax, -104(%rbp)	# D.18854, fieldsize
	jmp	.L988	#
.L984:
	.loc 1 4832 0
	movq	-72(%rbp), %rax	# type, tmp240
	movq	8(%rax), %rax	# type_42->common.type, D.18852
	movq	%rax, %rdi	# D.18852,
	call	int_size_in_bytes	#
	movq	%rax, -104(%rbp)	# D.18854, fieldsize
.L988:
	.loc 1 4835 0
	cmpq	$0, -128(%rbp)	#, val
	jne	.L989	#,
	.loc 1 4836 0
	movq	-104(%rbp), %rax	# fieldsize, tmp241
	movl	%eax, %edi	# D.18856,
	call	assemble_zeros	#
	jmp	.L990	#
.L989:
	.loc 1 4838 0
	movq	-104(%rbp), %rcx	# fieldsize, fieldsize.383
	movl	-164(%rbp), %edx	# align2, tmp242
	movq	-128(%rbp), %rax	# val, tmp243
	movq	%rcx, %rsi	# fieldsize.383,
	movq	%rax, %rdi	# tmp243,
	call	output_constant	#
.L990:
	.loc 1 4841 0
	movq	-136(%rbp), %rdx	# total_bytes, total_bytes.384
	movq	-104(%rbp), %rax	# fieldsize, tmp244
	addq	%rdx, %rax	# total_bytes.384, D.18857
	movq	%rax, -136(%rbp)	# D.18857, total_bytes
.LBE101:
	.loc 1 4770 0
	jmp	.L975	#
.L977:
	.loc 1 4843 0
	cmpq	$0, -128(%rbp)	#, val
	je	.L991	#,
	.loc 1 4843 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# val, tmp245
	movzbl	16(%rax), %eax	# val_28->common.code, D.18851
	cmpb	$25, %al	#, D.18851
	je	.L991	#,
	.loc 1 4845 0 is_stmt 1
	movq	-152(%rbp), %rax	# field, tmp246
	movq	72(%rax), %rax	# field_3->decl.name, D.18852
	movq	32(%rax), %rax	# _97->identifier.id.str, D.18858
	.loc 1 4844 0
	movq	%rax, %rsi	# D.18858,
	movl	$.LC69, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	jmp	.L975	#
.L991:
.LBB102:
	.loc 1 4850 0
	movq	-152(%rbp), %rax	# field, tmp247
	movq	%rax, %rdi	# tmp247,
	call	int_bit_position	#
	movq	%rax, -88(%rbp)	# tmp248, next_offset
	.loc 1 4852 0
	movq	-152(%rbp), %rax	# field, tmp249
	movq	40(%rax), %rax	# field_3->decl.size, D.18852
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.18852,
	call	tree_low_cst	#
	.loc 1 4851 0
	movq	-88(%rbp), %rdx	# next_offset, tmp253
	addq	%rdx, %rax	# tmp253, tmp252
	movq	%rax, -40(%rbp)	# tmp252, end_offset
	.loc 1 4854 0
	cmpq	$0, -128(%rbp)	#, val
	jne	.L992	#,
	.loc 1 4855 0
	movq	global_trees+88(%rip), %rax	# global_trees, tmp254
	movq	%rax, -128(%rbp)	# tmp254, val
.L992:
	.loc 1 4859 0
	movq	-88(%rbp), %rax	# next_offset, tmp255
	leaq	7(%rax), %rdx	#, tmp257
	testq	%rax, %rax	# tmp256
	cmovs	%rdx, %rax	# tmp257,, tmp256
	sarq	$3, %rax	#, tmp258
	cmpq	-136(%rbp), %rax	# total_bytes, D.18854
	je	.L993	#,
	.loc 1 4862 0
	cmpl	$0, -184(%rbp)	#, byte_buffer_in_use
	je	.L994	#,
	.loc 1 4864 0
	movl	-180(%rbp), %eax	# byte, tmp259
	cltq
	movq	%rax, %rsi	# D.18854,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movl	$1, %ecx	#,
	movl	$8, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.18859,
	call	assemble_integer	#
	.loc 1 4865 0
	addq	$1, -136(%rbp)	#, total_bytes
	.loc 1 4866 0
	movl	$0, -184(%rbp)	#, byte_buffer_in_use
.L994:
	.loc 1 4870 0
	movq	-88(%rbp), %rax	# next_offset, tmp260
	leaq	7(%rax), %rdx	#, tmp262
	testq	%rax, %rax	# tmp261
	cmovs	%rdx, %rax	# tmp262,, tmp261
	sarq	$3, %rax	#, tmp263
	cmpq	-136(%rbp), %rax	# total_bytes, D.18854
	je	.L993	#,
	.loc 1 4872 0
	movq	-88(%rbp), %rax	# next_offset, tmp264
	leaq	7(%rax), %rdx	#, tmp266
	testq	%rax, %rax	# tmp265
	cmovs	%rdx, %rax	# tmp266,, tmp265
	sarq	$3, %rax	#, tmp267
	movl	%eax, %edx	# D.18854, D.18860
	movq	-136(%rbp), %rax	# total_bytes, tmp268
	subl	%eax, %edx	# D.18860, D.18860
	movl	%edx, %eax	# D.18860, D.18860
	movl	%eax, %edi	# D.18856,
	call	assemble_zeros	#
	.loc 1 4873 0
	movq	-88(%rbp), %rax	# next_offset, tmp270
	leaq	7(%rax), %rdx	#, tmp272
	testq	%rax, %rax	# tmp271
	cmovs	%rdx, %rax	# tmp272,, tmp271
	sarq	$3, %rax	#, tmp273
	movq	%rax, -136(%rbp)	# tmp273, total_bytes
.L993:
	.loc 1 4877 0
	cmpl	$0, -184(%rbp)	#, byte_buffer_in_use
	jne	.L995	#,
	.loc 1 4878 0
	movl	$0, -180(%rbp)	#, byte
	.loc 1 4888 0
	jmp	.L996	#
.L995:
	jmp	.L996	#
.L1003:
.LBB103:
	.loc 1 4893 0
	movq	-88(%rbp), %rax	# next_offset, tmp275
	leaq	7(%rax), %rdx	#, tmp277
	testq	%rax, %rax	# tmp276
	cmovs	%rdx, %rax	# tmp277,, tmp276
	sarq	$3, %rax	#, tmp278
	movq	%rax, -32(%rbp)	# tmp278, next_byte
	.loc 1 4894 0
	movq	-88(%rbp), %rax	# next_offset, tmp280
	cqto
	shrq	$61, %rdx	#, tmp282
	addq	%rdx, %rax	# tmp282, tmp283
	andl	$7, %eax	#, tmp284
	subq	%rdx, %rax	# tmp282, tmp285
	movq	%rax, -24(%rbp)	# tmp285, next_bit
	.loc 1 4898 0
	jmp	.L997	#
.L998:
	.loc 1 4900 0
	movl	-180(%rbp), %eax	# byte, tmp286
	cltq
	movq	%rax, %rsi	# D.18854,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movl	$1, %ecx	#,
	movl	$8, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.18859,
	call	assemble_integer	#
	.loc 1 4901 0
	addq	$1, -136(%rbp)	#, total_bytes
	.loc 1 4902 0
	movl	$0, -180(%rbp)	#, byte
.L997:
	.loc 1 4898 0 discriminator 1
	movq	-32(%rbp), %rax	# next_byte, tmp287
	cmpq	-136(%rbp), %rax	# total_bytes, tmp287
	jne	.L998	#,
	.loc 1 4907 0
	movl	$8, %eax	#, tmp288
	subq	-24(%rbp), %rax	# next_bit, D.18854
	movq	-88(%rbp), %rdx	# next_offset, tmp289
	movq	-40(%rbp), %rcx	# end_offset, tmp290
	subq	%rdx, %rcx	# tmp289, D.18854
	movq	%rcx, %rdx	# D.18854, D.18854
	cmpq	%rdx, %rax	# D.18854, D.18854
	cmovg	%rdx, %rax	# D.18854,, D.18854, D.18854
	movl	%eax, -176(%rbp)	# D.18854, this_time
	.loc 1 4950 0
	movq	-88(%rbp), %rax	# next_offset, tmp291
	movl	%eax, %ebx	# tmp291, D.18860
	movq	-152(%rbp), %rax	# field, tmp292
	movq	%rax, %rdi	# tmp292,
	call	int_bit_position	#
	subl	%eax, %ebx	# D.18860, D.18860
	movl	%ebx, %eax	# D.18860, D.18860
	movl	%eax, -172(%rbp)	# D.18860, shift
	.loc 1 4956 0
	cmpl	$63, -172(%rbp)	#, shift
	jg	.L999	#,
	.loc 1 4957 0
	movl	-176(%rbp), %eax	# this_time, tmp293
	movl	-172(%rbp), %edx	# shift, tmp294
	addl	%edx, %eax	# tmp294, D.18856
	cmpl	$64, %eax	#, D.18856
	jle	.L999	#,
	.loc 1 4958 0
	movl	$64, %eax	#, tmp298
	subl	-172(%rbp), %eax	# shift, tmp297
	movl	%eax, -176(%rbp)	# tmp297, this_time
.L999:
	.loc 1 4961 0
	cmpl	$63, -172(%rbp)	#, shift
	jg	.L1000	#,
	.loc 1 4962 0
	movq	-128(%rbp), %rax	# val, tmp299
	movq	32(%rax), %rax	# val_29->int_cst.int_cst.low, D.18857
	movq	%rax, -80(%rbp)	# D.18857, value
	jmp	.L1001	#
.L1000:
	.loc 1 4963 0
	cmpl	$127, -172(%rbp)	#, shift
	jg	.L1002	#,
	.loc 1 4965 0
	movq	-128(%rbp), %rax	# val, tmp300
	movq	40(%rax), %rax	# val_29->int_cst.int_cst.high, tmp301
	movq	%rax, -80(%rbp)	# tmp301, value
	.loc 1 4966 0
	subl	$64, -172(%rbp)	#, shift
	jmp	.L1001	#
.L1002:
	.loc 1 4969 0
	movl	$__FUNCTION__.13995, %edx	#,
	movl	$4969, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L1001:
	.loc 1 4973 0
	movl	-172(%rbp), %eax	# shift, tmp302
	movq	-80(%rbp), %rdx	# value, tmp303
	movq	%rdx, %rsi	# tmp303, D.18854
	movl	%eax, %ecx	# tmp302, tmp323
	sarq	%cl, %rsi	# tmp323, D.18854
	.loc 1 4974 0
	movl	-176(%rbp), %eax	# this_time, tmp304
	subl	$1, %eax	#, D.18856
	movl	$2, %edx	#, tmp305
	movl	%eax, %ecx	# D.18856, tmp325
	salq	%cl, %rdx	# tmp325, D.18854
	movq	%rdx, %rax	# D.18854, D.18854
	subq	$1, %rax	#, D.18854
	andq	%rax, %rsi	# D.18854, D.18854
	movq	%rsi, %rdx	# D.18854, D.18854
	.loc 1 4975 0
	movq	-24(%rbp), %rax	# next_bit, tmp306
	movl	%eax, %ecx	# D.18856, tmp328
	salq	%cl, %rdx	# tmp328, D.18854
	movq	%rdx, %rax	# D.18854, D.18854
	.loc 1 4973 0
	orl	%eax, -180(%rbp)	# D.18856, byte
	.loc 1 4978 0
	movl	-176(%rbp), %eax	# this_time, tmp307
	cltq
	addq	%rax, -88(%rbp)	# D.18854, next_offset
	.loc 1 4979 0
	movl	$1, -184(%rbp)	#, byte_buffer_in_use
.L996:
.LBE103:
	.loc 1 4888 0 discriminator 1
	movq	-88(%rbp), %rax	# next_offset, tmp308
	cmpq	-40(%rbp), %rax	# end_offset, tmp308
	jl	.L1003	#,
.L975:
.LBE102:
.LBE99:
	.loc 1 4728 0
	movq	-160(%rbp), %rax	# link, tmp309
	movq	(%rax), %rax	# link_1->common.chain, tmp310
	movq	%rax, -160(%rbp)	# tmp310, link
	.loc 1 4729 0
	cmpq	$0, -152(%rbp)	#, field
	je	.L1004	#,
	.loc 1 4729 0 is_stmt 0 discriminator 1
	movq	-152(%rbp), %rax	# field, tmp311
	movq	(%rax), %rax	# field_3->common.chain, iftmp.386
	jmp	.L1005	#
.L1004:
	.loc 1 4729 0 discriminator 2
	movl	$0, %eax	#, iftmp.386
.L1005:
	.loc 1 4729 0 discriminator 3
	movq	%rax, -152(%rbp)	# iftmp.386, field
.L962:
	.loc 1 4726 0 is_stmt 1 discriminator 1
	cmpq	$0, -160(%rbp)	#, link
	jne	.L1006	#,
	.loc 1 4984 0
	cmpl	$0, -184(%rbp)	#, byte_buffer_in_use
	je	.L1007	#,
	.loc 1 4986 0
	movl	-180(%rbp), %eax	# byte, tmp312
	cltq
	movq	%rax, %rsi	# D.18854,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movl	$1, %ecx	#,
	movl	$8, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.18859,
	call	assemble_integer	#
	.loc 1 4987 0
	addq	$1, -136(%rbp)	#, total_bytes
.L1007:
	.loc 1 4990 0
	movq	-136(%rbp), %rax	# total_bytes, tmp313
	cmpq	-208(%rbp), %rax	# size, tmp313
	jge	.L959	#,
	.loc 1 4991 0
	movq	-208(%rbp), %rax	# size, tmp314
	movl	%eax, %edx	# tmp314, D.18860
	movq	-136(%rbp), %rax	# total_bytes, tmp315
	subl	%eax, %edx	# D.18860, D.18860
	movl	%edx, %eax	# D.18860, D.18860
	movl	%eax, %edi	# D.18856,
	call	assemble_zeros	#
.L959:
	.loc 1 4992 0
	addq	$208, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE103:
	.size	output_constructor, .-output_constructor
	.local	weak_decls
	.comm	weak_decls,8,8
	.type	mark_weak, @function
mark_weak:
.LFB104:
	.loc 1 5003 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# decl, decl
	.loc 1 5004 0
	movq	-8(%rbp), %rax	# decl, tmp73
	movzbl	50(%rax), %edx	#, tmp76
	orl	$-128, %edx	#, tmp77
	movb	%dl, 50(%rax)	# tmp77,
	.loc 1 5006 0
	movq	-8(%rbp), %rax	# decl, tmp78
	movq	144(%rax), %rax	# decl_5(D)->decl.rtl, D.18862
	testq	%rax, %rax	# D.18862
	je	.L1009	#,
	.loc 1 5007 0
	movq	-8(%rbp), %rax	# decl, tmp79
	movq	144(%rax), %rax	# decl_5(D)->decl.rtl, D.18862
	testq	%rax, %rax	# D.18862
	je	.L1011	#,
	.loc 1 5007 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# decl, tmp80
	movq	144(%rax), %rax	# decl_5(D)->decl.rtl, iftmp.387
	jmp	.L1012	#
.L1011:
	.loc 1 5007 0 discriminator 2
	movq	-8(%rbp), %rax	# decl, tmp81
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp81,
	call	make_decl_rtl	#
	movq	-8(%rbp), %rax	# decl, tmp82
	movq	144(%rax), %rax	# decl_5(D)->decl.rtl, iftmp.387
.L1012:
	.loc 1 5007 0 discriminator 3
	movzwl	(%rax), %eax	# iftmp.387_1->code, D.18863
	cmpw	$66, %ax	#, D.18863
	jne	.L1009	#,
	.loc 1 5008 0 is_stmt 1
	movq	-8(%rbp), %rax	# decl, tmp83
	movq	144(%rax), %rax	# decl_5(D)->decl.rtl, D.18862
	testq	%rax, %rax	# D.18862
	je	.L1013	#,
	.loc 1 5008 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# decl, tmp84
	movq	144(%rax), %rax	# decl_5(D)->decl.rtl, iftmp.388
	jmp	.L1014	#
.L1013:
	.loc 1 5008 0 discriminator 2
	movq	-8(%rbp), %rax	# decl, tmp85
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp85,
	call	make_decl_rtl	#
	movq	-8(%rbp), %rax	# decl, tmp86
	movq	144(%rax), %rax	# decl_5(D)->decl.rtl, iftmp.388
.L1014:
	.loc 1 5008 0 discriminator 3
	movq	8(%rax), %rax	# iftmp.388_2->fld[0].rtx, D.18862
	testq	%rax, %rax	# D.18862
	je	.L1009	#,
	.loc 1 5009 0 is_stmt 1
	movq	-8(%rbp), %rax	# decl, tmp87
	movq	144(%rax), %rax	# decl_5(D)->decl.rtl, D.18862
	testq	%rax, %rax	# D.18862
	je	.L1015	#,
	.loc 1 5009 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# decl, tmp88
	movq	144(%rax), %rax	# decl_5(D)->decl.rtl, iftmp.389
	jmp	.L1016	#
.L1015:
	.loc 1 5009 0 discriminator 2
	movq	-8(%rbp), %rax	# decl, tmp89
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp89,
	call	make_decl_rtl	#
	movq	-8(%rbp), %rax	# decl, tmp90
	movq	144(%rax), %rax	# decl_5(D)->decl.rtl, iftmp.389
.L1016:
	.loc 1 5009 0 discriminator 3
	movq	8(%rax), %rax	# iftmp.389_3->fld[0].rtx, D.18862
	movzwl	(%rax), %eax	# _18->code, D.18863
	cmpw	$68, %ax	#, D.18863
	jne	.L1009	#,
	.loc 1 5010 0 is_stmt 1
	movq	-8(%rbp), %rax	# decl, tmp91
	movq	144(%rax), %rax	# decl_5(D)->decl.rtl, D.18862
	testq	%rax, %rax	# D.18862
	je	.L1017	#,
	.loc 1 5010 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# decl, tmp92
	movq	144(%rax), %rax	# decl_5(D)->decl.rtl, iftmp.390
	jmp	.L1018	#
.L1017:
	.loc 1 5010 0 discriminator 2
	movq	-8(%rbp), %rax	# decl, tmp93
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp93,
	call	make_decl_rtl	#
	movq	-8(%rbp), %rax	# decl, tmp94
	movq	144(%rax), %rax	# decl_5(D)->decl.rtl, iftmp.390
.L1018:
	.loc 1 5010 0 discriminator 3
	movq	8(%rax), %rax	# iftmp.390_4->fld[0].rtx, D.18862
	movzbl	3(%rax), %edx	# _23->integrated, tmp97
	orl	$64, %edx	#, tmp98
	movb	%dl, 3(%rax)	# tmp98, _23->integrated
.L1009:
	.loc 1 5011 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE104:
	.size	mark_weak, .-mark_weak
	.section	.rodata
	.align 8
.LC70:
	.string	"weak declaration of `%s' must precede definition"
	.align 8
.LC71:
	.string	"weak declaration of `%s' after first use results in unspecified behavior"
	.text
	.globl	merge_weak
	.type	merge_weak, @function
merge_weak:
.LFB105:
	.loc 1 5019 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# newdecl, newdecl
	movq	%rsi, -32(%rbp)	# olddecl, olddecl
	.loc 1 5020 0
	movq	-24(%rbp), %rax	# newdecl, tmp73
	movzbl	50(%rax), %eax	# *newdecl_2(D), tmp76
	shrb	$7, %al	#, D.18864
	movl	%eax, %edx	# D.18864, D.18864
	movq	-32(%rbp), %rax	# olddecl, tmp77
	movzbl	50(%rax), %eax	# *olddecl_4(D), tmp80
	shrb	$7, %al	#, D.18864
	cmpb	%al, %dl	# D.18864, D.18864
	jne	.L1020	#,
	.loc 1 5021 0
	jmp	.L1019	#
.L1020:
	.loc 1 5023 0
	movq	-24(%rbp), %rax	# newdecl, tmp81
	movzbl	50(%rax), %eax	# *newdecl_2(D), D.18865
	andl	$-128, %eax	#, D.18865
	testb	%al, %al	# D.18865
	je	.L1022	#,
.LBB104:
	.loc 1 5033 0
	movq	-32(%rbp), %rax	# olddecl, tmp82
	movzbl	17(%rax), %eax	# *olddecl_4(D), D.18865
	andl	$64, %eax	#, D.18865
	testb	%al, %al	# D.18865
	je	.L1023	#,
	.loc 1 5034 0
	movq	-24(%rbp), %rax	# newdecl, tmp83
	movl	$.LC70, %esi	#,
	movq	%rax, %rdi	# tmp83,
	movl	$0, %eax	#,
	call	error_with_decl	#
	jmp	.L1030	#
.L1023:
	.loc 1 5040 0
	movq	-32(%rbp), %rax	# olddecl, tmp84
	movzbl	18(%rax), %eax	# *olddecl_4(D), D.18865
	andl	$1, %eax	#, D.18865
	testb	%al, %al	# D.18865
	je	.L1030	#,
	.loc 1 5041 0
	movq	-32(%rbp), %rax	# olddecl, tmp85
	movq	120(%rax), %rax	# olddecl_4(D)->decl.assembler_name, D.18866
	testq	%rax, %rax	# D.18866
	jne	.L1025	#,
	.loc 1 5041 0 is_stmt 0 discriminator 1
	movq	lang_set_decl_assembler_name(%rip), %rax	# lang_set_decl_assembler_name, lang_set_decl_assembler_name.391
	movq	-32(%rbp), %rdx	# olddecl, tmp86
	movq	%rdx, %rdi	# tmp86,
	call	*%rax	# lang_set_decl_assembler_name.391
.L1025:
	.loc 1 5041 0 discriminator 2
	movq	-32(%rbp), %rax	# olddecl, tmp87
	movq	120(%rax), %rax	# olddecl_4(D)->decl.assembler_name, D.18866
	movzbl	18(%rax), %eax	# *_14, D.18865
	andl	$4, %eax	#, D.18865
	testb	%al, %al	# D.18865
	je	.L1030	#,
	.loc 1 5042 0 is_stmt 1
	movq	-24(%rbp), %rax	# newdecl, tmp88
	movl	$.LC71, %esi	#,
	movq	%rax, %rdi	# tmp88,
	movl	$0, %eax	#,
	call	warning_with_decl	#
.L1030:
	.loc 1 5048 0
	movq	weak_decls(%rip), %rax	# weak_decls, tmp89
	movq	%rax, -8(%rbp)	# tmp89, wd
	jmp	.L1026	#
.L1029:
	.loc 1 5049 0
	movq	-8(%rbp), %rax	# wd, tmp90
	movq	32(%rax), %rax	# wd_1->list.value, D.18866
	cmpq	-24(%rbp), %rax	# newdecl, D.18866
	jne	.L1027	#,
	.loc 1 5051 0
	movq	-8(%rbp), %rax	# wd, tmp91
	movq	-32(%rbp), %rdx	# olddecl, tmp92
	movq	%rdx, 32(%rax)	# tmp92, wd_1->list.value
	.loc 1 5052 0
	jmp	.L1028	#
.L1027:
	.loc 1 5048 0
	movq	-8(%rbp), %rax	# wd, tmp93
	movq	(%rax), %rax	# wd_1->common.chain, tmp94
	movq	%rax, -8(%rbp)	# tmp94, wd
.L1026:
	.loc 1 5048 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, wd
	jne	.L1029	#,
.L1028:
	.loc 1 5061 0 is_stmt 1
	movq	-32(%rbp), %rax	# olddecl, tmp95
	movq	%rax, %rdi	# tmp95,
	call	mark_weak	#
.LBE104:
	jmp	.L1019	#
.L1022:
	.loc 1 5066 0
	movq	-24(%rbp), %rax	# newdecl, tmp96
	movq	%rax, %rdi	# tmp96,
	call	mark_weak	#
.L1019:
	.loc 1 5067 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE105:
	.size	merge_weak, .-merge_weak
	.section	.rodata
	.align 8
.LC72:
	.string	"weak declaration of `%s' must be public"
	.text
	.globl	declare_weak
	.type	declare_weak, @function
declare_weak:
.LFB106:
	.loc 1 5074 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# decl, decl
	.loc 1 5075 0
	movq	-8(%rbp), %rax	# decl, tmp68
	movzbl	18(%rax), %eax	# *decl_1(D), D.18869
	andl	$8, %eax	#, D.18869
	testb	%al, %al	# D.18869
	jne	.L1032	#,
	.loc 1 5076 0
	movq	-8(%rbp), %rax	# decl, tmp69
	movl	$.LC72, %esi	#,
	movq	%rax, %rdi	# tmp69,
	movl	$0, %eax	#,
	call	error_with_decl	#
	jmp	.L1033	#
.L1032:
	.loc 1 5077 0
	movq	-8(%rbp), %rax	# decl, tmp70
	movzbl	16(%rax), %eax	# decl_1(D)->common.code, D.18869
	cmpb	$30, %al	#, D.18869
	jne	.L1034	#,
	.loc 1 5077 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# decl, tmp71
	movzbl	17(%rax), %eax	# *decl_1(D), D.18869
	andl	$64, %eax	#, D.18869
	testb	%al, %al	# D.18869
	je	.L1034	#,
	.loc 1 5078 0 is_stmt 1
	movq	-8(%rbp), %rax	# decl, tmp72
	movl	$.LC70, %esi	#,
	movq	%rax, %rdi	# tmp72,
	movl	$0, %eax	#,
	call	error_with_decl	#
	jmp	.L1033	#
.L1034:
	.loc 1 5081 0
	movq	-8(%rbp), %rax	# decl, tmp73
	movzbl	50(%rax), %eax	# *decl_1(D), D.18869
	andl	$-128, %eax	#, D.18869
	testb	%al, %al	# D.18869
	jne	.L1033	#,
	.loc 1 5082 0
	movq	weak_decls(%rip), %rdx	# weak_decls, weak_decls.392
	movq	-8(%rbp), %rax	# decl, tmp74
	movq	%rax, %rsi	# tmp74,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, weak_decls(%rip)	# weak_decls.393, weak_decls
.L1033:
	.loc 1 5087 0
	movq	-8(%rbp), %rax	# decl, tmp75
	movq	%rax, %rdi	# tmp75,
	call	mark_weak	#
	.loc 1 5088 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE106:
	.size	declare_weak, .-declare_weak
	.section	.rodata
.LC73:
	.string	"\t.weak\t"
	.text
	.globl	weak_finish
	.type	weak_finish, @function
weak_finish:
.LFB107:
	.loc 1 5094 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	.loc 1 5097 0
	movq	weak_decls(%rip), %rax	# weak_decls, tmp67
	movq	%rax, -24(%rbp)	# tmp67, t
	jmp	.L1037	#
.L1041:
.LBB105:
	.loc 1 5099 0
	movq	-24(%rbp), %rax	# t, tmp68
	movq	32(%rax), %rax	# t_1->list.value, tmp69
	movq	%rax, -16(%rbp)	# tmp69, decl
	.loc 1 5100 0
	movq	-16(%rbp), %rax	# decl, tmp70
	movq	120(%rax), %rax	# decl_3->decl.assembler_name, D.18871
	testq	%rax, %rax	# D.18871
	jne	.L1038	#,
	.loc 1 5100 0 is_stmt 0 discriminator 1
	movq	lang_set_decl_assembler_name(%rip), %rax	# lang_set_decl_assembler_name, lang_set_decl_assembler_name.394
	movq	-16(%rbp), %rdx	# decl, tmp71
	movq	%rdx, %rdi	# tmp71,
	call	*%rax	# lang_set_decl_assembler_name.394
.L1038:
	.loc 1 5100 0 discriminator 2
	movq	-16(%rbp), %rax	# decl, tmp72
	movq	120(%rax), %rax	# decl_3->decl.assembler_name, D.18871
	movq	32(%rax), %rax	# _6->identifier.id.str, tmp73
	movq	%rax, -8(%rbp)	# tmp73, name
	.loc 1 5102 0 is_stmt 1 discriminator 2
	movq	-16(%rbp), %rax	# decl, tmp74
	movzbl	18(%rax), %eax	# *decl_3, D.18872
	andl	$1, %eax	#, D.18872
	testb	%al, %al	# D.18872
	jne	.L1039	#,
	.loc 1 5103 0
	jmp	.L1040	#
.L1039:
	.loc 1 5109 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.395
	movq	%rax, %rcx	# asm_out_file.395,
	movl	$7, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC73, %edi	#,
	call	fwrite	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.396
	movq	-8(%rbp), %rdx	# name, tmp75
	movq	%rdx, %rsi	# tmp75,
	movq	%rax, %rdi	# asm_out_file.396,
	call	assemble_name	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.397
	movq	%rax, %rsi	# asm_out_file.397,
	movl	$10, %edi	#,
	call	fputc	#
.L1040:
.LBE105:
	.loc 1 5097 0
	movq	-24(%rbp), %rax	# t, tmp76
	movq	(%rax), %rax	# t_1->common.chain, tmp77
	movq	%rax, -24(%rbp)	# tmp77, t
.L1037:
	.loc 1 5097 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, t
	jne	.L1041	#,
	.loc 1 5118 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE107:
	.size	weak_finish, .-weak_finish
	.type	globalize_decl, @function
globalize_decl:
.LFB108:
	.loc 1 5125 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# decl, decl
	.loc 1 5126 0
	movq	-40(%rbp), %rax	# decl, tmp80
	movq	144(%rax), %rax	# decl_3(D)->decl.rtl, D.18874
	testq	%rax, %rax	# D.18874
	je	.L1043	#,
	.loc 1 5126 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# decl, tmp81
	movq	144(%rax), %rax	# decl_3(D)->decl.rtl, iftmp.398
	jmp	.L1044	#
.L1043:
	.loc 1 5126 0 discriminator 2
	movq	-40(%rbp), %rax	# decl, tmp82
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp82,
	call	make_decl_rtl	#
	movq	-40(%rbp), %rax	# decl, tmp83
	movq	144(%rax), %rax	# decl_3(D)->decl.rtl, iftmp.398
.L1044:
	.loc 1 5126 0 discriminator 3
	movq	8(%rax), %rax	# iftmp.398_2->fld[0].rtx, D.18874
	movq	8(%rax), %rax	# _7->fld[0].rtstr, tmp84
	movq	%rax, -16(%rbp)	# tmp84, name
	.loc 1 5129 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rax	# decl, tmp85
	movzbl	50(%rax), %eax	# *decl_3(D), D.18875
	andl	$-128, %eax	#, D.18875
	testb	%al, %al	# D.18875
	je	.L1045	#,
.LBB106:
	.loc 1 5136 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.399
	movq	%rax, %rcx	# asm_out_file.399,
	movl	$7, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC73, %edi	#,
	call	fwrite	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.400
	movq	-16(%rbp), %rdx	# name, tmp86
	movq	%rdx, %rsi	# tmp86,
	movq	%rax, %rdi	# asm_out_file.400,
	call	assemble_name	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.401
	movq	%rax, %rsi	# asm_out_file.401,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 5141 0
	movq	$weak_decls, -24(%rbp)	#, p
	jmp	.L1046	#
.L1050:
	.loc 1 5143 0
	movq	-40(%rbp), %rax	# decl, tmp87
	movq	120(%rax), %rax	# decl_3(D)->decl.assembler_name, D.18876
	testq	%rax, %rax	# D.18876
	jne	.L1047	#,
	.loc 1 5143 0 is_stmt 0 discriminator 1
	movq	lang_set_decl_assembler_name(%rip), %rax	# lang_set_decl_assembler_name, lang_set_decl_assembler_name.402
	movq	-40(%rbp), %rdx	# decl, tmp88
	movq	%rdx, %rdi	# tmp88,
	call	*%rax	# lang_set_decl_assembler_name.402
.L1047:
	.loc 1 5143 0 discriminator 2
	movq	-8(%rbp), %rax	# t, tmp89
	movq	32(%rax), %rax	# t_15->list.value, D.18876
	movq	120(%rax), %rax	# _18->decl.assembler_name, D.18876
	testq	%rax, %rax	# D.18876
	jne	.L1048	#,
	.loc 1 5143 0 discriminator 1
	movq	lang_set_decl_assembler_name(%rip), %rax	# lang_set_decl_assembler_name, lang_set_decl_assembler_name.403
	movq	-8(%rbp), %rdx	# t, tmp90
	movq	32(%rdx), %rdx	# t_15->list.value, D.18876
	movq	%rdx, %rdi	# D.18876,
	call	*%rax	# lang_set_decl_assembler_name.403
.L1048:
	.loc 1 5143 0 discriminator 2
	movq	-40(%rbp), %rax	# decl, tmp91
	movq	120(%rax), %rdx	# decl_3(D)->decl.assembler_name, D.18876
	movq	-8(%rbp), %rax	# t, tmp92
	movq	32(%rax), %rax	# t_15->list.value, D.18876
	movq	120(%rax), %rax	# _23->decl.assembler_name, D.18876
	cmpq	%rax, %rdx	# D.18876, D.18876
	jne	.L1049	#,
	.loc 1 5144 0 is_stmt 1
	movq	-8(%rbp), %rax	# t, tmp93
	movq	(%rax), %rdx	# t_15->common.chain, D.18876
	movq	-24(%rbp), %rax	# p, tmp94
	movq	%rdx, (%rax)	# D.18876, *p_1
	jmp	.L1046	#
.L1049:
	.loc 1 5146 0
	movq	-8(%rbp), %rax	# t, tmp95
	movq	%rax, -24(%rbp)	# tmp95, p
.L1046:
	.loc 1 5141 0 discriminator 1
	movq	-24(%rbp), %rax	# p, tmp96
	movq	(%rax), %rax	# *p_1, tmp97
	movq	%rax, -8(%rbp)	# tmp97, t
	cmpq	$0, -8(%rbp)	#, t
	jne	.L1050	#,
	.loc 1 5148 0
	jmp	.L1042	#
.L1045:
.LBE106:
	.loc 1 5152 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.404
	movq	%rax, %rcx	# asm_out_file.404,
	movl	$7, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC8, %edi	#,
	call	fwrite	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.405
	movq	-16(%rbp), %rdx	# name, tmp98
	movq	%rdx, %rsi	# tmp98,
	movq	%rax, %rdi	# asm_out_file.405,
	call	assemble_name	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.406
	movq	%rax, %rsi	# asm_out_file.406,
	movl	$10, %edi	#,
	call	fputc	#
.L1042:
	.loc 1 5153 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE108:
	.size	globalize_decl, .-globalize_decl
	.section	.rodata
.LC74:
	.string	"\t.set\t"
	.text
	.globl	assemble_alias
	.type	assemble_alias, @function
assemble_alias:
.LFB109:
	.loc 1 5161 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# decl, decl
	movq	%rsi, -32(%rbp)	# target, target
	.loc 1 5166 0
	movq	-24(%rbp), %rax	# decl, tmp73
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp73,
	call	make_decl_rtl	#
	.loc 1 5168 0
	movq	-24(%rbp), %rax	# decl, tmp74
	movq	120(%rax), %rax	# decl_1(D)->decl.assembler_name, D.18877
	testq	%rax, %rax	# D.18877
	jne	.L1053	#,
	.loc 1 5168 0 is_stmt 0 discriminator 1
	movq	lang_set_decl_assembler_name(%rip), %rax	# lang_set_decl_assembler_name, lang_set_decl_assembler_name.407
	movq	-24(%rbp), %rdx	# decl, tmp75
	movq	%rdx, %rdi	# tmp75,
	call	*%rax	# lang_set_decl_assembler_name.407
.L1053:
	.loc 1 5168 0 discriminator 2
	movq	-24(%rbp), %rax	# decl, tmp76
	movq	120(%rax), %rax	# decl_1(D)->decl.assembler_name, D.18877
	movq	32(%rax), %rax	# _4->identifier.id.str, tmp77
	movq	%rax, -8(%rbp)	# tmp77, name
	.loc 1 5172 0 is_stmt 1 discriminator 2
	movq	-24(%rbp), %rax	# decl, tmp78
	movzbl	18(%rax), %eax	# *decl_1(D), D.18878
	andl	$8, %eax	#, D.18878
	testb	%al, %al	# D.18878
	je	.L1054	#,
	.loc 1 5173 0
	movq	-24(%rbp), %rax	# decl, tmp79
	movq	%rax, %rdi	# tmp79,
	call	globalize_decl	#
.L1054:
	.loc 1 5178 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.408
	movq	%rax, %rcx	# asm_out_file.408,
	movl	$6, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC74, %edi	#,
	call	fwrite	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.409
	movq	-8(%rbp), %rdx	# name, tmp80
	movq	%rdx, %rsi	# tmp80,
	movq	%rax, %rdi	# asm_out_file.409,
	call	assemble_name	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.410
	movq	%rax, %rsi	# asm_out_file.410,
	movl	$44, %edi	#,
	call	fputc	#
	movq	-32(%rbp), %rax	# target, tmp81
	movq	32(%rax), %rdx	# target_11(D)->identifier.id.str, D.18879
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.411
	movq	%rdx, %rsi	# D.18879,
	movq	%rax, %rdi	# asm_out_file.411,
	call	assemble_name	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.412
	movq	%rax, %rsi	# asm_out_file.412,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 5195 0
	movq	-24(%rbp), %rax	# decl, tmp82
	movzbl	18(%rax), %edx	#, tmp85
	orl	$1, %edx	#, tmp86
	movb	%dl, 18(%rax)	# tmp86,
	.loc 1 5196 0
	movq	-24(%rbp), %rax	# decl, tmp87
	movzbl	17(%rax), %edx	#, tmp90
	orl	$64, %edx	#, tmp91
	movb	%dl, 17(%rax)	# tmp91,
	.loc 1 5197 0
	movq	-24(%rbp), %rax	# decl, tmp92
	movq	120(%rax), %rax	# decl_1(D)->decl.assembler_name, D.18877
	testq	%rax, %rax	# D.18877
	jne	.L1055	#,
	.loc 1 5197 0 is_stmt 0 discriminator 1
	movq	lang_set_decl_assembler_name(%rip), %rax	# lang_set_decl_assembler_name, lang_set_decl_assembler_name.413
	movq	-24(%rbp), %rdx	# decl, tmp93
	movq	%rdx, %rdi	# tmp93,
	call	*%rax	# lang_set_decl_assembler_name.413
.L1055:
	.loc 1 5197 0 discriminator 2
	movq	-24(%rbp), %rax	# decl, tmp94
	movq	120(%rax), %rax	# decl_1(D)->decl.assembler_name, D.18877
	movzbl	17(%rax), %edx	#, tmp97
	orl	$64, %edx	#, tmp98
	movb	%dl, 17(%rax)	# tmp98,
	.loc 1 5198 0 is_stmt 1 discriminator 2
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE109:
	.size	assemble_alias, .-assemble_alias
	.globl	supports_one_only
	.type	supports_one_only, @function
supports_one_only:
.LFB110:
	.loc 1 5207 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 5209 0
	movl	$1, %eax	#, D.18881
	.loc 1 5211 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE110:
	.size	supports_one_only, .-supports_one_only
	.globl	make_decl_one_only
	.type	make_decl_one_only, @function
make_decl_one_only:
.LFB111:
	.loc 1 5219 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# decl, decl
	.loc 1 5220 0
	movq	-8(%rbp), %rax	# decl, tmp65
	movzbl	16(%rax), %eax	# decl_1(D)->common.code, D.18882
	cmpb	$34, %al	#, D.18882
	je	.L1059	#,
	.loc 1 5220 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# decl, tmp66
	movzbl	16(%rax), %eax	# decl_1(D)->common.code, D.18882
	cmpb	$30, %al	#, D.18882
	je	.L1059	#,
	.loc 1 5221 0 is_stmt 1
	movl	$__FUNCTION__.14071, %edx	#,
	movl	$5221, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
.L1059:
	.loc 1 5223 0
	movq	-8(%rbp), %rax	# decl, tmp67
	movzbl	18(%rax), %edx	#, tmp70
	orl	$8, %edx	#, tmp71
	movb	%dl, 18(%rax)	# tmp71,
	.loc 1 5225 0
	movq	-8(%rbp), %rax	# decl, tmp72
	movzbl	16(%rax), %eax	# decl_1(D)->common.code, D.18882
	cmpb	$34, %al	#, D.18882
	jne	.L1060	#,
	.loc 1 5226 0
	movq	-8(%rbp), %rax	# decl, tmp73
	movq	104(%rax), %rax	# decl_1(D)->decl.initial, D.18883
	testq	%rax, %rax	# D.18883
	je	.L1061	#,
	.loc 1 5226 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# decl, tmp74
	movq	104(%rax), %rdx	# decl_1(D)->decl.initial, D.18883
	movq	global_trees(%rip), %rax	# global_trees, D.18883
	cmpq	%rax, %rdx	# D.18883, D.18883
	jne	.L1060	#,
.L1061:
	.loc 1 5227 0 is_stmt 1
	movq	-8(%rbp), %rax	# decl, tmp75
	movzbl	50(%rax), %edx	#, tmp78
	orl	$2, %edx	#, tmp79
	movb	%dl, 50(%rax)	# tmp79,
	jmp	.L1058	#
.L1060:
	.loc 1 5231 0
	movq	-8(%rbp), %rax	# decl, tmp80
	movzbl	50(%rax), %edx	#, tmp83
	orl	$-128, %edx	#, tmp84
	movb	%dl, 50(%rax)	# tmp84,
	.loc 1 5233 0
	movq	-8(%rbp), %rax	# decl, tmp85
	movzbl	50(%rax), %edx	#, tmp88
	orl	$8, %edx	#, tmp89
	movb	%dl, 50(%rax)	# tmp89,
.L1058:
	.loc 1 5239 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE111:
	.size	make_decl_one_only, .-make_decl_one_only
	.globl	init_varasm_once
	.type	init_varasm_once, @function
init_varasm_once:
.LFB112:
	.loc 1 5243 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 5244 0
	movl	$const_str_htab_del, %ecx	#,
	movl	$const_str_htab_eq, %edx	#,
	movl	$const_str_htab_hash, %esi	#,
	movl	$128, %edi	#,
	call	htab_create	#
	movq	%rax, const_str_htab(%rip)	# const_str_htab.414, const_str_htab
	.loc 1 5246 0
	movl	$0, %ecx	#,
	movl	$in_named_entry_eq, %edx	#,
	movl	$in_named_entry_hash, %esi	#,
	movl	$31, %edi	#,
	call	htab_create	#
	movq	%rax, in_named_htab(%rip)	# in_named_htab.415, in_named_htab
	.loc 1 5249 0
	movl	$mark_const_hash_entry, %ecx	#,
	movl	$8, %edx	#,
	movl	$1009, %esi	#,
	movl	$const_hash_table, %edi	#,
	call	ggc_add_root	#
	.loc 1 5251 0
	movl	$mark_const_str_htab, %ecx	#,
	movl	$8, %edx	#,
	movl	$1, %esi	#,
	movl	$const_str_htab, %edi	#,
	call	ggc_add_root	#
	.loc 1 5253 0
	movl	$1, %esi	#,
	movl	$weak_decls, %edi	#,
	call	ggc_add_tree_root	#
	.loc 1 5255 0
	call	new_alias_set	#
	movq	%rax, const_alias_set(%rip)	# const_alias_set.416, const_alias_set
	.loc 1 5256 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE112:
	.size	init_varasm_once, .-init_varasm_once
	.section	.rodata
.LC75:
	.string	".bss"
.LC76:
	.string	".bss."
.LC77:
	.string	".gnu.linkonce.b."
.LC78:
	.string	".sbss"
.LC79:
	.string	".sbss."
.LC80:
	.string	".gnu.linkonce.sb."
	.text
	.globl	default_section_type_flags
	.type	default_section_type_flags, @function
default_section_type_flags:
.LFB113:
	.loc 1 5270 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# decl, decl
	movq	%rsi, -32(%rbp)	# name, name
	movl	%edx, -36(%rbp)	# reloc, reloc
	.loc 1 5273 0
	cmpq	$0, -24(%rbp)	#, decl
	je	.L1065	#,
	.loc 1 5273 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# decl, tmp83
	movzbl	16(%rax), %eax	# decl_4(D)->common.code, D.18884
	cmpb	$30, %al	#, D.18884
	jne	.L1065	#,
	.loc 1 5274 0 is_stmt 1
	movl	$256, -4(%rbp)	#, flags
	jmp	.L1066	#
.L1065:
	.loc 1 5275 0
	cmpq	$0, -24(%rbp)	#, decl
	je	.L1067	#,
	.loc 1 5275 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# decl, tmp84
	movzbl	17(%rax), %eax	# *decl_4(D), D.18884
	andl	$16, %eax	#, D.18884
	testb	%al, %al	# D.18884
	je	.L1067	#,
	movq	-24(%rbp), %rax	# decl, tmp85
	movzbl	17(%rax), %eax	# *decl_4(D), D.18884
	andl	$8, %eax	#, D.18884
	testb	%al, %al	# D.18884
	jne	.L1067	#,
	movq	-24(%rbp), %rax	# decl, tmp86
	movq	104(%rax), %rax	# decl_4(D)->decl.initial, D.18885
	testq	%rax, %rax	# D.18885
	je	.L1067	#,
	movq	-24(%rbp), %rax	# decl, tmp87
	movq	104(%rax), %rdx	# decl_4(D)->decl.initial, D.18885
	movq	global_trees(%rip), %rax	# global_trees, D.18885
	cmpq	%rax, %rdx	# D.18885, D.18885
	je	.L1068	#,
	.loc 1 5275 0 discriminator 2
	movq	-24(%rbp), %rax	# decl, tmp88
	movq	104(%rax), %rax	# decl_4(D)->decl.initial, D.18885
	movzbl	17(%rax), %eax	# *_14, D.18884
	andl	$2, %eax	#, D.18884
	testb	%al, %al	# D.18884
	je	.L1067	#,
.L1068:
	.loc 1 5275 0 discriminator 1
	cmpl	$0, -36(%rbp)	#, reloc
	je	.L1069	#,
	movl	flag_pic(%rip), %eax	# flag_pic, flag_pic.417
	testl	%eax, %eax	# flag_pic.417
	jne	.L1067	#,
	movq	-24(%rbp), %rax	# decl, tmp89
	movzbl	50(%rax), %eax	# *decl_4(D), D.18884
	andl	$8, %eax	#, D.18884
	testb	%al, %al	# D.18884
	jne	.L1067	#,
.L1069:
	.loc 1 5276 0 is_stmt 1
	movl	$0, -4(%rbp)	#, flags
	jmp	.L1066	#
.L1067:
	.loc 1 5278 0
	movl	$512, -4(%rbp)	#, flags
.L1066:
	.loc 1 5280 0
	cmpq	$0, -24(%rbp)	#, decl
	je	.L1070	#,
	.loc 1 5280 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# decl, tmp90
	movzbl	50(%rax), %eax	# *decl_4(D), D.18884
	andl	$8, %eax	#, D.18884
	testb	%al, %al	# D.18884
	je	.L1070	#,
	.loc 1 5281 0 is_stmt 1
	orl	$2048, -4(%rbp)	#, flags
.L1070:
	.loc 1 5283 0
	movq	-32(%rbp), %rax	# name, tmp91
	movl	$.LC75, %esi	#,
	movq	%rax, %rdi	# tmp91,
	call	strcmp	#
	testl	%eax, %eax	# D.18886
	je	.L1071	#,
	.loc 1 5284 0
	movq	-32(%rbp), %rax	# name, tmp92
	movl	$5, %edx	#,
	movl	$.LC76, %esi	#,
	movq	%rax, %rdi	# tmp92,
	call	strncmp	#
	testl	%eax, %eax	# D.18886
	je	.L1071	#,
	.loc 1 5285 0
	movq	-32(%rbp), %rax	# name, tmp93
	movl	$16, %edx	#,
	movl	$.LC77, %esi	#,
	movq	%rax, %rdi	# tmp93,
	call	strncmp	#
	testl	%eax, %eax	# D.18886
	je	.L1071	#,
	.loc 1 5286 0
	movq	-32(%rbp), %rax	# name, tmp94
	movl	$.LC78, %esi	#,
	movq	%rax, %rdi	# tmp94,
	call	strcmp	#
	testl	%eax, %eax	# D.18886
	je	.L1071	#,
	.loc 1 5287 0
	movq	-32(%rbp), %rax	# name, tmp95
	movl	$6, %edx	#,
	movl	$.LC79, %esi	#,
	movq	%rax, %rdi	# tmp95,
	call	strncmp	#
	testl	%eax, %eax	# D.18886
	je	.L1071	#,
	.loc 1 5288 0
	movq	-32(%rbp), %rax	# name, tmp96
	movl	$17, %edx	#,
	movl	$.LC80, %esi	#,
	movq	%rax, %rdi	# tmp96,
	call	strncmp	#
	testl	%eax, %eax	# D.18886
	jne	.L1072	#,
.L1071:
	.loc 1 5289 0
	orl	$8192, -4(%rbp)	#, flags
.L1072:
	.loc 1 5291 0
	movl	-4(%rbp), %eax	# flags, D.18887
	.loc 1 5292 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE113:
	.size	default_section_type_flags, .-default_section_type_flags
	.globl	default_no_named_section
	.type	default_no_named_section, @function
default_no_named_section:
.LFB114:
	.loc 1 5301 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# name, name
	movl	%esi, -12(%rbp)	# flags, flags
	.loc 1 5304 0
	movl	$__FUNCTION__.14084, %edx	#,
	movl	$5304, %esi	#,
	movl	$.LC4, %edi	#,
	call	fancy_abort	#
	.cfi_endproc
.LFE114:
	.size	default_no_named_section, .-default_no_named_section
	.section	.rodata
.LC81:
	.string	"\t.section\t%s\n"
.LC82:
	.string	"nobits"
.LC83:
	.string	"progbits"
.LC84:
	.string	"\t.section\t%s,\"%s\",@%s,%d\n"
.LC85:
	.string	"\t.section\t%s,\"%s\",@%s\n"
	.text
	.globl	default_elf_asm_named_section
	.type	default_elf_asm_named_section, @function
default_elf_asm_named_section:
.LFB115:
	.loc 1 5311 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# name, name
	movl	%esi, -60(%rbp)	# flags, flags
	.loc 1 5311 0
	movq	%fs:40, %rax	#, tmp104
	movq	%rax, -8(%rbp)	# tmp104, D.18896
	xorl	%eax, %eax	# tmp104
	.loc 1 5312 0
	leaq	-32(%rbp), %rax	#, tmp79
	movq	%rax, -48(%rbp)	# tmp79, f
	.loc 1 5315 0
	movq	-56(%rbp), %rax	# name, tmp80
	movq	%rax, %rdi	# tmp80,
	call	named_section_first_declaration	#
	xorl	$1, %eax	#, D.18894
	testb	%al, %al	# D.18894
	je	.L1076	#,
	.loc 1 5317 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.418
	movq	-56(%rbp), %rdx	# name, tmp81
	movl	$.LC81, %esi	#,
	movq	%rax, %rdi	# asm_out_file.418,
	movl	$0, %eax	#,
	call	fprintf	#
	jmp	.L1075	#
.L1076:
	.loc 1 5321 0
	movl	-60(%rbp), %eax	# flags, tmp82
	andl	$1024, %eax	#, D.18895
	testl	%eax, %eax	# D.18895
	jne	.L1078	#,
	.loc 1 5322 0
	movq	-48(%rbp), %rax	# f, f.419
	leaq	1(%rax), %rdx	#, tmp83
	movq	%rdx, -48(%rbp)	# tmp83, f
	movb	$97, (%rax)	#, *f.419_15
.L1078:
	.loc 1 5323 0
	movl	-60(%rbp), %eax	# flags, tmp84
	andl	$512, %eax	#, D.18895
	testl	%eax, %eax	# D.18895
	je	.L1079	#,
	.loc 1 5324 0
	movq	-48(%rbp), %rax	# f, f.420
	leaq	1(%rax), %rdx	#, tmp85
	movq	%rdx, -48(%rbp)	# tmp85, f
	movb	$119, (%rax)	#, *f.420_18
.L1079:
	.loc 1 5325 0
	movl	-60(%rbp), %eax	# flags, tmp86
	andl	$256, %eax	#, D.18895
	testl	%eax, %eax	# D.18895
	je	.L1080	#,
	.loc 1 5326 0
	movq	-48(%rbp), %rax	# f, f.421
	leaq	1(%rax), %rdx	#, tmp87
	movq	%rdx, -48(%rbp)	# tmp87, f
	movb	$120, (%rax)	#, *f.421_21
.L1080:
	.loc 1 5327 0
	movl	-60(%rbp), %eax	# flags, tmp88
	andl	$4096, %eax	#, D.18895
	testl	%eax, %eax	# D.18895
	je	.L1081	#,
	.loc 1 5328 0
	movq	-48(%rbp), %rax	# f, f.422
	leaq	1(%rax), %rdx	#, tmp89
	movq	%rdx, -48(%rbp)	# tmp89, f
	movb	$115, (%rax)	#, *f.422_24
.L1081:
	.loc 1 5329 0
	movl	-60(%rbp), %eax	# flags, tmp90
	andl	$32768, %eax	#, D.18895
	testl	%eax, %eax	# D.18895
	je	.L1082	#,
	.loc 1 5330 0
	movq	-48(%rbp), %rax	# f, f.423
	leaq	1(%rax), %rdx	#, tmp91
	movq	%rdx, -48(%rbp)	# tmp91, f
	movb	$77, (%rax)	#, *f.423_27
.L1082:
	.loc 1 5331 0
	movl	-60(%rbp), %eax	# flags, tmp92
	andl	$65536, %eax	#, D.18895
	testl	%eax, %eax	# D.18895
	je	.L1083	#,
	.loc 1 5332 0
	movq	-48(%rbp), %rax	# f, f.424
	leaq	1(%rax), %rdx	#, tmp93
	movq	%rdx, -48(%rbp)	# tmp93, f
	movb	$83, (%rax)	#, *f.424_30
.L1083:
	.loc 1 5333 0
	movq	-48(%rbp), %rax	# f, tmp94
	movb	$0, (%rax)	#, *f_6
	.loc 1 5335 0
	movl	-60(%rbp), %eax	# flags, tmp95
	andl	$8192, %eax	#, D.18895
	testl	%eax, %eax	# D.18895
	je	.L1084	#,
	.loc 1 5336 0
	movq	$.LC82, -40(%rbp)	#, type
	jmp	.L1085	#
.L1084:
	.loc 1 5338 0
	movq	$.LC83, -40(%rbp)	#, type
.L1085:
	.loc 1 5340 0
	movl	-60(%rbp), %eax	# flags, tmp96
	movzbl	%al, %eax	# tmp96, D.18895
	testl	%eax, %eax	# D.18895
	je	.L1086	#,
	.loc 1 5341 0
	movl	-60(%rbp), %eax	# flags, tmp97
	movzbl	%al, %edi	# tmp97, D.18895
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.425
	movq	-40(%rbp), %rsi	# type, tmp98
	leaq	-32(%rbp), %rcx	#, tmp99
	movq	-56(%rbp), %rdx	# name, tmp100
	movl	%edi, %r9d	# D.18895,
	movq	%rsi, %r8	# tmp98,
	movl	$.LC84, %esi	#,
	movq	%rax, %rdi	# asm_out_file.425,
	movl	$0, %eax	#,
	call	fprintf	#
	jmp	.L1075	#
.L1086:
	.loc 1 5344 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.426
	movq	-40(%rbp), %rsi	# type, tmp101
	leaq	-32(%rbp), %rcx	#, tmp102
	movq	-56(%rbp), %rdx	# name, tmp103
	movq	%rsi, %r8	# tmp101,
	movl	$.LC85, %esi	#,
	movq	%rax, %rdi	# asm_out_file.426,
	movl	$0, %eax	#,
	call	fprintf	#
.L1075:
	.loc 1 5346 0
	movq	-8(%rbp), %rax	# D.18896, tmp105
	xorq	%fs:40, %rax	#, tmp105
	je	.L1088	#,
	call	__stack_chk_fail	#
.L1088:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE115:
	.size	default_elf_asm_named_section, .-default_elf_asm_named_section
	.section	.rodata
.LC86:
	.string	"\t.section\t%s,\"%s\"\n"
	.text
	.globl	default_coff_asm_named_section
	.type	default_coff_asm_named_section, @function
default_coff_asm_named_section:
.LFB116:
	.loc 1 5352 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# name, name
	movl	%esi, -44(%rbp)	# flags, flags
	.loc 1 5352 0
	movq	%fs:40, %rax	#, tmp72
	movq	%rax, -8(%rbp)	# tmp72, D.18903
	xorl	%eax, %eax	# tmp72
	.loc 1 5353 0
	leaq	-16(%rbp), %rax	#, tmp64
	movq	%rax, -24(%rbp)	# tmp64, f
	.loc 1 5355 0
	movl	-44(%rbp), %eax	# flags, tmp65
	andl	$512, %eax	#, D.18902
	testl	%eax, %eax	# D.18902
	je	.L1090	#,
	.loc 1 5356 0
	movq	-24(%rbp), %rax	# f, f.427
	leaq	1(%rax), %rdx	#, tmp66
	movq	%rdx, -24(%rbp)	# tmp66, f
	movb	$119, (%rax)	#, *f.427_6
.L1090:
	.loc 1 5357 0
	movl	-44(%rbp), %eax	# flags, tmp67
	andl	$256, %eax	#, D.18902
	testl	%eax, %eax	# D.18902
	je	.L1091	#,
	.loc 1 5358 0
	movq	-24(%rbp), %rax	# f, f.428
	leaq	1(%rax), %rdx	#, tmp68
	movq	%rdx, -24(%rbp)	# tmp68, f
	movb	$120, (%rax)	#, *f.428_9
.L1091:
	.loc 1 5359 0
	movq	-24(%rbp), %rax	# f, tmp69
	movb	$0, (%rax)	#, *f_2
	.loc 1 5361 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.429
	leaq	-16(%rbp), %rcx	#, tmp70
	movq	-40(%rbp), %rdx	# name, tmp71
	movl	$.LC86, %esi	#,
	movq	%rax, %rdi	# asm_out_file.429,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 5362 0
	movq	-8(%rbp), %rax	# D.18903, tmp73
	xorq	%fs:40, %rax	#, tmp73
	je	.L1092	#,
	call	__stack_chk_fail	#
.L1092:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE116:
	.size	default_coff_asm_named_section, .-default_coff_asm_named_section
	.section	.rodata
.LC87:
	.string	"discard"
.LC88:
	.string	"same_size"
.LC89:
	.string	"\t.linkonce %s\n"
	.text
	.globl	default_pe_asm_named_section
	.type	default_pe_asm_named_section, @function
default_pe_asm_named_section:
.LFB117:
	.loc 1 5368 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# name, name
	movl	%esi, -12(%rbp)	# flags, flags
	.loc 1 5369 0
	movl	-12(%rbp), %edx	# flags, tmp63
	movq	-8(%rbp), %rax	# name, tmp64
	movl	%edx, %esi	# tmp63,
	movq	%rax, %rdi	# tmp64,
	call	default_coff_asm_named_section	#
	.loc 1 5371 0
	movl	-12(%rbp), %eax	# flags, tmp65
	andl	$2048, %eax	#, D.18905
	testl	%eax, %eax	# D.18905
	je	.L1093	#,
	.loc 1 5377 0
	movl	-12(%rbp), %eax	# flags, tmp66
	andl	$256, %eax	#, D.18905
	.loc 1 5376 0
	testl	%eax, %eax	# D.18905
	je	.L1095	#,
	.loc 1 5376 0 is_stmt 0 discriminator 1
	movl	$.LC87, %eax	#, iftmp.430
	jmp	.L1096	#
.L1095:
	.loc 1 5376 0 discriminator 2
	movl	$.LC88, %eax	#, iftmp.430
.L1096:
	.loc 1 5376 0 discriminator 3
	movq	asm_out_file(%rip), %rcx	# asm_out_file, asm_out_file.431
	movq	%rax, %rdx	# iftmp.430,
	movl	$.LC89, %esi	#,
	movq	%rcx, %rdi	# asm_out_file.431,
	movl	$0, %eax	#,
	call	fprintf	#
.L1093:
	.loc 1 5379 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE117:
	.size	default_pe_asm_named_section, .-default_pe_asm_named_section
	.section	.rodata
.LC90:
	.string	"\t.vtable_entry "
.LC91:
	.string	", "
	.text
	.globl	assemble_vtable_entry
	.type	assemble_vtable_entry, @function
assemble_vtable_entry:
.LFB118:
	.loc 1 5388 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# symbol, symbol
	movq	%rsi, -16(%rbp)	# offset, offset
	.loc 1 5389 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.432
	movq	%rax, %rcx	# asm_out_file.432,
	movl	$15, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC90, %edi	#,
	call	fwrite	#
	.loc 1 5390 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.433
	movq	-8(%rbp), %rdx	# symbol, tmp64
	movq	%rdx, %rsi	# tmp64,
	movq	%rax, %rdi	# asm_out_file.433,
	call	output_addr_const	#
	.loc 1 5391 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.434
	movq	%rax, %rcx	# asm_out_file.434,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC91, %edi	#,
	call	fwrite	#
	.loc 1 5392 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.435
	movq	-16(%rbp), %rdx	# offset, tmp65
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# asm_out_file.435,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 5393 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.436
	movq	%rax, %rsi	# asm_out_file.436,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 5394 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE118:
	.size	assemble_vtable_entry, .-assemble_vtable_entry
	.section	.rodata
.LC92:
	.string	"\t.vtable_inherit "
	.text
	.globl	assemble_vtable_inherit
	.type	assemble_vtable_inherit, @function
assemble_vtable_inherit:
.LFB119:
	.loc 1 5402 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# child, child
	movq	%rsi, -16(%rbp)	# parent, parent
	.loc 1 5403 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.437
	movq	%rax, %rcx	# asm_out_file.437,
	movl	$17, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC92, %edi	#,
	call	fwrite	#
	.loc 1 5404 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.438
	movq	-8(%rbp), %rdx	# child, tmp64
	movq	%rdx, %rsi	# tmp64,
	movq	%rax, %rdi	# asm_out_file.438,
	call	output_addr_const	#
	.loc 1 5405 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.439
	movq	%rax, %rcx	# asm_out_file.439,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC91, %edi	#,
	call	fwrite	#
	.loc 1 5406 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.440
	movq	-16(%rbp), %rdx	# parent, tmp65
	movq	%rdx, %rsi	# tmp65,
	movq	%rax, %rdi	# asm_out_file.440,
	call	output_addr_const	#
	.loc 1 5407 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.441
	movq	%rax, %rsi	# asm_out_file.441,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 5408 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE119:
	.size	assemble_vtable_inherit, .-assemble_vtable_inherit
	.section	.rodata
	.align 16
	.type	__FUNCTION__.12961, @object
	.size	__FUNCTION__.12961, 20
__FUNCTION__.12961:
	.string	"named_section_flags"
	.type	__FUNCTION__.12968, @object
	.size	__FUNCTION__.12968, 14
__FUNCTION__.12968:
	.string	"named_section"
.LC93:
	.string	".text."
.LC94:
	.string	".gnu.linkonce.t."
.LC95:
	.string	".rodata."
.LC96:
	.string	".gnu.linkonce.r."
.LC97:
	.string	".data."
.LC98:
	.string	".gnu.linkonce.d."
	.align 32
	.type	prefixes.12979, @object
	.size	prefixes.12979, 64
prefixes.12979:
	.quad	.LC93
	.quad	.LC94
	.quad	.LC95
	.quad	.LC96
	.quad	.LC97
	.quad	.LC98
	.quad	.LC76
	.quad	.LC77
.LC99:
	.string	"eax"
.LC100:
	.string	"edx"
.LC101:
	.string	"ecx"
.LC102:
	.string	"ebx"
.LC103:
	.string	"esi"
.LC104:
	.string	"edi"
.LC105:
	.string	"ebp"
.LC106:
	.string	"esp"
.LC107:
	.string	"rax"
.LC108:
	.string	"rdx"
.LC109:
	.string	"rcx"
.LC110:
	.string	"rbx"
.LC111:
	.string	"rsi"
.LC112:
	.string	"rdi"
.LC113:
	.string	"rbp"
.LC114:
	.string	"rsp"
.LC115:
	.string	"al"
.LC116:
	.string	"dl"
.LC117:
	.string	"cl"
.LC118:
	.string	"bl"
.LC119:
	.string	"ah"
.LC120:
	.string	"dh"
.LC121:
	.string	"ch"
.LC122:
	.string	"bh"
.LC123:
	.string	"mm0"
.LC124:
	.string	"mm1"
.LC125:
	.string	"mm2"
.LC126:
	.string	"mm3"
.LC127:
	.string	"mm4"
.LC128:
	.string	"mm5"
.LC129:
	.string	"mm6"
.LC130:
	.string	"mm7"
	.align 32
	.type	table.13040, @object
	.size	table.13040, 512
table.13040:
# name:
	.quad	.LC99
# number:
	.long	0
	.zero	4
# name:
	.quad	.LC100
# number:
	.long	1
	.zero	4
# name:
	.quad	.LC101
# number:
	.long	2
	.zero	4
# name:
	.quad	.LC102
# number:
	.long	3
	.zero	4
# name:
	.quad	.LC103
# number:
	.long	4
	.zero	4
# name:
	.quad	.LC104
# number:
	.long	5
	.zero	4
# name:
	.quad	.LC105
# number:
	.long	6
	.zero	4
# name:
	.quad	.LC106
# number:
	.long	7
	.zero	4
# name:
	.quad	.LC107
# number:
	.long	0
	.zero	4
# name:
	.quad	.LC108
# number:
	.long	1
	.zero	4
# name:
	.quad	.LC109
# number:
	.long	2
	.zero	4
# name:
	.quad	.LC110
# number:
	.long	3
	.zero	4
# name:
	.quad	.LC111
# number:
	.long	4
	.zero	4
# name:
	.quad	.LC112
# number:
	.long	5
	.zero	4
# name:
	.quad	.LC113
# number:
	.long	6
	.zero	4
# name:
	.quad	.LC114
# number:
	.long	7
	.zero	4
# name:
	.quad	.LC115
# number:
	.long	0
	.zero	4
# name:
	.quad	.LC116
# number:
	.long	1
	.zero	4
# name:
	.quad	.LC117
# number:
	.long	2
	.zero	4
# name:
	.quad	.LC118
# number:
	.long	3
	.zero	4
# name:
	.quad	.LC119
# number:
	.long	0
	.zero	4
# name:
	.quad	.LC120
# number:
	.long	1
	.zero	4
# name:
	.quad	.LC121
# number:
	.long	2
	.zero	4
# name:
	.quad	.LC122
# number:
	.long	3
	.zero	4
# name:
	.quad	.LC123
# number:
	.long	8
	.zero	4
# name:
	.quad	.LC124
# number:
	.long	9
	.zero	4
# name:
	.quad	.LC125
# number:
	.long	10
	.zero	4
# name:
	.quad	.LC126
# number:
	.long	11
	.zero	4
# name:
	.quad	.LC127
# number:
	.long	12
	.zero	4
# name:
	.quad	.LC128
# number:
	.long	13
	.zero	4
# name:
	.quad	.LC129
# number:
	.long	14
	.zero	4
# name:
	.quad	.LC130
# number:
	.long	15
	.zero	4
	.type	__FUNCTION__.13053, @object
	.size	__FUNCTION__.13053, 14
__FUNCTION__.13053:
	.string	"make_decl_rtl"
	.align 16
	.type	__FUNCTION__.13064, @object
	.size	__FUNCTION__.13064, 18
__FUNCTION__.13064:
	.string	"make_var_volatile"
	.local	labelno.13104
	.comm	labelno.13104,4,4
	.align 16
	.type	__FUNCTION__.13170, @object
	.size	__FUNCTION__.13170, 23
__FUNCTION__.13170:
	.string	"asm_emit_uninitialised"
	.align 16
	.type	__FUNCTION__.13203, @object
	.size	__FUNCTION__.13203, 18
__FUNCTION__.13203:
	.string	"assemble_external"
	.align 16
	.type	__FUNCTION__.13266, @object
	.size	__FUNCTION__.13266, 17
__FUNCTION__.13266:
	.string	"assemble_integer"
	.type	__FUNCTION__.13280, @object
	.size	__FUNCTION__.13280, 14
__FUNCTION__.13280:
	.string	"assemble_real"
	.align 16
	.type	__FUNCTION__.13302, @object
	.size	__FUNCTION__.13302, 19
__FUNCTION__.13302:
	.string	"immed_double_const"
	.align 16
	.type	__FUNCTION__.13346, @object
	.size	__FUNCTION__.13346, 18
__FUNCTION__.13346:
	.string	"decode_addr_const"
	.type	__FUNCTION__.13430, @object
	.size	__FUNCTION__.13430, 11
__FUNCTION__.13430:
	.string	"const_hash"
	.align 16
	.type	__FUNCTION__.13573, @object
	.size	__FUNCTION__.13573, 18
__FUNCTION__.13573:
	.string	"record_constant_1"
	.type	__FUNCTION__.13632, @object
	.size	__FUNCTION__.13632, 14
__FUNCTION__.13632:
	.string	"copy_constant"
	.align 16
	.type	__FUNCTION__.13708, @object
	.size	__FUNCTION__.13708, 17
__FUNCTION__.13708:
	.string	"decode_rtx_const"
	.align 16
	.type	__FUNCTION__.13784, @object
	.size	__FUNCTION__.13784, 19
__FUNCTION__.13784:
	.string	"find_pool_constant"
	.align 16
	.type	__FUNCTION__.13821, @object
	.size	__FUNCTION__.13821, 21
__FUNCTION__.13821:
	.string	"output_constant_pool"
	.type	__FUNCTION__.13878, @object
	.size	__FUNCTION__.13878, 15
__FUNCTION__.13878:
	.string	"mark_constants"
	.align 16
	.type	__FUNCTION__.13956, @object
	.size	__FUNCTION__.13956, 16
__FUNCTION__.13956:
	.string	"output_constant"
	.align 16
	.type	__FUNCTION__.13995, @object
	.size	__FUNCTION__.13995, 19
__FUNCTION__.13995:
	.string	"output_constructor"
	.align 16
	.type	__FUNCTION__.14071, @object
	.size	__FUNCTION__.14071, 19
__FUNCTION__.14071:
	.string	"make_decl_one_only"
	.align 16
	.type	__FUNCTION__.14084, @object
	.size	__FUNCTION__.14084, 25
__FUNCTION__.14084:
	.string	"default_no_named_section"
	.text
.Letext0:
	.file 2 "rtl.h"
	.file 3 "config.h"
	.file 4 "tree.h"
	.file 5 "i386.h"
	.file 6 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "/usr/include/libio.h"
	.file 10 "machmode.h"
	.file 11 "real.h"
	.file 12 "obstack.h"
	.file 13 "hashtable.h"
	.file 14 "function.h"
	.file 15 "expr.h"
	.file 16 "varray.h"
	.file 17 "regs.h"
	.file 18 "hashtab.h"
	.file 19 "langhooks.h"
	.file 20 "debug.h"
	.file 21 "target.h"
	.file 22 "./safe-ctype.h"
	.file 23 "flags.h"
	.file 24 "output.h"
	.file 25 "ggc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x76c6
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1443
	.byte	0x1
	.long	.LASF1444
	.long	.LASF1445
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
	.long	0x310
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF1
	.byte	0x2
	.byte	0x80
	.long	0x310
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF2
	.byte	0x2
	.byte	0x87
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	.LASF3
	.byte	0x2
	.byte	0x8a
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	.LASF4
	.byte	0x2
	.byte	0x95
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	.LASF5
	.byte	0x2
	.byte	0x9d
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF6
	.byte	0x2
	.byte	0xaf
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF7
	.byte	0x2
	.byte	0xb6
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF8
	.byte	0x2
	.byte	0xbb
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0xc4
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x6
	.string	"fld"
	.byte	0x2
	.byte	0xc9
	.long	0xdab
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
	.long	0x1e3
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x2
	.byte	0xe0
	.long	0xdbb
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
	.long	.LASF344
	.byte	0xd0
	.byte	0x4
	.value	0x744
	.long	0x1de
	.uleb128 0xa
	.long	.LASF16
	.byte	0x4
	.value	0x746
	.long	0x151c
	.uleb128 0xa
	.long	.LASF17
	.byte	0x4
	.value	0x747
	.long	0x16dc
	.uleb128 0xa
	.long	.LASF18
	.byte	0x4
	.value	0x748
	.long	0x1761
	.uleb128 0xa
	.long	.LASF19
	.byte	0x4
	.value	0x749
	.long	0x181a
	.uleb128 0xa
	.long	.LASF20
	.byte	0x4
	.value	0x74a
	.long	0x1796
	.uleb128 0xa
	.long	.LASF21
	.byte	0x4
	.value	0x74b
	.long	0x17d8
	.uleb128 0xa
	.long	.LASF22
	.byte	0x4
	.value	0x74c
	.long	0x1998
	.uleb128 0xa
	.long	.LASF23
	.byte	0x4
	.value	0x74d
	.long	0x2251
	.uleb128 0xa
	.long	.LASF24
	.byte	0x4
	.value	0x74e
	.long	0x1b27
	.uleb128 0xa
	.long	.LASF25
	.byte	0x4
	.value	0x74f
	.long	0x19bf
	.uleb128 0xb
	.string	"vec"
	.byte	0x4
	.value	0x750
	.long	0x19f4
	.uleb128 0xb
	.string	"exp"
	.byte	0x4
	.value	0x751
	.long	0x1a37
	.uleb128 0xa
	.long	.LASF26
	.byte	0x4
	.value	0x752
	.long	0x1a6c
	.byte	0
	.uleb128 0xc
	.long	0x1e3
	.uleb128 0xd
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xe
	.byte	0x8
	.byte	0x7
	.long	.LASF27
	.uleb128 0xf
	.long	.LASF129
	.byte	0x4
	.byte	0x5
	.value	0x4b2
	.long	0x29b
	.uleb128 0x10
	.long	.LASF28
	.sleb128 0
	.uleb128 0x10
	.long	.LASF29
	.sleb128 1
	.uleb128 0x10
	.long	.LASF30
	.sleb128 2
	.uleb128 0x10
	.long	.LASF31
	.sleb128 3
	.uleb128 0x10
	.long	.LASF32
	.sleb128 4
	.uleb128 0x10
	.long	.LASF33
	.sleb128 5
	.uleb128 0x10
	.long	.LASF34
	.sleb128 6
	.uleb128 0x10
	.long	.LASF35
	.sleb128 7
	.uleb128 0x10
	.long	.LASF36
	.sleb128 8
	.uleb128 0x10
	.long	.LASF37
	.sleb128 9
	.uleb128 0x10
	.long	.LASF38
	.sleb128 10
	.uleb128 0x10
	.long	.LASF39
	.sleb128 11
	.uleb128 0x10
	.long	.LASF40
	.sleb128 12
	.uleb128 0x10
	.long	.LASF41
	.sleb128 13
	.uleb128 0x10
	.long	.LASF42
	.sleb128 14
	.uleb128 0x10
	.long	.LASF43
	.sleb128 15
	.uleb128 0x10
	.long	.LASF44
	.sleb128 16
	.uleb128 0x10
	.long	.LASF45
	.sleb128 17
	.uleb128 0x10
	.long	.LASF46
	.sleb128 18
	.uleb128 0x10
	.long	.LASF47
	.sleb128 19
	.uleb128 0x10
	.long	.LASF48
	.sleb128 20
	.uleb128 0x10
	.long	.LASF49
	.sleb128 21
	.uleb128 0x10
	.long	.LASF50
	.sleb128 22
	.uleb128 0x10
	.long	.LASF51
	.sleb128 23
	.uleb128 0x10
	.long	.LASF52
	.sleb128 24
	.uleb128 0x10
	.long	.LASF53
	.sleb128 25
	.byte	0
	.uleb128 0x11
	.long	.LASF54
	.byte	0x1c
	.byte	0x5
	.value	0x683
	.long	0x304
	.uleb128 0x12
	.long	.LASF55
	.byte	0x5
	.value	0x684
	.long	0x1e3
	.byte	0
	.uleb128 0x12
	.long	.LASF56
	.byte	0x5
	.value	0x685
	.long	0x1e3
	.byte	0x4
	.uleb128 0x12
	.long	.LASF57
	.byte	0x5
	.value	0x686
	.long	0x1e3
	.byte	0x8
	.uleb128 0x12
	.long	.LASF58
	.byte	0x5
	.value	0x687
	.long	0x1e3
	.byte	0xc
	.uleb128 0x12
	.long	.LASF59
	.byte	0x5
	.value	0x688
	.long	0x1e3
	.byte	0x10
	.uleb128 0x12
	.long	.LASF60
	.byte	0x5
	.value	0x689
	.long	0x1e3
	.byte	0x14
	.uleb128 0x12
	.long	.LASF61
	.byte	0x5
	.value	0x68a
	.long	0x1e3
	.byte	0x18
	.byte	0
	.uleb128 0x13
	.long	.LASF62
	.byte	0x5
	.value	0x68b
	.long	0x29b
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.long	.LASF63
	.uleb128 0x14
	.byte	0x8
	.uleb128 0xe
	.byte	0x8
	.byte	0x5
	.long	.LASF64
	.uleb128 0x7
	.long	.LASF65
	.byte	0x6
	.byte	0xd4
	.long	0x32b
	.uleb128 0xe
	.byte	0x8
	.byte	0x7
	.long	.LASF66
	.uleb128 0xe
	.byte	0x1
	.byte	0x8
	.long	.LASF67
	.uleb128 0xe
	.byte	0x2
	.byte	0x7
	.long	.LASF68
	.uleb128 0xe
	.byte	0x1
	.byte	0x6
	.long	.LASF69
	.uleb128 0xe
	.byte	0x2
	.byte	0x5
	.long	.LASF70
	.uleb128 0x7
	.long	.LASF71
	.byte	0x7
	.byte	0x8c
	.long	0x319
	.uleb128 0x7
	.long	.LASF72
	.byte	0x7
	.byte	0x8d
	.long	0x319
	.uleb128 0x3
	.byte	0x8
	.long	0x36a
	.uleb128 0xe
	.byte	0x1
	.byte	0x6
	.long	.LASF73
	.uleb128 0x7
	.long	.LASF74
	.byte	0x8
	.byte	0x30
	.long	0x37c
	.uleb128 0x4
	.long	.LASF75
	.byte	0xd8
	.byte	0x9
	.byte	0xf6
	.long	0x4fd
	.uleb128 0x8
	.long	.LASF76
	.byte	0x9
	.byte	0xf7
	.long	0x1e3
	.byte	0
	.uleb128 0x8
	.long	.LASF77
	.byte	0x9
	.byte	0xfc
	.long	0x364
	.byte	0x8
	.uleb128 0x8
	.long	.LASF78
	.byte	0x9
	.byte	0xfd
	.long	0x364
	.byte	0x10
	.uleb128 0x8
	.long	.LASF79
	.byte	0x9
	.byte	0xfe
	.long	0x364
	.byte	0x18
	.uleb128 0x8
	.long	.LASF80
	.byte	0x9
	.byte	0xff
	.long	0x364
	.byte	0x20
	.uleb128 0x12
	.long	.LASF81
	.byte	0x9
	.value	0x100
	.long	0x364
	.byte	0x28
	.uleb128 0x12
	.long	.LASF82
	.byte	0x9
	.value	0x101
	.long	0x364
	.byte	0x30
	.uleb128 0x12
	.long	.LASF83
	.byte	0x9
	.value	0x102
	.long	0x364
	.byte	0x38
	.uleb128 0x12
	.long	.LASF84
	.byte	0x9
	.value	0x103
	.long	0x364
	.byte	0x40
	.uleb128 0x12
	.long	.LASF85
	.byte	0x9
	.value	0x105
	.long	0x364
	.byte	0x48
	.uleb128 0x12
	.long	.LASF86
	.byte	0x9
	.value	0x106
	.long	0x364
	.byte	0x50
	.uleb128 0x12
	.long	.LASF87
	.byte	0x9
	.value	0x107
	.long	0x364
	.byte	0x58
	.uleb128 0x12
	.long	.LASF88
	.byte	0x9
	.value	0x109
	.long	0x545
	.byte	0x60
	.uleb128 0x12
	.long	.LASF89
	.byte	0x9
	.value	0x10b
	.long	0x54b
	.byte	0x68
	.uleb128 0x12
	.long	.LASF90
	.byte	0x9
	.value	0x10d
	.long	0x1e3
	.byte	0x70
	.uleb128 0x12
	.long	.LASF91
	.byte	0x9
	.value	0x111
	.long	0x1e3
	.byte	0x74
	.uleb128 0x12
	.long	.LASF92
	.byte	0x9
	.value	0x113
	.long	0x34e
	.byte	0x78
	.uleb128 0x12
	.long	.LASF93
	.byte	0x9
	.value	0x117
	.long	0x339
	.byte	0x80
	.uleb128 0x12
	.long	.LASF94
	.byte	0x9
	.value	0x118
	.long	0x340
	.byte	0x82
	.uleb128 0x12
	.long	.LASF95
	.byte	0x9
	.value	0x119
	.long	0x551
	.byte	0x83
	.uleb128 0x12
	.long	.LASF96
	.byte	0x9
	.value	0x11d
	.long	0x561
	.byte	0x88
	.uleb128 0x12
	.long	.LASF97
	.byte	0x9
	.value	0x126
	.long	0x359
	.byte	0x90
	.uleb128 0x12
	.long	.LASF98
	.byte	0x9
	.value	0x12f
	.long	0x317
	.byte	0x98
	.uleb128 0x12
	.long	.LASF99
	.byte	0x9
	.value	0x130
	.long	0x317
	.byte	0xa0
	.uleb128 0x12
	.long	.LASF100
	.byte	0x9
	.value	0x131
	.long	0x317
	.byte	0xa8
	.uleb128 0x12
	.long	.LASF101
	.byte	0x9
	.value	0x132
	.long	0x317
	.byte	0xb0
	.uleb128 0x12
	.long	.LASF102
	.byte	0x9
	.value	0x133
	.long	0x320
	.byte	0xb8
	.uleb128 0x12
	.long	.LASF103
	.byte	0x9
	.value	0x135
	.long	0x1e3
	.byte	0xc0
	.uleb128 0x12
	.long	.LASF104
	.byte	0x9
	.value	0x137
	.long	0x567
	.byte	0xc4
	.byte	0
	.uleb128 0x15
	.long	0x36a
	.long	0x50d
	.uleb128 0x16
	.long	0x1ea
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.long	.LASF1446
	.byte	0x9
	.byte	0x9b
	.uleb128 0x4
	.long	.LASF105
	.byte	0x18
	.byte	0x9
	.byte	0xa1
	.long	0x545
	.uleb128 0x8
	.long	.LASF106
	.byte	0x9
	.byte	0xa2
	.long	0x545
	.byte	0
	.uleb128 0x8
	.long	.LASF107
	.byte	0x9
	.byte	0xa3
	.long	0x54b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF108
	.byte	0x9
	.byte	0xa7
	.long	0x1e3
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x514
	.uleb128 0x3
	.byte	0x8
	.long	0x37c
	.uleb128 0x15
	.long	0x36a
	.long	0x561
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x50d
	.uleb128 0x15
	.long	0x36a
	.long	0x577
	.uleb128 0x16
	.long	0x1ea
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x57d
	.uleb128 0xc
	.long	0x36a
	.uleb128 0x18
	.byte	0x4
	.byte	0x16
	.byte	0x2c
	.long	0x603
	.uleb128 0x10
	.long	.LASF109
	.sleb128 1
	.uleb128 0x10
	.long	.LASF110
	.sleb128 2
	.uleb128 0x10
	.long	.LASF111
	.sleb128 4
	.uleb128 0x10
	.long	.LASF112
	.sleb128 8
	.uleb128 0x10
	.long	.LASF113
	.sleb128 16
	.uleb128 0x10
	.long	.LASF114
	.sleb128 32
	.uleb128 0x10
	.long	.LASF115
	.sleb128 64
	.uleb128 0x10
	.long	.LASF116
	.sleb128 128
	.uleb128 0x10
	.long	.LASF117
	.sleb128 256
	.uleb128 0x10
	.long	.LASF118
	.sleb128 512
	.uleb128 0x10
	.long	.LASF119
	.sleb128 1024
	.uleb128 0x10
	.long	.LASF120
	.sleb128 2048
	.uleb128 0x10
	.long	.LASF121
	.sleb128 136
	.uleb128 0x10
	.long	.LASF122
	.sleb128 140
	.uleb128 0x10
	.long	.LASF123
	.sleb128 516
	.uleb128 0x10
	.long	.LASF124
	.sleb128 172
	.uleb128 0x10
	.long	.LASF125
	.sleb128 3072
	.uleb128 0x10
	.long	.LASF126
	.sleb128 3088
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.byte	0x7
	.long	.LASF127
	.uleb128 0xe
	.byte	0x8
	.byte	0x5
	.long	.LASF128
	.uleb128 0x15
	.long	0x36a
	.long	0x621
	.uleb128 0x16
	.long	0x1ea
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1e3
	.uleb128 0x3
	.byte	0x8
	.long	0x62d
	.uleb128 0x19
	.long	0x1e3
	.long	0x641
	.uleb128 0x1a
	.long	0x641
	.uleb128 0x1a
	.long	0x641
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x647
	.uleb128 0x1b
	.uleb128 0x1c
	.long	.LASF130
	.byte	0x4
	.byte	0xa
	.byte	0x1d
	.long	0x7bd
	.uleb128 0x10
	.long	.LASF131
	.sleb128 0
	.uleb128 0x10
	.long	.LASF132
	.sleb128 1
	.uleb128 0x10
	.long	.LASF133
	.sleb128 2
	.uleb128 0x10
	.long	.LASF134
	.sleb128 3
	.uleb128 0x10
	.long	.LASF135
	.sleb128 4
	.uleb128 0x10
	.long	.LASF136
	.sleb128 5
	.uleb128 0x10
	.long	.LASF137
	.sleb128 6
	.uleb128 0x10
	.long	.LASF138
	.sleb128 7
	.uleb128 0x10
	.long	.LASF139
	.sleb128 8
	.uleb128 0x10
	.long	.LASF140
	.sleb128 9
	.uleb128 0x10
	.long	.LASF141
	.sleb128 10
	.uleb128 0x10
	.long	.LASF142
	.sleb128 11
	.uleb128 0x10
	.long	.LASF143
	.sleb128 12
	.uleb128 0x10
	.long	.LASF144
	.sleb128 13
	.uleb128 0x10
	.long	.LASF145
	.sleb128 14
	.uleb128 0x10
	.long	.LASF146
	.sleb128 15
	.uleb128 0x10
	.long	.LASF147
	.sleb128 16
	.uleb128 0x10
	.long	.LASF148
	.sleb128 17
	.uleb128 0x10
	.long	.LASF149
	.sleb128 18
	.uleb128 0x10
	.long	.LASF150
	.sleb128 19
	.uleb128 0x10
	.long	.LASF151
	.sleb128 20
	.uleb128 0x10
	.long	.LASF152
	.sleb128 21
	.uleb128 0x10
	.long	.LASF153
	.sleb128 22
	.uleb128 0x10
	.long	.LASF154
	.sleb128 23
	.uleb128 0x10
	.long	.LASF155
	.sleb128 24
	.uleb128 0x10
	.long	.LASF156
	.sleb128 25
	.uleb128 0x10
	.long	.LASF157
	.sleb128 26
	.uleb128 0x10
	.long	.LASF158
	.sleb128 27
	.uleb128 0x10
	.long	.LASF159
	.sleb128 28
	.uleb128 0x10
	.long	.LASF160
	.sleb128 29
	.uleb128 0x10
	.long	.LASF161
	.sleb128 30
	.uleb128 0x10
	.long	.LASF162
	.sleb128 31
	.uleb128 0x10
	.long	.LASF163
	.sleb128 32
	.uleb128 0x10
	.long	.LASF164
	.sleb128 33
	.uleb128 0x10
	.long	.LASF165
	.sleb128 34
	.uleb128 0x10
	.long	.LASF166
	.sleb128 35
	.uleb128 0x10
	.long	.LASF167
	.sleb128 36
	.uleb128 0x10
	.long	.LASF168
	.sleb128 37
	.uleb128 0x10
	.long	.LASF169
	.sleb128 38
	.uleb128 0x10
	.long	.LASF170
	.sleb128 39
	.uleb128 0x10
	.long	.LASF171
	.sleb128 40
	.uleb128 0x10
	.long	.LASF172
	.sleb128 41
	.uleb128 0x10
	.long	.LASF173
	.sleb128 42
	.uleb128 0x10
	.long	.LASF174
	.sleb128 43
	.uleb128 0x10
	.long	.LASF175
	.sleb128 44
	.uleb128 0x10
	.long	.LASF176
	.sleb128 45
	.uleb128 0x10
	.long	.LASF177
	.sleb128 46
	.uleb128 0x10
	.long	.LASF178
	.sleb128 47
	.uleb128 0x10
	.long	.LASF179
	.sleb128 48
	.uleb128 0x10
	.long	.LASF180
	.sleb128 49
	.uleb128 0x10
	.long	.LASF181
	.sleb128 50
	.uleb128 0x10
	.long	.LASF182
	.sleb128 51
	.uleb128 0x10
	.long	.LASF183
	.sleb128 52
	.uleb128 0x10
	.long	.LASF184
	.sleb128 53
	.uleb128 0x10
	.long	.LASF185
	.sleb128 54
	.uleb128 0x10
	.long	.LASF186
	.sleb128 55
	.uleb128 0x10
	.long	.LASF187
	.sleb128 56
	.uleb128 0x10
	.long	.LASF188
	.sleb128 57
	.uleb128 0x10
	.long	.LASF189
	.sleb128 58
	.uleb128 0x10
	.long	.LASF190
	.sleb128 59
	.byte	0
	.uleb128 0x1c
	.long	.LASF191
	.byte	0x4
	.byte	0xa
	.byte	0x2c
	.long	0x806
	.uleb128 0x10
	.long	.LASF192
	.sleb128 0
	.uleb128 0x10
	.long	.LASF193
	.sleb128 1
	.uleb128 0x10
	.long	.LASF194
	.sleb128 2
	.uleb128 0x10
	.long	.LASF195
	.sleb128 3
	.uleb128 0x10
	.long	.LASF196
	.sleb128 4
	.uleb128 0x10
	.long	.LASF197
	.sleb128 5
	.uleb128 0x10
	.long	.LASF198
	.sleb128 6
	.uleb128 0x10
	.long	.LASF199
	.sleb128 7
	.uleb128 0x10
	.long	.LASF200
	.sleb128 8
	.uleb128 0x10
	.long	.LASF201
	.sleb128 9
	.byte	0
	.uleb128 0x1c
	.long	.LASF202
	.byte	0x4
	.byte	0x2
	.byte	0x29
	.long	0xc02
	.uleb128 0x10
	.long	.LASF203
	.sleb128 0
	.uleb128 0x1d
	.string	"NIL"
	.sleb128 1
	.uleb128 0x10
	.long	.LASF204
	.sleb128 2
	.uleb128 0x10
	.long	.LASF205
	.sleb128 3
	.uleb128 0x10
	.long	.LASF206
	.sleb128 4
	.uleb128 0x10
	.long	.LASF207
	.sleb128 5
	.uleb128 0x10
	.long	.LASF208
	.sleb128 6
	.uleb128 0x10
	.long	.LASF209
	.sleb128 7
	.uleb128 0x10
	.long	.LASF210
	.sleb128 8
	.uleb128 0x10
	.long	.LASF211
	.sleb128 9
	.uleb128 0x10
	.long	.LASF212
	.sleb128 10
	.uleb128 0x10
	.long	.LASF213
	.sleb128 11
	.uleb128 0x10
	.long	.LASF214
	.sleb128 12
	.uleb128 0x10
	.long	.LASF215
	.sleb128 13
	.uleb128 0x10
	.long	.LASF216
	.sleb128 14
	.uleb128 0x10
	.long	.LASF217
	.sleb128 15
	.uleb128 0x10
	.long	.LASF218
	.sleb128 16
	.uleb128 0x10
	.long	.LASF219
	.sleb128 17
	.uleb128 0x10
	.long	.LASF220
	.sleb128 18
	.uleb128 0x10
	.long	.LASF221
	.sleb128 19
	.uleb128 0x10
	.long	.LASF222
	.sleb128 20
	.uleb128 0x10
	.long	.LASF223
	.sleb128 21
	.uleb128 0x10
	.long	.LASF224
	.sleb128 22
	.uleb128 0x10
	.long	.LASF225
	.sleb128 23
	.uleb128 0x10
	.long	.LASF226
	.sleb128 24
	.uleb128 0x10
	.long	.LASF227
	.sleb128 25
	.uleb128 0x10
	.long	.LASF228
	.sleb128 26
	.uleb128 0x10
	.long	.LASF229
	.sleb128 27
	.uleb128 0x10
	.long	.LASF230
	.sleb128 28
	.uleb128 0x10
	.long	.LASF231
	.sleb128 29
	.uleb128 0x10
	.long	.LASF232
	.sleb128 30
	.uleb128 0x10
	.long	.LASF233
	.sleb128 31
	.uleb128 0x10
	.long	.LASF234
	.sleb128 32
	.uleb128 0x10
	.long	.LASF235
	.sleb128 33
	.uleb128 0x10
	.long	.LASF236
	.sleb128 34
	.uleb128 0x10
	.long	.LASF237
	.sleb128 35
	.uleb128 0x10
	.long	.LASF238
	.sleb128 36
	.uleb128 0x10
	.long	.LASF239
	.sleb128 37
	.uleb128 0x10
	.long	.LASF240
	.sleb128 38
	.uleb128 0x10
	.long	.LASF241
	.sleb128 39
	.uleb128 0x10
	.long	.LASF242
	.sleb128 40
	.uleb128 0x10
	.long	.LASF243
	.sleb128 41
	.uleb128 0x10
	.long	.LASF244
	.sleb128 42
	.uleb128 0x10
	.long	.LASF245
	.sleb128 43
	.uleb128 0x10
	.long	.LASF246
	.sleb128 44
	.uleb128 0x10
	.long	.LASF247
	.sleb128 45
	.uleb128 0x10
	.long	.LASF248
	.sleb128 46
	.uleb128 0x1d
	.string	"SET"
	.sleb128 47
	.uleb128 0x1d
	.string	"USE"
	.sleb128 48
	.uleb128 0x10
	.long	.LASF249
	.sleb128 49
	.uleb128 0x10
	.long	.LASF250
	.sleb128 50
	.uleb128 0x10
	.long	.LASF251
	.sleb128 51
	.uleb128 0x10
	.long	.LASF252
	.sleb128 52
	.uleb128 0x10
	.long	.LASF253
	.sleb128 53
	.uleb128 0x10
	.long	.LASF254
	.sleb128 54
	.uleb128 0x10
	.long	.LASF255
	.sleb128 55
	.uleb128 0x10
	.long	.LASF256
	.sleb128 56
	.uleb128 0x10
	.long	.LASF257
	.sleb128 57
	.uleb128 0x10
	.long	.LASF258
	.sleb128 58
	.uleb128 0x1d
	.string	"PC"
	.sleb128 59
	.uleb128 0x10
	.long	.LASF259
	.sleb128 60
	.uleb128 0x1d
	.string	"REG"
	.sleb128 61
	.uleb128 0x10
	.long	.LASF260
	.sleb128 62
	.uleb128 0x10
	.long	.LASF261
	.sleb128 63
	.uleb128 0x10
	.long	.LASF262
	.sleb128 64
	.uleb128 0x10
	.long	.LASF263
	.sleb128 65
	.uleb128 0x1d
	.string	"MEM"
	.sleb128 66
	.uleb128 0x10
	.long	.LASF264
	.sleb128 67
	.uleb128 0x10
	.long	.LASF265
	.sleb128 68
	.uleb128 0x1d
	.string	"CC0"
	.sleb128 69
	.uleb128 0x10
	.long	.LASF266
	.sleb128 70
	.uleb128 0x10
	.long	.LASF267
	.sleb128 71
	.uleb128 0x10
	.long	.LASF268
	.sleb128 72
	.uleb128 0x10
	.long	.LASF269
	.sleb128 73
	.uleb128 0x10
	.long	.LASF270
	.sleb128 74
	.uleb128 0x10
	.long	.LASF271
	.sleb128 75
	.uleb128 0x10
	.long	.LASF272
	.sleb128 76
	.uleb128 0x1d
	.string	"NEG"
	.sleb128 77
	.uleb128 0x10
	.long	.LASF273
	.sleb128 78
	.uleb128 0x1d
	.string	"DIV"
	.sleb128 79
	.uleb128 0x1d
	.string	"MOD"
	.sleb128 80
	.uleb128 0x10
	.long	.LASF274
	.sleb128 81
	.uleb128 0x10
	.long	.LASF275
	.sleb128 82
	.uleb128 0x1d
	.string	"AND"
	.sleb128 83
	.uleb128 0x1d
	.string	"IOR"
	.sleb128 84
	.uleb128 0x1d
	.string	"XOR"
	.sleb128 85
	.uleb128 0x1d
	.string	"NOT"
	.sleb128 86
	.uleb128 0x10
	.long	.LASF276
	.sleb128 87
	.uleb128 0x10
	.long	.LASF277
	.sleb128 88
	.uleb128 0x10
	.long	.LASF278
	.sleb128 89
	.uleb128 0x10
	.long	.LASF279
	.sleb128 90
	.uleb128 0x10
	.long	.LASF280
	.sleb128 91
	.uleb128 0x10
	.long	.LASF281
	.sleb128 92
	.uleb128 0x10
	.long	.LASF282
	.sleb128 93
	.uleb128 0x10
	.long	.LASF283
	.sleb128 94
	.uleb128 0x10
	.long	.LASF284
	.sleb128 95
	.uleb128 0x10
	.long	.LASF285
	.sleb128 96
	.uleb128 0x10
	.long	.LASF286
	.sleb128 97
	.uleb128 0x10
	.long	.LASF287
	.sleb128 98
	.uleb128 0x10
	.long	.LASF288
	.sleb128 99
	.uleb128 0x10
	.long	.LASF289
	.sleb128 100
	.uleb128 0x10
	.long	.LASF290
	.sleb128 101
	.uleb128 0x1d
	.string	"NE"
	.sleb128 102
	.uleb128 0x1d
	.string	"EQ"
	.sleb128 103
	.uleb128 0x1d
	.string	"GE"
	.sleb128 104
	.uleb128 0x1d
	.string	"GT"
	.sleb128 105
	.uleb128 0x1d
	.string	"LE"
	.sleb128 106
	.uleb128 0x1d
	.string	"LT"
	.sleb128 107
	.uleb128 0x1d
	.string	"GEU"
	.sleb128 108
	.uleb128 0x1d
	.string	"GTU"
	.sleb128 109
	.uleb128 0x1d
	.string	"LEU"
	.sleb128 110
	.uleb128 0x1d
	.string	"LTU"
	.sleb128 111
	.uleb128 0x10
	.long	.LASF291
	.sleb128 112
	.uleb128 0x10
	.long	.LASF292
	.sleb128 113
	.uleb128 0x10
	.long	.LASF293
	.sleb128 114
	.uleb128 0x10
	.long	.LASF294
	.sleb128 115
	.uleb128 0x10
	.long	.LASF295
	.sleb128 116
	.uleb128 0x10
	.long	.LASF296
	.sleb128 117
	.uleb128 0x10
	.long	.LASF297
	.sleb128 118
	.uleb128 0x10
	.long	.LASF298
	.sleb128 119
	.uleb128 0x10
	.long	.LASF299
	.sleb128 120
	.uleb128 0x10
	.long	.LASF300
	.sleb128 121
	.uleb128 0x10
	.long	.LASF301
	.sleb128 122
	.uleb128 0x10
	.long	.LASF302
	.sleb128 123
	.uleb128 0x10
	.long	.LASF303
	.sleb128 124
	.uleb128 0x10
	.long	.LASF304
	.sleb128 125
	.uleb128 0x1d
	.string	"FIX"
	.sleb128 126
	.uleb128 0x10
	.long	.LASF305
	.sleb128 127
	.uleb128 0x10
	.long	.LASF306
	.sleb128 128
	.uleb128 0x1d
	.string	"ABS"
	.sleb128 129
	.uleb128 0x10
	.long	.LASF307
	.sleb128 130
	.uleb128 0x1d
	.string	"FFS"
	.sleb128 131
	.uleb128 0x10
	.long	.LASF308
	.sleb128 132
	.uleb128 0x10
	.long	.LASF309
	.sleb128 133
	.uleb128 0x10
	.long	.LASF310
	.sleb128 134
	.uleb128 0x10
	.long	.LASF311
	.sleb128 135
	.uleb128 0x10
	.long	.LASF312
	.sleb128 136
	.uleb128 0x10
	.long	.LASF313
	.sleb128 137
	.uleb128 0x10
	.long	.LASF314
	.sleb128 138
	.uleb128 0x10
	.long	.LASF315
	.sleb128 139
	.uleb128 0x10
	.long	.LASF316
	.sleb128 140
	.uleb128 0x10
	.long	.LASF317
	.sleb128 141
	.uleb128 0x10
	.long	.LASF318
	.sleb128 142
	.uleb128 0x10
	.long	.LASF319
	.sleb128 143
	.uleb128 0x10
	.long	.LASF320
	.sleb128 144
	.uleb128 0x10
	.long	.LASF321
	.sleb128 145
	.uleb128 0x10
	.long	.LASF322
	.sleb128 146
	.uleb128 0x10
	.long	.LASF323
	.sleb128 147
	.uleb128 0x10
	.long	.LASF324
	.sleb128 148
	.uleb128 0x10
	.long	.LASF325
	.sleb128 149
	.uleb128 0x10
	.long	.LASF326
	.sleb128 150
	.uleb128 0x10
	.long	.LASF327
	.sleb128 151
	.uleb128 0x1d
	.string	"PHI"
	.sleb128 152
	.uleb128 0x10
	.long	.LASF328
	.sleb128 153
	.byte	0
	.uleb128 0x1e
	.byte	0x4
	.byte	0x2
	.byte	0x44
	.long	0xc83
	.uleb128 0x5
	.long	.LASF329
	.byte	0x2
	.byte	0x47
	.long	0x310
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF330
	.byte	0x2
	.byte	0x49
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF331
	.byte	0x2
	.byte	0x4a
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.long	.LASF332
	.byte	0x2
	.byte	0x4c
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	.LASF333
	.byte	0x2
	.byte	0x4e
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF334
	.byte	0x2
	.byte	0x50
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF335
	.byte	0x2
	.byte	0x53
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	.LASF336
	.byte	0x2
	.byte	0x55
	.long	0x310
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF337
	.byte	0x2
	.byte	0x56
	.long	0xc02
	.uleb128 0x1e
	.byte	0x28
	.byte	0x2
	.byte	0x5c
	.long	0xcd3
	.uleb128 0x8
	.long	.LASF338
	.byte	0x2
	.byte	0x5e
	.long	0x319
	.byte	0
	.uleb128 0x8
	.long	.LASF339
	.byte	0x2
	.byte	0x5f
	.long	0x123
	.byte	0x8
	.uleb128 0x8
	.long	.LASF340
	.byte	0x2
	.byte	0x60
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF341
	.byte	0x2
	.byte	0x61
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF342
	.byte	0x2
	.byte	0x62
	.long	0x310
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF343
	.byte	0x2
	.byte	0x63
	.long	0xc8e
	.uleb128 0x1f
	.long	.LASF345
	.byte	0x8
	.byte	0x2
	.byte	0x67
	.long	0xd79
	.uleb128 0x20
	.long	.LASF346
	.byte	0x2
	.byte	0x69
	.long	0x319
	.uleb128 0x20
	.long	.LASF347
	.byte	0x2
	.byte	0x6a
	.long	0x1e3
	.uleb128 0x20
	.long	.LASF348
	.byte	0x2
	.byte	0x6b
	.long	0x310
	.uleb128 0x20
	.long	.LASF349
	.byte	0x2
	.byte	0x6c
	.long	0x577
	.uleb128 0x21
	.string	"rtx"
	.byte	0x2
	.byte	0x6d
	.long	0x2d
	.uleb128 0x20
	.long	.LASF10
	.byte	0x2
	.byte	0x6e
	.long	0xed
	.uleb128 0x20
	.long	.LASF350
	.byte	0x2
	.byte	0x6f
	.long	0x648
	.uleb128 0x20
	.long	.LASF351
	.byte	0x2
	.byte	0x70
	.long	0xc83
	.uleb128 0x20
	.long	.LASF352
	.byte	0x2
	.byte	0x71
	.long	0xd7e
	.uleb128 0x20
	.long	.LASF353
	.byte	0x2
	.byte	0x72
	.long	0xd89
	.uleb128 0x20
	.long	.LASF354
	.byte	0x2
	.byte	0x73
	.long	0x123
	.uleb128 0x21
	.string	"bb"
	.byte	0x2
	.byte	0x74
	.long	0xd94
	.uleb128 0x20
	.long	.LASF355
	.byte	0x2
	.byte	0x75
	.long	0xd9a
	.byte	0
	.uleb128 0x22
	.long	.LASF356
	.uleb128 0x3
	.byte	0x8
	.long	0xd79
	.uleb128 0x22
	.long	.LASF357
	.uleb128 0x3
	.byte	0x8
	.long	0xd84
	.uleb128 0x22
	.long	.LASF358
	.uleb128 0x3
	.byte	0x8
	.long	0xd8f
	.uleb128 0x3
	.byte	0x8
	.long	0xcd3
	.uleb128 0x7
	.long	.LASF359
	.byte	0x2
	.byte	0x76
	.long	0xcde
	.uleb128 0x15
	.long	0xda0
	.long	0xdbb
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x2d
	.long	0xdcb
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LASF360
	.byte	0x4
	.byte	0x2
	.value	0x297
	.long	0xe7a
	.uleb128 0x10
	.long	.LASF361
	.sleb128 -100
	.uleb128 0x10
	.long	.LASF362
	.sleb128 -99
	.uleb128 0x10
	.long	.LASF363
	.sleb128 -98
	.uleb128 0x10
	.long	.LASF364
	.sleb128 -97
	.uleb128 0x10
	.long	.LASF365
	.sleb128 -96
	.uleb128 0x10
	.long	.LASF366
	.sleb128 -95
	.uleb128 0x10
	.long	.LASF367
	.sleb128 -94
	.uleb128 0x10
	.long	.LASF368
	.sleb128 -93
	.uleb128 0x10
	.long	.LASF369
	.sleb128 -92
	.uleb128 0x10
	.long	.LASF370
	.sleb128 -91
	.uleb128 0x10
	.long	.LASF371
	.sleb128 -90
	.uleb128 0x10
	.long	.LASF372
	.sleb128 -89
	.uleb128 0x10
	.long	.LASF373
	.sleb128 -88
	.uleb128 0x10
	.long	.LASF374
	.sleb128 -87
	.uleb128 0x10
	.long	.LASF375
	.sleb128 -86
	.uleb128 0x10
	.long	.LASF376
	.sleb128 -85
	.uleb128 0x10
	.long	.LASF377
	.sleb128 -84
	.uleb128 0x10
	.long	.LASF378
	.sleb128 -83
	.uleb128 0x10
	.long	.LASF379
	.sleb128 -82
	.uleb128 0x10
	.long	.LASF380
	.sleb128 -81
	.uleb128 0x10
	.long	.LASF381
	.sleb128 -80
	.uleb128 0x10
	.long	.LASF382
	.sleb128 -79
	.uleb128 0x10
	.long	.LASF383
	.sleb128 -78
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d
	.uleb128 0xf
	.long	.LASF384
	.byte	0x4
	.byte	0x2
	.value	0x630
	.long	0xed6
	.uleb128 0x10
	.long	.LASF385
	.sleb128 0
	.uleb128 0x10
	.long	.LASF386
	.sleb128 1
	.uleb128 0x10
	.long	.LASF387
	.sleb128 2
	.uleb128 0x10
	.long	.LASF388
	.sleb128 3
	.uleb128 0x10
	.long	.LASF389
	.sleb128 4
	.uleb128 0x10
	.long	.LASF390
	.sleb128 5
	.uleb128 0x10
	.long	.LASF391
	.sleb128 6
	.uleb128 0x10
	.long	.LASF392
	.sleb128 7
	.uleb128 0x10
	.long	.LASF393
	.sleb128 8
	.uleb128 0x10
	.long	.LASF394
	.sleb128 9
	.uleb128 0x10
	.long	.LASF395
	.sleb128 10
	.uleb128 0x10
	.long	.LASF396
	.sleb128 11
	.byte	0
	.uleb128 0x1c
	.long	.LASF397
	.byte	0x4
	.byte	0x4
	.byte	0x1d
	.long	0x12af
	.uleb128 0x10
	.long	.LASF398
	.sleb128 0
	.uleb128 0x10
	.long	.LASF399
	.sleb128 1
	.uleb128 0x10
	.long	.LASF400
	.sleb128 2
	.uleb128 0x10
	.long	.LASF401
	.sleb128 3
	.uleb128 0x10
	.long	.LASF402
	.sleb128 4
	.uleb128 0x10
	.long	.LASF403
	.sleb128 5
	.uleb128 0x10
	.long	.LASF404
	.sleb128 6
	.uleb128 0x10
	.long	.LASF405
	.sleb128 7
	.uleb128 0x10
	.long	.LASF406
	.sleb128 8
	.uleb128 0x10
	.long	.LASF407
	.sleb128 9
	.uleb128 0x10
	.long	.LASF408
	.sleb128 10
	.uleb128 0x10
	.long	.LASF409
	.sleb128 11
	.uleb128 0x10
	.long	.LASF410
	.sleb128 12
	.uleb128 0x10
	.long	.LASF411
	.sleb128 13
	.uleb128 0x10
	.long	.LASF412
	.sleb128 14
	.uleb128 0x10
	.long	.LASF413
	.sleb128 15
	.uleb128 0x10
	.long	.LASF414
	.sleb128 16
	.uleb128 0x10
	.long	.LASF415
	.sleb128 17
	.uleb128 0x10
	.long	.LASF416
	.sleb128 18
	.uleb128 0x10
	.long	.LASF417
	.sleb128 19
	.uleb128 0x10
	.long	.LASF418
	.sleb128 20
	.uleb128 0x10
	.long	.LASF419
	.sleb128 21
	.uleb128 0x10
	.long	.LASF420
	.sleb128 22
	.uleb128 0x10
	.long	.LASF421
	.sleb128 23
	.uleb128 0x10
	.long	.LASF422
	.sleb128 24
	.uleb128 0x10
	.long	.LASF423
	.sleb128 25
	.uleb128 0x10
	.long	.LASF424
	.sleb128 26
	.uleb128 0x10
	.long	.LASF425
	.sleb128 27
	.uleb128 0x10
	.long	.LASF426
	.sleb128 28
	.uleb128 0x10
	.long	.LASF427
	.sleb128 29
	.uleb128 0x10
	.long	.LASF428
	.sleb128 30
	.uleb128 0x10
	.long	.LASF429
	.sleb128 31
	.uleb128 0x10
	.long	.LASF430
	.sleb128 32
	.uleb128 0x10
	.long	.LASF431
	.sleb128 33
	.uleb128 0x10
	.long	.LASF432
	.sleb128 34
	.uleb128 0x10
	.long	.LASF433
	.sleb128 35
	.uleb128 0x10
	.long	.LASF434
	.sleb128 36
	.uleb128 0x10
	.long	.LASF435
	.sleb128 37
	.uleb128 0x10
	.long	.LASF436
	.sleb128 38
	.uleb128 0x10
	.long	.LASF437
	.sleb128 39
	.uleb128 0x10
	.long	.LASF438
	.sleb128 40
	.uleb128 0x10
	.long	.LASF439
	.sleb128 41
	.uleb128 0x10
	.long	.LASF440
	.sleb128 42
	.uleb128 0x10
	.long	.LASF441
	.sleb128 43
	.uleb128 0x10
	.long	.LASF442
	.sleb128 44
	.uleb128 0x10
	.long	.LASF443
	.sleb128 45
	.uleb128 0x10
	.long	.LASF444
	.sleb128 46
	.uleb128 0x10
	.long	.LASF445
	.sleb128 47
	.uleb128 0x10
	.long	.LASF446
	.sleb128 48
	.uleb128 0x10
	.long	.LASF447
	.sleb128 49
	.uleb128 0x10
	.long	.LASF448
	.sleb128 50
	.uleb128 0x10
	.long	.LASF449
	.sleb128 51
	.uleb128 0x10
	.long	.LASF450
	.sleb128 52
	.uleb128 0x10
	.long	.LASF451
	.sleb128 53
	.uleb128 0x10
	.long	.LASF452
	.sleb128 54
	.uleb128 0x10
	.long	.LASF453
	.sleb128 55
	.uleb128 0x10
	.long	.LASF454
	.sleb128 56
	.uleb128 0x10
	.long	.LASF455
	.sleb128 57
	.uleb128 0x10
	.long	.LASF456
	.sleb128 58
	.uleb128 0x10
	.long	.LASF457
	.sleb128 59
	.uleb128 0x10
	.long	.LASF458
	.sleb128 60
	.uleb128 0x10
	.long	.LASF459
	.sleb128 61
	.uleb128 0x10
	.long	.LASF460
	.sleb128 62
	.uleb128 0x10
	.long	.LASF461
	.sleb128 63
	.uleb128 0x10
	.long	.LASF462
	.sleb128 64
	.uleb128 0x10
	.long	.LASF463
	.sleb128 65
	.uleb128 0x10
	.long	.LASF464
	.sleb128 66
	.uleb128 0x10
	.long	.LASF465
	.sleb128 67
	.uleb128 0x10
	.long	.LASF466
	.sleb128 68
	.uleb128 0x10
	.long	.LASF467
	.sleb128 69
	.uleb128 0x10
	.long	.LASF468
	.sleb128 70
	.uleb128 0x10
	.long	.LASF469
	.sleb128 71
	.uleb128 0x10
	.long	.LASF470
	.sleb128 72
	.uleb128 0x10
	.long	.LASF471
	.sleb128 73
	.uleb128 0x10
	.long	.LASF472
	.sleb128 74
	.uleb128 0x10
	.long	.LASF473
	.sleb128 75
	.uleb128 0x10
	.long	.LASF474
	.sleb128 76
	.uleb128 0x10
	.long	.LASF475
	.sleb128 77
	.uleb128 0x10
	.long	.LASF476
	.sleb128 78
	.uleb128 0x10
	.long	.LASF477
	.sleb128 79
	.uleb128 0x10
	.long	.LASF478
	.sleb128 80
	.uleb128 0x10
	.long	.LASF479
	.sleb128 81
	.uleb128 0x10
	.long	.LASF480
	.sleb128 82
	.uleb128 0x10
	.long	.LASF481
	.sleb128 83
	.uleb128 0x10
	.long	.LASF482
	.sleb128 84
	.uleb128 0x10
	.long	.LASF483
	.sleb128 85
	.uleb128 0x10
	.long	.LASF484
	.sleb128 86
	.uleb128 0x10
	.long	.LASF485
	.sleb128 87
	.uleb128 0x10
	.long	.LASF486
	.sleb128 88
	.uleb128 0x10
	.long	.LASF487
	.sleb128 89
	.uleb128 0x10
	.long	.LASF488
	.sleb128 90
	.uleb128 0x10
	.long	.LASF489
	.sleb128 91
	.uleb128 0x10
	.long	.LASF490
	.sleb128 92
	.uleb128 0x10
	.long	.LASF491
	.sleb128 93
	.uleb128 0x10
	.long	.LASF492
	.sleb128 94
	.uleb128 0x10
	.long	.LASF493
	.sleb128 95
	.uleb128 0x10
	.long	.LASF494
	.sleb128 96
	.uleb128 0x10
	.long	.LASF495
	.sleb128 97
	.uleb128 0x10
	.long	.LASF496
	.sleb128 98
	.uleb128 0x10
	.long	.LASF497
	.sleb128 99
	.uleb128 0x10
	.long	.LASF498
	.sleb128 100
	.uleb128 0x10
	.long	.LASF499
	.sleb128 101
	.uleb128 0x10
	.long	.LASF500
	.sleb128 102
	.uleb128 0x10
	.long	.LASF501
	.sleb128 103
	.uleb128 0x10
	.long	.LASF502
	.sleb128 104
	.uleb128 0x10
	.long	.LASF503
	.sleb128 105
	.uleb128 0x10
	.long	.LASF504
	.sleb128 106
	.uleb128 0x10
	.long	.LASF505
	.sleb128 107
	.uleb128 0x10
	.long	.LASF506
	.sleb128 108
	.uleb128 0x10
	.long	.LASF507
	.sleb128 109
	.uleb128 0x10
	.long	.LASF508
	.sleb128 110
	.uleb128 0x10
	.long	.LASF509
	.sleb128 111
	.uleb128 0x10
	.long	.LASF510
	.sleb128 112
	.uleb128 0x10
	.long	.LASF511
	.sleb128 113
	.uleb128 0x10
	.long	.LASF512
	.sleb128 114
	.uleb128 0x10
	.long	.LASF513
	.sleb128 115
	.uleb128 0x10
	.long	.LASF514
	.sleb128 116
	.uleb128 0x10
	.long	.LASF515
	.sleb128 117
	.uleb128 0x10
	.long	.LASF516
	.sleb128 118
	.uleb128 0x10
	.long	.LASF517
	.sleb128 119
	.uleb128 0x10
	.long	.LASF518
	.sleb128 120
	.uleb128 0x10
	.long	.LASF519
	.sleb128 121
	.uleb128 0x10
	.long	.LASF520
	.sleb128 122
	.uleb128 0x10
	.long	.LASF521
	.sleb128 123
	.uleb128 0x10
	.long	.LASF522
	.sleb128 124
	.uleb128 0x10
	.long	.LASF523
	.sleb128 125
	.uleb128 0x10
	.long	.LASF524
	.sleb128 126
	.uleb128 0x10
	.long	.LASF525
	.sleb128 127
	.uleb128 0x10
	.long	.LASF526
	.sleb128 128
	.uleb128 0x10
	.long	.LASF527
	.sleb128 129
	.uleb128 0x10
	.long	.LASF528
	.sleb128 130
	.uleb128 0x10
	.long	.LASF529
	.sleb128 131
	.uleb128 0x10
	.long	.LASF530
	.sleb128 132
	.uleb128 0x10
	.long	.LASF531
	.sleb128 133
	.uleb128 0x10
	.long	.LASF532
	.sleb128 134
	.uleb128 0x10
	.long	.LASF533
	.sleb128 135
	.uleb128 0x10
	.long	.LASF534
	.sleb128 136
	.uleb128 0x10
	.long	.LASF535
	.sleb128 137
	.uleb128 0x10
	.long	.LASF536
	.sleb128 138
	.uleb128 0x10
	.long	.LASF537
	.sleb128 139
	.uleb128 0x10
	.long	.LASF538
	.sleb128 140
	.uleb128 0x10
	.long	.LASF539
	.sleb128 141
	.uleb128 0x10
	.long	.LASF540
	.sleb128 142
	.uleb128 0x10
	.long	.LASF541
	.sleb128 143
	.uleb128 0x10
	.long	.LASF542
	.sleb128 144
	.uleb128 0x10
	.long	.LASF543
	.sleb128 145
	.uleb128 0x10
	.long	.LASF544
	.sleb128 146
	.uleb128 0x10
	.long	.LASF545
	.sleb128 147
	.byte	0
	.uleb128 0x1c
	.long	.LASF546
	.byte	0x4
	.byte	0x4
	.byte	0x54
	.long	0x151c
	.uleb128 0x10
	.long	.LASF547
	.sleb128 0
	.uleb128 0x10
	.long	.LASF548
	.sleb128 1
	.uleb128 0x10
	.long	.LASF549
	.sleb128 2
	.uleb128 0x10
	.long	.LASF550
	.sleb128 3
	.uleb128 0x10
	.long	.LASF551
	.sleb128 4
	.uleb128 0x10
	.long	.LASF552
	.sleb128 5
	.uleb128 0x10
	.long	.LASF553
	.sleb128 6
	.uleb128 0x10
	.long	.LASF554
	.sleb128 7
	.uleb128 0x10
	.long	.LASF555
	.sleb128 8
	.uleb128 0x10
	.long	.LASF556
	.sleb128 9
	.uleb128 0x10
	.long	.LASF557
	.sleb128 10
	.uleb128 0x10
	.long	.LASF558
	.sleb128 11
	.uleb128 0x10
	.long	.LASF559
	.sleb128 12
	.uleb128 0x10
	.long	.LASF560
	.sleb128 13
	.uleb128 0x10
	.long	.LASF561
	.sleb128 14
	.uleb128 0x10
	.long	.LASF562
	.sleb128 15
	.uleb128 0x10
	.long	.LASF563
	.sleb128 16
	.uleb128 0x10
	.long	.LASF564
	.sleb128 17
	.uleb128 0x10
	.long	.LASF565
	.sleb128 18
	.uleb128 0x10
	.long	.LASF566
	.sleb128 19
	.uleb128 0x10
	.long	.LASF567
	.sleb128 20
	.uleb128 0x10
	.long	.LASF568
	.sleb128 21
	.uleb128 0x10
	.long	.LASF569
	.sleb128 22
	.uleb128 0x10
	.long	.LASF570
	.sleb128 23
	.uleb128 0x10
	.long	.LASF571
	.sleb128 24
	.uleb128 0x10
	.long	.LASF572
	.sleb128 25
	.uleb128 0x10
	.long	.LASF573
	.sleb128 26
	.uleb128 0x10
	.long	.LASF574
	.sleb128 27
	.uleb128 0x10
	.long	.LASF575
	.sleb128 28
	.uleb128 0x10
	.long	.LASF576
	.sleb128 29
	.uleb128 0x10
	.long	.LASF577
	.sleb128 30
	.uleb128 0x10
	.long	.LASF578
	.sleb128 31
	.uleb128 0x10
	.long	.LASF579
	.sleb128 32
	.uleb128 0x10
	.long	.LASF580
	.sleb128 33
	.uleb128 0x10
	.long	.LASF581
	.sleb128 34
	.uleb128 0x10
	.long	.LASF582
	.sleb128 35
	.uleb128 0x10
	.long	.LASF583
	.sleb128 36
	.uleb128 0x10
	.long	.LASF584
	.sleb128 37
	.uleb128 0x10
	.long	.LASF585
	.sleb128 38
	.uleb128 0x10
	.long	.LASF586
	.sleb128 39
	.uleb128 0x10
	.long	.LASF587
	.sleb128 40
	.uleb128 0x10
	.long	.LASF588
	.sleb128 41
	.uleb128 0x10
	.long	.LASF589
	.sleb128 42
	.uleb128 0x10
	.long	.LASF590
	.sleb128 43
	.uleb128 0x10
	.long	.LASF591
	.sleb128 44
	.uleb128 0x10
	.long	.LASF592
	.sleb128 45
	.uleb128 0x10
	.long	.LASF593
	.sleb128 46
	.uleb128 0x10
	.long	.LASF594
	.sleb128 47
	.uleb128 0x10
	.long	.LASF595
	.sleb128 48
	.uleb128 0x10
	.long	.LASF596
	.sleb128 49
	.uleb128 0x10
	.long	.LASF597
	.sleb128 50
	.uleb128 0x10
	.long	.LASF598
	.sleb128 51
	.uleb128 0x10
	.long	.LASF599
	.sleb128 52
	.uleb128 0x10
	.long	.LASF600
	.sleb128 53
	.uleb128 0x10
	.long	.LASF601
	.sleb128 54
	.uleb128 0x10
	.long	.LASF602
	.sleb128 55
	.uleb128 0x10
	.long	.LASF603
	.sleb128 56
	.uleb128 0x10
	.long	.LASF604
	.sleb128 57
	.uleb128 0x10
	.long	.LASF605
	.sleb128 58
	.uleb128 0x10
	.long	.LASF606
	.sleb128 59
	.uleb128 0x10
	.long	.LASF607
	.sleb128 60
	.uleb128 0x10
	.long	.LASF608
	.sleb128 61
	.uleb128 0x10
	.long	.LASF609
	.sleb128 62
	.uleb128 0x10
	.long	.LASF610
	.sleb128 63
	.uleb128 0x10
	.long	.LASF611
	.sleb128 64
	.uleb128 0x10
	.long	.LASF612
	.sleb128 65
	.uleb128 0x10
	.long	.LASF613
	.sleb128 66
	.uleb128 0x10
	.long	.LASF614
	.sleb128 67
	.uleb128 0x10
	.long	.LASF615
	.sleb128 68
	.uleb128 0x10
	.long	.LASF616
	.sleb128 69
	.uleb128 0x10
	.long	.LASF617
	.sleb128 70
	.uleb128 0x10
	.long	.LASF618
	.sleb128 71
	.uleb128 0x10
	.long	.LASF619
	.sleb128 72
	.uleb128 0x10
	.long	.LASF620
	.sleb128 73
	.uleb128 0x10
	.long	.LASF621
	.sleb128 74
	.uleb128 0x10
	.long	.LASF622
	.sleb128 75
	.uleb128 0x10
	.long	.LASF623
	.sleb128 76
	.uleb128 0x10
	.long	.LASF624
	.sleb128 77
	.uleb128 0x10
	.long	.LASF625
	.sleb128 78
	.uleb128 0x10
	.long	.LASF626
	.sleb128 79
	.uleb128 0x10
	.long	.LASF627
	.sleb128 80
	.uleb128 0x10
	.long	.LASF628
	.sleb128 81
	.uleb128 0x10
	.long	.LASF629
	.sleb128 82
	.uleb128 0x10
	.long	.LASF630
	.sleb128 83
	.uleb128 0x10
	.long	.LASF631
	.sleb128 84
	.uleb128 0x10
	.long	.LASF632
	.sleb128 85
	.uleb128 0x10
	.long	.LASF633
	.sleb128 86
	.uleb128 0x10
	.long	.LASF634
	.sleb128 87
	.uleb128 0x10
	.long	.LASF635
	.sleb128 88
	.uleb128 0x10
	.long	.LASF636
	.sleb128 89
	.uleb128 0x10
	.long	.LASF637
	.sleb128 90
	.uleb128 0x10
	.long	.LASF638
	.sleb128 91
	.uleb128 0x10
	.long	.LASF639
	.sleb128 92
	.uleb128 0x10
	.long	.LASF640
	.sleb128 93
	.uleb128 0x10
	.long	.LASF641
	.sleb128 94
	.uleb128 0x10
	.long	.LASF642
	.sleb128 95
	.byte	0
	.uleb128 0x4
	.long	.LASF643
	.byte	0x18
	.byte	0x4
	.byte	0x79
	.long	0x16b8
	.uleb128 0x8
	.long	.LASF644
	.byte	0x4
	.byte	0x7b
	.long	0x123
	.byte	0
	.uleb128 0x8
	.long	.LASF24
	.byte	0x4
	.byte	0x7c
	.long	0x123
	.byte	0x8
	.uleb128 0x5
	.long	.LASF0
	.byte	0x4
	.byte	0x7e
	.long	0x310
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x10
	.uleb128 0x5
	.long	.LASF645
	.byte	0x4
	.byte	0x80
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x10
	.uleb128 0x5
	.long	.LASF646
	.byte	0x4
	.byte	0x81
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x10
	.uleb128 0x5
	.long	.LASF647
	.byte	0x4
	.byte	0x82
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x10
	.uleb128 0x5
	.long	.LASF648
	.byte	0x4
	.byte	0x83
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x10
	.uleb128 0x5
	.long	.LASF649
	.byte	0x4
	.byte	0x84
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x10
	.uleb128 0x5
	.long	.LASF650
	.byte	0x4
	.byte	0x85
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x10
	.uleb128 0x5
	.long	.LASF651
	.byte	0x4
	.byte	0x86
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x10
	.uleb128 0x5
	.long	.LASF652
	.byte	0x4
	.byte	0x87
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x10
	.uleb128 0x5
	.long	.LASF653
	.byte	0x4
	.byte	0x89
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x10
	.uleb128 0x5
	.long	.LASF654
	.byte	0x4
	.byte	0x8a
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x10
	.uleb128 0x5
	.long	.LASF655
	.byte	0x4
	.byte	0x8b
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x10
	.uleb128 0x5
	.long	.LASF656
	.byte	0x4
	.byte	0x8c
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x10
	.uleb128 0x5
	.long	.LASF657
	.byte	0x4
	.byte	0x8d
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x10
	.uleb128 0x5
	.long	.LASF658
	.byte	0x4
	.byte	0x8e
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x10
	.uleb128 0x5
	.long	.LASF659
	.byte	0x4
	.byte	0x8f
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x10
	.uleb128 0x5
	.long	.LASF660
	.byte	0x4
	.byte	0x90
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x10
	.uleb128 0x5
	.long	.LASF661
	.byte	0x4
	.byte	0x92
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x10
	.uleb128 0x5
	.long	.LASF662
	.byte	0x4
	.byte	0x93
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x10
	.uleb128 0x5
	.long	.LASF663
	.byte	0x4
	.byte	0x94
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x10
	.uleb128 0x5
	.long	.LASF664
	.byte	0x4
	.byte	0x95
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x10
	.uleb128 0x5
	.long	.LASF665
	.byte	0x4
	.byte	0x96
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x10
	.uleb128 0x5
	.long	.LASF666
	.byte	0x4
	.byte	0x97
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x5
	.long	.LASF667
	.byte	0x4
	.byte	0x98
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x10
	.uleb128 0x5
	.long	.LASF668
	.byte	0x4
	.byte	0x99
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x10
	.byte	0
	.uleb128 0x23
	.byte	0x10
	.byte	0x4
	.value	0x2c9
	.long	0x16dc
	.uleb128 0x24
	.string	"low"
	.byte	0x4
	.value	0x2ca
	.long	0x32b
	.byte	0
	.uleb128 0x12
	.long	.LASF669
	.byte	0x4
	.value	0x2cb
	.long	0x319
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.long	.LASF670
	.byte	0x30
	.byte	0x4
	.value	0x2c1
	.long	0x1711
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x2c3
	.long	0x151c
	.byte	0
	.uleb128 0x24
	.string	"rtl"
	.byte	0x4
	.value	0x2c4
	.long	0x2d
	.byte	0x18
	.uleb128 0x12
	.long	.LASF17
	.byte	0x4
	.value	0x2cc
	.long	0x16b8
	.byte	0x20
	.byte	0
	.uleb128 0x1e
	.byte	0x18
	.byte	0xb
	.byte	0x6b
	.long	0x1724
	.uleb128 0x6
	.string	"r"
	.byte	0xb
	.byte	0x6c
	.long	0x1724
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x319
	.long	0x1734
	.uleb128 0x16
	.long	0x1ea
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF671
	.byte	0xb
	.byte	0x6d
	.long	0x1711
	.uleb128 0x9
	.long	.LASF672
	.byte	0x18
	.byte	0xb
	.value	0x1bd
	.long	0x1761
	.uleb128 0xb
	.string	"d"
	.byte	0xb
	.value	0x1bf
	.long	0x1734
	.uleb128 0xb
	.string	"i"
	.byte	0xb
	.value	0x1c0
	.long	0x1724
	.byte	0
	.uleb128 0x11
	.long	.LASF673
	.byte	0x38
	.byte	0x4
	.value	0x2de
	.long	0x1796
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x2e0
	.long	0x151c
	.byte	0
	.uleb128 0x24
	.string	"rtl"
	.byte	0x4
	.value	0x2e1
	.long	0x2d
	.byte	0x18
	.uleb128 0x12
	.long	.LASF18
	.byte	0x4
	.value	0x2e2
	.long	0x1734
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.long	.LASF674
	.byte	0x30
	.byte	0x4
	.value	0x2e9
	.long	0x17d8
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x2eb
	.long	0x151c
	.byte	0
	.uleb128 0x24
	.string	"rtl"
	.byte	0x4
	.value	0x2ec
	.long	0x2d
	.byte	0x18
	.uleb128 0x12
	.long	.LASF675
	.byte	0x4
	.value	0x2ed
	.long	0x1e3
	.byte	0x20
	.uleb128 0x12
	.long	.LASF676
	.byte	0x4
	.value	0x2ee
	.long	0x577
	.byte	0x28
	.byte	0
	.uleb128 0x11
	.long	.LASF677
	.byte	0x30
	.byte	0x4
	.value	0x2f5
	.long	0x181a
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x2f7
	.long	0x151c
	.byte	0
	.uleb128 0x24
	.string	"rtl"
	.byte	0x4
	.value	0x2f8
	.long	0x2d
	.byte	0x18
	.uleb128 0x12
	.long	.LASF678
	.byte	0x4
	.value	0x2f9
	.long	0x123
	.byte	0x20
	.uleb128 0x12
	.long	.LASF679
	.byte	0x4
	.value	0x2fa
	.long	0x123
	.byte	0x28
	.byte	0
	.uleb128 0x11
	.long	.LASF680
	.byte	0x28
	.byte	0x4
	.value	0x300
	.long	0x184f
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x302
	.long	0x151c
	.byte	0
	.uleb128 0x24
	.string	"rtl"
	.byte	0x4
	.value	0x303
	.long	0x2d
	.byte	0x18
	.uleb128 0x12
	.long	.LASF681
	.byte	0x4
	.value	0x304
	.long	0x123
	.byte	0x20
	.byte	0
	.uleb128 0x4
	.long	.LASF682
	.byte	0x18
	.byte	0xc
	.byte	0xa1
	.long	0x1880
	.uleb128 0x8
	.long	.LASF683
	.byte	0xc
	.byte	0xa3
	.long	0x364
	.byte	0
	.uleb128 0x8
	.long	.LASF684
	.byte	0xc
	.byte	0xa4
	.long	0x1880
	.byte	0x8
	.uleb128 0x8
	.long	.LASF685
	.byte	0xc
	.byte	0xa5
	.long	0x4fd
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x184f
	.uleb128 0x4
	.long	.LASF686
	.byte	0x58
	.byte	0xc
	.byte	0xa8
	.long	0x1938
	.uleb128 0x8
	.long	.LASF687
	.byte	0xc
	.byte	0xaa
	.long	0x319
	.byte	0
	.uleb128 0x8
	.long	.LASF688
	.byte	0xc
	.byte	0xab
	.long	0x1880
	.byte	0x8
	.uleb128 0x8
	.long	.LASF689
	.byte	0xc
	.byte	0xac
	.long	0x364
	.byte	0x10
	.uleb128 0x8
	.long	.LASF690
	.byte	0xc
	.byte	0xad
	.long	0x364
	.byte	0x18
	.uleb128 0x8
	.long	.LASF691
	.byte	0xc
	.byte	0xae
	.long	0x364
	.byte	0x20
	.uleb128 0x8
	.long	.LASF692
	.byte	0xc
	.byte	0xaf
	.long	0x319
	.byte	0x28
	.uleb128 0x8
	.long	.LASF693
	.byte	0xc
	.byte	0xb0
	.long	0x1e3
	.byte	0x30
	.uleb128 0x8
	.long	.LASF694
	.byte	0xc
	.byte	0xb5
	.long	0x194c
	.byte	0x38
	.uleb128 0x8
	.long	.LASF695
	.byte	0xc
	.byte	0xb6
	.long	0x1962
	.byte	0x40
	.uleb128 0x8
	.long	.LASF696
	.byte	0xc
	.byte	0xb7
	.long	0x317
	.byte	0x48
	.uleb128 0x5
	.long	.LASF697
	.byte	0xc
	.byte	0xbd
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x50
	.uleb128 0x5
	.long	.LASF698
	.byte	0xc
	.byte	0xbe
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x50
	.uleb128 0x5
	.long	.LASF699
	.byte	0xc
	.byte	0xc2
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x50
	.byte	0
	.uleb128 0x19
	.long	0x1880
	.long	0x194c
	.uleb128 0x1a
	.long	0x317
	.uleb128 0x1a
	.long	0x319
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1938
	.uleb128 0x25
	.long	0x1962
	.uleb128 0x1a
	.long	0x317
	.uleb128 0x1a
	.long	0x1880
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1952
	.uleb128 0x4
	.long	.LASF700
	.byte	0x10
	.byte	0xd
	.byte	0x1a
	.long	0x198d
	.uleb128 0x6
	.string	"len"
	.byte	0xd
	.byte	0x1c
	.long	0x310
	.byte	0
	.uleb128 0x6
	.string	"str"
	.byte	0xd
	.byte	0x1d
	.long	0x198d
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1993
	.uleb128 0xc
	.long	0x332
	.uleb128 0x11
	.long	.LASF701
	.byte	0x28
	.byte	0x4
	.value	0x317
	.long	0x19bf
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x319
	.long	0x151c
	.byte	0
	.uleb128 0x24
	.string	"id"
	.byte	0x4
	.value	0x31a
	.long	0x1968
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.long	.LASF702
	.byte	0x28
	.byte	0x4
	.value	0x321
	.long	0x19f4
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x323
	.long	0x151c
	.byte	0
	.uleb128 0x12
	.long	.LASF703
	.byte	0x4
	.value	0x324
	.long	0x123
	.byte	0x18
	.uleb128 0x12
	.long	.LASF704
	.byte	0x4
	.value	0x325
	.long	0x123
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.long	.LASF705
	.byte	0x28
	.byte	0x4
	.value	0x32e
	.long	0x1a27
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x330
	.long	0x151c
	.byte	0
	.uleb128 0x12
	.long	.LASF675
	.byte	0x4
	.value	0x331
	.long	0x1e3
	.byte	0x18
	.uleb128 0x24
	.string	"a"
	.byte	0x4
	.value	0x332
	.long	0x1a27
	.byte	0x20
	.byte	0
	.uleb128 0x15
	.long	0x123
	.long	0x1a37
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	.LASF706
	.byte	0x28
	.byte	0x4
	.value	0x36f
	.long	0x1a6c
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x371
	.long	0x151c
	.byte	0
	.uleb128 0x12
	.long	.LASF707
	.byte	0x4
	.value	0x372
	.long	0x1e3
	.byte	0x18
	.uleb128 0x12
	.long	.LASF708
	.byte	0x4
	.value	0x373
	.long	0x1a27
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.long	.LASF709
	.byte	0x50
	.byte	0x4
	.value	0x3a3
	.long	0x1b05
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x3a5
	.long	0x151c
	.byte	0
	.uleb128 0x26
	.long	.LASF710
	.byte	0x4
	.value	0x3a7
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x18
	.uleb128 0x26
	.long	.LASF711
	.byte	0x4
	.value	0x3a8
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x18
	.uleb128 0x26
	.long	.LASF712
	.byte	0x4
	.value	0x3a9
	.long	0x310
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x18
	.uleb128 0x12
	.long	.LASF713
	.byte	0x4
	.value	0x3ab
	.long	0x123
	.byte	0x20
	.uleb128 0x12
	.long	.LASF714
	.byte	0x4
	.value	0x3ac
	.long	0x123
	.byte	0x28
	.uleb128 0x12
	.long	.LASF715
	.byte	0x4
	.value	0x3ad
	.long	0x123
	.byte	0x30
	.uleb128 0x12
	.long	.LASF716
	.byte	0x4
	.value	0x3ae
	.long	0x123
	.byte	0x38
	.uleb128 0x12
	.long	.LASF717
	.byte	0x4
	.value	0x3af
	.long	0x123
	.byte	0x40
	.uleb128 0x12
	.long	.LASF718
	.byte	0x4
	.value	0x3b0
	.long	0x123
	.byte	0x48
	.byte	0
	.uleb128 0x27
	.byte	0x8
	.byte	0x4
	.value	0x4d8
	.long	0x1b27
	.uleb128 0xa
	.long	.LASF719
	.byte	0x4
	.value	0x4d8
	.long	0x1e3
	.uleb128 0xa
	.long	.LASF676
	.byte	0x4
	.value	0x4d8
	.long	0x364
	.byte	0
	.uleb128 0x11
	.long	.LASF720
	.byte	0xa8
	.byte	0x4
	.value	0x4b8
	.long	0x1d3c
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x4ba
	.long	0x151c
	.byte	0
	.uleb128 0x12
	.long	.LASF721
	.byte	0x4
	.value	0x4bb
	.long	0x123
	.byte	0x18
	.uleb128 0x12
	.long	.LASF341
	.byte	0x4
	.value	0x4bc
	.long	0x123
	.byte	0x20
	.uleb128 0x12
	.long	.LASF722
	.byte	0x4
	.value	0x4bd
	.long	0x123
	.byte	0x28
	.uleb128 0x12
	.long	.LASF723
	.byte	0x4
	.value	0x4be
	.long	0x123
	.byte	0x30
	.uleb128 0x24
	.string	"uid"
	.byte	0x4
	.value	0x4bf
	.long	0x310
	.byte	0x38
	.uleb128 0x26
	.long	.LASF724
	.byte	0x4
	.value	0x4c1
	.long	0x310
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x3c
	.uleb128 0x26
	.long	.LASF1
	.byte	0x4
	.value	0x4c2
	.long	0x310
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x3c
	.uleb128 0x26
	.long	.LASF725
	.byte	0x4
	.value	0x4c4
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3c
	.uleb128 0x26
	.long	.LASF726
	.byte	0x4
	.value	0x4c5
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3c
	.uleb128 0x26
	.long	.LASF727
	.byte	0x4
	.value	0x4c6
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3c
	.uleb128 0x26
	.long	.LASF728
	.byte	0x4
	.value	0x4c7
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3c
	.uleb128 0x26
	.long	.LASF729
	.byte	0x4
	.value	0x4c8
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3c
	.uleb128 0x26
	.long	.LASF730
	.byte	0x4
	.value	0x4c9
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3c
	.uleb128 0x26
	.long	.LASF731
	.byte	0x4
	.value	0x4ca
	.long	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.uleb128 0x26
	.long	.LASF661
	.byte	0x4
	.value	0x4cc
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3c
	.uleb128 0x26
	.long	.LASF662
	.byte	0x4
	.value	0x4cd
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x3c
	.uleb128 0x26
	.long	.LASF663
	.byte	0x4
	.value	0x4ce
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x3c
	.uleb128 0x26
	.long	.LASF664
	.byte	0x4
	.value	0x4cf
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x3c
	.uleb128 0x26
	.long	.LASF665
	.byte	0x4
	.value	0x4d0
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x3c
	.uleb128 0x26
	.long	.LASF666
	.byte	0x4
	.value	0x4d1
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x3c
	.uleb128 0x26
	.long	.LASF667
	.byte	0x4
	.value	0x4d2
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x3c
	.uleb128 0x26
	.long	.LASF732
	.byte	0x4
	.value	0x4d3
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x3c
	.uleb128 0x12
	.long	.LASF342
	.byte	0x4
	.value	0x4d5
	.long	0x310
	.byte	0x40
	.uleb128 0x12
	.long	.LASF733
	.byte	0x4
	.value	0x4d6
	.long	0x123
	.byte	0x48
	.uleb128 0x12
	.long	.LASF734
	.byte	0x4
	.value	0x4d7
	.long	0x123
	.byte	0x50
	.uleb128 0x12
	.long	.LASF735
	.byte	0x4
	.value	0x4d8
	.long	0x1b05
	.byte	0x58
	.uleb128 0x12
	.long	.LASF736
	.byte	0x4
	.value	0x4d9
	.long	0x123
	.byte	0x60
	.uleb128 0x12
	.long	.LASF737
	.byte	0x4
	.value	0x4da
	.long	0x123
	.byte	0x68
	.uleb128 0x12
	.long	.LASF738
	.byte	0x4
	.value	0x4db
	.long	0x123
	.byte	0x70
	.uleb128 0x12
	.long	.LASF739
	.byte	0x4
	.value	0x4dc
	.long	0x123
	.byte	0x78
	.uleb128 0x12
	.long	.LASF740
	.byte	0x4
	.value	0x4dd
	.long	0x123
	.byte	0x80
	.uleb128 0x12
	.long	.LASF741
	.byte	0x4
	.value	0x4de
	.long	0x123
	.byte	0x88
	.uleb128 0x12
	.long	.LASF742
	.byte	0x4
	.value	0x4df
	.long	0x123
	.byte	0x90
	.uleb128 0x12
	.long	.LASF743
	.byte	0x4
	.value	0x4e0
	.long	0x319
	.byte	0x98
	.uleb128 0x12
	.long	.LASF744
	.byte	0x4
	.value	0x4e2
	.long	0x1d41
	.byte	0xa0
	.byte	0
	.uleb128 0x22
	.long	.LASF745
	.uleb128 0x3
	.byte	0x8
	.long	0x1d3c
	.uleb128 0x23
	.byte	0x4
	.byte	0x4
	.value	0x717
	.long	0x1d71
	.uleb128 0x26
	.long	.LASF342
	.byte	0x4
	.value	0x717
	.long	0x310
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0x26
	.long	.LASF746
	.byte	0x4
	.value	0x717
	.long	0x310
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.byte	0x8
	.byte	0x4
	.value	0x70e
	.long	0x1d99
	.uleb128 0xb
	.string	"f"
	.byte	0x4
	.value	0x711
	.long	0x12af
	.uleb128 0xb
	.string	"i"
	.byte	0x4
	.value	0x714
	.long	0x319
	.uleb128 0xb
	.string	"a"
	.byte	0x4
	.value	0x717
	.long	0x1d47
	.byte	0
	.uleb128 0x27
	.byte	0x8
	.byte	0x4
	.value	0x72c
	.long	0x1dcb
	.uleb128 0xb
	.string	"f"
	.byte	0x4
	.value	0x72d
	.long	0x224b
	.uleb128 0xb
	.string	"r"
	.byte	0x4
	.value	0x72e
	.long	0x2d
	.uleb128 0xb
	.string	"t"
	.byte	0x4
	.value	0x72f
	.long	0x123
	.uleb128 0xb
	.string	"i"
	.byte	0x4
	.value	0x730
	.long	0x1e3
	.byte	0
	.uleb128 0x28
	.long	.LASF747
	.value	0x1b0
	.byte	0xe
	.byte	0xae
	.long	0x224b
	.uleb128 0x6
	.string	"eh"
	.byte	0xe
	.byte	0xb0
	.long	0x2a09
	.byte	0
	.uleb128 0x8
	.long	.LASF748
	.byte	0xe
	.byte	0xb1
	.long	0x2a14
	.byte	0x8
	.uleb128 0x8
	.long	.LASF339
	.byte	0xe
	.byte	0xb2
	.long	0x2a1a
	.byte	0x10
	.uleb128 0x8
	.long	.LASF749
	.byte	0xe
	.byte	0xb3
	.long	0x2a20
	.byte	0x18
	.uleb128 0x8
	.long	.LASF750
	.byte	0xe
	.byte	0xb4
	.long	0x2a7b
	.byte	0x20
	.uleb128 0x8
	.long	.LASF736
	.byte	0xe
	.byte	0xb9
	.long	0x577
	.byte	0x28
	.uleb128 0x8
	.long	.LASF23
	.byte	0xe
	.byte	0xbc
	.long	0x123
	.byte	0x30
	.uleb128 0x8
	.long	.LASF751
	.byte	0xe
	.byte	0xbf
	.long	0x224b
	.byte	0x38
	.uleb128 0x8
	.long	.LASF752
	.byte	0xe
	.byte	0xc4
	.long	0x1e3
	.byte	0x40
	.uleb128 0x8
	.long	.LASF753
	.byte	0xe
	.byte	0xc9
	.long	0x1e3
	.byte	0x44
	.uleb128 0x8
	.long	.LASF754
	.byte	0xe
	.byte	0xce
	.long	0x1e3
	.byte	0x48
	.uleb128 0x8
	.long	.LASF755
	.byte	0xe
	.byte	0xd2
	.long	0x1e3
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF756
	.byte	0xe
	.byte	0xd6
	.long	0x2d
	.byte	0x50
	.uleb128 0x8
	.long	.LASF757
	.byte	0xe
	.byte	0xda
	.long	0x304
	.byte	0x58
	.uleb128 0x8
	.long	.LASF758
	.byte	0xe
	.byte	0xe0
	.long	0x2d
	.byte	0x78
	.uleb128 0x8
	.long	.LASF759
	.byte	0xe
	.byte	0xe3
	.long	0x2d
	.byte	0x80
	.uleb128 0x8
	.long	.LASF760
	.byte	0xe
	.byte	0xe7
	.long	0x577
	.byte	0x88
	.uleb128 0x8
	.long	.LASF761
	.byte	0xe
	.byte	0xeb
	.long	0x2a86
	.byte	0x90
	.uleb128 0x8
	.long	.LASF762
	.byte	0xe
	.byte	0xee
	.long	0x1e3
	.byte	0x98
	.uleb128 0x8
	.long	.LASF763
	.byte	0xe
	.byte	0xf3
	.long	0x123
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF764
	.byte	0xe
	.byte	0xf9
	.long	0x2d
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF765
	.byte	0xe
	.byte	0xfd
	.long	0x2d
	.byte	0xb0
	.uleb128 0x12
	.long	.LASF766
	.byte	0xe
	.value	0x102
	.long	0x2d
	.byte	0xb8
	.uleb128 0x12
	.long	.LASF767
	.byte	0xe
	.value	0x108
	.long	0x2d
	.byte	0xc0
	.uleb128 0x12
	.long	.LASF768
	.byte	0xe
	.value	0x10d
	.long	0x2d
	.byte	0xc8
	.uleb128 0x12
	.long	.LASF769
	.byte	0xe
	.value	0x111
	.long	0x2d
	.byte	0xd0
	.uleb128 0x12
	.long	.LASF770
	.byte	0xe
	.value	0x115
	.long	0x2d
	.byte	0xd8
	.uleb128 0x12
	.long	.LASF771
	.byte	0xe
	.value	0x118
	.long	0x123
	.byte	0xe0
	.uleb128 0x12
	.long	.LASF772
	.byte	0xe
	.value	0x11c
	.long	0x2d
	.byte	0xe8
	.uleb128 0x12
	.long	.LASF773
	.byte	0xe
	.value	0x11f
	.long	0x2d
	.byte	0xf0
	.uleb128 0x12
	.long	.LASF774
	.byte	0xe
	.value	0x125
	.long	0x2d
	.byte	0xf8
	.uleb128 0x29
	.long	.LASF775
	.byte	0xe
	.value	0x12a
	.long	0x2d
	.value	0x100
	.uleb128 0x29
	.long	.LASF776
	.byte	0xe
	.value	0x12f
	.long	0x319
	.value	0x108
	.uleb128 0x29
	.long	.LASF777
	.byte	0xe
	.value	0x134
	.long	0x123
	.value	0x110
	.uleb128 0x29
	.long	.LASF778
	.byte	0xe
	.value	0x13d
	.long	0x123
	.value	0x118
	.uleb128 0x29
	.long	.LASF779
	.byte	0xe
	.value	0x140
	.long	0x2d
	.value	0x120
	.uleb128 0x29
	.long	.LASF780
	.byte	0xe
	.value	0x144
	.long	0x2d
	.value	0x128
	.uleb128 0x29
	.long	.LASF781
	.byte	0xe
	.value	0x148
	.long	0x310
	.value	0x130
	.uleb128 0x29
	.long	.LASF782
	.byte	0xe
	.value	0x14e
	.long	0xe7a
	.value	0x138
	.uleb128 0x29
	.long	.LASF783
	.byte	0xe
	.value	0x151
	.long	0x2a91
	.value	0x140
	.uleb128 0x29
	.long	.LASF784
	.byte	0xe
	.value	0x154
	.long	0x1e3
	.value	0x148
	.uleb128 0x29
	.long	.LASF785
	.byte	0xe
	.value	0x157
	.long	0x1e3
	.value	0x14c
	.uleb128 0x29
	.long	.LASF786
	.byte	0xe
	.value	0x15d
	.long	0x1e3
	.value	0x150
	.uleb128 0x29
	.long	.LASF787
	.byte	0xe
	.value	0x161
	.long	0x28a5
	.value	0x158
	.uleb128 0x29
	.long	.LASF788
	.byte	0xe
	.value	0x164
	.long	0x1e3
	.value	0x160
	.uleb128 0x29
	.long	.LASF789
	.byte	0xe
	.value	0x165
	.long	0x1e3
	.value	0x164
	.uleb128 0x29
	.long	.LASF790
	.byte	0xe
	.value	0x167
	.long	0x317
	.value	0x168
	.uleb128 0x29
	.long	.LASF791
	.byte	0xe
	.value	0x168
	.long	0x123
	.value	0x170
	.uleb128 0x29
	.long	.LASF792
	.byte	0xe
	.value	0x16b
	.long	0x2d
	.value	0x178
	.uleb128 0x29
	.long	.LASF793
	.byte	0xe
	.value	0x16d
	.long	0x1e3
	.value	0x180
	.uleb128 0x29
	.long	.LASF794
	.byte	0xe
	.value	0x170
	.long	0x1e3
	.value	0x184
	.uleb128 0x29
	.long	.LASF795
	.byte	0xe
	.value	0x175
	.long	0x2a9c
	.value	0x188
	.uleb128 0x29
	.long	.LASF796
	.byte	0xe
	.value	0x177
	.long	0x1e3
	.value	0x190
	.uleb128 0x29
	.long	.LASF797
	.byte	0xe
	.value	0x179
	.long	0x1e3
	.value	0x194
	.uleb128 0x29
	.long	.LASF798
	.byte	0xe
	.value	0x17c
	.long	0x2aa7
	.value	0x198
	.uleb128 0x29
	.long	.LASF799
	.byte	0xe
	.value	0x182
	.long	0x2d
	.value	0x1a0
	.uleb128 0x2a
	.long	.LASF800
	.byte	0xe
	.value	0x188
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.value	0x1a8
	.uleb128 0x2a
	.long	.LASF801
	.byte	0xe
	.value	0x18c
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.value	0x1a8
	.uleb128 0x2a
	.long	.LASF802
	.byte	0xe
	.value	0x18f
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.value	0x1a8
	.uleb128 0x2a
	.long	.LASF803
	.byte	0xe
	.value	0x192
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.value	0x1a8
	.uleb128 0x2a
	.long	.LASF804
	.byte	0xe
	.value	0x195
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.value	0x1a8
	.uleb128 0x2a
	.long	.LASF805
	.byte	0xe
	.value	0x198
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.value	0x1a8
	.uleb128 0x2a
	.long	.LASF806
	.byte	0xe
	.value	0x19c
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.value	0x1a8
	.uleb128 0x2a
	.long	.LASF807
	.byte	0xe
	.value	0x19f
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.value	0x1a8
	.uleb128 0x2a
	.long	.LASF808
	.byte	0xe
	.value	0x1a3
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.value	0x1a8
	.uleb128 0x2a
	.long	.LASF809
	.byte	0xe
	.value	0x1a7
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.value	0x1a8
	.uleb128 0x2a
	.long	.LASF810
	.byte	0xe
	.value	0x1aa
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.value	0x1a8
	.uleb128 0x2a
	.long	.LASF811
	.byte	0xe
	.value	0x1ad
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.value	0x1a8
	.uleb128 0x2a
	.long	.LASF812
	.byte	0xe
	.value	0x1b2
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.value	0x1a8
	.uleb128 0x2a
	.long	.LASF813
	.byte	0xe
	.value	0x1b6
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.value	0x1a8
	.uleb128 0x2a
	.long	.LASF814
	.byte	0xe
	.value	0x1b9
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.value	0x1a8
	.uleb128 0x2a
	.long	.LASF815
	.byte	0xe
	.value	0x1bd
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.value	0x1a8
	.uleb128 0x2a
	.long	.LASF816
	.byte	0xe
	.value	0x1c1
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.value	0x1a8
	.uleb128 0x2a
	.long	.LASF817
	.byte	0xe
	.value	0x1c5
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.value	0x1a8
	.uleb128 0x2a
	.long	.LASF818
	.byte	0xe
	.value	0x1cb
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.value	0x1a8
	.uleb128 0x2a
	.long	.LASF819
	.byte	0xe
	.value	0x1d4
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.value	0x1a8
	.uleb128 0x2a
	.long	.LASF820
	.byte	0xe
	.value	0x1d7
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.value	0x1a8
	.uleb128 0x2a
	.long	.LASF821
	.byte	0xe
	.value	0x1da
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.value	0x1a8
	.uleb128 0x2a
	.long	.LASF822
	.byte	0xe
	.value	0x1dd
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.value	0x1a8
	.uleb128 0x2a
	.long	.LASF823
	.byte	0xe
	.value	0x1e0
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.value	0x1a8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1dcb
	.uleb128 0x11
	.long	.LASF824
	.byte	0xd0
	.byte	0x4
	.value	0x6dc
	.long	0x25d5
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x6de
	.long	0x151c
	.byte	0
	.uleb128 0x12
	.long	.LASF825
	.byte	0x4
	.value	0x6df
	.long	0x577
	.byte	0x18
	.uleb128 0x12
	.long	.LASF826
	.byte	0x4
	.value	0x6e0
	.long	0x1e3
	.byte	0x20
	.uleb128 0x24
	.string	"uid"
	.byte	0x4
	.value	0x6e1
	.long	0x310
	.byte	0x24
	.uleb128 0x12
	.long	.LASF341
	.byte	0x4
	.value	0x6e2
	.long	0x123
	.byte	0x28
	.uleb128 0x26
	.long	.LASF1
	.byte	0x4
	.value	0x6e3
	.long	0x310
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x30
	.uleb128 0x26
	.long	.LASF827
	.byte	0x4
	.value	0x6e5
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x30
	.uleb128 0x26
	.long	.LASF828
	.byte	0x4
	.value	0x6e6
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x30
	.uleb128 0x26
	.long	.LASF829
	.byte	0x4
	.value	0x6e7
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x30
	.uleb128 0x26
	.long	.LASF830
	.byte	0x4
	.value	0x6e8
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x30
	.uleb128 0x26
	.long	.LASF831
	.byte	0x4
	.value	0x6e9
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x30
	.uleb128 0x26
	.long	.LASF832
	.byte	0x4
	.value	0x6ea
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x30
	.uleb128 0x26
	.long	.LASF833
	.byte	0x4
	.value	0x6eb
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x30
	.uleb128 0x26
	.long	.LASF711
	.byte	0x4
	.value	0x6ec
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x30
	.uleb128 0x26
	.long	.LASF834
	.byte	0x4
	.value	0x6ee
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x30
	.uleb128 0x26
	.long	.LASF835
	.byte	0x4
	.value	0x6ef
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x30
	.uleb128 0x26
	.long	.LASF836
	.byte	0x4
	.value	0x6f0
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x30
	.uleb128 0x26
	.long	.LASF837
	.byte	0x4
	.value	0x6f1
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x30
	.uleb128 0x26
	.long	.LASF838
	.byte	0x4
	.value	0x6f2
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x30
	.uleb128 0x26
	.long	.LASF839
	.byte	0x4
	.value	0x6f3
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x30
	.uleb128 0x26
	.long	.LASF840
	.byte	0x4
	.value	0x6f4
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x30
	.uleb128 0x26
	.long	.LASF841
	.byte	0x4
	.value	0x6f5
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x30
	.uleb128 0x26
	.long	.LASF842
	.byte	0x4
	.value	0x6f7
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x30
	.uleb128 0x26
	.long	.LASF843
	.byte	0x4
	.value	0x6f8
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x30
	.uleb128 0x26
	.long	.LASF844
	.byte	0x4
	.value	0x6f9
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x30
	.uleb128 0x26
	.long	.LASF845
	.byte	0x4
	.value	0x6fa
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x30
	.uleb128 0x26
	.long	.LASF846
	.byte	0x4
	.value	0x6fb
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x30
	.uleb128 0x26
	.long	.LASF847
	.byte	0x4
	.value	0x6fc
	.long	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x30
	.uleb128 0x26
	.long	.LASF848
	.byte	0x4
	.value	0x6fd
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x30
	.uleb128 0x26
	.long	.LASF731
	.byte	0x4
	.value	0x6ff
	.long	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x34
	.uleb128 0x26
	.long	.LASF849
	.byte	0x4
	.value	0x700
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x34
	.uleb128 0x26
	.long	.LASF732
	.byte	0x4
	.value	0x701
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x34
	.uleb128 0x26
	.long	.LASF850
	.byte	0x4
	.value	0x702
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x34
	.uleb128 0x26
	.long	.LASF661
	.byte	0x4
	.value	0x705
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x34
	.uleb128 0x26
	.long	.LASF662
	.byte	0x4
	.value	0x706
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x34
	.uleb128 0x26
	.long	.LASF663
	.byte	0x4
	.value	0x707
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x34
	.uleb128 0x26
	.long	.LASF664
	.byte	0x4
	.value	0x708
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x34
	.uleb128 0x26
	.long	.LASF665
	.byte	0x4
	.value	0x709
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x34
	.uleb128 0x26
	.long	.LASF666
	.byte	0x4
	.value	0x70a
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x34
	.uleb128 0x26
	.long	.LASF667
	.byte	0x4
	.value	0x70b
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x34
	.uleb128 0x26
	.long	.LASF851
	.byte	0x4
	.value	0x70c
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x34
	.uleb128 0x24
	.string	"u1"
	.byte	0x4
	.value	0x718
	.long	0x1d71
	.byte	0x38
	.uleb128 0x12
	.long	.LASF722
	.byte	0x4
	.value	0x71a
	.long	0x123
	.byte	0x40
	.uleb128 0x12
	.long	.LASF736
	.byte	0x4
	.value	0x71b
	.long	0x123
	.byte	0x48
	.uleb128 0x12
	.long	.LASF742
	.byte	0x4
	.value	0x71c
	.long	0x123
	.byte	0x50
	.uleb128 0x12
	.long	.LASF852
	.byte	0x4
	.value	0x71d
	.long	0x123
	.byte	0x58
	.uleb128 0x12
	.long	.LASF853
	.byte	0x4
	.value	0x71e
	.long	0x123
	.byte	0x60
	.uleb128 0x12
	.long	.LASF854
	.byte	0x4
	.value	0x71f
	.long	0x123
	.byte	0x68
	.uleb128 0x12
	.long	.LASF716
	.byte	0x4
	.value	0x720
	.long	0x123
	.byte	0x70
	.uleb128 0x12
	.long	.LASF855
	.byte	0x4
	.value	0x721
	.long	0x123
	.byte	0x78
	.uleb128 0x12
	.long	.LASF856
	.byte	0x4
	.value	0x722
	.long	0x123
	.byte	0x80
	.uleb128 0x12
	.long	.LASF723
	.byte	0x4
	.value	0x723
	.long	0x123
	.byte	0x88
	.uleb128 0x24
	.string	"rtl"
	.byte	0x4
	.value	0x724
	.long	0x2d
	.byte	0x90
	.uleb128 0x12
	.long	.LASF857
	.byte	0x4
	.value	0x725
	.long	0x2d
	.byte	0x98
	.uleb128 0x24
	.string	"u2"
	.byte	0x4
	.value	0x731
	.long	0x1d99
	.byte	0xa0
	.uleb128 0x12
	.long	.LASF858
	.byte	0x4
	.value	0x734
	.long	0x123
	.byte	0xa8
	.uleb128 0x12
	.long	.LASF859
	.byte	0x4
	.value	0x738
	.long	0x123
	.byte	0xb0
	.uleb128 0x12
	.long	.LASF860
	.byte	0x4
	.value	0x73a
	.long	0x123
	.byte	0xb8
	.uleb128 0x12
	.long	.LASF861
	.byte	0x4
	.value	0x73b
	.long	0x319
	.byte	0xc0
	.uleb128 0x12
	.long	.LASF744
	.byte	0x4
	.value	0x73d
	.long	0x25da
	.byte	0xc8
	.byte	0
	.uleb128 0x22
	.long	.LASF862
	.uleb128 0x3
	.byte	0x8
	.long	0x25d5
	.uleb128 0xf
	.long	.LASF863
	.byte	0x4
	.byte	0x4
	.value	0x757
	.long	0x2726
	.uleb128 0x10
	.long	.LASF864
	.sleb128 0
	.uleb128 0x10
	.long	.LASF865
	.sleb128 1
	.uleb128 0x10
	.long	.LASF866
	.sleb128 2
	.uleb128 0x10
	.long	.LASF867
	.sleb128 3
	.uleb128 0x10
	.long	.LASF868
	.sleb128 4
	.uleb128 0x10
	.long	.LASF869
	.sleb128 5
	.uleb128 0x10
	.long	.LASF870
	.sleb128 6
	.uleb128 0x10
	.long	.LASF871
	.sleb128 7
	.uleb128 0x10
	.long	.LASF872
	.sleb128 8
	.uleb128 0x10
	.long	.LASF873
	.sleb128 9
	.uleb128 0x10
	.long	.LASF874
	.sleb128 10
	.uleb128 0x10
	.long	.LASF875
	.sleb128 11
	.uleb128 0x10
	.long	.LASF876
	.sleb128 12
	.uleb128 0x10
	.long	.LASF877
	.sleb128 13
	.uleb128 0x10
	.long	.LASF878
	.sleb128 14
	.uleb128 0x10
	.long	.LASF879
	.sleb128 15
	.uleb128 0x10
	.long	.LASF880
	.sleb128 16
	.uleb128 0x10
	.long	.LASF881
	.sleb128 17
	.uleb128 0x10
	.long	.LASF882
	.sleb128 18
	.uleb128 0x10
	.long	.LASF883
	.sleb128 19
	.uleb128 0x10
	.long	.LASF884
	.sleb128 20
	.uleb128 0x10
	.long	.LASF885
	.sleb128 21
	.uleb128 0x10
	.long	.LASF886
	.sleb128 22
	.uleb128 0x10
	.long	.LASF887
	.sleb128 23
	.uleb128 0x10
	.long	.LASF888
	.sleb128 24
	.uleb128 0x10
	.long	.LASF889
	.sleb128 25
	.uleb128 0x10
	.long	.LASF890
	.sleb128 26
	.uleb128 0x10
	.long	.LASF891
	.sleb128 27
	.uleb128 0x10
	.long	.LASF892
	.sleb128 28
	.uleb128 0x10
	.long	.LASF893
	.sleb128 29
	.uleb128 0x10
	.long	.LASF894
	.sleb128 30
	.uleb128 0x10
	.long	.LASF895
	.sleb128 31
	.uleb128 0x10
	.long	.LASF896
	.sleb128 32
	.uleb128 0x10
	.long	.LASF897
	.sleb128 33
	.uleb128 0x10
	.long	.LASF898
	.sleb128 34
	.uleb128 0x10
	.long	.LASF899
	.sleb128 35
	.uleb128 0x10
	.long	.LASF900
	.sleb128 36
	.uleb128 0x10
	.long	.LASF901
	.sleb128 37
	.uleb128 0x10
	.long	.LASF902
	.sleb128 38
	.uleb128 0x10
	.long	.LASF903
	.sleb128 39
	.uleb128 0x10
	.long	.LASF904
	.sleb128 40
	.uleb128 0x10
	.long	.LASF905
	.sleb128 41
	.uleb128 0x10
	.long	.LASF906
	.sleb128 42
	.uleb128 0x10
	.long	.LASF907
	.sleb128 43
	.uleb128 0x10
	.long	.LASF908
	.sleb128 44
	.uleb128 0x10
	.long	.LASF909
	.sleb128 45
	.uleb128 0x10
	.long	.LASF910
	.sleb128 46
	.uleb128 0x10
	.long	.LASF911
	.sleb128 47
	.uleb128 0x10
	.long	.LASF912
	.sleb128 48
	.uleb128 0x10
	.long	.LASF913
	.sleb128 49
	.uleb128 0x10
	.long	.LASF914
	.sleb128 50
	.uleb128 0x10
	.long	.LASF915
	.sleb128 51
	.byte	0
	.uleb128 0xf
	.long	.LASF916
	.byte	0x4
	.byte	0x4
	.value	0x7e4
	.long	0x277c
	.uleb128 0x10
	.long	.LASF917
	.sleb128 0
	.uleb128 0x10
	.long	.LASF918
	.sleb128 1
	.uleb128 0x10
	.long	.LASF919
	.sleb128 2
	.uleb128 0x10
	.long	.LASF920
	.sleb128 3
	.uleb128 0x10
	.long	.LASF921
	.sleb128 4
	.uleb128 0x10
	.long	.LASF922
	.sleb128 5
	.uleb128 0x10
	.long	.LASF923
	.sleb128 6
	.uleb128 0x10
	.long	.LASF924
	.sleb128 7
	.uleb128 0x10
	.long	.LASF925
	.sleb128 8
	.uleb128 0x10
	.long	.LASF926
	.sleb128 9
	.uleb128 0x10
	.long	.LASF927
	.sleb128 10
	.uleb128 0x10
	.long	.LASF928
	.sleb128 11
	.byte	0
	.uleb128 0x11
	.long	.LASF929
	.byte	0x20
	.byte	0x4
	.value	0x885
	.long	0x27e5
	.uleb128 0x12
	.long	.LASF736
	.byte	0x4
	.value	0x889
	.long	0x27e5
	.byte	0
	.uleb128 0x12
	.long	.LASF930
	.byte	0x4
	.value	0x88b
	.long	0x1de
	.byte	0x8
	.uleb128 0x12
	.long	.LASF931
	.byte	0x4
	.value	0x88e
	.long	0x1de
	.byte	0xc
	.uleb128 0x12
	.long	.LASF932
	.byte	0x4
	.value	0x896
	.long	0x27ea
	.byte	0x10
	.uleb128 0x12
	.long	.LASF933
	.byte	0x4
	.value	0x899
	.long	0x27ea
	.byte	0x11
	.uleb128 0x12
	.long	.LASF934
	.byte	0x4
	.value	0x89e
	.long	0x27ea
	.byte	0x12
	.uleb128 0x12
	.long	.LASF935
	.byte	0x4
	.value	0x8ad
	.long	0x2825
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.long	0x577
	.uleb128 0xc
	.long	0x27ef
	.uleb128 0xe
	.byte	0x1
	.byte	0x2
	.long	.LASF936
	.uleb128 0x19
	.long	0x123
	.long	0x2819
	.uleb128 0x1a
	.long	0x2819
	.uleb128 0x1a
	.long	0x123
	.uleb128 0x1a
	.long	0x123
	.uleb128 0x1a
	.long	0x1e3
	.uleb128 0x1a
	.long	0x281f
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x123
	.uleb128 0x3
	.byte	0x8
	.long	0x27ef
	.uleb128 0xc
	.long	0x282a
	.uleb128 0x3
	.byte	0x8
	.long	0x27f6
	.uleb128 0xf
	.long	.LASF937
	.byte	0x4
	.byte	0x4
	.value	0x972
	.long	0x2868
	.uleb128 0x10
	.long	.LASF938
	.sleb128 0
	.uleb128 0x10
	.long	.LASF939
	.sleb128 1
	.uleb128 0x10
	.long	.LASF940
	.sleb128 2
	.uleb128 0x10
	.long	.LASF941
	.sleb128 3
	.uleb128 0x10
	.long	.LASF942
	.sleb128 4
	.uleb128 0x10
	.long	.LASF943
	.sleb128 5
	.uleb128 0x10
	.long	.LASF944
	.sleb128 6
	.byte	0
	.uleb128 0x4
	.long	.LASF945
	.byte	0x18
	.byte	0xe
	.byte	0x16
	.long	0x28a5
	.uleb128 0x8
	.long	.LASF946
	.byte	0xe
	.byte	0x18
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF947
	.byte	0xe
	.byte	0x19
	.long	0x648
	.byte	0x8
	.uleb128 0x8
	.long	.LASF948
	.byte	0xe
	.byte	0x1a
	.long	0x1e3
	.byte	0xc
	.uleb128 0x8
	.long	.LASF949
	.byte	0xe
	.byte	0x1b
	.long	0x28a5
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2868
	.uleb128 0x4
	.long	.LASF950
	.byte	0x20
	.byte	0xe
	.byte	0x23
	.long	0x28e8
	.uleb128 0x8
	.long	.LASF951
	.byte	0xe
	.byte	0x26
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF952
	.byte	0xe
	.byte	0x26
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF953
	.byte	0xe
	.byte	0x27
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF949
	.byte	0xe
	.byte	0x28
	.long	0x28e8
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x28ab
	.uleb128 0x3
	.byte	0x8
	.long	0x1886
	.uleb128 0x4
	.long	.LASF954
	.byte	0x58
	.byte	0xe
	.byte	0x35
	.long	0x299d
	.uleb128 0x8
	.long	.LASF955
	.byte	0xe
	.byte	0x39
	.long	0x1e3
	.byte	0
	.uleb128 0x8
	.long	.LASF956
	.byte	0xe
	.byte	0x3c
	.long	0x1e3
	.byte	0x4
	.uleb128 0x8
	.long	.LASF957
	.byte	0xe
	.byte	0x43
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF958
	.byte	0xe
	.byte	0x44
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF953
	.byte	0xe
	.byte	0x49
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF950
	.byte	0xe
	.byte	0x4f
	.long	0x28e8
	.byte	0x20
	.uleb128 0x8
	.long	.LASF959
	.byte	0xe
	.byte	0x53
	.long	0x1e3
	.byte	0x28
	.uleb128 0x8
	.long	.LASF960
	.byte	0xe
	.byte	0x57
	.long	0x1e3
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF961
	.byte	0xe
	.byte	0x58
	.long	0x577
	.byte	0x30
	.uleb128 0x8
	.long	.LASF962
	.byte	0xe
	.byte	0x5e
	.long	0x1e3
	.byte	0x38
	.uleb128 0x8
	.long	.LASF963
	.byte	0xe
	.byte	0x63
	.long	0x299d
	.byte	0x40
	.uleb128 0x8
	.long	.LASF964
	.byte	0xe
	.byte	0x67
	.long	0x2819
	.byte	0x48
	.uleb128 0x8
	.long	.LASF965
	.byte	0xe
	.byte	0x6b
	.long	0xe7a
	.byte	0x50
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x332
	.uleb128 0x4
	.long	.LASF966
	.byte	0x30
	.byte	0xe
	.byte	0x77
	.long	0x2a04
	.uleb128 0x8
	.long	.LASF967
	.byte	0xe
	.byte	0x7b
	.long	0x1e3
	.byte	0
	.uleb128 0x8
	.long	.LASF968
	.byte	0xe
	.byte	0x8c
	.long	0x1e3
	.byte	0x4
	.uleb128 0x8
	.long	.LASF969
	.byte	0xe
	.byte	0x92
	.long	0x1e3
	.byte	0x8
	.uleb128 0x8
	.long	.LASF970
	.byte	0xe
	.byte	0x97
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF971
	.byte	0xe
	.byte	0x9a
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF972
	.byte	0xe
	.byte	0x9d
	.long	0x2d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF973
	.byte	0xe
	.byte	0xa0
	.long	0x2d
	.byte	0x28
	.byte	0
	.uleb128 0x22
	.long	.LASF974
	.uleb128 0x3
	.byte	0x8
	.long	0x2a04
	.uleb128 0x22
	.long	.LASF975
	.uleb128 0x3
	.byte	0x8
	.long	0x2a0f
	.uleb128 0x3
	.byte	0x8
	.long	0x29a3
	.uleb128 0x3
	.byte	0x8
	.long	0x28f4
	.uleb128 0x4
	.long	.LASF976
	.byte	0x30
	.byte	0x1
	.byte	0x4e
	.long	0x2a7b
	.uleb128 0x8
	.long	.LASF977
	.byte	0x1
	.byte	0x58
	.long	0x38db
	.byte	0
	.uleb128 0x8
	.long	.LASF978
	.byte	0x1
	.byte	0x59
	.long	0x396a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF979
	.byte	0x1
	.byte	0x5c
	.long	0x3970
	.byte	0x10
	.uleb128 0x8
	.long	.LASF980
	.byte	0x1
	.byte	0x5c
	.long	0x3970
	.byte	0x18
	.uleb128 0x8
	.long	.LASF981
	.byte	0x1
	.byte	0x60
	.long	0x319
	.byte	0x20
	.uleb128 0x8
	.long	.LASF982
	.byte	0x1
	.byte	0x64
	.long	0x2d
	.byte	0x28
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2a26
	.uleb128 0x22
	.long	.LASF983
	.uleb128 0x3
	.byte	0x8
	.long	0x2a81
	.uleb128 0x22
	.long	.LASF984
	.uleb128 0x3
	.byte	0x8
	.long	0x2a8c
	.uleb128 0x22
	.long	.LASF985
	.uleb128 0x3
	.byte	0x8
	.long	0x2a97
	.uleb128 0x22
	.long	.LASF986
	.uleb128 0x3
	.byte	0x8
	.long	0x2aa2
	.uleb128 0x1c
	.long	.LASF987
	.byte	0x4
	.byte	0xf
	.byte	0x34
	.long	0x2ad8
	.uleb128 0x10
	.long	.LASF988
	.sleb128 0
	.uleb128 0x10
	.long	.LASF989
	.sleb128 1
	.uleb128 0x10
	.long	.LASF990
	.sleb128 2
	.uleb128 0x10
	.long	.LASF991
	.sleb128 3
	.uleb128 0x10
	.long	.LASF992
	.sleb128 4
	.byte	0
	.uleb128 0x4
	.long	.LASF993
	.byte	0x10
	.byte	0x10
	.byte	0x24
	.long	0x2afd
	.uleb128 0x6
	.string	"rtx"
	.byte	0x10
	.byte	0x32
	.long	0x38
	.byte	0
	.uleb128 0x6
	.string	"age"
	.byte	0x10
	.byte	0x36
	.long	0x310
	.byte	0x8
	.byte	0
	.uleb128 0x1f
	.long	.LASF994
	.byte	0x10
	.byte	0x10
	.byte	0x3a
	.long	0x2be2
	.uleb128 0x21
	.string	"c"
	.byte	0x10
	.byte	0x3b
	.long	0x551
	.uleb128 0x21
	.string	"uc"
	.byte	0x10
	.byte	0x3c
	.long	0x2be2
	.uleb128 0x21
	.string	"s"
	.byte	0x10
	.byte	0x3d
	.long	0x2bf2
	.uleb128 0x21
	.string	"us"
	.byte	0x10
	.byte	0x3e
	.long	0x2c02
	.uleb128 0x21
	.string	"i"
	.byte	0x10
	.byte	0x3f
	.long	0x2c12
	.uleb128 0x21
	.string	"u"
	.byte	0x10
	.byte	0x40
	.long	0x2c22
	.uleb128 0x21
	.string	"l"
	.byte	0x10
	.byte	0x41
	.long	0x2c32
	.uleb128 0x21
	.string	"ul"
	.byte	0x10
	.byte	0x42
	.long	0x2c42
	.uleb128 0x20
	.long	.LASF995
	.byte	0x10
	.byte	0x43
	.long	0x2c32
	.uleb128 0x20
	.long	.LASF996
	.byte	0x10
	.byte	0x44
	.long	0x2c42
	.uleb128 0x20
	.long	.LASF997
	.byte	0x10
	.byte	0x45
	.long	0x2c52
	.uleb128 0x20
	.long	.LASF998
	.byte	0x10
	.byte	0x46
	.long	0x2c62
	.uleb128 0x21
	.string	"rtx"
	.byte	0x10
	.byte	0x47
	.long	0x2c72
	.uleb128 0x20
	.long	.LASF10
	.byte	0x10
	.byte	0x48
	.long	0x2c82
	.uleb128 0x20
	.long	.LASF15
	.byte	0x10
	.byte	0x49
	.long	0x2c92
	.uleb128 0x20
	.long	.LASF999
	.byte	0x10
	.byte	0x4a
	.long	0x2ca2
	.uleb128 0x20
	.long	.LASF1000
	.byte	0x10
	.byte	0x4b
	.long	0x2cb2
	.uleb128 0x21
	.string	"reg"
	.byte	0x10
	.byte	0x4c
	.long	0x2ccd
	.uleb128 0x20
	.long	.LASF1001
	.byte	0x10
	.byte	0x4d
	.long	0x2d74
	.uleb128 0x21
	.string	"bb"
	.byte	0x10
	.byte	0x4e
	.long	0x2d84
	.uleb128 0x21
	.string	"te"
	.byte	0x10
	.byte	0x4f
	.long	0x2d94
	.byte	0
	.uleb128 0x15
	.long	0x332
	.long	0x2bf2
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x347
	.long	0x2c02
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x339
	.long	0x2c12
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x1e3
	.long	0x2c22
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x310
	.long	0x2c32
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x319
	.long	0x2c42
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x32b
	.long	0x2c52
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x317
	.long	0x2c62
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x364
	.long	0x2c72
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x38
	.long	0x2c82
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0xf8
	.long	0x2c92
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x12e
	.long	0x2ca2
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0xd89
	.long	0x2cb2
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x2cc2
	.long	0x2cc2
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2cc8
	.uleb128 0x22
	.long	.LASF1002
	.uleb128 0x15
	.long	0x2cdd
	.long	0x2cdd
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2ce3
	.uleb128 0x4
	.long	.LASF1003
	.byte	0x2c
	.byte	0x11
	.byte	0x2d
	.long	0x2d74
	.uleb128 0x8
	.long	.LASF1004
	.byte	0x11
	.byte	0x2f
	.long	0x1e3
	.byte	0
	.uleb128 0x8
	.long	.LASF1005
	.byte	0x11
	.byte	0x30
	.long	0x1e3
	.byte	0x4
	.uleb128 0x8
	.long	.LASF1006
	.byte	0x11
	.byte	0x31
	.long	0x1e3
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1007
	.byte	0x11
	.byte	0x34
	.long	0x1e3
	.byte	0xc
	.uleb128 0x8
	.long	.LASF1008
	.byte	0x11
	.byte	0x37
	.long	0x1e3
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1009
	.byte	0x11
	.byte	0x38
	.long	0x1e3
	.byte	0x14
	.uleb128 0x8
	.long	.LASF1010
	.byte	0x11
	.byte	0x39
	.long	0x1e3
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1011
	.byte	0x11
	.byte	0x3a
	.long	0x1e3
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF1012
	.byte	0x11
	.byte	0x3b
	.long	0x1e3
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1013
	.byte	0x11
	.byte	0x3c
	.long	0x1e3
	.byte	0x24
	.uleb128 0x8
	.long	.LASF1014
	.byte	0x11
	.byte	0x3d
	.long	0x36a
	.byte	0x28
	.byte	0
	.uleb128 0x15
	.long	0x2ad8
	.long	0x2d84
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0xd94
	.long	0x2d94
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x2da4
	.long	0x2da4
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2daa
	.uleb128 0x22
	.long	.LASF1015
	.uleb128 0x7
	.long	.LASF1016
	.byte	0x10
	.byte	0x50
	.long	0x2afd
	.uleb128 0x4
	.long	.LASF1017
	.byte	0x30
	.byte	0x10
	.byte	0x53
	.long	0x2e03
	.uleb128 0x8
	.long	.LASF1018
	.byte	0x10
	.byte	0x54
	.long	0x320
	.byte	0
	.uleb128 0x8
	.long	.LASF1019
	.byte	0x10
	.byte	0x55
	.long	0x320
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1020
	.byte	0x10
	.byte	0x57
	.long	0x320
	.byte	0x10
	.uleb128 0x8
	.long	.LASF736
	.byte	0x10
	.byte	0x58
	.long	0x577
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1021
	.byte	0x10
	.byte	0x59
	.long	0x2daf
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF1022
	.byte	0x10
	.byte	0x5a
	.long	0x2e0e
	.uleb128 0x3
	.byte	0x8
	.long	0x2dba
	.uleb128 0x7
	.long	.LASF1023
	.byte	0x12
	.byte	0x2a
	.long	0x310
	.uleb128 0x7
	.long	.LASF1024
	.byte	0x12
	.byte	0x2f
	.long	0x2e2a
	.uleb128 0x3
	.byte	0x8
	.long	0x2e30
	.uleb128 0x19
	.long	0x2e14
	.long	0x2e3f
	.uleb128 0x1a
	.long	0x641
	.byte	0
	.uleb128 0x7
	.long	.LASF1025
	.byte	0x12
	.byte	0x36
	.long	0x627
	.uleb128 0x7
	.long	.LASF1026
	.byte	0x12
	.byte	0x3a
	.long	0x2e55
	.uleb128 0x3
	.byte	0x8
	.long	0x2e5b
	.uleb128 0x25
	.long	0x2e66
	.uleb128 0x1a
	.long	0x317
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x317
	.uleb128 0x4
	.long	.LASF1027
	.byte	0x48
	.byte	0x12
	.byte	0x47
	.long	0x2ef1
	.uleb128 0x8
	.long	.LASF1028
	.byte	0x12
	.byte	0x4a
	.long	0x2e1f
	.byte	0
	.uleb128 0x8
	.long	.LASF1029
	.byte	0x12
	.byte	0x4d
	.long	0x2e3f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1030
	.byte	0x12
	.byte	0x50
	.long	0x2e4a
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1031
	.byte	0x12
	.byte	0x53
	.long	0x2e66
	.byte	0x18
	.uleb128 0x8
	.long	.LASF341
	.byte	0x12
	.byte	0x56
	.long	0x320
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1032
	.byte	0x12
	.byte	0x59
	.long	0x320
	.byte	0x28
	.uleb128 0x8
	.long	.LASF1033
	.byte	0x12
	.byte	0x5c
	.long	0x320
	.byte	0x30
	.uleb128 0x8
	.long	.LASF1034
	.byte	0x12
	.byte	0x60
	.long	0x310
	.byte	0x38
	.uleb128 0x8
	.long	.LASF1035
	.byte	0x12
	.byte	0x64
	.long	0x310
	.byte	0x3c
	.uleb128 0x8
	.long	.LASF1036
	.byte	0x12
	.byte	0x68
	.long	0x1e3
	.byte	0x40
	.byte	0
	.uleb128 0x7
	.long	.LASF1037
	.byte	0x12
	.byte	0x6b
	.long	0x2efc
	.uleb128 0x3
	.byte	0x8
	.long	0x2e6c
	.uleb128 0x1c
	.long	.LASF1038
	.byte	0x4
	.byte	0x12
	.byte	0x6e
	.long	0x2f1b
	.uleb128 0x10
	.long	.LASF1039
	.sleb128 0
	.uleb128 0x10
	.long	.LASF1040
	.sleb128 1
	.byte	0
	.uleb128 0x7
	.long	.LASF1041
	.byte	0x13
	.byte	0x19
	.long	0x2f26
	.uleb128 0x3
	.byte	0x8
	.long	0x2f2c
	.uleb128 0x25
	.long	0x2f41
	.uleb128 0x1a
	.long	0x2f41
	.uleb128 0x1a
	.long	0x123
	.uleb128 0x1a
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x371
	.uleb128 0x4
	.long	.LASF1042
	.byte	0x58
	.byte	0x13
	.byte	0x1e
	.long	0x2fd8
	.uleb128 0x8
	.long	.LASF1043
	.byte	0x13
	.byte	0x20
	.long	0x3020
	.byte	0
	.uleb128 0x8
	.long	.LASF1044
	.byte	0x13
	.byte	0x25
	.long	0x3035
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1045
	.byte	0x13
	.byte	0x26
	.long	0x304a
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1046
	.byte	0x13
	.byte	0x27
	.long	0x3064
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1047
	.byte	0x13
	.byte	0x29
	.long	0x304a
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1048
	.byte	0x13
	.byte	0x2a
	.long	0x307e
	.byte	0x28
	.uleb128 0x8
	.long	.LASF1049
	.byte	0x13
	.byte	0x2b
	.long	0x30ac
	.byte	0x30
	.uleb128 0x8
	.long	.LASF1050
	.byte	0x13
	.byte	0x30
	.long	0x304a
	.byte	0x38
	.uleb128 0x8
	.long	.LASF1051
	.byte	0x13
	.byte	0x31
	.long	0x304a
	.byte	0x40
	.uleb128 0x8
	.long	.LASF1052
	.byte	0x13
	.byte	0x32
	.long	0x30bd
	.byte	0x48
	.uleb128 0x8
	.long	.LASF1053
	.byte	0x13
	.byte	0x33
	.long	0x30dc
	.byte	0x50
	.byte	0
	.uleb128 0x19
	.long	0x12e
	.long	0x2ffb
	.uleb128 0x1a
	.long	0x2ffb
	.uleb128 0x1a
	.long	0x621
	.uleb128 0x1a
	.long	0x3001
	.uleb128 0x1a
	.long	0x317
	.uleb128 0x1a
	.long	0x317
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x12e
	.uleb128 0x3
	.byte	0x8
	.long	0x3007
	.uleb128 0x19
	.long	0x12e
	.long	0x3020
	.uleb128 0x1a
	.long	0x2ffb
	.uleb128 0x1a
	.long	0x621
	.uleb128 0x1a
	.long	0x317
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2fd8
	.uleb128 0x19
	.long	0x1e3
	.long	0x3035
	.uleb128 0x1a
	.long	0x2ffb
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3026
	.uleb128 0x19
	.long	0x1e3
	.long	0x304a
	.uleb128 0x1a
	.long	0x12e
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x303b
	.uleb128 0x19
	.long	0x12e
	.long	0x3064
	.uleb128 0x1a
	.long	0x317
	.uleb128 0x1a
	.long	0x12e
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3050
	.uleb128 0x19
	.long	0x1e3
	.long	0x307e
	.uleb128 0x1a
	.long	0x12e
	.uleb128 0x1a
	.long	0x12e
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x306a
	.uleb128 0x19
	.long	0x12e
	.long	0x30ac
	.uleb128 0x1a
	.long	0x12e
	.uleb128 0x1a
	.long	0x12e
	.uleb128 0x1a
	.long	0x12e
	.uleb128 0x1a
	.long	0x317
	.uleb128 0x1a
	.long	0x621
	.uleb128 0x1a
	.long	0x317
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3084
	.uleb128 0x25
	.long	0x30bd
	.uleb128 0x1a
	.long	0x12e
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x30b2
	.uleb128 0x19
	.long	0x12e
	.long	0x30dc
	.uleb128 0x1a
	.long	0x12e
	.uleb128 0x1a
	.long	0x12e
	.uleb128 0x1a
	.long	0x12e
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x30c3
	.uleb128 0x4
	.long	.LASF1054
	.byte	0x10
	.byte	0x13
	.byte	0x3a
	.long	0x3107
	.uleb128 0x8
	.long	.LASF1055
	.byte	0x13
	.byte	0x3e
	.long	0x311b
	.byte	0
	.uleb128 0x8
	.long	.LASF1056
	.byte	0x13
	.byte	0x41
	.long	0x3130
	.byte	0x8
	.byte	0
	.uleb128 0x19
	.long	0x1e3
	.long	0x311b
	.uleb128 0x1a
	.long	0x317
	.uleb128 0x1a
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3107
	.uleb128 0x19
	.long	0x1e3
	.long	0x3130
	.uleb128 0x1a
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3121
	.uleb128 0x28
	.long	.LASF1057
	.value	0x100
	.byte	0x13
	.byte	0x46
	.long	0x3240
	.uleb128 0x8
	.long	.LASF736
	.byte	0x13
	.byte	0x49
	.long	0x577
	.byte	0
	.uleb128 0x8
	.long	.LASF1058
	.byte	0x13
	.byte	0x4d
	.long	0x320
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1059
	.byte	0x13
	.byte	0x51
	.long	0x3241
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1060
	.byte	0x13
	.byte	0x5b
	.long	0x3261
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1061
	.byte	0x13
	.byte	0x64
	.long	0x3241
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1062
	.byte	0x13
	.byte	0x6c
	.long	0x3276
	.byte	0x28
	.uleb128 0x8
	.long	.LASF1063
	.byte	0x13
	.byte	0x6f
	.long	0x3241
	.byte	0x30
	.uleb128 0x8
	.long	.LASF1064
	.byte	0x13
	.byte	0x72
	.long	0x3241
	.byte	0x38
	.uleb128 0x8
	.long	.LASF1065
	.byte	0x13
	.byte	0x76
	.long	0x328b
	.byte	0x40
	.uleb128 0x8
	.long	.LASF1066
	.byte	0x13
	.byte	0x7b
	.long	0x32a0
	.byte	0x48
	.uleb128 0x8
	.long	.LASF1067
	.byte	0x13
	.byte	0x84
	.long	0x32ba
	.byte	0x50
	.uleb128 0x8
	.long	.LASF1068
	.byte	0x13
	.byte	0x87
	.long	0x3130
	.byte	0x58
	.uleb128 0x8
	.long	.LASF1069
	.byte	0x13
	.byte	0x8a
	.long	0x27ef
	.byte	0x60
	.uleb128 0x8
	.long	.LASF1070
	.byte	0x13
	.byte	0x8e
	.long	0x3241
	.byte	0x68
	.uleb128 0x8
	.long	.LASF1071
	.byte	0x13
	.byte	0x92
	.long	0x2f1b
	.byte	0x70
	.uleb128 0x8
	.long	.LASF1072
	.byte	0x13
	.byte	0x96
	.long	0x2f1b
	.byte	0x78
	.uleb128 0x8
	.long	.LASF1073
	.byte	0x13
	.byte	0x97
	.long	0x2f1b
	.byte	0x80
	.uleb128 0x8
	.long	.LASF1074
	.byte	0x13
	.byte	0x98
	.long	0x2f1b
	.byte	0x88
	.uleb128 0x8
	.long	.LASF1075
	.byte	0x13
	.byte	0x9d
	.long	0x32cb
	.byte	0x90
	.uleb128 0x8
	.long	.LASF1076
	.byte	0x13
	.byte	0x9f
	.long	0x2f47
	.byte	0x98
	.uleb128 0x8
	.long	.LASF1077
	.byte	0x13
	.byte	0xa1
	.long	0x30e2
	.byte	0xf0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x3
	.byte	0x8
	.long	0x3240
	.uleb128 0x19
	.long	0x1e3
	.long	0x325b
	.uleb128 0x1a
	.long	0x1e3
	.uleb128 0x1a
	.long	0x325b
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x364
	.uleb128 0x3
	.byte	0x8
	.long	0x3247
	.uleb128 0x19
	.long	0x577
	.long	0x3276
	.uleb128 0x1a
	.long	0x577
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3267
	.uleb128 0x19
	.long	0x319
	.long	0x328b
	.uleb128 0x1a
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x327c
	.uleb128 0x19
	.long	0x123
	.long	0x32a0
	.uleb128 0x1a
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3291
	.uleb128 0x19
	.long	0x1e3
	.long	0x32ba
	.uleb128 0x1a
	.long	0x2d
	.uleb128 0x1a
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x32a6
	.uleb128 0x25
	.long	0x32cb
	.uleb128 0x1a
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x32c0
	.uleb128 0x4
	.long	.LASF1078
	.byte	0xa0
	.byte	0x14
	.byte	0x18
	.long	0x33ce
	.uleb128 0x8
	.long	.LASF1062
	.byte	0x14
	.byte	0x1c
	.long	0x33d9
	.byte	0
	.uleb128 0x8
	.long	.LASF1063
	.byte	0x14
	.byte	0x1f
	.long	0x33d9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1079
	.byte	0x14
	.byte	0x22
	.long	0x33ef
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1080
	.byte	0x14
	.byte	0x25
	.long	0x33ef
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1081
	.byte	0x14
	.byte	0x29
	.long	0x33ef
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1082
	.byte	0x14
	.byte	0x2d
	.long	0x3400
	.byte	0x28
	.uleb128 0x8
	.long	.LASF1083
	.byte	0x14
	.byte	0x31
	.long	0x3416
	.byte	0x30
	.uleb128 0x8
	.long	.LASF1084
	.byte	0x14
	.byte	0x34
	.long	0x3416
	.byte	0x38
	.uleb128 0x8
	.long	.LASF1085
	.byte	0x14
	.byte	0x3b
	.long	0x342b
	.byte	0x40
	.uleb128 0x8
	.long	.LASF1086
	.byte	0x14
	.byte	0x3e
	.long	0x33ef
	.byte	0x48
	.uleb128 0x8
	.long	.LASF1087
	.byte	0x14
	.byte	0x43
	.long	0x33ef
	.byte	0x50
	.uleb128 0x8
	.long	.LASF1088
	.byte	0x14
	.byte	0x47
	.long	0x3400
	.byte	0x58
	.uleb128 0x8
	.long	.LASF1089
	.byte	0x14
	.byte	0x4a
	.long	0x3241
	.byte	0x60
	.uleb128 0x8
	.long	.LASF1090
	.byte	0x14
	.byte	0x4d
	.long	0x343c
	.byte	0x68
	.uleb128 0x8
	.long	.LASF1091
	.byte	0x14
	.byte	0x50
	.long	0x3400
	.byte	0x70
	.uleb128 0x8
	.long	.LASF1092
	.byte	0x14
	.byte	0x56
	.long	0x343c
	.byte	0x78
	.uleb128 0x8
	.long	.LASF1093
	.byte	0x14
	.byte	0x5a
	.long	0x343c
	.byte	0x80
	.uleb128 0x8
	.long	.LASF1094
	.byte	0x14
	.byte	0x5e
	.long	0x343c
	.byte	0x88
	.uleb128 0x8
	.long	.LASF1095
	.byte	0x14
	.byte	0x63
	.long	0x343c
	.byte	0x90
	.uleb128 0x8
	.long	.LASF1096
	.byte	0x14
	.byte	0x67
	.long	0x344d
	.byte	0x98
	.byte	0
	.uleb128 0x25
	.long	0x33d9
	.uleb128 0x1a
	.long	0x577
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x33ce
	.uleb128 0x25
	.long	0x33ef
	.uleb128 0x1a
	.long	0x310
	.uleb128 0x1a
	.long	0x577
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x33df
	.uleb128 0x25
	.long	0x3400
	.uleb128 0x1a
	.long	0x310
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x33f5
	.uleb128 0x25
	.long	0x3416
	.uleb128 0x1a
	.long	0x310
	.uleb128 0x1a
	.long	0x310
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3406
	.uleb128 0x19
	.long	0x27ef
	.long	0x342b
	.uleb128 0x1a
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x341c
	.uleb128 0x25
	.long	0x343c
	.uleb128 0x1a
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3431
	.uleb128 0x25
	.long	0x344d
	.uleb128 0x1a
	.long	0x2d
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3442
	.uleb128 0x4
	.long	.LASF1097
	.byte	0x20
	.byte	0x15
	.byte	0x39
	.long	0x348c
	.uleb128 0x6
	.string	"hi"
	.byte	0x15
	.byte	0x3b
	.long	0x577
	.byte	0
	.uleb128 0x6
	.string	"si"
	.byte	0x15
	.byte	0x3c
	.long	0x577
	.byte	0x8
	.uleb128 0x6
	.string	"di"
	.byte	0x15
	.byte	0x3d
	.long	0x577
	.byte	0x10
	.uleb128 0x6
	.string	"ti"
	.byte	0x15
	.byte	0x3e
	.long	0x577
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.long	.LASF1098
	.byte	0xa8
	.byte	0x15
	.byte	0x32
	.long	0x354d
	.uleb128 0x8
	.long	.LASF1099
	.byte	0x15
	.byte	0x35
	.long	0x577
	.byte	0
	.uleb128 0x8
	.long	.LASF1100
	.byte	0x15
	.byte	0x35
	.long	0x577
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1101
	.byte	0x15
	.byte	0x38
	.long	0x577
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1102
	.byte	0x15
	.byte	0x3f
	.long	0x3453
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1103
	.byte	0x15
	.byte	0x3f
	.long	0x3453
	.byte	0x38
	.uleb128 0x8
	.long	.LASF1104
	.byte	0x15
	.byte	0x46
	.long	0x3566
	.byte	0x58
	.uleb128 0x8
	.long	.LASF1105
	.byte	0x15
	.byte	0x49
	.long	0x357c
	.byte	0x60
	.uleb128 0x8
	.long	.LASF1106
	.byte	0x15
	.byte	0x4c
	.long	0x358d
	.byte	0x68
	.uleb128 0x8
	.long	.LASF1107
	.byte	0x15
	.byte	0x4f
	.long	0x358d
	.byte	0x70
	.uleb128 0x8
	.long	.LASF1108
	.byte	0x15
	.byte	0x52
	.long	0x357c
	.byte	0x78
	.uleb128 0x8
	.long	.LASF1109
	.byte	0x15
	.byte	0x56
	.long	0x35a3
	.byte	0x80
	.uleb128 0x8
	.long	.LASF1110
	.byte	0x15
	.byte	0x59
	.long	0x3241
	.byte	0x88
	.uleb128 0x8
	.long	.LASF1111
	.byte	0x15
	.byte	0x5c
	.long	0x3241
	.byte	0x90
	.uleb128 0x8
	.long	.LASF1112
	.byte	0x15
	.byte	0x5f
	.long	0x35b9
	.byte	0x98
	.uleb128 0x8
	.long	.LASF1113
	.byte	0x15
	.byte	0x62
	.long	0x35b9
	.byte	0xa0
	.byte	0
	.uleb128 0x19
	.long	0x27ef
	.long	0x3566
	.uleb128 0x1a
	.long	0x2d
	.uleb128 0x1a
	.long	0x310
	.uleb128 0x1a
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x354d
	.uleb128 0x25
	.long	0x357c
	.uleb128 0x1a
	.long	0x2f41
	.uleb128 0x1a
	.long	0x319
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x356c
	.uleb128 0x25
	.long	0x358d
	.uleb128 0x1a
	.long	0x2f41
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3582
	.uleb128 0x25
	.long	0x35a3
	.uleb128 0x1a
	.long	0x577
	.uleb128 0x1a
	.long	0x310
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3593
	.uleb128 0x25
	.long	0x35b9
	.uleb128 0x1a
	.long	0x2d
	.uleb128 0x1a
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x35a9
	.uleb128 0x4
	.long	.LASF1000
	.byte	0x48
	.byte	0x15
	.byte	0x66
	.long	0x3638
	.uleb128 0x8
	.long	.LASF1114
	.byte	0x15
	.byte	0x6b
	.long	0x3656
	.byte	0
	.uleb128 0x8
	.long	.LASF1115
	.byte	0x15
	.byte	0x6f
	.long	0x3670
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1116
	.byte	0x15
	.byte	0x74
	.long	0x367b
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1117
	.byte	0x15
	.byte	0x78
	.long	0x369f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1118
	.byte	0x15
	.byte	0x7b
	.long	0x36ba
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1119
	.byte	0x15
	.byte	0x7e
	.long	0x36d0
	.byte	0x28
	.uleb128 0x8
	.long	.LASF1120
	.byte	0x15
	.byte	0x82
	.long	0x36f9
	.byte	0x30
	.uleb128 0x8
	.long	.LASF1121
	.byte	0x15
	.byte	0x83
	.long	0x36f9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF1122
	.byte	0x15
	.byte	0x8a
	.long	0x3713
	.byte	0x40
	.byte	0
	.uleb128 0x19
	.long	0x1e3
	.long	0x3656
	.uleb128 0x1a
	.long	0x2d
	.uleb128 0x1a
	.long	0x2d
	.uleb128 0x1a
	.long	0x2d
	.uleb128 0x1a
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3638
	.uleb128 0x19
	.long	0x1e3
	.long	0x3670
	.uleb128 0x1a
	.long	0x2d
	.uleb128 0x1a
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x365c
	.uleb128 0x2c
	.long	0x1e3
	.uleb128 0x3
	.byte	0x8
	.long	0x3676
	.uleb128 0x19
	.long	0x1e3
	.long	0x369f
	.uleb128 0x1a
	.long	0x2f41
	.uleb128 0x1a
	.long	0x1e3
	.uleb128 0x1a
	.long	0x2d
	.uleb128 0x1a
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3681
	.uleb128 0x25
	.long	0x36ba
	.uleb128 0x1a
	.long	0x2f41
	.uleb128 0x1a
	.long	0x1e3
	.uleb128 0x1a
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x36a5
	.uleb128 0x25
	.long	0x36d0
	.uleb128 0x1a
	.long	0x2f41
	.uleb128 0x1a
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x36c0
	.uleb128 0x19
	.long	0x1e3
	.long	0x36f9
	.uleb128 0x1a
	.long	0x2f41
	.uleb128 0x1a
	.long	0x1e3
	.uleb128 0x1a
	.long	0xe7a
	.uleb128 0x1a
	.long	0x621
	.uleb128 0x1a
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x36d6
	.uleb128 0x19
	.long	0x2d
	.long	0x3713
	.uleb128 0x1a
	.long	0x1e3
	.uleb128 0x1a
	.long	0x2d
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x36ff
	.uleb128 0x28
	.long	.LASF1123
	.value	0x158
	.byte	0x15
	.byte	0x2f
	.long	0x37f3
	.uleb128 0x8
	.long	.LASF1098
	.byte	0x15
	.byte	0x63
	.long	0x348c
	.byte	0
	.uleb128 0x8
	.long	.LASF1000
	.byte	0x15
	.byte	0x8b
	.long	0x35bf
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF1124
	.byte	0x15
	.byte	0x8e
	.long	0x3807
	.byte	0xf0
	.uleb128 0x8
	.long	.LASF1125
	.byte	0x15
	.byte	0x91
	.long	0x3807
	.byte	0xf8
	.uleb128 0x2d
	.long	.LASF1126
	.byte	0x15
	.byte	0x94
	.long	0x380d
	.value	0x100
	.uleb128 0x2d
	.long	.LASF1127
	.byte	0x15
	.byte	0x99
	.long	0x382c
	.value	0x108
	.uleb128 0x2d
	.long	.LASF1128
	.byte	0x15
	.byte	0x9c
	.long	0x343c
	.value	0x110
	.uleb128 0x2d
	.long	.LASF1129
	.byte	0x15
	.byte	0x9f
	.long	0x3842
	.value	0x118
	.uleb128 0x2d
	.long	.LASF1130
	.byte	0x15
	.byte	0xa3
	.long	0x342b
	.value	0x120
	.uleb128 0x2d
	.long	.LASF1131
	.byte	0x15
	.byte	0xa7
	.long	0x342b
	.value	0x128
	.uleb128 0x2d
	.long	.LASF1132
	.byte	0x15
	.byte	0xaa
	.long	0x3241
	.value	0x130
	.uleb128 0x2d
	.long	.LASF1133
	.byte	0x15
	.byte	0xad
	.long	0x386b
	.value	0x138
	.uleb128 0x2d
	.long	.LASF1134
	.byte	0x15
	.byte	0xb3
	.long	0x388a
	.value	0x140
	.uleb128 0x2d
	.long	.LASF1135
	.byte	0x15
	.byte	0xb6
	.long	0x27ef
	.value	0x148
	.uleb128 0x2d
	.long	.LASF1136
	.byte	0x15
	.byte	0xba
	.long	0x27ef
	.value	0x149
	.uleb128 0x2d
	.long	.LASF1137
	.byte	0x15
	.byte	0xbe
	.long	0x3895
	.value	0x150
	.byte	0
	.uleb128 0x19
	.long	0x123
	.long	0x3807
	.uleb128 0x1a
	.long	0x123
	.uleb128 0x1a
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x37f3
	.uleb128 0x3
	.byte	0x8
	.long	0x3813
	.uleb128 0xc
	.long	0x277c
	.uleb128 0x19
	.long	0x1e3
	.long	0x382c
	.uleb128 0x1a
	.long	0x123
	.uleb128 0x1a
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3818
	.uleb128 0x25
	.long	0x3842
	.uleb128 0x1a
	.long	0x123
	.uleb128 0x1a
	.long	0x2819
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3832
	.uleb128 0x19
	.long	0x2d
	.long	0x386b
	.uleb128 0x1a
	.long	0x123
	.uleb128 0x1a
	.long	0x2d
	.uleb128 0x1a
	.long	0x2d
	.uleb128 0x1a
	.long	0x648
	.uleb128 0x1a
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3848
	.uleb128 0x19
	.long	0x310
	.long	0x388a
	.uleb128 0x1a
	.long	0x123
	.uleb128 0x1a
	.long	0x577
	.uleb128 0x1a
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3871
	.uleb128 0x2c
	.long	0x27ef
	.uleb128 0x3
	.byte	0x8
	.long	0x3890
	.uleb128 0x11
	.long	.LASF1138
	.byte	0x30
	.byte	0x1
	.value	0x955
	.long	0x38db
	.uleb128 0x12
	.long	.LASF949
	.byte	0x1
	.value	0x957
	.long	0x38e1
	.byte	0
	.uleb128 0x12
	.long	.LASF1096
	.byte	0x1
	.value	0x958
	.long	0x577
	.byte	0x8
	.uleb128 0x24
	.string	"rtl"
	.byte	0x1
	.value	0x959
	.long	0x2d
	.byte	0x10
	.uleb128 0x24
	.string	"u"
	.byte	0x1
	.value	0x963
	.long	0x3ade
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x38e1
	.uleb128 0x3
	.byte	0x8
	.long	0x389b
	.uleb128 0x11
	.long	.LASF1139
	.byte	0x40
	.byte	0x1
	.value	0xd6c
	.long	0x396a
	.uleb128 0x12
	.long	.LASF1140
	.byte	0x1
	.value	0xd6e
	.long	0x38e1
	.byte	0
	.uleb128 0x12
	.long	.LASF949
	.byte	0x1
	.value	0xd6f
	.long	0x3970
	.byte	0x8
	.uleb128 0x12
	.long	.LASF1141
	.byte	0x1
	.value	0xd6f
	.long	0x3970
	.byte	0x10
	.uleb128 0x12
	.long	.LASF1142
	.byte	0x1
	.value	0xd70
	.long	0x2d
	.byte	0x18
	.uleb128 0x12
	.long	.LASF1
	.byte	0x1
	.value	0xd71
	.long	0x648
	.byte	0x20
	.uleb128 0x12
	.long	.LASF1143
	.byte	0x1
	.value	0xd72
	.long	0x1e3
	.byte	0x24
	.uleb128 0x12
	.long	.LASF342
	.byte	0x1
	.value	0xd73
	.long	0x310
	.byte	0x28
	.uleb128 0x12
	.long	.LASF340
	.byte	0x1
	.value	0xd74
	.long	0x319
	.byte	0x30
	.uleb128 0x12
	.long	.LASF1144
	.byte	0x1
	.value	0xd75
	.long	0x1e3
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3970
	.uleb128 0x3
	.byte	0x8
	.long	0x38e7
	.uleb128 0x1c
	.long	.LASF1145
	.byte	0x4
	.byte	0x1
	.byte	0xc0
	.long	0x39a7
	.uleb128 0x10
	.long	.LASF1146
	.sleb128 0
	.uleb128 0x10
	.long	.LASF1147
	.sleb128 1
	.uleb128 0x10
	.long	.LASF1148
	.sleb128 2
	.uleb128 0x10
	.long	.LASF1149
	.sleb128 3
	.uleb128 0x10
	.long	.LASF1150
	.sleb128 4
	.uleb128 0x10
	.long	.LASF1151
	.sleb128 5
	.byte	0
	.uleb128 0x4
	.long	.LASF1152
	.byte	0x10
	.byte	0x1
	.byte	0xdb
	.long	0x39d8
	.uleb128 0x8
	.long	.LASF736
	.byte	0x1
	.byte	0xdd
	.long	0x577
	.byte	0
	.uleb128 0x8
	.long	.LASF1153
	.byte	0x1
	.byte	0xde
	.long	0x310
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1154
	.byte	0x1
	.byte	0xdf
	.long	0x27ef
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.long	.LASF1155
	.byte	0x10
	.byte	0x1
	.value	0x8f5
	.long	0x3a00
	.uleb128 0x12
	.long	.LASF1156
	.byte	0x1
	.value	0x8f7
	.long	0x2d
	.byte	0
	.uleb128 0x12
	.long	.LASF340
	.byte	0x1
	.value	0x8f8
	.long	0x319
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.long	.LASF1157
	.byte	0x4
	.byte	0x1
	.value	0x93c
	.long	0x3a2c
	.uleb128 0x10
	.long	.LASF1158
	.sleb128 0
	.uleb128 0x10
	.long	.LASF1159
	.sleb128 1
	.uleb128 0x10
	.long	.LASF1160
	.sleb128 2
	.uleb128 0x10
	.long	.LASF1161
	.sleb128 3
	.uleb128 0x10
	.long	.LASF1162
	.sleb128 4
	.byte	0
	.uleb128 0x23
	.byte	0x10
	.byte	0x1
	.value	0x944
	.long	0x3a50
	.uleb128 0x12
	.long	.LASF669
	.byte	0x1
	.value	0x944
	.long	0x319
	.byte	0
	.uleb128 0x24
	.string	"low"
	.byte	0x1
	.value	0x944
	.long	0x319
	.byte	0x8
	.byte	0
	.uleb128 0x27
	.byte	0x80
	.byte	0x1
	.value	0x941
	.long	0x3a94
	.uleb128 0xb
	.string	"du"
	.byte	0x1
	.value	0x942
	.long	0x173f
	.uleb128 0xa
	.long	.LASF1163
	.byte	0x1
	.value	0x943
	.long	0x39d8
	.uleb128 0xb
	.string	"di"
	.byte	0x1
	.value	0x944
	.long	0x3a2c
	.uleb128 0xa
	.long	.LASF1164
	.byte	0x1
	.value	0x947
	.long	0x3a94
	.uleb128 0xa
	.long	.LASF1165
	.byte	0x1
	.value	0x948
	.long	0x3a94
	.byte	0
	.uleb128 0x15
	.long	0x319
	.long	0x3aa4
	.uleb128 0x16
	.long	0x1ea
	.byte	0xf
	.byte	0
	.uleb128 0x11
	.long	.LASF1166
	.byte	0x88
	.byte	0x1
	.value	0x93d
	.long	0x3ade
	.uleb128 0x26
	.long	.LASF1157
	.byte	0x1
	.value	0x93f
	.long	0x310
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x26
	.long	.LASF1
	.byte	0x1
	.value	0x940
	.long	0x310
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.uleb128 0x24
	.string	"un"
	.byte	0x1
	.value	0x949
	.long	0x3a50
	.byte	0x8
	.byte	0
	.uleb128 0x27
	.byte	0x10
	.byte	0x1
	.value	0x95b
	.long	0x3afe
	.uleb128 0xa
	.long	.LASF685
	.byte	0x1
	.value	0x95d
	.long	0x2be2
	.uleb128 0xb
	.string	"d"
	.byte	0x1
	.value	0x95f
	.long	0x3afe
	.byte	0
	.uleb128 0xe
	.byte	0x10
	.byte	0x4
	.long	.LASF1167
	.uleb128 0x11
	.long	.LASF1168
	.byte	0x18
	.byte	0x1
	.value	0x971
	.long	0x3b3a
	.uleb128 0x12
	.long	.LASF1096
	.byte	0x1
	.value	0x973
	.long	0x577
	.byte	0
	.uleb128 0x24
	.string	"exp"
	.byte	0x1
	.value	0x974
	.long	0x123
	.byte	0x8
	.uleb128 0x12
	.long	.LASF1143
	.byte	0x1
	.value	0x975
	.long	0x1e3
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.long	.LASF1169
	.byte	0x18
	.byte	0x1
	.value	0xbfd
	.long	0x3b7c
	.uleb128 0x12
	.long	.LASF949
	.byte	0x1
	.value	0xbff
	.long	0x3b7c
	.byte	0
	.uleb128 0x24
	.string	"exp"
	.byte	0x1
	.value	0xc00
	.long	0x123
	.byte	0x8
	.uleb128 0x12
	.long	.LASF1170
	.byte	0x1
	.value	0xc01
	.long	0x1e3
	.byte	0x10
	.uleb128 0x12
	.long	.LASF1143
	.byte	0x1
	.value	0xc02
	.long	0x1e3
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3b3a
	.uleb128 0x2e
	.long	.LASF1171
	.byte	0x1
	.byte	0xe6
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2e
	.long	.LASF1172
	.byte	0x1
	.byte	0xec
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2e
	.long	.LASF1173
	.byte	0x1
	.byte	0xfc
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2f
	.long	.LASF1174
	.byte	0x1
	.value	0x112
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2f
	.long	.LASF1175
	.byte	0x1
	.value	0x11c
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x30
	.long	.LASF1176
	.byte	0x1
	.value	0x128
	.long	0x1e3
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x30
	.long	.LASF1177
	.byte	0x1
	.value	0x130
	.long	0x1e3
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x31
	.long	.LASF1178
	.byte	0x1
	.value	0x138
	.long	0x1e3
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c9a
	.uleb128 0x32
	.string	"p1"
	.byte	0x1
	.value	0x139
	.long	0x641
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.string	"p2"
	.byte	0x1
	.value	0x13a
	.long	0x641
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"old"
	.byte	0x1
	.value	0x13c
	.long	0x3c9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"new"
	.byte	0x1
	.value	0x13d
	.long	0x577
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3ca0
	.uleb128 0xc
	.long	0x39a7
	.uleb128 0x31
	.long	.LASF1179
	.byte	0x1
	.value	0x143
	.long	0x2e14
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ce4
	.uleb128 0x32
	.string	"p"
	.byte	0x1
	.value	0x144
	.long	0x641
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"old"
	.byte	0x1
	.value	0x146
	.long	0x3c9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x34
	.long	.LASF1182
	.byte	0x1
	.value	0x150
	.long	0x310
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d25
	.uleb128 0x35
	.long	.LASF1180
	.byte	0x1
	.value	0x151
	.long	0x577
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.long	.LASF1181
	.byte	0x1
	.value	0x153
	.long	0x3d25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3d2b
	.uleb128 0x3
	.byte	0x8
	.long	0x39a7
	.uleb128 0x34
	.long	.LASF1183
	.byte	0x1
	.value	0x161
	.long	0x27ef
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d72
	.uleb128 0x35
	.long	.LASF736
	.byte	0x1
	.value	0x162
	.long	0x577
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.long	.LASF1181
	.byte	0x1
	.value	0x164
	.long	0x3d25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x34
	.long	.LASF1184
	.byte	0x1
	.value	0x179
	.long	0x27ef
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x3dd1
	.uleb128 0x35
	.long	.LASF1180
	.byte	0x1
	.value	0x17a
	.long	0x577
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF1153
	.byte	0x1
	.value	0x17b
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x36
	.long	.LASF1181
	.byte	0x1
	.value	0x17d
	.long	0x3d25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.long	.LASF1185
	.byte	0x1
	.value	0x17d
	.long	0x3d2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF1186
	.byte	0x1
	.value	0x195
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e21
	.uleb128 0x35
	.long	.LASF736
	.byte	0x1
	.value	0x196
	.long	0x577
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.long	.LASF1153
	.byte	0x1
	.value	0x197
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.long	.LASF1187
	.long	0x3e21
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12961
	.byte	0
	.uleb128 0xc
	.long	0x567
	.uleb128 0x37
	.long	.LASF1109
	.byte	0x1
	.value	0x1b0
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e94
	.uleb128 0x35
	.long	.LASF23
	.byte	0x1
	.value	0x1b1
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF736
	.byte	0x1
	.value	0x1b2
	.long	0x577
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF1170
	.byte	0x1
	.value	0x1b3
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x36
	.long	.LASF1153
	.byte	0x1
	.value	0x1b5
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.long	.LASF1187
	.long	0x3ea4
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12968
	.byte	0
	.uleb128 0x15
	.long	0x36a
	.long	0x3ea4
	.uleb128 0x16
	.long	0x1ea
	.byte	0xd
	.byte	0
	.uleb128 0xc
	.long	0x3e94
	.uleb128 0x39
	.long	.LASF1192
	.byte	0x1
	.value	0x1d0
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f6b
	.uleb128 0x35
	.long	.LASF23
	.byte	0x1
	.value	0x1d1
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x35
	.long	.LASF1170
	.byte	0x1
	.value	0x1d2
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x35
	.long	.LASF1188
	.byte	0x1
	.value	0x1d3
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3a
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x33
	.string	"len"
	.byte	0x1
	.value	0x1d9
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.string	"sec"
	.byte	0x1
	.value	0x1d9
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.long	.LASF736
	.byte	0x1
	.value	0x1d9
	.long	0x577
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.long	.LASF20
	.byte	0x1
	.value	0x1d9
	.long	0x364
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.long	.LASF1189
	.byte	0x1
	.value	0x1d9
	.long	0x577
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.long	.LASF1190
	.byte	0x1
	.value	0x1d9
	.long	0x3f81
	.uleb128 0x9
	.byte	0x3
	.quad	prefixes.12979
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x577
	.long	0x3f81
	.uleb128 0x16
	.long	0x1ea
	.byte	0x3
	.uleb128 0x16
	.long	0x1ea
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.long	0x3f6b
	.uleb128 0x2f
	.long	.LASF1191
	.byte	0x1
	.value	0x1e1
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x39
	.long	.LASF1193
	.byte	0x1
	.value	0x214
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x400a
	.uleb128 0x35
	.long	.LASF1194
	.byte	0x1
	.value	0x215
	.long	0x2f41
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.long	.LASF23
	.byte	0x1
	.value	0x216
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.long	.LASF736
	.byte	0x1
	.value	0x217
	.long	0x577
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF341
	.byte	0x1
	.value	0x218
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x35
	.long	.LASF342
	.byte	0x1
	.value	0x218
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x37
	.long	.LASF1195
	.byte	0x1
	.value	0x232
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x4038
	.uleb128 0x35
	.long	.LASF23
	.byte	0x1
	.value	0x233
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF1196
	.byte	0x1
	.value	0x241
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x4075
	.uleb128 0x35
	.long	.LASF23
	.byte	0x1
	.value	0x242
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.long	.LASF1170
	.byte	0x1
	.value	0x243
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2f
	.long	.LASF1197
	.byte	0x1
	.value	0x265
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x37
	.long	.LASF1198
	.byte	0x1
	.value	0x272
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x416c
	.uleb128 0x35
	.long	.LASF23
	.byte	0x1
	.value	0x273
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x35
	.long	.LASF342
	.byte	0x1
	.value	0x274
	.long	0x32b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x35
	.long	.LASF1153
	.byte	0x1
	.value	0x275
	.long	0x310
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x3a
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x36
	.long	.LASF1
	.byte	0x1
	.value	0x27e
	.long	0x648
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x36
	.long	.LASF1199
	.byte	0x1
	.value	0x27f
	.long	0x310
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x33
	.string	"str"
	.byte	0x1
	.value	0x280
	.long	0x577
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x281
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x33
	.string	"j"
	.byte	0x1
	.value	0x281
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x33
	.string	"len"
	.byte	0x1
	.value	0x281
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x36
	.long	.LASF1200
	.byte	0x1
	.value	0x281
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x36
	.long	.LASF736
	.byte	0x1
	.value	0x282
	.long	0x416c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x36a
	.long	0x417c
	.uleb128 0x16
	.long	0x1ea
	.byte	0x1d
	.byte	0
	.uleb128 0x37
	.long	.LASF1201
	.byte	0x1
	.value	0x2bd
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x41fb
	.uleb128 0x35
	.long	.LASF1
	.byte	0x1
	.value	0x2be
	.long	0x648
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x35
	.long	.LASF342
	.byte	0x1
	.value	0x2bf
	.long	0x32b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x35
	.long	.LASF1153
	.byte	0x1
	.value	0x2c0
	.long	0x310
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x36
	.long	.LASF1199
	.byte	0x1
	.value	0x2c3
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3a
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x36
	.long	.LASF736
	.byte	0x1
	.value	0x2cd
	.long	0x41fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x36a
	.long	0x420b
	.uleb128 0x16
	.long	0x1ea
	.byte	0x17
	.byte	0
	.uleb128 0x3b
	.long	.LASF1202
	.byte	0x1
	.value	0x2db
	.long	0x577
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x423d
	.uleb128 0x35
	.long	.LASF736
	.byte	0x1
	.value	0x2dc
	.long	0x577
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x34
	.long	.LASF1203
	.byte	0x1
	.value	0x2f0
	.long	0x1e3
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x42da
	.uleb128 0x35
	.long	.LASF1204
	.byte	0x1
	.value	0x2f1
	.long	0x577
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3a
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x2f5
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3a
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x23
	.byte	0x10
	.byte	0x1
	.value	0x30e
	.long	0x42c1
	.uleb128 0x12
	.long	.LASF736
	.byte	0x1
	.value	0x30e
	.long	0x27e5
	.byte	0
	.uleb128 0x12
	.long	.LASF1205
	.byte	0x1
	.value	0x30e
	.long	0x1de
	.byte	0x8
	.byte	0
	.uleb128 0x36
	.long	.LASF1206
	.byte	0x1
	.value	0x30e
	.long	0x42ea
	.uleb128 0x9
	.byte	0x3
	.quad	table.13040
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x429d
	.long	0x42ea
	.uleb128 0x16
	.long	0x1ea
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.long	0x42da
	.uleb128 0x37
	.long	.LASF1207
	.byte	0x1
	.value	0x330
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x441f
	.uleb128 0x35
	.long	.LASF23
	.byte	0x1
	.value	0x331
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x35
	.long	.LASF1204
	.byte	0x1
	.value	0x332
	.long	0x577
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x36
	.long	.LASF1208
	.byte	0x1
	.value	0x334
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x36
	.long	.LASF736
	.byte	0x1
	.value	0x335
	.long	0x577
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x36
	.long	.LASF1209
	.byte	0x1
	.value	0x336
	.long	0x577
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x36
	.long	.LASF1210
	.byte	0x1
	.value	0x337
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0x338
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.long	.LASF1187
	.long	0x441f
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13053
	.uleb128 0x3c
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0x43b2
	.uleb128 0x36
	.long	.LASF1211
	.byte	0x1
	.value	0x367
	.long	0x364
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x3c
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x43d8
	.uleb128 0x36
	.long	.LASF56
	.byte	0x1
	.value	0x37d
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.uleb128 0x3c
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0x43fd
	.uleb128 0x36
	.long	.LASF1096
	.byte	0x1
	.value	0x3b9
	.long	0x364
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x3a
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x33
	.string	"rtl"
	.byte	0x1
	.value	0x3d9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x3e94
	.uleb128 0x37
	.long	.LASF1212
	.byte	0x1
	.value	0x3e1
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x4465
	.uleb128 0x32
	.string	"var"
	.byte	0x1
	.value	0x3e2
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.long	.LASF1187
	.long	0x4475
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13064
	.byte	0
	.uleb128 0x15
	.long	0x36a
	.long	0x4475
	.uleb128 0x16
	.long	0x1ea
	.byte	0x11
	.byte	0
	.uleb128 0xc
	.long	0x4465
	.uleb128 0x37
	.long	.LASF1213
	.byte	0x1
	.value	0x3ed
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x44b7
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0x3ee
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.long	.LASF342
	.byte	0x1
	.value	0x3f0
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x37
	.long	.LASF1214
	.byte	0x1
	.value	0x402
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x44e5
	.uleb128 0x35
	.long	.LASF20
	.byte	0x1
	.value	0x403
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF1215
	.byte	0x1
	.value	0x412
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x4522
	.uleb128 0x35
	.long	.LASF1216
	.byte	0x1
	.value	0x413
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.long	.LASF1217
	.byte	0x1
	.value	0x414
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x37
	.long	.LASF1218
	.byte	0x1
	.value	0x41f
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x457f
	.uleb128 0x35
	.long	.LASF1216
	.byte	0x1
	.value	0x420
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x35
	.long	.LASF1217
	.byte	0x1
	.value	0x421
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x36
	.long	.LASF1180
	.byte	0x1
	.value	0x423
	.long	0x577
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.string	"buf"
	.byte	0x1
	.value	0x424
	.long	0x457f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x15
	.long	0x36a
	.long	0x458f
	.uleb128 0x16
	.long	0x1ea
	.byte	0xf
	.byte	0
	.uleb128 0x37
	.long	.LASF1219
	.byte	0x1
	.value	0x450
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x45cc
	.uleb128 0x35
	.long	.LASF1216
	.byte	0x1
	.value	0x451
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.long	.LASF1217
	.byte	0x1
	.value	0x452
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x37
	.long	.LASF1220
	.byte	0x1
	.value	0x45d
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x4629
	.uleb128 0x35
	.long	.LASF1216
	.byte	0x1
	.value	0x45e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x35
	.long	.LASF1217
	.byte	0x1
	.value	0x45f
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x36
	.long	.LASF1180
	.byte	0x1
	.value	0x461
	.long	0x577
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.string	"buf"
	.byte	0x1
	.value	0x462
	.long	0x457f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x37
	.long	.LASF1221
	.byte	0x1
	.value	0x49b
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x46a3
	.uleb128 0x35
	.long	.LASF23
	.byte	0x1
	.value	0x49c
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.long	.LASF1222
	.byte	0x1
	.value	0x49d
	.long	0x577
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.long	.LASF342
	.byte	0x1
	.value	0x49f
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3a
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0x4cb
	.long	0x577
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.long	.LASF736
	.byte	0x1
	.value	0x4cc
	.long	0x364
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1223
	.byte	0x1
	.value	0x4e8
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x471a
	.uleb128 0x35
	.long	.LASF23
	.byte	0x1
	.value	0x4e9
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x35
	.long	.LASF1222
	.byte	0x1
	.value	0x4ea
	.long	0x577
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x3a
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x36
	.long	.LASF1096
	.byte	0x1
	.value	0x4ed
	.long	0x471a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x36
	.long	.LASF1143
	.byte	0x1
	.value	0x4ed
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	labelno.13104
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x36a
	.long	0x472a
	.uleb128 0x16
	.long	0x1ea
	.byte	0xff
	.byte	0
	.uleb128 0x37
	.long	.LASF1224
	.byte	0x1
	.value	0x4fc
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x4777
	.uleb128 0x35
	.long	.LASF341
	.byte	0x1
	.value	0x4fd
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3a
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x508
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1225
	.byte	0x1
	.value	0x515
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x47a5
	.uleb128 0x35
	.long	.LASF342
	.byte	0x1
	.value	0x516
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x37
	.long	.LASF1226
	.byte	0x1
	.value	0x521
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x48fa
	.uleb128 0x32
	.string	"p"
	.byte	0x1
	.value	0x522
	.long	0x577
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x35
	.long	.LASF341
	.byte	0x1
	.value	0x523
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x33
	.string	"pos"
	.byte	0x1
	.value	0x525
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x36
	.long	.LASF1227
	.byte	0x1
	.value	0x526
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3a
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x36
	.long	.LASF1228
	.byte	0x1
	.value	0x52c
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3a
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x36
	.long	.LASF1229
	.byte	0x1
	.value	0x530
	.long	0x198d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3d
	.long	.LASF683
	.byte	0x1
	.value	0x530
	.long	0x198d
	.uleb128 0x36
	.long	.LASF1230
	.byte	0x1
	.value	0x530
	.long	0x310
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3a
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0x530
	.long	0x198d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3c
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.long	0x48c9
	.uleb128 0x36
	.long	.LASF1231
	.byte	0x1
	.value	0x530
	.long	0x198d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x33
	.string	"ch"
	.byte	0x1
	.value	0x530
	.long	0x310
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3a
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x36
	.long	.LASF1232
	.byte	0x1
	.value	0x530
	.long	0x1e3
	.uleb128 0x1
	.byte	0x5e
	.byte	0
	.byte	0
	.uleb128 0x3a
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x36
	.long	.LASF1232
	.byte	0x1
	.value	0x530
	.long	0x1e3
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x33
	.string	"ch"
	.byte	0x1
	.value	0x530
	.long	0x310
	.uleb128 0x1
	.byte	0x5e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	.LASF1233
	.byte	0x1
	.value	0x55f
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x4993
	.uleb128 0x35
	.long	.LASF23
	.byte	0x1
	.value	0x560
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF736
	.byte	0x1
	.value	0x561
	.long	0x577
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF341
	.byte	0x1
	.value	0x562
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x35
	.long	.LASF1234
	.byte	0x1
	.value	0x563
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3e
	.byte	0x4
	.byte	0x1
	.value	0x566
	.long	0x4970
	.uleb128 0x10
	.long	.LASF1235
	.sleb128 0
	.uleb128 0x10
	.long	.LASF1236
	.sleb128 1
	.uleb128 0x10
	.long	.LASF1237
	.sleb128 2
	.byte	0
	.uleb128 0x36
	.long	.LASF1238
	.byte	0x1
	.value	0x56b
	.long	0x4954
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.long	.LASF1187
	.long	0x49a3
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13170
	.byte	0
	.uleb128 0x15
	.long	0x36a
	.long	0x49a3
	.uleb128 0x16
	.long	0x1ea
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.long	0x4993
	.uleb128 0x37
	.long	.LASF1239
	.byte	0x1
	.value	0x5b2
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x4aa7
	.uleb128 0x35
	.long	.LASF23
	.byte	0x1
	.value	0x5b3
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x35
	.long	.LASF1208
	.byte	0x1
	.value	0x5b4
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x35
	.long	.LASF1240
	.byte	0x1
	.value	0x5b5
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x35
	.long	.LASF1241
	.byte	0x1
	.value	0x5b6
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x36
	.long	.LASF736
	.byte	0x1
	.value	0x5b8
	.long	0x577
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.long	.LASF342
	.byte	0x1
	.value	0x5b9
	.long	0x310
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x36
	.long	.LASF1170
	.byte	0x1
	.value	0x5ba
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x36
	.long	.LASF1242
	.byte	0x1
	.value	0x5bb
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3c
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.long	0x4a76
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0x608
	.long	0x577
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.long	.LASF1243
	.byte	0x1
	.value	0x609
	.long	0x364
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x3a
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x36
	.long	.LASF341
	.byte	0x1
	.value	0x645
	.long	0x32b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.long	.LASF1234
	.byte	0x1
	.value	0x646
	.long	0x32b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF1244
	.byte	0x1
	.value	0x695
	.long	0x1e3
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x4afa
	.uleb128 0x35
	.long	.LASF24
	.byte	0x1
	.value	0x696
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3a
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x36
	.long	.LASF1245
	.byte	0x1
	.value	0x6a5
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1246
	.byte	0x1
	.value	0x6bc
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b3b
	.uleb128 0x35
	.long	.LASF23
	.byte	0x1
	.value	0x6bd
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.long	.LASF1187
	.long	0x4b3b
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13203
	.byte	0
	.uleb128 0xc
	.long	0x4465
	.uleb128 0x37
	.long	.LASF1247
	.byte	0x1
	.value	0x6d9
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b6e
	.uleb128 0x32
	.string	"fun"
	.byte	0x1
	.value	0x6da
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF1248
	.byte	0x1
	.value	0x6e9
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b9c
	.uleb128 0x35
	.long	.LASF736
	.byte	0x1
	.value	0x6ea
	.long	0x577
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF1249
	.byte	0x1
	.value	0x6f2
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x4bca
	.uleb128 0x35
	.long	.LASF736
	.byte	0x1
	.value	0x6f3
	.long	0x577
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF1250
	.byte	0x1
	.value	0x6ff
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x4c24
	.uleb128 0x35
	.long	.LASF1194
	.byte	0x1
	.value	0x700
	.long	0x2f41
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF736
	.byte	0x1
	.value	0x701
	.long	0x577
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.long	.LASF1251
	.byte	0x1
	.value	0x703
	.long	0x577
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"id"
	.byte	0x1
	.value	0x704
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x34
	.long	.LASF1252
	.byte	0x1
	.value	0x716
	.long	0x2d
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x4c84
	.uleb128 0x35
	.long	.LASF341
	.byte	0x1
	.value	0x717
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x36
	.long	.LASF736
	.byte	0x1
	.value	0x719
	.long	0x4c84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.long	.LASF1253
	.byte	0x1
	.value	0x71a
	.long	0x577
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0x71b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x15
	.long	0x36a
	.long	0x4c94
	.uleb128 0x16
	.long	0x1ea
	.byte	0xb
	.byte	0
	.uleb128 0x3b
	.long	.LASF329
	.byte	0x1
	.value	0x767
	.long	0x310
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x4cd1
	.uleb128 0x32
	.string	"a"
	.byte	0x1
	.value	0x768
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x32
	.string	"b"
	.byte	0x1
	.value	0x768
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3f
	.long	.LASF1254
	.byte	0x1
	.value	0x776
	.long	0x577
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x4d21
	.uleb128 0x35
	.long	.LASF341
	.byte	0x1
	.value	0x777
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.long	.LASF1255
	.byte	0x1
	.value	0x778
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"ops"
	.byte	0x1
	.value	0x77a
	.long	0x4d21
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3453
	.uleb128 0x37
	.long	.LASF1256
	.byte	0x1
	.value	0x796
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x4d61
	.uleb128 0x32
	.string	"op"
	.byte	0x1
	.value	0x797
	.long	0x577
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0x798
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x34
	.long	.LASF1257
	.byte	0x1
	.value	0x7a2
	.long	0x27ef
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x4dbd
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0x7a3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF341
	.byte	0x1
	.value	0x7a4
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x35
	.long	.LASF1255
	.byte	0x1
	.value	0x7a5
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"op"
	.byte	0x1
	.value	0x7a7
	.long	0x577
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x34
	.long	.LASF1258
	.byte	0x1
	.value	0x7b1
	.long	0x27ef
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x4eb9
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0x7b2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.long	.LASF341
	.byte	0x1
	.value	0x7b3
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x35
	.long	.LASF342
	.byte	0x1
	.value	0x7b4
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x35
	.long	.LASF1259
	.byte	0x1
	.value	0x7b5
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x36
	.long	.LASF1255
	.byte	0x1
	.value	0x7b7
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x38
	.long	.LASF1187
	.long	0x4ec9
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13266
	.uleb128 0x3a
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x36
	.long	.LASF1260
	.byte	0x1
	.value	0x7c3
	.long	0x648
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.long	.LASF1261
	.byte	0x1
	.value	0x7c3
	.long	0x648
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x36
	.long	.LASF1262
	.byte	0x1
	.value	0x7c4
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x36
	.long	.LASF1263
	.byte	0x1
	.value	0x7c5
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x7c5
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3a
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x36
	.long	.LASF1264
	.byte	0x1
	.value	0x7ce
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x36a
	.long	0x4ec9
	.uleb128 0x16
	.long	0x1ea
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.long	0x4eb9
	.uleb128 0x37
	.long	.LASF1265
	.byte	0x1
	.value	0x7e2
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x4f58
	.uleb128 0x32
	.string	"d"
	.byte	0x1
	.value	0x7e3
	.long	0x1734
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF1
	.byte	0x1
	.value	0x7e4
	.long	0x648
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x35
	.long	.LASF342
	.byte	0x1
	.value	0x7e5
	.long	0x310
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x36
	.long	.LASF1021
	.byte	0x1
	.value	0x7e7
	.long	0x4f58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"l"
	.byte	0x1
	.value	0x7e8
	.long	0x32b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.long	.LASF1266
	.byte	0x1
	.value	0x7e9
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x38
	.long	.LASF1187
	.long	0x4f68
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13280
	.byte	0
	.uleb128 0x15
	.long	0x32b
	.long	0x4f68
	.uleb128 0x16
	.long	0x1ea
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.long	0x3e94
	.uleb128 0x34
	.long	.LASF1267
	.byte	0x1
	.value	0x83b
	.long	0x2d
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ffc
	.uleb128 0x32
	.string	"i0"
	.byte	0x1
	.value	0x83c
	.long	0x319
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.string	"i1"
	.byte	0x1
	.value	0x83c
	.long	0x319
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF1
	.byte	0x1
	.value	0x83d
	.long	0x648
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.string	"r"
	.byte	0x1
	.value	0x83f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.long	.LASF1187
	.long	0x500c
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13302
	.uleb128 0x3a
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x36
	.long	.LASF1268
	.byte	0x1
	.value	0x847
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x36a
	.long	0x500c
	.uleb128 0x16
	.long	0x1ea
	.byte	0x12
	.byte	0
	.uleb128 0xc
	.long	0x4ffc
	.uleb128 0x34
	.long	.LASF1269
	.byte	0x1
	.value	0x896
	.long	0x38
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x506b
	.uleb128 0x32
	.string	"d"
	.byte	0x1
	.value	0x897
	.long	0x1734
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF1
	.byte	0x1
	.value	0x898
	.long	0x648
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x33
	.string	"u"
	.byte	0x1
	.value	0x89a
	.long	0x173f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"r"
	.byte	0x1
	.value	0x89b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x34
	.long	.LASF1270
	.byte	0x1
	.value	0x8d9
	.long	0x2d
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x509d
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0x8da
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x40
	.long	.LASF1271
	.byte	0x1
	.value	0x8e4
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x50d8
	.uleb128 0x33
	.string	"r"
	.byte	0x1
	.value	0x8e6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.long	.LASF949
	.byte	0x1
	.value	0x8e6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x39
	.long	.LASF1272
	.byte	0x1
	.value	0x8fc
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x5155
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0x8fd
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x35
	.long	.LASF704
	.byte	0x1
	.value	0x8fe
	.long	0x5155
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x36
	.long	.LASF1273
	.byte	0x1
	.value	0x900
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.long	.LASF340
	.byte	0x1
	.value	0x901
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0x902
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.long	.LASF1187
	.long	0x515b
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13346
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x39d8
	.uleb128 0xc
	.long	0x4465
	.uleb128 0x39
	.long	.LASF1274
	.byte	0x1
	.value	0x97d
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x51be
	.uleb128 0x32
	.string	"ptr"
	.byte	0x1
	.value	0x97e
	.long	0x317
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.long	.LASF1140
	.byte	0x1
	.value	0x980
	.long	0x38e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3a
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x33
	.string	"r__"
	.byte	0x1
	.value	0x984
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF1275
	.byte	0x1
	.value	0x98d
	.long	0x1e3
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x521e
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0x98e
	.long	0x2e66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF1021
	.byte	0x1
	.value	0x98f
	.long	0x317
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3a
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x33
	.string	"t__"
	.byte	0x1
	.value	0x991
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	.LASF1276
	.byte	0x1
	.value	0x998
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x524c
	.uleb128 0x35
	.long	.LASF1027
	.byte	0x1
	.value	0x999
	.long	0x317
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3b
	.long	.LASF1277
	.byte	0x1
	.value	0x9a2
	.long	0x2e14
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x527c
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0x9a3
	.long	0x641
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3b
	.long	.LASF1278
	.byte	0x1
	.value	0x9ad
	.long	0x1e3
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x52b9
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0x9ae
	.long	0x641
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.string	"y"
	.byte	0x1
	.value	0x9af
	.long	0x641
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x39
	.long	.LASF1279
	.byte	0x1
	.value	0x9b7
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x52e7
	.uleb128 0x35
	.long	.LASF1280
	.byte	0x1
	.value	0x9b8
	.long	0x317
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF1281
	.byte	0x1
	.value	0x9c0
	.long	0x1e3
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x53e3
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0x9c1
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0x9c3
	.long	0x577
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.string	"len"
	.byte	0x1
	.value	0x9c4
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x33
	.string	"hi"
	.byte	0x1
	.value	0x9c4
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x9c4
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x36
	.long	.LASF0
	.byte	0x1
	.value	0x9c5
	.long	0xed6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x38
	.long	.LASF1187
	.long	0x53f3
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13430
	.uleb128 0x3c
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.long	0x539c
	.uleb128 0x33
	.string	"tmp"
	.byte	0x1
	.value	0x9e2
	.long	0x364
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x3c
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.long	0x53c1
	.uleb128 0x36
	.long	.LASF1282
	.byte	0x1
	.value	0x9ec
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x3a
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.uleb128 0x36
	.long	.LASF704
	.byte	0x1
	.value	0xa06
	.long	0x39d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x36a
	.long	0x53f3
	.uleb128 0x16
	.long	0x1ea
	.byte	0xa
	.byte	0
	.uleb128 0xc
	.long	0x53e3
	.uleb128 0x31
	.long	.LASF1283
	.byte	0x1
	.value	0xa39
	.long	0x1e3
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x5439
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0xa3a
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.long	.LASF1140
	.byte	0x1
	.value	0xa3b
	.long	0x38e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x31
	.long	.LASF1284
	.byte	0x1
	.value	0xa4a
	.long	0x198d
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x55d1
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0xa4b
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x32
	.string	"p"
	.byte	0x1
	.value	0xa4c
	.long	0x198d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x36
	.long	.LASF1285
	.byte	0x1
	.value	0xa4e
	.long	0x198d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x33
	.string	"len"
	.byte	0x1
	.value	0xa4f
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x36
	.long	.LASF0
	.byte	0x1
	.value	0xa50
	.long	0xed6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x3c
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.long	0x54dd
	.uleb128 0x36
	.long	.LASF1286
	.byte	0x1
	.value	0xa86
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"tmp"
	.byte	0x1
	.value	0xa87
	.long	0x299d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x3c
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.long	0x558a
	.uleb128 0x36
	.long	.LASF1282
	.byte	0x1
	.value	0xa93
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x36
	.long	.LASF675
	.byte	0x1
	.value	0xa94
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x36
	.long	.LASF24
	.byte	0x1
	.value	0xa95
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x36
	.long	.LASF1
	.byte	0x1
	.value	0xa96
	.long	0x648
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x36
	.long	.LASF1287
	.byte	0x1
	.value	0xa97
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x41
	.long	.Ldebug_ranges0+0
	.long	0x555b
	.uleb128 0x36
	.long	.LASF341
	.byte	0x1
	.value	0xac0
	.long	0x319
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x41
	.long	.Ldebug_ranges0+0x30
	.long	0x5574
	.uleb128 0x36
	.long	.LASF1288
	.byte	0x1
	.value	0xad1
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x42
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x36
	.long	.LASF1288
	.byte	0x1
	.value	0xae9
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x3c
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.long	0x55af
	.uleb128 0x36
	.long	.LASF704
	.byte	0x1
	.value	0xaf8
	.long	0x39d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x3a
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.uleb128 0x33
	.string	"new"
	.byte	0x1
	.value	0xb18
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF1289
	.byte	0x1
	.value	0xb2d
	.long	0x38e1
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x5748
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0xb2e
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x36
	.long	.LASF949
	.byte	0x1
	.value	0xb30
	.long	0x38e1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x36
	.long	.LASF1096
	.byte	0x1
	.value	0xb31
	.long	0x364
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x33
	.string	"rtl"
	.byte	0x1
	.value	0xb32
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.string	"pad"
	.byte	0x1
	.value	0xb33
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x3c
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.long	0x5678
	.uleb128 0x33
	.string	"__o"
	.byte	0x1
	.value	0xb38
	.long	0x28ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.long	.LASF1290
	.byte	0x1
	.value	0xb38
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
	.uleb128 0x3c
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.long	0x56ad
	.uleb128 0x33
	.string	"__o"
	.byte	0x1
	.value	0xb39
	.long	0x28ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.long	.LASF1290
	.byte	0x1
	.value	0xb39
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x3c
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.long	0x56e2
	.uleb128 0x33
	.string	"__o"
	.byte	0x1
	.value	0xb3a
	.long	0x28ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.long	.LASF1290
	.byte	0x1
	.value	0xb3a
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.byte	0
	.uleb128 0x3c
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.long	0x5717
	.uleb128 0x33
	.string	"__o"
	.byte	0x1
	.value	0xb41
	.long	0x28ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.long	.LASF1290
	.byte	0x1
	.value	0xb41
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.uleb128 0x3a
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.uleb128 0x36
	.long	.LASF1291
	.byte	0x1
	.value	0xb44
	.long	0x28ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.long	.LASF704
	.byte	0x1
	.value	0xb44
	.long	0x317
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	.LASF1292
	.byte	0x1
	.value	0xb4d
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x5ca1
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0xb4e
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x36
	.long	.LASF1285
	.byte	0x1
	.value	0xb50
	.long	0x198d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x33
	.string	"len"
	.byte	0x1
	.value	0xb51
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x36
	.long	.LASF0
	.byte	0x1
	.value	0xb52
	.long	0xed6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x38
	.long	.LASF1187
	.long	0x5ca1
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13573
	.uleb128 0x3c
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.long	0x57df
	.uleb128 0x33
	.string	"__o"
	.byte	0x1
	.value	0xb54
	.long	0x28ee
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.uleb128 0x3c
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.long	0x5805
	.uleb128 0x33
	.string	"__o"
	.byte	0x1
	.value	0xb59
	.long	0x28ee
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.byte	0
	.uleb128 0x3c
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.long	0x582b
	.uleb128 0x33
	.string	"__o"
	.byte	0x1
	.value	0xb5f
	.long	0x28ee
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.uleb128 0x3c
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.long	0x5851
	.uleb128 0x33
	.string	"__o"
	.byte	0x1
	.value	0xb68
	.long	0x28ee
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0x3c
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.long	0x5887
	.uleb128 0x33
	.string	"__o"
	.byte	0x1
	.value	0xb6b
	.long	0x28ee
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x36
	.long	.LASF1290
	.byte	0x1
	.value	0xb6b
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.byte	0
	.uleb128 0x3c
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.long	0x5914
	.uleb128 0x36
	.long	.LASF1293
	.byte	0x1
	.value	0xb77
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3c
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.long	0x58e1
	.uleb128 0x33
	.string	"__o"
	.byte	0x1
	.value	0xb78
	.long	0x28ee
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x36
	.long	.LASF1290
	.byte	0x1
	.value	0xb78
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.byte	0
	.uleb128 0x3a
	.quad	.LBB53
	.quad	.LBE53-.LBB53
	.uleb128 0x33
	.string	"__o"
	.byte	0x1
	.value	0xb79
	.long	0x28ee
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x36
	.long	.LASF1290
	.byte	0x1
	.value	0xb79
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.byte	0
	.byte	0
	.uleb128 0x3c
	.quad	.LBB54
	.quad	.LBE54-.LBB54
	.long	0x5b89
	.uleb128 0x36
	.long	.LASF1282
	.byte	0x1
	.value	0xb81
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x36
	.long	.LASF675
	.byte	0x1
	.value	0xb82
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x36
	.long	.LASF1
	.byte	0x1
	.value	0xb83
	.long	0x648
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x36
	.long	.LASF24
	.byte	0x1
	.value	0xb84
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x36
	.long	.LASF1287
	.byte	0x1
	.value	0xb85
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x3c
	.quad	.LBB55
	.quad	.LBE55-.LBB55
	.long	0x59af
	.uleb128 0x33
	.string	"__o"
	.byte	0x1
	.value	0xb8b
	.long	0x28ee
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x36
	.long	.LASF1290
	.byte	0x1
	.value	0xb8b
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.byte	0
	.uleb128 0x3c
	.quad	.LBB56
	.quad	.LBE56-.LBB56
	.long	0x59e5
	.uleb128 0x33
	.string	"__o"
	.byte	0x1
	.value	0xb96
	.long	0x28ee
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x36
	.long	.LASF1290
	.byte	0x1
	.value	0xb96
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.byte	0
	.uleb128 0x3c
	.quad	.LBB57
	.quad	.LBE57-.LBB57
	.long	0x5a1b
	.uleb128 0x33
	.string	"__o"
	.byte	0x1
	.value	0xb98
	.long	0x28ee
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x36
	.long	.LASF1290
	.byte	0x1
	.value	0xb98
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.byte	0
	.uleb128 0x3c
	.quad	.LBB58
	.quad	.LBE58-.LBB58
	.long	0x5a51
	.uleb128 0x33
	.string	"__o"
	.byte	0x1
	.value	0xb9a
	.long	0x28ee
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x36
	.long	.LASF1290
	.byte	0x1
	.value	0xb9a
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.byte	0
	.uleb128 0x3c
	.quad	.LBB59
	.quad	.LBE59-.LBB59
	.long	0x5aa8
	.uleb128 0x36
	.long	.LASF341
	.byte	0x1
	.value	0xba0
	.long	0x319
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3a
	.quad	.LBB60
	.quad	.LBE60-.LBB60
	.uleb128 0x33
	.string	"__o"
	.byte	0x1
	.value	0xba1
	.long	0x28ee
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x36
	.long	.LASF1290
	.byte	0x1
	.value	0xba1
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.byte	0
	.byte	0
	.uleb128 0x3c
	.quad	.LBB61
	.quad	.LBE61-.LBB61
	.long	0x5aff
	.uleb128 0x36
	.long	.LASF1288
	.byte	0x1
	.value	0xbaa
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3a
	.quad	.LBB62
	.quad	.LBE62-.LBB62
	.uleb128 0x33
	.string	"__o"
	.byte	0x1
	.value	0xbac
	.long	0x28ee
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x36
	.long	.LASF1290
	.byte	0x1
	.value	0xbac
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.byte	0
	.byte	0
	.uleb128 0x3c
	.quad	.LBB63
	.quad	.LBE63-.LBB63
	.long	0x5b35
	.uleb128 0x33
	.string	"__o"
	.byte	0x1
	.value	0xbb2
	.long	0x28ee
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x36
	.long	.LASF1290
	.byte	0x1
	.value	0xbb2
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.uleb128 0x3a
	.quad	.LBB64
	.quad	.LBE64-.LBB64
	.uleb128 0x36
	.long	.LASF1288
	.byte	0x1
	.value	0xbb9
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3a
	.quad	.LBB65
	.quad	.LBE65-.LBB65
	.uleb128 0x33
	.string	"__o"
	.byte	0x1
	.value	0xbbb
	.long	0x28ee
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x36
	.long	.LASF1290
	.byte	0x1
	.value	0xbbb
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.quad	.LBB66
	.quad	.LBE66-.LBB66
	.long	0x5c4a
	.uleb128 0x36
	.long	.LASF704
	.byte	0x1
	.value	0xbc4
	.long	0x39d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3c
	.quad	.LBB67
	.quad	.LBE67-.LBB67
	.long	0x5be3
	.uleb128 0x33
	.string	"__o"
	.byte	0x1
	.value	0xbc8
	.long	0x28ee
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x36
	.long	.LASF1290
	.byte	0x1
	.value	0xbc8
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.byte	0
	.uleb128 0x3c
	.quad	.LBB68
	.quad	.LBE68-.LBB68
	.long	0x5c18
	.uleb128 0x33
	.string	"__o"
	.byte	0x1
	.value	0xbcf
	.long	0x28ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.long	.LASF1290
	.byte	0x1
	.value	0xbcf
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.byte	0
	.uleb128 0x3a
	.quad	.LBB69
	.quad	.LBE69-.LBB69
	.uleb128 0x33
	.string	"__o"
	.byte	0x1
	.value	0xbd6
	.long	0x28ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.long	.LASF1290
	.byte	0x1
	.value	0xbd6
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.byte	0
	.uleb128 0x3c
	.quad	.LBB70
	.quad	.LBE70-.LBB70
	.long	0x5c6f
	.uleb128 0x33
	.string	"new"
	.byte	0x1
	.value	0xbee
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x3a
	.quad	.LBB71
	.quad	.LBE71-.LBB71
	.uleb128 0x33
	.string	"__o"
	.byte	0x1
	.value	0xbf7
	.long	0x28ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.long	.LASF1290
	.byte	0x1
	.value	0xbf7
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x4465
	.uleb128 0x43
	.long	.LASF1294
	.byte	0x1
	.value	0xc12
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x37
	.long	.LASF1295
	.byte	0x1
	.value	0xc1b
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x5cfb
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0xc1d
	.long	0x3b7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.long	.LASF949
	.byte	0x1
	.value	0xc1d
	.long	0x3b7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x39
	.long	.LASF1296
	.byte	0x1
	.value	0xc31
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x5d36
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0xc33
	.long	0x3b7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.long	.LASF949
	.byte	0x1
	.value	0xc33
	.long	0x3b7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF1297
	.byte	0x1
	.value	0xc44
	.long	0x123
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x5dbb
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0xc45
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x38
	.long	.LASF1187
	.long	0x5dbb
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13632
	.uleb128 0x3a
	.quad	.LBB72
	.quad	.LBE72-.LBB72
	.uleb128 0x36
	.long	.LASF1298
	.byte	0x1
	.value	0xc6a
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.long	.LASF25
	.byte	0x1
	.value	0xc6b
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.long	.LASF1299
	.byte	0x1
	.value	0xc6c
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x3e94
	.uleb128 0x34
	.long	.LASF1300
	.byte	0x1
	.value	0xc8c
	.long	0x2d
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x5ef1
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0xc8d
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x35
	.long	.LASF1301
	.byte	0x1
	.value	0xc8e
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -396
	.uleb128 0x36
	.long	.LASF1302
	.byte	0x1
	.value	0xc90
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -356
	.uleb128 0x36
	.long	.LASF1140
	.byte	0x1
	.value	0xc91
	.long	0x38e1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x36
	.long	.LASF1303
	.byte	0x1
	.value	0xc92
	.long	0x5ef1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x36
	.long	.LASF1096
	.byte	0x1
	.value	0xc93
	.long	0x471a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x36
	.long	.LASF1170
	.byte	0x1
	.value	0xc94
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x36
	.long	.LASF1304
	.byte	0x1
	.value	0xc95
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -372
	.uleb128 0x36
	.long	.LASF1305
	.byte	0x1
	.value	0xc96
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -364
	.uleb128 0x36
	.long	.LASF1143
	.byte	0x1
	.value	0xc97
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x33
	.string	"rtl"
	.byte	0x1
	.value	0xc98
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x3c
	.quad	.LBB73
	.quad	.LBE73-.LBB73
	.long	0x5eb8
	.uleb128 0x33
	.string	"rtl"
	.byte	0x1
	.value	0xcdb
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.byte	0
	.uleb128 0x41
	.long	.Ldebug_ranges0+0x90
	.long	0x5ed0
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0xd00
	.long	0x3b7c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.byte	0
	.uleb128 0x3a
	.quad	.LBB76
	.quad	.LBE76-.LBB76
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0xd22
	.long	0x5ef7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x5ef7
	.uleb128 0x3
	.byte	0x8
	.long	0x3b05
	.uleb128 0x39
	.long	.LASF1306
	.byte	0x1
	.value	0xd38
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x5f58
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0xd39
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.long	.LASF1170
	.byte	0x1
	.value	0xd3a
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x35
	.long	.LASF1143
	.byte	0x1
	.value	0xd3b
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.long	.LASF342
	.byte	0x1
	.value	0xd3d
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x37
	.long	.LASF1307
	.byte	0x1
	.value	0xd81
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0x5f91
	.uleb128 0x32
	.string	"f"
	.byte	0x1
	.value	0xd82
	.long	0x224b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0xd84
	.long	0x2a7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x39
	.long	.LASF1308
	.byte	0x1
	.value	0xd96
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0x6029
	.uleb128 0x32
	.string	"pc"
	.byte	0x1
	.value	0xd97
	.long	0x3970
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3c
	.quad	.LBB77
	.quad	.LBE77-.LBB77
	.long	0x5fe2
	.uleb128 0x33
	.string	"a__"
	.byte	0x1
	.value	0xd9b
	.long	0x641
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x3c
	.quad	.LBB78
	.quad	.LBE78-.LBB78
	.long	0x6007
	.uleb128 0x33
	.string	"r__"
	.byte	0x1
	.value	0xd9c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x3a
	.quad	.LBB79
	.quad	.LBE79-.LBB79
	.uleb128 0x33
	.string	"r__"
	.byte	0x1
	.value	0xd9d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1309
	.byte	0x1
	.value	0xda5
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.long	0x6076
	.uleb128 0x32
	.string	"p"
	.byte	0x1
	.value	0xda6
	.long	0x2a7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3a
	.quad	.LBB80
	.quad	.LBE80-.LBB80
	.uleb128 0x33
	.string	"r__"
	.byte	0x1
	.value	0xdac
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1310
	.byte	0x1
	.value	0xdb4
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.long	0x60fd
	.uleb128 0x32
	.string	"f"
	.byte	0x1
	.value	0xdb5
	.long	0x224b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0xdb7
	.long	0x2a7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0xdb8
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3a
	.quad	.LBB81
	.quad	.LBE81-.LBB81
	.uleb128 0x33
	.string	"cd"
	.byte	0x1
	.value	0xdbf
	.long	0x38e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3a
	.quad	.LBB82
	.quad	.LBE82-.LBB82
	.uleb128 0x36
	.long	.LASF949
	.byte	0x1
	.value	0xdc4
	.long	0x38e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	.LASF1311
	.byte	0x1
	.value	0xdd8
	.quad	.LFB80
	.quad	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.long	0x6197
	.uleb128 0x35
	.long	.LASF1
	.byte	0x1
	.value	0xdd9
	.long	0x648
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0xdda
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF704
	.byte	0x1
	.value	0xddb
	.long	0x6197
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x38
	.long	.LASF1187
	.long	0x619d
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13708
	.uleb128 0x3a
	.quad	.LBB83
	.quad	.LBE83-.LBB83
	.uleb128 0x36
	.long	.LASF1312
	.byte	0x1
	.value	0xdf6
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0xdf6
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"elt"
	.byte	0x1
	.value	0xdf7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3aa4
	.uleb128 0xc
	.long	0x4eb9
	.uleb128 0x34
	.long	.LASF1313
	.byte	0x1
	.value	0xe59
	.long	0x2d
	.quad	.LFB81
	.quad	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.long	0x61f3
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0xe5a
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x36
	.long	.LASF1314
	.byte	0x1
	.value	0xe5c
	.long	0x3aa4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x36
	.long	.LASF1315
	.byte	0x1
	.value	0xe5c
	.long	0x3aa4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x31
	.long	.LASF1316
	.byte	0x1
	.value	0xe6c
	.long	0x1e3
	.quad	.LFB82
	.quad	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.long	0x6261
	.uleb128 0x35
	.long	.LASF1
	.byte	0x1
	.value	0xe6d
	.long	0x648
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0xe6e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x33
	.string	"hi"
	.byte	0x1
	.value	0xe70
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0xe71
	.long	0x320
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x36
	.long	.LASF704
	.byte	0x1
	.value	0xe73
	.long	0x3aa4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x31
	.long	.LASF1317
	.byte	0x1
	.value	0xe84
	.long	0x1e3
	.quad	.LFB83
	.quad	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.long	0x62f0
	.uleb128 0x35
	.long	.LASF1
	.byte	0x1
	.value	0xe85
	.long	0x648
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0xe86
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x35
	.long	.LASF1140
	.byte	0x1
	.value	0xe87
	.long	0x38e1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0xe89
	.long	0x621
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x36
	.long	.LASF1285
	.byte	0x1
	.value	0xe8a
	.long	0x621
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x33
	.string	"len"
	.byte	0x1
	.value	0xe8b
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x36
	.long	.LASF704
	.byte	0x1
	.value	0xe8c
	.long	0x3aa4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x31
	.long	.LASF1318
	.byte	0x1
	.value	0xe9e
	.long	0x38e1
	.quad	.LFB84
	.quad	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.long	0x633e
	.uleb128 0x35
	.long	.LASF1
	.byte	0x1
	.value	0xe9f
	.long	0x648
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0xea0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"ptr"
	.byte	0x1
	.value	0xea2
	.long	0x38e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x34
	.long	.LASF1319
	.byte	0x1
	.value	0xeb0
	.long	0x2d
	.quad	.LFB85
	.quad	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.long	0x638c
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0xeb1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.long	.LASF1
	.byte	0x1
	.value	0xeb3
	.long	0x648
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x36
	.long	.LASF1140
	.byte	0x1
	.value	0xeb4
	.long	0x38e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x34
	.long	.LASF1320
	.byte	0x1
	.value	0xec2
	.long	0x2d
	.quad	.LFB86
	.quad	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.long	0x642d
	.uleb128 0x35
	.long	.LASF1
	.byte	0x1
	.value	0xec3
	.long	0x648
	.uleb128 0x3
	.byte	0x91
	.sleb128 -340
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0xec4
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x36
	.long	.LASF1302
	.byte	0x1
	.value	0xec6
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x36
	.long	.LASF1140
	.byte	0x1
	.value	0xec7
	.long	0x38e1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x36
	.long	.LASF1096
	.byte	0x1
	.value	0xec8
	.long	0x471a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x33
	.string	"def"
	.byte	0x1
	.value	0xec9
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x36
	.long	.LASF1321
	.byte	0x1
	.value	0xeca
	.long	0x3970
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x36
	.long	.LASF342
	.byte	0x1
	.value	0xecb
	.long	0x310
	.uleb128 0x3
	.byte	0x91
	.sleb128 -332
	.byte	0
	.uleb128 0x31
	.long	.LASF1322
	.byte	0x1
	.value	0xf17
	.long	0x3970
	.quad	.LFB87
	.quad	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.long	0x649d
	.uleb128 0x32
	.string	"f"
	.byte	0x1
	.value	0xf18
	.long	0x224b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF1163
	.byte	0x1
	.value	0xf19
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.long	.LASF1321
	.byte	0x1
	.value	0xf1b
	.long	0x3970
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.long	.LASF1096
	.byte	0x1
	.value	0xf1c
	.long	0x577
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.long	.LASF1187
	.long	0x649d
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13784
	.byte	0
	.uleb128 0xc
	.long	0x4ffc
	.uleb128 0x34
	.long	.LASF1323
	.byte	0x1
	.value	0xf29
	.long	0x2d
	.quad	.LFB88
	.quad	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.long	0x64d4
	.uleb128 0x35
	.long	.LASF1163
	.byte	0x1
	.value	0xf2a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x34
	.long	.LASF1324
	.byte	0x1
	.value	0xf33
	.long	0x2d
	.quad	.LFB89
	.quad	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.long	0x6524
	.uleb128 0x35
	.long	.LASF1163
	.byte	0x1
	.value	0xf34
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF1325
	.byte	0x1
	.value	0xf35
	.long	0x281f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.long	.LASF1321
	.byte	0x1
	.value	0xf37
	.long	0x3970
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x34
	.long	.LASF1326
	.byte	0x1
	.value	0xf3f
	.long	0x2d
	.quad	.LFB90
	.quad	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.long	0x6563
	.uleb128 0x32
	.string	"f"
	.byte	0x1
	.value	0xf40
	.long	0x224b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.long	.LASF1163
	.byte	0x1
	.value	0xf41
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x34
	.long	.LASF1327
	.byte	0x1
	.value	0xf49
	.long	0x648
	.quad	.LFB91
	.quad	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.long	0x6595
	.uleb128 0x35
	.long	.LASF1163
	.byte	0x1
	.value	0xf4a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x34
	.long	.LASF1328
	.byte	0x1
	.value	0xf50
	.long	0x648
	.quad	.LFB92
	.quad	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.long	0x65d4
	.uleb128 0x32
	.string	"f"
	.byte	0x1
	.value	0xf51
	.long	0x224b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.long	.LASF1163
	.byte	0x1
	.value	0xf52
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x34
	.long	.LASF1329
	.byte	0x1
	.value	0xf5a
	.long	0x1e3
	.quad	.LFB93
	.quad	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.long	0x6606
	.uleb128 0x35
	.long	.LASF1163
	.byte	0x1
	.value	0xf5b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x30
	.long	.LASF1330
	.byte	0x1
	.value	0xf63
	.long	0x1e3
	.quad	.LFB94
	.quad	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x37
	.long	.LASF1331
	.byte	0x1
	.value	0xf6b
	.quad	.LFB95
	.quad	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.long	0x6745
	.uleb128 0x35
	.long	.LASF1222
	.byte	0x1
	.value	0xf6c
	.long	0x577
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x35
	.long	.LASF1332
	.byte	0x1
	.value	0xf6d
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x36
	.long	.LASF1321
	.byte	0x1
	.value	0xf6f
	.long	0x3970
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0xf70
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x33
	.string	"u"
	.byte	0x1
	.value	0xf71
	.long	0x173f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.long	.LASF1187
	.long	0x6755
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13821
	.uleb128 0x3a
	.quad	.LBB84
	.quad	.LBE84-.LBB84
	.uleb128 0x33
	.string	"tmp"
	.byte	0x1
	.value	0xf7e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3c
	.quad	.LBB85
	.quad	.LBE85-.LBB85
	.long	0x6704
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0xfca
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x36
	.long	.LASF1312
	.byte	0x1
	.value	0xfca
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x33
	.string	"elt"
	.byte	0x1
	.value	0xfcb
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x3a
	.quad	.LBB86
	.quad	.LBE86-.LBB86
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0xfdf
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x36
	.long	.LASF1312
	.byte	0x1
	.value	0xfdf
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x33
	.string	"elt"
	.byte	0x1
	.value	0xfe0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x36a
	.long	0x6755
	.uleb128 0x16
	.long	0x1ea
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.long	0x6745
	.uleb128 0x39
	.long	.LASF1333
	.byte	0x1
	.value	0x1006
	.quad	.LFB96
	.quad	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.long	0x6797
	.uleb128 0x36
	.long	.LASF1334
	.byte	0x1
	.value	0x1008
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.long	.LASF1321
	.byte	0x1
	.value	0x1009
	.long	0x3970
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x39
	.long	.LASF1335
	.byte	0x1
	.value	0x1022
	.quad	.LFB97
	.quad	.LFE97-.LFB97
	.uleb128 0x1
	.byte	0x9c
	.long	0x6811
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0x1023
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x1025
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.long	.LASF1336
	.byte	0x1
	.value	0x1026
	.long	0x577
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.long	.LASF1187
	.long	0x6821
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13878
	.uleb128 0x3a
	.quad	.LBB87
	.quad	.LBE87-.LBB87
	.uleb128 0x33
	.string	"j"
	.byte	0x1
	.value	0x1047
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x36a
	.long	0x6821
	.uleb128 0x16
	.long	0x1ea
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.long	0x6811
	.uleb128 0x31
	.long	.LASF1337
	.byte	0x1
	.value	0x1062
	.long	0x1e3
	.quad	.LFB98
	.quad	.LFE98-.LFB98
	.uleb128 0x1
	.byte	0x9c
	.long	0x68d9
	.uleb128 0x35
	.long	.LASF1338
	.byte	0x1
	.value	0x1063
	.long	0xe7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.long	.LASF1021
	.byte	0x1
	.value	0x1064
	.long	0x317
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0x1066
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3c
	.quad	.LBB88
	.quad	.LBE88-.LBB88
	.long	0x6898
	.uleb128 0x36
	.long	.LASF1321
	.byte	0x1
	.value	0x106f
	.long	0x3970
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x3a
	.quad	.LBB89
	.quad	.LBE89-.LBB89
	.uleb128 0x36
	.long	.LASF1303
	.byte	0x1
	.value	0x1079
	.long	0x5ef1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3a
	.quad	.LBB90
	.quad	.LBE90-.LBB90
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0x1080
	.long	0x5ef7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF1339
	.byte	0x1
	.value	0x1090
	.long	0x1e3
	.quad	.LFB99
	.quad	.LFE99-.LFB99
	.uleb128 0x1
	.byte	0x9c
	.long	0x6929
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0x1091
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.long	.LASF1170
	.byte	0x1
	.value	0x1093
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"tem"
	.byte	0x1
	.value	0x1094
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x34
	.long	.LASF1340
	.byte	0x1
	.value	0x10d3
	.long	0x123
	.quad	.LFB100
	.quad	.LFE100-.LFB100
	.uleb128 0x1
	.byte	0x9c
	.long	0x6a72
	.uleb128 0x35
	.long	.LASF704
	.byte	0x1
	.value	0x10d4
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x35
	.long	.LASF1341
	.byte	0x1
	.value	0x10d5
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x3c
	.quad	.LBB91
	.quad	.LBE91-.LBB91
	.long	0x6991
	.uleb128 0x36
	.long	.LASF1342
	.byte	0x1
	.value	0x110f
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x3c
	.quad	.LBB92
	.quad	.LBE92-.LBB92
	.long	0x69c5
	.uleb128 0x36
	.long	.LASF1343
	.byte	0x1
	.value	0x1135
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.long	.LASF1344
	.byte	0x1
	.value	0x1137
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x3c
	.quad	.LBB93
	.quad	.LBE93-.LBB93
	.long	0x69f9
	.uleb128 0x36
	.long	.LASF1343
	.byte	0x1
	.value	0x1145
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.long	.LASF1344
	.byte	0x1
	.value	0x1147
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x3a
	.quad	.LBB94
	.quad	.LBE94-.LBB94
	.uleb128 0x33
	.string	"op0"
	.byte	0x1
	.value	0x115d
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x33
	.string	"op1"
	.byte	0x1
	.value	0x115d
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3c
	.quad	.LBB95
	.quad	.LBE95-.LBB95
	.long	0x6a4f
	.uleb128 0x36
	.long	.LASF1342
	.byte	0x1
	.value	0x116a
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x3a
	.quad	.LBB96
	.quad	.LBE96-.LBB96
	.uleb128 0x36
	.long	.LASF1342
	.byte	0x1
	.value	0x1177
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1345
	.byte	0x1
	.value	0x11a4
	.quad	.LFB101
	.quad	.LFE101-.LFB101
	.uleb128 0x1
	.byte	0x9c
	.long	0x6b13
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0x11a5
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x35
	.long	.LASF341
	.byte	0x1
	.value	0x11a6
	.long	0x319
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x35
	.long	.LASF342
	.byte	0x1
	.value	0x11a7
	.long	0x310
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x36
	.long	.LASF0
	.byte	0x1
	.value	0x11a9
	.long	0xed6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x36
	.long	.LASF1228
	.byte	0x1
	.value	0x11aa
	.long	0x319
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.long	.LASF1187
	.long	0x6b13
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13956
	.uleb128 0x3a
	.quad	.LBB97
	.quad	.LBE97-.LBB97
	.uleb128 0x36
	.long	.LASF1346
	.byte	0x1
	.value	0x1210
	.long	0x299d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x457f
	.uleb128 0x31
	.long	.LASF1347
	.byte	0x1
	.value	0x122b
	.long	0x32b
	.quad	.LFB102
	.quad	.LFE102-.LFB102
	.uleb128 0x1
	.byte	0x9c
	.long	0x6b88
	.uleb128 0x32
	.string	"val"
	.byte	0x1
	.value	0x122c
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x36
	.long	.LASF1348
	.byte	0x1
	.value	0x122e
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x122e
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3a
	.quad	.LBB98
	.quad	.LBE98-.LBB98
	.uleb128 0x36
	.long	.LASF1349
	.byte	0x1
	.value	0x1239
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	.LASF1350
	.byte	0x1
	.value	0x1254
	.quad	.LFB103
	.quad	.LFE103-.LFB103
	.uleb128 0x1
	.byte	0x9c
	.long	0x6dc8
	.uleb128 0x32
	.string	"exp"
	.byte	0x1
	.value	0x1255
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x35
	.long	.LASF341
	.byte	0x1
	.value	0x1256
	.long	0x319
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x35
	.long	.LASF342
	.byte	0x1
	.value	0x1257
	.long	0x310
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x36
	.long	.LASF24
	.byte	0x1
	.value	0x1259
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x36
	.long	.LASF1282
	.byte	0x1
	.value	0x125a
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x36
	.long	.LASF1351
	.byte	0x1
	.value	0x125a
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x36
	.long	.LASF1352
	.byte	0x1
	.value	0x125b
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x36
	.long	.LASF1353
	.byte	0x1
	.value	0x125e
	.long	0x319
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x36
	.long	.LASF1354
	.byte	0x1
	.value	0x1260
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x36
	.long	.LASF1355
	.byte	0x1
	.value	0x1261
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x38
	.long	.LASF1187
	.long	0x6dc8
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13995
	.uleb128 0x3a
	.quad	.LBB99
	.quad	.LBE99-.LBB99
	.uleb128 0x33
	.string	"val"
	.byte	0x1
	.value	0x127b
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x36
	.long	.LASF1349
	.byte	0x1
	.value	0x127c
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x3c
	.quad	.LBB100
	.quad	.LBE100-.LBB100
	.long	0x6cef
	.uleb128 0x36
	.long	.LASF1356
	.byte	0x1
	.value	0x128e
	.long	0x32b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x36
	.long	.LASF1357
	.byte	0x1
	.value	0x1290
	.long	0x319
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x36
	.long	.LASF1358
	.byte	0x1
	.value	0x1291
	.long	0x319
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.long	.LASF1349
	.byte	0x1
	.value	0x1292
	.long	0x319
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x36
	.long	.LASF1359
	.byte	0x1
	.value	0x1293
	.long	0x310
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.byte	0
	.uleb128 0x3c
	.quad	.LBB101
	.quad	.LBE101-.LBB101
	.long	0x6d35
	.uleb128 0x36
	.long	.LASF1356
	.byte	0x1
	.value	0x12a5
	.long	0x32b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x33
	.string	"pos"
	.byte	0x1
	.value	0x12a8
	.long	0x319
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x36
	.long	.LASF1359
	.byte	0x1
	.value	0x12a9
	.long	0x310
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.byte	0
	.uleb128 0x3a
	.quad	.LBB102
	.quad	.LBE102-.LBB102
	.uleb128 0x36
	.long	.LASF1360
	.byte	0x1
	.value	0x12f2
	.long	0x319
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x36
	.long	.LASF1361
	.byte	0x1
	.value	0x12f3
	.long	0x319
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3a
	.quad	.LBB103
	.quad	.LBE103-.LBB103
	.uleb128 0x36
	.long	.LASF1362
	.byte	0x1
	.value	0x131a
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x36
	.long	.LASF1363
	.byte	0x1
	.value	0x131b
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x36
	.long	.LASF704
	.byte	0x1
	.value	0x131c
	.long	0x319
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x36
	.long	.LASF1364
	.byte	0x1
	.value	0x131d
	.long	0x319
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.long	.LASF1365
	.byte	0x1
	.value	0x131e
	.long	0x319
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x4ffc
	.uleb128 0x39
	.long	.LASF1366
	.byte	0x1
	.value	0x1389
	.quad	.LFB104
	.quad	.LFE104-.LFB104
	.uleb128 0x1
	.byte	0x9c
	.long	0x6dfb
	.uleb128 0x35
	.long	.LASF23
	.byte	0x1
	.value	0x138a
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF1367
	.byte	0x1
	.value	0x1398
	.quad	.LFB105
	.quad	.LFE105-.LFB105
	.uleb128 0x1
	.byte	0x9c
	.long	0x6e58
	.uleb128 0x35
	.long	.LASF1368
	.byte	0x1
	.value	0x1399
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF1369
	.byte	0x1
	.value	0x139a
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3a
	.quad	.LBB104
	.quad	.LBE104-.LBB104
	.uleb128 0x33
	.string	"wd"
	.byte	0x1
	.value	0x13a1
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1370
	.byte	0x1
	.value	0x13d0
	.quad	.LFB106
	.quad	.LFE106-.LFB106
	.uleb128 0x1
	.byte	0x9c
	.long	0x6e86
	.uleb128 0x35
	.long	.LASF23
	.byte	0x1
	.value	0x13d1
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF1371
	.byte	0x1
	.value	0x13e5
	.quad	.LFB107
	.quad	.LFE107-.LFB107
	.uleb128 0x1
	.byte	0x9c
	.long	0x6ee2
	.uleb128 0x33
	.string	"t"
	.byte	0x1
	.value	0x13e7
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3a
	.quad	.LBB105
	.quad	.LBE105-.LBB105
	.uleb128 0x36
	.long	.LASF23
	.byte	0x1
	.value	0x13eb
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.long	.LASF736
	.byte	0x1
	.value	0x13ec
	.long	0x577
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	.LASF1372
	.byte	0x1
	.value	0x1403
	.quad	.LFB108
	.quad	.LFE108-.LFB108
	.uleb128 0x1
	.byte	0x9c
	.long	0x6f4b
	.uleb128 0x35
	.long	.LASF23
	.byte	0x1
	.value	0x1404
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.long	.LASF736
	.byte	0x1
	.value	0x1406
	.long	0x577
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3a
	.quad	.LBB106
	.quad	.LBE106-.LBB106
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.value	0x140b
	.long	0x2819
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"t"
	.byte	0x1
	.value	0x140b
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1373
	.byte	0x1
	.value	0x1427
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.uleb128 0x1
	.byte	0x9c
	.long	0x6f97
	.uleb128 0x35
	.long	.LASF23
	.byte	0x1
	.value	0x1428
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF1273
	.byte	0x1
	.value	0x1428
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.long	.LASF736
	.byte	0x1
	.value	0x142a
	.long	0x577
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x30
	.long	.LASF1374
	.byte	0x1
	.value	0x1456
	.long	0x1e3
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x37
	.long	.LASF1375
	.byte	0x1
	.value	0x1461
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.long	0x6ff6
	.uleb128 0x35
	.long	.LASF23
	.byte	0x1
	.value	0x1462
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.long	.LASF1187
	.long	0x6ff6
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14071
	.byte	0
	.uleb128 0xc
	.long	0x4ffc
	.uleb128 0x2f
	.long	.LASF1376
	.byte	0x1
	.value	0x147a
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x34
	.long	.LASF1377
	.byte	0x1
	.value	0x1492
	.long	0x310
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.long	0x7074
	.uleb128 0x35
	.long	.LASF23
	.byte	0x1
	.value	0x1493
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF736
	.byte	0x1
	.value	0x1494
	.long	0x577
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF1170
	.byte	0x1
	.value	0x1495
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x36
	.long	.LASF1153
	.byte	0x1
	.value	0x1497
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x37
	.long	.LASF1378
	.byte	0x1
	.value	0x14b2
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.long	0x70c4
	.uleb128 0x35
	.long	.LASF736
	.byte	0x1
	.value	0x14b3
	.long	0x577
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.long	.LASF1153
	.byte	0x1
	.value	0x14b4
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.long	.LASF1187
	.long	0x70d4
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14084
	.byte	0
	.uleb128 0x15
	.long	0x36a
	.long	0x70d4
	.uleb128 0x16
	.long	0x1ea
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.long	0x70c4
	.uleb128 0x37
	.long	.LASF1379
	.byte	0x1
	.value	0x14bc
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.long	0x7143
	.uleb128 0x35
	.long	.LASF736
	.byte	0x1
	.value	0x14bd
	.long	0x577
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x35
	.long	.LASF1153
	.byte	0x1
	.value	0x14be
	.long	0x310
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x36
	.long	.LASF1380
	.byte	0x1
	.value	0x14c0
	.long	0x7143
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"f"
	.byte	0x1
	.value	0x14c0
	.long	0x364
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.long	.LASF24
	.byte	0x1
	.value	0x14c1
	.long	0x577
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x15
	.long	0x36a
	.long	0x7153
	.uleb128 0x16
	.long	0x1ea
	.byte	0x9
	.byte	0
	.uleb128 0x37
	.long	.LASF1381
	.byte	0x1
	.value	0x14e5
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.long	0x71ac
	.uleb128 0x35
	.long	.LASF736
	.byte	0x1
	.value	0x14e6
	.long	0x577
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.long	.LASF1153
	.byte	0x1
	.value	0x14e7
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x36
	.long	.LASF1380
	.byte	0x1
	.value	0x14e9
	.long	0x611
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"f"
	.byte	0x1
	.value	0x14e9
	.long	0x364
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x37
	.long	.LASF1382
	.byte	0x1
	.value	0x14f5
	.quad	.LFB117
	.quad	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.long	0x71e9
	.uleb128 0x35
	.long	.LASF736
	.byte	0x1
	.value	0x14f6
	.long	0x577
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.long	.LASF1153
	.byte	0x1
	.value	0x14f7
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x37
	.long	.LASF1383
	.byte	0x1
	.value	0x1509
	.quad	.LFB118
	.quad	.LFE118-.LFB118
	.uleb128 0x1
	.byte	0x9c
	.long	0x7226
	.uleb128 0x35
	.long	.LASF1216
	.byte	0x1
	.value	0x150a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.long	.LASF340
	.byte	0x1
	.value	0x150b
	.long	0x319
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x37
	.long	.LASF1384
	.byte	0x1
	.value	0x1518
	.quad	.LFB119
	.quad	.LFE119-.LFB119
	.uleb128 0x1
	.byte	0x9c
	.long	0x7263
	.uleb128 0x35
	.long	.LASF1385
	.byte	0x1
	.value	0x1519
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.long	.LASF1386
	.byte	0x1
	.value	0x1519
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x44
	.long	.LASF1387
	.byte	0x1
	.byte	0x8b
	.long	0x319
	.uleb128 0x9
	.byte	0x3
	.quad	const_alias_set
	.uleb128 0x44
	.long	.LASF1145
	.byte	0x1
	.byte	0xcd
	.long	0x3976
	.uleb128 0x9
	.byte	0x3
	.quad	in_section
	.uleb128 0x44
	.long	.LASF1388
	.byte	0x1
	.byte	0xd7
	.long	0x577
	.uleb128 0x9
	.byte	0x3
	.quad	in_named_name
	.uleb128 0x44
	.long	.LASF1389
	.byte	0x1
	.byte	0xe2
	.long	0x2ef1
	.uleb128 0x9
	.byte	0x3
	.quad	in_named_htab
	.uleb128 0x15
	.long	0x38e1
	.long	0x72c8
	.uleb128 0x45
	.long	0x1ea
	.value	0x3f0
	.byte	0
	.uleb128 0x36
	.long	.LASF1390
	.byte	0x1
	.value	0x968
	.long	0x72b7
	.uleb128 0x9
	.byte	0x3
	.quad	const_hash_table
	.uleb128 0x36
	.long	.LASF1391
	.byte	0x1
	.value	0x978
	.long	0x2ef1
	.uleb128 0x9
	.byte	0x3
	.quad	const_str_htab
	.uleb128 0x36
	.long	.LASF1392
	.byte	0x1
	.value	0xc05
	.long	0x3b7c
	.uleb128 0x9
	.byte	0x3
	.quad	deferred_constants
	.uleb128 0x36
	.long	.LASF1393
	.byte	0x1
	.value	0xc09
	.long	0x3b7c
	.uleb128 0x9
	.byte	0x3
	.quad	after_function_constants
	.uleb128 0x36
	.long	.LASF1394
	.byte	0x1
	.value	0xc0d
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	defer_addressed_constants_flag
	.uleb128 0x36
	.long	.LASF1395
	.byte	0x1
	.value	0x1384
	.long	0x123
	.uleb128 0x9
	.byte	0x3
	.quad	weak_decls
	.uleb128 0x46
	.long	.LASF1396
	.byte	0x5
	.byte	0x62
	.long	0x1e3
	.uleb128 0x47
	.long	.LASF1397
	.byte	0x5
	.value	0xc21
	.long	0x577
	.uleb128 0x46
	.long	.LASF1398
	.byte	0x8
	.byte	0xaa
	.long	0x54b
	.uleb128 0x15
	.long	0x339
	.long	0x737e
	.uleb128 0x16
	.long	0x1ea
	.byte	0xff
	.byte	0
	.uleb128 0x46
	.long	.LASF1399
	.byte	0x16
	.byte	0x48
	.long	0x7389
	.uleb128 0xc
	.long	0x736e
	.uleb128 0x15
	.long	0x7bd
	.long	0x739e
	.uleb128 0x16
	.long	0x1ea
	.byte	0x3a
	.byte	0
	.uleb128 0x46
	.long	.LASF191
	.byte	0xa
	.byte	0x34
	.long	0x73a9
	.uleb128 0xc
	.long	0x738e
	.uleb128 0x15
	.long	0x332
	.long	0x73be
	.uleb128 0x16
	.long	0x1ea
	.byte	0x3a
	.byte	0
	.uleb128 0x46
	.long	.LASF1400
	.byte	0xa
	.byte	0x50
	.long	0x73c9
	.uleb128 0xc
	.long	0x73ae
	.uleb128 0x46
	.long	.LASF1401
	.byte	0xa
	.byte	0x55
	.long	0x73d9
	.uleb128 0xc
	.long	0x73ae
	.uleb128 0x15
	.long	0x339
	.long	0x73ee
	.uleb128 0x16
	.long	0x1ea
	.byte	0x3a
	.byte	0
	.uleb128 0x46
	.long	.LASF1402
	.byte	0xa
	.byte	0x60
	.long	0x73f9
	.uleb128 0xc
	.long	0x73de
	.uleb128 0x15
	.long	0x648
	.long	0x740e
	.uleb128 0x16
	.long	0x1ea
	.byte	0x3a
	.byte	0
	.uleb128 0x46
	.long	.LASF1403
	.byte	0xa
	.byte	0x6e
	.long	0x7419
	.uleb128 0xc
	.long	0x73fe
	.uleb128 0x46
	.long	.LASF1404
	.byte	0xa
	.byte	0xa4
	.long	0x648
	.uleb128 0x15
	.long	0x332
	.long	0x7439
	.uleb128 0x16
	.long	0x1ea
	.byte	0x98
	.byte	0
	.uleb128 0x46
	.long	.LASF1405
	.byte	0x2
	.byte	0x36
	.long	0x7444
	.uleb128 0xc
	.long	0x7429
	.uleb128 0x15
	.long	0x577
	.long	0x7459
	.uleb128 0x16
	.long	0x1ea
	.byte	0x98
	.byte	0
	.uleb128 0x46
	.long	.LASF1406
	.byte	0x2
	.byte	0x3c
	.long	0x7464
	.uleb128 0xc
	.long	0x7449
	.uleb128 0x15
	.long	0x36a
	.long	0x7479
	.uleb128 0x16
	.long	0x1ea
	.byte	0x98
	.byte	0
	.uleb128 0x46
	.long	.LASF1407
	.byte	0x2
	.byte	0x3f
	.long	0x7484
	.uleb128 0xc
	.long	0x7469
	.uleb128 0x15
	.long	0x2d
	.long	0x7499
	.uleb128 0x16
	.long	0x1ea
	.byte	0x80
	.byte	0
	.uleb128 0x47
	.long	.LASF1408
	.byte	0x2
	.value	0x611
	.long	0x7489
	.uleb128 0x15
	.long	0x2d
	.long	0x74bb
	.uleb128 0x16
	.long	0x1ea
	.byte	0x2
	.uleb128 0x16
	.long	0x1ea
	.byte	0x3a
	.byte	0
	.uleb128 0x47
	.long	.LASF1409
	.byte	0x2
	.value	0x619
	.long	0x74a5
	.uleb128 0x46
	.long	.LASF1410
	.byte	0x4
	.byte	0x31
	.long	0x471a
	.uleb128 0x47
	.long	.LASF1411
	.byte	0xb
	.value	0x1b5
	.long	0x1734
	.uleb128 0x47
	.long	.LASF1412
	.byte	0xb
	.value	0x1b6
	.long	0x1734
	.uleb128 0x47
	.long	.LASF1413
	.byte	0xb
	.value	0x1b7
	.long	0x1734
	.uleb128 0x15
	.long	0x123
	.long	0x7506
	.uleb128 0x16
	.long	0x1ea
	.byte	0x32
	.byte	0
	.uleb128 0x47
	.long	.LASF1414
	.byte	0x4
	.value	0x79b
	.long	0x74f6
	.uleb128 0x15
	.long	0x123
	.long	0x7522
	.uleb128 0x16
	.long	0x1ea
	.byte	0x5
	.byte	0
	.uleb128 0x47
	.long	.LASF1415
	.byte	0x4
	.value	0x97c
	.long	0x7512
	.uleb128 0x47
	.long	.LASF1416
	.byte	0x4
	.value	0xa98
	.long	0x123
	.uleb128 0x47
	.long	.LASF1417
	.byte	0x4
	.value	0xb5b
	.long	0x343c
	.uleb128 0x47
	.long	.LASF1418
	.byte	0x17
	.value	0x12f
	.long	0x1e3
	.uleb128 0x47
	.long	.LASF1419
	.byte	0x17
	.value	0x146
	.long	0x1e3
	.uleb128 0x47
	.long	.LASF1420
	.byte	0x17
	.value	0x14a
	.long	0x1e3
	.uleb128 0x47
	.long	.LASF1421
	.byte	0x17
	.value	0x186
	.long	0x1e3
	.uleb128 0x47
	.long	.LASF1422
	.byte	0x17
	.value	0x18e
	.long	0x1e3
	.uleb128 0x47
	.long	.LASF1423
	.byte	0x17
	.value	0x1c8
	.long	0x1e3
	.uleb128 0x47
	.long	.LASF1424
	.byte	0x17
	.value	0x1e0
	.long	0x1e3
	.uleb128 0x47
	.long	.LASF1425
	.byte	0x17
	.value	0x1e5
	.long	0x1e3
	.uleb128 0x47
	.long	.LASF1426
	.byte	0x17
	.value	0x1e9
	.long	0x1e3
	.uleb128 0x47
	.long	.LASF1427
	.byte	0x17
	.value	0x237
	.long	0x1e3
	.uleb128 0x47
	.long	.LASF1428
	.byte	0x17
	.value	0x25c
	.long	0x1e3
	.uleb128 0x47
	.long	.LASF1429
	.byte	0x17
	.value	0x25d
	.long	0x1e3
	.uleb128 0x47
	.long	.LASF1430
	.byte	0xe
	.value	0x1e4
	.long	0x224b
	.uleb128 0x15
	.long	0x577
	.long	0x75f2
	.uleb128 0x16
	.long	0x1ea
	.byte	0x34
	.byte	0
	.uleb128 0x46
	.long	.LASF1431
	.byte	0x11
	.byte	0xa6
	.long	0x75e2
	.uleb128 0x47
	.long	.LASF1432
	.byte	0x18
	.value	0x1a7
	.long	0x2f41
	.uleb128 0x48
	.long	.LASF1433
	.byte	0x1
	.byte	0x41
	.long	0x577
	.uleb128 0x9
	.byte	0x3
	.quad	first_global_object_name
	.uleb128 0x48
	.long	.LASF1434
	.byte	0x1
	.byte	0x42
	.long	0x577
	.uleb128 0x9
	.byte	0x3
	.quad	weak_global_object_name
	.uleb128 0x46
	.long	.LASF1435
	.byte	0x19
	.byte	0x2f
	.long	0x2e03
	.uleb128 0x46
	.long	.LASF1057
	.byte	0x13
	.byte	0xa8
	.long	0x7649
	.uleb128 0xc
	.long	0x3136
	.uleb128 0x46
	.long	.LASF1436
	.byte	0x14
	.byte	0x6a
	.long	0x7659
	.uleb128 0x3
	.byte	0x8
	.long	0x32d1
	.uleb128 0x46
	.long	.LASF1437
	.byte	0x15
	.byte	0xc1
	.long	0x3719
	.uleb128 0x46
	.long	.LASF1438
	.byte	0x1
	.byte	0x44
	.long	0x1886
	.uleb128 0x48
	.long	.LASF1439
	.byte	0x1
	.byte	0x71
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	const_labelno
	.uleb128 0x48
	.long	.LASF1440
	.byte	0x1
	.byte	0x76
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	var_labelno
	.uleb128 0x48
	.long	.LASF1441
	.byte	0x1
	.byte	0x7b
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	size_directive_output
	.uleb128 0x48
	.long	.LASF1442
	.byte	0x1
	.byte	0x82
	.long	0x123
	.uleb128 0x9
	.byte	0x3
	.quad	last_assemble_variable_decl
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x13
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x29
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB33-.Ltext0
	.quad	.LBE33-.Ltext0
	.quad	.LBB34-.Ltext0
	.quad	.LBE34-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB35-.Ltext0
	.quad	.LBE35-.Ltext0
	.quad	.LBB36-.Ltext0
	.quad	.LBE36-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB37-.Ltext0
	.quad	.LBE37-.Ltext0
	.quad	.LBB38-.Ltext0
	.quad	.LBE38-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB74-.Ltext0
	.quad	.LBE74-.Ltext0
	.quad	.LBB75-.Ltext0
	.quad	.LBE75-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF899:
	.string	"TI_UV8HI_TYPE"
.LASF634:
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
.LASF904:
	.string	"TI_UV16QI_TYPE"
.LASF375:
	.string	"NOTE_INSN_EH_REGION_BEG"
.LASF794:
	.string	"profile_label_no"
.LASF1353:
	.string	"total_bytes"
.LASF349:
	.string	"rtstr"
.LASF919:
	.string	"itk_unsigned_char"
.LASF453:
	.string	"WITH_CLEANUP_EXPR"
.LASF443:
	.string	"VTABLE_REF"
.LASF1229:
	.string	"_ascii_bytes"
.LASF362:
	.string	"NOTE_INSN_DELETED"
.LASF601:
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
.LASF104:
	.string	"_unused2"
.LASF275:
	.string	"UMOD"
.LASF329:
	.string	"min_align"
.LASF530:
	.string	"POSTINCREMENT_EXPR"
.LASF551:
	.string	"BUILT_IN_FABSF"
.LASF466:
	.string	"FLOOR_MOD_EXPR"
.LASF90:
	.string	"_fileno"
.LASF220:
	.string	"DEFINE_COMBINE"
.LASF994:
	.string	"varray_data_tag"
.LASF1351:
	.string	"field"
.LASF1333:
	.string	"mark_constant_pool"
.LASF35:
	.string	"AD_REGS"
.LASF1419:
	.string	"flag_volatile_global"
.LASF1235:
	.string	"asm_dest_common"
.LASF1329:
	.string	"get_pool_offset"
.LASF1378:
	.string	"default_no_named_section"
.LASF951:
	.string	"first"
.LASF1193:
	.string	"asm_output_aligned_bss"
.LASF911:
	.string	"TI_V2SI_TYPE"
.LASF788:
	.string	"inlinable"
.LASF820:
	.string	"uses_const_pool"
.LASF932:
	.string	"decl_required"
.LASF978:
	.string	"x_const_rtx_sym_hash_table"
.LASF872:
	.string	"TI_UINTSI_TYPE"
.LASF316:
	.string	"CONSTANT_P_RTX"
.LASF1116:
	.string	"issue_rate"
.LASF720:
	.string	"tree_type"
.LASF483:
	.string	"RROTATE_EXPR"
.LASF1139:
	.string	"pool_constant"
.LASF1078:
	.string	"gcc_debug_hooks"
.LASF519:
	.string	"ADDR_EXPR"
.LASF949:
	.string	"next"
.LASF26:
	.string	"block"
.LASF936:
	.string	"_Bool"
.LASF1341:
	.string	"endtype"
.LASF1126:
	.string	"attribute_table"
.LASF348:
	.string	"rtuint"
.LASF1265:
	.string	"assemble_real"
.LASF848:
	.string	"pure_flag"
.LASF1065:
	.string	"get_alias_set"
.LASF352:
	.string	"rt_cselib"
.LASF1155:
	.string	"addr_const"
.LASF219:
	.string	"DEFINE_PEEPHOLE2"
.LASF12:
	.string	"rtvec_def"
.LASF793:
	.string	"inl_max_label_num"
.LASF508:
	.string	"IN_EXPR"
.LASF279:
	.string	"LSHIFTRT"
.LASF1120:
	.string	"reorder"
.LASF110:
	.string	"_sch_iscntrl"
.LASF16:
	.string	"common"
.LASF635:
	.string	"BUILT_IN_EH_RETURN"
.LASF213:
	.string	"MATCH_PAR_DUP"
.LASF95:
	.string	"_shortbuf"
.LASF1445:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF274:
	.string	"UDIV"
.LASF10:
	.string	"rtvec"
.LASF116:
	.string	"_sch_isupper"
.LASF491:
	.string	"TRUTH_AND_EXPR"
.LASF1332:
	.string	"fndecl"
.LASF810:
	.string	"contains_functions"
.LASF574:
	.string	"BUILT_IN_STRCPY"
.LASF1414:
	.string	"global_trees"
.LASF645:
	.string	"side_effects_flag"
.LASF207:
	.string	"MATCH_OPERAND"
.LASF891:
	.string	"TI_VOID_TYPE"
.LASF188:
	.string	"CCFPmode"
.LASF637:
	.string	"BUILT_IN_VARARGS_START"
.LASF679:
	.string	"imag"
.LASF129:
	.string	"reg_class"
.LASF1148:
	.string	"in_data"
.LASF535:
	.string	"LABEL_EXPR"
.LASF296:
	.string	"UNLE"
.LASF39:
	.string	"LEGACY_REGS"
.LASF334:
	.string	"max_after_base"
.LASF678:
	.string	"real"
.LASF1023:
	.string	"hashval_t"
.LASF878:
	.string	"TI_NULL_POINTER"
.LASF1210:
	.string	"reg_number"
.LASF1278:
	.string	"const_str_htab_eq"
.LASF297:
	.string	"UNLT"
.LASF415:
	.string	"FILE_TYPE"
.LASF718:
	.string	"fragment_chain"
.LASF1042:
	.string	"lang_hooks_for_tree_inlining"
.LASF674:
	.string	"tree_string"
.LASF499:
	.string	"EQ_EXPR"
.LASF1199:
	.string	"modesize"
.LASF1216:
	.string	"symbol"
.LASF726:
	.string	"no_force_blk_flag"
.LASF1257:
	.string	"default_assemble_integer"
.LASF821:
	.string	"uses_pic_offset_table"
.LASF1098:
	.string	"asm_out"
.LASF717:
	.string	"fragment_origin"
.LASF983:
	.string	"initial_value_struct"
.LASF907:
	.string	"TI_V4SI_TYPE"
.LASF410:
	.string	"CHAR_TYPE"
.LASF614:
	.string	"BUILT_IN_FWRITE"
.LASF160:
	.string	"CTImode"
.LASF76:
	.string	"_flags"
.LASF493:
	.string	"TRUTH_XOR_EXPR"
.LASF839:
	.string	"static_dtor_flag"
.LASF675:
	.string	"length"
.LASF455:
	.string	"PLACEHOLDER_EXPR"
.LASF745:
	.string	"lang_type"
.LASF488:
	.string	"BIT_NOT_EXPR"
.LASF847:
	.string	"built_in_class"
.LASF71:
	.string	"__off_t"
.LASF1421:
	.string	"flag_syntax_only"
.LASF656:
	.string	"public_flag"
.LASF474:
	.string	"FLOAT_EXPR"
.LASF830:
	.string	"inline_flag"
.LASF1302:
	.string	"hash"
.LASF881:
	.string	"TI_BITSIZE_ZERO"
.LASF1312:
	.string	"units"
.LASF433:
	.string	"PARM_DECL"
.LASF158:
	.string	"CSImode"
.LASF41:
	.string	"FP_TOP_REG"
.LASF593:
	.string	"BUILT_IN_COSL"
.LASF318:
	.string	"VEC_MERGE"
.LASF791:
	.string	"original_decl_initial"
.LASF1214:
	.string	"assemble_asm"
.LASF1252:
	.string	"assemble_static_space"
.LASF1073:
	.string	"print_type"
.LASF1102:
	.string	"aligned_op"
.LASF524:
	.string	"CONJ_EXPR"
.LASF1319:
	.string	"mem_for_const_double"
.LASF96:
	.string	"_lock"
.LASF996:
	.string	"uhint"
.LASF251:
	.string	"RETURN"
.LASF564:
	.string	"BUILT_IN_BZERO"
.LASF540:
	.string	"LABELED_BLOCK_EXPR"
.LASF1291:
	.string	"__o1"
.LASF997:
	.string	"generic"
.LASF597:
	.string	"BUILT_IN_ARGS_INFO"
.LASF14:
	.string	"elem"
.LASF194:
	.string	"MODE_FLOAT"
.LASF570:
	.string	"BUILT_IN_MEMCMP"
.LASF612:
	.string	"BUILT_IN_FPUTC"
.LASF604:
	.string	"BUILT_IN_RETURN"
.LASF1233:
	.string	"asm_emit_uninitialised"
.LASF1144:
	.string	"mark"
.LASF652:
	.string	"unused_0"
.LASF668:
	.string	"unused_1"
.LASF869:
	.string	"TI_INTTI_TYPE"
.LASF613:
	.string	"BUILT_IN_FPUTS"
.LASF541:
	.string	"EXIT_BLOCK_EXPR"
.LASF1218:
	.string	"default_named_section_asm_out_destructor"
.LASF338:
	.string	"alias"
.LASF1031:
	.string	"entries"
.LASF335:
	.string	"offset_unsigned"
.LASF1094:
	.string	"deferred_inline_function"
.LASF164:
	.string	"V2SImode"
.LASF619:
	.string	"BUILT_IN_FPUTC_UNLOCKED"
.LASF817:
	.string	"stdarg"
.LASF778:
	.string	"x_trampoline_list"
.LASF412:
	.string	"OFFSET_TYPE"
.LASF888:
	.string	"TI_FLOAT_TYPE"
.LASF19:
	.string	"vector"
.LASF36:
	.string	"Q_REGS"
.LASF539:
	.string	"LOOP_EXPR"
.LASF238:
	.string	"CODE_LABEL"
.LASF620:
	.string	"BUILT_IN_FPUTS_UNLOCKED"
.LASF159:
	.string	"CDImode"
.LASF244:
	.string	"UNSPEC"
.LASF531:
	.string	"VA_ARG_EXPR"
.LASF586:
	.string	"BUILT_IN_SIN"
.LASF237:
	.string	"BARRIER"
.LASF894:
	.string	"TI_PTRDIFF_TYPE"
.LASF368:
	.string	"NOTE_INSN_LOOP_VTOP"
.LASF240:
	.string	"COND_EXEC"
.LASF254:
	.string	"CONST_INT"
.LASF1264:
	.string	"partial"
.LASF250:
	.string	"CALL"
.LASF988:
	.string	"EXPAND_NORMAL"
.LASF1394:
	.string	"defer_addressed_constants_flag"
.LASF1147:
	.string	"in_text"
.LASF61:
	.string	"maybe_vaarg"
.LASF799:
	.string	"epilogue_delay_list"
.LASF850:
	.string	"uninlinable"
.LASF1375:
	.string	"make_decl_one_only"
.LASF448:
	.string	"TARGET_EXPR"
.LASF1086:
	.string	"source_line"
.LASF166:
	.string	"V4QImode"
.LASF229:
	.string	"ATTR"
.LASF633:
	.string	"BUILT_IN_FROB_RETURN_ADDR"
.LASF1305:
	.string	"after_function"
.LASF1431:
	.string	"reg_names"
.LASF350:
	.string	"rttype"
.LASF1112:
	.string	"constructor"
.LASF1108:
	.string	"function_epilogue"
.LASF1406:
	.string	"rtx_format"
.LASF1243:
	.string	"xname"
.LASF30:
	.string	"DREG"
.LASF707:
	.string	"complexity"
.LASF48:
	.string	"FLOAT_SSE_REGS"
.LASF392:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF721:
	.string	"values"
.LASF670:
	.string	"tree_int_cst"
.LASF1050:
	.string	"anon_aggr_type_p"
.LASF589:
	.string	"BUILT_IN_SINF"
.LASF165:
	.string	"V2DImode"
.LASF768:
	.string	"x_return_label"
.LASF592:
	.string	"BUILT_IN_SINL"
.LASF649:
	.string	"readonly_flag"
.LASF1382:
	.string	"default_pe_asm_named_section"
.LASF469:
	.string	"EXACT_DIV_EXPR"
.LASF1022:
	.string	"varray_type"
.LASF343:
	.string	"mem_attrs"
.LASF1399:
	.string	"_sch_istable"
.LASF82:
	.string	"_IO_write_end"
.LASF222:
	.string	"DEFINE_DELAY"
.LASF1271:
	.string	"clear_const_double_mem"
.LASF272:
	.string	"MINUS"
.LASF775:
	.string	"x_clobber_return_insn"
.LASF33:
	.string	"SIREG"
.LASF1433:
	.string	"first_global_object_name"
.LASF977:
	.string	"x_const_rtx_hash_table"
.LASF506:
	.string	"UNGE_EXPR"
.LASF1002:
	.string	"sched_info_tag"
.LASF569:
	.string	"BUILT_IN_MEMCPY"
.LASF436:
	.string	"NAMESPACE_DECL"
.LASF262:
	.string	"STRICT_LOW_PART"
.LASF1380:
	.string	"flagchars"
.LASF1359:
	.string	"align2"
.LASF965:
	.string	"x_regno_reg_rtx"
.LASF1234:
	.string	"rounded"
.LASF1290:
	.string	"__len"
.LASF204:
	.string	"INCLUDE"
.LASF1279:
	.string	"const_str_htab_del"
.LASF388:
	.string	"GR_FRAME_POINTER"
.LASF644:
	.string	"chain"
.LASF1328:
	.string	"get_pool_mode_for_function"
.LASF1009:
	.string	"freq"
.LASF300:
	.string	"ZERO_EXTEND"
.LASF598:
	.string	"BUILT_IN_CONSTANT_P"
.LASF303:
	.string	"FLOAT_TRUNCATE"
.LASF972:
	.string	"x_forced_labels"
.LASF624:
	.string	"BUILT_IN_ISGREATEREQUAL"
.LASF630:
	.string	"BUILT_IN_DWARF_CFA"
.LASF421:
	.string	"FUNCTION_TYPE"
.LASF759:
	.string	"internal_arg_pointer"
.LASF1138:
	.string	"constant_descriptor"
.LASF824:
	.string	"tree_decl"
.LASF1106:
	.string	"function_end_prologue"
.LASF385:
	.string	"GR_PC"
.LASF1262:
	.string	"subalign"
.LASF1362:
	.string	"this_time"
.LASF1215:
	.string	"default_stabs_asm_out_destructor"
.LASF32:
	.string	"BREG"
.LASF175:
	.string	"V2SFmode"
.LASF1016:
	.string	"varray_data"
.LASF985:
	.string	"machine_function"
.LASF1360:
	.string	"next_offset"
.LASF304:
	.string	"FLOAT"
.LASF1109:
	.string	"named_section"
.LASF130:
	.string	"machine_mode"
.LASF420:
	.string	"QUAL_UNION_TYPE"
.LASF1136:
	.string	"have_ctors_dtors"
.LASF688:
	.string	"chunk"
.LASF1043:
	.string	"walk_subtrees"
.LASF1196:
	.string	"variable_section"
.LASF355:
	.string	"rtmem"
.LASF787:
	.string	"fixup_var_refs_queue"
.LASF1177:
	.string	"in_data_section"
.LASF313:
	.string	"RANGE_REG"
.LASF353:
	.string	"rtbit"
.LASF536:
	.string	"GOTO_EXPR"
.LASF3:
	.string	"call"
.LASF137:
	.string	"TImode"
.LASF1303:
	.string	"defstr"
.LASF289:
	.string	"PRE_MODIFY"
.LASF1195:
	.string	"function_section"
.LASF447:
	.string	"INIT_EXPR"
.LASF802:
	.string	"returns_pointer"
.LASF482:
	.string	"LROTATE_EXPR"
.LASF118:
	.string	"_sch_isidst"
.LASF671:
	.string	"realvaluetype"
.LASF302:
	.string	"FLOAT_EXTEND"
.LASF567:
	.string	"BUILT_IN_INDEX"
.LASF441:
	.string	"ARRAY_REF"
.LASF513:
	.string	"NOP_EXPR"
.LASF748:
	.string	"stmt"
.LASF6:
	.string	"in_struct"
.LASF1149:
	.string	"in_named"
.LASF363:
	.string	"NOTE_INSN_BLOCK_BEG"
.LASF1162:
	.string	"RTX_UNSPEC"
.LASF1212:
	.string	"make_var_volatile"
.LASF135:
	.string	"SImode"
.LASF246:
	.string	"ADDR_VEC"
.LASF1049:
	.string	"copy_res_decl_for_inlining"
.LASF1288:
	.string	"zero"
.LASF975:
	.string	"stmt_status"
.LASF176:
	.string	"V2DFmode"
.LASF467:
	.string	"ROUND_MOD_EXPR"
.LASF328:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF1047:
	.string	"tree_chain_matters_p"
.LASF658:
	.string	"protected_flag"
.LASF24:
	.string	"type"
.LASF60:
	.string	"sse_regno"
.LASF1347:
	.string	"array_size_for_constructor"
.LASF795:
	.string	"machine"
.LASF1253:
	.string	"namestring"
.LASF463:
	.string	"ROUND_DIV_EXPR"
.LASF1093:
	.string	"global_decl"
.LASF265:
	.string	"SYMBOL_REF"
.LASF361:
	.string	"NOTE_INSN_BIAS"
.LASF1088:
	.string	"end_prologue"
.LASF1404:
	.string	"word_mode"
.LASF163:
	.string	"V2HImode"
.LASF862:
	.string	"lang_decl"
.LASF478:
	.string	"ABS_EXPR"
.LASF126:
	.string	"_sch_isbasic"
.LASF383:
	.string	"NOTE_INSN_MAX"
.LASF970:
	.string	"x_saveregs_value"
.LASF1297:
	.string	"copy_constant"
.LASF1420:
	.string	"flag_volatile_static"
.LASF712:
	.string	"block_num"
.LASF218:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF270:
	.string	"COMPARE"
.LASF298:
	.string	"LTGT"
.LASF1255:
	.string	"aligned_p"
.LASF1183:
	.string	"named_section_first_declaration"
.LASF706:
	.string	"tree_exp"
.LASF1169:
	.string	"deferred_constant"
.LASF1207:
	.string	"make_decl_rtl"
.LASF692:
	.string	"temp"
.LASF948:
	.string	"unsignedp"
.LASF310:
	.string	"HIGH"
.LASF267:
	.string	"QUEUED"
.LASF37:
	.string	"NON_Q_REGS"
.LASF1129:
	.string	"insert_attributes"
.LASF1072:
	.string	"print_decl"
.LASF1:
	.string	"mode"
.LASF136:
	.string	"DImode"
.LASF682:
	.string	"_obstack_chunk"
.LASF490:
	.string	"TRUTH_ORIF_EXPR"
.LASF547:
	.string	"BUILT_IN_ALLOCA"
.LASF1415:
	.string	"sizetype_tab"
.LASF1013:
	.string	"basic_block"
.LASF993:
	.string	"const_equiv_data"
.LASF761:
	.string	"hard_reg_initial_vals"
.LASF1161:
	.string	"RTX_VECTOR"
.LASF1124:
	.string	"merge_decl_attributes"
.LASF1320:
	.string	"force_const_mem"
.LASF1048:
	.string	"auto_var_in_fn_p"
.LASF968:
	.string	"x_inhibit_defer_pop"
.LASF925:
	.string	"itk_unsigned_long"
.LASF89:
	.string	"_chain"
.LASF933:
	.string	"type_required"
.LASF1118:
	.string	"md_init"
.LASF1219:
	.string	"default_stabs_asm_out_constructor"
.LASF288:
	.string	"POST_INC"
.LASF452:
	.string	"METHOD_CALL_EXPR"
.LASF1331:
	.string	"output_constant_pool"
.LASF874:
	.string	"TI_UINTTI_TYPE"
.LASF1221:
	.string	"assemble_start_function"
.LASF1176:
	.string	"in_text_section"
.LASF1274:
	.string	"mark_const_hash_entry"
.LASF838:
	.string	"static_ctor_flag"
.LASF149:
	.string	"TFmode"
.LASF418:
	.string	"RECORD_TYPE"
.LASF67:
	.string	"unsigned char"
.LASF984:
	.string	"temp_slot"
.LASF42:
	.string	"FP_SECOND_REG"
.LASF650:
	.string	"unsigned_flag"
.LASF1059:
	.string	"init_options"
.LASF1295:
	.string	"output_deferred_addressed_constants"
.LASF1340:
	.string	"initializer_constant_valid_p"
.LASF852:
	.string	"arguments"
.LASF1027:
	.string	"htab"
.LASF760:
	.string	"cannot_inline"
.LASF1293:
	.string	"nbytes"
.LASF1402:
	.string	"mode_bitsize"
.LASF1446:
	.string	"_IO_lock_t"
.LASF1403:
	.string	"inner_mode_array"
.LASF893:
	.string	"TI_CONST_PTR_TYPE"
.LASF744:
	.string	"lang_specific"
.LASF1307:
	.string	"init_varasm_status"
.LASF926:
	.string	"itk_long_long"
.LASF687:
	.string	"chunk_size"
.LASF1032:
	.string	"n_elements"
.LASF929:
	.string	"attribute_spec"
.LASF132:
	.string	"BImode"
.LASF286:
	.string	"PRE_INC"
.LASF146:
	.string	"SFmode"
.LASF1205:
	.string	"number"
.LASF1099:
	.string	"open_paren"
.LASF117:
	.string	"_sch_isxdigit"
.LASF1357:
	.string	"lo_index"
.LASF1277:
	.string	"const_str_htab_hash"
.LASF749:
	.string	"emit"
.LASF729:
	.string	"packed_flag"
.LASF484:
	.string	"BIT_IOR_EXPR"
.LASF548:
	.string	"BUILT_IN_ABS"
.LASF430:
	.string	"CONST_DECL"
.LASF673:
	.string	"tree_real_cst"
.LASF1280:
	.string	"dfsp"
.LASF1097:
	.string	"asm_int_op"
.LASF1296:
	.string	"output_after_function_constants"
.LASF435:
	.string	"FIELD_DECL"
.LASF235:
	.string	"JUMP_INSN"
.LASF1273:
	.string	"target"
.LASF921:
	.string	"itk_unsigned_short"
.LASF1119:
	.string	"md_finish"
.LASF558:
	.string	"BUILT_IN_CREAL"
.LASF1436:
	.string	"debug_hooks"
.LASF198:
	.string	"MODE_COMPLEX_FLOAT"
.LASF1174:
	.string	"force_data_section"
.LASF1182:
	.string	"get_named_section_flags"
.LASF354:
	.string	"rttree"
.LASF829:
	.string	"regdecl_flag"
.LASF554:
	.string	"BUILT_IN_IMAXABS"
.LASF409:
	.string	"BOOLEAN_TYPE"
.LASF563:
	.string	"BUILT_IN_CIMAGL"
.LASF1005:
	.string	"last_uid"
.LASF689:
	.string	"object_base"
.LASF360:
	.string	"insn_note"
.LASF1165:
	.string	"vechi"
.LASF379:
	.string	"NOTE_INSN_RANGE_END"
.LASF217:
	.string	"DEFINE_SPLIT"
.LASF809:
	.string	"has_nonlocal_goto"
.LASF823:
	.string	"arg_pointer_save_area_init"
.LASF623:
	.string	"BUILT_IN_ISGREATER"
.LASF607:
	.string	"BUILT_IN_TRAP"
.LASF1146:
	.string	"no_section"
.LASF256:
	.string	"CONST_VECTOR"
.LASF516:
	.string	"SAVE_EXPR"
.LASF214:
	.string	"MATCH_INSN"
.LASF669:
	.string	"high"
.LASF1025:
	.string	"htab_eq"
.LASF1062:
	.string	"init"
.LASF910:
	.string	"TI_V4HI_TYPE"
.LASF769:
	.string	"x_save_expr_regs"
.LASF1083:
	.string	"begin_block"
.LASF147:
	.string	"DFmode"
.LASF44:
	.string	"SSE_REGS"
.LASF65:
	.string	"size_t"
.LASF248:
	.string	"PREFETCH"
.LASF53:
	.string	"LIM_REG_CLASSES"
.LASF52:
	.string	"ALL_REGS"
.LASF752:
	.string	"pops_args"
.LASF141:
	.string	"PSImode"
.LASF771:
	.string	"x_rtl_expr_chain"
.LASF573:
	.string	"BUILT_IN_STRNCAT"
.LASF1178:
	.string	"in_named_entry_eq"
.LASF1417:
	.string	"lang_set_decl_assembler_name"
.LASF312:
	.string	"RANGE_INFO"
.LASF1141:
	.string	"next_sym"
.LASF939:
	.string	"SSIZETYPE"
.LASF1058:
	.string	"identifier_size"
.LASF1037:
	.string	"htab_t"
.LASF1358:
	.string	"hi_index"
.LASF345:
	.string	"rtunion_def"
.LASF428:
	.string	"FUNCTION_DECL"
.LASF992:
	.string	"EXPAND_WRITE"
.LASF626:
	.string	"BUILT_IN_ISLESSEQUAL"
.LASF228:
	.string	"DEFINE_ATTR"
.LASF940:
	.string	"USIZETYPE"
.LASF449:
	.string	"COND_EXPR"
.LASF230:
	.string	"SET_ATTR"
.LASF155:
	.string	"TCmode"
.LASF763:
	.string	"x_nonlocal_labels"
.LASF470:
	.string	"FIX_TRUNC_EXPR"
.LASF305:
	.string	"UNSIGNED_FLOAT"
.LASF1125:
	.string	"merge_type_attributes"
.LASF1247:
	.string	"assemble_external_libcall"
.LASF356:
	.string	"cselib_val_struct"
.LASF382:
	.string	"NOTE_INSN_EXPECTED_VALUE"
.LASF81:
	.string	"_IO_write_ptr"
.LASF1411:
	.string	"dconst0"
.LASF1412:
	.string	"dconst1"
.LASF685:
	.string	"contents"
.LASF406:
	.string	"COMPLEX_TYPE"
.LASF277:
	.string	"ROTATE"
.LASF608:
	.string	"BUILT_IN_PREFETCH"
.LASF1089:
	.string	"end_epilogue"
.LASF480:
	.string	"LSHIFT_EXPR"
.LASF1008:
	.string	"refs"
.LASF301:
	.string	"TRUNCATE"
.LASF152:
	.string	"SCmode"
.LASF1107:
	.string	"function_begin_epilogue"
.LASF1405:
	.string	"rtx_length"
.LASF393:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF916:
	.string	"integer_type_kind"
.LASF142:
	.string	"PDImode"
.LASF423:
	.string	"INTEGER_CST"
.LASF431:
	.string	"TYPE_DECL"
.LASF885:
	.string	"TI_COMPLEX_FLOAT_TYPE"
.LASF999:
	.string	"bitmap"
.LASF792:
	.string	"inl_last_parm_insn"
.LASF373:
	.string	"NOTE_INSN_DELETED_LABEL"
.LASF1407:
	.string	"rtx_class"
.LASF740:
	.string	"main_variant"
.LASF1282:
	.string	"link"
.LASF1153:
	.string	"flags"
.LASF527:
	.string	"PREDECREMENT_EXPR"
.LASF877:
	.string	"TI_INTEGER_MINUS_ONE"
.LASF1239:
	.string	"assemble_variable"
.LASF890:
	.string	"TI_LONG_DOUBLE_TYPE"
.LASF205:
	.string	"EXPR_LIST"
.LASF232:
	.string	"EQ_ATTR"
.LASF655:
	.string	"static_flag"
.LASF887:
	.string	"TI_COMPLEX_LONG_DOUBLE_TYPE"
.LASF1363:
	.string	"shift"
.LASF185:
	.string	"CCGOCmode"
.LASF263:
	.string	"CONCAT"
.LASF584:
	.string	"BUILT_IN_STRRCHR"
.LASF1423:
	.string	"flag_pic"
.LASF906:
	.string	"TI_V16SF_TYPE"
.LASF331:
	.string	"min_after_vec"
.LASF886:
	.string	"TI_COMPLEX_DOUBLE_TYPE"
.LASF120:
	.string	"_sch_isnvsp"
.LASF74:
	.string	"FILE"
.LASF269:
	.string	"COND"
.LASF407:
	.string	"VECTOR_TYPE"
.LASF195:
	.string	"MODE_PARTIAL_INT"
.LASF779:
	.string	"x_parm_birth_insn"
.LASF1164:
	.string	"veclo"
.LASF781:
	.string	"x_max_parm_reg"
.LASF1188:
	.string	"flag_function_or_data_sections"
.LASF565:
	.string	"BUILT_IN_BCMP"
.LASF15:
	.string	"tree"
.LASF979:
	.string	"x_first_pool"
.LASF743:
	.string	"alias_set"
.LASF153:
	.string	"DCmode"
.LASF1060:
	.string	"decode_option"
.LASF1294:
	.string	"defer_addressed_constants"
.LASF1080:
	.string	"undef"
.LASF124:
	.string	"_sch_isgraph"
.LASF1443:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF487:
	.string	"BIT_ANDTC_EXPR"
.LASF892:
	.string	"TI_PTR_TYPE"
.LASF773:
	.string	"x_tail_recursion_reentry"
.LASF22:
	.string	"identifier"
.LASF278:
	.string	"ASHIFTRT"
.LASF1388:
	.string	"in_named_name"
.LASF1090:
	.string	"begin_function"
.LASF183:
	.string	"CCmode"
.LASF636:
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
.LASF628:
	.string	"BUILT_IN_ISUNORDERED"
.LASF711:
	.string	"abstract_flag"
.LASF43:
	.string	"FLOAT_REGS"
.LASF366:
	.string	"NOTE_INSN_LOOP_END"
.LASF1381:
	.string	"default_coff_asm_named_section"
.LASF181:
	.string	"V16SFmode"
.LASF1372:
	.string	"globalize_decl"
.LASF854:
	.string	"initial"
.LASF489:
	.string	"TRUTH_ANDIF_EXPR"
.LASF380:
	.string	"NOTE_INSN_LIVE"
.LASF1373:
	.string	"assemble_alias"
.LASF225:
	.string	"DEFINE_COND_EXEC"
.LASF85:
	.string	"_IO_save_base"
.LASF1424:
	.string	"flag_inhibit_size_directive"
.LASF938:
	.string	"SIZETYPE"
.LASF1163:
	.string	"addr"
.LASF945:
	.string	"var_refs_queue"
.LASF1145:
	.string	"in_section"
.LASF969:
	.string	"x_stack_pointer_delta"
.LASF1276:
	.string	"mark_const_str_htab"
.LASF494:
	.string	"TRUTH_NOT_EXPR"
.LASF221:
	.string	"DEFINE_EXPAND"
.LASF475:
	.string	"NEGATE_EXPR"
.LASF1191:
	.string	"bss_section"
.LASF812:
	.string	"is_thunk"
.LASF1323:
	.string	"get_pool_constant"
.LASF1019:
	.string	"elements_used"
.LASF172:
	.string	"V8SImode"
.LASF765:
	.string	"x_nonlocal_goto_handler_labels"
.LASF234:
	.string	"INSN"
.LASF347:
	.string	"rtint"
.LASF638:
	.string	"BUILT_IN_STDARG_START"
.LASF844:
	.string	"comdat_flag"
.LASF980:
	.string	"x_last_pool"
.LASF868:
	.string	"TI_INTDI_TYPE"
.LASF1365:
	.string	"next_bit"
.LASF264:
	.string	"LABEL_REF"
.LASF1130:
	.string	"function_attribute_inlinable_p"
.LASF873:
	.string	"TI_UINTDI_TYPE"
.LASF1300:
	.string	"output_constant_def"
.LASF416:
	.string	"ARRAY_TYPE"
.LASF883:
	.string	"TI_BITSIZE_UNIT"
.LASF1338:
	.string	"current_rtx"
.LASF1015:
	.string	"elt_list"
.LASF1220:
	.string	"default_named_section_asm_out_constructor"
.LASF1367:
	.string	"merge_weak"
.LASF1374:
	.string	"supports_one_only"
.LASF1018:
	.string	"num_elements"
.LASF1194:
	.string	"file"
.LASF370:
	.string	"NOTE_INSN_FUNCTION_END"
.LASF99:
	.string	"__pad2"
.LASF1390:
	.string	"const_hash_table"
.LASF510:
	.string	"CARD_EXPR"
.LASF1128:
	.string	"set_default_type_attributes"
.LASF0:
	.string	"code"
.LASF17:
	.string	"int_cst"
.LASF1123:
	.string	"gcc_target"
.LASF889:
	.string	"TI_DOUBLE_TYPE"
.LASF981:
	.string	"x_pool_offset"
.LASF606:
	.string	"BUILT_IN_LONGJMP"
.LASF680:
	.string	"tree_vector"
.LASF414:
	.string	"METHOD_TYPE"
.LASF1384:
	.string	"assemble_vtable_inherit"
.LASF184:
	.string	"CCGCmode"
.LASF1256:
	.string	"assemble_integer_with_op"
.LASF1159:
	.string	"RTX_DOUBLE"
.LASF1051:
	.string	"start_inlining"
.LASF25:
	.string	"list"
.LASF512:
	.string	"CONVERT_EXPR"
.LASF1410:
	.string	"tree_code_type"
.LASF260:
	.string	"SCRATCH"
.LASF170:
	.string	"V8QImode"
.LASF1225:
	.string	"assemble_align"
.LASF464:
	.string	"TRUNC_MOD_EXPR"
.LASF173:
	.string	"V8DImode"
.LASF201:
	.string	"MAX_MODE_CLASS"
.LASF1160:
	.string	"RTX_INT"
.LASF927:
	.string	"itk_unsigned_long_long"
.LASF1430:
	.string	"cfun"
.LASF112:
	.string	"_sch_islower"
.LASF1245:
	.string	"fields"
.LASF1053:
	.string	"convert_parm_for_inlining"
.LASF460:
	.string	"TRUNC_DIV_EXPR"
.LASF299:
	.string	"SIGN_EXTEND"
.LASF804:
	.string	"calls_setjmp"
.LASF517:
	.string	"UNSAVE_EXPR"
.LASF1241:
	.string	"dont_output_data"
.LASF1250:
	.string	"assemble_name"
.LASF459:
	.string	"MULT_EXPR"
.LASF704:
	.string	"value"
.LASF1408:
	.string	"const_int_rtx"
.LASF321:
	.string	"VEC_DUPLICATE"
.LASF498:
	.string	"GE_EXPR"
.LASF766:
	.string	"x_nonlocal_goto_stack_level"
.LASF398:
	.string	"ERROR_MARK"
.LASF106:
	.string	"_next"
.LASF580:
	.string	"BUILT_IN_STRPBRK"
.LASF520:
	.string	"REFERENCE_EXPR"
.LASF339:
	.string	"expr"
.LASF465:
	.string	"CEIL_MOD_EXPR"
.LASF376:
	.string	"NOTE_INSN_EH_REGION_END"
.LASF719:
	.string	"address"
.LASF694:
	.string	"chunkfun"
.LASF1336:
	.string	"format_ptr"
.LASF1395:
	.string	"weak_decls"
.LASF660:
	.string	"deprecated_flag"
.LASF609:
	.string	"BUILT_IN_PUTCHAR"
.LASF1263:
	.string	"subsize"
.LASF934:
	.string	"function_type_required"
.LASF1301:
	.string	"defer"
.LASF764:
	.string	"x_nonlocal_goto_handler_slots"
.LASF179:
	.string	"V8SFmode"
.LASF461:
	.string	"CEIL_DIV_EXPR"
.LASF1334:
	.string	"insn"
.LASF599:
	.string	"BUILT_IN_FRAME_ADDRESS"
.LASF34:
	.string	"DIREG"
.LASF1275:
	.string	"mark_const_str_htab_1"
.LASF1181:
	.string	"slot"
.LASF243:
	.string	"ASM_OPERANDS"
.LASF857:
	.string	"live_range_rtl"
.LASF784:
	.string	"x_temp_slot_level"
.LASF737:
	.string	"minval"
.LASF782:
	.string	"x_parm_reg_stack_loc"
.LASF187:
	.string	"CCZmode"
.LASF1104:
	.string	"integer"
.LASF367:
	.string	"NOTE_INSN_LOOP_CONT"
.LASF1292:
	.string	"record_constant_1"
.LASF38:
	.string	"INDEX_REGS"
.LASF462:
	.string	"FLOOR_DIV_EXPR"
.LASF400:
	.string	"TREE_LIST"
.LASF1248:
	.string	"assemble_global"
.LASF1267:
	.string	"immed_double_const"
.LASF1200:
	.string	"unit"
.LASF865:
	.string	"TI_INTQI_TYPE"
.LASF1105:
	.string	"function_prologue"
.LASF716:
	.string	"abstract_origin"
.LASF427:
	.string	"STRING_CST"
.LASF495:
	.string	"LT_EXPR"
.LASF750:
	.string	"varasm"
.LASF1082:
	.string	"end_source_file"
.LASF247:
	.string	"ADDR_DIFF_VEC"
.LASF485:
	.string	"BIT_XOR_EXPR"
.LASF543:
	.string	"SWITCH_EXPR"
.LASF492:
	.string	"TRUTH_OR_EXPR"
.LASF814:
	.string	"profile"
.LASF309:
	.string	"ZERO_EXTRACT"
.LASF995:
	.string	"hint"
.LASF242:
	.string	"ASM_INPUT"
.LASF534:
	.string	"GOTO_SUBROUTINE_EXPR"
.LASF700:
	.string	"ht_identifier"
.LASF292:
	.string	"ORDERED"
.LASF180:
	.string	"V8DFmode"
.LASF947:
	.string	"promoted_mode"
.LASF855:
	.string	"assembler_name"
.LASF1029:
	.string	"eq_f"
.LASF1348:
	.string	"max_index"
.LASF1110:
	.string	"exception_section"
.LASF476:
	.string	"MIN_EXPR"
.LASF898:
	.string	"TI_UV4SI_TYPE"
.LASF1010:
	.string	"deaths"
.LASF1056:
	.string	"type_quals"
.LASF727:
	.string	"needs_constructing_flag"
.LASF306:
	.string	"UNSIGNED_FIX"
.LASF1208:
	.string	"top_level"
.LASF471:
	.string	"FIX_CEIL_EXPR"
.LASF801:
	.string	"returns_pcc_struct"
.LASF577:
	.string	"BUILT_IN_STRNCMP"
.LASF1304:
	.string	"found"
.LASF1387:
	.string	"const_alias_set"
.LASF1259:
	.string	"force"
.LASF677:
	.string	"tree_complex"
.LASF1113:
	.string	"destructor"
.LASF58:
	.string	"sse_words"
.LASF40:
	.string	"GENERAL_REGS"
.LASF496:
	.string	"LE_EXPR"
.LASF1398:
	.string	"stderr"
.LASF846:
	.string	"no_limit_stack"
.LASF853:
	.string	"result"
.LASF1103:
	.string	"unaligned_op"
.LASF736:
	.string	"name"
.LASF206:
	.string	"INSN_LIST"
.LASF107:
	.string	"_sbuf"
.LASF1397:
	.string	"ix86_debug_addr_string"
.LASF314:
	.string	"RANGE_VAR"
.LASF1014:
	.string	"changes_mode"
.LASF87:
	.string	"_IO_save_end"
.LASF1101:
	.string	"byte_op"
.LASF1121:
	.string	"reorder2"
.LASF193:
	.string	"MODE_INT"
.LASF1020:
	.string	"element_size"
.LASF18:
	.string	"real_cst"
.LASF477:
	.string	"MAX_EXPR"
.LASF756:
	.string	"arg_offset_rtx"
.LASF2:
	.string	"jump"
.LASF709:
	.string	"tree_block"
.LASF57:
	.string	"regno"
.LASF879:
	.string	"TI_SIZE_ZERO"
.LASF966:
	.string	"expr_status"
.LASF1117:
	.string	"variable_issue"
.LASF714:
	.string	"subblocks"
.LASF1401:
	.string	"mode_unit_size"
.LASF1036:
	.string	"return_allocation_failure"
.LASF808:
	.string	"has_nonlocal_label"
.LASF920:
	.string	"itk_short"
.LASF571:
	.string	"BUILT_IN_MEMSET"
.LASF315:
	.string	"RANGE_LIVE"
.LASF967:
	.string	"x_pending_stack_adjust"
.LASF468:
	.string	"RDIV_EXPR"
.LASF753:
	.string	"args_size"
.LASF9:
	.string	"frame_related"
.LASF832:
	.string	"virtual_flag"
.LASF1001:
	.string	"const_equiv"
.LASF731:
	.string	"pointer_depth"
.LASF676:
	.string	"pointer"
.LASF429:
	.string	"LABEL_DECL"
.LASF1143:
	.string	"labelno"
.LASF642:
	.string	"END_BUILTINS"
.LASF351:
	.string	"rt_addr_diff_vec_flags"
.LASF941:
	.string	"BITSIZETYPE"
.LASF390:
	.string	"GR_ARG_POINTER"
.LASF27:
	.string	"sizetype"
.LASF47:
	.string	"FP_SECOND_SSE_REGS"
.LASF324:
	.string	"SS_MINUS"
.LASF425:
	.string	"COMPLEX_CST"
.LASF211:
	.string	"MATCH_PARALLEL"
.LASF168:
	.string	"V4SImode"
.LASF5:
	.string	"volatil"
.LASF1085:
	.string	"ignore_block"
.LASF643:
	.string	"tree_common"
.LASF741:
	.string	"binfo"
.LASF882:
	.string	"TI_BITSIZE_ONE"
.LASF1269:
	.string	"immed_real_const_1"
.LASF68:
	.string	"short unsigned int"
.LASF111:
	.string	"_sch_isdigit"
.LASF69:
	.string	"signed char"
.LASF876:
	.string	"TI_INTEGER_ONE"
.LASF210:
	.string	"MATCH_OPERATOR"
.LASF1204:
	.string	"asmspec"
.LASF1075:
	.string	"set_yydebug"
.LASF703:
	.string	"purpose"
.LASF780:
	.string	"x_last_parm_insn"
.LASF866:
	.string	"TI_INTHI_TYPE"
.LASF1017:
	.string	"varray_head_tag"
.LASF733:
	.string	"pointer_to"
.LASF1339:
	.string	"output_addressed_constants"
.LASF841:
	.string	"weak_flag"
.LASF858:
	.string	"saved_tree"
.LASF959:
	.string	"x_cur_insn_uid"
.LASF705:
	.string	"tree_vec"
.LASF973:
	.string	"x_pending_chain"
.LASF825:
	.string	"filename"
.LASF326:
	.string	"SS_TRUNCATE"
.LASF529:
	.string	"POSTDECREMENT_EXPR"
.LASF1236:
	.string	"asm_dest_bss"
.LASF1434:
	.string	"weak_global_object_name"
.LASF1242:
	.string	"decl_rtl"
.LASF617:
	.string	"BUILT_IN_PUTS_UNLOCKED"
.LASF789:
	.string	"no_debugging_symbols"
.LASF1114:
	.string	"adjust_cost"
.LASF621:
	.string	"BUILT_IN_FWRITE_UNLOCKED"
.LASF1180:
	.string	"section"
.LASF330:
	.string	"base_after_vec"
.LASF215:
	.string	"DEFINE_INSN"
.LASF72:
	.string	"__off64_t"
.LASF915:
	.string	"TI_MAX"
.LASF169:
	.string	"V4DImode"
.LASF698:
	.string	"maybe_empty_object"
.LASF654:
	.string	"nothrow_flag"
.LASF1251:
	.string	"real_name"
.LASF79:
	.string	"_IO_read_base"
.LASF50:
	.string	"INT_SSE_REGS"
.LASF1142:
	.string	"constant"
.LASF533:
	.string	"TRY_FINALLY_EXPR"
.LASF97:
	.string	"_offset"
.LASF20:
	.string	"string"
.LASF1041:
	.string	"lang_print_tree_hook"
.LASF1370:
	.string	"declare_weak"
.LASF391:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF987:
	.string	"expand_modifier"
.LASF497:
	.string	"GT_EXPR"
.LASF961:
	.string	"x_last_filename"
.LASF84:
	.string	"_IO_buf_end"
.LASF735:
	.string	"symtab"
.LASF1168:
	.string	"deferred_string"
.LASF224:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF325:
	.string	"US_MINUS"
.LASF1223:
	.string	"assemble_end_function"
.LASF1366:
	.string	"mark_weak"
.LASF900:
	.string	"TI_UV8QI_TYPE"
.LASF758:
	.string	"return_rtx"
.LASF46:
	.string	"FP_TOP_SSE_REGS"
.LASF437:
	.string	"COMPONENT_REF"
.LASF308:
	.string	"SIGN_EXTRACT"
.LASF833:
	.string	"ignored_flag"
.LASF8:
	.string	"integrated"
.LASF1011:
	.string	"live_length"
.LASF458:
	.string	"MINUS_EXPR"
.LASF249:
	.string	"CLOBBER"
.LASF739:
	.string	"next_variant"
.LASF103:
	.string	"_mode"
.LASF199:
	.string	"MODE_VECTOR_INT"
.LASF1209:
	.string	"new_name"
.LASF80:
	.string	"_IO_write_base"
.LASF1270:
	.string	"immed_real_const"
.LASF317:
	.string	"CALL_PLACEHOLDER"
.LASF1034:
	.string	"searches"
.LASF747:
	.string	"function"
.LASF581:
	.string	"BUILT_IN_STRSPN"
.LASF177:
	.string	"V4SFmode"
.LASF1158:
	.string	"RTX_UNKNOWN"
.LASF1054:
	.string	"lang_hooks_for_tree_dump"
.LASF1383:
	.string	"assemble_vtable_entry"
.LASF445:
	.string	"COMPOUND_EXPR"
.LASF813:
	.string	"instrument_entry_exit"
.LASF870:
	.string	"TI_UINTQI_TYPE"
.LASF1260:
	.string	"omode"
.LASF1222:
	.string	"fnname"
.LASF1437:
	.string	"targetm"
.LASF1311:
	.string	"decode_rtx_const"
.LASF776:
	.string	"x_frame_offset"
.LASF600:
	.string	"BUILT_IN_RETURN_ADDRESS"
.LASF722:
	.string	"size_unit"
.LASF616:
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
.LASF271:
	.string	"PLUS"
.LASF1284:
	.string	"compare_constant_1"
.LASF568:
	.string	"BUILT_IN_RINDEX"
.LASF1298:
	.string	"copy"
.LASF1439:
	.string	"const_labelno"
.LASF1028:
	.string	"hash_f"
.LASF287:
	.string	"POST_DEC"
.LASF1156:
	.string	"base"
.LASF134:
	.string	"HImode"
.LASF359:
	.string	"rtunion"
.LASF369:
	.string	"NOTE_INSN_LOOP_END_TOP_COND"
.LASF197:
	.string	"MODE_COMPLEX_INT"
.LASF974:
	.string	"eh_status"
.LASF1186:
	.string	"named_section_flags"
.LASF545:
	.string	"LAST_AND_UNUSED_TREE_CODE"
.LASF1246:
	.string	"assemble_external"
.LASF950:
	.string	"sequence_stack"
.LASF64:
	.string	"long int"
.LASF395:
	.string	"GR_VIRTUAL_CFA"
.LASF411:
	.string	"POINTER_TYPE"
.LASF479:
	.string	"FFS_EXPR"
.LASF403:
	.string	"VOID_TYPE"
.LASF1409:
	.string	"const_tiny_rtx"
.LASF1285:
	.string	"strp"
.LASF986:
	.string	"language_function"
.LASF515:
	.string	"VIEW_CONVERT_EXPR"
.LASF864:
	.string	"TI_ERROR_MARK"
.LASF105:
	.string	"_IO_marker"
.LASF148:
	.string	"XFmode"
.LASF803:
	.string	"needs_context"
.LASF1133:
	.string	"expand_builtin"
.LASF683:
	.string	"limit"
.LASF1428:
	.string	"align_functions"
.LASF178:
	.string	"V4DFmode"
.LASF990:
	.string	"EXPAND_CONST_ADDRESS"
.LASF1232:
	.string	"escape"
.LASF1368:
	.string	"newdecl"
.LASF4:
	.string	"unchanging"
.LASF836:
	.string	"defer_output"
.LASF912:
	.string	"TI_V2SF_TYPE"
.LASF1371:
	.string	"weak_finish"
.LASF364:
	.string	"NOTE_INSN_BLOCK_END"
.LASF807:
	.string	"calls_eh_return"
.LASF931:
	.string	"max_length"
.LASF1096:
	.string	"label"
.LASF786:
	.string	"x_target_temp_slot_level"
.LASF1137:
	.string	"cannot_modify_jumps_p"
.LASF754:
	.string	"pretend_args_size"
.LASF742:
	.string	"context"
.LASF1287:
	.string	"have_purpose"
.LASF125:
	.string	"_sch_iscppsp"
.LASF202:
	.string	"rtx_code"
.LASF62:
	.string	"CUMULATIVE_ARGS"
.LASF456:
	.string	"WITH_RECORD_EXPR"
.LASF952:
	.string	"last"
.LASF863:
	.string	"tree_index"
.LASF1203:
	.string	"decode_reg_name"
.LASF1422:
	.string	"flag_shared_data"
.LASF1326:
	.string	"get_pool_constant_for_function"
.LASF816:
	.string	"varargs"
.LASF1231:
	.string	"_limited_str"
.LASF1127:
	.string	"comp_type_attributes"
.LASF710:
	.string	"handler_block_flag"
.LASF849:
	.string	"non_addressable"
.LASF552:
	.string	"BUILT_IN_FABSL"
.LASF1132:
	.string	"init_builtins"
.LASF1389:
	.string	"in_named_htab"
.LASF31:
	.string	"CREG"
.LASF1167:
	.string	"long double"
.LASF632:
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
.LASF818:
	.string	"x_whole_function_mode_p"
.LASF1240:
	.string	"at_end"
.LASF1111:
	.string	"eh_frame_section"
.LASF203:
	.string	"UNKNOWN"
.LASF245:
	.string	"UNSPEC_VOLATILE"
.LASF442:
	.string	"ARRAY_RANGE_REF"
.LASF944:
	.string	"TYPE_KIND_LAST"
.LASF1442:
	.string	"last_assemble_variable_decl"
.LASF579:
	.string	"BUILT_IN_STRSTR"
.LASF1345:
	.string	"output_constant"
.LASF835:
	.string	"common_flag"
.LASF695:
	.string	"freefun"
.LASF372:
	.string	"NOTE_INSN_EPILOGUE_BEG"
.LASF66:
	.string	"long unsigned int"
.LASF843:
	.string	"no_instrument_function_entry_exit"
.LASF651:
	.string	"asm_written_flag"
.LASF1325:
	.string	"pmarked"
.LASF11:
	.string	"rtx_def"
.LASF397:
	.string	"tree_code"
.LASF1171:
	.string	"const_section"
.LASF1202:
	.string	"strip_reg_name"
.LASF1391:
	.string	"const_str_htab"
.LASF114:
	.string	"_sch_ispunct"
.LASF144:
	.string	"HFmode"
.LASF615:
	.string	"BUILT_IN_FPRINTF"
.LASF1152:
	.string	"in_named_entry"
.LASF1185:
	.string	"entry"
.LASF646:
	.string	"constant_flag"
.LASF587:
	.string	"BUILT_IN_COS"
.LASF252:
	.string	"TRAP_IF"
.LASF1033:
	.string	"n_deleted"
.LASF1361:
	.string	"end_offset"
.LASF672:
	.string	"real_extract"
.LASF659:
	.string	"bounded_flag"
.LASF434:
	.string	"RESULT_DECL"
.LASF1321:
	.string	"pool"
.LASF532:
	.string	"TRY_CATCH_EXPR"
.LASF1306:
	.string	"output_constant_def_contents"
.LASF905:
	.string	"TI_V4SF_TYPE"
.LASF702:
	.string	"tree_list"
.LASF1393:
	.string	"after_function_constants"
.LASF156:
	.string	"CQImode"
.LASF1217:
	.string	"priority"
.LASF796:
	.string	"stack_alignment_needed"
.LASF1087:
	.string	"begin_prologue"
.LASF73:
	.string	"char"
.LASF800:
	.string	"returns_struct"
.LASF1192:
	.string	"resolve_unique_section"
.LASF154:
	.string	"XCmode"
.LASF774:
	.string	"x_arg_pointer_save_area"
.LASF1067:
	.string	"safe_from_p"
.LASF1364:
	.string	"next_byte"
.LASF627:
	.string	"BUILT_IN_ISLESSGREATER"
.LASF29:
	.string	"AREG"
.LASF546:
	.string	"built_in_function"
.LASF772:
	.string	"x_tail_recursion_label"
.LASF514:
	.string	"NON_LVALUE_EXPR"
.LASF1206:
	.string	"table"
.LASF690:
	.string	"next_free"
.LASF845:
	.string	"malloc_flag"
.LASF1283:
	.string	"compare_constant"
.LASF1007:
	.string	"sets"
.LASF83:
	.string	"_IO_buf_base"
.LASF1335:
	.string	"mark_constants"
.LASF798:
	.string	"language"
.LASF1040:
	.string	"INSERT"
.LASF280:
	.string	"ROTATERT"
.LASF917:
	.string	"itk_char"
.LASF1369:
	.string	"olddecl"
.LASF724:
	.string	"precision"
.LASF266:
	.string	"ADDRESSOF"
.LASF1286:
	.string	"xlen"
.LASF913:
	.string	"TI_V16QI_TYPE"
.LASF439:
	.string	"INDIRECT_REF"
.LASF1350:
	.string	"output_constructor"
.LASF162:
	.string	"V2QImode"
.LASF537:
	.string	"RETURN_EXPR"
.LASF561:
	.string	"BUILT_IN_CIMAG"
.LASF602:
	.string	"BUILT_IN_APPLY_ARGS"
.LASF955:
	.string	"x_reg_rtx_no"
.LASF140:
	.string	"PHImode"
.LASF78:
	.string	"_IO_read_end"
.LASF1198:
	.string	"mergeable_string_section"
.LASF728:
	.string	"transparent_union_flag"
.LASF946:
	.string	"modified"
.LASF964:
	.string	"regno_decl"
.LASF937:
	.string	"size_type_kind"
.LASF1003:
	.string	"reg_info_def"
.LASF161:
	.string	"COImode"
.LASF1272:
	.string	"decode_addr_const"
.LASF285:
	.string	"PRE_DEC"
.LASF119:
	.string	"_sch_isvsp"
.LASF75:
	.string	"_IO_FILE"
.LASF371:
	.string	"NOTE_INSN_PROLOGUE_END"
.LASF389:
	.string	"GR_HARD_FRAME_POINTER"
.LASF342:
	.string	"align"
.LASF629:
	.string	"BUILT_IN_UNWIND_INIT"
.LASF806:
	.string	"calls_alloca"
.LASF1122:
	.string	"cycle_display"
.LASF1313:
	.string	"simplify_subtraction"
.LASF1063:
	.string	"finish"
.LASF884:
	.string	"TI_COMPLEX_INTEGER_TYPE"
.LASF785:
	.string	"x_var_temp_slot_level"
.LASF192:
	.string	"MODE_RANDOM"
.LASF323:
	.string	"US_PLUS"
.LASF1444:
	.string	"varasm.c"
.LASF1261:
	.string	"imode"
.LASF1100:
	.string	"close_paren"
.LASF1318:
	.string	"record_constant_rtx"
.LASF182:
	.string	"BLKmode"
.LASF1045:
	.string	"disregard_inline_limits"
.LASF151:
	.string	"HCmode"
.LASF450:
	.string	"BIND_EXPR"
.LASF522:
	.string	"FDESC_EXPR"
.LASF903:
	.string	"TI_UV2SF_TYPE"
.LASF457:
	.string	"PLUS_EXPR"
.LASF909:
	.string	"TI_V8QI_TYPE"
.LASF1281:
	.string	"const_hash"
.LASF560:
	.string	"BUILT_IN_CREALL"
.LASF1024:
	.string	"htab_hash"
.LASF1377:
	.string	"default_section_type_flags"
.LASF914:
	.string	"TI_MAIN_IDENTIFIER"
.LASF578:
	.string	"BUILT_IN_STRLEN"
.LASF1046:
	.string	"add_pending_fn_decls"
.LASF1070:
	.string	"print_statistics"
.LASF419:
	.string	"UNION_TYPE"
.LASF1258:
	.string	"assemble_integer"
.LASF667:
	.string	"lang_flag_6"
.LASF257:
	.string	"CONST_STRING"
.LASF320:
	.string	"VEC_CONCAT"
.LASF341:
	.string	"size"
.LASF521:
	.string	"ENTRY_VALUE_EXPR"
.LASF596:
	.string	"BUILT_IN_NEXT_ARG"
.LASF98:
	.string	"__pad1"
.LASF100:
	.string	"__pad3"
.LASF101:
	.string	"__pad4"
.LASF102:
	.string	"__pad5"
.LASF233:
	.string	"ATTR_FLAG"
.LASF693:
	.string	"alignment_mask"
.LASF1317:
	.string	"compare_constant_rtx"
.LASF991:
	.string	"EXPAND_INITIALIZER"
.LASF189:
	.string	"CCFPUmode"
.LASF1201:
	.string	"mergeable_constant_section"
.LASF1175:
	.string	"readonly_data_section"
.LASF223:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF1316:
	.string	"const_hash_rtx"
.LASF840:
	.string	"artificial_flag"
.LASF777:
	.string	"x_context_display"
.LASF88:
	.string	"_markers"
.LASF108:
	.string	"_pos"
.LASF1379:
	.string	"default_elf_asm_named_section"
.LASF227:
	.string	"ADDRESS"
.LASF1346:
	.string	"buffer"
.LASF502:
	.string	"ORDERED_EXPR"
.LASF640:
	.string	"BUILT_IN_VA_COPY"
.LASF790:
	.string	"original_arg_vector"
.LASF21:
	.string	"complex"
.LASF699:
	.string	"alloc_failed"
.LASF1289:
	.string	"record_constant"
.LASF1055:
	.string	"dump_tree"
.LASF822:
	.string	"uses_eh_lsda"
.LASF555:
	.string	"BUILT_IN_CONJ"
.LASF998:
	.string	"cptr"
.LASF1330:
	.string	"get_pool_size"
.LASF413:
	.string	"REFERENCE_TYPE"
.LASF1355:
	.string	"byte"
.LASF1150:
	.string	"in_bss"
.LASF1314:
	.string	"val0"
.LASF1315:
	.string	"val1"
.LASF357:
	.string	"bitmap_head_def"
.LASF1299:
	.string	"tail"
.LASF715:
	.string	"supercontext"
.LASF641:
	.string	"BUILT_IN_EXPECT"
.LASF1227:
	.string	"maximum"
.LASF738:
	.string	"maxval"
.LASF501:
	.string	"UNORDERED_EXPR"
.LASF943:
	.string	"UBITSIZETYPE"
.LASF1069:
	.string	"honor_readonly"
.LASF897:
	.string	"TI_UV4SF_TYPE"
.LASF1012:
	.string	"calls_crossed"
.LASF1151:
	.string	"in_const"
.LASF327:
	.string	"US_TRUNCATE"
.LASF663:
	.string	"lang_flag_2"
.LASF582:
	.string	"BUILT_IN_STRCSPN"
.LASF509:
	.string	"SET_LE_EXPR"
.LASF384:
	.string	"global_rtl_index"
.LASF56:
	.string	"nregs"
.LASF1092:
	.string	"function_decl"
.LASF322:
	.string	"SS_PLUS"
.LASF284:
	.string	"UMAX"
.LASF528:
	.string	"PREINCREMENT_EXPR"
.LASF45:
	.string	"MMX_REGS"
.LASF1135:
	.string	"have_named_sections"
.LASF336:
	.string	"scale"
.LASF826:
	.string	"linenum"
.LASF133:
	.string	"QImode"
.LASF1396:
	.string	"target_flags"
.LASF505:
	.string	"UNGT_EXPR"
.LASF1021:
	.string	"data"
.LASF387:
	.string	"GR_STACK_POINTER"
.LASF1244:
	.string	"contains_pointers_p"
.LASF1115:
	.string	"adjust_priority"
.LASF732:
	.string	"user_align"
.LASF1190:
	.string	"prefixes"
.LASF549:
	.string	"BUILT_IN_LABS"
.LASF1064:
	.string	"clear_binding_stack"
.LASF145:
	.string	"TQFmode"
.LASF1427:
	.string	"flag_merge_constants"
.LASF1084:
	.string	"end_block"
.LASF648:
	.string	"volatile_flag"
.LASF55:
	.string	"words"
.LASF572:
	.string	"BUILT_IN_STRCAT"
.LASF588:
	.string	"BUILT_IN_SQRTF"
.LASF333:
	.string	"min_after_base"
.LASF591:
	.string	"BUILT_IN_SQRTL"
.LASF1081:
	.string	"start_source_file"
.LASF1000:
	.string	"sched"
.LASF923:
	.string	"itk_unsigned_int"
.LASF746:
	.string	"off_align"
.LASF819:
	.string	"x_dont_save_pending_sizes_p"
.LASF54:
	.string	"ix86_args"
.LASF544:
	.string	"EXC_PTR_EXPR"
.LASF691:
	.string	"chunk_limit"
.LASF1266:
	.string	"nalign"
.LASF1322:
	.string	"find_pool_constant"
.LASF1038:
	.string	"insert_option"
.LASF566:
	.string	"BUILT_IN_FFS"
.LASF653:
	.string	"used_flag"
.LASF1268:
	.string	"width"
.LASF611:
	.string	"BUILT_IN_PRINTF"
.LASF28:
	.string	"NO_REGS"
.LASF723:
	.string	"attributes"
.LASF908:
	.string	"TI_V8HI_TYPE"
.LASF1039:
	.string	"NO_INSERT"
.LASF755:
	.string	"outgoing_args_size"
.LASF472:
	.string	"FIX_FLOOR_EXPR"
.LASF1068:
	.string	"staticp"
.LASF138:
	.string	"OImode"
.LASF657:
	.string	"private_flag"
.LASF618:
	.string	"BUILT_IN_PRINTF_UNLOCKED"
.LASF661:
	.string	"lang_flag_0"
.LASF662:
	.string	"lang_flag_1"
.LASF438:
	.string	"BIT_FIELD_REF"
.LASF664:
	.string	"lang_flag_3"
.LASF665:
	.string	"lang_flag_4"
.LASF666:
	.string	"lang_flag_5"
.LASF282:
	.string	"SMAX"
.LASF851:
	.string	"lang_flag_7"
.LASF1356:
	.string	"fieldsize"
.LASF396:
	.string	"GR_MAX"
.LASF861:
	.string	"pointer_alias_set"
.LASF319:
	.string	"VEC_SELECT"
.LASF553:
	.string	"BUILT_IN_LLABS"
.LASF901:
	.string	"TI_UV4HI_TYPE"
.LASF432:
	.string	"VAR_DECL"
.LASF708:
	.string	"operands"
.LASF1071:
	.string	"print_xnode"
.LASF446:
	.string	"MODIFY_EXPR"
.LASF1429:
	.string	"align_functions_log"
.LASF1354:
	.string	"byte_buffer_in_use"
.LASF954:
	.string	"emit_status"
.LASF1441:
	.string	"size_directive_output"
.LASF701:
	.string	"tree_identifier"
.LASF200:
	.string	"MODE_VECTOR_FLOAT"
.LASF401:
	.string	"TREE_VEC"
.LASF290:
	.string	"POST_MODIFY"
.LASF1004:
	.string	"first_uid"
.LASF594:
	.string	"BUILT_IN_SAVEREGS"
.LASF1052:
	.string	"end_inlining"
.LASF1066:
	.string	"expand_constant"
.LASF538:
	.string	"EXIT_EXPR"
.LASF1392:
	.string	"deferred_constants"
.LASF556:
	.string	"BUILT_IN_CONJF"
.LASF481:
	.string	"RSHIFT_EXPR"
.LASF557:
	.string	"BUILT_IN_CONJL"
.LASF216:
	.string	"DEFINE_PEEPHOLE"
.LASF127:
	.string	"long long unsigned int"
.LASF378:
	.string	"NOTE_INSN_RANGE_BEG"
.LASF1386:
	.string	"parent"
.LASF340:
	.string	"offset"
.LASF982:
	.string	"x_const_double_chain"
.LASF337:
	.string	"addr_diff_vec_flags"
.LASF93:
	.string	"_cur_column"
.LASF212:
	.string	"MATCH_OP_DUP"
.LASF226:
	.string	"SEQUENCE"
.LASF1157:
	.string	"kind"
.LASF399:
	.string	"IDENTIFIER_NODE"
.LASF989:
	.string	"EXPAND_SUM"
.LASF871:
	.string	"TI_UINTHI_TYPE"
.LASF697:
	.string	"use_extra_arg"
.LASF143:
	.string	"QFmode"
.LASF1308:
	.string	"mark_pool_constant"
.LASF856:
	.string	"section_name"
.LASF1006:
	.string	"last_note_uid"
.LASF1254:
	.string	"integer_asm_op"
.LASF1140:
	.string	"desc"
.LASF1197:
	.string	"default_exception_section"
.LASF757:
	.string	"args_info"
.LASF503:
	.string	"UNLT_EXPR"
.LASF1438:
	.string	"permanent_obstack"
.LASF935:
	.string	"handler"
.LASF1426:
	.string	"flag_data_sections"
.LASF815:
	.string	"limit_stack"
.LASF422:
	.string	"LANG_TYPE"
.LASF253:
	.string	"RESX"
.LASF109:
	.string	"_sch_isblank"
.LASF1324:
	.string	"get_pool_constant_mark"
.LASF1400:
	.string	"mode_size"
.LASF1166:
	.string	"rtx_const"
.LASF241:
	.string	"PARALLEL"
.LASF13:
	.string	"num_elem"
.LASF875:
	.string	"TI_INTEGER_ZERO"
.LASF86:
	.string	"_IO_backup_base"
.LASF291:
	.string	"UNORDERED"
.LASF190:
	.string	"MAX_MACHINE_MODE"
.LASF77:
	.string	"_IO_read_ptr"
.LASF1432:
	.string	"asm_out_file"
.LASF1213:
	.string	"assemble_constant_align"
.LASF922:
	.string	"itk_int"
.LASF595:
	.string	"BUILT_IN_CLASSIFY_TYPE"
.LASF51:
	.string	"FLOAT_INT_SSE_REGS"
.LASF208:
	.string	"MATCH_SCRATCH"
.LASF258:
	.string	"CONST"
.LASF963:
	.string	"regno_pointer_align"
.LASF1184:
	.string	"set_named_section_flags"
.LASF307:
	.string	"SQRT"
.LASF725:
	.string	"string_flag"
.LASF1077:
	.string	"tree_dump"
.LASF386:
	.string	"GR_CC0"
.LASF1173:
	.string	"data_section"
.LASF191:
	.string	"mode_class"
.LASF1074:
	.string	"print_identifier"
.LASF1154:
	.string	"declared"
.LASF273:
	.string	"MULT"
.LASF417:
	.string	"SET_TYPE"
.LASF196:
	.string	"MODE_CC"
.LASF713:
	.string	"vars"
.LASF451:
	.string	"CALL_EXPR"
.LASF139:
	.string	"PQImode"
.LASF486:
	.string	"BIT_AND_EXPR"
.LASF525:
	.string	"REALPART_EXPR"
.LASF1342:
	.string	"inner"
.LASF171:
	.string	"V8HImode"
.LASF1440:
	.string	"var_labelno"
.LASF783:
	.string	"x_temp_slots"
.LASF867:
	.string	"TI_INTSI_TYPE"
.LASF562:
	.string	"BUILT_IN_CIMAGF"
.LASF828:
	.string	"nonlocal_flag"
.LASF770:
	.string	"x_stack_slot_list"
.LASF92:
	.string	"_old_offset"
.LASF236:
	.string	"CALL_INSN"
.LASF1091:
	.string	"end_function"
.LASF261:
	.string	"SUBREG"
.LASF730:
	.string	"restrict_flag"
.LASF121:
	.string	"_sch_isalpha"
.LASF1211:
	.string	"starred"
.LASF805:
	.string	"calls_longjmp"
.LASF174:
	.string	"V16QImode"
.LASF1249:
	.string	"assemble_label"
.LASF686:
	.string	"obstack"
.LASF550:
	.string	"BUILT_IN_FABS"
.LASF1026:
	.string	"htab_del"
.LASF23:
	.string	"decl"
.LASF1416:
	.string	"current_function_decl"
.LASF526:
	.string	"IMAGPART_EXPR"
.LASF128:
	.string	"long long int"
.LASF902:
	.string	"TI_UV2SI_TYPE"
.LASF859:
	.string	"inlined_fns"
.LASF928:
	.string	"itk_none"
.LASF1044:
	.string	"cannot_inline_tree_fn"
.LASF91:
	.string	"_flags2"
.LASF942:
	.string	"SBITSIZETYPE"
.LASF150:
	.string	"QCmode"
.LASF259:
	.string	"VALUE"
.LASF239:
	.string	"NOTE"
.LASF1309:
	.string	"mark_varasm_status"
.LASF454:
	.string	"CLEANUP_POINT_EXPR"
.LASF1189:
	.string	"prefix"
.LASF59:
	.string	"sse_nregs"
.LASF283:
	.string	"UMIN"
.LASF209:
	.string	"MATCH_DUP"
.LASF424:
	.string	"REAL_CST"
.LASF113:
	.string	"_sch_isprint"
.LASF583:
	.string	"BUILT_IN_STRCHR"
.LASF639:
	.string	"BUILT_IN_VA_END"
.LASF358:
	.string	"basic_block_def"
.LASF1228:
	.string	"thissize"
.LASF122:
	.string	"_sch_isalnum"
.LASF1076:
	.string	"tree_inlining"
.LASF734:
	.string	"reference_to"
.LASF473:
	.string	"FIX_ROUND_EXPR"
.LASF1337:
	.string	"mark_constant"
.LASF1134:
	.string	"section_type_flags"
.LASF500:
	.string	"NE_EXPR"
.LASF976:
	.string	"varasm_status"
.LASF1030:
	.string	"del_f"
.LASF603:
	.string	"BUILT_IN_APPLY"
.LASF7:
	.string	"used"
.LASF625:
	.string	"BUILT_IN_ISLESS"
.LASF590:
	.string	"BUILT_IN_COSF"
.LASF408:
	.string	"ENUMERAL_TYPE"
.LASF1224:
	.string	"assemble_zeros"
.LASF953:
	.string	"sequence_rtl_expr"
.LASF365:
	.string	"NOTE_INSN_LOOP_BEG"
.LASF762:
	.string	"x_function_call_count"
.LASF157:
	.string	"CHImode"
.LASF115:
	.string	"_sch_isspace"
.LASF559:
	.string	"BUILT_IN_CREALF"
.LASF381:
	.string	"NOTE_INSN_BASIC_BLOCK"
.LASF231:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF1172:
	.string	"text_section"
.LASF1179:
	.string	"in_named_entry_hash"
.LASF842:
	.string	"non_addr_const_p"
.LASF681:
	.string	"elements"
.LASF962:
	.string	"regno_pointer_align_length"
.LASF957:
	.string	"x_first_insn"
.LASF918:
	.string	"itk_signed_char"
.LASF971:
	.string	"x_apply_args_value"
.LASF49:
	.string	"FLOAT_INT_REGS"
.LASF1435:
	.string	"ggc_pending_trees"
.LASF255:
	.string	"CONST_DOUBLE"
.LASF1327:
	.string	"get_pool_mode"
.LASF605:
	.string	"BUILT_IN_SETJMP"
.LASF880:
	.string	"TI_SIZE_ONE"
.LASF1343:
	.string	"valid0"
.LASF1344:
	.string	"valid1"
.LASF622:
	.string	"BUILT_IN_FPRINTF_UNLOCKED"
.LASF924:
	.string	"itk_long"
.LASF186:
	.string	"CCNOmode"
.LASF167:
	.string	"V4HImode"
.LASF444:
	.string	"CONSTRUCTOR"
.LASF293:
	.string	"UNEQ"
.LASF402:
	.string	"BLOCK"
.LASF1226:
	.string	"assemble_string"
.LASF1349:
	.string	"index"
.LASF276:
	.string	"ASHIFT"
.LASF896:
	.string	"TI_VOID_LIST_NODE"
.LASF281:
	.string	"SMIN"
.LASF1187:
	.string	"__FUNCTION__"
.LASF1310:
	.string	"free_varasm_status"
.LASF268:
	.string	"IF_THEN_ELSE"
.LASF1238:
	.string	"destination"
.LASF831:
	.string	"bit_field_flag"
.LASF1035:
	.string	"collisions"
.LASF610:
	.string	"BUILT_IN_PUTS"
.LASF1095:
	.string	"outlining_inline_function"
.LASF834:
	.string	"in_system_header_flag"
.LASF1418:
	.string	"flag_writable_strings"
.LASF837:
	.string	"transparent_union"
.LASF377:
	.string	"NOTE_INSN_REPEATED_LINE_NUMBER"
.LASF1230:
	.string	"bytes_in_chunk"
.LASF123:
	.string	"_sch_isidnum"
.LASF751:
	.string	"outer"
.LASF860:
	.string	"vindex"
.LASF696:
	.string	"extra_arg"
.LASF374:
	.string	"NOTE_INSN_FUNCTION_BEG"
.LASF1170:
	.string	"reloc"
.LASF1413:
	.string	"dconst2"
.LASF960:
	.string	"x_last_linenum"
.LASF1376:
	.string	"init_varasm_once"
.LASF426:
	.string	"VECTOR_CST"
.LASF1352:
	.string	"min_index"
.LASF63:
	.string	"unsigned int"
.LASF518:
	.string	"RTL_EXPR"
.LASF1425:
	.string	"flag_function_sections"
.LASF344:
	.string	"tree_node"
.LASF1079:
	.string	"define"
.LASF767:
	.string	"x_cleanup_label"
.LASF507:
	.string	"UNEQ_EXPR"
.LASF575:
	.string	"BUILT_IN_STRNCPY"
.LASF332:
	.string	"max_after_vec"
.LASF404:
	.string	"INTEGER_TYPE"
.LASF294:
	.string	"UNGE"
.LASF956:
	.string	"x_first_label_num"
.LASF827:
	.string	"external_flag"
.LASF70:
	.string	"short int"
.LASF511:
	.string	"RANGE_EXPR"
.LASF295:
	.string	"UNGT"
.LASF1385:
	.string	"child"
.LASF811:
	.string	"has_computed_jump"
.LASF585:
	.string	"BUILT_IN_SQRT"
.LASF440:
	.string	"BUFFER_REF"
.LASF958:
	.string	"x_last_insn"
.LASF684:
	.string	"prev"
.LASF94:
	.string	"_vtable_offset"
.LASF523:
	.string	"COMPLEX_EXPR"
.LASF631:
	.string	"BUILT_IN_DWARF_FP_REGNUM"
.LASF1057:
	.string	"lang_hooks"
.LASF504:
	.string	"UNLE_EXPR"
.LASF1061:
	.string	"post_options"
.LASF797:
	.string	"preferred_stack_boundary"
.LASF131:
	.string	"VOIDmode"
.LASF895:
	.string	"TI_VA_LIST_TYPE"
.LASF930:
	.string	"min_length"
.LASF394:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF311:
	.string	"LO_SUM"
.LASF647:
	.string	"addressable_flag"
.LASF1131:
	.string	"ms_bitfield_layout_p"
.LASF576:
	.string	"BUILT_IN_STRCMP"
.LASF405:
	.string	"REAL_TYPE"
.LASF346:
	.string	"rtwint"
.LASF1237:
	.string	"asm_dest_local"
.LASF542:
	.string	"EXPR_WITH_FILE_LOCATION"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
