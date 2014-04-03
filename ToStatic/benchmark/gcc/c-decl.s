	.file	"c-decl.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 c-decl.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.comm	pending_invalid_xref,8,8
	.comm	pending_invalid_xref_file,8,8
	.comm	pending_invalid_xref_line,4,4
	.local	enum_next_value
	.comm	enum_next_value,8,8
	.local	enum_overflow
	.comm	enum_overflow,4,4
	.local	last_function_parms
	.comm	last_function_parms,8,8
	.local	last_function_parm_tags
	.comm	last_function_parm_tags,8,8
	.local	current_function_parms
	.comm	current_function_parms,8,8
	.local	current_function_parm_tags
	.comm	current_function_parm_tags,8,8
	.local	current_function_prototype_file
	.comm	current_function_prototype_file,8,8
	.local	current_function_prototype_line
	.comm	current_function_prototype_line,4,4
	.local	c_stmt_tree
	.comm	c_stmt_tree,32,32
	.local	c_scope_stmt_stack
	.comm	c_scope_stmt_stack,8,8
	.local	named_labels
	.comm	named_labels,8,8
	.local	shadowed_labels
	.comm	shadowed_labels,8,8
	.local	c_function_varargs
	.comm	c_function_varargs,4,4
	.comm	current_function_returns_value,4,4
	.comm	current_function_returns_null,4,4
	.comm	current_function_returns_abnormally,4,4
	.local	warn_about_return_type
	.comm	warn_about_return_type,4,4
	.local	current_extern_inline
	.comm	current_extern_inline,4,4
	.local	current_binding_level
	.comm	current_binding_level,8,8
	.local	free_binding_level
	.comm	free_binding_level,8,8
	.local	global_binding_level
	.comm	global_binding_level,8,8
	.local	clear_binding_level
	.comm	clear_binding_level,72,32
	.local	keep_next_level_flag
	.comm	keep_next_level_flag,4,4
	.local	keep_next_if_subblocks
	.comm	keep_next_if_subblocks,4,4
	.local	label_level_chain
	.comm	label_level_chain,8,8
	.comm	static_ctors,8,8
	.comm	static_dtors,8,8
	.comm	flag_cond_mismatch,4,4
	.comm	flag_no_asm,4,4
	.comm	flag_traditional,4,4
	.globl	flag_isoc94
	.bss
	.align 4
	.type	flag_isoc94, @object
	.size	flag_isoc94, 4
flag_isoc94:
	.zero	4
	.globl	flag_isoc99
	.align 4
	.type	flag_isoc99, @object
	.size	flag_isoc99, 4
flag_isoc99:
	.zero	4
	.globl	flag_hosted
	.data
	.align 4
	.type	flag_hosted, @object
	.size	flag_hosted, 4
flag_hosted:
	.long	1
	.globl	flag_noniso_default_format_attributes
	.align 4
	.type	flag_noniso_default_format_attributes, @object
	.size	flag_noniso_default_format_attributes, 4
flag_noniso_default_format_attributes:
	.long	1
	.globl	flag_allow_single_precision
	.bss
	.align 4
	.type	flag_allow_single_precision, @object
	.size	flag_allow_single_precision, 4
flag_allow_single_precision:
	.zero	4
	.globl	flag_signed_bitfields
	.data
	.align 4
	.type	flag_signed_bitfields, @object
	.size	flag_signed_bitfields, 4
flag_signed_bitfields:
	.long	1
	.globl	explicit_flag_signed_bitfields
	.bss
	.align 4
	.type	explicit_flag_signed_bitfields, @object
	.size	explicit_flag_signed_bitfields, 4
explicit_flag_signed_bitfields:
	.zero	4
	.comm	warn_implicit_int,4,4
	.globl	warn_long_long
	.data
	.align 4
	.type	warn_long_long, @object
	.size	warn_long_long, 4
warn_long_long:
	.long	1
	.globl	mesg_implicit_function_declaration
	.align 4
	.type	mesg_implicit_function_declaration, @object
	.size	mesg_implicit_function_declaration, 4
mesg_implicit_function_declaration:
	.long	-1
	.comm	flag_const_strings,4,4
	.comm	warn_cast_qual,4,4
	.comm	warn_bad_function_cast,4,4
	.comm	warn_missing_format_attribute,4,4
	.comm	warn_traditional,4,4
	.comm	warn_pointer_arith,4,4
	.comm	warn_strict_prototypes,4,4
	.comm	warn_missing_prototypes,4,4
	.comm	warn_missing_declarations,4,4
	.globl	warn_redundant_decls
	.bss
	.align 4
	.type	warn_redundant_decls, @object
	.size	warn_redundant_decls, 4
warn_redundant_decls:
	.zero	4
	.globl	warn_nested_externs
	.align 4
	.type	warn_nested_externs, @object
	.size	warn_nested_externs, 4
warn_nested_externs:
	.zero	4
	.globl	warn_char_subscripts
	.align 4
	.type	warn_char_subscripts, @object
	.size	warn_char_subscripts, 4
warn_char_subscripts:
	.zero	4
	.comm	warn_conversion,4,4
	.comm	warn_parentheses,4,4
	.comm	warn_missing_braces,4,4
	.comm	warn_main,4,4
	.globl	warn_unknown_pragmas
	.align 4
	.type	warn_unknown_pragmas, @object
	.size	warn_unknown_pragmas, 4
warn_unknown_pragmas:
	.zero	4
	.globl	warn_sign_compare
	.data
	.align 4
	.type	warn_sign_compare, @object
	.size	warn_sign_compare, 4
warn_sign_compare:
	.long	-1
	.globl	warn_float_equal
	.bss
	.align 4
	.type	warn_float_equal, @object
	.size	warn_float_equal, 4
warn_float_equal:
	.zero	4
	.globl	warn_multichar
	.data
	.align 4
	.type	warn_multichar, @object
	.size	warn_multichar, 4
warn_multichar:
	.long	1
	.globl	dollars_in_ident
	.align 4
	.type	dollars_in_ident, @object
	.size	dollars_in_ident, 4
dollars_in_ident:
	.long	1
	.local	deprecated_state
	.comm	deprecated_state,4,4
	.section	.rodata
.LC0:
	.string	"-ftraditional"
.LC1:
	.string	"-traditional"
	.align 8
.LC2:
	.string	"-traditional is deprecated and may be removed"
.LC3:
	.string	"-fallow-single-precision"
.LC4:
	.string	"-fhosted"
.LC5:
	.string	"-fno-freestanding"
.LC6:
	.string	"-ffreestanding"
.LC7:
	.string	"-fno-hosted"
.LC8:
	.string	"-fnotraditional"
.LC9:
	.string	"-fno-traditional"
.LC10:
	.string	"-std="
.LC11:
	.string	"iso9899:1990"
.LC12:
	.string	"c89"
.LC13:
	.string	"iso9899:199409"
.LC14:
	.string	"iso9899:199x"
.LC15:
	.string	"iso9899:1999"
.LC16:
	.string	"c9x"
.LC17:
	.string	"c99"
.LC18:
	.string	"gnu89"
.LC19:
	.string	"gnu9x"
.LC20:
	.string	"gnu99"
.LC21:
	.string	"unknown C standard `%s'"
.LC22:
	.string	"-fdollars-in-identifiers"
.LC23:
	.string	"-fno-dollars-in-identifiers"
.LC24:
	.string	"-fsigned-char"
.LC25:
	.string	"-funsigned-char"
.LC26:
	.string	"-fno-signed-char"
.LC27:
	.string	"-fno-unsigned-char"
.LC28:
	.string	"-fsigned-bitfields"
.LC29:
	.string	"-fno-unsigned-bitfields"
.LC30:
	.string	"-funsigned-bitfields"
.LC31:
	.string	"-fno-signed-bitfields"
.LC32:
	.string	"-fshort-enums"
.LC33:
	.string	"-fno-short-enums"
.LC34:
	.string	"-fshort-wchar"
.LC35:
	.string	"-fno-short-wchar"
.LC36:
	.string	"-fcond-mismatch"
.LC37:
	.string	"-fno-cond-mismatch"
.LC38:
	.string	"-fshort-double"
.LC39:
	.string	"-fno-short-double"
.LC40:
	.string	"-fasm"
.LC41:
	.string	"-fno-asm"
.LC42:
	.string	"-fbuiltin"
.LC43:
	.string	"-fno-builtin"
.LC44:
	.string	"-fno-builtin-"
.LC45:
	.string	"-ansi"
	.align 8
.LC46:
	.string	"-Werror-implicit-function-declaration"
	.align 8
.LC47:
	.string	"-Wimplicit-function-declaration"
	.align 8
.LC48:
	.string	"-Wno-implicit-function-declaration"
.LC49:
	.string	"-Wimplicit-int"
.LC50:
	.string	"-Wno-implicit-int"
.LC51:
	.string	"-Wimplicit"
.LC52:
	.string	"-Wno-implicit"
.LC53:
	.string	"-Wlong-long"
.LC54:
	.string	"-Wno-long-long"
.LC55:
	.string	"-Wwrite-strings"
.LC56:
	.string	"-Wno-write-strings"
.LC57:
	.string	"-Wcast-qual"
.LC58:
	.string	"-Wno-cast-qual"
.LC59:
	.string	"-Wbad-function-cast"
.LC60:
	.string	"-Wno-bad-function-cast"
.LC61:
	.string	"-Wno-missing-noreturn"
.LC62:
	.string	"-Wmissing-format-attribute"
.LC63:
	.string	"-Wno-missing-format-attribute"
.LC64:
	.string	"-Wpointer-arith"
.LC65:
	.string	"-Wno-pointer-arith"
.LC66:
	.string	"-Wstrict-prototypes"
.LC67:
	.string	"-Wno-strict-prototypes"
.LC68:
	.string	"-Wmissing-prototypes"
.LC69:
	.string	"-Wno-missing-prototypes"
.LC70:
	.string	"-Wmissing-declarations"
.LC71:
	.string	"-Wno-missing-declarations"
.LC72:
	.string	"-Wredundant-decls"
.LC73:
	.string	"-Wno-redundant-decls"
.LC74:
	.string	"-Wnested-externs"
.LC75:
	.string	"-Wno-nested-externs"
.LC76:
	.string	"-Wtraditional"
.LC77:
	.string	"-Wno-traditional"
.LC78:
	.string	"-Wformat="
.LC79:
	.string	"-Wformat"
.LC80:
	.string	"-Wno-format"
.LC81:
	.string	"-Wformat-y2k"
.LC82:
	.string	"-Wno-format-y2k"
.LC83:
	.string	"-Wformat-extra-args"
.LC84:
	.string	"-Wno-format-extra-args"
.LC85:
	.string	"-Wformat-nonliteral"
.LC86:
	.string	"-Wno-format-nonliteral"
.LC87:
	.string	"-Wformat-security"
.LC88:
	.string	"-Wno-format-security"
.LC89:
	.string	"-Wchar-subscripts"
.LC90:
	.string	"-Wno-char-subscripts"
.LC91:
	.string	"-Wconversion"
.LC92:
	.string	"-Wno-conversion"
.LC93:
	.string	"-Wparentheses"
.LC94:
	.string	"-Wno-parentheses"
.LC95:
	.string	"-Wreturn-type"
.LC96:
	.string	"-Wno-return-type"
.LC97:
	.string	"-Wsequence-point"
.LC98:
	.string	"-Wno-sequence-point"
.LC99:
	.string	"-Wcomment"
.LC100:
	.string	"-Wno-comment"
.LC101:
	.string	"-Wcomments"
.LC102:
	.string	"-Wno-comments"
.LC103:
	.string	"-Wtrigraphs"
.LC104:
	.string	"-Wno-trigraphs"
.LC105:
	.string	"-Wundef"
.LC106:
	.string	"-Wno-undef"
.LC107:
	.string	"-Wimport"
.LC108:
	.string	"-Wno-import"
.LC109:
	.string	"-Wmissing-braces"
.LC110:
	.string	"-Wno-missing-braces"
.LC111:
	.string	"-Wmain"
.LC112:
	.string	"-Wno-main"
.LC113:
	.string	"-Wsign-compare"
.LC114:
	.string	"-Wno-sign-compare"
.LC115:
	.string	"-Wfloat-equal"
.LC116:
	.string	"-Wno-float-equal"
.LC117:
	.string	"-Wmultichar"
.LC118:
	.string	"-Wno-multichar"
.LC119:
	.string	"-Wdiv-by-zero"
.LC120:
	.string	"-Wno-div-by-zero"
.LC121:
	.string	"-Wunknown-pragmas"
.LC122:
	.string	"-Wno-unknown-pragmas"
.LC123:
	.string	"-Wall"
	.text
	.globl	c_decode_option
	.type	c_decode_option, @function
c_decode_option:
.LFB2:
	.file 1 "c-decl.c"
	.loc 1 468 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# argc, argc
	movq	%rsi, -48(%rbp)	# argv, argv
	.loc 1 470 0
	movq	-48(%rbp), %rax	# argv, tmp195
	movq	(%rax), %rax	# *argv_2(D), tmp196
	movq	%rax, -16(%rbp)	# tmp196, p
	.loc 1 472 0
	movq	parse_in(%rip), %rax	# parse_in, parse_in.0
	movq	-48(%rbp), %rdx	# argv, tmp197
	movl	-36(%rbp), %esi	# argc, tmp198
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# parse_in.0,
	call	cpp_handle_option	#
	movl	%eax, -20(%rbp)	# tmp199, strings_processed
	.loc 1 474 0
	movq	-16(%rbp), %rax	# p, tmp200
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# tmp200,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	je	.L2	#,
	.loc 1 474 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# p, tmp201
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp201,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L3	#,
.L2:
	.loc 1 476 0 is_stmt 1
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	.loc 1 477 0
	movl	$1, flag_traditional(%rip)	#, flag_traditional
	.loc 1 478 0
	movl	$1, flag_writable_strings(%rip)	#, flag_writable_strings
	jmp	.L4	#
.L3:
	.loc 1 480 0
	movq	-16(%rbp), %rax	# p, tmp202
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp202,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L5	#,
	.loc 1 481 0
	movl	$1, flag_allow_single_precision(%rip)	#, flag_allow_single_precision
	jmp	.L4	#
.L5:
	.loc 1 482 0
	movq	-16(%rbp), %rax	# p, tmp203
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# tmp203,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	je	.L6	#,
	.loc 1 482 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# p, tmp204
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp204,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L7	#,
.L6:
	.loc 1 484 0 is_stmt 1
	movl	$1, flag_hosted(%rip)	#, flag_hosted
	.loc 1 485 0
	movl	$0, flag_no_builtin(%rip)	#, flag_no_builtin
	jmp	.L4	#
.L7:
	.loc 1 487 0
	movq	-16(%rbp), %rax	# p, tmp205
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# tmp205,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	je	.L8	#,
	.loc 1 487 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# p, tmp206
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# tmp206,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L9	#,
.L8:
	.loc 1 489 0 is_stmt 1
	movl	$0, flag_hosted(%rip)	#, flag_hosted
	.loc 1 490 0
	movl	$1, flag_no_builtin(%rip)	#, flag_no_builtin
	.loc 1 492 0
	movl	warn_main(%rip), %eax	# warn_main, warn_main.1
	cmpl	$2, %eax	#, warn_main.1
	jne	.L10	#,
	.loc 1 493 0
	movl	$0, warn_main(%rip)	#, warn_main
	.loc 1 492 0
	jmp	.L4	#
.L10:
	.loc 1 492 0 is_stmt 0 discriminator 1
	jmp	.L4	#
.L9:
	.loc 1 495 0 is_stmt 1
	movq	-16(%rbp), %rax	# p, tmp207
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# tmp207,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	je	.L11	#,
	.loc 1 495 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# p, tmp208
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# tmp208,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L12	#,
.L11:
	.loc 1 497 0 is_stmt 1
	movl	$0, flag_traditional(%rip)	#, flag_traditional
	.loc 1 498 0
	movl	$0, flag_writable_strings(%rip)	#, flag_writable_strings
	jmp	.L4	#
.L12:
	.loc 1 500 0
	movq	-16(%rbp), %rax	# p, tmp209
	movl	$5, %edx	#,
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# tmp209,
	call	strncmp	#
	testl	%eax, %eax	# D.21343
	jne	.L13	#,
.LBB2:
	.loc 1 512 0
	movq	-16(%rbp), %rax	# p, tmp213
	addq	$5, %rax	#, tmp212
	movq	%rax, -8(%rbp)	# tmp212, argstart
	.loc 1 514 0
	movq	-8(%rbp), %rax	# argstart, tmp214
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# tmp214,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	je	.L14	#,
	.loc 1 515 0
	movq	-8(%rbp), %rax	# argstart, tmp215
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# tmp215,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L15	#,
.L14:
	.loc 1 518 0
	movl	$0, flag_isoc94(%rip)	#, flag_isoc94
.L16:
	.loc 1 520 0
	movl	$0, flag_traditional(%rip)	#, flag_traditional
	.loc 1 521 0
	movl	$0, flag_writable_strings(%rip)	#, flag_writable_strings
	.loc 1 522 0
	movl	$1, flag_no_asm(%rip)	#, flag_no_asm
	.loc 1 523 0
	movl	$1, flag_no_nonansi_builtin(%rip)	#, flag_no_nonansi_builtin
	.loc 1 524 0
	movl	$0, flag_noniso_default_format_attributes(%rip)	#, flag_noniso_default_format_attributes
	.loc 1 525 0
	movl	$0, flag_isoc99(%rip)	#, flag_isoc99
	jmp	.L17	#
.L15:
	.loc 1 527 0
	movq	-8(%rbp), %rax	# argstart, tmp216
	movl	$.LC13, %esi	#,
	movq	%rax, %rdi	# tmp216,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L18	#,
	.loc 1 529 0
	movl	$1, flag_isoc94(%rip)	#, flag_isoc94
	.loc 1 530 0
	jmp	.L16	#
.L18:
	.loc 1 532 0
	movq	-8(%rbp), %rax	# argstart, tmp217
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# tmp217,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	je	.L19	#,
	.loc 1 533 0
	movq	-8(%rbp), %rax	# argstart, tmp218
	movl	$.LC15, %esi	#,
	movq	%rax, %rdi	# tmp218,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	je	.L19	#,
	.loc 1 534 0
	movq	-8(%rbp), %rax	# argstart, tmp219
	movl	$.LC16, %esi	#,
	movq	%rax, %rdi	# tmp219,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	je	.L19	#,
	.loc 1 535 0
	movq	-8(%rbp), %rax	# argstart, tmp220
	movl	$.LC17, %esi	#,
	movq	%rax, %rdi	# tmp220,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L20	#,
.L19:
	.loc 1 537 0
	movl	$0, flag_traditional(%rip)	#, flag_traditional
	.loc 1 538 0
	movl	$0, flag_writable_strings(%rip)	#, flag_writable_strings
	.loc 1 539 0
	movl	$1, flag_no_asm(%rip)	#, flag_no_asm
	.loc 1 540 0
	movl	$1, flag_no_nonansi_builtin(%rip)	#, flag_no_nonansi_builtin
	.loc 1 541 0
	movl	$0, flag_noniso_default_format_attributes(%rip)	#, flag_noniso_default_format_attributes
	.loc 1 542 0
	movl	$1, flag_isoc99(%rip)	#, flag_isoc99
	.loc 1 543 0
	movl	$1, flag_isoc94(%rip)	#, flag_isoc94
	jmp	.L17	#
.L20:
	.loc 1 545 0
	movq	-8(%rbp), %rax	# argstart, tmp221
	movl	$.LC18, %esi	#,
	movq	%rax, %rdi	# tmp221,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L21	#,
	.loc 1 547 0
	movl	$0, flag_traditional(%rip)	#, flag_traditional
	.loc 1 548 0
	movl	$0, flag_writable_strings(%rip)	#, flag_writable_strings
	.loc 1 549 0
	movl	$0, flag_no_asm(%rip)	#, flag_no_asm
	.loc 1 550 0
	movl	$0, flag_no_nonansi_builtin(%rip)	#, flag_no_nonansi_builtin
	.loc 1 551 0
	movl	$1, flag_noniso_default_format_attributes(%rip)	#, flag_noniso_default_format_attributes
	.loc 1 552 0
	movl	$0, flag_isoc99(%rip)	#, flag_isoc99
	.loc 1 553 0
	movl	$0, flag_isoc94(%rip)	#, flag_isoc94
	jmp	.L17	#
.L21:
	.loc 1 555 0
	movq	-8(%rbp), %rax	# argstart, tmp222
	movl	$.LC19, %esi	#,
	movq	%rax, %rdi	# tmp222,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	je	.L22	#,
	.loc 1 555 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# argstart, tmp223
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# tmp223,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L23	#,
.L22:
	.loc 1 557 0 is_stmt 1
	movl	$0, flag_traditional(%rip)	#, flag_traditional
	.loc 1 558 0
	movl	$0, flag_writable_strings(%rip)	#, flag_writable_strings
	.loc 1 559 0
	movl	$0, flag_no_asm(%rip)	#, flag_no_asm
	.loc 1 560 0
	movl	$0, flag_no_nonansi_builtin(%rip)	#, flag_no_nonansi_builtin
	.loc 1 561 0
	movl	$1, flag_noniso_default_format_attributes(%rip)	#, flag_noniso_default_format_attributes
	.loc 1 562 0
	movl	$1, flag_isoc99(%rip)	#, flag_isoc99
	.loc 1 563 0
	movl	$1, flag_isoc94(%rip)	#, flag_isoc94
	jmp	.L17	#
.L23:
	.loc 1 566 0
	movq	-8(%rbp), %rax	# argstart, tmp224
	movq	%rax, %rsi	# tmp224,
	movl	$.LC21, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.LBE2:
	jmp	.L4	#
.L17:
	jmp	.L4	#
.L13:
	.loc 1 568 0
	movq	-16(%rbp), %rax	# p, tmp225
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# tmp225,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L24	#,
	.loc 1 569 0
	movl	$1, dollars_in_ident(%rip)	#, dollars_in_ident
	jmp	.L4	#
.L24:
	.loc 1 570 0
	movq	-16(%rbp), %rax	# p, tmp226
	movl	$.LC23, %esi	#,
	movq	%rax, %rdi	# tmp226,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L25	#,
	.loc 1 571 0
	movl	$0, dollars_in_ident(%rip)	#, dollars_in_ident
	jmp	.L4	#
.L25:
	.loc 1 572 0
	movq	-16(%rbp), %rax	# p, tmp227
	movl	$.LC24, %esi	#,
	movq	%rax, %rdi	# tmp227,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L26	#,
	.loc 1 573 0
	movl	$1, flag_signed_char(%rip)	#, flag_signed_char
	jmp	.L4	#
.L26:
	.loc 1 574 0
	movq	-16(%rbp), %rax	# p, tmp228
	movl	$.LC25, %esi	#,
	movq	%rax, %rdi	# tmp228,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L27	#,
	.loc 1 575 0
	movl	$0, flag_signed_char(%rip)	#, flag_signed_char
	jmp	.L4	#
.L27:
	.loc 1 576 0
	movq	-16(%rbp), %rax	# p, tmp229
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp229,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L28	#,
	.loc 1 577 0
	movl	$0, flag_signed_char(%rip)	#, flag_signed_char
	jmp	.L4	#
.L28:
	.loc 1 578 0
	movq	-16(%rbp), %rax	# p, tmp230
	movl	$.LC27, %esi	#,
	movq	%rax, %rdi	# tmp230,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L29	#,
	.loc 1 579 0
	movl	$1, flag_signed_char(%rip)	#, flag_signed_char
	jmp	.L4	#
.L29:
	.loc 1 580 0
	movq	-16(%rbp), %rax	# p, tmp231
	movl	$.LC28, %esi	#,
	movq	%rax, %rdi	# tmp231,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	je	.L30	#,
	.loc 1 581 0
	movq	-16(%rbp), %rax	# p, tmp232
	movl	$.LC29, %esi	#,
	movq	%rax, %rdi	# tmp232,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L31	#,
.L30:
	.loc 1 583 0
	movl	$1, flag_signed_bitfields(%rip)	#, flag_signed_bitfields
	.loc 1 584 0
	movl	$1, explicit_flag_signed_bitfields(%rip)	#, explicit_flag_signed_bitfields
	jmp	.L4	#
.L31:
	.loc 1 586 0
	movq	-16(%rbp), %rax	# p, tmp233
	movl	$.LC30, %esi	#,
	movq	%rax, %rdi	# tmp233,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	je	.L32	#,
	.loc 1 587 0
	movq	-16(%rbp), %rax	# p, tmp234
	movl	$.LC31, %esi	#,
	movq	%rax, %rdi	# tmp234,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L33	#,
.L32:
	.loc 1 589 0
	movl	$0, flag_signed_bitfields(%rip)	#, flag_signed_bitfields
	.loc 1 590 0
	movl	$1, explicit_flag_signed_bitfields(%rip)	#, explicit_flag_signed_bitfields
	jmp	.L4	#
.L33:
	.loc 1 592 0
	movq	-16(%rbp), %rax	# p, tmp235
	movl	$.LC32, %esi	#,
	movq	%rax, %rdi	# tmp235,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L34	#,
	.loc 1 593 0
	movl	$1, flag_short_enums(%rip)	#, flag_short_enums
	jmp	.L4	#
.L34:
	.loc 1 594 0
	movq	-16(%rbp), %rax	# p, tmp236
	movl	$.LC33, %esi	#,
	movq	%rax, %rdi	# tmp236,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L35	#,
	.loc 1 595 0
	movl	$0, flag_short_enums(%rip)	#, flag_short_enums
	jmp	.L4	#
.L35:
	.loc 1 596 0
	movq	-16(%rbp), %rax	# p, tmp237
	movl	$.LC34, %esi	#,
	movq	%rax, %rdi	# tmp237,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L36	#,
	.loc 1 597 0
	movl	$1, flag_short_wchar(%rip)	#, flag_short_wchar
	jmp	.L4	#
.L36:
	.loc 1 598 0
	movq	-16(%rbp), %rax	# p, tmp238
	movl	$.LC35, %esi	#,
	movq	%rax, %rdi	# tmp238,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L37	#,
	.loc 1 599 0
	movl	$0, flag_short_wchar(%rip)	#, flag_short_wchar
	jmp	.L4	#
.L37:
	.loc 1 600 0
	movq	-16(%rbp), %rax	# p, tmp239
	movl	$.LC36, %esi	#,
	movq	%rax, %rdi	# tmp239,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L38	#,
	.loc 1 601 0
	movl	$1, flag_cond_mismatch(%rip)	#, flag_cond_mismatch
	jmp	.L4	#
.L38:
	.loc 1 602 0
	movq	-16(%rbp), %rax	# p, tmp240
	movl	$.LC37, %esi	#,
	movq	%rax, %rdi	# tmp240,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L39	#,
	.loc 1 603 0
	movl	$0, flag_cond_mismatch(%rip)	#, flag_cond_mismatch
	jmp	.L4	#
.L39:
	.loc 1 604 0
	movq	-16(%rbp), %rax	# p, tmp241
	movl	$.LC38, %esi	#,
	movq	%rax, %rdi	# tmp241,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L40	#,
	.loc 1 605 0
	movl	$1, flag_short_double(%rip)	#, flag_short_double
	jmp	.L4	#
.L40:
	.loc 1 606 0
	movq	-16(%rbp), %rax	# p, tmp242
	movl	$.LC39, %esi	#,
	movq	%rax, %rdi	# tmp242,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L41	#,
	.loc 1 607 0
	movl	$0, flag_short_double(%rip)	#, flag_short_double
	jmp	.L4	#
.L41:
	.loc 1 608 0
	movq	-16(%rbp), %rax	# p, tmp243
	movl	$.LC40, %esi	#,
	movq	%rax, %rdi	# tmp243,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L42	#,
	.loc 1 609 0
	movl	$0, flag_no_asm(%rip)	#, flag_no_asm
	jmp	.L4	#
.L42:
	.loc 1 610 0
	movq	-16(%rbp), %rax	# p, tmp244
	movl	$.LC41, %esi	#,
	movq	%rax, %rdi	# tmp244,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L43	#,
	.loc 1 611 0
	movl	$1, flag_no_asm(%rip)	#, flag_no_asm
	jmp	.L4	#
.L43:
	.loc 1 612 0
	movq	-16(%rbp), %rax	# p, tmp245
	movl	$.LC42, %esi	#,
	movq	%rax, %rdi	# tmp245,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L44	#,
	.loc 1 613 0
	movl	$0, flag_no_builtin(%rip)	#, flag_no_builtin
	jmp	.L4	#
.L44:
	.loc 1 614 0
	movq	-16(%rbp), %rax	# p, tmp246
	movl	$.LC43, %esi	#,
	movq	%rax, %rdi	# tmp246,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L45	#,
	.loc 1 615 0
	movl	$1, flag_no_builtin(%rip)	#, flag_no_builtin
	jmp	.L4	#
.L45:
	.loc 1 616 0
	movq	-16(%rbp), %rax	# p, tmp247
	movl	$13, %edx	#,
	movl	$.LC44, %esi	#,
	movq	%rax, %rdi	# tmp247,
	call	strncmp	#
	testl	%eax, %eax	# D.21343
	jne	.L46	#,
	.loc 1 617 0
	movq	-16(%rbp), %rax	# p, tmp248
	addq	$13, %rax	#, D.21344
	movq	%rax, %rdi	# D.21344,
	call	disable_builtin_function	#
	jmp	.L4	#
.L46:
	.loc 1 618 0
	movq	-16(%rbp), %rax	# p, tmp249
	movzbl	(%rax), %eax	# *p_3, D.21345
	cmpb	$45, %al	#, D.21345
	jne	.L47	#,
	.loc 1 618 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# p, tmp250
	addq	$1, %rax	#, D.21346
	movzbl	(%rax), %eax	# *_53, D.21345
	cmpb	$102, %al	#, D.21345
	jne	.L47	#,
	movq	-16(%rbp), %rax	# p, tmp251
	addq	$2, %rax	#, D.21344
	movq	%rax, %rdi	# D.21344,
	call	dump_switch_p	#
	testl	%eax, %eax	# D.21343
	je	.L47	#,
	jmp	.L4	#
.L47:
	.loc 1 620 0 is_stmt 1
	movq	-16(%rbp), %rax	# p, tmp252
	movl	$.LC45, %esi	#,
	movq	%rax, %rdi	# tmp252,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L48	#,
	.loc 1 621 0
	jmp	.L14	#
.L48:
	.loc 1 622 0
	movq	-16(%rbp), %rax	# p, tmp253
	movl	$.LC46, %esi	#,
	movq	%rax, %rdi	# tmp253,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L49	#,
	.loc 1 623 0
	movl	$2, mesg_implicit_function_declaration(%rip)	#, mesg_implicit_function_declaration
	jmp	.L4	#
.L49:
	.loc 1 624 0
	movq	-16(%rbp), %rax	# p, tmp254
	movl	$.LC47, %esi	#,
	movq	%rax, %rdi	# tmp254,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L50	#,
	.loc 1 625 0
	movl	$1, mesg_implicit_function_declaration(%rip)	#, mesg_implicit_function_declaration
	jmp	.L4	#
.L50:
	.loc 1 626 0
	movq	-16(%rbp), %rax	# p, tmp255
	movl	$.LC48, %esi	#,
	movq	%rax, %rdi	# tmp255,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L51	#,
	.loc 1 627 0
	movl	$0, mesg_implicit_function_declaration(%rip)	#, mesg_implicit_function_declaration
	jmp	.L4	#
.L51:
	.loc 1 628 0
	movq	-16(%rbp), %rax	# p, tmp256
	movl	$.LC49, %esi	#,
	movq	%rax, %rdi	# tmp256,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L52	#,
	.loc 1 629 0
	movl	$1, warn_implicit_int(%rip)	#, warn_implicit_int
	jmp	.L4	#
.L52:
	.loc 1 630 0
	movq	-16(%rbp), %rax	# p, tmp257
	movl	$.LC50, %esi	#,
	movq	%rax, %rdi	# tmp257,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L53	#,
	.loc 1 631 0
	movl	$0, warn_implicit_int(%rip)	#, warn_implicit_int
	jmp	.L4	#
.L53:
	.loc 1 632 0
	movq	-16(%rbp), %rax	# p, tmp258
	movl	$.LC51, %esi	#,
	movq	%rax, %rdi	# tmp258,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L54	#,
	.loc 1 634 0
	movl	$1, warn_implicit_int(%rip)	#, warn_implicit_int
	.loc 1 635 0
	movl	mesg_implicit_function_declaration(%rip), %eax	# mesg_implicit_function_declaration, mesg_implicit_function_declaration.2
	cmpl	$2, %eax	#, mesg_implicit_function_declaration.2
	je	.L4	#,
	.loc 1 636 0
	movl	$1, mesg_implicit_function_declaration(%rip)	#, mesg_implicit_function_declaration
	jmp	.L4	#
.L54:
	.loc 1 638 0
	movq	-16(%rbp), %rax	# p, tmp259
	movl	$.LC52, %esi	#,
	movq	%rax, %rdi	# tmp259,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L56	#,
	.loc 1 639 0
	movl	$0, warn_implicit_int(%rip)	#, warn_implicit_int
	movl	$0, mesg_implicit_function_declaration(%rip)	#, mesg_implicit_function_declaration
	jmp	.L4	#
.L56:
	.loc 1 640 0
	movq	-16(%rbp), %rax	# p, tmp260
	movl	$.LC53, %esi	#,
	movq	%rax, %rdi	# tmp260,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L57	#,
	.loc 1 641 0
	movl	$1, warn_long_long(%rip)	#, warn_long_long
	jmp	.L4	#
.L57:
	.loc 1 642 0
	movq	-16(%rbp), %rax	# p, tmp261
	movl	$.LC54, %esi	#,
	movq	%rax, %rdi	# tmp261,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L58	#,
	.loc 1 643 0
	movl	$0, warn_long_long(%rip)	#, warn_long_long
	jmp	.L4	#
.L58:
	.loc 1 644 0
	movq	-16(%rbp), %rax	# p, tmp262
	movl	$.LC55, %esi	#,
	movq	%rax, %rdi	# tmp262,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L59	#,
	.loc 1 645 0
	movl	$1, flag_const_strings(%rip)	#, flag_const_strings
	jmp	.L4	#
.L59:
	.loc 1 646 0
	movq	-16(%rbp), %rax	# p, tmp263
	movl	$.LC56, %esi	#,
	movq	%rax, %rdi	# tmp263,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L60	#,
	.loc 1 647 0
	movl	$0, flag_const_strings(%rip)	#, flag_const_strings
	jmp	.L4	#
.L60:
	.loc 1 648 0
	movq	-16(%rbp), %rax	# p, tmp264
	movl	$.LC57, %esi	#,
	movq	%rax, %rdi	# tmp264,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L61	#,
	.loc 1 649 0
	movl	$1, warn_cast_qual(%rip)	#, warn_cast_qual
	jmp	.L4	#
.L61:
	.loc 1 650 0
	movq	-16(%rbp), %rax	# p, tmp265
	movl	$.LC58, %esi	#,
	movq	%rax, %rdi	# tmp265,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L62	#,
	.loc 1 651 0
	movl	$0, warn_cast_qual(%rip)	#, warn_cast_qual
	jmp	.L4	#
.L62:
	.loc 1 652 0
	movq	-16(%rbp), %rax	# p, tmp266
	movl	$.LC59, %esi	#,
	movq	%rax, %rdi	# tmp266,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L63	#,
	.loc 1 653 0
	movl	$1, warn_bad_function_cast(%rip)	#, warn_bad_function_cast
	jmp	.L4	#
.L63:
	.loc 1 654 0
	movq	-16(%rbp), %rax	# p, tmp267
	movl	$.LC60, %esi	#,
	movq	%rax, %rdi	# tmp267,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L64	#,
	.loc 1 655 0
	movl	$0, warn_bad_function_cast(%rip)	#, warn_bad_function_cast
	jmp	.L4	#
.L64:
	.loc 1 656 0
	movq	-16(%rbp), %rax	# p, tmp268
	movl	$.LC61, %esi	#,
	movq	%rax, %rdi	# tmp268,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L65	#,
	.loc 1 657 0
	movl	$0, warn_missing_noreturn(%rip)	#, warn_missing_noreturn
	jmp	.L4	#
.L65:
	.loc 1 658 0
	movq	-16(%rbp), %rax	# p, tmp269
	movl	$.LC62, %esi	#,
	movq	%rax, %rdi	# tmp269,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L66	#,
	.loc 1 659 0
	movl	$1, warn_missing_format_attribute(%rip)	#, warn_missing_format_attribute
	jmp	.L4	#
.L66:
	.loc 1 660 0
	movq	-16(%rbp), %rax	# p, tmp270
	movl	$.LC63, %esi	#,
	movq	%rax, %rdi	# tmp270,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L67	#,
	.loc 1 661 0
	movl	$0, warn_missing_format_attribute(%rip)	#, warn_missing_format_attribute
	jmp	.L4	#
.L67:
	.loc 1 662 0
	movq	-16(%rbp), %rax	# p, tmp271
	movl	$.LC64, %esi	#,
	movq	%rax, %rdi	# tmp271,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L68	#,
	.loc 1 663 0
	movl	$1, warn_pointer_arith(%rip)	#, warn_pointer_arith
	jmp	.L4	#
.L68:
	.loc 1 664 0
	movq	-16(%rbp), %rax	# p, tmp272
	movl	$.LC65, %esi	#,
	movq	%rax, %rdi	# tmp272,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L69	#,
	.loc 1 665 0
	movl	$0, warn_pointer_arith(%rip)	#, warn_pointer_arith
	jmp	.L4	#
.L69:
	.loc 1 666 0
	movq	-16(%rbp), %rax	# p, tmp273
	movl	$.LC66, %esi	#,
	movq	%rax, %rdi	# tmp273,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L70	#,
	.loc 1 667 0
	movl	$1, warn_strict_prototypes(%rip)	#, warn_strict_prototypes
	jmp	.L4	#
.L70:
	.loc 1 668 0
	movq	-16(%rbp), %rax	# p, tmp274
	movl	$.LC67, %esi	#,
	movq	%rax, %rdi	# tmp274,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L71	#,
	.loc 1 669 0
	movl	$0, warn_strict_prototypes(%rip)	#, warn_strict_prototypes
	jmp	.L4	#
.L71:
	.loc 1 670 0
	movq	-16(%rbp), %rax	# p, tmp275
	movl	$.LC68, %esi	#,
	movq	%rax, %rdi	# tmp275,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L72	#,
	.loc 1 671 0
	movl	$1, warn_missing_prototypes(%rip)	#, warn_missing_prototypes
	jmp	.L4	#
.L72:
	.loc 1 672 0
	movq	-16(%rbp), %rax	# p, tmp276
	movl	$.LC69, %esi	#,
	movq	%rax, %rdi	# tmp276,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L73	#,
	.loc 1 673 0
	movl	$0, warn_missing_prototypes(%rip)	#, warn_missing_prototypes
	jmp	.L4	#
.L73:
	.loc 1 674 0
	movq	-16(%rbp), %rax	# p, tmp277
	movl	$.LC70, %esi	#,
	movq	%rax, %rdi	# tmp277,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L74	#,
	.loc 1 675 0
	movl	$1, warn_missing_declarations(%rip)	#, warn_missing_declarations
	jmp	.L4	#
.L74:
	.loc 1 676 0
	movq	-16(%rbp), %rax	# p, tmp278
	movl	$.LC71, %esi	#,
	movq	%rax, %rdi	# tmp278,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L75	#,
	.loc 1 677 0
	movl	$0, warn_missing_declarations(%rip)	#, warn_missing_declarations
	jmp	.L4	#
.L75:
	.loc 1 678 0
	movq	-16(%rbp), %rax	# p, tmp279
	movl	$.LC72, %esi	#,
	movq	%rax, %rdi	# tmp279,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L76	#,
	.loc 1 679 0
	movl	$1, warn_redundant_decls(%rip)	#, warn_redundant_decls
	jmp	.L4	#
.L76:
	.loc 1 680 0
	movq	-16(%rbp), %rax	# p, tmp280
	movl	$.LC73, %esi	#,
	movq	%rax, %rdi	# tmp280,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L77	#,
	.loc 1 681 0
	movl	$0, warn_redundant_decls(%rip)	#, warn_redundant_decls
	jmp	.L4	#
.L77:
	.loc 1 682 0
	movq	-16(%rbp), %rax	# p, tmp281
	movl	$.LC74, %esi	#,
	movq	%rax, %rdi	# tmp281,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L78	#,
	.loc 1 683 0
	movl	$1, warn_nested_externs(%rip)	#, warn_nested_externs
	jmp	.L4	#
.L78:
	.loc 1 684 0
	movq	-16(%rbp), %rax	# p, tmp282
	movl	$.LC75, %esi	#,
	movq	%rax, %rdi	# tmp282,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L79	#,
	.loc 1 685 0
	movl	$0, warn_nested_externs(%rip)	#, warn_nested_externs
	jmp	.L4	#
.L79:
	.loc 1 686 0
	movq	-16(%rbp), %rax	# p, tmp283
	movl	$.LC76, %esi	#,
	movq	%rax, %rdi	# tmp283,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L80	#,
	.loc 1 687 0
	movl	$1, warn_traditional(%rip)	#, warn_traditional
	jmp	.L4	#
.L80:
	.loc 1 688 0
	movq	-16(%rbp), %rax	# p, tmp284
	movl	$.LC77, %esi	#,
	movq	%rax, %rdi	# tmp284,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L81	#,
	.loc 1 689 0
	movl	$0, warn_traditional(%rip)	#, warn_traditional
	jmp	.L4	#
.L81:
	.loc 1 690 0
	movq	-16(%rbp), %rax	# p, tmp285
	movl	$9, %edx	#,
	movl	$.LC78, %esi	#,
	movq	%rax, %rdi	# tmp285,
	call	strncmp	#
	testl	%eax, %eax	# D.21343
	jne	.L82	#,
	.loc 1 691 0
	movq	-16(%rbp), %rax	# p, tmp286
	addq	$9, %rax	#, D.21344
	movq	%rax, %rdi	# D.21344,
	call	atoi	#
	movl	%eax, %edi	# D.21343,
	call	set_Wformat	#
	jmp	.L4	#
.L82:
	.loc 1 692 0
	movq	-16(%rbp), %rax	# p, tmp287
	movl	$.LC79, %esi	#,
	movq	%rax, %rdi	# tmp287,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L83	#,
	.loc 1 693 0
	movl	$1, %edi	#,
	call	set_Wformat	#
	jmp	.L4	#
.L83:
	.loc 1 694 0
	movq	-16(%rbp), %rax	# p, tmp288
	movl	$.LC80, %esi	#,
	movq	%rax, %rdi	# tmp288,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L84	#,
	.loc 1 695 0
	movl	$0, %edi	#,
	call	set_Wformat	#
	jmp	.L4	#
.L84:
	.loc 1 696 0
	movq	-16(%rbp), %rax	# p, tmp289
	movl	$.LC81, %esi	#,
	movq	%rax, %rdi	# tmp289,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L85	#,
	.loc 1 697 0
	movl	$1, warn_format_y2k(%rip)	#, warn_format_y2k
	jmp	.L4	#
.L85:
	.loc 1 698 0
	movq	-16(%rbp), %rax	# p, tmp290
	movl	$.LC82, %esi	#,
	movq	%rax, %rdi	# tmp290,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L86	#,
	.loc 1 699 0
	movl	$0, warn_format_y2k(%rip)	#, warn_format_y2k
	jmp	.L4	#
.L86:
	.loc 1 700 0
	movq	-16(%rbp), %rax	# p, tmp291
	movl	$.LC83, %esi	#,
	movq	%rax, %rdi	# tmp291,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L87	#,
	.loc 1 701 0
	movl	$1, warn_format_extra_args(%rip)	#, warn_format_extra_args
	jmp	.L4	#
.L87:
	.loc 1 702 0
	movq	-16(%rbp), %rax	# p, tmp292
	movl	$.LC84, %esi	#,
	movq	%rax, %rdi	# tmp292,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L88	#,
	.loc 1 703 0
	movl	$0, warn_format_extra_args(%rip)	#, warn_format_extra_args
	jmp	.L4	#
.L88:
	.loc 1 704 0
	movq	-16(%rbp), %rax	# p, tmp293
	movl	$.LC85, %esi	#,
	movq	%rax, %rdi	# tmp293,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L89	#,
	.loc 1 705 0
	movl	$1, warn_format_nonliteral(%rip)	#, warn_format_nonliteral
	jmp	.L4	#
.L89:
	.loc 1 706 0
	movq	-16(%rbp), %rax	# p, tmp294
	movl	$.LC86, %esi	#,
	movq	%rax, %rdi	# tmp294,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L90	#,
	.loc 1 707 0
	movl	$0, warn_format_nonliteral(%rip)	#, warn_format_nonliteral
	jmp	.L4	#
.L90:
	.loc 1 708 0
	movq	-16(%rbp), %rax	# p, tmp295
	movl	$.LC87, %esi	#,
	movq	%rax, %rdi	# tmp295,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L91	#,
	.loc 1 709 0
	movl	$1, warn_format_security(%rip)	#, warn_format_security
	jmp	.L4	#
.L91:
	.loc 1 710 0
	movq	-16(%rbp), %rax	# p, tmp296
	movl	$.LC88, %esi	#,
	movq	%rax, %rdi	# tmp296,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L92	#,
	.loc 1 711 0
	movl	$0, warn_format_security(%rip)	#, warn_format_security
	jmp	.L4	#
.L92:
	.loc 1 712 0
	movq	-16(%rbp), %rax	# p, tmp297
	movl	$.LC89, %esi	#,
	movq	%rax, %rdi	# tmp297,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L93	#,
	.loc 1 713 0
	movl	$1, warn_char_subscripts(%rip)	#, warn_char_subscripts
	jmp	.L4	#
.L93:
	.loc 1 714 0
	movq	-16(%rbp), %rax	# p, tmp298
	movl	$.LC90, %esi	#,
	movq	%rax, %rdi	# tmp298,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L94	#,
	.loc 1 715 0
	movl	$0, warn_char_subscripts(%rip)	#, warn_char_subscripts
	jmp	.L4	#
.L94:
	.loc 1 716 0
	movq	-16(%rbp), %rax	# p, tmp299
	movl	$.LC91, %esi	#,
	movq	%rax, %rdi	# tmp299,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L95	#,
	.loc 1 717 0
	movl	$1, warn_conversion(%rip)	#, warn_conversion
	jmp	.L4	#
.L95:
	.loc 1 718 0
	movq	-16(%rbp), %rax	# p, tmp300
	movl	$.LC92, %esi	#,
	movq	%rax, %rdi	# tmp300,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L96	#,
	.loc 1 719 0
	movl	$0, warn_conversion(%rip)	#, warn_conversion
	jmp	.L4	#
.L96:
	.loc 1 720 0
	movq	-16(%rbp), %rax	# p, tmp301
	movl	$.LC93, %esi	#,
	movq	%rax, %rdi	# tmp301,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L97	#,
	.loc 1 721 0
	movl	$1, warn_parentheses(%rip)	#, warn_parentheses
	jmp	.L4	#
.L97:
	.loc 1 722 0
	movq	-16(%rbp), %rax	# p, tmp302
	movl	$.LC94, %esi	#,
	movq	%rax, %rdi	# tmp302,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L98	#,
	.loc 1 723 0
	movl	$0, warn_parentheses(%rip)	#, warn_parentheses
	jmp	.L4	#
.L98:
	.loc 1 724 0
	movq	-16(%rbp), %rax	# p, tmp303
	movl	$.LC95, %esi	#,
	movq	%rax, %rdi	# tmp303,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L99	#,
	.loc 1 725 0
	movl	$1, warn_return_type(%rip)	#, warn_return_type
	jmp	.L4	#
.L99:
	.loc 1 726 0
	movq	-16(%rbp), %rax	# p, tmp304
	movl	$.LC96, %esi	#,
	movq	%rax, %rdi	# tmp304,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L100	#,
	.loc 1 727 0
	movl	$0, warn_return_type(%rip)	#, warn_return_type
	jmp	.L4	#
.L100:
	.loc 1 728 0
	movq	-16(%rbp), %rax	# p, tmp305
	movl	$.LC97, %esi	#,
	movq	%rax, %rdi	# tmp305,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L101	#,
	.loc 1 729 0
	movl	$1, warn_sequence_point(%rip)	#, warn_sequence_point
	jmp	.L4	#
.L101:
	.loc 1 730 0
	movq	-16(%rbp), %rax	# p, tmp306
	movl	$.LC98, %esi	#,
	movq	%rax, %rdi	# tmp306,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L102	#,
	.loc 1 731 0
	movl	$0, warn_sequence_point(%rip)	#, warn_sequence_point
	jmp	.L4	#
.L102:
	.loc 1 732 0
	movq	-16(%rbp), %rax	# p, tmp307
	movl	$.LC99, %esi	#,
	movq	%rax, %rdi	# tmp307,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	je	.L4	#,
	.loc 1 734 0
	movq	-16(%rbp), %rax	# p, tmp308
	movl	$.LC100, %esi	#,
	movq	%rax, %rdi	# tmp308,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	je	.L4	#,
	.loc 1 736 0
	movq	-16(%rbp), %rax	# p, tmp309
	movl	$.LC101, %esi	#,
	movq	%rax, %rdi	# tmp309,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	je	.L4	#,
	.loc 1 738 0
	movq	-16(%rbp), %rax	# p, tmp310
	movl	$.LC102, %esi	#,
	movq	%rax, %rdi	# tmp310,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	je	.L4	#,
	.loc 1 740 0
	movq	-16(%rbp), %rax	# p, tmp311
	movl	$.LC103, %esi	#,
	movq	%rax, %rdi	# tmp311,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	je	.L4	#,
	.loc 1 742 0
	movq	-16(%rbp), %rax	# p, tmp312
	movl	$.LC104, %esi	#,
	movq	%rax, %rdi	# tmp312,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	je	.L4	#,
	.loc 1 744 0
	movq	-16(%rbp), %rax	# p, tmp313
	movl	$.LC105, %esi	#,
	movq	%rax, %rdi	# tmp313,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	je	.L4	#,
	.loc 1 746 0
	movq	-16(%rbp), %rax	# p, tmp314
	movl	$.LC106, %esi	#,
	movq	%rax, %rdi	# tmp314,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	je	.L4	#,
	.loc 1 748 0
	movq	-16(%rbp), %rax	# p, tmp315
	movl	$.LC107, %esi	#,
	movq	%rax, %rdi	# tmp315,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	je	.L4	#,
	.loc 1 750 0
	movq	-16(%rbp), %rax	# p, tmp316
	movl	$.LC108, %esi	#,
	movq	%rax, %rdi	# tmp316,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	je	.L4	#,
	.loc 1 752 0
	movq	-16(%rbp), %rax	# p, tmp317
	movl	$.LC109, %esi	#,
	movq	%rax, %rdi	# tmp317,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L103	#,
	.loc 1 753 0
	movl	$1, warn_missing_braces(%rip)	#, warn_missing_braces
	jmp	.L4	#
.L103:
	.loc 1 754 0
	movq	-16(%rbp), %rax	# p, tmp318
	movl	$.LC110, %esi	#,
	movq	%rax, %rdi	# tmp318,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L104	#,
	.loc 1 755 0
	movl	$0, warn_missing_braces(%rip)	#, warn_missing_braces
	jmp	.L4	#
.L104:
	.loc 1 756 0
	movq	-16(%rbp), %rax	# p, tmp319
	movl	$.LC111, %esi	#,
	movq	%rax, %rdi	# tmp319,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L105	#,
	.loc 1 757 0
	movl	$1, warn_main(%rip)	#, warn_main
	jmp	.L4	#
.L105:
	.loc 1 758 0
	movq	-16(%rbp), %rax	# p, tmp320
	movl	$.LC112, %esi	#,
	movq	%rax, %rdi	# tmp320,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L106	#,
	.loc 1 759 0
	movl	$-1, warn_main(%rip)	#, warn_main
	jmp	.L4	#
.L106:
	.loc 1 760 0
	movq	-16(%rbp), %rax	# p, tmp321
	movl	$.LC113, %esi	#,
	movq	%rax, %rdi	# tmp321,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L107	#,
	.loc 1 761 0
	movl	$1, warn_sign_compare(%rip)	#, warn_sign_compare
	jmp	.L4	#
.L107:
	.loc 1 762 0
	movq	-16(%rbp), %rax	# p, tmp322
	movl	$.LC114, %esi	#,
	movq	%rax, %rdi	# tmp322,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L108	#,
	.loc 1 763 0
	movl	$0, warn_sign_compare(%rip)	#, warn_sign_compare
	jmp	.L4	#
.L108:
	.loc 1 764 0
	movq	-16(%rbp), %rax	# p, tmp323
	movl	$.LC115, %esi	#,
	movq	%rax, %rdi	# tmp323,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L109	#,
	.loc 1 765 0
	movl	$1, warn_float_equal(%rip)	#, warn_float_equal
	jmp	.L4	#
.L109:
	.loc 1 766 0
	movq	-16(%rbp), %rax	# p, tmp324
	movl	$.LC116, %esi	#,
	movq	%rax, %rdi	# tmp324,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L110	#,
	.loc 1 767 0
	movl	$0, warn_float_equal(%rip)	#, warn_float_equal
	jmp	.L4	#
.L110:
	.loc 1 768 0
	movq	-16(%rbp), %rax	# p, tmp325
	movl	$.LC117, %esi	#,
	movq	%rax, %rdi	# tmp325,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L111	#,
	.loc 1 769 0
	movl	$1, warn_multichar(%rip)	#, warn_multichar
	jmp	.L4	#
.L111:
	.loc 1 770 0
	movq	-16(%rbp), %rax	# p, tmp326
	movl	$.LC118, %esi	#,
	movq	%rax, %rdi	# tmp326,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L112	#,
	.loc 1 771 0
	movl	$0, warn_multichar(%rip)	#, warn_multichar
	jmp	.L4	#
.L112:
	.loc 1 772 0
	movq	-16(%rbp), %rax	# p, tmp327
	movl	$.LC119, %esi	#,
	movq	%rax, %rdi	# tmp327,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L113	#,
	.loc 1 773 0
	movl	$1, warn_div_by_zero(%rip)	#, warn_div_by_zero
	jmp	.L4	#
.L113:
	.loc 1 774 0
	movq	-16(%rbp), %rax	# p, tmp328
	movl	$.LC120, %esi	#,
	movq	%rax, %rdi	# tmp328,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L114	#,
	.loc 1 775 0
	movl	$0, warn_div_by_zero(%rip)	#, warn_div_by_zero
	jmp	.L4	#
.L114:
	.loc 1 776 0
	movq	-16(%rbp), %rax	# p, tmp329
	movl	$.LC121, %esi	#,
	movq	%rax, %rdi	# tmp329,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L115	#,
	.loc 1 779 0
	movl	$2, warn_unknown_pragmas(%rip)	#, warn_unknown_pragmas
	jmp	.L4	#
.L115:
	.loc 1 780 0
	movq	-16(%rbp), %rax	# p, tmp330
	movl	$.LC122, %esi	#,
	movq	%rax, %rdi	# tmp330,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L116	#,
	.loc 1 781 0
	movl	$0, warn_unknown_pragmas(%rip)	#, warn_unknown_pragmas
	jmp	.L4	#
.L116:
	.loc 1 782 0
	movq	-16(%rbp), %rax	# p, tmp331
	movl	$.LC123, %esi	#,
	movq	%rax, %rdi	# tmp331,
	call	strcmp	#
	testl	%eax, %eax	# D.21343
	jne	.L117	#,
	.loc 1 787 0
	movl	warn_uninitialized(%rip), %eax	# warn_uninitialized, warn_uninitialized.3
	cmpl	$1, %eax	#, warn_uninitialized.3
	je	.L118	#,
	.loc 1 788 0
	movl	$2, warn_uninitialized(%rip)	#, warn_uninitialized
.L118:
	.loc 1 789 0
	movl	$1, warn_implicit_int(%rip)	#, warn_implicit_int
	.loc 1 790 0
	movl	$1, mesg_implicit_function_declaration(%rip)	#, mesg_implicit_function_declaration
	.loc 1 791 0
	movl	$1, warn_return_type(%rip)	#, warn_return_type
	.loc 1 792 0
	movl	$1, %edi	#,
	call	set_Wunused	#
	.loc 1 793 0
	movl	$1, warn_switch(%rip)	#, warn_switch
	.loc 1 794 0
	movl	$1, %edi	#,
	call	set_Wformat	#
	.loc 1 795 0
	movl	$1, warn_char_subscripts(%rip)	#, warn_char_subscripts
	.loc 1 796 0
	movl	$1, warn_parentheses(%rip)	#, warn_parentheses
	.loc 1 797 0
	movl	$1, warn_sequence_point(%rip)	#, warn_sequence_point
	.loc 1 798 0
	movl	$1, warn_missing_braces(%rip)	#, warn_missing_braces
	.loc 1 801 0
	movl	$2, warn_main(%rip)	#, warn_main
	.loc 1 803 0
	movl	$1, warn_unknown_pragmas(%rip)	#, warn_unknown_pragmas
	jmp	.L4	#
.L117:
	.loc 1 806 0
	movl	-20(%rbp), %eax	# strings_processed, D.21343
	jmp	.L119	#
.L4:
	.loc 1 808 0
	movl	$1, %eax	#, D.21343
.L119:
	.loc 1 809 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	c_decode_option, .-c_decode_option
	.section	.rodata
.LC124:
	.string	"global"
.LC125:
	.string	"local"
.LC126:
	.string	"label"
.LC127:
	.string	"implicit"
.LC128:
	.string	"error locus"
.LC129:
	.string	"limbo value"
.LC130:
	.string	"rid "
.LC131:
	.string	"%p"
.LC132:
	.string	" \"%s\""
	.text
	.globl	c_print_identifier
	.type	c_print_identifier, @function
c_print_identifier:
.LFB3:
	.loc 1 816 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# file, file
	movq	%rsi, -32(%rbp)	# node, node
	movl	%edx, -36(%rbp)	# indent, indent
	.loc 1 817 0
	movl	-36(%rbp), %eax	# indent, tmp80
	leal	4(%rax), %ecx	#, D.21471
	movq	-32(%rbp), %rax	# node, tmp81
	movq	56(%rax), %rdx	# MEM[(struct lang_identifier *)node_3(D)].global_value, D.21472
	movq	-24(%rbp), %rax	# file, tmp82
	movl	$.LC124, %esi	#,
	movq	%rax, %rdi	# tmp82,
	call	print_node	#
	.loc 1 818 0
	movl	-36(%rbp), %eax	# indent, tmp83
	leal	4(%rax), %ecx	#, D.21471
	movq	-32(%rbp), %rax	# node, tmp84
	movq	64(%rax), %rdx	# MEM[(struct lang_identifier *)node_3(D)].local_value, D.21472
	movq	-24(%rbp), %rax	# file, tmp85
	movl	$.LC125, %esi	#,
	movq	%rax, %rdi	# tmp85,
	call	print_node	#
	.loc 1 819 0
	movl	-36(%rbp), %eax	# indent, tmp86
	leal	4(%rax), %ecx	#, D.21471
	movq	-32(%rbp), %rax	# node, tmp87
	movq	72(%rax), %rdx	# MEM[(struct lang_identifier *)node_3(D)].label_value, D.21472
	movq	-24(%rbp), %rax	# file, tmp88
	movl	$.LC126, %esi	#,
	movq	%rax, %rdi	# tmp88,
	call	print_node	#
	.loc 1 820 0
	movl	-36(%rbp), %eax	# indent, tmp89
	leal	4(%rax), %ecx	#, D.21471
	movq	-32(%rbp), %rax	# node, tmp90
	movq	80(%rax), %rdx	# MEM[(struct lang_identifier *)node_3(D)].implicit_decl, D.21472
	movq	-24(%rbp), %rax	# file, tmp91
	movl	$.LC127, %esi	#,
	movq	%rax, %rdi	# tmp91,
	call	print_node	#
	.loc 1 821 0
	movl	-36(%rbp), %eax	# indent, tmp92
	leal	4(%rax), %ecx	#, D.21471
	movq	-32(%rbp), %rax	# node, tmp93
	movq	88(%rax), %rdx	# MEM[(struct lang_identifier *)node_3(D)].error_locus, D.21472
	movq	-24(%rbp), %rax	# file, tmp94
	movl	$.LC128, %esi	#,
	movq	%rax, %rdi	# tmp94,
	call	print_node	#
	.loc 1 822 0
	movl	-36(%rbp), %eax	# indent, tmp95
	leal	4(%rax), %ecx	#, D.21471
	movq	-32(%rbp), %rax	# node, tmp96
	movq	96(%rax), %rdx	# MEM[(struct lang_identifier *)node_3(D)].limbo_value, D.21472
	movq	-24(%rbp), %rax	# file, tmp97
	movl	$.LC129, %esi	#,
	movq	%rax, %rdi	# tmp97,
	call	print_node	#
	.loc 1 823 0
	movq	-32(%rbp), %rax	# node, tmp98
	movzbl	19(%rax), %eax	# *node_3(D), D.21473
	andl	$1, %eax	#, D.21473
	testb	%al, %al	# D.21473
	je	.L120	#,
.LBB3:
	.loc 1 825 0
	movq	ridpointers(%rip), %rdx	# ridpointers, ridpointers.4
	movq	-32(%rbp), %rax	# node, tmp99
	movzbl	43(%rax), %eax	# MEM[(struct c_common_identifier *)node_3(D)].node.rid_code, D.21473
	movzbl	%al, %eax	# D.21473, D.21474
	salq	$3, %rax	#, D.21474
	addq	%rdx, %rax	# ridpointers.4, D.21475
	movq	(%rax), %rax	# *_22, tmp100
	movq	%rax, -8(%rbp)	# tmp100, rid
	.loc 1 826 0
	movl	-36(%rbp), %eax	# indent, tmp101
	leal	4(%rax), %edx	#, D.21471
	movq	-24(%rbp), %rax	# file, tmp102
	movl	%edx, %esi	# D.21471,
	movq	%rax, %rdi	# tmp102,
	call	indent_to	#
	.loc 1 827 0
	movq	-24(%rbp), %rax	# file, tmp103
	movq	%rax, %rcx	# tmp103,
	movl	$4, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC130, %edi	#,
	call	fwrite	#
	.loc 1 828 0
	movq	-8(%rbp), %rdx	# rid, tmp104
	movq	-24(%rbp), %rax	# file, tmp105
	movl	$.LC131, %esi	#,
	movq	%rax, %rdi	# tmp105,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 829 0
	movq	-8(%rbp), %rax	# rid, tmp106
	movq	32(%rax), %rdx	# rid_23->identifier.id.str, D.21476
	movq	-24(%rbp), %rax	# file, tmp107
	movl	$.LC132, %esi	#,
	movq	%rax, %rdi	# tmp107,
	movl	$0, %eax	#,
	call	fprintf	#
.L120:
.LBE3:
	.loc 1 831 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	c_print_identifier, .-c_print_identifier
	.section	.rodata
	.align 8
.LC133:
	.string	"array `%s' assumed to have one element"
	.text
	.globl	finish_incomplete_decl
	.type	finish_incomplete_decl, @function
finish_incomplete_decl:
.LFB4:
	.loc 1 839 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# decl, decl
	.loc 1 840 0
	movq	-24(%rbp), %rax	# decl, tmp65
	movzbl	16(%rax), %eax	# decl_1(D)->common.code, D.21486
	cmpb	$34, %al	#, D.21486
	jne	.L122	#,
.LBB4:
	.loc 1 842 0
	movq	-24(%rbp), %rax	# decl, tmp66
	movq	8(%rax), %rax	# decl_1(D)->common.type, tmp67
	movq	%rax, -8(%rbp)	# tmp67, type
	.loc 1 843 0
	movq	global_trees(%rip), %rax	# global_trees, D.21487
	cmpq	-8(%rbp), %rax	# type, D.21487
	je	.L122	#,
	.loc 1 844 0
	movq	-8(%rbp), %rax	# type, tmp68
	movzbl	16(%rax), %eax	# type_3->common.code, D.21486
	cmpb	$18, %al	#, D.21486
	jne	.L122	#,
	.loc 1 845 0
	movq	-24(%rbp), %rax	# decl, tmp69
	movzbl	49(%rax), %eax	# *decl_1(D), D.21486
	andl	$1, %eax	#, D.21486
	testb	%al, %al	# D.21486
	jne	.L122	#,
	.loc 1 846 0
	movq	-8(%rbp), %rax	# type, tmp70
	movq	24(%rax), %rax	# type_3->type.values, D.21487
	testq	%rax, %rax	# D.21487
	jne	.L122	#,
	.loc 1 848 0
	movq	-24(%rbp), %rax	# decl, tmp71
	movl	$.LC133, %esi	#,
	movq	%rax, %rdi	# tmp71,
	movl	$0, %eax	#,
	call	warning_with_decl	#
	.loc 1 850 0
	movq	-8(%rbp), %rax	# type, tmp72
	movl	$1, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp72,
	call	complete_array_type	#
	.loc 1 852 0
	movq	-24(%rbp), %rax	# decl, tmp73
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp73,
	call	layout_decl	#
.L122:
.LBE4:
	.loc 1 855 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	finish_incomplete_decl, .-finish_incomplete_decl
	.type	make_binding_level, @function
make_binding_level:
.LFB5:
	.loc 1 861 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 863 0
	movl	$72, %edi	#,
	call	xmalloc	#
	.loc 1 864 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	make_binding_level, .-make_binding_level
	.globl	global_bindings_p
	.type	global_bindings_p, @function
global_bindings_p:
.LFB6:
	.loc 1 870 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 871 0
	movq	current_binding_level(%rip), %rdx	# current_binding_level, current_binding_level.5
	movq	global_binding_level(%rip), %rax	# global_binding_level, global_binding_level.6
	cmpq	%rax, %rdx	# global_binding_level.6, current_binding_level.5
	sete	%al	#, D.21490
	movzbl	%al, %eax	# D.21490, D.21491
	.loc 1 872 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	global_bindings_p, .-global_bindings_p
	.globl	keep_next_level
	.type	keep_next_level, @function
keep_next_level:
.LFB7:
	.loc 1 876 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 877 0
	movl	$1, keep_next_level_flag(%rip)	#, keep_next_level_flag
	.loc 1 878 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	keep_next_level, .-keep_next_level
	.globl	kept_level_p
	.type	kept_level_p, @function
kept_level_p:
.LFB8:
	.loc 1 884 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 885 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.8
	movzbl	52(%rax), %eax	# current_binding_level.8_2->keep_if_subblocks, D.21492
	.loc 1 889 0
	testb	%al, %al	# D.21492
	je	.L130	#,
	.loc 1 886 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.9
	movq	24(%rax), %rax	# current_binding_level.9_4->blocks, D.21493
	testq	%rax, %rax	# D.21493
	jne	.L131	#,
.L130:
	.loc 1 887 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.10
	movzbl	51(%rax), %eax	# current_binding_level.10_6->keep, D.21492
	testb	%al, %al	# D.21492
	jne	.L131	#,
	.loc 1 888 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.11
	movq	(%rax), %rax	# current_binding_level.11_8->names, D.21493
	testq	%rax, %rax	# D.21493
	jne	.L131	#,
	.loc 1 889 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.12
	movq	8(%rax), %rax	# current_binding_level.12_10->tags, D.21493
	testq	%rax, %rax	# D.21493
	je	.L132	#,
	.loc 1 890 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.13
	movzbl	49(%rax), %eax	# current_binding_level.13_12->tag_transparent, D.21492
	testb	%al, %al	# D.21492
	jne	.L132	#,
.L131:
	.loc 1 889 0
	movl	$1, %eax	#, iftmp.7
	jmp	.L133	#
.L132:
	.loc 1 889 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, iftmp.7
.L133:
	.loc 1 891 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	kept_level_p, .-kept_level_p
	.globl	declare_parm_level
	.type	declare_parm_level, @function
declare_parm_level:
.LFB9:
	.loc 1 901 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# definition_flag, definition_flag
	.loc 1 902 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.14
	movb	$1, 48(%rax)	#, current_binding_level.14_1->parm_flag
	.loc 1 903 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	declare_parm_level, .-declare_parm_level
	.globl	in_parm_level_p
	.type	in_parm_level_p, @function
in_parm_level_p:
.LFB10:
	.loc 1 909 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 910 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.15
	movzbl	48(%rax), %eax	# current_binding_level.15_1->parm_flag, D.21495
	movsbl	%al, %eax	# D.21495, D.21496
	.loc 1 911 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	in_parm_level_p, .-in_parm_level_p
	.globl	pushlevel
	.type	pushlevel, @function
pushlevel:
.LFB11:
	.loc 1 920 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# tag_transparent, tag_transparent
	.loc 1 921 0
	movq	$0, -8(%rbp)	#, newlevel
	.loc 1 926 0
	movq	current_binding_level(%rip), %rdx	# current_binding_level, current_binding_level.16
	movq	global_binding_level(%rip), %rax	# global_binding_level, global_binding_level.17
	cmpq	%rax, %rdx	# global_binding_level.17, current_binding_level.16
	jne	.L139	#,
	.loc 1 928 0
	movq	$0, named_labels(%rip)	#, named_labels
.L139:
	.loc 1 933 0
	movq	free_binding_level(%rip), %rax	# free_binding_level, free_binding_level.18
	testq	%rax, %rax	# free_binding_level.18
	je	.L140	#,
	.loc 1 935 0
	movq	free_binding_level(%rip), %rax	# free_binding_level, tmp74
	movq	%rax, -8(%rbp)	# tmp74, newlevel
	.loc 1 936 0
	movq	free_binding_level(%rip), %rax	# free_binding_level, free_binding_level.19
	movq	40(%rax), %rax	# free_binding_level.19_8->level_chain, free_binding_level.20
	movq	%rax, free_binding_level(%rip)	# free_binding_level.20, free_binding_level
	jmp	.L141	#
.L140:
	.loc 1 940 0
	call	make_binding_level	#
	movq	%rax, -8(%rbp)	# tmp75, newlevel
.L141:
	.loc 1 946 0
	movq	-8(%rbp), %rax	# newlevel, tmp76
	movq	clear_binding_level(%rip), %rdx	# clear_binding_level, tmp78
	movq	%rdx, (%rax)	# tmp78, *newlevel_1
	movq	clear_binding_level+8(%rip), %rdx	# clear_binding_level, tmp79
	movq	%rdx, 8(%rax)	# tmp79, *newlevel_1
	movq	clear_binding_level+16(%rip), %rdx	# clear_binding_level, tmp80
	movq	%rdx, 16(%rax)	# tmp80, *newlevel_1
	movq	clear_binding_level+24(%rip), %rdx	# clear_binding_level, tmp81
	movq	%rdx, 24(%rax)	# tmp81, *newlevel_1
	movq	clear_binding_level+32(%rip), %rdx	# clear_binding_level, tmp82
	movq	%rdx, 32(%rax)	# tmp82, *newlevel_1
	movq	clear_binding_level+40(%rip), %rdx	# clear_binding_level, tmp83
	movq	%rdx, 40(%rax)	# tmp83, *newlevel_1
	movq	clear_binding_level+48(%rip), %rdx	# clear_binding_level, tmp84
	movq	%rdx, 48(%rax)	# tmp84, *newlevel_1
	movq	clear_binding_level+56(%rip), %rdx	# clear_binding_level, tmp85
	movq	%rdx, 56(%rax)	# tmp85, *newlevel_1
	movq	clear_binding_level+64(%rip), %rdx	# clear_binding_level, tmp86
	movq	%rdx, 64(%rax)	# tmp86, *newlevel_1
	.loc 1 949 0
	cmpl	$0, -20(%rbp)	#, tag_transparent
	jne	.L142	#,
	.loc 1 950 0 discriminator 2
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.22
	.loc 1 949 0 discriminator 2
	testq	%rax, %rax	# current_binding_level.22
	je	.L143	#,
	.loc 1 950 0 discriminator 3
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.23
	movzbl	50(%rax), %eax	# current_binding_level.23_13->subblocks_tag_transparent, D.21497
	.loc 1 949 0 discriminator 3
	testb	%al, %al	# D.21497
	je	.L143	#,
.L142:
	.loc 1 949 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.21
	jmp	.L144	#
.L143:
	.loc 1 949 0 discriminator 4
	movl	$0, %eax	#, iftmp.21
.L144:
	.loc 1 948 0 is_stmt 1
	movl	%eax, %edx	# iftmp.21, D.21497
	movq	-8(%rbp), %rax	# newlevel, tmp87
	movb	%dl, 49(%rax)	# D.21497, newlevel_1->tag_transparent
	.loc 1 952 0
	movq	current_binding_level(%rip), %rdx	# current_binding_level, current_binding_level.24
	movq	-8(%rbp), %rax	# newlevel, tmp88
	movq	%rdx, 40(%rax)	# current_binding_level.24, newlevel_1->level_chain
	.loc 1 953 0
	movq	-8(%rbp), %rax	# newlevel, tmp89
	movq	%rax, current_binding_level(%rip)	# tmp89, current_binding_level
	.loc 1 954 0
	movl	keep_next_level_flag(%rip), %eax	# keep_next_level_flag, keep_next_level_flag.25
	movl	%eax, %edx	# keep_next_level_flag.25, D.21497
	movq	-8(%rbp), %rax	# newlevel, tmp90
	movb	%dl, 51(%rax)	# D.21497, newlevel_1->keep
	.loc 1 955 0
	movl	$0, keep_next_level_flag(%rip)	#, keep_next_level_flag
	.loc 1 956 0
	movl	keep_next_if_subblocks(%rip), %eax	# keep_next_if_subblocks, keep_next_if_subblocks.26
	movl	%eax, %edx	# keep_next_if_subblocks.26, D.21497
	movq	-8(%rbp), %rax	# newlevel, tmp91
	movb	%dl, 52(%rax)	# D.21497, newlevel_1->keep_if_subblocks
	.loc 1 957 0
	movl	$0, keep_next_if_subblocks(%rip)	#, keep_next_if_subblocks
	.loc 1 958 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	pushlevel, .-pushlevel
	.type	clear_limbo_values, @function
clear_limbo_values:
.LFB12:
	.loc 1 965 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# block, block
	.loc 1 968 0
	movq	-24(%rbp), %rax	# block, tmp61
	movq	32(%rax), %rax	# block_3(D)->block.vars, tmp62
	movq	%rax, -8(%rbp)	# tmp62, tem
	jmp	.L146	#
.L148:
	.loc 1 969 0
	movq	-8(%rbp), %rax	# tem, tmp63
	movq	72(%rax), %rax	# tem_1->decl.name, D.21498
	testq	%rax, %rax	# D.21498
	je	.L147	#,
	.loc 1 970 0
	movq	-8(%rbp), %rax	# tem, tmp64
	movq	72(%rax), %rax	# tem_1->decl.name, D.21498
	movq	$0, 96(%rax)	#, MEM[(struct lang_identifier *)_6].limbo_value
.L147:
	.loc 1 968 0
	movq	-8(%rbp), %rax	# tem, tmp65
	movq	(%rax), %rax	# tem_1->common.chain, tmp66
	movq	%rax, -8(%rbp)	# tmp66, tem
.L146:
	.loc 1 968 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, tem
	jne	.L148	#,
	.loc 1 972 0 is_stmt 1
	movq	-24(%rbp), %rax	# block, tmp67
	movq	40(%rax), %rax	# block_3(D)->block.subblocks, tmp68
	movq	%rax, -8(%rbp)	# tmp68, tem
	jmp	.L149	#
.L150:
	.loc 1 973 0 discriminator 2
	movq	-8(%rbp), %rax	# tem, tmp69
	movq	%rax, %rdi	# tmp69,
	call	clear_limbo_values	#
	.loc 1 972 0 discriminator 2
	movq	-8(%rbp), %rax	# tem, tmp70
	movq	(%rax), %rax	# tem_2->common.chain, tmp71
	movq	%rax, -8(%rbp)	# tmp71, tem
.L149:
	.loc 1 972 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, tem
	jne	.L150	#,
	.loc 1 974 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	clear_limbo_values, .-clear_limbo_values
	.section	.rodata
	.align 8
.LC134:
	.string	"label `%s' used but not defined"
	.align 8
.LC135:
	.string	"label `%s' defined but not used"
	.text
	.globl	poplevel
	.type	poplevel, @function
poplevel:
.LFB13:
	.loc 1 996 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -100(%rbp)	# keep, keep
	movl	%esi, -104(%rbp)	# reverse, reverse
	movl	%edx, -108(%rbp)	# functionbody, functionbody
	.loc 1 1001 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.27
	movq	8(%rax), %rax	# current_binding_level.27_10->tags, tmp125
	movq	%rax, -48(%rbp)	# tmp125, tags
	.loc 1 1002 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.28
	movq	24(%rax), %rax	# current_binding_level.28_12->blocks, tmp126
	movq	%rax, -40(%rbp)	# tmp126, subblocks
	.loc 1 1003 0
	movq	$0, -64(%rbp)	#, block
	.loc 1 1007 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.29
	movzbl	51(%rax), %eax	# current_binding_level.29_15->keep, D.21499
	movsbl	%al, %eax	# D.21499, D.21500
	orl	%eax, -100(%rbp)	# D.21500, keep
	.loc 1 1040 0
	cmpl	$0, -104(%rbp)	#, reverse
	je	.L152	#,
	.loc 1 1041 0
	movq	current_binding_level(%rip), %rbx	# current_binding_level, current_binding_level.30
	.loc 1 1042 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.31
	movq	(%rax), %rax	# current_binding_level.31_22->names, D.21501
	movq	%rax, %rdi	# D.21501,
	call	nreverse	#
	movq	%rax, -72(%rbp)	# tmp127, decls
	movq	-72(%rbp), %rax	# decls, tmp128
	movq	%rax, (%rbx)	# tmp128, current_binding_level.30_21->names
	jmp	.L153	#
.L152:
	.loc 1 1044 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.32
	movq	(%rax), %rax	# current_binding_level.32_25->names, tmp129
	movq	%rax, -72(%rbp)	# tmp129, decls
.L153:
	.loc 1 1049 0
	movq	-72(%rbp), %rax	# decls, tmp130
	movq	%rax, -56(%rbp)	# tmp130, decl
	jmp	.L154	#
.L156:
	.loc 1 1050 0
	movq	-56(%rbp), %rax	# decl, tmp131
	movzbl	16(%rax), %eax	# decl_9->common.code, D.21502
	cmpb	$30, %al	#, D.21502
	jne	.L155	#,
	.loc 1 1051 0
	movq	-56(%rbp), %rax	# decl, tmp132
	movzbl	17(%rax), %eax	# *decl_9, D.21502
	andl	$64, %eax	#, D.21502
	testb	%al, %al	# D.21502
	jne	.L155	#,
	.loc 1 1052 0
	movq	-56(%rbp), %rax	# decl, tmp133
	movq	104(%rax), %rax	# decl_9->decl.initial, D.21501
	testq	%rax, %rax	# D.21501
	je	.L155	#,
	.loc 1 1053 0
	movq	-56(%rbp), %rax	# decl, tmp134
	movzbl	17(%rax), %eax	# *decl_9, D.21502
	andl	$4, %eax	#, D.21502
	testb	%al, %al	# D.21502
	je	.L155	#,
	.loc 1 1061 0
	movq	-56(%rbp), %rax	# decl, tmp135
	movq	112(%rax), %rax	# decl_9->decl.abstract_origin, D.21501
	testq	%rax, %rax	# D.21501
	je	.L155	#,
	.loc 1 1062 0
	movq	-56(%rbp), %rax	# decl, tmp136
	movq	112(%rax), %rax	# decl_9->decl.abstract_origin, D.21501
	cmpq	-56(%rbp), %rax	# decl, D.21501
	je	.L155	#,
	.loc 1 1063 0
	movq	-56(%rbp), %rax	# decl, tmp137
	movq	112(%rax), %rax	# decl_9->decl.abstract_origin, D.21501
	movzbl	17(%rax), %edx	#, tmp140
	orl	$4, %edx	#, tmp141
	movb	%dl, 17(%rax)	# tmp141,
.L155:
	.loc 1 1049 0
	movq	-56(%rbp), %rax	# decl, tmp142
	movq	(%rax), %rax	# decl_9->common.chain, tmp143
	movq	%rax, -56(%rbp)	# tmp143, decl
.L154:
	.loc 1 1049 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, decl
	jne	.L156	#,
	.loc 1 1070 0 is_stmt 1
	call	getdecls	#
	movq	%rax, %rdi	# D.21501,
	call	warn_about_unused_variables	#
	.loc 1 1076 0
	movq	$0, -64(%rbp)	#, block
	.loc 1 1077 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.33
	movq	32(%rax), %rax	# current_binding_level.33_40->this_block, D.21501
	testq	%rax, %rax	# D.21501
	setne	%al	#, D.21503
	movzbl	%al, %eax	# D.21503, tmp144
	movl	%eax, -84(%rbp)	# tmp144, block_previously_created
	.loc 1 1078 0
	cmpl	$0, -84(%rbp)	#, block_previously_created
	je	.L157	#,
	.loc 1 1079 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.34
	movq	32(%rax), %rax	# current_binding_level.34_44->this_block, tmp145
	movq	%rax, -64(%rbp)	# tmp145, block
	jmp	.L158	#
.L157:
	.loc 1 1080 0
	cmpl	$0, -100(%rbp)	#, keep
	jne	.L159	#,
	.loc 1 1080 0 is_stmt 0 discriminator 1
	cmpl	$0, -108(%rbp)	#, functionbody
	jne	.L159	#,
	.loc 1 1081 0 is_stmt 1
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.35
	movzbl	52(%rax), %eax	# current_binding_level.35_47->keep_if_subblocks, D.21499
	testb	%al, %al	# D.21499
	je	.L158	#,
	.loc 1 1081 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, subblocks
	je	.L158	#,
.L159:
	.loc 1 1082 0 is_stmt 1
	movl	$4, %edi	#,
	call	make_node	#
	movq	%rax, -64(%rbp)	# tmp146, block
.L158:
	.loc 1 1083 0
	cmpq	$0, -64(%rbp)	#, block
	je	.L160	#,
	.loc 1 1085 0
	movq	-64(%rbp), %rax	# block, tmp147
	movq	-72(%rbp), %rdx	# decls, tmp148
	movq	%rdx, 32(%rax)	# tmp148, block_8->block.vars
	.loc 1 1086 0
	movq	-64(%rbp), %rax	# block, tmp149
	movq	-40(%rbp), %rdx	# subblocks, tmp150
	movq	%rdx, 40(%rax)	# tmp150, block_8->block.subblocks
.L160:
	.loc 1 1091 0
	movq	-40(%rbp), %rax	# subblocks, tmp151
	movq	%rax, -80(%rbp)	# tmp151, link
	jmp	.L161	#
.L162:
	.loc 1 1092 0 discriminator 2
	movq	-80(%rbp), %rax	# link, tmp152
	movq	-64(%rbp), %rdx	# block, tmp153
	movq	%rdx, 48(%rax)	# tmp153, link_1->block.supercontext
	.loc 1 1091 0 discriminator 2
	movq	-80(%rbp), %rax	# link, tmp154
	movq	(%rax), %rax	# link_1->common.chain, tmp155
	movq	%rax, -80(%rbp)	# tmp155, link
.L161:
	.loc 1 1091 0 is_stmt 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, link
	jne	.L162	#,
	.loc 1 1096 0 is_stmt 1
	movq	-72(%rbp), %rax	# decls, tmp156
	movq	%rax, -80(%rbp)	# tmp156, link
	jmp	.L163	#
.L168:
	.loc 1 1098 0
	movq	-80(%rbp), %rax	# link, tmp157
	movq	72(%rax), %rax	# link_2->decl.name, D.21501
	testq	%rax, %rax	# D.21501
	je	.L164	#,
	.loc 1 1102 0
	movq	-80(%rbp), %rax	# link, tmp158
	movzbl	49(%rax), %eax	# *link_2, D.21502
	andl	$1, %eax	#, D.21502
	testb	%al, %al	# D.21502
	je	.L165	#,
	.loc 1 1104 0
	movq	-80(%rbp), %rax	# link, tmp159
	movzbl	18(%rax), %eax	# *link_2, D.21502
	andl	$1, %eax	#, D.21502
	testb	%al, %al	# D.21502
	je	.L166	#,
	.loc 1 1105 0
	movq	-80(%rbp), %rax	# link, tmp160
	movq	72(%rax), %rax	# link_2->decl.name, D.21501
	movzbl	18(%rax), %edx	#, tmp163
	orl	$1, %edx	#, tmp164
	movb	%dl, 18(%rax)	# tmp164,
.L166:
	.loc 1 1106 0
	movq	-80(%rbp), %rax	# link, tmp165
	movzbl	17(%rax), %eax	# *link_2, D.21502
	andl	$4, %eax	#, D.21502
	testb	%al, %al	# D.21502
	je	.L165	#,
	.loc 1 1107 0
	movq	-80(%rbp), %rax	# link, tmp166
	movq	120(%rax), %rax	# link_2->decl.assembler_name, D.21501
	testq	%rax, %rax	# D.21501
	jne	.L167	#,
	.loc 1 1107 0 is_stmt 0 discriminator 1
	movq	lang_set_decl_assembler_name(%rip), %rax	# lang_set_decl_assembler_name, lang_set_decl_assembler_name.36
	movq	-80(%rbp), %rdx	# link, tmp167
	movq	%rdx, %rdi	# tmp167,
	call	*%rax	# lang_set_decl_assembler_name.36
.L167:
	.loc 1 1107 0 discriminator 2
	movq	-80(%rbp), %rax	# link, tmp168
	movq	120(%rax), %rax	# link_2->decl.assembler_name, D.21501
	movzbl	17(%rax), %edx	#, tmp171
	orl	$4, %edx	#, tmp172
	movb	%dl, 17(%rax)	# tmp172,
.L165:
	.loc 1 1109 0 is_stmt 1
	movq	-80(%rbp), %rax	# link, tmp173
	movq	72(%rax), %rax	# link_2->decl.name, D.21501
	movq	$0, 64(%rax)	#, MEM[(struct lang_identifier *)_64].local_value
.L164:
	.loc 1 1096 0
	movq	-80(%rbp), %rax	# link, tmp174
	movq	(%rax), %rax	# link_2->common.chain, tmp175
	movq	%rax, -80(%rbp)	# tmp175, link
.L163:
	.loc 1 1096 0 is_stmt 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, link
	jne	.L168	#,
	.loc 1 1116 0 is_stmt 1
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.37
	movq	16(%rax), %rax	# current_binding_level.37_66->shadowed, tmp176
	movq	%rax, -80(%rbp)	# tmp176, link
	jmp	.L169	#
.L170:
	.loc 1 1117 0 discriminator 2
	movq	-80(%rbp), %rax	# link, tmp177
	movq	24(%rax), %rax	# link_3->list.purpose, D.21501
	movq	-80(%rbp), %rdx	# link, tmp178
	movq	32(%rdx), %rdx	# link_3->list.value, D.21501
	movq	%rdx, 64(%rax)	# D.21501, MEM[(struct lang_identifier *)_68].local_value
	.loc 1 1116 0 discriminator 2
	movq	-80(%rbp), %rax	# link, tmp179
	movq	(%rax), %rax	# link_3->common.chain, tmp180
	movq	%rax, -80(%rbp)	# tmp180, link
.L169:
	.loc 1 1116 0 is_stmt 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, link
	jne	.L170	#,
	.loc 1 1123 0 is_stmt 1
	cmpl	$0, -108(%rbp)	#, functionbody
	je	.L171	#,
	.loc 1 1125 0
	movq	-64(%rbp), %rax	# block, tmp181
	movq	%rax, %rdi	# tmp181,
	call	clear_limbo_values	#
	.loc 1 1132 0
	movq	-64(%rbp), %rax	# block, tmp182
	movq	$0, 32(%rax)	#, block_8->block.vars
	.loc 1 1138 0
	movq	named_labels(%rip), %rax	# named_labels, tmp183
	movq	%rax, -80(%rbp)	# tmp183, link
	jmp	.L172	#
.L175:
.LBB5:
	.loc 1 1140 0
	movq	-80(%rbp), %rax	# link, tmp184
	movq	32(%rax), %rax	# link_4->list.value, tmp185
	movq	%rax, -32(%rbp)	# tmp185, label
	.loc 1 1142 0
	movq	-32(%rbp), %rax	# label, tmp186
	movq	104(%rax), %rax	# label_72->decl.initial, D.21501
	testq	%rax, %rax	# D.21501
	jne	.L173	#,
	.loc 1 1144 0
	movq	-32(%rbp), %rax	# label, tmp187
	movl	$.LC134, %esi	#,
	movq	%rax, %rdi	# tmp187,
	movl	$0, %eax	#,
	call	error_with_decl	#
	.loc 1 1146 0
	movq	-32(%rbp), %rax	# label, tmp188
	movq	72(%rax), %rdx	# label_72->decl.name, D.21501
	movl	lineno(%rip), %ecx	# lineno, lineno.38
	movq	input_filename(%rip), %rax	# input_filename, input_filename.39
	movl	%ecx, %esi	# lineno.38,
	movq	%rax, %rdi	# input_filename.39,
	call	define_label	#
	jmp	.L174	#
.L173:
	.loc 1 1149 0
	movl	warn_unused_label(%rip), %eax	# warn_unused_label, warn_unused_label.40
	testl	%eax, %eax	# warn_unused_label.40
	je	.L174	#,
	.loc 1 1149 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# label, tmp189
	movzbl	18(%rax), %eax	# *label_72, D.21502
	andl	$1, %eax	#, D.21502
	testb	%al, %al	# D.21502
	jne	.L174	#,
	.loc 1 1150 0 is_stmt 1
	movq	-32(%rbp), %rax	# label, tmp190
	movl	$.LC135, %esi	#,
	movq	%rax, %rdi	# tmp190,
	movl	$0, %eax	#,
	call	warning_with_decl	#
.L174:
	.loc 1 1151 0
	movq	-32(%rbp), %rax	# label, tmp191
	movq	72(%rax), %rax	# label_72->decl.name, D.21501
	movq	$0, 72(%rax)	#, MEM[(struct lang_identifier *)_80].label_value
	.loc 1 1155 0
	movq	-64(%rbp), %rax	# block, tmp192
	movq	32(%rax), %rdx	# block_8->block.vars, D.21501
	movq	-32(%rbp), %rax	# label, tmp193
	movq	%rdx, (%rax)	# D.21501, label_72->common.chain
	.loc 1 1156 0
	movq	-64(%rbp), %rax	# block, tmp194
	movq	-32(%rbp), %rdx	# label, tmp195
	movq	%rdx, 32(%rax)	# tmp195, block_8->block.vars
.LBE5:
	.loc 1 1138 0
	movq	-80(%rbp), %rax	# link, tmp196
	movq	(%rax), %rax	# link_4->common.chain, tmp197
	movq	%rax, -80(%rbp)	# tmp197, link
.L172:
	.loc 1 1138 0 is_stmt 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, link
	jne	.L175	#,
.L171:
.LBB6:
	.loc 1 1163 0 is_stmt 1
	movq	current_binding_level(%rip), %rax	# current_binding_level, tmp198
	movq	%rax, -24(%rbp)	# tmp198, level
	.loc 1 1164 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.41
	movq	40(%rax), %rax	# current_binding_level.41_84->level_chain, current_binding_level.42
	movq	%rax, current_binding_level(%rip)	# current_binding_level.42, current_binding_level
	.loc 1 1166 0
	movq	free_binding_level(%rip), %rdx	# free_binding_level, free_binding_level.43
	movq	-24(%rbp), %rax	# level, tmp199
	movq	%rdx, 40(%rax)	# free_binding_level.43, level_83->level_chain
	.loc 1 1167 0
	movq	-24(%rbp), %rax	# level, tmp200
	movq	%rax, free_binding_level(%rip)	# tmp200, free_binding_level
.LBE6:
	.loc 1 1171 0
	cmpl	$0, -108(%rbp)	#, functionbody
	je	.L176	#,
	.loc 1 1172 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.44
	movq	-64(%rbp), %rdx	# block, tmp201
	movq	%rdx, 104(%rax)	# tmp201, current_function_decl.44_87->decl.initial
	jmp	.L177	#
.L176:
	.loc 1 1173 0
	cmpq	$0, -64(%rbp)	#, block
	je	.L178	#,
	.loc 1 1175 0
	cmpl	$0, -84(%rbp)	#, block_previously_created
	jne	.L177	#,
	.loc 1 1176 0
	movq	current_binding_level(%rip), %rbx	# current_binding_level, current_binding_level.45
	.loc 1 1177 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.46
	movq	24(%rax), %rax	# current_binding_level.46_89->blocks, D.21501
	movq	-64(%rbp), %rdx	# block, tmp202
	movq	%rdx, %rsi	# tmp202,
	movq	%rax, %rdi	# D.21501,
	call	chainon	#
	movq	%rax, 24(%rbx)	# D.21501, current_binding_level.45_88->blocks
	jmp	.L177	#
.L178:
	.loc 1 1184 0
	cmpq	$0, -40(%rbp)	#, subblocks
	je	.L177	#,
	.loc 1 1185 0
	movq	current_binding_level(%rip), %rbx	# current_binding_level, current_binding_level.47
	.loc 1 1186 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.48
	movq	24(%rax), %rax	# current_binding_level.48_93->blocks, D.21501
	movq	-40(%rbp), %rdx	# subblocks, tmp203
	movq	%rdx, %rsi	# tmp203,
	movq	%rax, %rdi	# D.21501,
	call	chainon	#
	movq	%rax, 24(%rbx)	# D.21501, current_binding_level.47_92->blocks
.L177:
	.loc 1 1202 0
	cmpl	$0, -108(%rbp)	#, functionbody
	je	.L180	#,
	.loc 1 1203 0
	movq	-48(%rbp), %rax	# tags, tmp204
	movq	%rax, -80(%rbp)	# tmp204, link
	jmp	.L181	#
.L182:
	.loc 1 1204 0 discriminator 2
	movq	-80(%rbp), %rax	# link, tmp205
	movq	32(%rax), %rax	# link_5->list.value, D.21501
	movq	current_function_decl(%rip), %rdx	# current_function_decl, current_function_decl.49
	movq	%rdx, 144(%rax)	# current_function_decl.49, _97->type.context
	.loc 1 1203 0 discriminator 2
	movq	-80(%rbp), %rax	# link, tmp206
	movq	(%rax), %rax	# link_5->common.chain, tmp207
	movq	%rax, -80(%rbp)	# tmp207, link
.L181:
	.loc 1 1203 0 is_stmt 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, link
	jne	.L182	#,
	jmp	.L183	#
.L180:
	.loc 1 1205 0 is_stmt 1
	cmpq	$0, -64(%rbp)	#, block
	je	.L183	#,
	.loc 1 1206 0
	movq	-48(%rbp), %rax	# tags, tmp208
	movq	%rax, -80(%rbp)	# tmp208, link
	jmp	.L184	#
.L185:
	.loc 1 1207 0 discriminator 2
	movq	-80(%rbp), %rax	# link, tmp209
	movq	32(%rax), %rax	# link_6->list.value, D.21501
	movq	-64(%rbp), %rdx	# block, tmp210
	movq	%rdx, 144(%rax)	# tmp210, _101->type.context
	.loc 1 1206 0 discriminator 2
	movq	-80(%rbp), %rax	# link, tmp211
	movq	(%rax), %rax	# link_6->common.chain, tmp212
	movq	%rax, -80(%rbp)	# tmp212, link
.L184:
	.loc 1 1206 0 is_stmt 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, link
	jne	.L185	#,
.L183:
	.loc 1 1209 0 is_stmt 1
	cmpq	$0, -64(%rbp)	#, block
	je	.L186	#,
	.loc 1 1210 0
	movq	-64(%rbp), %rax	# block, tmp213
	movzbl	18(%rax), %edx	#, tmp216
	orl	$1, %edx	#, tmp217
	movb	%dl, 18(%rax)	# tmp217,
.L186:
	.loc 1 1212 0
	movq	-64(%rbp), %rax	# block, D.21504
	.loc 1 1213 0
	addq	$104, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	poplevel, .-poplevel
	.globl	insert_block
	.type	insert_block, @function
insert_block:
.LFB14:
	.loc 1 1222 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# block, block
	.loc 1 1223 0
	movq	-24(%rbp), %rax	# block, tmp63
	movzbl	18(%rax), %edx	#, tmp66
	orl	$1, %edx	#, tmp67
	movb	%dl, 18(%rax)	# tmp67,
	.loc 1 1224 0
	movq	current_binding_level(%rip), %rbx	# current_binding_level, current_binding_level.50
	.loc 1 1225 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.51
	movq	24(%rax), %rax	# current_binding_level.51_3->blocks, D.21507
	movq	-24(%rbp), %rdx	# block, tmp68
	movq	%rdx, %rsi	# tmp68,
	movq	%rax, %rdi	# D.21507,
	call	chainon	#
	movq	%rax, 24(%rbx)	# D.21507, current_binding_level.50_2->blocks
	.loc 1 1226 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	insert_block, .-insert_block
	.globl	set_block
	.type	set_block, @function
set_block:
.LFB15:
	.loc 1 1234 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# block, block
	.loc 1 1235 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.52
	movq	-24(%rbp), %rdx	# block, tmp70
	movq	%rdx, 32(%rax)	# tmp70, current_binding_level.52_1->this_block
	.loc 1 1236 0
	movq	current_binding_level(%rip), %rbx	# current_binding_level, current_binding_level.53
	movq	-24(%rbp), %rax	# block, tmp71
	movq	32(%rax), %rdx	# block_2(D)->block.vars, D.21508
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.54
	movq	(%rax), %rax	# current_binding_level.54_5->names, D.21508
	movq	%rdx, %rsi	# D.21508,
	movq	%rax, %rdi	# D.21508,
	call	chainon	#
	movq	%rax, (%rbx)	# D.21508, current_binding_level.53_3->names
	.loc 1 1238 0
	movq	current_binding_level(%rip), %rbx	# current_binding_level, current_binding_level.55
	movq	-24(%rbp), %rax	# block, tmp72
	movq	40(%rax), %rdx	# block_2(D)->block.subblocks, D.21508
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.56
	movq	24(%rax), %rax	# current_binding_level.56_10->blocks, D.21508
	movq	%rdx, %rsi	# D.21508,
	movq	%rax, %rdi	# D.21508,
	call	chainon	#
	movq	%rax, 24(%rbx)	# D.21508, current_binding_level.55_8->blocks
	.loc 1 1240 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	set_block, .-set_block
	.globl	push_label_level
	.type	push_label_level, @function
push_label_level:
.LFB16:
	.loc 1 1244 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 1249 0
	movq	free_binding_level(%rip), %rax	# free_binding_level, free_binding_level.57
	testq	%rax, %rax	# free_binding_level.57
	je	.L191	#,
	.loc 1 1251 0
	movq	free_binding_level(%rip), %rax	# free_binding_level, tmp65
	movq	%rax, -8(%rbp)	# tmp65, newlevel
	.loc 1 1252 0
	movq	free_binding_level(%rip), %rax	# free_binding_level, free_binding_level.58
	movq	40(%rax), %rax	# free_binding_level.58_4->level_chain, free_binding_level.59
	movq	%rax, free_binding_level(%rip)	# free_binding_level.59, free_binding_level
	jmp	.L192	#
.L191:
	.loc 1 1256 0
	call	make_binding_level	#
	movq	%rax, -8(%rbp)	# tmp66, newlevel
.L192:
	.loc 1 1261 0
	movq	label_level_chain(%rip), %rdx	# label_level_chain, label_level_chain.60
	movq	-8(%rbp), %rax	# newlevel, tmp67
	movq	%rdx, 40(%rax)	# label_level_chain.60, newlevel_1->level_chain
	.loc 1 1262 0
	movq	-8(%rbp), %rax	# newlevel, tmp68
	movq	%rax, label_level_chain(%rip)	# tmp68, label_level_chain
	.loc 1 1264 0
	movq	named_labels(%rip), %rdx	# named_labels, named_labels.61
	movq	-8(%rbp), %rax	# newlevel, tmp69
	movq	%rdx, (%rax)	# named_labels.61, newlevel_1->names
	.loc 1 1265 0
	movq	shadowed_labels(%rip), %rdx	# shadowed_labels, shadowed_labels.62
	movq	-8(%rbp), %rax	# newlevel, tmp70
	movq	%rdx, 16(%rax)	# shadowed_labels.62, newlevel_1->shadowed
	.loc 1 1266 0
	movq	$0, named_labels(%rip)	#, named_labels
	.loc 1 1267 0
	movq	$0, shadowed_labels(%rip)	#, shadowed_labels
	.loc 1 1268 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	push_label_level, .-push_label_level
	.globl	pop_label_level
	.type	pop_label_level, @function
pop_label_level:
.LFB17:
	.loc 1 1272 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	.loc 1 1273 0
	movq	label_level_chain(%rip), %rax	# label_level_chain, tmp88
	movq	%rax, -8(%rbp)	# tmp88, level
	.loc 1 1278 0
	movq	named_labels(%rip), %rax	# named_labels, tmp89
	movq	%rax, -24(%rbp)	# tmp89, link
	movq	$0, -16(%rbp)	#, prev
	jmp	.L194	#
.L200:
	.loc 1 1280 0
	movq	-24(%rbp), %rax	# link, tmp90
	movq	32(%rax), %rax	# link_1->list.value, D.21509
	movzbl	19(%rax), %eax	# *_7, D.21510
	andl	$2, %eax	#, D.21510
	testb	%al, %al	# D.21510
	je	.L195	#,
	.loc 1 1282 0
	movq	-24(%rbp), %rax	# link, tmp91
	movq	32(%rax), %rax	# link_1->list.value, D.21509
	movl	32(%rax), %eax	# _10->decl.linenum, D.21511
	testl	%eax, %eax	# D.21511
	jne	.L196	#,
	.loc 1 1284 0
	movq	-24(%rbp), %rax	# link, tmp92
	movq	32(%rax), %rax	# link_1->list.value, D.21509
	movl	$.LC134, %esi	#,
	movq	%rax, %rdi	# D.21509,
	movl	$0, %eax	#,
	call	error_with_decl	#
	.loc 1 1288 0
	movq	-24(%rbp), %rax	# link, tmp93
	movq	32(%rax), %rax	# link_1->list.value, D.21509
	.loc 1 1287 0
	movq	72(%rax), %rdx	# _13->decl.name, D.21509
	movl	lineno(%rip), %ecx	# lineno, lineno.63
	movq	input_filename(%rip), %rax	# input_filename, input_filename.64
	movl	%ecx, %esi	# lineno.63,
	movq	%rax, %rdi	# input_filename.64,
	call	define_label	#
	jmp	.L197	#
.L196:
	.loc 1 1290 0
	movl	warn_unused_label(%rip), %eax	# warn_unused_label, warn_unused_label.65
	testl	%eax, %eax	# warn_unused_label.65
	je	.L197	#,
	.loc 1 1290 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# link, tmp94
	movq	32(%rax), %rax	# link_1->list.value, D.21509
	movzbl	18(%rax), %eax	# *_18, D.21510
	andl	$1, %eax	#, D.21510
	testb	%al, %al	# D.21510
	jne	.L197	#,
	.loc 1 1291 0 is_stmt 1
	movq	-24(%rbp), %rax	# link, tmp95
	movq	32(%rax), %rax	# link_1->list.value, D.21509
	movl	$.LC135, %esi	#,
	movq	%rax, %rdi	# D.21509,
	movl	$0, %eax	#,
	call	warning_with_decl	#
.L197:
	.loc 1 1293 0
	movq	-24(%rbp), %rax	# link, tmp96
	movq	32(%rax), %rax	# link_1->list.value, D.21509
	movq	72(%rax), %rax	# _22->decl.name, D.21509
	movq	$0, 72(%rax)	#, MEM[(struct lang_identifier *)_23].label_value
	.loc 1 1296 0
	movq	-24(%rbp), %rax	# link, tmp97
	movq	(%rax), %rax	# link_1->common.chain, tmp98
	movq	%rax, -24(%rbp)	# tmp98, link
	.loc 1 1297 0
	cmpq	$0, -16(%rbp)	#, prev
	je	.L198	#,
	.loc 1 1298 0
	movq	-16(%rbp), %rax	# prev, tmp99
	movq	-24(%rbp), %rdx	# link, tmp100
	movq	%rdx, (%rax)	# tmp100, prev_3->common.chain
	jmp	.L194	#
.L198:
	.loc 1 1300 0
	movq	-24(%rbp), %rax	# link, tmp101
	movq	%rax, named_labels(%rip)	# tmp101, named_labels
	jmp	.L194	#
.L195:
	.loc 1 1304 0
	movq	-24(%rbp), %rax	# link, tmp102
	movq	%rax, -16(%rbp)	# tmp102, prev
	.loc 1 1305 0
	movq	-24(%rbp), %rax	# link, tmp103
	movq	(%rax), %rax	# link_1->common.chain, tmp104
	movq	%rax, -24(%rbp)	# tmp104, link
.L194:
	.loc 1 1278 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, link
	jne	.L200	#,
	.loc 1 1310 0
	movq	shadowed_labels(%rip), %rax	# shadowed_labels, tmp105
	movq	%rax, -24(%rbp)	# tmp105, link
	jmp	.L201	#
.L203:
	.loc 1 1311 0
	movq	-24(%rbp), %rax	# link, tmp106
	movq	32(%rax), %rax	# link_2->list.value, D.21509
	movq	72(%rax), %rax	# _28->decl.name, D.21509
	testq	%rax, %rax	# D.21509
	je	.L202	#,
	.loc 1 1312 0
	movq	-24(%rbp), %rax	# link, tmp107
	movq	32(%rax), %rax	# link_2->list.value, D.21509
	movq	72(%rax), %rax	# _30->decl.name, D.21509
	.loc 1 1313 0
	movq	-24(%rbp), %rdx	# link, tmp108
	movq	32(%rdx), %rdx	# link_2->list.value, D.21509
	movq	%rdx, 72(%rax)	# D.21509, MEM[(struct lang_identifier *)_31].label_value
.L202:
	.loc 1 1310 0
	movq	-24(%rbp), %rax	# link, tmp109
	movq	(%rax), %rax	# link_2->common.chain, tmp110
	movq	%rax, -24(%rbp)	# tmp110, link
.L201:
	.loc 1 1310 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, link
	jne	.L203	#,
	.loc 1 1315 0 is_stmt 1
	movq	-8(%rbp), %rax	# level, tmp111
	movq	(%rax), %rdx	# level_4->names, D.21509
	movq	named_labels(%rip), %rax	# named_labels, named_labels.66
	movq	%rdx, %rsi	# D.21509,
	movq	%rax, %rdi	# named_labels.66,
	call	chainon	#
	movq	%rax, named_labels(%rip)	# named_labels.67, named_labels
	.loc 1 1316 0
	movq	-8(%rbp), %rax	# level, tmp112
	movq	16(%rax), %rax	# level_4->shadowed, shadowed_labels.68
	movq	%rax, shadowed_labels(%rip)	# shadowed_labels.68, shadowed_labels
	.loc 1 1319 0
	movq	label_level_chain(%rip), %rax	# label_level_chain, label_level_chain.69
	movq	40(%rax), %rax	# label_level_chain.69_38->level_chain, label_level_chain.70
	movq	%rax, label_level_chain(%rip)	# label_level_chain.70, label_level_chain
	.loc 1 1320 0
	movq	free_binding_level(%rip), %rdx	# free_binding_level, free_binding_level.71
	movq	-8(%rbp), %rax	# level, tmp113
	movq	%rdx, 40(%rax)	# free_binding_level.71, level_4->level_chain
	.loc 1 1321 0
	movq	-8(%rbp), %rax	# level, tmp114
	movq	%rax, free_binding_level(%rip)	# tmp114, free_binding_level
	.loc 1 1322 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	pop_label_level, .-pop_label_level
	.globl	pushtag
	.type	pushtag, @function
pushtag:
.LFB18:
	.loc 1 1334 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# name, name
	movq	%rsi, -32(%rbp)	# type, type
	.loc 1 1339 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, tmp67
	movq	%rax, -8(%rbp)	# tmp67, b
	jmp	.L205	#
.L206:
	movq	-8(%rbp), %rax	# b, tmp68
	movq	40(%rax), %rax	# b_1->level_chain, tmp69
	movq	%rax, -8(%rbp)	# tmp69, b
.L205:
	.loc 1 1339 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# b, tmp70
	movzbl	49(%rax), %eax	# b_1->tag_transparent, D.21512
	testb	%al, %al	# D.21512
	jne	.L206	#,
	.loc 1 1342 0 is_stmt 1
	cmpq	$0, -24(%rbp)	#, name
	je	.L207	#,
	.loc 1 1346 0
	movq	-32(%rbp), %rax	# type, tmp71
	movq	96(%rax), %rax	# type_6(D)->type.name, D.21513
	testq	%rax, %rax	# D.21513
	jne	.L207	#,
	.loc 1 1347 0
	movq	-32(%rbp), %rax	# type, tmp72
	movq	-24(%rbp), %rdx	# name, tmp73
	movq	%rdx, 96(%rax)	# tmp73, type_6(D)->type.name
.L207:
	.loc 1 1350 0
	movq	-8(%rbp), %rax	# b, tmp74
	movq	8(%rax), %rdx	# b_1->tags, D.21513
	movq	-32(%rbp), %rcx	# type, tmp75
	movq	-24(%rbp), %rax	# name, tmp76
	movq	%rcx, %rsi	# tmp75,
	movq	%rax, %rdi	# tmp76,
	call	tree_cons	#
	movq	-8(%rbp), %rdx	# b, tmp77
	movq	%rax, 8(%rdx)	# D.21513, b_1->tags
	.loc 1 1359 0
	movq	-32(%rbp), %rax	# type, tmp78
	movq	%rax, %rdx	# tmp78,
	movl	$0, %esi	#,
	movl	$33, %edi	#,
	call	build_decl	#
	movq	%rax, %rdi	# D.21513,
	call	pushdecl	#
	movq	-32(%rbp), %rdx	# type, tmp79
	movq	%rax, (%rdx)	# D.21513, type_6(D)->common.chain
	.loc 1 1363 0
	movq	-32(%rbp), %rax	# type, tmp80
	movq	(%rax), %rax	# type_6(D)->common.chain, D.21513
	movq	80(%rax), %rdx	# _12->decl.context, D.21513
	movq	-32(%rbp), %rax	# type, tmp81
	movq	%rdx, 144(%rax)	# D.21513, type_6(D)->type.context
	.loc 1 1364 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	pushtag, .-pushtag
	.section	.rodata
.LC136:
	.string	"noinline"
	.align 8
.LC137:
	.string	"function `%s' redeclared as inline"
	.align 8
.LC138:
	.string	"previous declaration of function `%s' with attribute noinline"
	.align 8
.LC139:
	.string	"function `%s' redeclared with attribute noinline"
	.align 8
.LC140:
	.string	"previous declaration of function `%s' was inline"
	.align 8
.LC141:
	.string	"shadowing built-in function `%s'"
	.align 8
.LC142:
	.string	"shadowing library function `%s'"
	.align 8
.LC143:
	.string	"library function `%s' declared as non-function"
	.align 8
.LC144:
	.string	"built-in function `%s' declared as non-function"
	.align 8
.LC145:
	.string	"`%s' redeclared as different kind of symbol"
.LC146:
	.string	"previous declaration of `%s'"
	.align 8
.LC147:
	.string	"conflicting types for built-in function `%s'"
.LC148:
	.string	"conflicting types for `%s'"
	.align 8
.LC149:
	.string	"a parameter list with an ellipsis can't match an empty parameter name list declaration"
	.align 8
.LC150:
	.string	"an argument type that has a default promotion can't match an empty parameter name list declaration"
.LC151:
	.string	"redefinition of `%s'"
.LC152:
	.string	"redeclaration of `%s'"
	.align 8
.LC153:
	.string	"conflicting declarations of `%s'"
.LC154:
	.string	"c-decl.c"
.LC155:
	.string	"`%s' previously defined here"
.LC156:
	.string	"`%s' previously declared here"
.LC157:
	.string	"prototype for `%s' follows"
.LC158:
	.string	"non-prototype definition here"
	.align 8
.LC159:
	.string	"prototype for `%s' follows and number of arguments doesn't match"
	.align 8
.LC160:
	.string	"prototype for `%s' follows and argument %d doesn't match"
	.align 8
.LC161:
	.string	"`%s' declared inline after being called"
	.align 8
.LC162:
	.string	"`%s' declared inline after its definition"
	.align 8
.LC163:
	.string	"static declaration for `%s' follows non-static"
	.align 8
.LC164:
	.string	"non-static declaration for `%s' follows static"
	.align 8
.LC165:
	.string	"const declaration for `%s' follows non-const"
	.align 8
.LC166:
	.string	"type qualifiers for `%s' conflict with previous decl"
	.align 8
.LC167:
	.string	"redundant redeclaration of `%s' in same scope"
	.text
	.type	duplicate_decls, @function
duplicate_decls:
.LFB19:
	.loc 1 1381 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$160, %rsp	#,
	movq	%rdi, -136(%rbp)	# newdecl, newdecl
	movq	%rsi, -144(%rbp)	# olddecl, olddecl
	movl	%edx, -148(%rbp)	# different_binding_level, different_binding_level
	.loc 1 1382 0
	movq	-144(%rbp), %rax	# olddecl, tmp485
	movq	8(%rax), %rdx	# olddecl_27(D)->common.type, D.21515
	movq	-136(%rbp), %rax	# newdecl, tmp486
	movq	8(%rax), %rax	# newdecl_29(D)->common.type, D.21515
	movq	%rdx, %rsi	# D.21515,
	movq	%rax, %rdi	# D.21515,
	call	comptypes	#
	movl	%eax, -116(%rbp)	# tmp487, types_match
	.loc 1 1383 0
	movq	-136(%rbp), %rax	# newdecl, tmp488
	movzbl	16(%rax), %eax	# newdecl_29(D)->common.code, D.21516
	.loc 1 1384 0
	cmpb	$30, %al	#, D.21516
	jne	.L209	#,
	.loc 1 1384 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# newdecl, tmp489
	movq	104(%rax), %rax	# newdecl_29(D)->decl.initial, D.21515
	testq	%rax, %rax	# D.21515
	je	.L209	#,
	.loc 1 1384 0 discriminator 3
	movl	$1, %eax	#, iftmp.72
	jmp	.L210	#
.L209:
	.loc 1 1384 0 discriminator 2
	movl	$0, %eax	#, iftmp.72
.L210:
	.loc 1 1383 0 is_stmt 1
	movl	%eax, -104(%rbp)	# iftmp.72, new_is_definition
	.loc 1 1385 0
	movq	-144(%rbp), %rax	# olddecl, tmp490
	movq	8(%rax), %rax	# olddecl_27(D)->common.type, tmp491
	movq	%rax, -96(%rbp)	# tmp491, oldtype
	.loc 1 1386 0
	movq	-136(%rbp), %rax	# newdecl, tmp492
	movq	8(%rax), %rax	# newdecl_29(D)->common.type, tmp493
	movq	%rax, -88(%rbp)	# tmp493, newtype
	.loc 1 1387 0
	movl	$0, -112(%rbp)	#, errmsg
	.loc 1 1389 0
	movq	-144(%rbp), %rax	# olddecl, tmp494
	movzbl	16(%rax), %eax	# olddecl_27(D)->common.code, D.21516
	movzbl	%al, %eax	# D.21516, D.21514
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21517
	cmpb	$100, %al	#, D.21517
	jne	.L211	#,
	.loc 1 1391 0
	movq	-136(%rbp), %rax	# newdecl, tmp496
	movzbl	16(%rax), %eax	# newdecl_29(D)->common.code, D.21516
	cmpb	$30, %al	#, D.21516
	jne	.L212	#,
	.loc 1 1392 0
	movq	-144(%rbp), %rax	# olddecl, tmp497
	movzbl	16(%rax), %eax	# olddecl_27(D)->common.code, D.21516
	cmpb	$30, %al	#, D.21516
	jne	.L212	#,
	.loc 1 1393 0
	movq	-136(%rbp), %rax	# newdecl, tmp498
	movzbl	52(%rax), %eax	# *newdecl_29(D), D.21516
	andl	$16, %eax	#, D.21516
	testb	%al, %al	# D.21516
	jne	.L213	#,
	.loc 1 1393 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax	# olddecl, tmp499
	movzbl	52(%rax), %eax	# *olddecl_27(D), D.21516
	andl	$16, %eax	#, D.21516
	testb	%al, %al	# D.21516
	je	.L212	#,
.L213:
	.loc 1 1395 0 is_stmt 1
	movq	-136(%rbp), %rax	# newdecl, tmp500
	movq	200(%rax), %rax	# newdecl_29(D)->decl.lang_specific, D.21518
	movzbl	(%rax), %eax	# *_49, D.21516
	andl	$1, %eax	#, D.21516
	testb	%al, %al	# D.21516
	je	.L214	#,
	.loc 1 1396 0
	movq	-136(%rbp), %rax	# newdecl, tmp501
	movzbl	52(%rax), %eax	# *newdecl_29(D), D.21516
	andl	$16, %eax	#, D.21516
	testb	%al, %al	# D.21516
	je	.L214	#,
	.loc 1 1397 0
	movq	-136(%rbp), %rax	# newdecl, tmp502
	movq	136(%rax), %rax	# newdecl_29(D)->decl.attributes, D.21515
	movq	%rax, %rsi	# D.21515,
	movl	$.LC136, %edi	#,
	call	lookup_attribute	#
	testq	%rax, %rax	# D.21515
	je	.L214	#,
	.loc 1 1397 0 is_stmt 0 discriminator 1
	jmp	.L212	#
.L214:
	.loc 1 1399 0 is_stmt 1
	movq	-144(%rbp), %rax	# olddecl, tmp503
	movq	200(%rax), %rax	# olddecl_27(D)->decl.lang_specific, D.21518
	movzbl	(%rax), %eax	# *_56, D.21516
	andl	$1, %eax	#, D.21516
	testb	%al, %al	# D.21516
	je	.L215	#,
	.loc 1 1400 0
	movq	-144(%rbp), %rax	# olddecl, tmp504
	movzbl	52(%rax), %eax	# *olddecl_27(D), D.21516
	andl	$16, %eax	#, D.21516
	testb	%al, %al	# D.21516
	je	.L215	#,
	.loc 1 1401 0
	movq	-144(%rbp), %rax	# olddecl, tmp505
	movq	136(%rax), %rax	# olddecl_27(D)->decl.attributes, D.21515
	movq	%rax, %rsi	# D.21515,
	movl	$.LC136, %edi	#,
	call	lookup_attribute	#
	testq	%rax, %rax	# D.21515
	je	.L215	#,
	.loc 1 1401 0 is_stmt 0 discriminator 1
	jmp	.L212	#
.L215:
	.loc 1 1403 0 is_stmt 1
	movq	-136(%rbp), %rax	# newdecl, tmp506
	movq	200(%rax), %rax	# newdecl_29(D)->decl.lang_specific, D.21518
	movzbl	(%rax), %eax	# *_63, D.21516
	andl	$1, %eax	#, D.21516
	testb	%al, %al	# D.21516
	je	.L216	#,
	.loc 1 1404 0
	movq	-144(%rbp), %rax	# olddecl, tmp507
	movq	200(%rax), %rax	# olddecl_27(D)->decl.lang_specific, D.21518
	movzbl	(%rax), %eax	# *_66, D.21516
	andl	$1, %eax	#, D.21516
	testb	%al, %al	# D.21516
	jne	.L216	#,
	.loc 1 1405 0
	movq	-144(%rbp), %rax	# olddecl, tmp508
	movzbl	52(%rax), %eax	# *olddecl_27(D), D.21516
	andl	$16, %eax	#, D.21516
	testb	%al, %al	# D.21516
	je	.L216	#,
	.loc 1 1406 0
	movq	-144(%rbp), %rax	# olddecl, tmp509
	movq	136(%rax), %rax	# olddecl_27(D)->decl.attributes, D.21515
	movq	%rax, %rsi	# D.21515,
	movl	$.LC136, %edi	#,
	call	lookup_attribute	#
	testq	%rax, %rax	# D.21515
	je	.L216	#,
	.loc 1 1408 0
	movq	-136(%rbp), %rax	# newdecl, tmp510
	movl	$.LC137, %esi	#,
	movq	%rax, %rdi	# tmp510,
	movl	$0, %eax	#,
	call	warning_with_decl	#
	.loc 1 1410 0
	movq	-144(%rbp), %rax	# olddecl, tmp511
	movl	$.LC138, %esi	#,
	movq	%rax, %rdi	# tmp511,
	movl	$0, %eax	#,
	call	warning_with_decl	#
	jmp	.L212	#
.L216:
	.loc 1 1413 0
	movq	-144(%rbp), %rax	# olddecl, tmp512
	movq	200(%rax), %rax	# olddecl_27(D)->decl.lang_specific, D.21518
	movzbl	(%rax), %eax	# *_73, D.21516
	andl	$1, %eax	#, D.21516
	testb	%al, %al	# D.21516
	je	.L212	#,
	.loc 1 1414 0
	movq	-136(%rbp), %rax	# newdecl, tmp513
	movzbl	52(%rax), %eax	# *newdecl_29(D), D.21516
	andl	$16, %eax	#, D.21516
	testb	%al, %al	# D.21516
	je	.L212	#,
	.loc 1 1415 0
	movq	-136(%rbp), %rax	# newdecl, tmp514
	movq	136(%rax), %rax	# newdecl_29(D)->decl.attributes, D.21515
	movq	%rax, %rsi	# D.21515,
	movl	$.LC136, %edi	#,
	call	lookup_attribute	#
	testq	%rax, %rax	# D.21515
	je	.L212	#,
	.loc 1 1417 0
	movq	-136(%rbp), %rax	# newdecl, tmp515
	movl	$.LC139, %esi	#,
	movq	%rax, %rdi	# tmp515,
	movl	$0, %eax	#,
	call	warning_with_decl	#
	.loc 1 1419 0
	movq	-144(%rbp), %rax	# olddecl, tmp516
	movl	$.LC140, %esi	#,
	movq	%rax, %rdi	# tmp516,
	movl	$0, %eax	#,
	call	warning_with_decl	#
.L212:
	.loc 1 1425 0
	movq	targetm+240(%rip), %rax	# targetm.merge_decl_attributes, D.21519
	movq	-136(%rbp), %rcx	# newdecl, tmp517
	movq	-144(%rbp), %rdx	# olddecl, tmp518
	movq	%rcx, %rsi	# tmp517,
	movq	%rdx, %rdi	# tmp518,
	call	*%rax	# D.21519
	movq	-136(%rbp), %rdx	# newdecl, tmp519
	movq	%rax, 136(%rdx)	# D.21515, newdecl_29(D)->decl.attributes
.L211:
	.loc 1 1428 0
	movq	-88(%rbp), %rax	# newtype, tmp520
	movzbl	16(%rax), %eax	# newtype_38->common.code, D.21516
	testb	%al, %al	# D.21516
	je	.L217	#,
	.loc 1 1429 0
	movq	-96(%rbp), %rax	# oldtype, tmp521
	movzbl	16(%rax), %eax	# oldtype_37->common.code, D.21516
	testb	%al, %al	# D.21516
	jne	.L218	#,
.L217:
	.loc 1 1430 0
	movl	$0, -116(%rbp)	#, types_match
.L218:
	.loc 1 1435 0
	movq	-144(%rbp), %rax	# olddecl, tmp522
	movzbl	16(%rax), %edx	# olddecl_27(D)->common.code, D.21516
	movq	-136(%rbp), %rax	# newdecl, tmp523
	movzbl	16(%rax), %eax	# newdecl_29(D)->common.code, D.21516
	cmpb	%al, %dl	# D.21516, D.21516
	je	.L219	#,
	.loc 1 1437 0
	movq	-144(%rbp), %rax	# olddecl, tmp524
	movzbl	16(%rax), %eax	# olddecl_27(D)->common.code, D.21516
	cmpb	$30, %al	#, D.21516
	jne	.L220	#,
	.loc 1 1438 0
	movq	-144(%rbp), %rax	# olddecl, tmp525
	movzbl	51(%rax), %eax	# *olddecl_27(D), D.21516
	andl	$96, %eax	#, D.21516
	testb	%al, %al	# D.21516
	jne	.L221	#,
	.loc 1 1439 0
	movq	-144(%rbp), %rax	# olddecl, tmp526
	movzbl	17(%rax), %eax	# *olddecl_27(D), D.21516
	andl	$32, %eax	#, D.21516
	testb	%al, %al	# D.21516
	je	.L220	#,
.L221:
	.loc 1 1444 0
	movq	-136(%rbp), %rax	# newdecl, tmp527
	movzbl	18(%rax), %eax	# *newdecl_29(D), D.21516
	andl	$8, %eax	#, D.21516
	testb	%al, %al	# D.21516
	jne	.L222	#,
	.loc 1 1446 0
	movl	warn_shadow(%rip), %eax	# warn_shadow, warn_shadow.73
	testl	%eax, %eax	# warn_shadow.73
	je	.L225	#,
	.loc 1 1448 0
	movq	-144(%rbp), %rax	# olddecl, tmp528
	movzbl	51(%rax), %eax	# *olddecl_27(D), D.21516
	andl	$96, %eax	#, D.21516
	testb	%al, %al	# D.21516
	je	.L224	#,
	.loc 1 1449 0
	movq	-136(%rbp), %rax	# newdecl, tmp529
	movl	$.LC141, %esi	#,
	movq	%rax, %rdi	# tmp529,
	movl	$0, %eax	#,
	call	warning_with_decl	#
	jmp	.L225	#
.L224:
	.loc 1 1451 0
	movq	-136(%rbp), %rax	# newdecl, tmp530
	movl	$.LC142, %esi	#,
	movq	%rax, %rdi	# tmp530,
	movl	$0, %eax	#,
	call	warning_with_decl	#
	.loc 1 1444 0
	jmp	.L228	#
.L222:
	.loc 1 1455 0
	movq	-144(%rbp), %rax	# olddecl, tmp531
	movzbl	51(%rax), %eax	# *olddecl_27(D), D.21516
	andl	$96, %eax	#, D.21516
	testb	%al, %al	# D.21516
	jne	.L226	#,
	.loc 1 1456 0
	movq	-136(%rbp), %rax	# newdecl, tmp532
	movl	$.LC143, %esi	#,
	movq	%rax, %rdi	# tmp532,
	movl	$0, %eax	#,
	call	warning_with_decl	#
	jmp	.L225	#
.L226:
	.loc 1 1459 0
	movq	-144(%rbp), %rax	# olddecl, tmp533
	movzbl	17(%rax), %eax	# *olddecl_27(D), D.21516
	andl	$32, %eax	#, D.21516
	testb	%al, %al	# D.21516
	je	.L227	#,
	.loc 1 1460 0
	movq	-136(%rbp), %rax	# newdecl, tmp534
	movl	$.LC144, %esi	#,
	movq	%rax, %rdi	# tmp534,
	movl	$0, %eax	#,
	call	warning_with_decl	#
	jmp	.L225	#
.L227:
	.loc 1 1463 0
	movq	-136(%rbp), %rax	# newdecl, tmp535
	movl	$.LC144, %esi	#,
	movq	%rax, %rdi	# tmp535,
	movl	$0, %eax	#,
	call	warning_with_decl	#
	.loc 1 1444 0
	jmp	.L228	#
.L225:
	jmp	.L228	#
.L220:
	.loc 1 1468 0
	movq	-136(%rbp), %rax	# newdecl, tmp536
	movl	$.LC145, %esi	#,
	movq	%rax, %rdi	# tmp536,
	movl	$0, %eax	#,
	call	error_with_decl	#
	.loc 1 1469 0
	movq	-144(%rbp), %rax	# olddecl, tmp537
	movl	$.LC146, %esi	#,
	movq	%rax, %rdi	# tmp537,
	movl	$0, %eax	#,
	call	error_with_decl	#
.L228:
	.loc 1 1472 0
	movl	$0, %eax	#, D.21514
	jmp	.L229	#
.L219:
	.loc 1 1477 0
	cmpl	$0, -116(%rbp)	#, types_match
	je	.L230	#,
	.loc 1 1477 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# newdecl, tmp538
	movzbl	16(%rax), %eax	# newdecl_29(D)->common.code, D.21516
	cmpb	$35, %al	#, D.21516
	jne	.L230	#,
	.loc 1 1478 0 is_stmt 1
	movq	-144(%rbp), %rax	# olddecl, tmp539
	movzbl	17(%rax), %eax	# *olddecl_27(D), D.21516
	andl	$64, %eax	#, D.21516
	testb	%al, %al	# D.21516
	je	.L230	#,
	.loc 1 1478 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# newdecl, tmp540
	movzbl	17(%rax), %eax	# *newdecl_29(D), D.21516
	andl	$64, %eax	#, D.21516
	testb	%al, %al	# D.21516
	jne	.L230	#,
	.loc 1 1479 0 is_stmt 1
	movl	$1, %eax	#, D.21514
	jmp	.L229	#
.L230:
	.loc 1 1486 0
	movl	flag_traditional(%rip), %eax	# flag_traditional, flag_traditional.74
	testl	%eax, %eax	# flag_traditional.74
	je	.L231	#,
	.loc 1 1486 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# newdecl, tmp541
	movzbl	16(%rax), %eax	# newdecl_29(D)->common.code, D.21516
	cmpb	$30, %al	#, D.21516
	jne	.L231	#,
	.loc 1 1487 0 is_stmt 1
	movq	-136(%rbp), %rax	# newdecl, tmp542
	movq	72(%rax), %rax	# newdecl_29(D)->decl.name, D.21515
	movq	80(%rax), %rax	# MEM[(struct lang_identifier *)_110].implicit_decl, D.21515
	cmpq	-144(%rbp), %rax	# olddecl, D.21515
	jne	.L231	#,
	.loc 1 1488 0
	movq	-144(%rbp), %rax	# olddecl, tmp543
	movq	104(%rax), %rax	# olddecl_27(D)->decl.initial, D.21515
	testq	%rax, %rax	# D.21515
	jne	.L231	#,
	.loc 1 1488 0 is_stmt 0 discriminator 1
	jmp	.L232	#
.L231:
	.loc 1 1492 0 is_stmt 1
	movq	-144(%rbp), %rax	# olddecl, tmp544
	movzbl	16(%rax), %eax	# olddecl_27(D)->common.code, D.21516
	cmpb	$30, %al	#, D.21516
	jne	.L233	#,
	.loc 1 1493 0
	movq	-144(%rbp), %rax	# olddecl, tmp545
	movzbl	51(%rax), %eax	# *olddecl_27(D), D.21516
	andl	$96, %eax	#, D.21516
	testb	%al, %al	# D.21516
	je	.L233	#,
	.loc 1 1496 0
	movq	-136(%rbp), %rax	# newdecl, tmp546
	movzbl	18(%rax), %eax	# *newdecl_29(D), D.21516
	andl	$8, %eax	#, D.21516
	testb	%al, %al	# D.21516
	jne	.L234	#,
	.loc 1 1501 0
	movl	warn_shadow(%rip), %eax	# warn_shadow, warn_shadow.75
	testl	%eax, %eax	# warn_shadow.75
	je	.L235	#,
	.loc 1 1502 0
	movq	-136(%rbp), %rax	# newdecl, tmp547
	movl	$.LC141, %esi	#,
	movq	%rax, %rdi	# tmp547,
	movl	$0, %eax	#,
	call	warning_with_decl	#
.L235:
	.loc 1 1504 0
	movl	$0, %eax	#, D.21514
	jmp	.L229	#
.L234:
	.loc 1 1506 0
	cmpl	$0, -116(%rbp)	#, types_match
	jne	.L236	#,
.LBB7:
	.loc 1 1509 0
	movq	-96(%rbp), %rax	# oldtype, tmp548
	movq	8(%rax), %rax	# oldtype_37->common.type, tmp549
	movq	%rax, -56(%rbp)	# tmp549, oldreturntype
	.loc 1 1510 0
	movq	-88(%rbp), %rax	# newtype, tmp550
	movq	8(%rax), %rax	# newtype_38->common.type, tmp551
	movq	%rax, -48(%rbp)	# tmp551, newreturntype
	.loc 1 1512 0
	movq	-56(%rbp), %rax	# oldreturntype, tmp552
	movzbl	61(%rax), %eax	# *oldreturntype_120, tmp555
	shrb	%al	# D.21520
	movl	%eax, %edx	# D.21520, D.21520
	movq	-48(%rbp), %rax	# newreturntype, tmp556
	movzbl	61(%rax), %eax	# *newreturntype_121, tmp559
	shrb	%al	# D.21520
	cmpb	%al, %dl	# D.21520, D.21520
	jne	.L237	#,
.LBB8:
	.loc 1 1517 0
	movq	-96(%rbp), %rax	# oldtype, tmp560
	movq	24(%rax), %rdx	# oldtype_37->type.values, D.21515
	.loc 1 1516 0
	movq	-48(%rbp), %rax	# newreturntype, tmp561
	movq	%rdx, %rsi	# D.21515,
	movq	%rax, %rdi	# tmp561,
	call	build_function_type	#
	movq	%rax, -40(%rbp)	# tmp562, trytype
	.loc 1 1519 0
	movq	-96(%rbp), %rax	# oldtype, tmp563
	movq	48(%rax), %rdx	# oldtype_37->type.attributes, D.21515
	movq	-40(%rbp), %rax	# trytype, tmp564
	movq	%rdx, %rsi	# D.21515,
	movq	%rax, %rdi	# tmp564,
	call	build_type_attribute_variant	#
	movq	%rax, -40(%rbp)	# tmp565, trytype
	.loc 1 1522 0
	movq	-40(%rbp), %rdx	# trytype, tmp566
	movq	-88(%rbp), %rax	# newtype, tmp567
	movq	%rdx, %rsi	# tmp566,
	movq	%rax, %rdi	# tmp567,
	call	comptypes	#
	movl	%eax, -116(%rbp)	# tmp568, types_match
	.loc 1 1523 0
	cmpl	$0, -116(%rbp)	#, types_match
	je	.L237	#,
	.loc 1 1524 0
	movq	-40(%rbp), %rax	# trytype, tmp569
	movq	%rax, -96(%rbp)	# tmp569, oldtype
.L237:
.LBE8:
	.loc 1 1528 0
	movq	-136(%rbp), %rax	# newdecl, tmp570
	movq	8(%rax), %rax	# newdecl_29(D)->common.type, D.21515
	movq	24(%rax), %rax	# _130->type.values, D.21515
	testq	%rax, %rax	# D.21515
	je	.L238	#,
	.loc 1 1529 0
	movq	-96(%rbp), %rax	# oldtype, tmp571
	movq	24(%rax), %rax	# oldtype_6->type.values, D.21515
	testq	%rax, %rax	# D.21515
	je	.L238	#,
	.loc 1 1530 0
	movq	-88(%rbp), %rax	# newtype, tmp572
	movq	24(%rax), %rax	# newtype_38->type.values, D.21515
	movq	32(%rax), %rax	# _133->list.value, D.21515
	testq	%rax, %rax	# D.21515
	je	.L238	#,
	.loc 1 1531 0
	movq	-96(%rbp), %rax	# oldtype, tmp573
	movq	24(%rax), %rax	# oldtype_6->type.values, D.21515
	movq	32(%rax), %rax	# _135->list.value, D.21515
	testq	%rax, %rax	# D.21515
	je	.L238	#,
	.loc 1 1532 0
	movq	-88(%rbp), %rax	# newtype, tmp574
	movq	24(%rax), %rax	# newtype_38->type.values, D.21515
	movq	32(%rax), %rax	# _137->list.value, D.21515
	movzbl	61(%rax), %eax	# *_138, tmp577
	shrb	%al	# D.21520
	movl	%eax, %edx	# D.21520, D.21520
	.loc 1 1533 0
	movq	-96(%rbp), %rax	# oldtype, tmp578
	movq	24(%rax), %rax	# oldtype_6->type.values, D.21515
	movq	32(%rax), %rax	# _140->list.value, D.21515
	movzbl	61(%rax), %eax	# *_141, tmp581
	shrb	%al	# D.21520
	.loc 1 1532 0
	cmpb	%al, %dl	# D.21520, D.21520
	jne	.L238	#,
.LBB9:
	.loc 1 1541 0
	movq	-96(%rbp), %rax	# oldtype, tmp582
	movq	24(%rax), %rax	# oldtype_6->type.values, D.21515
	.loc 1 1538 0
	movq	(%rax), %rdx	# _143->common.chain, D.21515
	.loc 1 1540 0
	movq	-88(%rbp), %rax	# newtype, tmp583
	movq	24(%rax), %rax	# newtype_38->type.values, D.21515
	.loc 1 1538 0
	movq	32(%rax), %rax	# _145->list.value, D.21515
	movq	%rax, %rsi	# D.21515,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.21515
	movq	-96(%rbp), %rax	# oldtype, tmp584
	movq	8(%rax), %rax	# oldtype_6->common.type, D.21515
	.loc 1 1537 0
	movq	%rdx, %rsi	# D.21515,
	movq	%rax, %rdi	# D.21515,
	call	build_function_type	#
	movq	%rax, -32(%rbp)	# tmp585, trytype
	.loc 1 1542 0
	movq	-96(%rbp), %rax	# oldtype, tmp586
	movq	48(%rax), %rdx	# oldtype_6->type.attributes, D.21515
	movq	-32(%rbp), %rax	# trytype, tmp587
	movq	%rdx, %rsi	# D.21515,
	movq	%rax, %rdi	# tmp587,
	call	build_type_attribute_variant	#
	movq	%rax, -32(%rbp)	# tmp588, trytype
	.loc 1 1545 0
	movq	-32(%rbp), %rdx	# trytype, tmp589
	movq	-88(%rbp), %rax	# newtype, tmp590
	movq	%rdx, %rsi	# tmp589,
	movq	%rax, %rdi	# tmp590,
	call	comptypes	#
	movl	%eax, -116(%rbp)	# tmp591, types_match
	.loc 1 1546 0
	cmpl	$0, -116(%rbp)	#, types_match
	je	.L238	#,
	.loc 1 1547 0
	movq	-32(%rbp), %rax	# trytype, tmp592
	movq	%rax, -96(%rbp)	# tmp592, oldtype
.L238:
.LBE9:
	.loc 1 1549 0
	cmpl	$0, -148(%rbp)	#, different_binding_level
	jne	.L239	#,
	.loc 1 1550 0
	movq	-144(%rbp), %rax	# olddecl, tmp593
	movq	-96(%rbp), %rdx	# oldtype, tmp594
	movq	%rdx, 8(%rax)	# tmp594, olddecl_27(D)->common.type
.LBE7:
	jmp	.L240	#
.L239:
	jmp	.L240	#
.L236:
	.loc 1 1552 0
	movq	-96(%rbp), %rax	# oldtype, tmp595
	movq	24(%rax), %rax	# oldtype_37->type.values, D.21515
	testq	%rax, %rax	# D.21515
	jne	.L240	#,
	.loc 1 1553 0
	movq	-88(%rbp), %rax	# newtype, tmp596
	movq	24(%rax), %rax	# newtype_38->type.values, D.21515
	testq	%rax, %rax	# D.21515
	je	.L240	#,
.LBB10:
	.loc 1 1559 0
	movq	-88(%rbp), %rax	# newtype, tmp597
	movq	24(%rax), %rdx	# newtype_38->type.values, D.21515
	movq	-96(%rbp), %rax	# oldtype, tmp598
	movq	8(%rax), %rax	# oldtype_37->common.type, D.21515
	.loc 1 1558 0
	movq	%rdx, %rsi	# D.21515,
	movq	%rax, %rdi	# D.21515,
	call	build_function_type	#
	movq	%rax, -24(%rbp)	# tmp599, trytype
	.loc 1 1561 0
	movq	-96(%rbp), %rax	# oldtype, tmp600
	movq	48(%rax), %rdx	# oldtype_37->type.attributes, D.21515
	movq	-24(%rbp), %rax	# trytype, tmp601
	movq	%rdx, %rsi	# D.21515,
	movq	%rax, %rdi	# tmp601,
	call	build_type_attribute_variant	#
	movq	%rax, -24(%rbp)	# tmp602, trytype
	.loc 1 1564 0
	movq	-24(%rbp), %rax	# trytype, tmp603
	movq	%rax, -96(%rbp)	# tmp603, oldtype
	.loc 1 1565 0
	cmpl	$0, -148(%rbp)	#, different_binding_level
	jne	.L240	#,
	.loc 1 1566 0
	movq	-144(%rbp), %rax	# olddecl, tmp604
	movq	-96(%rbp), %rdx	# oldtype, tmp605
	movq	%rdx, 8(%rax)	# tmp605, olddecl_27(D)->common.type
.L240:
.LBE10:
	.loc 1 1568 0
	cmpl	$0, -116(%rbp)	#, types_match
	jne	.L241	#,
	.loc 1 1571 0
	movq	-136(%rbp), %rax	# newdecl, tmp606
	movl	$.LC147, %esi	#,
	movq	%rax, %rdi	# tmp606,
	movl	$0, %eax	#,
	call	warning_with_decl	#
	.loc 1 1572 0
	movl	$0, %eax	#, D.21514
	jmp	.L229	#
.L241:
	.loc 1 1568 0 discriminator 1
	jmp	.L232	#
.L233:
	.loc 1 1575 0
	movq	-144(%rbp), %rax	# olddecl, tmp607
	movzbl	16(%rax), %eax	# olddecl_27(D)->common.code, D.21516
	cmpb	$30, %al	#, D.21516
	jne	.L242	#,
	.loc 1 1576 0
	movq	-144(%rbp), %rax	# olddecl, tmp608
	movl	32(%rax), %eax	# olddecl_27(D)->decl.linenum, D.21514
	testl	%eax, %eax	# D.21514
	jne	.L242	#,
	.loc 1 1580 0
	movq	-136(%rbp), %rax	# newdecl, tmp609
	movzbl	18(%rax), %eax	# *newdecl_29(D), D.21516
	andl	$8, %eax	#, D.21516
	testb	%al, %al	# D.21516
	jne	.L243	#,
	.loc 1 1584 0
	movl	$0, %eax	#, D.21514
	jmp	.L229	#
.L243:
	.loc 1 1586 0
	cmpl	$0, -116(%rbp)	#, types_match
	jne	.L244	#,
	.loc 1 1591 0
	movq	-136(%rbp), %rax	# newdecl, tmp610
	movzbl	17(%rax), %eax	# *newdecl_29(D), tmp613
	shrb	$3, %al	#, D.21521
	andl	$1, %eax	#, D.21521
	movl	%eax, %edx	# D.21521, D.21516
	movq	-144(%rbp), %rax	# olddecl, tmp614
	movzbl	17(%rax), %eax	# *olddecl_27(D), tmp617
	shrb	$3, %al	#, D.21521
	andl	$1, %eax	#, D.21521
	orl	%edx, %eax	# D.21516, D.21516
	andl	$1, %eax	#, D.21521
	movl	%eax, %edx	# D.21521, D.21521
	movq	-136(%rbp), %rax	# newdecl, tmp618
	andl	$1, %edx	#, tmp620
	leal	0(,%rdx,8), %ecx	#, tmp621
	movzbl	17(%rax), %edx	#, tmp622
	andl	$-9, %edx	#, tmp623
	orl	%ecx, %edx	# tmp621, tmp624
	movb	%dl, 17(%rax)	# tmp624,
	.loc 1 1580 0
	jmp	.L232	#
.L244:
	jmp	.L232	#
.L242:
	.loc 1 1596 0
	cmpl	$0, -116(%rbp)	#, types_match
	jne	.L245	#,
	.loc 1 1597 0
	movq	-144(%rbp), %rax	# olddecl, tmp625
	movzbl	16(%rax), %eax	# olddecl_27(D)->common.code, D.21516
	cmpb	$30, %al	#, D.21516
	jne	.L245	#,
	.loc 1 1598 0
	movq	-136(%rbp), %rax	# newdecl, tmp626
	movzbl	16(%rax), %eax	# newdecl_29(D)->common.code, D.21516
	cmpb	$30, %al	#, D.21516
	jne	.L245	#,
	.loc 1 1599 0
	movq	-96(%rbp), %rax	# oldtype, tmp627
	movq	8(%rax), %rax	# oldtype_37->common.type, D.21515
	movzbl	16(%rax), %eax	# _177->common.code, D.21516
	cmpb	$13, %al	#, D.21516
	jne	.L245	#,
	.loc 1 1600 0
	movq	-88(%rbp), %rax	# newtype, tmp628
	movq	8(%rax), %rax	# newtype_38->common.type, D.21515
	movzbl	16(%rax), %eax	# _179->common.code, D.21516
	cmpb	$13, %al	#, D.21516
	jne	.L245	#,
	.loc 1 1601 0
	movq	-144(%rbp), %rax	# olddecl, tmp629
	movzbl	50(%rax), %eax	# *olddecl_27(D), D.21516
	andl	$1, %eax	#, D.21516
	testb	%al, %al	# D.21516
	jne	.L246	#,
	.loc 1 1602 0
	movq	-136(%rbp), %rax	# newdecl, tmp630
	movzbl	50(%rax), %eax	# *newdecl_29(D), D.21516
	andl	$1, %eax	#, D.21516
	testb	%al, %al	# D.21516
	je	.L245	#,
.L246:
	.loc 1 1603 0
	movq	-88(%rbp), %rax	# newtype, tmp631
	movq	8(%rax), %rax	# newtype_38->common.type, D.21515
	movq	8(%rax), %rax	# _185->common.type, D.21515
	movq	128(%rax), %rdx	# _186->type.main_variant, D.21515
	movq	global_trees+216(%rip), %rax	# global_trees, D.21515
	cmpq	%rax, %rdx	# D.21515, D.21515
	jne	.L247	#,
	.loc 1 1604 0
	movq	-96(%rbp), %rax	# oldtype, tmp632
	movq	24(%rax), %rax	# oldtype_37->type.values, D.21515
	testq	%rax, %rax	# D.21515
	jne	.L247	#,
	.loc 1 1605 0
	movq	-88(%rbp), %rax	# newtype, tmp633
	movq	24(%rax), %rax	# newtype_38->type.values, D.21515
	movq	%rax, %rdi	# D.21515,
	call	self_promoting_args_p	#
	testl	%eax, %eax	# D.21514
	je	.L247	#,
	.loc 1 1606 0
	movq	-96(%rbp), %rax	# oldtype, tmp634
	movq	8(%rax), %rax	# oldtype_37->common.type, D.21515
	movq	8(%rax), %rdx	# _192->common.type, D.21515
	movq	integer_types(%rip), %rax	# integer_types, D.21515
	cmpq	%rax, %rdx	# D.21515, D.21515
	je	.L248	#,
.L247:
	.loc 1 1608 0
	movq	-88(%rbp), %rax	# newtype, tmp635
	movq	8(%rax), %rax	# newtype_38->common.type, D.21515
	movq	8(%rax), %rdx	# _195->common.type, D.21515
	movq	integer_types(%rip), %rax	# integer_types, D.21515
	.loc 1 1607 0
	cmpq	%rax, %rdx	# D.21515, D.21515
	jne	.L245	#,
	.loc 1 1609 0
	movq	-88(%rbp), %rax	# newtype, tmp636
	movq	24(%rax), %rax	# newtype_38->type.values, D.21515
	testq	%rax, %rax	# D.21515
	jne	.L245	#,
	.loc 1 1610 0
	movq	-96(%rbp), %rax	# oldtype, tmp637
	movq	24(%rax), %rax	# oldtype_37->type.values, D.21515
	movq	%rax, %rdi	# D.21515,
	call	self_promoting_args_p	#
	testl	%eax, %eax	# D.21514
	je	.L245	#,
	.loc 1 1611 0
	movq	-96(%rbp), %rax	# oldtype, tmp638
	movq	8(%rax), %rax	# oldtype_37->common.type, D.21515
	movq	8(%rax), %rax	# _201->common.type, D.21515
	movq	128(%rax), %rdx	# _202->type.main_variant, D.21515
	movq	global_trees+216(%rip), %rax	# global_trees, D.21515
	cmpq	%rax, %rdx	# D.21515, D.21515
	jne	.L245	#,
.L248:
	.loc 1 1613 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.76
	testl	%eax, %eax	# pedantic.76
	je	.L249	#,
	.loc 1 1614 0
	movq	-136(%rbp), %rax	# newdecl, tmp639
	movl	$.LC148, %esi	#,
	movq	%rax, %rdi	# tmp639,
	movl	$0, %eax	#,
	call	pedwarn_with_decl	#
.L249:
	.loc 1 1616 0
	movq	-96(%rbp), %rax	# oldtype, tmp640
	movq	8(%rax), %rax	# oldtype_37->common.type, D.21515
	movq	8(%rax), %rax	# _206->common.type, D.21515
	movq	128(%rax), %rdx	# _207->type.main_variant, D.21515
	movq	global_trees+216(%rip), %rax	# global_trees, D.21515
	cmpq	%rax, %rdx	# D.21515, D.21515
	jne	.L250	#,
	.loc 1 1617 0
	movq	-96(%rbp), %rax	# oldtype, tmp641
	movq	%rax, -88(%rbp)	# tmp641, newtype
	movq	-136(%rbp), %rax	# newdecl, tmp642
	movq	-88(%rbp), %rdx	# newtype, tmp643
	movq	%rdx, 8(%rax)	# tmp643, newdecl_29(D)->common.type
.L250:
	.loc 1 1621 0
	movq	-136(%rbp), %rax	# newdecl, tmp644
	movzbl	50(%rax), %edx	#, tmp647
	orl	$1, %edx	#, tmp648
	movb	%dl, 50(%rax)	# tmp648,
	jmp	.L232	#
.L245:
	.loc 1 1623 0
	cmpl	$0, -116(%rbp)	#, types_match
	jne	.L251	#,
	.loc 1 1626 0
	movq	-144(%rbp), %rax	# olddecl, tmp649
	movzbl	16(%rax), %eax	# olddecl_27(D)->common.code, D.21516
	cmpb	$30, %al	#, D.21516
	jne	.L252	#,
	.loc 1 1627 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.77
	testl	%eax, %eax	# pedantic.77
	jne	.L252	#,
	.loc 1 1629 0
	movq	-88(%rbp), %rax	# newtype, tmp650
	movq	8(%rax), %rdx	# newtype_38->common.type, D.21515
	movq	-96(%rbp), %rax	# oldtype, tmp651
	movq	8(%rax), %rax	# oldtype_37->common.type, D.21515
	movq	%rdx, %rsi	# D.21515,
	movq	%rax, %rdi	# D.21515,
	call	comptypes	#
	testl	%eax, %eax	# D.21514
	je	.L252	#,
	.loc 1 1631 0
	movq	-88(%rbp), %rax	# newtype, tmp652
	movq	24(%rax), %rax	# newtype_38->type.values, D.21515
	.loc 1 1626 0
	testq	%rax, %rax	# D.21515
	je	.L251	#,
.L252:
	.loc 1 1633 0
	movq	-136(%rbp), %rax	# newdecl, tmp653
	movl	$.LC148, %esi	#,
	movq	%rax, %rdi	# tmp653,
	movl	$0, %eax	#,
	call	error_with_decl	#
	.loc 1 1636 0
	movq	-144(%rbp), %rax	# olddecl, tmp654
	movzbl	16(%rax), %eax	# olddecl_27(D)->common.code, D.21516
	cmpb	$30, %al	#, D.21516
	jne	.L253	#,
	.loc 1 1637 0
	movq	-88(%rbp), %rax	# newtype, tmp655
	movq	8(%rax), %rdx	# newtype_38->common.type, D.21515
	movq	-96(%rbp), %rax	# oldtype, tmp656
	movq	8(%rax), %rax	# oldtype_37->common.type, D.21515
	movq	%rdx, %rsi	# D.21515,
	movq	%rax, %rdi	# D.21515,
	call	comptypes	#
	testl	%eax, %eax	# D.21514
	je	.L253	#,
	.loc 1 1639 0
	movq	-96(%rbp), %rax	# oldtype, tmp657
	movq	24(%rax), %rax	# oldtype_37->type.values, D.21515
	testq	%rax, %rax	# D.21515
	jne	.L254	#,
	.loc 1 1640 0
	movq	-144(%rbp), %rax	# olddecl, tmp658
	movq	104(%rax), %rax	# olddecl_27(D)->decl.initial, D.21515
	testq	%rax, %rax	# D.21515
	je	.L255	#,
.L254:
	.loc 1 1642 0
	movq	-88(%rbp), %rax	# newtype, tmp659
	movq	24(%rax), %rax	# newtype_38->type.values, D.21515
	.loc 1 1641 0
	testq	%rax, %rax	# D.21515
	jne	.L253	#,
	.loc 1 1643 0
	movq	-136(%rbp), %rax	# newdecl, tmp660
	movq	104(%rax), %rax	# newdecl_29(D)->decl.initial, D.21515
	testq	%rax, %rax	# D.21515
	jne	.L253	#,
.L255:
.LBB11:
	.loc 1 1646 0
	movq	-96(%rbp), %rax	# oldtype, tmp661
	movq	24(%rax), %rax	# oldtype_37->type.values, tmp662
	movq	%rax, -80(%rbp)	# tmp662, t
	.loc 1 1647 0
	cmpq	$0, -80(%rbp)	#, t
	jne	.L256	#,
	.loc 1 1648 0
	movq	-88(%rbp), %rax	# newtype, tmp663
	movq	24(%rax), %rax	# newtype_38->type.values, tmp664
	movq	%rax, -80(%rbp)	# tmp664, t
	.loc 1 1649 0
	jmp	.L257	#
.L256:
	jmp	.L257	#
.L260:
.LBB12:
	.loc 1 1651 0
	movq	-80(%rbp), %rax	# t, tmp665
	movq	32(%rax), %rax	# t_15->list.value, tmp666
	movq	%rax, -16(%rbp)	# tmp666, type
	.loc 1 1653 0
	movq	-80(%rbp), %rax	# t, tmp667
	movq	(%rax), %rax	# t_15->common.chain, D.21515
	testq	%rax, %rax	# D.21515
	jne	.L258	#,
	.loc 1 1654 0
	movq	-16(%rbp), %rax	# type, tmp668
	movq	128(%rax), %rdx	# type_227->type.main_variant, D.21515
	movq	global_trees+216(%rip), %rax	# global_trees, D.21515
	cmpq	%rax, %rdx	# D.21515, D.21515
	je	.L258	#,
	.loc 1 1656 0
	movl	$.LC149, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 1657 0
	jmp	.L253	#
.L258:
	.loc 1 1660 0
	movq	-16(%rbp), %rax	# type, tmp669
	movq	%rax, %rdi	# tmp669,
	call	simple_type_promotes_to	#
	testq	%rax, %rax	# D.21515
	je	.L259	#,
	.loc 1 1662 0
	movl	$.LC150, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 1663 0
	jmp	.L253	#
.L259:
.LBE12:
	.loc 1 1649 0
	movq	-80(%rbp), %rax	# t, tmp670
	movq	(%rax), %rax	# t_15->common.chain, tmp671
	movq	%rax, -80(%rbp)	# tmp671, t
.L257:
	.loc 1 1649 0 is_stmt 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, t
	jne	.L260	#,
.L253:
.LBE11:
	.loc 1 1667 0 is_stmt 1
	movq	-144(%rbp), %rax	# olddecl, tmp672
	movl	$.LC146, %esi	#,
	movq	%rax, %rdi	# tmp672,
	movl	$0, %eax	#,
	call	error_with_decl	#
	jmp	.L232	#
.L251:
	.loc 1 1671 0
	movq	-144(%rbp), %rdx	# olddecl, tmp673
	movq	-136(%rbp), %rax	# newdecl, tmp674
	movq	%rdx, %rsi	# tmp673,
	movq	%rax, %rdi	# tmp674,
	call	redeclaration_error_message	#
	movl	%eax, -112(%rbp)	# tmp675, errmsg
	.loc 1 1672 0
	cmpl	$0, -112(%rbp)	#, errmsg
	je	.L261	#,
	.loc 1 1674 0
	movl	-112(%rbp), %eax	# errmsg, errmsg
	cmpl	$2, %eax	#, errmsg
	je	.L263	#,
	cmpl	$3, %eax	#, errmsg
	je	.L264	#,
	cmpl	$1, %eax	#, errmsg
	jne	.L340	#,
	.loc 1 1677 0
	movq	-136(%rbp), %rax	# newdecl, tmp677
	movl	$.LC151, %esi	#,
	movq	%rax, %rdi	# tmp677,
	movl	$0, %eax	#,
	call	error_with_decl	#
	.loc 1 1678 0
	jmp	.L266	#
.L263:
	.loc 1 1680 0
	movq	-136(%rbp), %rax	# newdecl, tmp678
	movl	$.LC152, %esi	#,
	movq	%rax, %rdi	# tmp678,
	movl	$0, %eax	#,
	call	error_with_decl	#
	.loc 1 1681 0
	jmp	.L266	#
.L264:
	.loc 1 1683 0
	movq	-136(%rbp), %rax	# newdecl, tmp679
	movl	$.LC153, %esi	#,
	movq	%rax, %rdi	# tmp679,
	movl	$0, %eax	#,
	call	error_with_decl	#
	.loc 1 1684 0
	jmp	.L266	#
.L340:
	.loc 1 1686 0
	movl	$__FUNCTION__.14345, %edx	#,
	movl	$1686, %esi	#,
	movl	$.LC154, %edi	#,
	call	fancy_abort	#
.L266:
	.loc 1 1690 0
	movq	-144(%rbp), %rax	# olddecl, tmp680
	movq	104(%rax), %rax	# olddecl_27(D)->decl.initial, D.21515
	.loc 1 1689 0
	testq	%rax, %rax	# D.21515
	je	.L267	#,
	.loc 1 1691 0
	movq	current_binding_level(%rip), %rdx	# current_binding_level, current_binding_level.79
	movq	global_binding_level(%rip), %rax	# global_binding_level, global_binding_level.80
	cmpq	%rax, %rdx	# global_binding_level.80, current_binding_level.79
	jne	.L267	#,
	.loc 1 1689 0
	movl	$.LC155, %eax	#, iftmp.78
	jmp	.L268	#
.L267:
	.loc 1 1689 0 is_stmt 0 discriminator 1
	movl	$.LC156, %eax	#, iftmp.78
.L268:
	.loc 1 1689 0 discriminator 2
	movq	-144(%rbp), %rdx	# olddecl, tmp681
	movq	%rax, %rsi	# iftmp.78,
	movq	%rdx, %rdi	# tmp681,
	movl	$0, %eax	#,
	call	error_with_decl	#
	.loc 1 1694 0 is_stmt 1 discriminator 2
	movl	$0, %eax	#, D.21514
	jmp	.L229	#
.L261:
	.loc 1 1696 0
	movq	-136(%rbp), %rax	# newdecl, tmp682
	movzbl	16(%rax), %eax	# newdecl_29(D)->common.code, D.21516
	cmpb	$33, %al	#, D.21516
	jne	.L269	#,
	.loc 1 1697 0
	movq	-144(%rbp), %rax	# olddecl, tmp683
	movzbl	50(%rax), %eax	# *olddecl_27(D), D.21516
	andl	$1, %eax	#, D.21516
	testb	%al, %al	# D.21516
	jne	.L270	#,
	.loc 1 1698 0
	movq	-136(%rbp), %rax	# newdecl, tmp684
	movzbl	50(%rax), %eax	# *newdecl_29(D), D.21516
	andl	$1, %eax	#, D.21516
	testb	%al, %al	# D.21516
	je	.L269	#,
.L270:
	.loc 1 1700 0
	movq	-136(%rbp), %rax	# newdecl, tmp685
	movl	$.LC151, %esi	#,
	movq	%rax, %rdi	# tmp685,
	movl	$0, %eax	#,
	call	warning_with_decl	#
	.loc 1 1703 0
	movq	-144(%rbp), %rax	# olddecl, tmp686
	movq	104(%rax), %rax	# olddecl_27(D)->decl.initial, D.21515
	.loc 1 1702 0
	testq	%rax, %rax	# D.21515
	je	.L271	#,
	.loc 1 1704 0
	movq	current_binding_level(%rip), %rdx	# current_binding_level, current_binding_level.82
	movq	global_binding_level(%rip), %rax	# global_binding_level, global_binding_level.83
	cmpq	%rax, %rdx	# global_binding_level.83, current_binding_level.82
	jne	.L271	#,
	.loc 1 1702 0
	movl	$.LC155, %eax	#, iftmp.81
	jmp	.L272	#
.L271:
	.loc 1 1702 0 is_stmt 0 discriminator 1
	movl	$.LC156, %eax	#, iftmp.81
.L272:
	.loc 1 1702 0 discriminator 2
	movq	-144(%rbp), %rdx	# olddecl, tmp687
	movq	%rax, %rsi	# iftmp.81,
	movq	%rdx, %rdi	# tmp687,
	movl	$0, %eax	#,
	call	warning_with_decl	#
	jmp	.L232	#
.L269:
	.loc 1 1708 0 is_stmt 1
	movq	-144(%rbp), %rax	# olddecl, tmp688
	movzbl	16(%rax), %eax	# olddecl_27(D)->common.code, D.21516
	cmpb	$30, %al	#, D.21516
	jne	.L273	#,
	.loc 1 1709 0
	movq	-144(%rbp), %rax	# olddecl, tmp689
	movq	104(%rax), %rax	# olddecl_27(D)->decl.initial, D.21515
	testq	%rax, %rax	# D.21515
	je	.L273	#,
	.loc 1 1710 0
	movq	-96(%rbp), %rax	# oldtype, tmp690
	movq	24(%rax), %rax	# oldtype_37->type.values, D.21515
	testq	%rax, %rax	# D.21515
	jne	.L273	#,
	.loc 1 1711 0
	movq	-88(%rbp), %rax	# newtype, tmp691
	movq	24(%rax), %rax	# newtype_38->type.values, D.21515
	testq	%rax, %rax	# D.21515
	je	.L273	#,
	.loc 1 1712 0
	movq	-96(%rbp), %rax	# oldtype, tmp692
	movq	136(%rax), %rax	# oldtype_37->type.binfo, D.21515
	testq	%rax, %rax	# D.21515
	je	.L273	#,
.LBB13:
	.loc 1 1718 0
	movq	-96(%rbp), %rax	# oldtype, tmp693
	movq	136(%rax), %rax	# oldtype_37->type.binfo, tmp694
	movq	%rax, -64(%rbp)	# tmp694, parm
	.loc 1 1719 0
	movq	-88(%rbp), %rax	# newtype, tmp695
	movq	24(%rax), %rax	# newtype_38->type.values, tmp696
	movq	%rax, -72(%rbp)	# tmp696, type
	.loc 1 1720 0
	movl	$1, -108(%rbp)	#, nargs
.L280:
	.loc 1 1724 0
	movq	-64(%rbp), %rax	# parm, tmp697
	movq	32(%rax), %rax	# parm_17->list.value, D.21515
	movq	128(%rax), %rdx	# _258->type.main_variant, D.21515
	movq	global_trees+216(%rip), %rax	# global_trees, D.21515
	cmpq	%rax, %rdx	# D.21515, D.21515
	jne	.L274	#,
	.loc 1 1725 0
	movq	-72(%rbp), %rax	# type, tmp698
	movq	32(%rax), %rax	# type_16->list.value, D.21515
	movq	128(%rax), %rdx	# _261->type.main_variant, D.21515
	movq	global_trees+216(%rip), %rax	# global_trees, D.21515
	cmpq	%rax, %rdx	# D.21515, D.21515
	jne	.L274	#,
	.loc 1 1727 0
	movq	-136(%rbp), %rax	# newdecl, tmp699
	movl	$.LC157, %esi	#,
	movq	%rax, %rdi	# tmp699,
	movl	$0, %eax	#,
	call	warning_with_decl	#
	.loc 1 1728 0
	movq	-144(%rbp), %rax	# olddecl, tmp700
	movl	$.LC158, %esi	#,
	movq	%rax, %rdi	# tmp700,
	movl	$0, %eax	#,
	call	warning_with_decl	#
	.loc 1 1729 0
	jmp	.L275	#
.L274:
	.loc 1 1731 0
	movq	-64(%rbp), %rax	# parm, tmp701
	movq	32(%rax), %rax	# parm_17->list.value, D.21515
	movq	128(%rax), %rdx	# _264->type.main_variant, D.21515
	movq	global_trees+216(%rip), %rax	# global_trees, D.21515
	cmpq	%rax, %rdx	# D.21515, D.21515
	je	.L276	#,
	.loc 1 1732 0
	movq	-72(%rbp), %rax	# type, tmp702
	movq	32(%rax), %rax	# type_16->list.value, D.21515
	movq	128(%rax), %rdx	# _267->type.main_variant, D.21515
	movq	global_trees+216(%rip), %rax	# global_trees, D.21515
	cmpq	%rax, %rdx	# D.21515, D.21515
	jne	.L277	#,
.L276:
	.loc 1 1734 0
	movq	-136(%rbp), %rax	# newdecl, tmp703
	movl	$.LC159, %esi	#,
	movq	%rax, %rdi	# tmp703,
	movl	$0, %eax	#,
	call	error_with_decl	#
	.loc 1 1736 0
	movq	-144(%rbp), %rax	# olddecl, tmp704
	movl	$.LC158, %esi	#,
	movq	%rax, %rdi	# tmp704,
	movl	$0, %eax	#,
	call	error_with_decl	#
	.loc 1 1737 0
	movl	$1, -112(%rbp)	#, errmsg
	.loc 1 1738 0
	jmp	.L275	#
.L277:
	.loc 1 1742 0
	movq	-72(%rbp), %rax	# type, tmp705
	movq	32(%rax), %rdx	# type_16->list.value, D.21515
	movq	-64(%rbp), %rax	# parm, tmp706
	movq	32(%rax), %rax	# parm_17->list.value, D.21515
	movq	%rdx, %rsi	# D.21515,
	movq	%rax, %rdi	# D.21515,
	call	comptypes	#
	testl	%eax, %eax	# D.21514
	jne	.L278	#,
	.loc 1 1745 0
	movl	flag_traditional(%rip), %eax	# flag_traditional, flag_traditional.84
	testl	%eax, %eax	# flag_traditional.84
	je	.L279	#,
	.loc 1 1746 0
	movq	-64(%rbp), %rax	# parm, tmp707
	movq	32(%rax), %rax	# parm_17->list.value, D.21515
	movq	128(%rax), %rdx	# _274->type.main_variant, D.21515
	movq	integer_types+40(%rip), %rax	# integer_types, D.21515
	cmpq	%rax, %rdx	# D.21515, D.21515
	jne	.L279	#,
	.loc 1 1747 0
	movq	-72(%rbp), %rax	# type, tmp708
	movq	32(%rax), %rax	# type_16->list.value, D.21515
	movq	128(%rax), %rdx	# _277->type.main_variant, D.21515
	movq	integer_types+48(%rip), %rax	# integer_types, D.21515
	.loc 1 1745 0
	cmpq	%rax, %rdx	# D.21515, D.21515
	je	.L278	#,
.L279:
	.loc 1 1749 0
	movl	-108(%rbp), %edx	# nargs, tmp709
	movq	-136(%rbp), %rax	# newdecl, tmp710
	movl	$.LC160, %esi	#,
	movq	%rax, %rdi	# tmp710,
	movl	$0, %eax	#,
	call	error_with_decl	#
	.loc 1 1752 0
	movq	-144(%rbp), %rax	# olddecl, tmp711
	movl	$.LC158, %esi	#,
	movq	%rax, %rdi	# tmp711,
	movl	$0, %eax	#,
	call	error_with_decl	#
	.loc 1 1753 0
	movl	$1, -112(%rbp)	#, errmsg
	.loc 1 1754 0
	jmp	.L275	#
.L278:
	.loc 1 1722 0
	movq	-64(%rbp), %rax	# parm, tmp712
	movq	(%rax), %rax	# parm_17->common.chain, tmp713
	movq	%rax, -64(%rbp)	# tmp713, parm
	movq	-72(%rbp), %rax	# type, tmp714
	movq	(%rax), %rax	# type_16->common.chain, tmp715
	movq	%rax, -72(%rbp)	# tmp715, type
	addl	$1, -108(%rbp)	#, nargs
	.loc 1 1756 0
	jmp	.L280	#
.L275:
.LBE13:
	.loc 1 1713 0
	jmp	.L232	#
.L273:
	.loc 1 1763 0
	movq	-144(%rbp), %rax	# olddecl, tmp716
	movzbl	16(%rax), %eax	# olddecl_27(D)->common.code, D.21516
	cmpb	$30, %al	#, D.21516
	jne	.L281	#,
	.loc 1 1764 0
	movq	-144(%rbp), %rax	# olddecl, tmp717
	movq	200(%rax), %rax	# olddecl_27(D)->decl.lang_specific, D.21518
	movzbl	(%rax), %eax	# *_286, D.21516
	andl	$1, %eax	#, D.21516
	testb	%al, %al	# D.21516
	jne	.L281	#,
	.loc 1 1765 0
	movq	-136(%rbp), %rax	# newdecl, tmp718
	movq	200(%rax), %rax	# newdecl_29(D)->decl.lang_specific, D.21518
	movzbl	(%rax), %eax	# *_289, D.21516
	andl	$1, %eax	#, D.21516
	testb	%al, %al	# D.21516
	je	.L281	#,
	.loc 1 1766 0
	movq	-144(%rbp), %rax	# olddecl, tmp719
	movzbl	18(%rax), %eax	# *olddecl_27(D), D.21516
	andl	$1, %eax	#, D.21516
	testb	%al, %al	# D.21516
	je	.L281	#,
	.loc 1 1767 0
	movq	-136(%rbp), %rax	# newdecl, tmp720
	movl	$.LC161, %esi	#,
	movq	%rax, %rdi	# tmp720,
	movl	$0, %eax	#,
	call	warning_with_decl	#
.L281:
	.loc 1 1769 0
	movq	-144(%rbp), %rax	# olddecl, tmp721
	movzbl	16(%rax), %eax	# olddecl_27(D)->common.code, D.21516
	cmpb	$30, %al	#, D.21516
	jne	.L282	#,
	.loc 1 1770 0
	movq	-144(%rbp), %rax	# olddecl, tmp722
	movq	200(%rax), %rax	# olddecl_27(D)->decl.lang_specific, D.21518
	movzbl	(%rax), %eax	# *_295, D.21516
	andl	$1, %eax	#, D.21516
	testb	%al, %al	# D.21516
	jne	.L282	#,
	.loc 1 1771 0
	movq	-136(%rbp), %rax	# newdecl, tmp723
	movq	200(%rax), %rax	# newdecl_29(D)->decl.lang_specific, D.21518
	movzbl	(%rax), %eax	# *_298, D.21516
	andl	$1, %eax	#, D.21516
	testb	%al, %al	# D.21516
	je	.L282	#,
	.loc 1 1772 0
	movq	-144(%rbp), %rax	# olddecl, tmp724
	movq	104(%rax), %rax	# olddecl_27(D)->decl.initial, D.21515
	testq	%rax, %rax	# D.21515
	je	.L282	#,
	.loc 1 1773 0
	movq	-136(%rbp), %rax	# newdecl, tmp725
	movl	$.LC162, %esi	#,
	movq	%rax, %rdi	# tmp725,
	movl	$0, %eax	#,
	call	warning_with_decl	#
.L282:
	.loc 1 1778 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.85
	testl	%eax, %eax	# pedantic.85
	jne	.L283	#,
	.loc 1 1778 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax	# olddecl, tmp726
	movzbl	16(%rax), %eax	# olddecl_27(D)->common.code, D.21516
	cmpb	$30, %al	#, D.21516
	jne	.L284	#,
.L283:
	.loc 1 1779 0 is_stmt 1
	movq	-144(%rbp), %rax	# olddecl, tmp727
	movzbl	18(%rax), %eax	# *olddecl_27(D), D.21516
	andl	$8, %eax	#, D.21516
	testb	%al, %al	# D.21516
	je	.L284	#,
	.loc 1 1780 0
	movq	-136(%rbp), %rax	# newdecl, tmp728
	movzbl	18(%rax), %eax	# *newdecl_29(D), D.21516
	andl	$8, %eax	#, D.21516
	testb	%al, %al	# D.21516
	jne	.L284	#,
	.loc 1 1781 0
	movq	-136(%rbp), %rax	# newdecl, tmp729
	movl	$.LC163, %esi	#,
	movq	%rax, %rdi	# tmp729,
	movl	$0, %eax	#,
	call	warning_with_decl	#
.L284:
	.loc 1 1785 0
	movl	warn_traditional(%rip), %eax	# warn_traditional, warn_traditional.86
	testl	%eax, %eax	# warn_traditional.86
	je	.L285	#,
	.loc 1 1785 0 is_stmt 0 discriminator 1
	movl	in_system_header(%rip), %eax	# in_system_header, in_system_header.87
	testl	%eax, %eax	# in_system_header.87
	jne	.L285	#,
	.loc 1 1786 0 is_stmt 1
	movq	-144(%rbp), %rax	# olddecl, tmp730
	movzbl	16(%rax), %eax	# olddecl_27(D)->common.code, D.21516
	cmpb	$30, %al	#, D.21516
	jne	.L285	#,
	.loc 1 1787 0
	movq	-144(%rbp), %rax	# olddecl, tmp731
	movzbl	18(%rax), %eax	# *olddecl_27(D), D.21516
	andl	$8, %eax	#, D.21516
	testb	%al, %al	# D.21516
	jne	.L285	#,
	.loc 1 1788 0
	movq	-136(%rbp), %rax	# newdecl, tmp732
	movzbl	18(%rax), %eax	# *newdecl_29(D), D.21516
	andl	$8, %eax	#, D.21516
	testb	%al, %al	# D.21516
	je	.L285	#,
	.loc 1 1789 0
	movq	-136(%rbp), %rax	# newdecl, tmp733
	movl	$.LC164, %esi	#,
	movq	%rax, %rdi	# tmp733,
	movl	$0, %eax	#,
	call	warning_with_decl	#
.L285:
	.loc 1 1793 0
	movq	-144(%rbp), %rax	# olddecl, tmp734
	movzbl	16(%rax), %eax	# olddecl_27(D)->common.code, D.21516
	cmpb	$30, %al	#, D.21516
	je	.L286	#,
	.loc 1 1794 0
	movq	-144(%rbp), %rax	# olddecl, tmp735
	movzbl	17(%rax), %eax	# *olddecl_27(D), D.21516
	andl	$16, %eax	#, D.21516
	testb	%al, %al	# D.21516
	jne	.L286	#,
	.loc 1 1795 0
	movq	-136(%rbp), %rax	# newdecl, tmp736
	movzbl	17(%rax), %eax	# *newdecl_29(D), D.21516
	andl	$16, %eax	#, D.21516
	testb	%al, %al	# D.21516
	je	.L286	#,
	.loc 1 1796 0
	movq	-136(%rbp), %rax	# newdecl, tmp737
	movl	$.LC165, %esi	#,
	movq	%rax, %rdi	# tmp737,
	movl	$0, %eax	#,
	call	warning_with_decl	#
	jmp	.L232	#
.L286:
	.loc 1 1800 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.88
	testl	%eax, %eax	# pedantic.88
	je	.L232	#,
	.loc 1 1800 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax	# olddecl, tmp738
	movzbl	16(%rax), %eax	# olddecl_27(D)->common.code, D.21516
	cmpb	$30, %al	#, D.21516
	je	.L232	#,
	.loc 1 1801 0 is_stmt 1
	movq	-136(%rbp), %rax	# newdecl, tmp739
	movzbl	17(%rax), %eax	# *newdecl_29(D), tmp742
	shrb	$4, %al	#, D.21521
	movl	%eax, %edx	# D.21521, D.21521
	andl	$1, %edx	#, D.21521
	movq	-144(%rbp), %rax	# olddecl, tmp743
	movzbl	17(%rax), %eax	# *olddecl_27(D), tmp746
	shrb	$4, %al	#, D.21521
	andl	$1, %eax	#, D.21521
	cmpb	%al, %dl	# D.21521, D.21521
	jne	.L287	#,
	.loc 1 1802 0
	movq	-136(%rbp), %rax	# newdecl, tmp747
	movzbl	17(%rax), %eax	# *newdecl_29(D), tmp750
	shrb	$3, %al	#, D.21521
	movl	%eax, %edx	# D.21521, D.21521
	andl	$1, %edx	#, D.21521
	movq	-144(%rbp), %rax	# olddecl, tmp751
	movzbl	17(%rax), %eax	# *olddecl_27(D), tmp754
	shrb	$3, %al	#, D.21521
	andl	$1, %eax	#, D.21521
	cmpb	%al, %dl	# D.21521, D.21521
	je	.L232	#,
.L287:
	.loc 1 1803 0
	movq	-136(%rbp), %rax	# newdecl, tmp755
	movl	$.LC166, %esi	#,
	movq	%rax, %rdi	# tmp755,
	movl	$0, %eax	#,
	call	pedwarn_with_decl	#
.L232:
	.loc 1 1808 0
	cmpl	$0, -112(%rbp)	#, errmsg
	jne	.L288	#,
	.loc 1 1808 0 is_stmt 0 discriminator 1
	movl	warn_redundant_decls(%rip), %eax	# warn_redundant_decls, warn_redundant_decls.89
	testl	%eax, %eax	# warn_redundant_decls.89
	je	.L288	#,
	movq	-144(%rbp), %rax	# olddecl, tmp756
	movl	32(%rax), %eax	# olddecl_27(D)->decl.linenum, D.21514
	testl	%eax, %eax	# D.21514
	je	.L288	#,
	.loc 1 1811 0 is_stmt 1
	movq	-136(%rbp), %rax	# newdecl, tmp757
	movzbl	16(%rax), %eax	# newdecl_29(D)->common.code, D.21516
	cmpb	$30, %al	#, D.21516
	jne	.L289	#,
	.loc 1 1811 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# newdecl, tmp758
	movq	104(%rax), %rax	# newdecl_29(D)->decl.initial, D.21515
	testq	%rax, %rax	# D.21515
	je	.L289	#,
	.loc 1 1812 0 is_stmt 1 discriminator 1
	movq	-144(%rbp), %rax	# olddecl, tmp759
	movq	104(%rax), %rax	# olddecl_27(D)->decl.initial, D.21515
	.loc 1 1811 0 discriminator 1
	testq	%rax, %rax	# D.21515
	je	.L288	#,
.L289:
	.loc 1 1814 0
	movq	-144(%rbp), %rax	# olddecl, tmp760
	movzbl	49(%rax), %eax	# *olddecl_27(D), D.21516
	andl	$1, %eax	#, D.21516
	testb	%al, %al	# D.21516
	je	.L290	#,
	.loc 1 1814 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# newdecl, tmp761
	movzbl	49(%rax), %eax	# *newdecl_29(D), D.21516
	andl	$1, %eax	#, D.21516
	testb	%al, %al	# D.21516
	je	.L288	#,
.L290:
	.loc 1 1816 0 is_stmt 1
	movq	-136(%rbp), %rax	# newdecl, tmp762
	movl	$.LC167, %esi	#,
	movq	%rax, %rdi	# tmp762,
	movl	$0, %eax	#,
	call	warning_with_decl	#
	.loc 1 1817 0
	movq	-144(%rbp), %rax	# olddecl, tmp763
	movl	$.LC146, %esi	#,
	movq	%rax, %rdi	# tmp763,
	movl	$0, %eax	#,
	call	warning_with_decl	#
.L288:
	.loc 1 1826 0
	cmpl	$0, -116(%rbp)	#, types_match
	je	.L291	#,
.LBB14:
	.loc 1 1831 0
	cmpl	$0, -148(%rbp)	#, different_binding_level
	je	.L292	#,
	.loc 1 1831 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# newdecl, iftmp.90
	jmp	.L293	#
.L292:
	.loc 1 1831 0 discriminator 2
	movq	-144(%rbp), %rax	# olddecl, iftmp.90
.L293:
	.loc 1 1831 0 discriminator 3
	movq	%rax, -8(%rbp)	# iftmp.90, write_olddecl
	.loc 1 1834 0 is_stmt 1 discriminator 3
	movq	-136(%rbp), %rax	# newdecl, tmp764
	movzbl	16(%rax), %eax	# newdecl_29(D)->common.code, D.21516
	cmpb	$30, %al	#, D.21516
	jne	.L294	#,
	.loc 1 1834 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax	# olddecl, tmp765
	movzbl	51(%rax), %eax	# *olddecl_27(D), D.21516
	andl	$96, %eax	#, D.21516
	testb	%al, %al	# D.21516
	jne	.L295	#,
.L294:
	.loc 1 1836 0 is_stmt 1
	cmpl	$0, -148(%rbp)	#, different_binding_level
	je	.L296	#,
	.loc 1 1838 0
	movq	-96(%rbp), %rax	# oldtype, tmp766
	movq	24(%rax), %rax	# oldtype_9->type.values, D.21515
	testq	%rax, %rax	# D.21515
	je	.L297	#,
	.loc 1 1839 0
	movq	-88(%rbp), %rax	# newtype, tmp767
	movq	24(%rax), %rax	# newtype_11->type.values, D.21515
	testq	%rax, %rax	# D.21515
	jne	.L297	#,
	.loc 1 1840 0
	movq	-96(%rbp), %rdx	# oldtype, tmp768
	movq	-88(%rbp), %rax	# newtype, tmp769
	movq	%rdx, %rsi	# tmp768,
	movq	%rax, %rdi	# tmp769,
	call	common_type	#
	movq	-136(%rbp), %rdx	# newdecl, tmp770
	movq	%rax, 8(%rdx)	# D.21515, newdecl_29(D)->common.type
	jmp	.L295	#
.L297:
	.loc 1 1844 0
	movq	-96(%rbp), %rax	# oldtype, tmp771
	movq	48(%rax), %rdx	# oldtype_9->type.attributes, D.21515
	movq	-88(%rbp), %rax	# newtype, tmp772
	movq	48(%rax), %rax	# newtype_11->type.attributes, D.21515
	movq	%rdx, %rsi	# D.21515,
	movq	%rax, %rdi	# D.21515,
	call	merge_attributes	#
	movq	%rax, %rdx	#, D.21515
	movq	-88(%rbp), %rax	# newtype, tmp773
	movq	%rdx, %rsi	# D.21515,
	movq	%rax, %rdi	# tmp773,
	call	build_type_attribute_variant	#
	.loc 1 1843 0
	movq	-136(%rbp), %rdx	# newdecl, tmp774
	movq	%rax, 8(%rdx)	# D.21515, newdecl_29(D)->common.type
	jmp	.L295	#
.L296:
	.loc 1 1851 0
	movq	-96(%rbp), %rdx	# oldtype, tmp775
	movq	-88(%rbp), %rax	# newtype, tmp776
	movq	%rdx, %rsi	# tmp775,
	movq	%rax, %rdi	# tmp776,
	call	common_type	#
	movq	-144(%rbp), %rdx	# olddecl, tmp777
	movq	%rax, 8(%rdx)	# D.21515, olddecl_27(D)->common.type
	.loc 1 1850 0
	movq	-144(%rbp), %rax	# olddecl, tmp778
	movq	8(%rax), %rdx	# olddecl_27(D)->common.type, D.21515
	movq	-136(%rbp), %rax	# newdecl, tmp779
	movq	%rdx, 8(%rax)	# D.21515, newdecl_29(D)->common.type
.L295:
	.loc 1 1855 0
	movq	-136(%rbp), %rax	# newdecl, tmp780
	movq	8(%rax), %rax	# newdecl_29(D)->common.type, D.21515
	cmpq	-96(%rbp), %rax	# oldtype, D.21515
	je	.L299	#,
	.loc 1 1857 0
	movq	-136(%rbp), %rax	# newdecl, tmp781
	movq	8(%rax), %rdx	# newdecl_29(D)->common.type, D.21515
	movq	global_trees(%rip), %rax	# global_trees, D.21515
	cmpq	%rax, %rdx	# D.21515, D.21515
	je	.L300	#,
	.loc 1 1858 0
	movq	-136(%rbp), %rax	# newdecl, tmp782
	movq	8(%rax), %rax	# newdecl_29(D)->common.type, D.21515
	movq	%rax, %rdi	# D.21515,
	call	layout_type	#
.L300:
	.loc 1 1859 0
	movq	-136(%rbp), %rax	# newdecl, tmp783
	movzbl	16(%rax), %eax	# newdecl_29(D)->common.code, D.21516
	cmpb	$30, %al	#, D.21516
	je	.L302	#,
	.loc 1 1860 0
	movq	-136(%rbp), %rax	# newdecl, tmp784
	movzbl	16(%rax), %eax	# newdecl_29(D)->common.code, D.21516
	cmpb	$33, %al	#, D.21516
	je	.L302	#,
	.loc 1 1861 0
	movq	-136(%rbp), %rax	# newdecl, tmp785
	movzbl	16(%rax), %eax	# newdecl_29(D)->common.code, D.21516
	cmpb	$32, %al	#, D.21516
	je	.L302	#,
	.loc 1 1862 0
	movq	-136(%rbp), %rax	# newdecl, tmp786
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp786,
	call	layout_decl	#
	jmp	.L302	#
.L299:
	.loc 1 1867 0
	movq	-144(%rbp), %rax	# olddecl, tmp787
	movq	40(%rax), %rdx	# olddecl_27(D)->decl.size, D.21515
	movq	-136(%rbp), %rax	# newdecl, tmp788
	movq	%rdx, 40(%rax)	# D.21515, newdecl_29(D)->decl.size
	.loc 1 1868 0
	movq	-144(%rbp), %rax	# olddecl, tmp789
	movq	64(%rax), %rdx	# olddecl_27(D)->decl.size_unit, D.21515
	movq	-136(%rbp), %rax	# newdecl, tmp790
	movq	%rdx, 64(%rax)	# D.21515, newdecl_29(D)->decl.size_unit
	.loc 1 1869 0
	movq	-144(%rbp), %rax	# olddecl, tmp791
	movzbl	48(%rax), %edx	# olddecl_27(D)->decl.mode, D.21516
	movq	-136(%rbp), %rax	# newdecl, tmp792
	movb	%dl, 48(%rax)	# D.21516, newdecl_29(D)->decl.mode
	.loc 1 1870 0
	movq	-144(%rbp), %rax	# olddecl, tmp793
	movzbl	16(%rax), %eax	# olddecl_27(D)->common.code, D.21516
	cmpb	$30, %al	#, D.21516
	je	.L302	#,
	.loc 1 1871 0
	movq	-144(%rbp), %rax	# olddecl, tmp794
	movl	56(%rax), %eax	# *olddecl_27(D), tmp797
	andl	$16777215, %eax	#, D.21522
	movl	%eax, %edx	# D.21522, D.21514
	movq	-136(%rbp), %rax	# newdecl, tmp798
	movl	56(%rax), %eax	# *newdecl_29(D), tmp801
	andl	$16777215, %eax	#, D.21522
	cmpl	%eax, %edx	# D.21514, D.21514
	jle	.L302	#,
	.loc 1 1873 0
	movq	-144(%rbp), %rax	# olddecl, tmp802
	movl	56(%rax), %eax	# *olddecl_27(D), tmp805
	andl	$16777215, %eax	#, D.21522
	movl	%eax, %edx	# D.21522, D.21522
	movq	-136(%rbp), %rax	# newdecl, tmp806
	movl	%edx, %ecx	# D.21522, tmp808
	andl	$16777215, %ecx	#, tmp808
	movl	56(%rax), %edx	#, tmp809
	andl	$-16777216, %edx	#, tmp810
	orl	%ecx, %edx	# tmp808, tmp811
	movl	%edx, 56(%rax)	# tmp811,
	.loc 1 1874 0
	movq	-136(%rbp), %rax	# newdecl, tmp812
	movzbl	52(%rax), %eax	# *newdecl_29(D), tmp815
	shrb	$3, %al	#, D.21521
	andl	$1, %eax	#, D.21521
	movl	%eax, %edx	# D.21521, D.21516
	movq	-144(%rbp), %rax	# olddecl, tmp816
	movl	56(%rax), %eax	# *olddecl_27(D), tmp819
	andl	$16777215, %eax	#, D.21522
	orl	%edx, %eax	# D.21516, D.21516
	andl	$1, %eax	#, D.21521
	movl	%eax, %edx	# D.21521, D.21521
	movq	-136(%rbp), %rax	# newdecl, tmp820
	andl	$1, %edx	#, tmp822
	leal	0(,%rdx,8), %ecx	#, tmp823
	movzbl	52(%rax), %edx	#, tmp824
	andl	$-9, %edx	#, tmp825
	orl	%ecx, %edx	# tmp823, tmp826
	movb	%dl, 52(%rax)	# tmp826,
.L302:
	.loc 1 1879 0
	movq	-144(%rbp), %rax	# olddecl, tmp827
	movq	144(%rax), %rdx	# olddecl_27(D)->decl.rtl, D.21523
	movq	-136(%rbp), %rax	# newdecl, tmp828
	movq	%rdx, 144(%rax)	# D.21523, newdecl_29(D)->decl.rtl
	.loc 1 1882 0
	movq	-144(%rbp), %rax	# olddecl, tmp829
	movzbl	16(%rax), %eax	# olddecl_27(D)->common.code, D.21516
	cmpb	$30, %al	#, D.21516
	jne	.L303	#,
	.loc 1 1883 0
	movq	-144(%rbp), %rax	# olddecl, tmp830
	movzbl	17(%rax), %eax	# *olddecl_27(D), D.21516
	andl	$32, %eax	#, D.21516
	testb	%al, %al	# D.21516
	je	.L303	#,
	.loc 1 1883 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax	# olddecl, tmp831
	movzbl	17(%rax), %eax	# *olddecl_27(D), D.21516
	andl	$8, %eax	#, D.21516
	testb	%al, %al	# D.21516
	je	.L303	#,
	.loc 1 1884 0 is_stmt 1
	movq	-136(%rbp), %rax	# newdecl, tmp832
	movzbl	17(%rax), %eax	# *newdecl_29(D), D.21516
	andl	$8, %eax	#, D.21516
	testb	%al, %al	# D.21516
	jne	.L303	#,
	.loc 1 1885 0
	movq	-8(%rbp), %rax	# write_olddecl, tmp833
	movzbl	17(%rax), %edx	#, tmp836
	andl	$-9, %edx	#, tmp837
	movb	%dl, 17(%rax)	# tmp837,
.L303:
	.loc 1 1887 0
	movq	-136(%rbp), %rax	# newdecl, tmp838
	movzbl	17(%rax), %eax	# *newdecl_29(D), D.21516
	andl	$16, %eax	#, D.21516
	testb	%al, %al	# D.21516
	je	.L304	#,
	.loc 1 1888 0
	movq	-8(%rbp), %rax	# write_olddecl, tmp839
	movzbl	17(%rax), %edx	#, tmp842
	orl	$16, %edx	#, tmp843
	movb	%dl, 17(%rax)	# tmp843,
.L304:
	.loc 1 1890 0
	movq	-136(%rbp), %rax	# newdecl, tmp844
	movzbl	17(%rax), %eax	# *newdecl_29(D), D.21516
	andl	$8, %eax	#, D.21516
	testb	%al, %al	# D.21516
	je	.L305	#,
	.loc 1 1892 0
	movq	-8(%rbp), %rax	# write_olddecl, tmp845
	movzbl	17(%rax), %edx	#, tmp848
	orl	$8, %edx	#, tmp849
	movb	%dl, 17(%rax)	# tmp849,
	.loc 1 1893 0
	movq	-136(%rbp), %rax	# newdecl, tmp850
	movzbl	16(%rax), %eax	# newdecl_29(D)->common.code, D.21516
	cmpb	$34, %al	#, D.21516
	jne	.L305	#,
	.loc 1 1900 0
	cmpl	$0, -112(%rbp)	#, errmsg
	jne	.L305	#,
	.loc 1 1901 0
	movq	-136(%rbp), %rax	# newdecl, tmp851
	movq	%rax, %rdi	# tmp851,
	call	make_var_volatile	#
.L305:
	.loc 1 1907 0
	movq	-136(%rbp), %rax	# newdecl, tmp852
	movq	104(%rax), %rax	# newdecl_29(D)->decl.initial, D.21515
	testq	%rax, %rax	# D.21515
	jne	.L306	#,
	.loc 1 1907 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax	# olddecl, tmp853
	movq	104(%rax), %rax	# olddecl_27(D)->decl.initial, D.21515
	testq	%rax, %rax	# D.21515
	je	.L306	#,
	.loc 1 1908 0 is_stmt 1
	cmpl	$0, -148(%rbp)	#, different_binding_level
	jne	.L306	#,
	.loc 1 1910 0
	movq	-144(%rbp), %rax	# olddecl, tmp854
	movl	32(%rax), %edx	# olddecl_27(D)->decl.linenum, D.21514
	movq	-136(%rbp), %rax	# newdecl, tmp855
	movl	%edx, 32(%rax)	# D.21514, newdecl_29(D)->decl.linenum
	.loc 1 1911 0
	movq	-144(%rbp), %rax	# olddecl, tmp856
	movq	24(%rax), %rdx	# olddecl_27(D)->decl.filename, D.21524
	movq	-136(%rbp), %rax	# newdecl, tmp857
	movq	%rdx, 24(%rax)	# D.21524, newdecl_29(D)->decl.filename
.L306:
	.loc 1 1915 0
	movq	-144(%rbp), %rax	# olddecl, tmp858
	movzbl	50(%rax), %eax	# *olddecl_27(D), D.21516
	andl	$1, %eax	#, D.21516
	testb	%al, %al	# D.21516
	je	.L307	#,
	.loc 1 1916 0
	movq	-136(%rbp), %rax	# newdecl, tmp859
	movzbl	50(%rax), %edx	#, tmp862
	orl	$1, %edx	#, tmp863
	movb	%dl, 50(%rax)	# tmp863,
	jmp	.L308	#
.L307:
	.loc 1 1917 0
	movq	-136(%rbp), %rax	# newdecl, tmp864
	movzbl	50(%rax), %eax	# *newdecl_29(D), D.21516
	andl	$1, %eax	#, D.21516
	testb	%al, %al	# D.21516
	je	.L308	#,
	.loc 1 1918 0
	movq	-8(%rbp), %rax	# write_olddecl, tmp865
	movzbl	50(%rax), %edx	#, tmp868
	orl	$1, %edx	#, tmp869
	movb	%dl, 50(%rax)	# tmp869,
.L308:
	.loc 1 1924 0
	movq	-136(%rbp), %rax	# newdecl, tmp870
	movq	104(%rax), %rax	# newdecl_29(D)->decl.initial, D.21515
	testq	%rax, %rax	# D.21515
	jne	.L309	#,
	.loc 1 1924 0 is_stmt 0 discriminator 1
	cmpl	$0, -148(%rbp)	#, different_binding_level
	jne	.L309	#,
	.loc 1 1925 0 is_stmt 1
	movq	-144(%rbp), %rax	# olddecl, tmp871
	movq	104(%rax), %rdx	# olddecl_27(D)->decl.initial, D.21515
	movq	-136(%rbp), %rax	# newdecl, tmp872
	movq	%rdx, 104(%rax)	# D.21515, newdecl_29(D)->decl.initial
.L309:
	.loc 1 1931 0
	movq	-136(%rbp), %rax	# newdecl, tmp873
	movq	128(%rax), %rax	# newdecl_29(D)->decl.section_name, D.21515
	testq	%rax, %rax	# D.21515
	jne	.L310	#,
	.loc 1 1932 0
	movq	-144(%rbp), %rax	# olddecl, tmp874
	movq	128(%rax), %rdx	# olddecl_27(D)->decl.section_name, D.21515
	movq	-136(%rbp), %rax	# newdecl, tmp875
	movq	%rdx, 128(%rax)	# D.21515, newdecl_29(D)->decl.section_name
.L310:
	.loc 1 1936 0
	movq	-144(%rbp), %rax	# olddecl, tmp876
	movq	120(%rax), %rax	# olddecl_27(D)->decl.assembler_name, D.21515
	testq	%rax, %rax	# D.21515
	je	.L311	#,
	.loc 1 1936 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax	# olddecl, tmp877
	movq	120(%rax), %rax	# olddecl_27(D)->decl.assembler_name, D.21515
	testq	%rax, %rax	# D.21515
	jne	.L312	#,
	movq	lang_set_decl_assembler_name(%rip), %rax	# lang_set_decl_assembler_name, lang_set_decl_assembler_name.91
	movq	-144(%rbp), %rdx	# olddecl, tmp878
	movq	%rdx, %rdi	# tmp878,
	call	*%rax	# lang_set_decl_assembler_name.91
.L312:
	.loc 1 1936 0 discriminator 2
	movq	-144(%rbp), %rax	# olddecl, tmp879
	movq	120(%rax), %rdx	# olddecl_27(D)->decl.assembler_name, D.21515
	movq	-136(%rbp), %rax	# newdecl, tmp880
	movq	%rdx, 120(%rax)	# D.21515, newdecl_29(D)->decl.assembler_name
.L311:
	.loc 1 1938 0 is_stmt 1
	movq	-136(%rbp), %rax	# newdecl, tmp881
	movzbl	16(%rax), %eax	# newdecl_29(D)->common.code, D.21516
	cmpb	$30, %al	#, D.21516
	jne	.L313	#,
	.loc 1 1940 0
	movq	-136(%rbp), %rax	# newdecl, tmp882
	movzbl	50(%rax), %eax	# *newdecl_29(D), tmp885
	shrb	$4, %al	#, D.21521
	andl	$1, %eax	#, D.21521
	movl	%eax, %edx	# D.21521, D.21516
	movq	-144(%rbp), %rax	# olddecl, tmp886
	movzbl	50(%rax), %eax	# *olddecl_27(D), tmp889
	shrb	$4, %al	#, D.21521
	andl	$1, %eax	#, D.21521
	orl	%edx, %eax	# D.21516, D.21516
	andl	$1, %eax	#, D.21521
	movl	%eax, %edx	# D.21521, D.21521
	movq	-136(%rbp), %rax	# newdecl, tmp890
	andl	$1, %edx	#, tmp892
	movl	%edx, %ecx	# tmp892, tmp893
	sall	$4, %ecx	#, tmp893
	movzbl	50(%rax), %edx	#, tmp894
	andl	$-17, %edx	#, tmp895
	orl	%ecx, %edx	# tmp893, tmp896
	movb	%dl, 50(%rax)	# tmp896,
	.loc 1 1941 0
	movq	-136(%rbp), %rax	# newdecl, tmp897
	movzbl	50(%rax), %eax	# *newdecl_29(D), tmp900
	shrb	$5, %al	#, D.21521
	andl	$1, %eax	#, D.21521
	movl	%eax, %edx	# D.21521, D.21516
	movq	-144(%rbp), %rax	# olddecl, tmp901
	movzbl	50(%rax), %eax	# *olddecl_27(D), tmp904
	shrb	$5, %al	#, D.21521
	andl	$1, %eax	#, D.21521
	orl	%edx, %eax	# D.21516, D.21516
	andl	$1, %eax	#, D.21521
	movl	%eax, %edx	# D.21521, D.21521
	movq	-136(%rbp), %rax	# newdecl, tmp905
	andl	$1, %edx	#, tmp907
	movl	%edx, %ecx	# tmp907, tmp908
	sall	$5, %ecx	#, tmp908
	movzbl	50(%rax), %edx	#, tmp909
	andl	$-33, %edx	#, tmp910
	orl	%ecx, %edx	# tmp908, tmp911
	movb	%dl, 50(%rax)	# tmp911,
	.loc 1 1942 0
	movq	-136(%rbp), %rax	# newdecl, tmp912
	movzbl	51(%rax), %eax	# *newdecl_29(D), tmp915
	shrb	$4, %al	#, D.21521
	andl	$1, %eax	#, D.21521
	movl	%eax, %edx	# D.21521, D.21516
	movq	-144(%rbp), %rax	# olddecl, tmp916
	movzbl	51(%rax), %eax	# *olddecl_27(D), tmp919
	shrb	$4, %al	#, D.21521
	andl	$1, %eax	#, D.21521
	orl	%edx, %eax	# D.21516, D.21516
	andl	$1, %eax	#, D.21521
	movl	%eax, %edx	# D.21521, D.21521
	movq	-136(%rbp), %rax	# newdecl, tmp920
	andl	$1, %edx	#, tmp922
	movl	%edx, %ecx	# tmp922, tmp923
	sall	$4, %ecx	#, tmp923
	movzbl	51(%rax), %edx	#, tmp924
	andl	$-17, %edx	#, tmp925
	orl	%ecx, %edx	# tmp923, tmp926
	movb	%dl, 51(%rax)	# tmp926,
	.loc 1 1944 0
	movq	-136(%rbp), %rax	# newdecl, tmp927
	movzbl	51(%rax), %eax	# *newdecl_29(D), tmp930
	shrb	%al	# D.21521
	andl	$1, %eax	#, D.21521
	movl	%eax, %edx	# D.21521, D.21516
	movq	-144(%rbp), %rax	# olddecl, tmp931
	movzbl	51(%rax), %eax	# *olddecl_27(D), tmp934
	shrb	%al	# D.21521
	andl	$1, %eax	#, D.21521
	orl	%edx, %eax	# D.21516, D.21516
	andl	$1, %eax	#, D.21521
	movl	%eax, %edx	# D.21521, D.21521
	movq	-136(%rbp), %rax	# newdecl, tmp935
	andl	$1, %edx	#, tmp937
	leal	(%rdx,%rdx), %ecx	#, tmp938
	movzbl	51(%rax), %edx	#, tmp939
	andl	$-3, %edx	#, tmp940
	orl	%ecx, %edx	# tmp938, tmp941
	movb	%dl, 51(%rax)	# tmp941,
.LBE14:
	jmp	.L314	#
.L313:
	jmp	.L314	#
.L291:
	.loc 1 1949 0
	cmpl	$0, -148(%rbp)	#, different_binding_level
	jne	.L314	#,
	.loc 1 1951 0
	movq	-136(%rbp), %rax	# newdecl, tmp942
	movq	8(%rax), %rdx	# newdecl_29(D)->common.type, D.21515
	movq	-144(%rbp), %rax	# olddecl, tmp943
	movq	%rdx, 8(%rax)	# D.21515, olddecl_27(D)->common.type
	.loc 1 1952 0
	movq	-136(%rbp), %rax	# newdecl, tmp944
	movzbl	17(%rax), %eax	# *newdecl_29(D), tmp947
	shrb	$4, %al	#, D.21521
	andl	$1, %eax	#, D.21521
	movq	-144(%rbp), %rdx	# olddecl, tmp948
	andl	$1, %eax	#, tmp950
	sall	$4, %eax	#, tmp951
	movl	%eax, %ecx	# tmp951, tmp951
	movzbl	17(%rdx), %eax	#, tmp952
	andl	$-17, %eax	#, tmp953
	orl	%ecx, %eax	# tmp951, tmp954
	movb	%al, 17(%rdx)	# tmp954,
	.loc 1 1953 0
	movq	-136(%rbp), %rax	# newdecl, tmp955
	movzbl	17(%rax), %eax	# *newdecl_29(D), tmp958
	shrb	$3, %al	#, D.21521
	andl	$1, %eax	#, D.21521
	movq	-144(%rbp), %rdx	# olddecl, tmp959
	andl	$1, %eax	#, tmp961
	leal	0(,%rax,8), %ecx	#, tmp962
	movzbl	17(%rdx), %eax	#, tmp963
	andl	$-9, %eax	#, tmp964
	orl	%ecx, %eax	# tmp962, tmp965
	movb	%al, 17(%rdx)	# tmp965,
	.loc 1 1954 0
	movq	-136(%rbp), %rax	# newdecl, tmp966
	movzbl	17(%rax), %eax	# *newdecl_29(D), tmp969
	andl	$1, %eax	#, D.21521
	movl	%eax, %edx	# D.21521, D.21521
	movq	-144(%rbp), %rax	# olddecl, tmp970
	movl	%edx, %ecx	# D.21521, tmp972
	andl	$1, %ecx	#, tmp972
	movzbl	17(%rax), %edx	#, tmp973
	andl	$-2, %edx	#, tmp974
	orl	%ecx, %edx	# tmp972, tmp975
	movb	%dl, 17(%rax)	# tmp975,
.L314:
	.loc 1 1958 0
	movq	-144(%rbp), %rdx	# olddecl, tmp976
	movq	-136(%rbp), %rax	# newdecl, tmp977
	movq	%rdx, %rsi	# tmp976,
	movq	%rax, %rdi	# tmp977,
	call	merge_weak	#
	.loc 1 1961 0
	movq	-136(%rbp), %rax	# newdecl, tmp978
	movzbl	16(%rax), %eax	# newdecl_29(D)->common.code, D.21516
	cmpb	$30, %al	#, D.21516
	jne	.L315	#,
	.loc 1 1963 0
	movq	-136(%rbp), %rax	# newdecl, tmp979
	movzbl	18(%rax), %eax	# *newdecl_29(D), tmp982
	shrb	$3, %al	#, D.21521
	andl	$1, %eax	#, D.21521
	movl	%eax, %edx	# D.21521, D.21516
	movq	-144(%rbp), %rax	# olddecl, tmp983
	movzbl	18(%rax), %eax	# *olddecl_27(D), tmp986
	shrb	$3, %al	#, D.21521
	andl	$1, %eax	#, D.21521
	andl	%edx, %eax	# D.21516, D.21516
	andl	$1, %eax	#, D.21521
	movl	%eax, %edx	# D.21521, D.21521
	movq	-136(%rbp), %rax	# newdecl, tmp987
	andl	$1, %edx	#, tmp989
	leal	0(,%rdx,8), %ecx	#, tmp990
	movzbl	18(%rax), %edx	#, tmp991
	andl	$-9, %edx	#, tmp992
	orl	%ecx, %edx	# tmp990, tmp993
	movb	%dl, 18(%rax)	# tmp993,
	.loc 1 1968 0
	movq	-136(%rbp), %rax	# newdecl, tmp994
	movzbl	18(%rax), %eax	# *newdecl_29(D), tmp997
	shrb	$3, %al	#, D.21521
	andl	$1, %eax	#, D.21521
	movq	-144(%rbp), %rdx	# olddecl, tmp998
	andl	$1, %eax	#, tmp1000
	leal	0(,%rax,8), %ecx	#, tmp1001
	movzbl	18(%rdx), %eax	#, tmp1002
	andl	$-9, %eax	#, tmp1003
	orl	%ecx, %eax	# tmp1001, tmp1004
	movb	%al, 18(%rdx)	# tmp1004,
	.loc 1 1970 0
	movq	-144(%rbp), %rax	# olddecl, tmp1005
	movzbl	18(%rax), %eax	# *olddecl_27(D), D.21516
	andl	$8, %eax	#, D.21516
	testb	%al, %al	# D.21516
	jne	.L315	#,
	.loc 1 1971 0
	movq	-144(%rbp), %rax	# olddecl, tmp1006
	movq	72(%rax), %rax	# olddecl_27(D)->decl.name, D.21515
	movzbl	18(%rax), %edx	#, tmp1009
	andl	$-9, %edx	#, tmp1010
	movb	%dl, 18(%rax)	# tmp1010,
.L315:
	.loc 1 1973 0
	movq	-136(%rbp), %rax	# newdecl, tmp1011
	movzbl	49(%rax), %eax	# *newdecl_29(D), D.21516
	andl	$1, %eax	#, D.21516
	testb	%al, %al	# D.21516
	je	.L316	#,
	.loc 1 1975 0
	cmpl	$0, -148(%rbp)	#, different_binding_level
	jne	.L317	#,
	.loc 1 1980 0
	movq	-144(%rbp), %rax	# olddecl, tmp1012
	movzbl	18(%rax), %eax	# *olddecl_27(D), tmp1015
	shrb	$2, %al	#, D.21521
	andl	$1, %eax	#, D.21521
	movq	-136(%rbp), %rdx	# newdecl, tmp1016
	andl	$1, %eax	#, tmp1018
	leal	0(,%rax,4), %ecx	#, tmp1019
	movzbl	18(%rdx), %eax	#, tmp1020
	andl	$-5, %eax	#, tmp1021
	orl	%ecx, %eax	# tmp1019, tmp1022
	movb	%al, 18(%rdx)	# tmp1022,
	.loc 1 1981 0
	movq	-144(%rbp), %rax	# olddecl, tmp1023
	movzbl	49(%rax), %eax	# *olddecl_27(D), tmp1026
	andl	$1, %eax	#, D.21521
	movl	%eax, %edx	# D.21521, D.21521
	movq	-136(%rbp), %rax	# newdecl, tmp1027
	movl	%edx, %ecx	# D.21521, tmp1029
	andl	$1, %ecx	#, tmp1029
	movzbl	49(%rax), %edx	#, tmp1030
	andl	$-2, %edx	#, tmp1031
	orl	%ecx, %edx	# tmp1029, tmp1032
	movb	%dl, 49(%rax)	# tmp1032,
.L317:
	.loc 1 1984 0
	movq	-144(%rbp), %rax	# olddecl, tmp1033
	movzbl	18(%rax), %eax	# *olddecl_27(D), tmp1036
	shrb	$3, %al	#, D.21521
	andl	$1, %eax	#, D.21521
	movq	-136(%rbp), %rdx	# newdecl, tmp1037
	andl	$1, %eax	#, tmp1039
	leal	0(,%rax,8), %ecx	#, tmp1040
	movzbl	18(%rdx), %eax	#, tmp1041
	andl	$-9, %eax	#, tmp1042
	orl	%ecx, %eax	# tmp1040, tmp1043
	movb	%al, 18(%rdx)	# tmp1043,
	.loc 1 1985 0
	movq	-136(%rbp), %rax	# newdecl, tmp1044
	movzbl	49(%rax), %eax	# *newdecl_29(D), D.21516
	andl	$1, %eax	#, D.21516
	testb	%al, %al	# D.21516
	jne	.L319	#,
	.loc 1 1986 0
	movq	-144(%rbp), %rax	# olddecl, tmp1045
	movq	80(%rax), %rdx	# olddecl_27(D)->decl.context, D.21515
	movq	-136(%rbp), %rax	# newdecl, tmp1046
	movq	%rdx, 80(%rax)	# D.21515, newdecl_29(D)->decl.context
	jmp	.L319	#
.L316:
	.loc 1 1990 0
	movq	-136(%rbp), %rax	# newdecl, tmp1047
	movzbl	18(%rax), %eax	# *newdecl_29(D), tmp1050
	shrb	$2, %al	#, D.21521
	andl	$1, %eax	#, D.21521
	movq	-144(%rbp), %rdx	# olddecl, tmp1051
	andl	$1, %eax	#, tmp1053
	leal	0(,%rax,4), %ecx	#, tmp1054
	movzbl	18(%rdx), %eax	#, tmp1055
	andl	$-5, %eax	#, tmp1056
	orl	%ecx, %eax	# tmp1054, tmp1057
	movb	%al, 18(%rdx)	# tmp1057,
	.loc 1 1991 0
	movq	-136(%rbp), %rax	# newdecl, tmp1058
	movzbl	18(%rax), %eax	# *newdecl_29(D), tmp1061
	shrb	$3, %al	#, D.21521
	andl	$1, %eax	#, D.21521
	movq	-144(%rbp), %rdx	# olddecl, tmp1062
	andl	$1, %eax	#, tmp1064
	leal	0(,%rax,8), %ecx	#, tmp1065
	movzbl	18(%rdx), %eax	#, tmp1066
	andl	$-9, %eax	#, tmp1067
	orl	%ecx, %eax	# tmp1065, tmp1068
	movb	%al, 18(%rdx)	# tmp1068,
.L319:
	.loc 1 1994 0
	movq	-136(%rbp), %rax	# newdecl, tmp1069
	movzbl	16(%rax), %eax	# newdecl_29(D)->common.code, D.21516
	cmpb	$30, %al	#, D.21516
	jne	.L320	#,
	.loc 1 2000 0
	cmpl	$0, -104(%rbp)	#, new_is_definition
	je	.L321	#,
	.loc 1 2000 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax	# olddecl, tmp1070
	movq	104(%rax), %rax	# olddecl_27(D)->decl.initial, D.21515
	testq	%rax, %rax	# D.21515
	je	.L321	#,
	movq	-144(%rbp), %rax	# olddecl, tmp1071
	movzbl	18(%rax), %eax	# *olddecl_27(D), D.21516
	andl	$1, %eax	#, D.21516
	testb	%al, %al	# D.21516
	je	.L321	#,
	.loc 1 2002 0 is_stmt 1
	movq	debug_hooks(%rip), %rax	# debug_hooks, debug_hooks.92
	movq	144(%rax), %rax	# debug_hooks.92_455->outlining_inline_function, D.21525
	movq	-144(%rbp), %rdx	# olddecl, tmp1072
	movq	%rdx, %rdi	# tmp1072,
	call	*%rax	# D.21525
	.loc 1 2005 0
	movq	-136(%rbp), %rax	# newdecl, tmp1073
	movzbl	49(%rax), %edx	#, tmp1076
	andl	$-9, %edx	#, tmp1077
	movb	%dl, 49(%rax)	# tmp1077,
	.loc 1 2006 0
	movq	-136(%rbp), %rax	# newdecl, tmp1078
	movzbl	52(%rax), %edx	#, tmp1081
	orl	$16, %edx	#, tmp1082
	movb	%dl, 52(%rax)	# tmp1082,
	jmp	.L322	#
.L321:
	.loc 1 2012 0
	movq	-136(%rbp), %rax	# newdecl, tmp1083
	movq	200(%rax), %rax	# newdecl_29(D)->decl.lang_specific, D.21518
	movzbl	(%rax), %eax	# *_457, D.21516
	andl	$1, %eax	#, D.21516
	testb	%al, %al	# D.21516
	jne	.L323	#,
	.loc 1 2013 0
	movq	-144(%rbp), %rax	# olddecl, tmp1084
	movq	200(%rax), %rax	# olddecl_27(D)->decl.lang_specific, D.21518
	movzbl	(%rax), %eax	# *_460, D.21516
	andl	$1, %eax	#, D.21516
	testb	%al, %al	# D.21516
	je	.L324	#,
.L323:
	.loc 1 2014 0
	movq	-136(%rbp), %rax	# newdecl, tmp1085
	movq	200(%rax), %rax	# newdecl_29(D)->decl.lang_specific, D.21518
	movzbl	(%rax), %edx	# _463->base.declared_inline, tmp1088
	orl	$1, %edx	#, tmp1089
	movb	%dl, (%rax)	# tmp1089, _463->base.declared_inline
.L324:
	.loc 1 2017 0
	movq	-136(%rbp), %rax	# newdecl, tmp1090
	movzbl	52(%rax), %eax	# *newdecl_29(D), D.21516
	andl	$16, %eax	#, D.21516
	testb	%al, %al	# D.21516
	jne	.L325	#,
	.loc 1 2017 0 is_stmt 0 discriminator 2
	movq	-144(%rbp), %rax	# olddecl, tmp1091
	movzbl	52(%rax), %eax	# *olddecl_27(D), D.21516
	andl	$16, %eax	#, D.21516
	testb	%al, %al	# D.21516
	je	.L326	#,
.L325:
	.loc 1 2017 0 discriminator 1
	movl	$1, %eax	#, iftmp.93
	jmp	.L327	#
.L326:
	.loc 1 2017 0 discriminator 3
	movl	$0, %eax	#, iftmp.93
.L327:
	.loc 1 2017 0 discriminator 4
	andl	$1, %eax	#, D.21521
	movl	%eax, %edx	# D.21521, D.21521
	movq	-144(%rbp), %rax	# olddecl, tmp1092
	andl	$1, %edx	#, tmp1094
	movl	%edx, %ecx	# tmp1094, tmp1095
	sall	$4, %ecx	#, tmp1095
	movzbl	52(%rax), %edx	#, tmp1096
	andl	$-17, %edx	#, tmp1097
	orl	%ecx, %edx	# tmp1095, tmp1098
	movb	%dl, 52(%rax)	# tmp1098,
	.loc 1 2016 0 is_stmt 1 discriminator 4
	movq	-144(%rbp), %rax	# olddecl, tmp1099
	movzbl	52(%rax), %eax	# *olddecl_27(D), tmp1102
	shrb	$4, %al	#, D.21521
	andl	$1, %eax	#, D.21521
	movq	-136(%rbp), %rdx	# newdecl, tmp1103
	andl	$1, %eax	#, tmp1105
	sall	$4, %eax	#, tmp1106
	movl	%eax, %ecx	# tmp1106, tmp1106
	movzbl	52(%rdx), %eax	#, tmp1107
	andl	$-17, %eax	#, tmp1108
	orl	%ecx, %eax	# tmp1106, tmp1109
	movb	%al, 52(%rdx)	# tmp1109,
.L322:
	.loc 1 2020 0
	movq	-144(%rbp), %rax	# olddecl, tmp1110
	movzbl	51(%rax), %eax	# *olddecl_27(D), D.21516
	andl	$96, %eax	#, D.21516
	testb	%al, %al	# D.21516
	je	.L328	#,
	.loc 1 2024 0
	cmpl	$0, -116(%rbp)	#, types_match
	je	.L329	#,
	.loc 1 2024 0 is_stmt 0 discriminator 1
	cmpl	$0, -104(%rbp)	#, new_is_definition
	je	.L330	#,
.L329:
	.loc 1 2026 0 is_stmt 1
	cmpl	$0, -148(%rbp)	#, different_binding_level
	jne	.L331	#,
	.loc 1 2028 0
	movq	-136(%rbp), %rax	# newdecl, tmp1111
	movq	8(%rax), %rdx	# newdecl_29(D)->common.type, D.21515
	movq	-144(%rbp), %rax	# olddecl, tmp1112
	movq	%rdx, 8(%rax)	# D.21515, olddecl_27(D)->common.type
	.loc 1 2029 0
	movq	-144(%rbp), %rax	# olddecl, tmp1113
	movzbl	51(%rax), %edx	#, tmp1116
	andl	$-97, %edx	#, tmp1117
	movb	%dl, 51(%rax)	# tmp1117,
	.loc 1 2026 0
	jmp	.L328	#
.L331:
	.loc 1 2026 0 is_stmt 0 discriminator 1
	jmp	.L328	#
.L330:
	.loc 1 2036 0 is_stmt 1
	movq	-144(%rbp), %rax	# olddecl, tmp1118
	movzbl	51(%rax), %eax	# *olddecl_27(D), tmp1121
	shrb	$5, %al	#, D.21526
	andl	$3, %eax	#, D.21526
	movq	-136(%rbp), %rdx	# newdecl, tmp1122
	andl	$3, %eax	#, tmp1124
	sall	$5, %eax	#, tmp1125
	movl	%eax, %ecx	# tmp1125, tmp1125
	movzbl	51(%rdx), %eax	#, tmp1126
	andl	$-97, %eax	#, tmp1127
	orl	%ecx, %eax	# tmp1125, tmp1128
	movb	%al, 51(%rdx)	# tmp1128,
	.loc 1 2037 0
	movq	-144(%rbp), %rax	# olddecl, tmp1129
	movl	56(%rax), %edx	# olddecl_27(D)->decl.u1.f, D.21527
	movq	-136(%rbp), %rax	# newdecl, tmp1130
	movl	%edx, 56(%rax)	# D.21527, newdecl_29(D)->decl.u1.f
.L328:
	.loc 1 2042 0
	cmpl	$0, -104(%rbp)	#, new_is_definition
	jne	.L332	#,
	.loc 1 2044 0
	movq	-144(%rbp), %rax	# olddecl, tmp1131
	movq	96(%rax), %rdx	# olddecl_27(D)->decl.result, D.21515
	movq	-136(%rbp), %rax	# newdecl, tmp1132
	movq	%rdx, 96(%rax)	# D.21515, newdecl_29(D)->decl.result
	.loc 1 2048 0
	cmpl	$0, -148(%rbp)	#, different_binding_level
	jne	.L333	#,
	.loc 1 2049 0
	movq	-144(%rbp), %rax	# olddecl, tmp1133
	movq	104(%rax), %rdx	# olddecl_27(D)->decl.initial, D.21515
	movq	-136(%rbp), %rax	# newdecl, tmp1134
	movq	%rdx, 104(%rax)	# D.21515, newdecl_29(D)->decl.initial
.L333:
	.loc 1 2050 0
	movq	-144(%rbp), %rax	# olddecl, tmp1135
	movq	160(%rax), %rdx	# olddecl_27(D)->decl.u2.f, D.21528
	movq	-136(%rbp), %rax	# newdecl, tmp1136
	movq	%rdx, 160(%rax)	# D.21528, newdecl_29(D)->decl.u2.f
	.loc 1 2051 0
	movq	-144(%rbp), %rax	# olddecl, tmp1137
	movq	168(%rax), %rdx	# olddecl_27(D)->decl.saved_tree, D.21515
	movq	-136(%rbp), %rax	# newdecl, tmp1138
	movq	%rdx, 168(%rax)	# D.21515, newdecl_29(D)->decl.saved_tree
	.loc 1 2052 0
	movq	-144(%rbp), %rax	# olddecl, tmp1139
	movq	56(%rax), %rdx	# olddecl_27(D)->decl.u1.i, D.21529
	movq	-136(%rbp), %rax	# newdecl, tmp1140
	movq	%rdx, 56(%rax)	# D.21529, newdecl_29(D)->decl.u1.i
	.loc 1 2053 0
	movq	-144(%rbp), %rax	# olddecl, tmp1141
	movq	88(%rax), %rdx	# olddecl_27(D)->decl.arguments, D.21515
	movq	-136(%rbp), %rax	# newdecl, tmp1142
	movq	%rdx, 88(%rax)	# D.21515, newdecl_29(D)->decl.arguments
	.loc 1 2057 0
	movq	-144(%rbp), %rax	# olddecl, tmp1143
	movzbl	49(%rax), %eax	# *olddecl_27(D), D.21516
	andl	$8, %eax	#, D.21516
	testb	%al, %al	# D.21516
	je	.L320	#,
	.loc 1 2057 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# newdecl, tmp1144
	movzbl	52(%rax), %eax	# *newdecl_29(D), D.21516
	andl	$16, %eax	#, D.21516
	testb	%al, %al	# D.21516
	jne	.L320	#,
	.loc 1 2059 0 is_stmt 1
	movq	-136(%rbp), %rax	# newdecl, tmp1145
	movzbl	49(%rax), %edx	#, tmp1148
	orl	$8, %edx	#, tmp1149
	movb	%dl, 49(%rax)	# tmp1149,
	.loc 1 2063 0
	cmpl	$0, -148(%rbp)	#, different_binding_level
	je	.L335	#,
	.loc 1 2062 0
	movq	-144(%rbp), %rax	# olddecl, tmp1150
	movq	112(%rax), %rax	# olddecl_27(D)->decl.abstract_origin, D.21515
	testq	%rax, %rax	# D.21515
	je	.L336	#,
	.loc 1 2062 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax	# olddecl, tmp1151
	movq	112(%rax), %rax	# olddecl_27(D)->decl.abstract_origin, iftmp.95
	jmp	.L338	#
.L336:
	.loc 1 2062 0 discriminator 2
	movq	-144(%rbp), %rax	# olddecl, iftmp.95
	jmp	.L338	#
.L335:
	.loc 1 2063 0 is_stmt 1 discriminator 1
	movq	-144(%rbp), %rax	# olddecl, tmp1152
	movq	112(%rax), %rax	# olddecl_27(D)->decl.abstract_origin, iftmp.94
.L338:
	.loc 1 2061 0
	movq	-136(%rbp), %rdx	# newdecl, tmp1153
	movq	%rax, 112(%rdx)	# iftmp.94, newdecl_29(D)->decl.abstract_origin
	jmp	.L320	#
.L332:
	.loc 1 2070 0
	movq	-136(%rbp), %rax	# newdecl, tmp1154
	movq	200(%rax), %rax	# newdecl_29(D)->decl.lang_specific, D.21518
	movzbl	(%rax), %eax	# *_493, D.21516
	andl	$1, %eax	#, D.21516
	testb	%al, %al	# D.21516
	je	.L320	#,
	.loc 1 2071 0
	movq	-136(%rbp), %rax	# newdecl, tmp1155
	movzbl	52(%rax), %eax	# *newdecl_29(D), D.21516
	andl	$16, %eax	#, D.21516
	testb	%al, %al	# D.21516
	jne	.L320	#,
	.loc 1 2072 0
	movq	-136(%rbp), %rax	# newdecl, tmp1156
	movzbl	49(%rax), %edx	#, tmp1159
	orl	$8, %edx	#, tmp1160
	movb	%dl, 49(%rax)	# tmp1160,
.L320:
	.loc 1 2075 0
	cmpl	$0, -148(%rbp)	#, different_binding_level
	je	.L339	#,
	.loc 1 2076 0
	movl	$0, %eax	#, D.21514
	jmp	.L229	#
.L339:
.LBB15:
	.loc 1 2081 0
	movq	-144(%rbp), %rax	# olddecl, tmp1161
	movl	36(%rax), %eax	# olddecl_27(D)->decl.uid, tmp1162
	movl	%eax, -100(%rbp)	# tmp1162, olddecl_uid
	.loc 1 2084 0
	movq	-136(%rbp), %rax	# newdecl, tmp1163
	leaq	24(%rax), %rcx	#, D.21530
	.loc 1 2083 0
	movq	-144(%rbp), %rax	# olddecl, tmp1164
	addq	$24, %rax	#, D.21530
	movl	$184, %edx	#,
	movq	%rcx, %rsi	# D.21530,
	movq	%rax, %rdi	# D.21530,
	call	memcpy	#
	.loc 1 2086 0
	movq	-144(%rbp), %rax	# olddecl, tmp1165
	movl	-100(%rbp), %edx	# olddecl_uid, tmp1166
	movl	%edx, 36(%rax)	# tmp1166, olddecl_27(D)->decl.uid
.LBE15:
	.loc 1 2091 0
	movq	-136(%rbp), %rax	# newdecl, tmp1167
	movq	136(%rax), %rdx	# newdecl_29(D)->decl.attributes, D.21515
	movq	-144(%rbp), %rax	# olddecl, tmp1168
	movq	%rdx, 136(%rax)	# D.21515, olddecl_27(D)->decl.attributes
	.loc 1 2093 0
	movl	$1, %eax	#, D.21514
.L229:
	.loc 1 2094 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	duplicate_decls, .-duplicate_decls
	.section	.rodata
	.align 8
.LC168:
	.string	"declaration of `%s' shadows a parameter"
	.align 8
.LC169:
	.string	"declaration of `%s' shadows a symbol from the parameter list"
.LC170:
	.string	"a parameter"
.LC171:
	.string	"a previous local"
.LC172:
	.string	"a global declaration"
	.text
	.type	warn_if_shadowing, @function
warn_if_shadowing:
.LFB20:
	.loc 1 2102 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	movq	%rsi, -32(%rbp)	# oldlocal, oldlocal
	.loc 1 2105 0
	movq	-24(%rbp), %rax	# x, tmp86
	movzbl	49(%rax), %eax	# *x_1(D), D.21563
	andl	$1, %eax	#, D.21563
	testb	%al, %al	# D.21563
	je	.L342	#,
	.loc 1 2106 0
	jmp	.L341	#
.L342:
	.loc 1 2108 0
	movq	-24(%rbp), %rax	# x, tmp87
	movq	72(%rax), %rax	# x_1(D)->decl.name, tmp88
	movq	%rax, -8(%rbp)	# tmp88, name
	.loc 1 2111 0
	cmpq	$0, -32(%rbp)	#, oldlocal
	je	.L344	#,
	.loc 1 2113 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.96
	movzbl	48(%rax), %eax	# current_binding_level.96_6->parm_flag, D.21564
	testb	%al, %al	# D.21564
	jne	.L344	#,
	.loc 1 2115 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.97
	movq	40(%rax), %rax	# current_binding_level.97_8->level_chain, D.21565
	movzbl	48(%rax), %eax	# _9->parm_flag, D.21564
	testb	%al, %al	# D.21564
	je	.L344	#,
	.loc 1 2118 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.98
	movq	40(%rax), %rax	# current_binding_level.98_11->level_chain, D.21565
	movq	(%rax), %rdx	# _12->names, D.21566
	movq	-32(%rbp), %rax	# oldlocal, tmp89
	movq	%rdx, %rsi	# D.21566,
	movq	%rax, %rdi	# tmp89,
	call	chain_member	#
	testl	%eax, %eax	# D.21567
	je	.L344	#,
	.loc 1 2120 0
	movq	-32(%rbp), %rax	# oldlocal, tmp90
	movzbl	16(%rax), %eax	# oldlocal_5(D)->common.code, D.21563
	cmpb	$35, %al	#, D.21563
	jne	.L345	#,
	.loc 1 2122 0
	movq	-8(%rbp), %rax	# name, tmp91
	movq	32(%rax), %rax	# name_4->identifier.id.str, D.21568
	.loc 1 2121 0
	movq	%rax, %rsi	# D.21568,
	movl	$.LC168, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
	.loc 1 2120 0
	jmp	.L341	#
.L345:
	.loc 1 2125 0
	movq	-8(%rbp), %rax	# name, tmp92
	movq	32(%rax), %rax	# name_4->identifier.id.str, D.21568
	.loc 1 2124 0
	movq	%rax, %rsi	# D.21568,
	movl	$.LC169, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
	.loc 1 2120 0
	jmp	.L341	#
.L344:
	.loc 1 2128 0
	movl	warn_shadow(%rip), %eax	# warn_shadow, warn_shadow.99
	testl	%eax, %eax	# warn_shadow.99
	je	.L341	#,
	.loc 1 2130 0
	movq	-24(%rbp), %rax	# x, tmp93
	movl	32(%rax), %eax	# x_1(D)->decl.linenum, D.21567
	testl	%eax, %eax	# D.21567
	je	.L341	#,
	.loc 1 2132 0
	movq	-24(%rbp), %rax	# x, tmp94
	movq	112(%rax), %rax	# x_1(D)->decl.abstract_origin, D.21566
	testq	%rax, %rax	# D.21566
	je	.L347	#,
	.loc 1 2132 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# x, tmp95
	movq	112(%rax), %rax	# x_1(D)->decl.abstract_origin, D.21566
	cmpq	-24(%rbp), %rax	# x, D.21566
	jne	.L341	#,
.L347:
	.loc 1 2134 0 is_stmt 1
	movq	-24(%rbp), %rax	# x, tmp96
	movzbl	16(%rax), %eax	# x_1(D)->common.code, D.21563
	cmpb	$35, %al	#, D.21563
	jne	.L348	#,
	.loc 1 2135 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.100
	movq	40(%rax), %rax	# current_binding_level.100_23->level_chain, D.21565
	movzbl	48(%rax), %eax	# _24->parm_flag, D.21564
	testb	%al, %al	# D.21564
	je	.L348	#,
	.loc 1 2135 0 is_stmt 0 discriminator 1
	jmp	.L341	#
.L348:
	.loc 1 2142 0 is_stmt 1
	cmpq	$0, -32(%rbp)	#, oldlocal
	je	.L349	#,
	.loc 1 2144 0
	movq	-32(%rbp), %rax	# oldlocal, tmp97
	movzbl	16(%rax), %eax	# oldlocal_5(D)->common.code, D.21563
	cmpb	$35, %al	#, D.21563
	jne	.L350	#,
	.loc 1 2145 0
	movq	-32(%rbp), %rdx	# oldlocal, tmp98
	movq	-8(%rbp), %rax	# name, tmp99
	movq	%rax, %rsi	# tmp99,
	movl	$.LC170, %edi	#,
	call	shadow_warning	#
	jmp	.L341	#
.L350:
	.loc 1 2147 0
	movq	-32(%rbp), %rdx	# oldlocal, tmp100
	movq	-8(%rbp), %rax	# name, tmp101
	movq	%rax, %rsi	# tmp101,
	movl	$.LC171, %edi	#,
	call	shadow_warning	#
	jmp	.L341	#
.L349:
	.loc 1 2149 0
	movq	-8(%rbp), %rax	# name, tmp102
	movq	56(%rax), %rax	# MEM[(struct lang_identifier *)name_4].global_value, D.21566
	testq	%rax, %rax	# D.21566
	je	.L341	#,
	.loc 1 2150 0
	movq	-8(%rbp), %rax	# name, tmp103
	movq	56(%rax), %rdx	# MEM[(struct lang_identifier *)name_4].global_value, D.21566
	movq	global_trees(%rip), %rax	# global_trees, D.21566
	cmpq	%rax, %rdx	# D.21566, D.21566
	je	.L341	#,
	.loc 1 2151 0
	movq	-8(%rbp), %rax	# name, tmp104
	movq	56(%rax), %rdx	# MEM[(struct lang_identifier *)name_4].global_value, D.21566
	movq	-8(%rbp), %rax	# name, tmp105
	movq	%rax, %rsi	# tmp105,
	movl	$.LC172, %edi	#,
	call	shadow_warning	#
.L341:
	.loc 1 2154 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	warn_if_shadowing, .-warn_if_shadowing
	.section	.rodata
	.align 8
.LC173:
	.string	"nested extern declaration of `%s'"
	.align 8
.LC174:
	.string	"`%s' used prior to declaration"
	.align 8
.LC175:
	.string	"`%s' was declared implicitly `extern' and later `static'"
	.align 8
.LC176:
	.string	"type mismatch with previous external decl"
	.align 8
.LC177:
	.string	"previous external decl of `%s'"
	.align 8
.LC178:
	.string	"type mismatch with previous implicit declaration"
	.align 8
.LC179:
	.string	"previous implicit declaration of `%s'"
	.align 8
.LC180:
	.string	"type of external `%s' is not global"
	.align 8
.LC181:
	.string	"`%s' was previously implicitly declared to return `int'"
	.align 8
.LC182:
	.string	"`%s' was declared `extern' and later `static'"
	.align 8
.LC183:
	.string	"extern declaration of `%s' doesn't match global one"
	.text
	.globl	pushdecl
	.type	pushdecl, @function
pushdecl:
.LFB21:
	.loc 1 2167 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -88(%rbp)	# x, x
	.loc 1 2169 0
	movq	-88(%rbp), %rax	# x, tmp234
	movq	72(%rax), %rax	# x_12(D)->decl.name, tmp235
	movq	%rax, -32(%rbp)	# tmp235, name
	.loc 1 2170 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, tmp236
	movq	%rax, -64(%rbp)	# tmp236, b
	.loc 1 2173 0
	movq	-88(%rbp), %rax	# x, tmp237
	movzbl	16(%rax), %eax	# x_12(D)->common.code, D.21575
	cmpb	$30, %al	#, D.21575
	jne	.L353	#,
	.loc 1 2173 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# x, tmp238
	movq	200(%rax), %rax	# x_12(D)->decl.lang_specific, D.21576
	testq	%rax, %rax	# D.21576
	jne	.L353	#,
	.loc 1 2175 0 is_stmt 1
	movl	$16, %edi	#,
	call	ggc_alloc_cleared	#
	.loc 1 2174 0
	movq	-88(%rbp), %rdx	# x, tmp239
	movq	%rax, 200(%rdx)	# D.21577, x_12(D)->decl.lang_specific
.L353:
	.loc 1 2177 0
	movq	current_function_decl(%rip), %rdx	# current_function_decl, current_function_decl.101
	movq	-88(%rbp), %rax	# x, tmp240
	movq	%rdx, 80(%rax)	# current_function_decl.101, x_12(D)->decl.context
	.loc 1 2181 0
	movq	-88(%rbp), %rax	# x, tmp241
	movzbl	16(%rax), %eax	# x_12(D)->common.code, D.21575
	cmpb	$30, %al	#, D.21575
	je	.L354	#,
	.loc 1 2181 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# x, tmp242
	movzbl	16(%rax), %eax	# x_12(D)->common.code, D.21575
	cmpb	$34, %al	#, D.21575
	jne	.L355	#,
.L354:
	.loc 1 2182 0 is_stmt 1
	movq	-88(%rbp), %rax	# x, tmp243
	movq	104(%rax), %rax	# x_12(D)->decl.initial, D.21578
	testq	%rax, %rax	# D.21578
	jne	.L355	#,
	.loc 1 2182 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# x, tmp244
	movzbl	49(%rax), %eax	# *x_12(D), D.21575
	andl	$1, %eax	#, D.21575
	testb	%al, %al	# D.21575
	je	.L355	#,
	.loc 1 2183 0 is_stmt 1
	movq	-88(%rbp), %rax	# x, tmp245
	movq	$0, 80(%rax)	#, x_12(D)->decl.context
.L355:
	.loc 1 2185 0
	cmpq	$0, -32(%rbp)	#, name
	je	.L356	#,
.LBB16:
	.loc 1 2187 0
	movl	$0, -76(%rbp)	#, different_binding_level
	.loc 1 2189 0
	movl	warn_nested_externs(%rip), %eax	# warn_nested_externs, warn_nested_externs.102
	testl	%eax, %eax	# warn_nested_externs.102
	je	.L357	#,
	.loc 1 2190 0
	movq	-88(%rbp), %rax	# x, tmp246
	movzbl	49(%rax), %eax	# *x_12(D), D.21575
	andl	$1, %eax	#, D.21575
	testb	%al, %al	# D.21575
	je	.L357	#,
	.loc 1 2191 0
	movq	global_binding_level(%rip), %rax	# global_binding_level, global_binding_level.103
	cmpq	%rax, -64(%rbp)	# global_binding_level.103, b
	je	.L357	#,
	.loc 1 2192 0
	movq	-32(%rbp), %rax	# name, tmp247
	movq	80(%rax), %rax	# MEM[(struct lang_identifier *)name_13].implicit_decl, D.21578
	cmpq	-88(%rbp), %rax	# x, D.21578
	je	.L357	#,
	.loc 1 2194 0
	movq	-88(%rbp), %rax	# x, tmp248
	movzbl	50(%rax), %eax	# *x_12(D), D.21575
	andl	$1, %eax	#, D.21575
	testb	%al, %al	# D.21575
	jne	.L357	#,
	.loc 1 2196 0
	movq	-32(%rbp), %rax	# name, tmp249
	movq	32(%rax), %rax	# name_13->identifier.id.str, D.21579
	.loc 1 2195 0
	movq	%rax, %rsi	# D.21579,
	movl	$.LC173, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L357:
	.loc 1 2198 0
	movq	-32(%rbp), %rax	# name, tmp250
	movq	%rax, %rdi	# tmp250,
	call	lookup_name_current_level	#
	movq	%rax, -72(%rbp)	# tmp251, t
	.loc 1 2202 0
	cmpq	$0, -72(%rbp)	#, t
	jne	.L358	#,
	.loc 1 2202 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# x, tmp252
	movzbl	49(%rax), %eax	# *x_12(D), D.21575
	andl	$1, %eax	#, D.21575
	testb	%al, %al	# D.21575
	je	.L358	#,
	movq	-88(%rbp), %rax	# x, tmp253
	movzbl	18(%rax), %eax	# *x_12(D), D.21575
	andl	$8, %eax	#, D.21575
	testb	%al, %al	# D.21575
	je	.L358	#,
	movl	flag_traditional(%rip), %eax	# flag_traditional, flag_traditional.104
	testl	%eax, %eax	# flag_traditional.104
	jne	.L358	#,
	.loc 1 2204 0 is_stmt 1
	movq	-32(%rbp), %rax	# name, tmp254
	movq	56(%rax), %rax	# MEM[(struct lang_identifier *)name_13].global_value, tmp255
	movq	%rax, -72(%rbp)	# tmp255, t
	.loc 1 2207 0
	cmpq	$0, -72(%rbp)	#, t
	je	.L359	#,
	.loc 1 2207 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# t, tmp256
	movzbl	16(%rax), %eax	# t_39->common.code, D.21575
	cmpb	$33, %al	#, D.21575
	jne	.L360	#,
.L359:
	.loc 1 2210 0 is_stmt 1
	movq	-32(%rbp), %rax	# name, tmp257
	movq	96(%rax), %rax	# MEM[(struct lang_identifier *)name_13].limbo_value, tmp258
	movq	%rax, -72(%rbp)	# tmp258, t
.L360:
	.loc 1 2211 0
	movl	$1, -76(%rbp)	#, different_binding_level
.L358:
	.loc 1 2213 0
	cmpq	$0, -72(%rbp)	#, t
	je	.L361	#,
	.loc 1 2213 0 is_stmt 0 discriminator 1
	movq	global_trees(%rip), %rax	# global_trees, D.21578
	cmpq	-72(%rbp), %rax	# t, D.21578
	jne	.L361	#,
	.loc 1 2216 0 is_stmt 1
	movq	$0, -72(%rbp)	#, t
	.loc 1 2217 0
	movq	-88(%rbp), %rax	# x, tmp259
	movl	$.LC174, %esi	#,
	movq	%rax, %rdi	# tmp259,
	movl	$0, %eax	#,
	call	error_with_decl	#
.L361:
	.loc 1 2223 0
	movl	flag_traditional(%rip), %eax	# flag_traditional, flag_traditional.105
	testl	%eax, %eax	# flag_traditional.105
	jne	.L362	#,
	.loc 1 2223 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# name, tmp260
	movzbl	18(%rax), %eax	# *name_13, D.21575
	andl	$8, %eax	#, D.21575
	testb	%al, %al	# D.21575
	je	.L362	#,
	.loc 1 2226 0 is_stmt 1
	movq	-88(%rbp), %rax	# x, tmp261
	movzbl	18(%rax), %eax	# *x_12(D), D.21575
	andl	$8, %eax	#, D.21575
	testb	%al, %al	# D.21575
	jne	.L362	#,
	.loc 1 2227 0
	movq	-88(%rbp), %rax	# x, tmp262
	movzbl	16(%rax), %eax	# x_12(D)->common.code, D.21575
	cmpb	$30, %al	#, D.21575
	je	.L363	#,
	.loc 1 2227 0 is_stmt 0 discriminator 1
	movq	global_binding_level(%rip), %rax	# global_binding_level, global_binding_level.106
	cmpq	%rax, -64(%rbp)	# global_binding_level.106, b
	jne	.L362	#,
.L363:
	.loc 1 2230 0 is_stmt 1
	movq	-32(%rbp), %rax	# name, tmp263
	movq	80(%rax), %rax	# MEM[(struct lang_identifier *)name_13].implicit_decl, D.21578
	testq	%rax, %rax	# D.21578
	je	.L362	#,
	.loc 1 2233 0
	movq	-32(%rbp), %rax	# name, tmp264
	movq	32(%rax), %rax	# name_13->identifier.id.str, D.21579
	.loc 1 2232 0
	movq	%rax, %rsi	# D.21579,
	movl	$.LC175, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
	.loc 1 2238 0
	movq	-32(%rbp), %rax	# name, tmp265
	movq	32(%rax), %rdx	# name_13->identifier.id.str, D.21579
	.loc 1 2236 0
	movq	-32(%rbp), %rax	# name, tmp266
	movq	80(%rax), %rax	# MEM[(struct lang_identifier *)name_13].implicit_decl, D.21578
	.loc 1 2235 0
	movl	32(%rax), %esi	# _55->decl.linenum, D.21580
	movq	-32(%rbp), %rax	# name, tmp267
	movq	80(%rax), %rax	# MEM[(struct lang_identifier *)name_13].implicit_decl, D.21578
	movq	24(%rax), %rax	# _57->decl.filename, D.21581
	movq	%rdx, %rcx	# D.21579,
	movl	$.LC146, %edx	#,
	movq	%rax, %rdi	# D.21581,
	movl	$0, %eax	#,
	call	pedwarn_with_file_and_line	#
	.loc 1 2239 0
	movq	-32(%rbp), %rax	# name, tmp268
	movzbl	17(%rax), %edx	#, tmp271
	orl	$8, %edx	#, tmp272
	movb	%dl, 17(%rax)	# tmp272,
.L362:
	.loc 1 2242 0
	cmpq	$0, -72(%rbp)	#, t
	je	.L364	#,
	.loc 1 2242 0 is_stmt 0 discriminator 1
	movl	-76(%rbp), %edx	# different_binding_level, tmp273
	movq	-72(%rbp), %rcx	# t, tmp274
	movq	-88(%rbp), %rax	# x, tmp275
	movq	%rcx, %rsi	# tmp274,
	movq	%rax, %rdi	# tmp275,
	call	duplicate_decls	#
	testl	%eax, %eax	# D.21580
	je	.L364	#,
	.loc 1 2244 0 is_stmt 1
	movq	-72(%rbp), %rax	# t, tmp276
	movzbl	16(%rax), %eax	# t_3->common.code, D.21575
	cmpb	$35, %al	#, D.21575
	jne	.L365	#,
	.loc 1 2248 0
	movq	-88(%rbp), %rax	# x, tmp277
	movzbl	17(%rax), %eax	# *x_12(D), tmp280
	shrb	$6, %al	#, D.21582
	andl	$1, %eax	#, D.21582
	movq	-72(%rbp), %rdx	# t, tmp281
	andl	$1, %eax	#, tmp283
	sall	$6, %eax	#, tmp284
	movl	%eax, %ecx	# tmp284, tmp284
	movzbl	17(%rdx), %eax	#, tmp285
	andl	$-65, %eax	#, tmp286
	orl	%ecx, %eax	# tmp284, tmp287
	movb	%al, 17(%rdx)	# tmp287,
	.loc 1 2249 0
	movq	-72(%rbp), %rax	# t, D.21574
	jmp	.L366	#
.L365:
	.loc 1 2251 0
	movq	-72(%rbp), %rax	# t, D.21574
	jmp	.L366	#
.L364:
	.loc 1 2297 0
	movq	-88(%rbp), %rax	# x, tmp288
	movzbl	16(%rax), %eax	# x_12(D)->common.code, D.21575
	cmpb	$33, %al	#, D.21575
	jne	.L367	#,
	.loc 1 2299 0
	movq	-88(%rbp), %rax	# x, tmp289
	movl	32(%rax), %eax	# x_12(D)->decl.linenum, D.21580
	testl	%eax, %eax	# D.21580
	jne	.L368	#,
	.loc 1 2301 0
	movq	-88(%rbp), %rax	# x, tmp290
	movq	8(%rax), %rax	# x_12(D)->common.type, D.21578
	movq	96(%rax), %rax	# _66->type.name, D.21578
	testq	%rax, %rax	# D.21578
	jne	.L367	#,
	.loc 1 2302 0
	movq	-88(%rbp), %rax	# x, tmp291
	movq	8(%rax), %rax	# x_12(D)->common.type, D.21578
	movq	-88(%rbp), %rdx	# x, tmp292
	movq	%rdx, 96(%rax)	# tmp292, _68->type.name
	jmp	.L367	#
.L368:
	.loc 1 2304 0
	movq	-88(%rbp), %rax	# x, tmp293
	movq	8(%rax), %rdx	# x_12(D)->common.type, D.21578
	movq	global_trees(%rip), %rax	# global_trees, D.21578
	cmpq	%rax, %rdx	# D.21578, D.21578
	je	.L367	#,
	.loc 1 2305 0
	movq	-88(%rbp), %rax	# x, tmp294
	movq	96(%rax), %rax	# x_12(D)->decl.result, D.21578
	testq	%rax, %rax	# D.21578
	jne	.L367	#,
.LBB17:
	.loc 1 2307 0
	movq	-88(%rbp), %rax	# x, tmp295
	movq	8(%rax), %rax	# x_12(D)->common.type, tmp296
	movq	%rax, -24(%rbp)	# tmp296, tt
	.loc 1 2308 0
	movq	-88(%rbp), %rax	# x, tmp297
	movq	-24(%rbp), %rdx	# tt, tmp298
	movq	%rdx, 96(%rax)	# tmp298, x_12(D)->decl.result
	.loc 1 2309 0
	movq	-24(%rbp), %rax	# tt, tmp299
	movq	%rax, %rdi	# tmp299,
	call	build_type_copy	#
	movq	%rax, -24(%rbp)	# tmp300, tt
	.loc 1 2310 0
	movq	-24(%rbp), %rax	# tt, tmp301
	movq	-88(%rbp), %rdx	# x, tmp302
	movq	%rdx, 96(%rax)	# tmp302, tt_73->type.name
	.loc 1 2311 0
	movq	-88(%rbp), %rax	# x, tmp303
	movzbl	18(%rax), %eax	# *x_12(D), tmp306
	andl	$1, %eax	#, D.21582
	movl	%eax, %edx	# D.21582, D.21582
	movq	-24(%rbp), %rax	# tt, tmp307
	movl	%edx, %ecx	# D.21582, tmp309
	andl	$1, %ecx	#, tmp309
	movzbl	18(%rax), %edx	#, tmp310
	andl	$-2, %edx	#, tmp311
	orl	%ecx, %edx	# tmp309, tmp312
	movb	%dl, 18(%rax)	# tmp312,
	.loc 1 2312 0
	movq	-88(%rbp), %rax	# x, tmp313
	movq	-24(%rbp), %rdx	# tt, tmp314
	movq	%rdx, 8(%rax)	# tmp314, x_12(D)->common.type
.L367:
.LBE17:
	.loc 1 2322 0
	movq	-88(%rbp), %rax	# x, tmp315
	movzbl	18(%rax), %eax	# *x_12(D), D.21575
	andl	$8, %eax	#, D.21575
	testb	%al, %al	# D.21575
	je	.L370	#,
	.loc 1 2323 0
	movq	-88(%rbp), %rax	# x, tmp316
	movzbl	16(%rax), %eax	# x_12(D)->common.code, D.21575
	cmpb	$30, %al	#, D.21575
	jne	.L371	#,
	.loc 1 2323 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# x, tmp317
	movzbl	49(%rax), %eax	# *x_12(D), D.21575
	andl	$8, %eax	#, D.21575
	testb	%al, %al	# D.21575
	jne	.L370	#,
.L371:
.LBB18:
	.loc 1 2327 0 is_stmt 1
	movl	flag_traditional(%rip), %eax	# flag_traditional, flag_traditional.107
	testl	%eax, %eax	# flag_traditional.107
	je	.L372	#,
	.loc 1 2327 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# name, tmp318
	movq	56(%rax), %rax	# MEM[(struct lang_identifier *)name_13].global_value, D.21578
	testq	%rax, %rax	# D.21578
	je	.L372	#,
	.loc 1 2328 0 is_stmt 1
	movq	-32(%rbp), %rax	# name, tmp319
	movq	56(%rax), %rax	# MEM[(struct lang_identifier *)name_13].global_value, D.21578
	movzbl	49(%rax), %eax	# *_82, D.21575
	andl	$1, %eax	#, D.21575
	testb	%al, %al	# D.21575
	jne	.L373	#,
	.loc 1 2329 0
	movq	-32(%rbp), %rax	# name, tmp320
	movq	56(%rax), %rax	# MEM[(struct lang_identifier *)name_13].global_value, D.21578
	movzbl	18(%rax), %eax	# *_85, D.21575
	andl	$8, %eax	#, D.21575
	testb	%al, %al	# D.21575
	je	.L372	#,
.L373:
	.loc 1 2330 0
	movq	-32(%rbp), %rax	# name, tmp321
	movq	56(%rax), %rax	# MEM[(struct lang_identifier *)name_13].global_value, tmp322
	movq	%rax, -56(%rbp)	# tmp322, decl
	jmp	.L374	#
.L372:
	.loc 1 2331 0
	movq	-32(%rbp), %rax	# name, tmp323
	movq	96(%rax), %rax	# MEM[(struct lang_identifier *)name_13].limbo_value, D.21578
	testq	%rax, %rax	# D.21578
	je	.L375	#,
	.loc 1 2333 0
	movq	-32(%rbp), %rax	# name, tmp324
	movq	96(%rax), %rax	# MEM[(struct lang_identifier *)name_13].limbo_value, tmp325
	movq	%rax, -56(%rbp)	# tmp325, decl
	jmp	.L374	#
.L375:
	.loc 1 2335 0
	movq	$0, -56(%rbp)	#, decl
.L374:
	.loc 1 2337 0
	cmpq	$0, -56(%rbp)	#, decl
	je	.L370	#,
	.loc 1 2337 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# decl, tmp326
	movq	8(%rax), %rdx	# decl_7->common.type, D.21578
	movq	-88(%rbp), %rax	# x, tmp327
	movq	8(%rax), %rax	# x_12(D)->common.type, D.21578
	movq	%rdx, %rsi	# D.21578,
	movq	%rax, %rdi	# D.21578,
	call	comptypes	#
	testl	%eax, %eax	# D.21580
	jne	.L370	#,
	.loc 1 2339 0 is_stmt 1
	movq	-56(%rbp), %rax	# decl, tmp328
	movzbl	51(%rax), %eax	# *decl_7, D.21575
	andl	$96, %eax	#, D.21575
	testb	%al, %al	# D.21575
	jne	.L370	#,
	.loc 1 2341 0
	movq	-88(%rbp), %rax	# x, tmp329
	movl	$.LC176, %esi	#,
	movq	%rax, %rdi	# tmp329,
	movl	$0, %eax	#,
	call	pedwarn_with_decl	#
	.loc 1 2343 0
	movq	-56(%rbp), %rax	# decl, tmp330
	movl	$.LC177, %esi	#,
	movq	%rax, %rdi	# tmp330,
	movl	$0, %eax	#,
	call	pedwarn_with_decl	#
.L370:
.LBE18:
	.loc 1 2350 0
	movq	-32(%rbp), %rax	# name, tmp331
	movq	80(%rax), %rax	# MEM[(struct lang_identifier *)name_13].implicit_decl, D.21578
	testq	%rax, %rax	# D.21578
	je	.L376	#,
	.loc 1 2351 0
	movq	-32(%rbp), %rax	# name, tmp332
	movq	56(%rax), %rax	# MEM[(struct lang_identifier *)name_13].global_value, D.21578
	testq	%rax, %rax	# D.21578
	jne	.L376	#,
	.loc 1 2352 0
	movq	-88(%rbp), %rax	# x, tmp333
	movzbl	16(%rax), %eax	# x_12(D)->common.code, D.21575
	cmpb	$30, %al	#, D.21575
	jne	.L376	#,
	.loc 1 2354 0
	movq	-32(%rbp), %rax	# name, tmp334
	movq	80(%rax), %rax	# MEM[(struct lang_identifier *)name_13].implicit_decl, D.21578
	.loc 1 2353 0
	movq	8(%rax), %rdx	# _100->common.type, D.21578
	movq	-88(%rbp), %rax	# x, tmp335
	movq	8(%rax), %rax	# x_12(D)->common.type, D.21578
	movq	%rdx, %rsi	# D.21578,
	movq	%rax, %rdi	# D.21578,
	call	comptypes	#
	testl	%eax, %eax	# D.21580
	jne	.L376	#,
	.loc 1 2356 0
	movq	-88(%rbp), %rax	# x, tmp336
	movl	$.LC178, %esi	#,
	movq	%rax, %rdi	# tmp336,
	movl	$0, %eax	#,
	call	warning_with_decl	#
	.loc 1 2357 0
	movq	-32(%rbp), %rax	# name, tmp337
	movq	80(%rax), %rax	# MEM[(struct lang_identifier *)name_13].implicit_decl, D.21578
	movl	$.LC179, %esi	#,
	movq	%rax, %rdi	# D.21578,
	movl	$0, %eax	#,
	call	warning_with_decl	#
.L376:
	.loc 1 2363 0
	movl	flag_traditional(%rip), %eax	# flag_traditional, flag_traditional.108
	testl	%eax, %eax	# flag_traditional.108
	je	.L377	#,
	.loc 1 2363 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# x, tmp338
	movzbl	49(%rax), %eax	# *x_12(D), D.21575
	andl	$1, %eax	#, D.21575
	testb	%al, %al	# D.21575
	je	.L377	#,
	.loc 1 2364 0 is_stmt 1
	movq	-32(%rbp), %rax	# name, tmp339
	movq	%rax, %rdi	# tmp339,
	call	lookup_name	#
	testq	%rax, %rax	# D.21578
	jne	.L377	#,
.LBB19:
	.loc 1 2366 0
	movq	-88(%rbp), %rax	# x, tmp340
	movq	8(%rax), %rax	# x_12(D)->common.type, tmp341
	movq	%rax, -48(%rbp)	# tmp341, type
	.loc 1 2369 0
	jmp	.L378	#
.L383:
	.loc 1 2371 0
	movq	global_trees(%rip), %rax	# global_trees, D.21578
	cmpq	-48(%rbp), %rax	# type, D.21578
	jne	.L379	#,
	.loc 1 2372 0
	jmp	.L380	#
.L379:
	.loc 1 2373 0
	movq	-48(%rbp), %rax	# type, tmp342
	movq	144(%rax), %rax	# type_8->type.context, D.21578
	testq	%rax, %rax	# D.21578
	je	.L381	#,
	.loc 1 2375 0
	movq	-88(%rbp), %rax	# x, tmp343
	movl	$.LC180, %esi	#,
	movq	%rax, %rdi	# tmp343,
	movl	$0, %eax	#,
	call	warning_with_decl	#
	.loc 1 2378 0
	jmp	.L380	#
.L381:
	.loc 1 2380 0
	movq	-48(%rbp), %rax	# type, tmp344
	movzbl	16(%rax), %eax	# type_8->common.code, D.21575
	cmpb	$23, %al	#, D.21575
	jne	.L382	#,
	.loc 1 2381 0
	movq	-48(%rbp), %rax	# type, tmp345
	movq	24(%rax), %rax	# type_8->type.values, D.21578
	testq	%rax, %rax	# D.21578
	je	.L382	#,
	.loc 1 2386 0
	jmp	.L380	#
.L382:
	.loc 1 2387 0
	movq	-48(%rbp), %rax	# type, tmp346
	movq	8(%rax), %rax	# type_8->common.type, tmp347
	movq	%rax, -48(%rbp)	# tmp347, type
.L378:
	.loc 1 2369 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, type
	jne	.L383	#,
.L380:
	.loc 1 2390 0
	cmpq	$0, -48(%rbp)	#, type
	jne	.L377	#,
	.loc 1 2391 0
	movq	global_binding_level(%rip), %rax	# global_binding_level, tmp348
	movq	%rax, -64(%rbp)	# tmp348, b
.L377:
.LBE19:
	.loc 1 2396 0
	movq	global_binding_level(%rip), %rax	# global_binding_level, global_binding_level.109
	cmpq	%rax, -64(%rbp)	# global_binding_level.109, b
	jne	.L384	#,
	.loc 1 2402 0
	movq	-32(%rbp), %rax	# name, tmp349
	movq	56(%rax), %rax	# MEM[(struct lang_identifier *)name_13].global_value, D.21578
	testq	%rax, %rax	# D.21578
	jne	.L385	#,
	.loc 1 2402 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# x, tmp350
	movzbl	18(%rax), %eax	# *x_12(D), D.21575
	andl	$8, %eax	#, D.21575
	testb	%al, %al	# D.21575
	je	.L385	#,
	.loc 1 2403 0 is_stmt 1
	movq	-32(%rbp), %rax	# name, tmp351
	movzbl	18(%rax), %edx	#, tmp354
	orl	$8, %edx	#, tmp355
	movb	%dl, 18(%rax)	# tmp355,
.L385:
	.loc 1 2405 0
	movq	-32(%rbp), %rax	# name, tmp356
	movq	-88(%rbp), %rdx	# x, tmp357
	movq	%rdx, 56(%rax)	# tmp357, MEM[(struct lang_identifier *)name_13].global_value
	.loc 1 2408 0
	movq	-32(%rbp), %rax	# name, tmp358
	movq	$0, 96(%rax)	#, MEM[(struct lang_identifier *)name_13].limbo_value
	.loc 1 2411 0
	movq	-32(%rbp), %rax	# name, tmp359
	movq	80(%rax), %rax	# MEM[(struct lang_identifier *)name_13].implicit_decl, D.21578
	testq	%rax, %rax	# D.21578
	je	.L386	#,
	.loc 1 2412 0
	movq	-32(%rbp), %rax	# name, tmp360
	movq	80(%rax), %rax	# MEM[(struct lang_identifier *)name_13].implicit_decl, D.21578
	movzbl	18(%rax), %eax	# *_121, D.21575
	andl	$1, %eax	#, D.21575
	testb	%al, %al	# D.21575
	je	.L386	#,
	.loc 1 2413 0
	movq	-88(%rbp), %rax	# x, tmp361
	movzbl	18(%rax), %edx	#, tmp364
	orl	$1, %edx	#, tmp365
	movb	%dl, 18(%rax)	# tmp365,
	movq	-32(%rbp), %rax	# name, tmp366
	movzbl	18(%rax), %edx	#, tmp369
	orl	$1, %edx	#, tmp370
	movb	%dl, 18(%rax)	# tmp370,
.L386:
	.loc 1 2416 0
	movq	-32(%rbp), %rax	# name, tmp371
	movq	80(%rax), %rax	# MEM[(struct lang_identifier *)name_13].implicit_decl, D.21578
	testq	%rax, %rax	# D.21578
	je	.L387	#,
	.loc 1 2417 0
	movq	-32(%rbp), %rax	# name, tmp372
	movq	80(%rax), %rax	# MEM[(struct lang_identifier *)name_13].implicit_decl, D.21578
	movzbl	17(%rax), %eax	# *_125, D.21575
	andl	$4, %eax	#, D.21575
	testb	%al, %al	# D.21575
	je	.L387	#,
	.loc 1 2418 0
	movq	-88(%rbp), %rax	# x, tmp373
	movzbl	17(%rax), %edx	#, tmp376
	orl	$4, %edx	#, tmp377
	movb	%dl, 17(%rax)	# tmp377,
.L387:
	.loc 1 2421 0
	movq	-32(%rbp), %rax	# name, tmp378
	movq	80(%rax), %rax	# MEM[(struct lang_identifier *)name_13].implicit_decl, D.21578
	testq	%rax, %rax	# D.21578
	je	.L388	#,
	.loc 1 2423 0
	movq	-88(%rbp), %rax	# x, tmp379
	movzbl	16(%rax), %eax	# x_12(D)->common.code, D.21575
	cmpb	$30, %al	#, D.21575
	jne	.L389	#,
	.loc 1 2424 0 discriminator 1
	movq	-88(%rbp), %rax	# x, tmp380
	movq	8(%rax), %rax	# x_12(D)->common.type, D.21578
	movq	8(%rax), %rax	# _130->common.type, D.21578
	movq	128(%rax), %rdx	# _131->type.main_variant, D.21578
	.loc 1 2425 0 discriminator 1
	movq	integer_types+40(%rip), %rax	# integer_types, D.21578
	.loc 1 2423 0 discriminator 1
	cmpq	%rax, %rdx	# D.21578, D.21578
	je	.L388	#,
.L389:
	.loc 1 2427 0
	movq	-32(%rbp), %rax	# name, tmp381
	movq	32(%rax), %rax	# name_13->identifier.id.str, D.21579
	.loc 1 2426 0
	movq	%rax, %rsi	# D.21579,
	movl	$.LC181, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L388:
	.loc 1 2431 0
	movq	-32(%rbp), %rax	# name, tmp382
	movzbl	18(%rax), %eax	# *name_13, D.21575
	andl	$8, %eax	#, D.21575
	testb	%al, %al	# D.21575
	je	.L395	#,
	.loc 1 2432 0
	movq	-88(%rbp), %rax	# x, tmp383
	movzbl	18(%rax), %eax	# *x_12(D), D.21575
	andl	$8, %eax	#, D.21575
	testb	%al, %al	# D.21575
	jne	.L395	#,
	.loc 1 2432 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# x, tmp384
	movzbl	49(%rax), %eax	# *x_12(D), D.21575
	andl	$1, %eax	#, D.21575
	testb	%al, %al	# D.21575
	jne	.L395	#,
	.loc 1 2435 0 is_stmt 1
	cmpq	$0, -72(%rbp)	#, t
	je	.L391	#,
	.loc 1 2435 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# t, tmp385
	movzbl	51(%rax), %eax	# *t_3, D.21575
	andl	$96, %eax	#, D.21575
	testb	%al, %al	# D.21575
	je	.L391	#,
	jmp	.L390	#
.L391:
	.loc 1 2438 0 is_stmt 1
	cmpq	$0, -72(%rbp)	#, t
	je	.L392	#,
	.loc 1 2438 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# t, tmp386
	movzbl	17(%rax), %eax	# *t_3, D.21575
	andl	$32, %eax	#, D.21575
	testb	%al, %al	# D.21575
	je	.L392	#,
	jmp	.L390	#
.L392:
	.loc 1 2442 0 is_stmt 1
	movq	-88(%rbp), %rax	# x, tmp387
	movzbl	16(%rax), %eax	# x_12(D)->common.code, D.21575
	cmpb	$33, %al	#, D.21575
	je	.L395	#,
	.loc 1 2444 0
	movq	-32(%rbp), %rax	# name, tmp388
	movq	80(%rax), %rax	# MEM[(struct lang_identifier *)name_13].implicit_decl, D.21578
	testq	%rax, %rax	# D.21578
	je	.L393	#,
	.loc 1 2446 0
	movq	-32(%rbp), %rax	# name, tmp389
	movzbl	17(%rax), %eax	# *name_13, D.21575
	andl	$8, %eax	#, D.21575
	testb	%al, %al	# D.21575
	jne	.L395	#,
	.loc 1 2448 0
	movq	-32(%rbp), %rax	# name, tmp390
	movq	32(%rax), %rax	# name_13->identifier.id.str, D.21579
	.loc 1 2447 0
	movq	%rax, %rsi	# D.21579,
	movl	$.LC175, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
	jmp	.L395	#
.L393:
	.loc 1 2452 0
	movq	-32(%rbp), %rax	# name, tmp391
	movq	32(%rax), %rax	# name_13->identifier.id.str, D.21579
	.loc 1 2451 0
	movq	%rax, %rsi	# D.21579,
	movl	$.LC182, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
	jmp	.L395	#
.L390:
	jmp	.L395	#
.L384:
.LBB20:
	.loc 1 2458 0
	movq	-32(%rbp), %rax	# name, tmp392
	movq	64(%rax), %rax	# MEM[(struct lang_identifier *)name_13].local_value, tmp393
	movq	%rax, -16(%rbp)	# tmp393, oldlocal
	.loc 1 2459 0
	movq	-32(%rbp), %rax	# name, tmp394
	movq	56(%rax), %rax	# MEM[(struct lang_identifier *)name_13].global_value, tmp395
	movq	%rax, -8(%rbp)	# tmp395, oldglobal
	.loc 1 2461 0
	movq	-32(%rbp), %rax	# name, tmp396
	movq	-88(%rbp), %rdx	# x, tmp397
	movq	%rdx, 64(%rax)	# tmp397, MEM[(struct lang_identifier *)name_13].local_value
	.loc 1 2465 0
	cmpq	$0, -16(%rbp)	#, oldlocal
	jne	.L396	#,
	.loc 1 2466 0
	cmpq	$0, -8(%rbp)	#, oldglobal
	je	.L396	#,
	.loc 1 2467 0
	movq	-88(%rbp), %rax	# x, tmp398
	movzbl	16(%rax), %eax	# x_12(D)->common.code, D.21575
	cmpb	$30, %al	#, D.21575
	jne	.L396	#,
	.loc 1 2468 0
	movq	-8(%rbp), %rax	# oldglobal, tmp399
	movzbl	16(%rax), %eax	# oldglobal_152->common.code, D.21575
	cmpb	$30, %al	#, D.21575
	jne	.L396	#,
	.loc 1 2469 0
	movq	-88(%rbp), %rax	# x, tmp400
	movzbl	49(%rax), %eax	# *x_12(D), D.21575
	andl	$1, %eax	#, D.21575
	testb	%al, %al	# D.21575
	je	.L396	#,
	.loc 1 2470 0
	movq	-88(%rbp), %rax	# x, tmp401
	movq	200(%rax), %rax	# x_12(D)->decl.lang_specific, D.21576
	movzbl	(%rax), %eax	# *_157, D.21575
	andl	$1, %eax	#, D.21575
	testb	%al, %al	# D.21575
	jne	.L396	#,
	.loc 1 2474 0
	movq	-32(%rbp), %rax	# name, tmp402
	movq	56(%rax), %rax	# MEM[(struct lang_identifier *)name_13].global_value, D.21578
	.loc 1 2473 0
	movq	8(%rax), %rdx	# _160->common.type, D.21578
	movq	-88(%rbp), %rax	# x, tmp403
	movq	8(%rax), %rax	# x_12(D)->common.type, D.21578
	movq	%rdx, %rsi	# D.21578,
	movq	%rax, %rdi	# D.21578,
	call	comptypes	#
	testl	%eax, %eax	# D.21580
	jne	.L397	#,
	.loc 1 2475 0
	movq	-88(%rbp), %rax	# x, tmp404
	movl	$.LC183, %esi	#,
	movq	%rax, %rdi	# tmp404,
	movl	$0, %eax	#,
	call	pedwarn_with_decl	#
	jmp	.L396	#
.L397:
	.loc 1 2480 0
	movq	-8(%rbp), %rax	# oldglobal, tmp405
	movq	200(%rax), %rax	# oldglobal_152->decl.lang_specific, D.21576
	movzbl	(%rax), %eax	# *_164, D.21575
	andl	$1, %eax	#, D.21575
	testb	%al, %al	# D.21575
	je	.L398	#,
	.loc 1 2482 0
	movq	-88(%rbp), %rax	# x, tmp406
	movq	200(%rax), %rax	# x_12(D)->decl.lang_specific, D.21576
	.loc 1 2483 0
	movq	-8(%rbp), %rdx	# oldglobal, tmp407
	movq	200(%rdx), %rdx	# oldglobal_152->decl.lang_specific, D.21576
	movzbl	(%rdx), %edx	# *_168, tmp410
	andl	$1, %edx	#, D.21582
	movl	%edx, %ecx	# D.21582, tmp412
	andl	$1, %ecx	#, tmp412
	movzbl	(%rax), %edx	# _167->base.declared_inline, tmp413
	andl	$-2, %edx	#, tmp414
	orl	%ecx, %edx	# tmp412, tmp415
	movb	%dl, (%rax)	# tmp415, _167->base.declared_inline
	.loc 1 2484 0
	movq	-8(%rbp), %rax	# oldglobal, tmp416
	movzbl	49(%rax), %eax	# *oldglobal_152, tmp419
	shrb	$3, %al	#, D.21582
	andl	$1, %eax	#, D.21582
	movq	-88(%rbp), %rdx	# x, tmp420
	andl	$1, %eax	#, tmp422
	leal	0(,%rax,8), %ecx	#, tmp423
	movzbl	49(%rdx), %eax	#, tmp424
	andl	$-9, %eax	#, tmp425
	orl	%ecx, %eax	# tmp423, tmp426
	movb	%al, 49(%rdx)	# tmp426,
	.loc 1 2485 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.111
	.loc 1 2486 0
	cmpq	-8(%rbp), %rax	# oldglobal, current_function_decl.111
	je	.L399	#,
	.loc 1 2486 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# oldglobal, tmp427
	movq	104(%rax), %rax	# oldglobal_152->decl.initial, iftmp.110
	jmp	.L400	#
.L399:
	.loc 1 2486 0 discriminator 2
	movl	$0, %eax	#, iftmp.110
.L400:
	.loc 1 2485 0 is_stmt 1
	movq	-88(%rbp), %rdx	# x, tmp428
	movq	%rax, 104(%rdx)	# iftmp.110, x_12(D)->decl.initial
	.loc 1 2487 0
	movq	-8(%rbp), %rax	# oldglobal, tmp429
	movq	160(%rax), %rdx	# oldglobal_152->decl.u2.f, D.21583
	movq	-88(%rbp), %rax	# x, tmp430
	movq	%rdx, 160(%rax)	# D.21583, x_12(D)->decl.u2.f
	.loc 1 2488 0
	movq	-8(%rbp), %rax	# oldglobal, tmp431
	movq	56(%rax), %rdx	# oldglobal_152->decl.u1.i, D.21584
	movq	-88(%rbp), %rax	# x, tmp432
	movq	%rdx, 56(%rax)	# D.21584, x_12(D)->decl.u1.i
	.loc 1 2489 0
	movq	-8(%rbp), %rax	# oldglobal, tmp433
	movq	88(%rax), %rdx	# oldglobal_152->decl.arguments, D.21578
	movq	-88(%rbp), %rax	# x, tmp434
	movq	%rdx, 88(%rax)	# D.21578, x_12(D)->decl.arguments
	.loc 1 2490 0
	movq	-8(%rbp), %rax	# oldglobal, tmp435
	movq	96(%rax), %rdx	# oldglobal_152->decl.result, D.21578
	movq	-88(%rbp), %rax	# x, tmp436
	movq	%rdx, 96(%rax)	# D.21578, x_12(D)->decl.result
	.loc 1 2491 0
	movq	-8(%rbp), %rax	# oldglobal, tmp437
	movzbl	17(%rax), %eax	# *oldglobal_152, tmp440
	shrb	$6, %al	#, D.21582
	andl	$1, %eax	#, D.21582
	movq	-88(%rbp), %rdx	# x, tmp441
	andl	$1, %eax	#, tmp443
	sall	$6, %eax	#, tmp444
	movl	%eax, %ecx	# tmp444, tmp444
	movzbl	17(%rdx), %eax	#, tmp445
	andl	$-65, %eax	#, tmp446
	orl	%ecx, %eax	# tmp444, tmp447
	movb	%al, 17(%rdx)	# tmp447,
	.loc 1 2493 0
	movq	-8(%rbp), %rax	# oldglobal, tmp448
	movq	112(%rax), %rdx	# oldglobal_152->decl.abstract_origin, D.21578
	movq	-88(%rbp), %rax	# x, tmp449
	movq	%rdx, 112(%rax)	# D.21578, x_12(D)->decl.abstract_origin
.L398:
	.loc 1 2496 0
	movq	-8(%rbp), %rax	# oldglobal, tmp450
	movzbl	51(%rax), %eax	# *oldglobal_152, D.21575
	andl	$96, %eax	#, D.21575
	testb	%al, %al	# D.21575
	je	.L401	#,
	.loc 1 2498 0
	movq	-8(%rbp), %rax	# oldglobal, tmp451
	movzbl	51(%rax), %eax	# *oldglobal_152, tmp454
	shrb	$5, %al	#, D.21585
	andl	$3, %eax	#, D.21585
	movq	-88(%rbp), %rdx	# x, tmp455
	andl	$3, %eax	#, tmp457
	sall	$5, %eax	#, tmp458
	movl	%eax, %ecx	# tmp458, tmp458
	movzbl	51(%rdx), %eax	#, tmp459
	andl	$-97, %eax	#, tmp460
	orl	%ecx, %eax	# tmp458, tmp461
	movb	%al, 51(%rdx)	# tmp461,
	.loc 1 2499 0
	movq	-8(%rbp), %rax	# oldglobal, tmp462
	movl	56(%rax), %edx	# oldglobal_152->decl.u1.f, D.21586
	movq	-88(%rbp), %rax	# x, tmp463
	movl	%edx, 56(%rax)	# D.21586, x_12(D)->decl.u1.f
.L401:
	.loc 1 2502 0
	movq	-8(%rbp), %rax	# oldglobal, tmp464
	movq	8(%rax), %rax	# oldglobal_152->common.type, D.21578
	movq	24(%rax), %rax	# _184->type.values, D.21578
	testq	%rax, %rax	# D.21578
	je	.L396	#,
	.loc 1 2503 0
	movq	-8(%rbp), %rax	# oldglobal, tmp465
	movq	104(%rax), %rax	# oldglobal_152->decl.initial, D.21578
	testq	%rax, %rax	# D.21578
	je	.L396	#,
	.loc 1 2504 0
	movq	-88(%rbp), %rax	# x, tmp466
	movq	8(%rax), %rax	# x_12(D)->common.type, D.21578
	movq	24(%rax), %rax	# _187->type.values, D.21578
	testq	%rax, %rax	# D.21578
	jne	.L396	#,
	.loc 1 2505 0
	movq	-8(%rbp), %rax	# oldglobal, tmp467
	movq	8(%rax), %rdx	# oldglobal_152->common.type, D.21578
	movq	-88(%rbp), %rax	# x, tmp468
	movq	%rdx, 8(%rax)	# D.21578, x_12(D)->common.type
.L396:
	.loc 1 2524 0
	cmpq	$0, -16(%rbp)	#, oldlocal
	jne	.L402	#,
	.loc 1 2525 0
	movq	-88(%rbp), %rax	# x, tmp469
	movzbl	49(%rax), %eax	# *x_12(D), D.21575
	andl	$1, %eax	#, D.21575
	testb	%al, %al	# D.21575
	je	.L402	#,
	.loc 1 2526 0
	movq	-88(%rbp), %rax	# x, tmp470
	movzbl	18(%rax), %eax	# *x_12(D), D.21575
	andl	$8, %eax	#, D.21575
	testb	%al, %al	# D.21575
	je	.L402	#,
	.loc 1 2528 0
	cmpq	$0, -8(%rbp)	#, oldglobal
	jne	.L403	#,
	.loc 1 2529 0
	movq	-32(%rbp), %rax	# name, tmp471
	movzbl	18(%rax), %edx	#, tmp474
	orl	$8, %edx	#, tmp475
	movb	%dl, 18(%rax)	# tmp475,
.L403:
	.loc 1 2538 0
	movq	-32(%rbp), %rax	# name, tmp476
	movq	96(%rax), %rax	# MEM[(struct lang_identifier *)name_13].limbo_value, D.21578
	testq	%rax, %rax	# D.21578
	jne	.L402	#,
	.loc 1 2539 0
	movq	-32(%rbp), %rax	# name, tmp477
	movq	-88(%rbp), %rdx	# x, tmp478
	movq	%rdx, 96(%rax)	# tmp478, MEM[(struct lang_identifier *)name_13].limbo_value
.L402:
	.loc 1 2542 0
	movq	-16(%rbp), %rdx	# oldlocal, tmp479
	movq	-88(%rbp), %rax	# x, tmp480
	movq	%rdx, %rsi	# tmp479,
	movq	%rax, %rdi	# tmp480,
	call	warn_if_shadowing	#
	.loc 1 2546 0
	cmpq	$0, -16(%rbp)	#, oldlocal
	je	.L395	#,
	.loc 1 2547 0
	movq	-64(%rbp), %rax	# b, tmp481
	movq	16(%rax), %rdx	# b_4->shadowed, D.21578
	movq	-16(%rbp), %rcx	# oldlocal, tmp482
	movq	-32(%rbp), %rax	# name, tmp483
	movq	%rcx, %rsi	# tmp482,
	movq	%rax, %rdi	# tmp483,
	call	tree_cons	#
	movq	-64(%rbp), %rdx	# b, tmp484
	movq	%rax, 16(%rdx)	# D.21578, b_4->shadowed
.L395:
.LBE20:
	.loc 1 2554 0
	movq	-88(%rbp), %rax	# x, tmp485
	movq	8(%rax), %rdx	# x_12(D)->common.type, D.21578
	movq	global_trees(%rip), %rax	# global_trees, D.21578
	cmpq	%rax, %rdx	# D.21578, D.21578
	je	.L356	#,
	.loc 1 2555 0
	movq	-88(%rbp), %rax	# x, tmp486
	movq	8(%rax), %rax	# x_12(D)->common.type, D.21578
	movq	32(%rax), %rax	# _199->type.size, D.21578
	testq	%rax, %rax	# D.21578
	jne	.L356	#,
.LBB21:
	.loc 1 2557 0
	movq	-88(%rbp), %rax	# x, tmp487
	movq	8(%rax), %rax	# x_12(D)->common.type, tmp488
	movq	%rax, -40(%rbp)	# tmp488, element
	.loc 1 2559 0
	jmp	.L404	#
.L405:
	.loc 1 2560 0
	movq	-40(%rbp), %rax	# element, tmp489
	movq	8(%rax), %rax	# element_9->common.type, tmp490
	movq	%rax, -40(%rbp)	# tmp490, element
.L404:
	.loc 1 2559 0 discriminator 1
	movq	-40(%rbp), %rax	# element, tmp491
	movzbl	16(%rax), %eax	# element_9->common.code, D.21575
	cmpb	$18, %al	#, D.21575
	je	.L405	#,
	.loc 1 2561 0
	movq	-40(%rbp), %rax	# element, tmp492
	movzbl	16(%rax), %eax	# element_9->common.code, D.21575
	cmpb	$20, %al	#, D.21575
	je	.L406	#,
	.loc 1 2562 0
	movq	-40(%rbp), %rax	# element, tmp493
	movzbl	16(%rax), %eax	# element_9->common.code, D.21575
	cmpb	$21, %al	#, D.21575
	jne	.L356	#,
.L406:
	.loc 1 2563 0
	movq	-64(%rbp), %rax	# b, tmp494
	movl	56(%rax), %eax	# b_4->n_incomplete, D.21580
	leal	1(%rax), %edx	#, D.21580
	movq	-64(%rbp), %rax	# b, tmp495
	movl	%edx, 56(%rax)	# D.21580, b_4->n_incomplete
.L356:
.LBE21:
.LBE16:
	.loc 1 2569 0
	movq	-64(%rbp), %rax	# b, tmp496
	movq	(%rax), %rdx	# b_5->names, D.21578
	movq	-88(%rbp), %rax	# x, tmp497
	movq	%rdx, (%rax)	# D.21578, x_12(D)->common.chain
	.loc 1 2570 0
	movq	-64(%rbp), %rax	# b, tmp498
	movq	-88(%rbp), %rdx	# x, tmp499
	movq	%rdx, (%rax)	# tmp499, b_5->names
	.loc 1 2572 0
	movq	-88(%rbp), %rax	# x, D.21574
.L366:
	.loc 1 2573 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	pushdecl, .-pushdecl
	.globl	pushdecl_top_level
	.type	pushdecl_top_level, @function
pushdecl_top_level:
.LFB22:
	.loc 1 2580 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	.loc 1 2582 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, tmp62
	movq	%rax, -16(%rbp)	# tmp62, b
	.loc 1 2584 0
	movq	global_binding_level(%rip), %rax	# global_binding_level, global_binding_level.112
	movq	%rax, current_binding_level(%rip)	# global_binding_level.112, current_binding_level
	.loc 1 2585 0
	movq	-24(%rbp), %rax	# x, tmp63
	movq	%rax, %rdi	# tmp63,
	call	pushdecl	#
	movq	%rax, -8(%rbp)	# tmp64, t
	.loc 1 2586 0
	movq	-16(%rbp), %rax	# b, tmp65
	movq	%rax, current_binding_level(%rip)	# tmp65, current_binding_level
	.loc 1 2587 0
	movq	-8(%rbp), %rax	# t, D.21598
	.loc 1 2588 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	pushdecl_top_level, .-pushdecl_top_level
	.section	.rodata
	.align 8
.LC184:
	.string	"function `%s' was previously declared within a block"
	.text
	.globl	implicitly_declare
	.type	implicitly_declare, @function
implicitly_declare:
.LFB23:
	.loc 1 2596 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# functionid, functionid
	.loc 1 2598 0
	movl	$0, -16(%rbp)	#, traditional_warning
	.loc 1 2610 0
	movq	c_global_trees+176(%rip), %rdx	# c_global_trees, D.21599
	movq	-24(%rbp), %rax	# functionid, tmp77
	movq	%rax, %rsi	# tmp77,
	movl	$30, %edi	#,
	call	build_decl	#
	movq	%rax, -8(%rbp)	# decl.113, decl
	.loc 1 2614 0
	movq	-24(%rbp), %rax	# functionid, tmp78
	movzbl	18(%rax), %eax	# *functionid_4(D), D.21600
	andl	$8, %eax	#, D.21600
	testb	%al, %al	# D.21600
	je	.L410	#,
	.loc 1 2614 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# functionid, tmp79
	movq	56(%rax), %rax	# MEM[(struct lang_identifier *)functionid_4(D)].global_value, D.21599
	testq	%rax, %rax	# D.21599
	jne	.L410	#,
	.loc 1 2615 0 is_stmt 1
	movl	$1, -16(%rbp)	#, traditional_warning
.L410:
	.loc 1 2618 0
	movq	-24(%rbp), %rax	# functionid, tmp80
	movq	80(%rax), %rax	# MEM[(struct lang_identifier *)functionid_4(D)].implicit_decl, D.21599
	testq	%rax, %rax	# D.21599
	sete	%al	#, D.21601
	movzbl	%al, %eax	# D.21601, tmp81
	movl	%eax, -12(%rbp)	# tmp81, implicit_warning
	.loc 1 2620 0
	movq	-8(%rbp), %rax	# decl, decl.114
	movzbl	49(%rax), %edx	#, tmp84
	orl	$1, %edx	#, tmp85
	movb	%dl, 49(%rax)	# tmp85,
	.loc 1 2621 0
	movq	-8(%rbp), %rax	# decl, decl.115
	movzbl	18(%rax), %edx	#, tmp88
	orl	$8, %edx	#, tmp89
	movb	%dl, 18(%rax)	# tmp89,
	.loc 1 2624 0
	movq	-8(%rbp), %rdx	# decl, decl.116
	movq	-24(%rbp), %rax	# functionid, tmp90
	movq	%rdx, 80(%rax)	# decl.116, MEM[(struct lang_identifier *)functionid_4(D)].implicit_decl
	.loc 1 2629 0
	movq	-8(%rbp), %rax	# decl, decl.117
	movq	%rax, %rdi	# decl.117,
	call	pushdecl	#
	.loc 1 2632 0
	movq	-8(%rbp), %rax	# decl, decl.118
	movq	%rax, %rdi	# decl.118,
	call	maybe_objc_check_decl	#
	.loc 1 2634 0
	movq	-8(%rbp), %rax	# decl, decl.119
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# decl.119,
	call	rest_of_decl_compilation	#
	.loc 1 2636 0
	cmpl	$0, -12(%rbp)	#, implicit_warning
	je	.L411	#,
	.loc 1 2637 0
	movq	-24(%rbp), %rax	# functionid, tmp91
	movq	%rax, %rdi	# tmp91,
	call	implicit_decl_warning	#
	jmp	.L412	#
.L411:
	.loc 1 2638 0
	movl	warn_traditional(%rip), %eax	# warn_traditional, warn_traditional.120
	testl	%eax, %eax	# warn_traditional.120
	je	.L412	#,
	.loc 1 2638 0 is_stmt 0 discriminator 1
	cmpl	$0, -16(%rbp)	#, traditional_warning
	je	.L412	#,
	.loc 1 2640 0 is_stmt 1
	movq	-24(%rbp), %rax	# functionid, tmp92
	movq	32(%rax), %rax	# functionid_4(D)->identifier.id.str, D.21602
	.loc 1 2639 0
	movq	%rax, %rsi	# D.21602,
	movl	$.LC184, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L412:
	.loc 1 2645 0
	movq	-8(%rbp), %rax	# decl, decl.121
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# decl.121,
	call	gen_aux_info_record	#
	.loc 1 2648 0
	leaq	-8(%rbp), %rax	#, tmp93
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp93,
	call	decl_attributes	#
	.loc 1 2650 0
	movq	-8(%rbp), %rax	# decl, D.21603
	.loc 1 2651 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	implicitly_declare, .-implicitly_declare
	.section	.rodata
	.align 8
.LC185:
	.string	"implicit declaration of function `%s'"
	.text
	.globl	implicit_decl_warning
	.type	implicit_decl_warning, @function
implicit_decl_warning:
.LFB24:
	.loc 1 2656 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# id, id
	.loc 1 2657 0
	movq	-24(%rbp), %rax	# id, tmp61
	movq	32(%rax), %rax	# id_1(D)->identifier.id.str, tmp62
	movq	%rax, -8(%rbp)	# tmp62, name
	.loc 1 2658 0
	movl	mesg_implicit_function_declaration(%rip), %eax	# mesg_implicit_function_declaration, mesg_implicit_function_declaration.122
	cmpl	$2, %eax	#, mesg_implicit_function_declaration.122
	jne	.L415	#,
	.loc 1 2659 0
	movq	-8(%rbp), %rax	# name, tmp63
	movq	%rax, %rsi	# tmp63,
	movl	$.LC185, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	jmp	.L414	#
.L415:
	.loc 1 2660 0
	movl	mesg_implicit_function_declaration(%rip), %eax	# mesg_implicit_function_declaration, mesg_implicit_function_declaration.123
	cmpl	$1, %eax	#, mesg_implicit_function_declaration.123
	jne	.L414	#,
	.loc 1 2661 0
	movq	-8(%rbp), %rax	# name, tmp64
	movq	%rax, %rsi	# tmp64,
	movl	$.LC185, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L414:
	.loc 1 2662 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	implicit_decl_warning, .-implicit_decl_warning
	.type	redeclaration_error_message, @function
redeclaration_error_message:
.LFB25:
	.loc 1 2673 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# newdecl, newdecl
	movq	%rsi, -16(%rbp)	# olddecl, olddecl
	.loc 1 2674 0
	movq	-8(%rbp), %rax	# newdecl, tmp107
	movzbl	16(%rax), %eax	# newdecl_2(D)->common.code, D.21607
	cmpb	$33, %al	#, D.21607
	jne	.L418	#,
	.loc 1 2676 0
	movl	flag_traditional(%rip), %eax	# flag_traditional, flag_traditional.124
	testl	%eax, %eax	# flag_traditional.124
	je	.L419	#,
	.loc 1 2676 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# newdecl, tmp108
	movq	8(%rax), %rdx	# newdecl_2(D)->common.type, D.21608
	movq	-16(%rbp), %rax	# olddecl, tmp109
	movq	8(%rax), %rax	# olddecl_6(D)->common.type, D.21608
	cmpq	%rax, %rdx	# D.21608, D.21608
	jne	.L419	#,
	.loc 1 2677 0 is_stmt 1
	movl	$0, %eax	#, D.21606
	jmp	.L420	#
.L419:
	.loc 1 2684 0
	movl	flag_traditional(%rip), %eax	# flag_traditional, flag_traditional.125
	testl	%eax, %eax	# flag_traditional.125
	je	.L421	#,
	.loc 1 2685 0
	movq	-16(%rbp), %rax	# olddecl, tmp110
	movq	8(%rax), %rax	# olddecl_6(D)->common.type, D.21608
	movq	128(%rax), %rdx	# _10->type.main_variant, D.21608
	movq	-8(%rbp), %rax	# newdecl, tmp111
	movq	8(%rax), %rax	# newdecl_2(D)->common.type, D.21608
	cmpq	%rax, %rdx	# D.21608, D.21608
	jne	.L421	#,
	.loc 1 2686 0
	movl	$0, %eax	#, D.21606
	jmp	.L420	#
.L421:
	.loc 1 2687 0
	movq	-16(%rbp), %rax	# olddecl, tmp112
	movzbl	50(%rax), %eax	# *olddecl_6(D), D.21607
	andl	$1, %eax	#, D.21607
	testb	%al, %al	# D.21607
	jne	.L422	#,
	.loc 1 2687 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# newdecl, tmp113
	movzbl	50(%rax), %eax	# *newdecl_2(D), D.21607
	andl	$1, %eax	#, D.21607
	testb	%al, %al	# D.21607
	je	.L423	#,
.L422:
	.loc 1 2688 0 is_stmt 1
	movl	$0, %eax	#, D.21606
	jmp	.L420	#
.L423:
	.loc 1 2689 0
	movl	$1, %eax	#, D.21606
	jmp	.L420	#
.L418:
	.loc 1 2691 0
	movq	-8(%rbp), %rax	# newdecl, tmp114
	movzbl	16(%rax), %eax	# newdecl_2(D)->common.code, D.21607
	cmpb	$30, %al	#, D.21607
	jne	.L424	#,
	.loc 1 2697 0
	movq	-16(%rbp), %rax	# olddecl, tmp115
	movq	104(%rax), %rax	# olddecl_6(D)->decl.initial, D.21608
	testq	%rax, %rax	# D.21608
	je	.L425	#,
	.loc 1 2697 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# newdecl, tmp116
	movq	104(%rax), %rax	# newdecl_2(D)->decl.initial, D.21608
	testq	%rax, %rax	# D.21608
	je	.L425	#,
	.loc 1 2700 0 is_stmt 1
	movq	-16(%rbp), %rax	# olddecl, tmp117
	movq	200(%rax), %rax	# olddecl_6(D)->decl.lang_specific, D.21609
	movzbl	(%rax), %eax	# *_23, D.21607
	andl	$1, %eax	#, D.21607
	testb	%al, %al	# D.21607
	je	.L426	#,
	.loc 1 2700 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# olddecl, tmp118
	movzbl	49(%rax), %eax	# *olddecl_6(D), D.21607
	andl	$1, %eax	#, D.21607
	testb	%al, %al	# D.21607
	je	.L426	#,
	.loc 1 2701 0 is_stmt 1 discriminator 1
	movq	-8(%rbp), %rax	# newdecl, tmp119
	movq	200(%rax), %rax	# newdecl_2(D)->decl.lang_specific, D.21609
	movzbl	(%rax), %eax	# *_28, D.21607
	andl	$1, %eax	#, D.21607
	.loc 1 2700 0 discriminator 1
	testb	%al, %al	# D.21607
	je	.L425	#,
	.loc 1 2702 0
	movq	-8(%rbp), %rax	# newdecl, tmp120
	movzbl	49(%rax), %eax	# *newdecl_2(D), D.21607
	andl	$1, %eax	#, D.21607
	.loc 1 2701 0
	testb	%al, %al	# D.21607
	je	.L425	#,
.L426:
	.loc 1 2703 0
	movl	$1, %eax	#, D.21606
	jmp	.L420	#
.L425:
	.loc 1 2704 0
	movl	$0, %eax	#, D.21606
	jmp	.L420	#
.L424:
	.loc 1 2706 0
	movq	-8(%rbp), %rax	# newdecl, tmp121
	movq	80(%rax), %rax	# newdecl_2(D)->decl.context, D.21608
	testq	%rax, %rax	# D.21608
	jne	.L427	#,
	.loc 1 2710 0
	movq	-8(%rbp), %rax	# newdecl, tmp122
	movzbl	49(%rax), %eax	# *newdecl_2(D), D.21607
	andl	$1, %eax	#, D.21607
	testb	%al, %al	# D.21607
	jne	.L428	#,
	.loc 1 2710 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# olddecl, tmp123
	movzbl	49(%rax), %eax	# *olddecl_6(D), D.21607
	andl	$1, %eax	#, D.21607
	testb	%al, %al	# D.21607
	je	.L429	#,
.L428:
	.loc 1 2711 0 is_stmt 1
	movl	$0, %eax	#, D.21606
	jmp	.L420	#
.L429:
	.loc 1 2713 0
	movq	-16(%rbp), %rax	# olddecl, tmp124
	movq	104(%rax), %rax	# olddecl_6(D)->decl.initial, D.21608
	testq	%rax, %rax	# D.21608
	je	.L430	#,
	.loc 1 2713 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# newdecl, tmp125
	movq	104(%rax), %rax	# newdecl_2(D)->decl.initial, D.21608
	testq	%rax, %rax	# D.21608
	je	.L430	#,
	.loc 1 2714 0 is_stmt 1
	movl	$1, %eax	#, D.21606
	jmp	.L420	#
.L430:
	.loc 1 2717 0
	movq	-16(%rbp), %rax	# olddecl, tmp126
	movzbl	18(%rax), %eax	# *olddecl_6(D), tmp129
	shrb	$3, %al	#, D.21610
	movl	%eax, %edx	# D.21610, D.21610
	andl	$1, %edx	#, D.21610
	movq	-8(%rbp), %rax	# newdecl, tmp130
	movzbl	18(%rax), %eax	# *newdecl_2(D), tmp133
	shrb	$3, %al	#, D.21610
	andl	$1, %eax	#, D.21610
	cmpb	%al, %dl	# D.21610, D.21610
	je	.L431	#,
	.loc 1 2718 0
	movl	$3, %eax	#, D.21606
	jmp	.L420	#
.L431:
	.loc 1 2719 0
	movl	$0, %eax	#, D.21606
	jmp	.L420	#
.L427:
	.loc 1 2721 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.126
	movzbl	48(%rax), %eax	# current_binding_level.126_48->parm_flag, D.21611
	testb	%al, %al	# D.21611
	je	.L432	#,
	.loc 1 2722 0
	movq	-16(%rbp), %rax	# olddecl, tmp134
	movzbl	17(%rax), %eax	# *olddecl_6(D), D.21607
	andl	$64, %eax	#, D.21607
	testb	%al, %al	# D.21607
	je	.L432	#,
	.loc 1 2722 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# newdecl, tmp135
	movzbl	17(%rax), %eax	# *newdecl_2(D), D.21607
	andl	$64, %eax	#, D.21607
	testb	%al, %al	# D.21607
	jne	.L432	#,
	.loc 1 2723 0 is_stmt 1
	movl	$0, %eax	#, D.21606
	jmp	.L420	#
.L432:
	.loc 1 2730 0
	movq	-8(%rbp), %rax	# newdecl, tmp136
	movzbl	49(%rax), %eax	# *newdecl_2(D), D.21607
	andl	$1, %eax	#, D.21607
	testb	%al, %al	# D.21607
	je	.L433	#,
	.loc 1 2730 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# olddecl, tmp137
	movzbl	49(%rax), %eax	# *olddecl_6(D), D.21607
	andl	$1, %eax	#, D.21607
	testb	%al, %al	# D.21607
	jne	.L434	#,
.L433:
	.loc 1 2731 0 is_stmt 1
	movq	-8(%rbp), %rax	# newdecl, tmp138
	movq	80(%rax), %rdx	# newdecl_2(D)->decl.context, D.21608
	movq	-16(%rbp), %rax	# olddecl, tmp139
	movq	80(%rax), %rax	# olddecl_6(D)->decl.context, D.21608
	cmpq	%rax, %rdx	# D.21608, D.21608
	jne	.L434	#,
	.loc 1 2732 0
	movl	$2, %eax	#, D.21606
	jmp	.L420	#
.L434:
	.loc 1 2733 0
	movl	$0, %eax	#, D.21606
.L420:
	.loc 1 2735 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	redeclaration_error_message, .-redeclaration_error_message
	.section	.rodata
	.align 8
.LC186:
	.string	"label %s referenced outside of any function"
	.text
	.globl	lookup_label
	.type	lookup_label, @function
lookup_label:
.LFB26:
	.loc 1 2744 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# id, id
	.loc 1 2745 0
	movq	-24(%rbp), %rax	# id, tmp73
	movq	72(%rax), %rax	# MEM[(struct lang_identifier *)id_2(D)].label_value, tmp74
	movq	%rax, -8(%rbp)	# tmp74, decl
	.loc 1 2747 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.127
	testq	%rax, %rax	# current_function_decl.127
	jne	.L436	#,
	.loc 1 2750 0
	movq	-24(%rbp), %rax	# id, tmp75
	movq	32(%rax), %rax	# id_2(D)->identifier.id.str, D.21613
	.loc 1 2749 0
	movq	%rax, %rsi	# D.21613,
	movl	$.LC186, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 2751 0
	movl	$0, %eax	#, D.21612
	jmp	.L437	#
.L436:
	.loc 1 2755 0
	cmpq	$0, -8(%rbp)	#, decl
	je	.L438	#,
	.loc 1 2758 0
	movq	-8(%rbp), %rax	# decl, tmp76
	movq	80(%rax), %rdx	# decl_3->decl.context, D.21614
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.128
	cmpq	%rax, %rdx	# current_function_decl.128, D.21614
	je	.L439	#,
	.loc 1 2759 0
	movq	-8(%rbp), %rax	# decl, tmp77
	movzbl	19(%rax), %eax	# *decl_3, D.21615
	andl	$2, %eax	#, D.21615
	testb	%al, %al	# D.21615
	jne	.L439	#,
	.loc 1 2760 0
	movq	-24(%rbp), %rax	# id, tmp78
	movq	%rax, %rdi	# tmp78,
	call	shadow_label	#
	jmp	.L437	#
.L439:
	.loc 1 2761 0
	movq	-8(%rbp), %rax	# decl, D.21612
	jmp	.L437	#
.L438:
	.loc 1 2764 0
	movq	global_trees+216(%rip), %rdx	# global_trees, D.21614
	movq	-24(%rbp), %rax	# id, tmp79
	movq	%rax, %rsi	# tmp79,
	movl	$31, %edi	#,
	call	build_decl	#
	movq	%rax, -8(%rbp)	# tmp80, decl
	.loc 1 2767 0
	movq	current_function_decl(%rip), %rdx	# current_function_decl, current_function_decl.129
	movq	-8(%rbp), %rax	# decl, tmp81
	movq	%rdx, 80(%rax)	# current_function_decl.129, decl_14->decl.context
	.loc 1 2769 0
	movq	-8(%rbp), %rax	# decl, tmp82
	movb	$0, 48(%rax)	#, decl_14->decl.mode
	.loc 1 2773 0
	movl	lineno(%rip), %edx	# lineno, lineno.130
	movq	-8(%rbp), %rax	# decl, tmp83
	movl	%edx, 32(%rax)	# lineno.130, decl_14->decl.linenum
	.loc 1 2774 0
	movq	input_filename(%rip), %rdx	# input_filename, input_filename.131
	movq	-8(%rbp), %rax	# decl, tmp84
	movq	%rdx, 24(%rax)	# input_filename.131, decl_14->decl.filename
	.loc 1 2776 0
	movq	-24(%rbp), %rax	# id, tmp85
	movq	-8(%rbp), %rdx	# decl, tmp86
	movq	%rdx, 72(%rax)	# tmp86, MEM[(struct lang_identifier *)id_2(D)].label_value
	.loc 1 2778 0
	movq	named_labels(%rip), %rdx	# named_labels, named_labels.132
	movq	-8(%rbp), %rax	# decl, tmp87
	movq	%rax, %rsi	# tmp87,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, named_labels(%rip)	# named_labels.133, named_labels
	.loc 1 2780 0
	movq	-8(%rbp), %rax	# decl, D.21612
.L437:
	.loc 1 2781 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	lookup_label, .-lookup_label
	.section	.rodata
	.align 8
.LC187:
	.string	"duplicate label declaration `%s'"
	.align 8
.LC188:
	.string	"this is a previous declaration"
	.text
	.globl	shadow_label
	.type	shadow_label, @function
shadow_label:
.LFB27:
	.loc 1 2794 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# name, name
	.loc 1 2795 0
	movq	-24(%rbp), %rax	# name, tmp66
	movq	72(%rax), %rax	# MEM[(struct lang_identifier *)name_3(D)].label_value, tmp67
	movq	%rax, -8(%rbp)	# tmp67, decl
	.loc 1 2797 0
	cmpq	$0, -8(%rbp)	#, decl
	je	.L441	#,
.LBB22:
	.loc 1 2803 0
	movq	named_labels(%rip), %rax	# named_labels, tmp68
	movq	%rax, -16(%rbp)	# tmp68, dup
	jmp	.L442	#
.L445:
	.loc 1 2804 0
	movq	-16(%rbp), %rax	# dup, tmp69
	movq	32(%rax), %rax	# dup_1->list.value, D.21618
	cmpq	-8(%rbp), %rax	# decl, D.21618
	jne	.L443	#,
	.loc 1 2807 0
	movq	-24(%rbp), %rax	# name, tmp70
	movq	32(%rax), %rax	# name_3(D)->identifier.id.str, D.21619
	.loc 1 2806 0
	movq	%rax, %rsi	# D.21619,
	movl	$.LC187, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 2808 0
	movq	-16(%rbp), %rax	# dup, tmp71
	movq	32(%rax), %rax	# dup_1->list.value, D.21618
	movl	$.LC188, %esi	#,
	movq	%rax, %rdi	# D.21618,
	movl	$0, %eax	#,
	call	error_with_decl	#
	.loc 1 2811 0
	movq	-24(%rbp), %rax	# name, tmp72
	movq	%rax, %rdi	# tmp72,
	call	lookup_label	#
	jmp	.L444	#
.L443:
	.loc 1 2803 0
	movq	-16(%rbp), %rax	# dup, tmp73
	movq	(%rax), %rax	# dup_1->common.chain, tmp74
	movq	%rax, -16(%rbp)	# tmp74, dup
.L442:
	.loc 1 2803 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, dup
	jne	.L445	#,
	.loc 1 2814 0 is_stmt 1
	movq	shadowed_labels(%rip), %rdx	# shadowed_labels, shadowed_labels.134
	movq	-8(%rbp), %rax	# decl, tmp75
	movq	%rax, %rsi	# tmp75,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, shadowed_labels(%rip)	# shadowed_labels.135, shadowed_labels
	.loc 1 2815 0
	movq	$0, -8(%rbp)	#, decl
	movq	-24(%rbp), %rax	# name, tmp76
	movq	-8(%rbp), %rdx	# decl, tmp77
	movq	%rdx, 72(%rax)	# tmp77, MEM[(struct lang_identifier *)name_3(D)].label_value
.L441:
.LBE22:
	.loc 1 2818 0
	movq	-24(%rbp), %rax	# name, tmp78
	movq	%rax, %rdi	# tmp78,
	call	lookup_label	#
.L444:
	.loc 1 2819 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	shadow_label, .-shadow_label
	.section	.rodata
	.align 8
.LC189:
	.string	"traditional C lacks a separate namespace for labels, identifier `%s' conflicts"
.LC190:
	.string	"duplicate label `%s'"
	.text
	.globl	define_label
	.type	define_label, @function
define_label:
.LFB28:
	.loc 1 2830 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# filename, filename
	movl	%esi, -28(%rbp)	# line, line
	movq	%rdx, -40(%rbp)	# name, name
	.loc 1 2831 0
	movq	-40(%rbp), %rax	# name, tmp72
	movq	%rax, %rdi	# tmp72,
	call	lookup_label	#
	movq	%rax, -8(%rbp)	# tmp73, decl
	.loc 1 2834 0
	cmpq	$0, -8(%rbp)	#, decl
	je	.L447	#,
	.loc 1 2834 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# decl, tmp74
	movq	80(%rax), %rdx	# decl_4->decl.context, D.21623
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.136
	cmpq	%rax, %rdx	# current_function_decl.136, D.21623
	je	.L447	#,
	.loc 1 2836 0 is_stmt 1
	movq	shadowed_labels(%rip), %rdx	# shadowed_labels, shadowed_labels.137
	movq	-8(%rbp), %rax	# decl, tmp75
	movq	%rax, %rsi	# tmp75,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, shadowed_labels(%rip)	# shadowed_labels.138, shadowed_labels
	.loc 1 2837 0
	movq	-40(%rbp), %rax	# name, tmp76
	movq	$0, 72(%rax)	#, MEM[(struct lang_identifier *)name_3(D)].label_value
	.loc 1 2838 0
	movq	-40(%rbp), %rax	# name, tmp77
	movq	%rax, %rdi	# tmp77,
	call	lookup_label	#
	movq	%rax, -8(%rbp)	# tmp78, decl
.L447:
	.loc 1 2841 0
	movl	warn_traditional(%rip), %eax	# warn_traditional, warn_traditional.139
	testl	%eax, %eax	# warn_traditional.139
	je	.L448	#,
	.loc 1 2841 0 is_stmt 0 discriminator 1
	movl	in_system_header(%rip), %eax	# in_system_header, in_system_header.140
	testl	%eax, %eax	# in_system_header.140
	jne	.L448	#,
	movq	-40(%rbp), %rax	# name, tmp79
	movq	%rax, %rdi	# tmp79,
	call	lookup_name	#
	testq	%rax, %rax	# D.21623
	je	.L448	#,
	.loc 1 2844 0 is_stmt 1
	movq	-40(%rbp), %rax	# name, tmp80
	movq	32(%rax), %rdx	# name_3(D)->identifier.id.str, D.21624
	.loc 1 2842 0
	movl	-28(%rbp), %esi	# line, tmp81
	movq	-24(%rbp), %rax	# filename, tmp82
	movq	%rdx, %rcx	# D.21624,
	movl	$.LC189, %edx	#,
	movq	%rax, %rdi	# tmp82,
	movl	$0, %eax	#,
	call	warning_with_file_and_line	#
.L448:
	.loc 1 2846 0
	movq	-8(%rbp), %rax	# decl, tmp83
	movq	104(%rax), %rax	# decl_1->decl.initial, D.21623
	testq	%rax, %rax	# D.21623
	je	.L449	#,
	.loc 1 2849 0
	movq	-40(%rbp), %rax	# name, tmp84
	movq	32(%rax), %rdx	# name_3(D)->identifier.id.str, D.21624
	.loc 1 2848 0
	movl	-28(%rbp), %esi	# line, tmp85
	movq	-24(%rbp), %rax	# filename, tmp86
	movq	%rdx, %rcx	# D.21624,
	movl	$.LC190, %edx	#,
	movq	%rax, %rdi	# tmp86,
	movl	$0, %eax	#,
	call	error_with_file_and_line	#
	.loc 1 2850 0
	movl	$0, %eax	#, D.21622
	jmp	.L450	#
.L449:
	.loc 1 2855 0
	movq	global_trees(%rip), %rdx	# global_trees, D.21623
	movq	-8(%rbp), %rax	# decl, tmp87
	movq	%rdx, 104(%rax)	# D.21623, decl_1->decl.initial
	.loc 1 2857 0
	movq	-8(%rbp), %rax	# decl, tmp88
	movq	-24(%rbp), %rdx	# filename, tmp89
	movq	%rdx, 24(%rax)	# tmp89, decl_1->decl.filename
	.loc 1 2858 0
	movq	-8(%rbp), %rax	# decl, tmp90
	movl	-28(%rbp), %edx	# line, tmp91
	movl	%edx, 32(%rax)	# tmp91, decl_1->decl.linenum
	.loc 1 2859 0
	movq	-8(%rbp), %rax	# decl, D.21622
.L450:
	.loc 1 2861 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	define_label, .-define_label
	.globl	getdecls
	.type	getdecls, @function
getdecls:
.LFB29:
	.loc 1 2870 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2871 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.141
	movq	(%rax), %rax	# current_binding_level.141_1->names, D.21627
	.loc 1 2872 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	getdecls, .-getdecls
	.globl	gettags
	.type	gettags, @function
gettags:
.LFB30:
	.loc 1 2878 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2879 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.142
	movq	8(%rax), %rax	# current_binding_level.142_1->tags, D.21628
	.loc 1 2880 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	gettags, .-gettags
	.type	storedecls, @function
storedecls:
.LFB31:
	.loc 1 2889 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# decls, decls
	.loc 1 2890 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.143
	movq	-8(%rbp), %rdx	# decls, tmp60
	movq	%rdx, (%rax)	# tmp60, current_binding_level.143_1->names
	.loc 1 2891 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	storedecls, .-storedecls
	.type	storetags, @function
storetags:
.LFB32:
	.loc 1 2898 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# tags, tags
	.loc 1 2899 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.144
	movq	-8(%rbp), %rdx	# tags, tmp60
	movq	%rdx, 8(%rax)	# tmp60, current_binding_level.144_1->tags
	.loc 1 2900 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	storetags, .-storetags
	.type	lookup_tag, @function
lookup_tag:
.LFB33:
	.loc 1 2918 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -36(%rbp)	# code, code
	movq	%rsi, -48(%rbp)	# name, name
	movq	%rdx, -56(%rbp)	# binding_level, binding_level
	movl	%ecx, -40(%rbp)	# thislevel_only, thislevel_only
	.loc 1 2920 0
	movl	$1, -20(%rbp)	#, thislevel
	.loc 1 2922 0
	movq	-56(%rbp), %rax	# binding_level, tmp68
	movq	%rax, -16(%rbp)	# tmp68, level
	jmp	.L458	#
.L466:
.LBB23:
	.loc 1 2925 0
	movq	-16(%rbp), %rax	# level, tmp69
	movq	8(%rax), %rax	# level_1->tags, tmp70
	movq	%rax, -8(%rbp)	# tmp70, tail
	jmp	.L459	#
.L463:
	.loc 1 2927 0
	movq	-8(%rbp), %rax	# tail, tmp71
	movq	24(%rax), %rax	# tail_4->list.purpose, D.21630
	cmpq	-48(%rbp), %rax	# name, D.21630
	jne	.L460	#,
	.loc 1 2929 0
	movq	-8(%rbp), %rax	# tail, tmp72
	movq	32(%rax), %rax	# tail_4->list.value, D.21630
	movzbl	16(%rax), %eax	# _12->common.code, D.21631
	movzbl	%al, %eax	# D.21631, D.21632
	cmpl	-36(%rbp), %eax	# code, D.21632
	je	.L461	#,
	.loc 1 2932 0
	movq	-48(%rbp), %rax	# name, tmp73
	movq	%rax, pending_invalid_xref(%rip)	# tmp73, pending_invalid_xref
	.loc 1 2933 0
	movq	input_filename(%rip), %rax	# input_filename, input_filename.145
	movq	%rax, pending_invalid_xref_file(%rip)	# input_filename.145, pending_invalid_xref_file
	.loc 1 2934 0
	movl	lineno(%rip), %eax	# lineno, lineno.146
	movl	%eax, pending_invalid_xref_line(%rip)	# lineno.146, pending_invalid_xref_line
	.loc 1 2939 0
	cmpl	$0, -20(%rbp)	#, thislevel
	je	.L461	#,
	.loc 1 2940 0
	call	pending_xref_error	#
.L461:
	.loc 1 2942 0
	movq	-8(%rbp), %rax	# tail, tmp74
	movq	32(%rax), %rax	# tail_4->list.value, D.21629
	jmp	.L462	#
.L460:
	.loc 1 2925 0
	movq	-8(%rbp), %rax	# tail, tmp75
	movq	(%rax), %rax	# tail_4->common.chain, tmp76
	movq	%rax, -8(%rbp)	# tmp76, tail
.L459:
	.loc 1 2925 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, tail
	jne	.L463	#,
	.loc 1 2945 0 is_stmt 1
	movq	-16(%rbp), %rax	# level, tmp77
	movzbl	49(%rax), %eax	# level_1->tag_transparent, D.21633
	testb	%al, %al	# D.21633
	jne	.L464	#,
	.loc 1 2947 0
	cmpl	$0, -40(%rbp)	#, thislevel_only
	je	.L465	#,
	.loc 1 2948 0
	movl	$0, %eax	#, D.21629
	jmp	.L462	#
.L465:
	.loc 1 2949 0
	movl	$0, -20(%rbp)	#, thislevel
.L464:
.LBE23:
	.loc 1 2922 0
	movq	-16(%rbp), %rax	# level, tmp78
	movq	40(%rax), %rax	# level_1->level_chain, tmp79
	movq	%rax, -16(%rbp)	# tmp79, level
.L458:
	.loc 1 2922 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, level
	jne	.L466	#,
	.loc 1 2952 0 is_stmt 1
	movl	$0, %eax	#, D.21629
.L462:
	.loc 1 2953 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	lookup_tag, .-lookup_tag
	.section	.rodata
	.align 8
.LC191:
	.string	"`%s' defined as wrong kind of tag"
	.text
	.globl	pending_xref_error
	.type	pending_xref_error, @function
pending_xref_error:
.LFB34:
	.loc 1 2962 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2963 0
	movq	pending_invalid_xref(%rip), %rax	# pending_invalid_xref, pending_invalid_xref.147
	testq	%rax, %rax	# pending_invalid_xref.147
	je	.L468	#,
	.loc 1 2967 0
	movq	pending_invalid_xref(%rip), %rax	# pending_invalid_xref, pending_invalid_xref.148
	movq	32(%rax), %rdx	# pending_invalid_xref.148_2->identifier.id.str, D.21634
	.loc 1 2964 0
	movl	pending_invalid_xref_line(%rip), %esi	# pending_invalid_xref_line, pending_invalid_xref_line.149
	movq	pending_invalid_xref_file(%rip), %rax	# pending_invalid_xref_file, pending_invalid_xref_file.150
	movq	%rdx, %rcx	# D.21634,
	movl	$.LC191, %edx	#,
	movq	%rax, %rdi	# pending_invalid_xref_file.150,
	movl	$0, %eax	#,
	call	error_with_file_and_line	#
.L468:
	.loc 1 2968 0
	movq	$0, pending_invalid_xref(%rip)	#, pending_invalid_xref
	.loc 1 2969 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	pending_xref_error, .-pending_xref_error
	.type	lookup_tag_reverse, @function
lookup_tag_reverse:
.LFB35:
	.loc 1 2977 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# type, type
	.loc 1 2980 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, tmp62
	movq	%rax, -16(%rbp)	# tmp62, level
	jmp	.L470	#
.L475:
.LBB24:
	.loc 1 2983 0
	movq	-16(%rbp), %rax	# level, tmp63
	movq	8(%rax), %rax	# level_1->tags, tmp64
	movq	%rax, -8(%rbp)	# tmp64, tail
	jmp	.L471	#
.L474:
	.loc 1 2985 0
	movq	-8(%rbp), %rax	# tail, tmp65
	movq	32(%rax), %rax	# tail_2->list.value, D.21637
	cmpq	-24(%rbp), %rax	# type, D.21637
	jne	.L472	#,
	.loc 1 2986 0
	movq	-8(%rbp), %rax	# tail, tmp66
	movq	24(%rax), %rax	# tail_2->list.purpose, D.21636
	jmp	.L473	#
.L472:
	.loc 1 2983 0
	movq	-8(%rbp), %rax	# tail, tmp67
	movq	(%rax), %rax	# tail_2->common.chain, tmp68
	movq	%rax, -8(%rbp)	# tmp68, tail
.L471:
	.loc 1 2983 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, tail
	jne	.L474	#,
.LBE24:
	.loc 1 2980 0 is_stmt 1
	movq	-16(%rbp), %rax	# level, tmp69
	movq	40(%rax), %rax	# level_1->level_chain, tmp70
	movq	%rax, -16(%rbp)	# tmp70, level
.L470:
	.loc 1 2980 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, level
	jne	.L475	#,
	.loc 1 2989 0 is_stmt 1
	movl	$0, %eax	#, D.21636
.L473:
	.loc 1 2990 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	lookup_tag_reverse, .-lookup_tag_reverse
	.globl	lookup_name
	.type	lookup_name, @function
lookup_name:
.LFB36:
	.loc 1 3000 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# name, name
	.loc 1 3003 0
	movq	current_binding_level(%rip), %rdx	# current_binding_level, current_binding_level.151
	movq	global_binding_level(%rip), %rax	# global_binding_level, global_binding_level.152
	cmpq	%rax, %rdx	# global_binding_level.152, current_binding_level.151
	je	.L477	#,
	.loc 1 3004 0
	movq	-24(%rbp), %rax	# name, tmp64
	movq	64(%rax), %rax	# MEM[(struct lang_identifier *)name_4(D)].local_value, D.21638
	testq	%rax, %rax	# D.21638
	je	.L477	#,
	.loc 1 3005 0
	movq	-24(%rbp), %rax	# name, tmp65
	movq	64(%rax), %rax	# MEM[(struct lang_identifier *)name_4(D)].local_value, tmp66
	movq	%rax, -8(%rbp)	# tmp66, val
	jmp	.L478	#
.L477:
	.loc 1 3007 0
	movq	-24(%rbp), %rax	# name, tmp67
	movq	56(%rax), %rax	# MEM[(struct lang_identifier *)name_4(D)].global_value, tmp68
	movq	%rax, -8(%rbp)	# tmp68, val
.L478:
	.loc 1 3008 0
	movq	-8(%rbp), %rax	# val, D.21639
	.loc 1 3009 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	lookup_name, .-lookup_name
	.globl	lookup_name_current_level
	.type	lookup_name_current_level, @function
lookup_name_current_level:
.LFB37:
	.loc 1 3016 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# name, name
	.loc 1 3019 0
	movq	current_binding_level(%rip), %rdx	# current_binding_level, current_binding_level.153
	movq	global_binding_level(%rip), %rax	# global_binding_level, global_binding_level.154
	cmpq	%rax, %rdx	# global_binding_level.154, current_binding_level.153
	jne	.L481	#,
	.loc 1 3020 0
	movq	-24(%rbp), %rax	# name, tmp66
	movq	56(%rax), %rax	# MEM[(struct lang_identifier *)name_5(D)].global_value, D.21640
	jmp	.L482	#
.L481:
	.loc 1 3022 0
	movq	-24(%rbp), %rax	# name, tmp67
	movq	64(%rax), %rax	# MEM[(struct lang_identifier *)name_5(D)].local_value, D.21641
	testq	%rax, %rax	# D.21641
	jne	.L483	#,
	.loc 1 3023 0
	movl	$0, %eax	#, D.21640
	jmp	.L482	#
.L483:
	.loc 1 3025 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.155
	movq	(%rax), %rax	# current_binding_level.155_9->names, tmp68
	movq	%rax, -8(%rbp)	# tmp68, t
	jmp	.L484	#
.L487:
	.loc 1 3026 0
	movq	-8(%rbp), %rax	# t, tmp69
	movq	72(%rax), %rax	# t_1->decl.name, D.21641
	cmpq	-24(%rbp), %rax	# name, D.21641
	jne	.L485	#,
	.loc 1 3027 0
	jmp	.L486	#
.L485:
	.loc 1 3025 0
	movq	-8(%rbp), %rax	# t, tmp70
	movq	(%rax), %rax	# t_1->common.chain, tmp71
	movq	%rax, -8(%rbp)	# tmp71, t
.L484:
	.loc 1 3025 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, t
	jne	.L487	#,
.L486:
	.loc 1 3029 0 is_stmt 1
	movq	-8(%rbp), %rax	# t, D.21640
.L482:
	.loc 1 3030 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	lookup_name_current_level, .-lookup_name_current_level
	.type	mark_binding_level, @function
mark_binding_level:
.LFB38:
	.loc 1 3037 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# arg, arg
	.loc 1 3038 0
	movq	-72(%rbp), %rax	# arg, tmp143
	movq	(%rax), %rax	# MEM[(struct binding_level * *)arg_2(D)], tmp144
	movq	%rax, -56(%rbp)	# tmp144, level
	.loc 1 3040 0
	jmp	.L489	#
.L502:
.LBB25:
	.loc 1 3042 0
	movq	-56(%rbp), %rax	# level, tmp145
	movq	(%rax), %rax	# level_1->names, tmp146
	movq	%rax, -48(%rbp)	# tmp146, t__
	cmpq	$0, -48(%rbp)	#, t__
	je	.L490	#,
	.loc 1 3042 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# t__, tmp147
	movq	%rax, %rdi	# tmp147,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.21642
	jne	.L490	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.156
	movq	8(%rax), %rdx	# ggc_pending_trees.156_6->elements_used, D.21643
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.157
	movq	(%rax), %rax	# ggc_pending_trees.157_8->num_elements, D.21643
	cmpq	%rax, %rdx	# D.21643, D.21643
	jb	.L491	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.158
	movq	(%rax), %rax	# ggc_pending_trees.158_10->num_elements, D.21643
	leaq	(%rax,%rax), %rdx	#, D.21643
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.159
	movq	%rdx, %rsi	# D.21643,
	movq	%rax, %rdi	# ggc_pending_trees.159,
	call	varray_grow	#
	movq	%rax, ggc_pending_trees(%rip)	# ggc_pending_trees.160, ggc_pending_trees
.L491:
	.loc 1 3042 0 discriminator 2
	movq	ggc_pending_trees(%rip), %rcx	# ggc_pending_trees, ggc_pending_trees.161
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.162
	movq	8(%rax), %rdx	# ggc_pending_trees.162_16->elements_used, D.21643
	leaq	1(%rdx), %rsi	#, D.21643
	movq	%rsi, 8(%rax)	# D.21643, ggc_pending_trees.162_16->elements_used
	addq	$4, %rdx	#, tmp148
	movq	-48(%rbp), %rax	# t__, tmp149
	movq	%rax, (%rcx,%rdx,8)	# tmp149, ggc_pending_trees.161_15->data.tree
.L490:
.LBE25:
.LBB26:
	.loc 1 3043 0 is_stmt 1
	movq	-56(%rbp), %rax	# level, tmp150
	movq	8(%rax), %rax	# level_1->tags, tmp151
	movq	%rax, -40(%rbp)	# tmp151, t__
	cmpq	$0, -40(%rbp)	#, t__
	je	.L492	#,
	.loc 1 3043 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# t__, tmp152
	movq	%rax, %rdi	# tmp152,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.21642
	jne	.L492	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.163
	movq	8(%rax), %rdx	# ggc_pending_trees.163_22->elements_used, D.21643
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.164
	movq	(%rax), %rax	# ggc_pending_trees.164_24->num_elements, D.21643
	cmpq	%rax, %rdx	# D.21643, D.21643
	jb	.L493	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.165
	movq	(%rax), %rax	# ggc_pending_trees.165_26->num_elements, D.21643
	leaq	(%rax,%rax), %rdx	#, D.21643
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.166
	movq	%rdx, %rsi	# D.21643,
	movq	%rax, %rdi	# ggc_pending_trees.166,
	call	varray_grow	#
	movq	%rax, ggc_pending_trees(%rip)	# ggc_pending_trees.167, ggc_pending_trees
.L493:
	.loc 1 3043 0 discriminator 2
	movq	ggc_pending_trees(%rip), %rcx	# ggc_pending_trees, ggc_pending_trees.168
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.169
	movq	8(%rax), %rdx	# ggc_pending_trees.169_32->elements_used, D.21643
	leaq	1(%rdx), %rsi	#, D.21643
	movq	%rsi, 8(%rax)	# D.21643, ggc_pending_trees.169_32->elements_used
	addq	$4, %rdx	#, tmp153
	movq	-40(%rbp), %rax	# t__, tmp154
	movq	%rax, (%rcx,%rdx,8)	# tmp154, ggc_pending_trees.168_31->data.tree
.L492:
.LBE26:
.LBB27:
	.loc 1 3044 0 is_stmt 1
	movq	-56(%rbp), %rax	# level, tmp155
	movq	16(%rax), %rax	# level_1->shadowed, tmp156
	movq	%rax, -32(%rbp)	# tmp156, t__
	cmpq	$0, -32(%rbp)	#, t__
	je	.L494	#,
	.loc 1 3044 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# t__, tmp157
	movq	%rax, %rdi	# tmp157,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.21642
	jne	.L494	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.170
	movq	8(%rax), %rdx	# ggc_pending_trees.170_38->elements_used, D.21643
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.171
	movq	(%rax), %rax	# ggc_pending_trees.171_40->num_elements, D.21643
	cmpq	%rax, %rdx	# D.21643, D.21643
	jb	.L495	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.172
	movq	(%rax), %rax	# ggc_pending_trees.172_42->num_elements, D.21643
	leaq	(%rax,%rax), %rdx	#, D.21643
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.173
	movq	%rdx, %rsi	# D.21643,
	movq	%rax, %rdi	# ggc_pending_trees.173,
	call	varray_grow	#
	movq	%rax, ggc_pending_trees(%rip)	# ggc_pending_trees.174, ggc_pending_trees
.L495:
	.loc 1 3044 0 discriminator 2
	movq	ggc_pending_trees(%rip), %rcx	# ggc_pending_trees, ggc_pending_trees.175
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.176
	movq	8(%rax), %rdx	# ggc_pending_trees.176_48->elements_used, D.21643
	leaq	1(%rdx), %rsi	#, D.21643
	movq	%rsi, 8(%rax)	# D.21643, ggc_pending_trees.176_48->elements_used
	addq	$4, %rdx	#, tmp158
	movq	-32(%rbp), %rax	# t__, tmp159
	movq	%rax, (%rcx,%rdx,8)	# tmp159, ggc_pending_trees.175_47->data.tree
.L494:
.LBE27:
.LBB28:
	.loc 1 3045 0 is_stmt 1
	movq	-56(%rbp), %rax	# level, tmp160
	movq	24(%rax), %rax	# level_1->blocks, tmp161
	movq	%rax, -24(%rbp)	# tmp161, t__
	cmpq	$0, -24(%rbp)	#, t__
	je	.L496	#,
	.loc 1 3045 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# t__, tmp162
	movq	%rax, %rdi	# tmp162,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.21642
	jne	.L496	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.177
	movq	8(%rax), %rdx	# ggc_pending_trees.177_54->elements_used, D.21643
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.178
	movq	(%rax), %rax	# ggc_pending_trees.178_56->num_elements, D.21643
	cmpq	%rax, %rdx	# D.21643, D.21643
	jb	.L497	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.179
	movq	(%rax), %rax	# ggc_pending_trees.179_58->num_elements, D.21643
	leaq	(%rax,%rax), %rdx	#, D.21643
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.180
	movq	%rdx, %rsi	# D.21643,
	movq	%rax, %rdi	# ggc_pending_trees.180,
	call	varray_grow	#
	movq	%rax, ggc_pending_trees(%rip)	# ggc_pending_trees.181, ggc_pending_trees
.L497:
	.loc 1 3045 0 discriminator 2
	movq	ggc_pending_trees(%rip), %rcx	# ggc_pending_trees, ggc_pending_trees.182
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.183
	movq	8(%rax), %rdx	# ggc_pending_trees.183_64->elements_used, D.21643
	leaq	1(%rdx), %rsi	#, D.21643
	movq	%rsi, 8(%rax)	# D.21643, ggc_pending_trees.183_64->elements_used
	addq	$4, %rdx	#, tmp163
	movq	-24(%rbp), %rax	# t__, tmp164
	movq	%rax, (%rcx,%rdx,8)	# tmp164, ggc_pending_trees.182_63->data.tree
.L496:
.LBE28:
.LBB29:
	.loc 1 3046 0 is_stmt 1
	movq	-56(%rbp), %rax	# level, tmp165
	movq	32(%rax), %rax	# level_1->this_block, tmp166
	movq	%rax, -16(%rbp)	# tmp166, t__
	cmpq	$0, -16(%rbp)	#, t__
	je	.L498	#,
	.loc 1 3046 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# t__, tmp167
	movq	%rax, %rdi	# tmp167,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.21642
	jne	.L498	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.184
	movq	8(%rax), %rdx	# ggc_pending_trees.184_70->elements_used, D.21643
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.185
	movq	(%rax), %rax	# ggc_pending_trees.185_72->num_elements, D.21643
	cmpq	%rax, %rdx	# D.21643, D.21643
	jb	.L499	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.186
	movq	(%rax), %rax	# ggc_pending_trees.186_74->num_elements, D.21643
	leaq	(%rax,%rax), %rdx	#, D.21643
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.187
	movq	%rdx, %rsi	# D.21643,
	movq	%rax, %rdi	# ggc_pending_trees.187,
	call	varray_grow	#
	movq	%rax, ggc_pending_trees(%rip)	# ggc_pending_trees.188, ggc_pending_trees
.L499:
	.loc 1 3046 0 discriminator 2
	movq	ggc_pending_trees(%rip), %rcx	# ggc_pending_trees, ggc_pending_trees.189
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.190
	movq	8(%rax), %rdx	# ggc_pending_trees.190_80->elements_used, D.21643
	leaq	1(%rdx), %rsi	#, D.21643
	movq	%rsi, 8(%rax)	# D.21643, ggc_pending_trees.190_80->elements_used
	addq	$4, %rdx	#, tmp168
	movq	-16(%rbp), %rax	# t__, tmp169
	movq	%rax, (%rcx,%rdx,8)	# tmp169, ggc_pending_trees.189_79->data.tree
.L498:
.LBE29:
.LBB30:
	.loc 1 3047 0 is_stmt 1
	movq	-56(%rbp), %rax	# level, tmp170
	movq	64(%rax), %rax	# level_1->parm_order, tmp171
	movq	%rax, -8(%rbp)	# tmp171, t__
	cmpq	$0, -8(%rbp)	#, t__
	je	.L500	#,
	.loc 1 3047 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# t__, tmp172
	movq	%rax, %rdi	# tmp172,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.21642
	jne	.L500	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.191
	movq	8(%rax), %rdx	# ggc_pending_trees.191_86->elements_used, D.21643
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.192
	movq	(%rax), %rax	# ggc_pending_trees.192_88->num_elements, D.21643
	cmpq	%rax, %rdx	# D.21643, D.21643
	jb	.L501	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.193
	movq	(%rax), %rax	# ggc_pending_trees.193_90->num_elements, D.21643
	leaq	(%rax,%rax), %rdx	#, D.21643
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.194
	movq	%rdx, %rsi	# D.21643,
	movq	%rax, %rdi	# ggc_pending_trees.194,
	call	varray_grow	#
	movq	%rax, ggc_pending_trees(%rip)	# ggc_pending_trees.195, ggc_pending_trees
.L501:
	.loc 1 3047 0 discriminator 2
	movq	ggc_pending_trees(%rip), %rcx	# ggc_pending_trees, ggc_pending_trees.196
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.197
	movq	8(%rax), %rdx	# ggc_pending_trees.197_96->elements_used, D.21643
	leaq	1(%rdx), %rsi	#, D.21643
	movq	%rsi, 8(%rax)	# D.21643, ggc_pending_trees.197_96->elements_used
	addq	$4, %rdx	#, tmp173
	movq	-8(%rbp), %rax	# t__, tmp174
	movq	%rax, (%rcx,%rdx,8)	# tmp174, ggc_pending_trees.196_95->data.tree
.L500:
.LBE30:
	.loc 1 3040 0 is_stmt 1
	movq	-56(%rbp), %rax	# level, tmp175
	movq	40(%rax), %rax	# level_1->level_chain, tmp176
	movq	%rax, -56(%rbp)	# tmp176, level
.L489:
	.loc 1 3040 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, level
	jne	.L502	#,
	.loc 1 3049 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	mark_binding_level, .-mark_binding_level
	.section	.rodata
.LC192:
	.string	"_Bool"
.LC193:
	.string	"__g77_integer"
.LC194:
	.string	"__g77_uinteger"
.LC195:
	.string	"__g77_longint"
.LC196:
	.string	"__g77_ulongint"
	.text
	.globl	c_init_decl_processing
	.type	c_init_decl_processing, @function
c_init_decl_processing:
.LFB39:
	.loc 1 3058 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 3063 0
	call	c_parse_init	#
	.loc 1 3065 0
	movq	$0, current_function_decl(%rip)	#, current_function_decl
	.loc 1 3066 0
	movq	$0, named_labels(%rip)	#, named_labels
	.loc 1 3067 0
	movq	$0, current_binding_level(%rip)	#, current_binding_level
	.loc 1 3068 0
	movq	$0, free_binding_level(%rip)	#, free_binding_level
	.loc 1 3071 0
	movl	$0, %edi	#,
	call	pushlevel	#
	.loc 1 3072 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.198
	movq	%rax, global_binding_level(%rip)	# current_binding_level.198, global_binding_level
	.loc 1 3074 0
	movl	flag_signed_char(%rip), %eax	# flag_signed_char, flag_signed_char.199
	movl	%eax, %edi	# flag_signed_char.199,
	call	build_common_tree_nodes	#
	.loc 1 3076 0
	call	c_common_nodes_and_builtins	#
	.loc 1 3078 0
	movq	integer_types+40(%rip), %rax	# integer_types, D.21644
	movq	%rax, c_global_trees+128(%rip)	# D.21644, c_global_trees
	.loc 1 3079 0
	movq	global_trees+96(%rip), %rax	# global_trees, D.21644
	movq	%rax, c_global_trees+136(%rip)	# D.21644, c_global_trees
	.loc 1 3080 0
	movq	global_trees+88(%rip), %rax	# global_trees, D.21644
	movq	%rax, c_global_trees+144(%rip)	# D.21644, c_global_trees
	.loc 1 3082 0
	movl	$8, %edi	#,
	call	make_unsigned_type	#
	movq	%rax, c_global_trees+152(%rip)	# D.21644, c_global_trees
	.loc 1 3083 0
	movq	c_global_trees+152(%rip), %rax	# c_global_trees, D.21644
	movb	$11, 16(%rax)	#, _7->common.code
	.loc 1 3084 0
	movq	c_global_trees+152(%rip), %rbx	# c_global_trees, D.21644
	movl	$0, %esi	#,
	movl	$1, %edi	#,
	call	build_int_2_wide	#
	movq	%rax, 112(%rbx)	# D.21644, _8->type.maxval
	.loc 1 3085 0
	movq	c_global_trees+152(%rip), %rax	# c_global_trees, D.21644
	movq	112(%rax), %rax	# _10->type.maxval, D.21644
	movq	c_global_trees+152(%rip), %rdx	# c_global_trees, D.21644
	movq	%rdx, 8(%rax)	# D.21644, _11->common.type
	.loc 1 3086 0
	movq	c_global_trees+152(%rip), %rax	# c_global_trees, D.21644
	movzwl	60(%rax), %edx	# _13->type.precision, tmp134
	andw	$-512, %dx	#, tmp135
	orl	$1, %edx	#, tmp136
	movw	%dx, 60(%rax)	# tmp136, _13->type.precision
	.loc 1 3087 0
	movq	c_global_trees+152(%rip), %rbx	# c_global_trees, D.21644
	movl	$.LC192, %edi	#,
	call	get_identifier	#
	movq	%rbx, %rdx	# D.21644,
	movq	%rax, %rsi	# D.21644,
	movl	$33, %edi	#,
	call	build_decl	#
	movq	%rax, %rdi	# D.21644,
	call	pushdecl	#
	.loc 1 3089 0
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	build_int_2_wide	#
	movq	%rax, c_global_trees+168(%rip)	# D.21644, c_global_trees
	.loc 1 3090 0
	movq	c_global_trees+168(%rip), %rax	# c_global_trees, D.21644
	movq	c_global_trees+152(%rip), %rdx	# c_global_trees, D.21644
	movq	%rdx, 8(%rax)	# D.21644, _18->common.type
	.loc 1 3091 0
	movl	$0, %esi	#,
	movl	$1, %edi	#,
	call	build_int_2_wide	#
	movq	%rax, c_global_trees+160(%rip)	# D.21644, c_global_trees
	.loc 1 3092 0
	movq	c_global_trees+160(%rip), %rax	# c_global_trees, D.21644
	movq	c_global_trees+152(%rip), %rdx	# c_global_trees, D.21644
	movq	%rdx, 8(%rax)	# D.21644, _21->common.type
	.loc 1 3094 0
	movq	global_trees+256(%rip), %rax	# global_trees, tmp137
	movq	%rax, -40(%rbp)	# tmp137, endlink
	.loc 1 3095 0
	movq	global_trees+224(%rip), %rax	# global_trees, D.21644
	movq	-40(%rbp), %rdx	# endlink, tmp138
	movq	%rdx, %rsi	# tmp138,
	movq	%rax, %rdi	# D.21644,
	call	build_function_type	#
	movq	%rax, -32(%rbp)	# tmp139, ptr_ftype_void
	.loc 1 3097 0
	movq	global_trees+224(%rip), %rax	# global_trees, D.21644
	movq	-40(%rbp), %rdx	# endlink, tmp140
	movq	%rax, %rsi	# D.21644,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.21644
	movq	global_trees+224(%rip), %rax	# global_trees, D.21644
	movq	%rdx, %rsi	# D.21644,
	movq	%rax, %rdi	# D.21644,
	call	build_function_type	#
	movq	%rax, -24(%rbp)	# tmp141, ptr_ftype_ptr
	.loc 1 3103 0
	movq	global_trees+192(%rip), %rax	# global_trees, D.21644
	movzwl	60(%rax), %eax	# *_30, tmp144
	andw	$511, %ax	#, D.21645
	movl	%eax, %edx	# D.21645, D.21645
	.loc 1 3104 0
	movq	integer_types+56(%rip), %rax	# integer_types, D.21644
	movzwl	60(%rax), %eax	# *_32, tmp147
	andw	$511, %ax	#, D.21645
	.loc 1 3103 0
	cmpw	%ax, %dx	# D.21645, D.21645
	jne	.L504	#,
	.loc 1 3106 0
	movq	integer_types+56(%rip), %rax	# integer_types, D.21644
	movq	%rax, c_global_trees+184(%rip)	# D.21644, c_global_trees
	.loc 1 3107 0
	movq	integer_types+64(%rip), %rax	# integer_types, D.21644
	movq	%rax, c_global_trees+192(%rip)	# D.21644, c_global_trees
	jmp	.L505	#
.L504:
	.loc 1 3109 0
	movq	global_trees+192(%rip), %rax	# global_trees, D.21644
	movzwl	60(%rax), %eax	# *_36, tmp150
	andw	$511, %ax	#, D.21645
	movl	%eax, %edx	# D.21645, D.21645
	.loc 1 3110 0
	movq	integer_types+40(%rip), %rax	# integer_types, D.21644
	movzwl	60(%rax), %eax	# *_38, tmp153
	andw	$511, %ax	#, D.21645
	.loc 1 3109 0
	cmpw	%ax, %dx	# D.21645, D.21645
	jne	.L506	#,
	.loc 1 3112 0
	movq	integer_types+40(%rip), %rax	# integer_types, D.21644
	movq	%rax, c_global_trees+184(%rip)	# D.21644, c_global_trees
	.loc 1 3113 0
	movq	integer_types+48(%rip), %rax	# integer_types, D.21644
	movq	%rax, c_global_trees+192(%rip)	# D.21644, c_global_trees
	jmp	.L505	#
.L506:
	.loc 1 3116 0
	movq	$0, c_global_trees+192(%rip)	#, c_global_trees
	movq	c_global_trees+192(%rip), %rax	# c_global_trees, D.21644
	movq	%rax, c_global_trees+184(%rip)	# D.21644, c_global_trees
.L505:
	.loc 1 3118 0
	movq	c_global_trees+184(%rip), %rax	# c_global_trees, D.21644
	testq	%rax, %rax	# D.21644
	je	.L507	#,
	.loc 1 3120 0
	movq	c_global_trees+184(%rip), %rbx	# c_global_trees, D.21644
	movl	$.LC193, %edi	#,
	call	get_identifier	#
	movq	%rbx, %rdx	# D.21644,
	movq	%rax, %rsi	# D.21644,
	movl	$33, %edi	#,
	call	build_decl	#
	movq	%rax, %rdi	# D.21644,
	call	pushdecl	#
	.loc 1 3122 0
	movq	c_global_trees+192(%rip), %rbx	# c_global_trees, D.21644
	movl	$.LC194, %edi	#,
	call	get_identifier	#
	movq	%rbx, %rdx	# D.21644,
	movq	%rax, %rsi	# D.21644,
	movl	$33, %edi	#,
	call	build_decl	#
	movq	%rax, %rdi	# D.21644,
	call	pushdecl	#
.L507:
	.loc 1 3126 0
	movq	global_trees+192(%rip), %rax	# global_trees, D.21644
	movzwl	60(%rax), %eax	# *_50, tmp156
	andw	$511, %ax	#, D.21645
	movzwl	%ax, %eax	# D.21645, D.21646
	leal	(%rax,%rax), %edx	#, D.21646
	.loc 1 3127 0
	movq	integer_types+56(%rip), %rax	# integer_types, D.21644
	movzwl	60(%rax), %eax	# *_54, tmp159
	andw	$511, %ax	#, D.21645
	movzwl	%ax, %eax	# D.21645, D.21646
	.loc 1 3126 0
	cmpl	%eax, %edx	# D.21646, D.21646
	jne	.L508	#,
	.loc 1 3129 0
	movq	integer_types+56(%rip), %rax	# integer_types, D.21644
	movq	%rax, c_global_trees+200(%rip)	# D.21644, c_global_trees
	.loc 1 3130 0
	movq	integer_types+64(%rip), %rax	# integer_types, D.21644
	movq	%rax, c_global_trees+208(%rip)	# D.21644, c_global_trees
	jmp	.L509	#
.L508:
	.loc 1 3132 0
	movq	global_trees+192(%rip), %rax	# global_trees, D.21644
	movzwl	60(%rax), %eax	# *_59, tmp162
	andw	$511, %ax	#, D.21645
	movzwl	%ax, %eax	# D.21645, D.21646
	leal	(%rax,%rax), %edx	#, D.21646
	.loc 1 3133 0
	movq	integer_types+72(%rip), %rax	# integer_types, D.21644
	movzwl	60(%rax), %eax	# *_63, tmp165
	andw	$511, %ax	#, D.21645
	movzwl	%ax, %eax	# D.21645, D.21646
	.loc 1 3132 0
	cmpl	%eax, %edx	# D.21646, D.21646
	jne	.L510	#,
	.loc 1 3135 0
	movq	integer_types+72(%rip), %rax	# integer_types, D.21644
	movq	%rax, c_global_trees+200(%rip)	# D.21644, c_global_trees
	.loc 1 3136 0
	movq	integer_types+80(%rip), %rax	# integer_types, D.21644
	movq	%rax, c_global_trees+208(%rip)	# D.21644, c_global_trees
	jmp	.L509	#
.L510:
	.loc 1 3139 0
	movq	$0, c_global_trees+208(%rip)	#, c_global_trees
	movq	c_global_trees+208(%rip), %rax	# c_global_trees, D.21644
	movq	%rax, c_global_trees+200(%rip)	# D.21644, c_global_trees
.L509:
	.loc 1 3141 0
	movq	c_global_trees+200(%rip), %rax	# c_global_trees, D.21644
	testq	%rax, %rax	# D.21644
	je	.L511	#,
	.loc 1 3143 0
	movq	c_global_trees+200(%rip), %rbx	# c_global_trees, D.21644
	movl	$.LC195, %edi	#,
	call	get_identifier	#
	movq	%rbx, %rdx	# D.21644,
	movq	%rax, %rsi	# D.21644,
	movl	$33, %edi	#,
	call	build_decl	#
	movq	%rax, %rdi	# D.21644,
	call	pushdecl	#
	.loc 1 3145 0
	movq	c_global_trees+208(%rip), %rbx	# c_global_trees, D.21644
	movl	$.LC196, %edi	#,
	call	get_identifier	#
	movq	%rbx, %rdx	# D.21644,
	movq	%rax, %rsi	# D.21644,
	movl	$33, %edi	#,
	call	build_decl	#
	movq	%rax, %rdi	# D.21644,
	call	pushdecl	#
.L511:
	.loc 1 3149 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.200
	movl	%eax, pedantic_lvalues(%rip)	# pedantic.200, pedantic_lvalues
	.loc 1 3151 0
	movq	$c_make_fname_decl, make_fname_decl(%rip)	#, make_fname_decl
	.loc 1 3152 0
	call	start_fname_decls	#
	.loc 1 3154 0
	movq	$finish_incomplete_decl, incomplete_decl_finalize_hook(%rip)	#, incomplete_decl_finalize_hook
	.loc 1 3158 0
	movl	$32, %esi	#,
	movl	$c_global_trees, %edi	#,
	call	ggc_add_tree_root	#
	.loc 1 3159 0
	movl	$mark_stmt_tree, %ecx	#,
	movl	$32, %edx	#,
	movl	$1, %esi	#,
	movl	$c_stmt_tree, %edi	#,
	call	ggc_add_root	#
	.loc 1 3160 0
	movl	$1, %esi	#,
	movl	$c_scope_stmt_stack, %edi	#,
	call	ggc_add_tree_root	#
	.loc 1 3161 0
	movl	$1, %esi	#,
	movl	$named_labels, %edi	#,
	call	ggc_add_tree_root	#
	.loc 1 3162 0
	movl	$1, %esi	#,
	movl	$shadowed_labels, %edi	#,
	call	ggc_add_tree_root	#
	.loc 1 3163 0
	movl	$mark_binding_level, %ecx	#,
	movl	$8, %edx	#,
	movl	$1, %esi	#,
	movl	$current_binding_level, %edi	#,
	call	ggc_add_root	#
	.loc 1 3165 0
	movl	$mark_binding_level, %ecx	#,
	movl	$8, %edx	#,
	movl	$1, %esi	#,
	movl	$label_level_chain, %edi	#,
	call	ggc_add_root	#
	.loc 1 3167 0
	movl	$1, %esi	#,
	movl	$static_ctors, %edi	#,
	call	ggc_add_tree_root	#
	.loc 1 3168 0
	movl	$1, %esi	#,
	movl	$static_dtors, %edi	#,
	call	ggc_add_tree_root	#
	.loc 1 3169 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	c_init_decl_processing, .-c_init_decl_processing
	.type	c_make_fname_decl, @function
c_make_fname_decl:
.LFB40:
	.loc 1 3183 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# id, id
	movl	%esi, -76(%rbp)	# type_dep, type_dep
	.loc 1 3184 0
	movl	-76(%rbp), %eax	# type_dep, tmp70
	movl	%eax, %edi	# tmp70,
	call	fname_as_string	#
	movq	%rax, -56(%rbp)	# tmp71, name
	.loc 1 3186 0
	movq	-56(%rbp), %rax	# name, tmp72
	movq	%rax, %rdi	# tmp72,
	call	strlen	#
	movq	%rax, -48(%rbp)	# tmp73, length
	.loc 1 3189 0
	movq	-48(%rbp), %rax	# length, length.201
	movl	$0, %esi	#,
	movq	%rax, %rdi	# length.201,
	call	size_int_wide	#
	movq	%rax, %rdi	# D.21652,
	call	build_index_type	#
	movq	%rax, %rbx	#, D.21652
	movq	integer_types(%rip), %rax	# integer_types, D.21652
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.21652,
	call	build_qualified_type	#
	.loc 1 3188 0
	movq	%rbx, %rsi	# D.21652,
	movq	%rax, %rdi	# D.21652,
	call	build_array_type	#
	movq	%rax, -40(%rbp)	# tmp74, type
	.loc 1 3192 0
	movq	-40(%rbp), %rdx	# type, tmp75
	movq	-72(%rbp), %rax	# id, tmp76
	movq	%rax, %rsi	# tmp76,
	movl	$34, %edi	#,
	call	build_decl	#
	movq	%rax, -32(%rbp)	# tmp77, decl
	.loc 1 3194 0
	movq	current_function_decl(%rip), %rdx	# current_function_decl, current_function_decl.202
	movq	-32(%rbp), %rax	# decl, tmp78
	movq	%rdx, 80(%rax)	# current_function_decl.202, decl_11->decl.context
	.loc 1 3196 0
	movq	-32(%rbp), %rax	# decl, tmp79
	movzbl	18(%rax), %edx	#, tmp82
	orl	$4, %edx	#, tmp83
	movb	%dl, 18(%rax)	# tmp83,
	.loc 1 3197 0
	movq	-32(%rbp), %rax	# decl, tmp84
	movzbl	17(%rax), %edx	#, tmp87
	orl	$16, %edx	#, tmp88
	movb	%dl, 17(%rax)	# tmp88,
	.loc 1 3198 0
	movq	-32(%rbp), %rax	# decl, tmp89
	movzbl	50(%rax), %edx	#, tmp92
	orl	$64, %edx	#, tmp93
	movb	%dl, 50(%rax)	# tmp93,
	.loc 1 3200 0
	movq	-48(%rbp), %rax	# length, tmp94
	addl	$1, %eax	#, D.21653
	movq	-56(%rbp), %rdx	# name, tmp95
	movq	%rdx, %rsi	# tmp95,
	movl	%eax, %edi	# D.21654,
	call	build_string	#
	movq	%rax, -24(%rbp)	# tmp96, init
	.loc 1 3201 0
	movq	-24(%rbp), %rax	# init, tmp97
	movq	-40(%rbp), %rdx	# type, tmp98
	movq	%rdx, 8(%rax)	# tmp98, init_16->common.type
	.loc 1 3202 0
	movq	-32(%rbp), %rax	# decl, tmp99
	movq	-24(%rbp), %rdx	# init, tmp100
	movq	%rdx, 104(%rax)	# tmp100, decl_11->decl.initial
	.loc 1 3204 0
	movq	-32(%rbp), %rax	# decl, tmp101
	movzbl	18(%rax), %edx	#, tmp104
	orl	$1, %edx	#, tmp105
	movb	%dl, 18(%rax)	# tmp105,
	.loc 1 3206 0
	movq	-24(%rbp), %rcx	# init, tmp106
	movq	-32(%rbp), %rax	# decl, tmp107
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp106,
	movq	%rax, %rdi	# tmp107,
	call	finish_decl	#
	.loc 1 3208 0
	movq	-32(%rbp), %rax	# decl, D.21655
	.loc 1 3209 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	c_make_fname_decl, .-c_make_fname_decl
	.globl	builtin_function
	.type	builtin_function, @function
builtin_function:
.LFB41:
	.loc 1 3226 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# name, name
	movq	%rsi, -48(%rbp)	# type, type
	movl	%edx, -52(%rbp)	# function_code, function_code
	movl	%ecx, -56(%rbp)	# class, class
	movq	%r8, -64(%rbp)	# library_name, library_name
	.loc 1 3227 0
	movq	-40(%rbp), %rax	# name, tmp82
	movq	%rax, %rdi	# tmp82,
	call	get_identifier	#
	movq	-48(%rbp), %rdx	# type, tmp83
	movq	%rax, %rsi	# D.21656,
	movl	$30, %edi	#,
	call	build_decl	#
	movq	%rax, -24(%rbp)	# decl.203, decl
	.loc 1 3228 0
	movq	-24(%rbp), %rax	# decl, decl.204
	movzbl	49(%rax), %edx	#, tmp86
	orl	$1, %edx	#, tmp87
	movb	%dl, 49(%rax)	# tmp87,
	.loc 1 3229 0
	movq	-24(%rbp), %rax	# decl, decl.205
	movzbl	18(%rax), %edx	#, tmp90
	orl	$8, %edx	#, tmp91
	movb	%dl, 18(%rax)	# tmp91,
	.loc 1 3233 0
	movl	flag_traditional(%rip), %eax	# flag_traditional, flag_traditional.206
	testl	%eax, %eax	# flag_traditional.206
	je	.L515	#,
	.loc 1 3233 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# name, tmp92
	movzbl	(%rax), %eax	# *name_1(D), D.21657
	cmpb	$95, %al	#, D.21657
	je	.L515	#,
	.loc 1 3234 0 is_stmt 1
	movq	-24(%rbp), %rax	# decl, decl.207
	movzbl	17(%rax), %edx	#, tmp95
	orl	$32, %edx	#, tmp96
	movb	%dl, 17(%rax)	# tmp96,
.L515:
	.loc 1 3235 0
	cmpq	$0, -64(%rbp)	#, library_name
	je	.L516	#,
	.loc 1 3236 0
	movq	-24(%rbp), %rbx	# decl, decl.208
	movq	-64(%rbp), %rax	# library_name, tmp97
	movq	%rax, %rdi	# tmp97,
	call	get_identifier	#
	movq	%rax, 120(%rbx)	# D.21656, decl.208_11->decl.assembler_name
.L516:
	.loc 1 3237 0
	movq	-24(%rbp), %rax	# decl, decl.209
	movl	$0, %esi	#,
	movq	%rax, %rdi	# decl.209,
	call	make_decl_rtl	#
	.loc 1 3238 0
	movq	-24(%rbp), %rax	# decl, decl.210
	movq	%rax, %rdi	# decl.210,
	call	pushdecl	#
	.loc 1 3239 0
	movq	-24(%rbp), %rax	# decl, decl.211
	movl	-56(%rbp), %edx	# class, tmp98
	andl	$3, %edx	#, D.21659
	andl	$3, %edx	#, tmp100
	movl	%edx, %ecx	# tmp100, tmp101
	sall	$5, %ecx	#, tmp101
	movzbl	51(%rax), %edx	#, tmp102
	andl	$-97, %edx	#, tmp103
	orl	%ecx, %edx	# tmp101, tmp104
	movb	%dl, 51(%rax)	# tmp104,
	.loc 1 3240 0
	movq	-24(%rbp), %rax	# decl, decl.212
	movl	-52(%rbp), %edx	# function_code, function_code.213
	movl	%edx, 56(%rax)	# function_code.213, decl.212_19->decl.u1.f
	.loc 1 3243 0
	cmpl	$57, -52(%rbp)	#, function_code
	je	.L517	#,
	.loc 1 3243 0 is_stmt 0 discriminator 1
	cmpl	$88, -52(%rbp)	#, function_code
	jne	.L518	#,
.L517:
	.loc 1 3244 0 is_stmt 1
	movq	-24(%rbp), %rax	# decl, decl.214
	movzbl	17(%rax), %edx	#, tmp107
	orl	$8, %edx	#, tmp108
	movb	%dl, 17(%rax)	# tmp108,
.L518:
	.loc 1 3248 0
	movq	-40(%rbp), %rax	# name, tmp109
	movzbl	(%rax), %eax	# *name_1(D), D.21657
	cmpb	$95, %al	#, D.21657
	jne	.L519	#,
	.loc 1 3248 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# name, tmp110
	addq	$1, %rax	#, D.21660
	movzbl	(%rax), %eax	# *_24, D.21657
	cmpb	$95, %al	#, D.21657
	je	.L520	#,
.L519:
	.loc 1 3249 0 is_stmt 1
	movq	-24(%rbp), %rax	# decl, decl.215
	movzbl	53(%rax), %edx	#, tmp113
	orl	$1, %edx	#, tmp114
	movb	%dl, 53(%rax)	# tmp114,
.L520:
	.loc 1 3252 0
	leaq	-24(%rbp), %rax	#, tmp115
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp115,
	call	decl_attributes	#
	.loc 1 3254 0
	movq	-24(%rbp), %rax	# decl, D.21661
	.loc 1 3255 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	builtin_function, .-builtin_function
	.globl	insert_default_attributes
	.type	insert_default_attributes, @function
insert_default_attributes:
.LFB42:
	.loc 1 3263 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# decl, decl
	.loc 1 3264 0
	movq	-8(%rbp), %rax	# decl, tmp61
	movzbl	18(%rax), %eax	# *decl_1(D), D.21662
	andl	$8, %eax	#, D.21662
	testb	%al, %al	# D.21662
	jne	.L523	#,
	.loc 1 3265 0
	jmp	.L522	#
.L523:
	.loc 1 3266 0
	movq	-8(%rbp), %rax	# decl, tmp62
	movq	%rax, %rdi	# tmp62,
	call	c_common_insert_default_attributes	#
.L522:
	.loc 1 3267 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	insert_default_attributes, .-insert_default_attributes
	.globl	shadow_tag
	.type	shadow_tag, @function
shadow_tag:
.LFB43:
	.loc 1 3280 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# declspecs, declspecs
	.loc 1 3281 0
	movq	-8(%rbp), %rax	# declspecs, tmp59
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp59,
	call	shadow_tag_warned	#
	.loc 1 3282 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	shadow_tag, .-shadow_tag
	.section	.rodata
	.align 8
.LC197:
	.string	"unnamed struct/union that defines no instances"
	.align 8
.LC198:
	.string	"useless keyword or type name in empty declaration"
	.align 8
.LC199:
	.string	"two types specified in one empty declaration"
.LC200:
	.string	"empty declaration"
	.text
	.globl	shadow_tag_warned
	.type	shadow_tag_warned, @function
shadow_tag_warned:
.LFB44:
	.loc 1 3290 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# declspecs, declspecs
	movl	%esi, -76(%rbp)	# warned, warned
	.loc 1 3291 0
	movl	$0, -56(%rbp)	#, found_tag
	.loc 1 3295 0
	movq	$0, pending_invalid_xref(%rip)	#, pending_invalid_xref
	.loc 1 3299 0
	leaq	-40(%rbp), %rdx	#, tmp62
	leaq	-48(%rbp), %rcx	#, tmp63
	movq	-72(%rbp), %rax	# declspecs, tmp64
	movq	%rcx, %rsi	# tmp63,
	movq	%rax, %rdi	# tmp64,
	call	split_specs_attrs	#
	.loc 1 3301 0
	movq	-48(%rbp), %rax	# specs, tmp65
	movq	%rax, -32(%rbp)	# tmp65, link
	jmp	.L527	#
.L534:
.LBB31:
	.loc 1 3303 0
	movq	-32(%rbp), %rax	# link, tmp66
	movq	32(%rax), %rax	# link_7->list.value, tmp67
	movq	%rax, -24(%rbp)	# tmp67, value
	.loc 1 3304 0
	movq	-24(%rbp), %rax	# value, tmp68
	movzbl	16(%rax), %eax	# value_12->common.code, D.21663
	movzbl	%al, %eax	# D.21663, tmp69
	movl	%eax, -52(%rbp)	# tmp69, code
	.loc 1 3306 0
	cmpl	$20, -52(%rbp)	#, code
	je	.L528	#,
	.loc 1 3306 0 is_stmt 0 discriminator 1
	cmpl	$21, -52(%rbp)	#, code
	je	.L528	#,
	cmpl	$10, -52(%rbp)	#, code
	jne	.L529	#,
.L528:
.LBB32:
	.loc 1 3310 0 is_stmt 1
	movq	-24(%rbp), %rax	# value, tmp70
	movq	%rax, %rdi	# tmp70,
	call	lookup_tag_reverse	#
	movq	%rax, -16(%rbp)	# tmp71, name
	.loc 1 3313 0
	addl	$1, -56(%rbp)	#, found_tag
	.loc 1 3315 0
	cmpq	$0, -16(%rbp)	#, name
	jne	.L530	#,
	.loc 1 3317 0
	cmpl	$1, -76(%rbp)	#, warned
	je	.L532	#,
	.loc 1 3317 0 is_stmt 0 discriminator 1
	cmpl	$10, -52(%rbp)	#, code
	je	.L532	#,
	.loc 1 3320 0 is_stmt 1
	movl	$.LC197, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
	.loc 1 3321 0
	movl	$1, -76(%rbp)	#, warned
.LBE32:
	.loc 1 3309 0
	jmp	.L533	#
.L530:
.LBB33:
	.loc 1 3326 0
	movq	current_binding_level(%rip), %rdx	# current_binding_level, current_binding_level.216
	movq	-16(%rbp), %rsi	# name, tmp72
	movl	-52(%rbp), %eax	# code, tmp73
	movl	$1, %ecx	#,
	movl	%eax, %edi	# tmp73,
	call	lookup_tag	#
	movq	%rax, -8(%rbp)	# tmp74, t
	.loc 1 3328 0
	cmpq	$0, -8(%rbp)	#, t
	jne	.L532	#,
	.loc 1 3330 0
	movl	-52(%rbp), %eax	# code, tmp75
	movl	%eax, %edi	# tmp75,
	call	make_node	#
	movq	%rax, -8(%rbp)	# tmp76, t
	.loc 1 3331 0
	movq	-8(%rbp), %rdx	# t, tmp77
	movq	-16(%rbp), %rax	# name, tmp78
	movq	%rdx, %rsi	# tmp77,
	movq	%rax, %rdi	# tmp78,
	call	pushtag	#
.LBE33:
	.loc 1 3309 0
	jmp	.L533	#
.L532:
	jmp	.L533	#
.L529:
	.loc 1 3337 0
	cmpl	$0, -76(%rbp)	#, warned
	jne	.L533	#,
	.loc 1 3337 0 is_stmt 0 discriminator 1
	movl	in_system_header(%rip), %eax	# in_system_header, in_system_header.217
	testl	%eax, %eax	# in_system_header.217
	jne	.L533	#,
	.loc 1 3339 0 is_stmt 1
	movl	$.LC198, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	.loc 1 3340 0
	movl	$2, -76(%rbp)	#, warned
.L533:
.LBE31:
	.loc 1 3301 0
	movq	-32(%rbp), %rax	# link, tmp79
	movq	(%rax), %rax	# link_7->common.chain, tmp80
	movq	%rax, -32(%rbp)	# tmp80, link
.L527:
	.loc 1 3301 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, link
	jne	.L534	#,
	.loc 1 3345 0 is_stmt 1
	cmpl	$1, -56(%rbp)	#, found_tag
	jle	.L535	#,
	.loc 1 3346 0
	movl	$.LC199, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.L535:
	.loc 1 3348 0
	cmpl	$1, -76(%rbp)	#, warned
	je	.L526	#,
	.loc 1 3350 0
	cmpl	$0, -56(%rbp)	#, found_tag
	jne	.L526	#,
	.loc 1 3351 0
	movl	$.LC200, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L526:
	.loc 1 3353 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	shadow_tag_warned, .-shadow_tag_warned
	.section	.rodata
	.align 8
.LC201:
	.string	"ISO C89 does not support `static' or type qualifiers in parameter array declarators"
	.align 8
.LC202:
	.string	"ISO C89 does not support `[*]' array declarators"
	.align 8
.LC203:
	.string	"GCC does not yet properly implement `[*]' array declarators"
	.text
	.globl	build_array_declarator
	.type	build_array_declarator, @function
build_array_declarator:
.LFB45:
	.loc 1 3373 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# expr, expr
	movq	%rsi, -32(%rbp)	# quals, quals
	movl	%edx, -36(%rbp)	# static_p, static_p
	movl	%ecx, -40(%rbp)	# vla_unspec_p, vla_unspec_p
	.loc 1 3375 0
	movq	-24(%rbp), %rax	# expr, tmp64
	movq	%rax, %rdx	# tmp64,
	movl	$0, %esi	#,
	movl	$43, %edi	#,
	movl	$0, %eax	#,
	call	build_nt	#
	movq	%rax, -8(%rbp)	# tmp65, decl
	.loc 1 3376 0
	movq	-8(%rbp), %rax	# decl, tmp66
	movq	-32(%rbp), %rdx	# quals, tmp67
	movq	%rdx, 8(%rax)	# tmp67, decl_2->common.type
	.loc 1 3377 0
	cmpl	$0, -36(%rbp)	#, static_p
	setne	%dl	#, D.21668
	movq	-8(%rbp), %rax	# decl, tmp68
	andl	$1, %edx	#, tmp70
	leal	0(,%rdx,4), %ecx	#, tmp71
	movzbl	18(%rax), %edx	#, tmp72
	andl	$-5, %edx	#, tmp73
	orl	%ecx, %edx	# tmp71, tmp74
	movb	%dl, 18(%rax)	# tmp74,
	.loc 1 3378 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.218
	testl	%eax, %eax	# pedantic.218
	je	.L538	#,
	.loc 1 3378 0 is_stmt 0 discriminator 1
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.219
	testl	%eax, %eax	# flag_isoc99.219
	jne	.L538	#,
	.loc 1 3380 0 is_stmt 1
	cmpl	$0, -36(%rbp)	#, static_p
	jne	.L539	#,
	.loc 1 3380 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, quals
	je	.L540	#,
.L539:
	.loc 1 3381 0 is_stmt 1
	movl	$.LC201, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L540:
	.loc 1 3382 0
	cmpl	$0, -40(%rbp)	#, vla_unspec_p
	je	.L538	#,
	.loc 1 3383 0
	movl	$.LC202, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L538:
	.loc 1 3385 0
	cmpl	$0, -40(%rbp)	#, vla_unspec_p
	je	.L541	#,
	.loc 1 3386 0
	movl	$.LC203, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L541:
	.loc 1 3387 0
	movq	-8(%rbp), %rax	# decl, D.21669
	.loc 1 3388 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	build_array_declarator, .-build_array_declarator
	.section	.rodata
	.align 8
.LC204:
	.string	"static or type qualifiers in abstract declarator"
	.text
	.globl	set_array_declarator_type
	.type	set_array_declarator_type, @function
set_array_declarator_type:
.LFB46:
	.loc 1 3402 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# decl, decl
	movq	%rsi, -16(%rbp)	# type, type
	movl	%edx, -20(%rbp)	# abstract_p, abstract_p
	.loc 1 3403 0
	movq	-8(%rbp), %rax	# decl, tmp64
	movq	-16(%rbp), %rdx	# type, tmp65
	movq	%rdx, 32(%rax)	# tmp65, decl_1(D)->exp.operands
	.loc 1 3404 0
	cmpl	$0, -20(%rbp)	#, abstract_p
	je	.L544	#,
	.loc 1 3404 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# decl, tmp66
	movq	8(%rax), %rax	# decl_1(D)->common.type, D.21673
	testq	%rax, %rax	# D.21673
	jne	.L545	#,
	movq	-8(%rbp), %rax	# decl, tmp67
	movzbl	18(%rax), %eax	# *decl_1(D), D.21674
	andl	$4, %eax	#, D.21674
	testb	%al, %al	# D.21674
	je	.L544	#,
.L545:
	.loc 1 3405 0 is_stmt 1
	movl	$.LC204, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.L544:
	.loc 1 3406 0
	movq	-8(%rbp), %rax	# decl, D.21675
	.loc 1 3407 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	set_array_declarator_type, .-set_array_declarator_type
	.globl	groktypename
	.type	groktypename, @function
groktypename:
.LFB47:
	.loc 1 3414 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# typename, typename
	.loc 1 3417 0
	movq	-24(%rbp), %rax	# typename, typename.220
	movzbl	16(%rax), %eax	# typename.220_2->common.code, D.21678
	cmpb	$2, %al	#, D.21678
	je	.L548	#,
	.loc 1 3418 0
	movq	-24(%rbp), %rax	# typename, D.21677
	jmp	.L550	#
.L548:
	.loc 1 3420 0
	movq	-24(%rbp), %rax	# typename, typename.221
	movq	24(%rax), %rax	# typename.221_5->list.purpose, D.21679
	leaq	-8(%rbp), %rdx	#, tmp70
	leaq	-16(%rbp), %rcx	#, tmp71
	movq	%rcx, %rsi	# tmp71,
	movq	%rax, %rdi	# D.21679,
	call	split_specs_attrs	#
	.loc 1 3422 0
	movq	-16(%rbp), %rsi	# specs, specs.222
	movq	-24(%rbp), %rax	# typename, typename.223
	movq	32(%rax), %rax	# typename.223_8->list.value, D.21679
	movl	$0, %ecx	#,
	movl	$5, %edx	#,
	movq	%rax, %rdi	# D.21679,
	call	grokdeclarator	#
	movq	%rax, -24(%rbp)	# typename.224, typename
	.loc 1 3425 0
	movq	-8(%rbp), %rcx	# attrs, attrs.225
	leaq	-24(%rbp), %rax	#, tmp72
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# attrs.225,
	movq	%rax, %rdi	# tmp72,
	call	decl_attributes	#
	.loc 1 3427 0
	movq	-24(%rbp), %rax	# typename, D.21677
.L550:
	.loc 1 3428 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	groktypename, .-groktypename
	.globl	groktypename_in_parm_context
	.type	groktypename_in_parm_context, @function
groktypename_in_parm_context:
.LFB48:
	.loc 1 3435 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# typename, typename
	.loc 1 3436 0
	movq	-8(%rbp), %rax	# typename, tmp64
	movzbl	16(%rax), %eax	# typename_2(D)->common.code, D.21681
	cmpb	$2, %al	#, D.21681
	je	.L552	#,
	.loc 1 3437 0
	movq	-8(%rbp), %rax	# typename, D.21680
	jmp	.L553	#
.L552:
	.loc 1 3438 0
	movq	-8(%rbp), %rax	# typename, tmp65
	movq	24(%rax), %rsi	# typename_2(D)->list.purpose, D.21682
	movq	-8(%rbp), %rax	# typename, tmp66
	movq	32(%rax), %rax	# typename_2(D)->list.value, D.21682
	movl	$0, %ecx	#,
	movl	$2, %edx	#,
	movq	%rax, %rdi	# D.21682,
	call	grokdeclarator	#
.L553:
	.loc 1 3441 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	groktypename_in_parm_context, .-groktypename_in_parm_context
	.section	.rodata
.LC205:
	.string	"deprecated"
.LC206:
	.string	"`%s' is usually a function"
.LC207:
	.string	"typedef `%s' is initialized"
	.align 8
.LC208:
	.string	"function `%s' is initialized like a variable"
.LC209:
	.string	"parameter `%s' is initialized"
	.align 8
.LC210:
	.string	"variable-sized object may not be initialized"
	.align 8
.LC211:
	.string	"variable `%s' has initializer but incomplete type"
	.align 8
.LC212:
	.string	"elements of array `%s' have incomplete type"
	.align 8
.LC213:
	.string	"inline function `%s' given attribute noinline"
	.text
	.globl	start_decl
	.type	start_decl, @function
start_decl:
.LFB49:
	.loc 1 3463 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# declarator, declarator
	movq	%rsi, -32(%rbp)	# declspecs, declspecs
	movl	%edx, -36(%rbp)	# initialized, initialized
	movq	%rcx, -48(%rbp)	# attributes, attributes
	.loc 1 3469 0
	movq	-48(%rbp), %rax	# attributes, tmp157
	movq	%rax, %rsi	# tmp157,
	movl	$.LC205, %edi	#,
	call	lookup_attribute	#
	testq	%rax, %rax	# D.21683
	je	.L555	#,
	.loc 1 3470 0
	movl	$1, deprecated_state(%rip)	#, deprecated_state
.L555:
	.loc 1 3472 0
	movl	-36(%rbp), %edx	# initialized, tmp158
	movq	-32(%rbp), %rsi	# declspecs, tmp159
	movq	-24(%rbp), %rax	# declarator, tmp160
	movl	%edx, %ecx	# tmp158,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp160,
	call	grokdeclarator	#
	movq	%rax, -16(%rbp)	# decl.226, decl
	.loc 1 3475 0
	movl	$0, deprecated_state(%rip)	#, deprecated_state
	.loc 1 3477 0
	movl	warn_main(%rip), %eax	# warn_main, warn_main.227
	testl	%eax, %eax	# warn_main.227
	jle	.L556	#,
	.loc 1 3477 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# decl, decl.228
	movzbl	16(%rax), %eax	# decl.228_11->common.code, D.21684
	cmpb	$30, %al	#, D.21684
	je	.L556	#,
	.loc 1 3478 0 is_stmt 1
	movq	-16(%rbp), %rax	# decl, decl.229
	movq	72(%rax), %rdx	# decl.229_13->decl.name, D.21683
	movq	global_trees+400(%rip), %rax	# global_trees, D.21683
	cmpq	%rax, %rdx	# D.21683, D.21683
	jne	.L556	#,
	.loc 1 3479 0
	movq	-16(%rbp), %rax	# decl, decl.230
	movl	$.LC206, %esi	#,
	movq	%rax, %rdi	# decl.230,
	movl	$0, %eax	#,
	call	warning_with_decl	#
.L556:
	.loc 1 3481 0
	cmpl	$0, -36(%rbp)	#, initialized
	je	.L557	#,
	.loc 1 3485 0
	movq	-16(%rbp), %rax	# decl, decl.231
	movzbl	16(%rax), %eax	# decl.231_17->common.code, D.21684
	movzbl	%al, %eax	# D.21684, D.21685
	cmpl	$33, %eax	#, D.21685
	je	.L559	#,
	cmpl	$35, %eax	#, D.21685
	je	.L560	#,
	cmpl	$30, %eax	#, D.21685
	je	.L561	#,
	jmp	.L579	#
.L559:
	.loc 1 3491 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.232
	testl	%eax, %eax	# pedantic.232
	jne	.L562	#,
	.loc 1 3491 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# declspecs, tmp161
	movq	%rax, %rdi	# tmp161,
	call	list_length	#
	cmpl	$1, %eax	#, D.21686
	jle	.L563	#,
.L562:
	.loc 1 3494 0 is_stmt 1
	movq	-16(%rbp), %rax	# decl, decl.233
	movq	72(%rax), %rax	# decl.233_22->decl.name, D.21683
	movq	32(%rax), %rax	# _23->identifier.id.str, D.21687
	.loc 1 3493 0
	movq	%rax, %rsi	# D.21687,
	movl	$.LC207, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 3495 0
	movl	$0, -36(%rbp)	#, initialized
	.loc 1 3497 0
	jmp	.L557	#
.L563:
	jmp	.L557	#
.L561:
	.loc 1 3501 0
	movq	-16(%rbp), %rax	# decl, decl.234
	movq	72(%rax), %rax	# decl.234_26->decl.name, D.21683
	movq	32(%rax), %rax	# _27->identifier.id.str, D.21687
	.loc 1 3500 0
	movq	%rax, %rsi	# D.21687,
	movl	$.LC208, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 3502 0
	movl	$0, -36(%rbp)	#, initialized
	.loc 1 3503 0
	jmp	.L557	#
.L560:
	.loc 1 3508 0
	movq	-16(%rbp), %rax	# decl, decl.235
	movq	72(%rax), %rax	# decl.235_30->decl.name, D.21683
	movq	32(%rax), %rax	# _31->identifier.id.str, D.21687
	.loc 1 3507 0
	movq	%rax, %rsi	# D.21687,
	movl	$.LC209, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 3509 0
	movl	$0, -36(%rbp)	#, initialized
	.loc 1 3510 0
	jmp	.L557	#
.L579:
	.loc 1 3518 0
	movq	-16(%rbp), %rax	# decl, decl.236
	movq	8(%rax), %rdx	# decl.236_34->common.type, D.21683
	movq	global_trees(%rip), %rax	# global_trees, D.21683
	cmpq	%rax, %rdx	# D.21683, D.21683
	jne	.L564	#,
	.loc 1 3519 0
	movl	$0, -36(%rbp)	#, initialized
	jmp	.L557	#
.L564:
	.loc 1 3520 0
	movq	-16(%rbp), %rax	# decl, decl.237
	movq	8(%rax), %rax	# decl.237_38->common.type, D.21683
	movq	32(%rax), %rax	# _39->type.size, D.21683
	testq	%rax, %rax	# D.21683
	je	.L565	#,
	.loc 1 3524 0
	movq	-16(%rbp), %rax	# decl, decl.238
	movq	8(%rax), %rax	# decl.238_41->common.type, D.21683
	movq	32(%rax), %rax	# _42->type.size, D.21683
	movzbl	16(%rax), %eax	# _43->common.code, D.21684
	cmpb	$25, %al	#, D.21684
	jne	.L566	#,
	.loc 1 3525 0
	movq	-16(%rbp), %rax	# decl, decl.239
	movzbl	52(%rax), %eax	# *decl.239_45, D.21684
	andl	$32, %eax	#, D.21684
	testb	%al, %al	# D.21684
	je	.L557	#,
.L566:
	.loc 1 3527 0
	movl	$.LC210, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 3528 0
	movl	$0, -36(%rbp)	#, initialized
	jmp	.L557	#
.L565:
	.loc 1 3531 0
	movq	-16(%rbp), %rax	# decl, decl.240
	movq	8(%rax), %rax	# decl.240_49->common.type, D.21683
	movzbl	16(%rax), %eax	# _50->common.code, D.21684
	cmpb	$18, %al	#, D.21684
	je	.L568	#,
	.loc 1 3534 0
	movq	-16(%rbp), %rax	# decl, decl.241
	movq	72(%rax), %rax	# decl.241_52->decl.name, D.21683
	movq	32(%rax), %rax	# _53->identifier.id.str, D.21687
	.loc 1 3533 0
	movq	%rax, %rsi	# D.21687,
	movl	$.LC211, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 3535 0
	movl	$0, -36(%rbp)	#, initialized
	jmp	.L557	#
.L568:
	.loc 1 3537 0
	movq	-16(%rbp), %rax	# decl, decl.242
	movq	8(%rax), %rax	# decl.242_56->common.type, D.21683
	movq	8(%rax), %rax	# _57->common.type, D.21683
	movq	32(%rax), %rax	# _58->type.size, D.21683
	testq	%rax, %rax	# D.21683
	jne	.L557	#,
	.loc 1 3540 0
	movq	-16(%rbp), %rax	# decl, decl.243
	movq	72(%rax), %rax	# decl.243_60->decl.name, D.21683
	movq	32(%rax), %rax	# _61->identifier.id.str, D.21687
	.loc 1 3539 0
	movq	%rax, %rsi	# D.21687,
	movl	$.LC212, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 3541 0
	movl	$0, -36(%rbp)	#, initialized
.L557:
	.loc 1 3545 0
	cmpl	$0, -36(%rbp)	#, initialized
	je	.L569	#,
	.loc 1 3555 0
	movq	-16(%rbp), %rax	# decl, decl.244
	movzbl	49(%rax), %edx	#, tmp164
	andl	$-2, %edx	#, tmp165
	movb	%dl, 49(%rax)	# tmp165,
	.loc 1 3556 0
	movq	current_binding_level(%rip), %rdx	# current_binding_level, current_binding_level.245
	movq	global_binding_level(%rip), %rax	# global_binding_level, global_binding_level.246
	cmpq	%rax, %rdx	# global_binding_level.246, current_binding_level.245
	jne	.L570	#,
	.loc 1 3557 0
	movq	-16(%rbp), %rax	# decl, decl.247
	movzbl	18(%rax), %edx	#, tmp168
	orl	$4, %edx	#, tmp169
	movb	%dl, 18(%rax)	# tmp169,
.L570:
	.loc 1 3562 0
	movq	-16(%rbp), %rax	# decl, decl.248
	movq	global_trees(%rip), %rdx	# global_trees, D.21683
	movq	%rdx, 104(%rax)	# D.21683, decl.248_68->decl.initial
.L569:
	.loc 1 3568 0
	movq	-16(%rbp), %rax	# decl, decl.249
	movzbl	16(%rax), %eax	# decl.249_70->common.code, D.21684
	cmpb	$30, %al	#, D.21684
	jne	.L571	#,
	.loc 1 3569 0
	movq	-16(%rbp), %rax	# decl, decl.250
	movq	8(%rax), %rax	# decl.250_72->common.type, D.21683
	movq	24(%rax), %rax	# _73->type.values, D.21683
	testq	%rax, %rax	# D.21683
	setne	%al	#, D.21688
	movzbl	%al, %edx	# D.21688, D.21686
	movq	-16(%rbp), %rax	# decl, decl.251
	movl	%edx, %ecx	# D.21686,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# decl.251,
	call	gen_aux_info_record	#
.L571:
	.loc 1 3576 0
	movl	flag_no_common(%rip), %eax	# flag_no_common, flag_no_common.252
	testl	%eax, %eax	# flag_no_common.252
	je	.L572	#,
	.loc 1 3576 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# decl, decl.253
	movzbl	18(%rax), %eax	# *decl.253_79, D.21684
	andl	$8, %eax	#, D.21684
	testb	%al, %al	# D.21684
	jne	.L573	#,
.L572:
	.loc 1 3577 0 is_stmt 1
	movq	-16(%rbp), %rax	# decl, decl.254
	movzbl	50(%rax), %edx	#, tmp172
	orl	$2, %edx	#, tmp173
	movb	%dl, 50(%rax)	# tmp173,
.L573:
	.loc 1 3580 0
	movq	-48(%rbp), %rcx	# attributes, tmp174
	leaq	-16(%rbp), %rax	#, tmp175
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp174,
	movq	%rax, %rdi	# tmp175,
	call	decl_attributes	#
	.loc 1 3583 0
	movq	current_binding_level(%rip), %rdx	# current_binding_level, current_binding_level.255
	movq	global_binding_level(%rip), %rax	# global_binding_level, global_binding_level.256
	cmpq	%rax, %rdx	# global_binding_level.256, current_binding_level.255
	jne	.L574	#,
	.loc 1 3584 0
	movq	-16(%rbp), %rax	# decl, decl.257
	movq	%rax, %rdi	# decl.257,
	call	maybe_apply_pragma_weak	#
.L574:
	.loc 1 3586 0
	movq	-16(%rbp), %rax	# decl, decl.258
	movzbl	16(%rax), %eax	# decl.258_86->common.code, D.21684
	cmpb	$30, %al	#, D.21684
	jne	.L575	#,
	.loc 1 3587 0
	movq	-16(%rbp), %rax	# decl, decl.259
	movq	200(%rax), %rax	# decl.259_88->decl.lang_specific, D.21689
	movzbl	(%rax), %eax	# *_89, D.21684
	andl	$1, %eax	#, D.21684
	testb	%al, %al	# D.21684
	je	.L575	#,
	.loc 1 3588 0
	movq	-16(%rbp), %rax	# decl, decl.260
	movzbl	52(%rax), %eax	# *decl.260_92, D.21684
	andl	$16, %eax	#, D.21684
	testb	%al, %al	# D.21684
	je	.L575	#,
	.loc 1 3589 0
	movq	-16(%rbp), %rax	# decl, decl.261
	movq	136(%rax), %rax	# decl.261_95->decl.attributes, D.21683
	movq	%rax, %rsi	# D.21683,
	movl	$.LC136, %edi	#,
	call	lookup_attribute	#
	testq	%rax, %rax	# D.21683
	je	.L575	#,
	.loc 1 3590 0
	movq	-16(%rbp), %rax	# decl, decl.262
	movl	$.LC213, %esi	#,
	movq	%rax, %rdi	# decl.262,
	movl	$0, %eax	#,
	call	warning_with_decl	#
.L575:
	.loc 1 3595 0
	movq	-16(%rbp), %rax	# decl, decl.263
	movq	%rax, %rdi	# decl.263,
	call	pushdecl	#
	movq	%rax, -8(%rbp)	# tmp176, tem
	.loc 1 3598 0
	movq	current_binding_level(%rip), %rdx	# current_binding_level, current_binding_level.264
	movq	global_binding_level(%rip), %rax	# global_binding_level, global_binding_level.265
	cmpq	%rax, %rdx	# global_binding_level.265, current_binding_level.264
	je	.L576	#,
	.loc 1 3602 0
	movq	-8(%rbp), %rax	# tem, tmp177
	movq	144(%rax), %rax	# tem_100->decl.rtl, D.21690
	testq	%rax, %rax	# D.21690
	jne	.L576	#,
	.loc 1 3603 0
	movq	-8(%rbp), %rax	# tem, tmp178
	movq	80(%rax), %rax	# tem_100->decl.context, D.21683
	testq	%rax, %rax	# D.21683
	jne	.L576	#,
	.loc 1 3605 0
	movq	-8(%rbp), %rax	# tem, tmp179
	movq	8(%rax), %rdx	# tem_100->common.type, D.21683
	movq	global_trees(%rip), %rax	# global_trees, D.21683
	cmpq	%rax, %rdx	# D.21683, D.21683
	je	.L577	#,
	.loc 1 3606 0
	movq	-8(%rbp), %rax	# tem, tmp180
	movq	8(%rax), %rax	# tem_100->common.type, D.21683
	movq	32(%rax), %rax	# _107->type.size, D.21683
	testq	%rax, %rax	# D.21683
	je	.L577	#,
	.loc 1 3607 0
	movq	-8(%rbp), %rax	# tem, tmp181
	movq	%rax, %rdi	# tmp181,
	call	expand_decl	#
	jmp	.L576	#
.L577:
	.loc 1 3608 0
	movq	-8(%rbp), %rax	# tem, tmp182
	movq	8(%rax), %rax	# tem_100->common.type, D.21683
	movzbl	16(%rax), %eax	# _109->common.code, D.21684
	cmpb	$18, %al	#, D.21684
	jne	.L576	#,
	.loc 1 3609 0
	movq	-8(%rbp), %rax	# tem, tmp183
	movq	104(%rax), %rax	# tem_100->decl.initial, D.21683
	testq	%rax, %rax	# D.21683
	je	.L576	#,
	.loc 1 3610 0
	movq	-8(%rbp), %rax	# tem, tmp184
	movq	%rax, %rdi	# tmp184,
	call	expand_decl	#
.L576:
	.loc 1 3613 0
	movq	-8(%rbp), %rax	# tem, D.21691
	.loc 1 3614 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	start_decl, .-start_decl
	.section	.rodata
	.align 8
.LC214:
	.string	"initializer fails to determine size of `%s'"
.LC215:
	.string	"array size missing in `%s'"
	.align 8
.LC216:
	.string	"zero or negative size array `%s'"
	.align 8
.LC217:
	.string	"storage size of `%s' isn't known"
	.align 8
.LC218:
	.string	"storage size of `%s' isn't constant"
	.align 8
.LC219:
	.string	"ignoring asm-specifier for non-static local variable `%s'"
	.text
	.globl	finish_decl
	.type	finish_decl, @function
finish_decl:
.LFB50:
	.loc 1 3625 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# decl, decl
	movq	%rsi, -48(%rbp)	# init, init
	movq	%rdx, -56(%rbp)	# asmspec_tree, asmspec_tree
	.loc 1 3626 0
	movq	-40(%rbp), %rax	# decl, tmp153
	movq	8(%rax), %rax	# decl_11(D)->common.type, tmp154
	movq	%rax, -16(%rbp)	# tmp154, type
	.loc 1 3627 0
	movq	-40(%rbp), %rax	# decl, tmp155
	movq	40(%rax), %rax	# decl_11(D)->decl.size, D.21701
	testq	%rax, %rax	# D.21701
	sete	%al	#, D.21702
	movzbl	%al, %eax	# D.21702, tmp156
	movl	%eax, -28(%rbp)	# tmp156, was_incomplete
	.loc 1 3628 0
	movq	$0, -8(%rbp)	#, asmspec
	.loc 1 3631 0
	movq	current_binding_level(%rip), %rdx	# current_binding_level, current_binding_level.266
	movq	global_binding_level(%rip), %rax	# global_binding_level, global_binding_level.267
	cmpq	%rax, %rdx	# global_binding_level.267, current_binding_level.266
	jne	.L581	#,
	.loc 1 3632 0
	movq	-56(%rbp), %rdx	# asmspec_tree, tmp157
	movq	-40(%rbp), %rax	# decl, tmp158
	movq	%rdx, %rsi	# tmp157,
	movq	%rax, %rdi	# tmp158,
	call	maybe_apply_renaming_pragma	#
	movq	%rax, -56(%rbp)	# tmp159, asmspec_tree
.L581:
	.loc 1 3633 0
	cmpq	$0, -56(%rbp)	#, asmspec_tree
	je	.L582	#,
	.loc 1 3634 0
	movq	-56(%rbp), %rax	# asmspec_tree, tmp160
	movq	40(%rax), %rax	# asmspec_tree_3->string.pointer, tmp161
	movq	%rax, -8(%rbp)	# tmp161, asmspec
.L582:
	.loc 1 3637 0
	cmpq	$0, -48(%rbp)	#, init
	je	.L583	#,
	.loc 1 3637 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# decl, tmp162
	movq	104(%rax), %rax	# decl_11(D)->decl.initial, D.21701
	testq	%rax, %rax	# D.21701
	jne	.L583	#,
	.loc 1 3638 0 is_stmt 1
	movq	$0, -48(%rbp)	#, init
.L583:
	.loc 1 3641 0
	movq	-40(%rbp), %rax	# decl, tmp163
	movzbl	16(%rax), %eax	# decl_11(D)->common.code, D.21703
	cmpb	$35, %al	#, D.21703
	jne	.L584	#,
	.loc 1 3642 0
	movq	$0, -48(%rbp)	#, init
.L584:
	.loc 1 3644 0
	cmpq	$0, -48(%rbp)	#, init
	je	.L585	#,
	.loc 1 3646 0
	movq	-40(%rbp), %rax	# decl, tmp164
	movzbl	16(%rax), %eax	# decl_11(D)->common.code, D.21703
	cmpb	$33, %al	#, D.21703
	je	.L586	#,
	.loc 1 3647 0
	movq	-48(%rbp), %rdx	# init, tmp165
	movq	-40(%rbp), %rax	# decl, tmp166
	movq	%rdx, %rsi	# tmp165,
	movq	%rax, %rdi	# tmp166,
	call	store_init_value	#
	jmp	.L585	#
.L586:
	.loc 1 3651 0
	movq	-48(%rbp), %rax	# init, tmp167
	movq	8(%rax), %rdx	# init_2->common.type, D.21701
	movq	-40(%rbp), %rax	# decl, tmp168
	movq	%rdx, 8(%rax)	# D.21701, decl_11(D)->common.type
	.loc 1 3652 0
	movq	$0, -48(%rbp)	#, init
	movq	-40(%rbp), %rax	# decl, tmp169
	movq	-48(%rbp), %rdx	# init, tmp170
	movq	%rdx, 104(%rax)	# tmp170, decl_11(D)->decl.initial
.L585:
	.loc 1 3657 0
	movq	-16(%rbp), %rax	# type, tmp171
	movzbl	16(%rax), %eax	# type_12->common.code, D.21703
	cmpb	$18, %al	#, D.21703
	jne	.L587	#,
	.loc 1 3658 0
	movq	-16(%rbp), %rax	# type, tmp172
	movq	24(%rax), %rax	# type_12->type.values, D.21701
	testq	%rax, %rax	# D.21701
	jne	.L587	#,
	.loc 1 3659 0
	movq	-40(%rbp), %rax	# decl, tmp173
	movzbl	16(%rax), %eax	# decl_11(D)->common.code, D.21703
	cmpb	$33, %al	#, D.21703
	je	.L587	#,
.LBB34:
	.loc 1 3665 0
	movq	-40(%rbp), %rax	# decl, tmp174
	movzbl	18(%rax), %eax	# *decl_11(D), D.21703
	andl	$4, %eax	#, D.21703
	.loc 1 3666 0
	testb	%al, %al	# D.21703
	je	.L588	#,
	.loc 1 3665 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.270
	testl	%eax, %eax	# pedantic.270
	je	.L589	#,
	.loc 1 3665 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# decl, tmp175
	movzbl	18(%rax), %eax	# *decl_11(D), D.21703
	andl	$8, %eax	#, D.21703
	testb	%al, %al	# D.21703
	jne	.L589	#,
	.loc 1 3665 0 discriminator 3
	movl	$1, %eax	#, iftmp.269
	jmp	.L590	#
.L589:
	.loc 1 3665 0 discriminator 2
	movl	$0, %eax	#, iftmp.269
.L590:
	jmp	.L591	#
.L588:
	.loc 1 3666 0 is_stmt 1 discriminator 1
	movq	-40(%rbp), %rax	# decl, tmp176
	movzbl	49(%rax), %eax	# *decl_11(D), D.21703
	andl	$1, %eax	#, D.21703
	testb	%al, %al	# D.21703
	sete	%al	#, D.21702
	movzbl	%al, %eax	# D.21702, iftmp.268
.L591:
	.loc 1 3661 0
	movl	%eax, -24(%rbp)	# iftmp.268, do_default
	.loc 1 3668 0
	movq	-40(%rbp), %rax	# decl, tmp177
	movq	104(%rax), %rcx	# decl_11(D)->decl.initial, D.21701
	.loc 1 3667 0
	movl	-24(%rbp), %edx	# do_default, tmp178
	movq	-16(%rbp), %rax	# type, tmp179
	movq	%rcx, %rsi	# D.21701,
	movq	%rax, %rdi	# tmp179,
	call	complete_array_type	#
	movl	%eax, -20(%rbp)	# tmp180, failure
	.loc 1 3671 0
	movq	-40(%rbp), %rax	# decl, tmp181
	movq	8(%rax), %rax	# decl_11(D)->common.type, tmp182
	movq	%rax, -16(%rbp)	# tmp182, type
	.loc 1 3673 0
	cmpl	$1, -20(%rbp)	#, failure
	jne	.L592	#,
	.loc 1 3674 0
	movq	-40(%rbp), %rax	# decl, tmp183
	movl	$.LC214, %esi	#,
	movq	%rax, %rdi	# tmp183,
	movl	$0, %eax	#,
	call	error_with_decl	#
	jmp	.L593	#
.L592:
	.loc 1 3676 0
	cmpl	$2, -20(%rbp)	#, failure
	jne	.L594	#,
	.loc 1 3678 0
	cmpl	$0, -24(%rbp)	#, do_default
	je	.L595	#,
	.loc 1 3679 0
	movq	-40(%rbp), %rax	# decl, tmp184
	movl	$.LC215, %esi	#,
	movq	%rax, %rdi	# tmp184,
	movl	$0, %eax	#,
	call	error_with_decl	#
	jmp	.L593	#
.L595:
	.loc 1 3686 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.271
	testl	%eax, %eax	# pedantic.271
	jne	.L593	#,
	.loc 1 3686 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# decl, tmp185
	movzbl	18(%rax), %eax	# *decl_11(D), D.21703
	andl	$4, %eax	#, D.21703
	testb	%al, %al	# D.21703
	je	.L593	#,
	movq	-40(%rbp), %rax	# decl, tmp186
	movzbl	18(%rax), %eax	# *decl_11(D), D.21703
	andl	$8, %eax	#, D.21703
	testb	%al, %al	# D.21703
	jne	.L593	#,
	.loc 1 3687 0 is_stmt 1
	movq	-40(%rbp), %rax	# decl, tmp187
	movzbl	49(%rax), %edx	#, tmp190
	orl	$1, %edx	#, tmp191
	movb	%dl, 49(%rax)	# tmp191,
	jmp	.L593	#
.L594:
	.loc 1 3693 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.272
	testl	%eax, %eax	# pedantic.272
	je	.L593	#,
	.loc 1 3693 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# type, tmp192
	movq	24(%rax), %rax	# type_48->type.values, D.21701
	testq	%rax, %rax	# D.21701
	je	.L593	#,
	.loc 1 3694 0 is_stmt 1
	movq	-16(%rbp), %rax	# type, tmp193
	movq	24(%rax), %rax	# type_48->type.values, D.21701
	movq	112(%rax), %rax	# _56->type.maxval, D.21701
	movq	%rax, %rdi	# D.21701,
	call	tree_int_cst_sgn	#
	testl	%eax, %eax	# D.21704
	jns	.L593	#,
	.loc 1 3695 0
	movq	-40(%rbp), %rax	# decl, tmp194
	movl	$.LC216, %esi	#,
	movq	%rax, %rdi	# tmp194,
	movl	$0, %eax	#,
	call	error_with_decl	#
.L593:
	.loc 1 3697 0
	movq	-40(%rbp), %rax	# decl, tmp195
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp195,
	call	layout_decl	#
.L587:
.LBE34:
	.loc 1 3700 0
	movq	-40(%rbp), %rax	# decl, tmp196
	movzbl	16(%rax), %eax	# decl_11(D)->common.code, D.21703
	cmpb	$34, %al	#, D.21703
	jne	.L597	#,
	.loc 1 3702 0
	movq	-40(%rbp), %rax	# decl, tmp197
	movq	40(%rax), %rax	# decl_11(D)->decl.size, D.21701
	testq	%rax, %rax	# D.21701
	jne	.L598	#,
	.loc 1 3702 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# decl, tmp198
	movq	8(%rax), %rdx	# decl_11(D)->common.type, D.21701
	movq	global_trees(%rip), %rax	# global_trees, D.21701
	cmpq	%rax, %rdx	# D.21701, D.21701
	je	.L598	#,
	.loc 1 3703 0 is_stmt 1
	movq	-40(%rbp), %rax	# decl, tmp199
	movq	8(%rax), %rax	# decl_11(D)->common.type, D.21701
	movq	32(%rax), %rax	# _63->type.size, D.21701
	testq	%rax, %rax	# D.21701
	je	.L598	#,
	.loc 1 3704 0
	movq	-40(%rbp), %rax	# decl, tmp200
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp200,
	call	layout_decl	#
.L598:
	.loc 1 3706 0
	movq	-40(%rbp), %rax	# decl, tmp201
	movq	40(%rax), %rax	# decl_11(D)->decl.size, D.21701
	testq	%rax, %rax	# D.21701
	jne	.L599	#,
	.loc 1 3708 0
	movq	-40(%rbp), %rax	# decl, tmp202
	movq	8(%rax), %rdx	# decl_11(D)->common.type, D.21701
	movq	global_trees(%rip), %rax	# global_trees, D.21701
	cmpq	%rax, %rdx	# D.21701, D.21701
	je	.L599	#,
	.loc 1 3710 0
	movq	-40(%rbp), %rax	# decl, tmp203
	movzbl	18(%rax), %eax	# *decl_11(D), D.21703
	andl	$4, %eax	#, D.21703
	.loc 1 3709 0
	testb	%al, %al	# D.21703
	je	.L600	#,
	.loc 1 3716 0
	movq	-40(%rbp), %rax	# decl, tmp204
	movq	104(%rax), %rax	# decl_11(D)->decl.initial, D.21701
	.loc 1 3717 0
	testq	%rax, %rax	# D.21701
	jne	.L601	#,
	.loc 1 3717 0 is_stmt 0 discriminator 2
	movq	-40(%rbp), %rax	# decl, tmp205
	movq	80(%rax), %rax	# decl_11(D)->decl.context, D.21701
	testq	%rax, %rax	# D.21701
	je	.L602	#,
.L601:
	.loc 1 3717 0 discriminator 1
	movl	$1, %eax	#, iftmp.274
	jmp	.L603	#
.L602:
	.loc 1 3717 0 discriminator 3
	movl	$0, %eax	#, iftmp.274
.L603:
	.loc 1 3709 0 is_stmt 1
	andl	$1, %eax	#, iftmp.273
	jmp	.L604	#
.L600:
	.loc 1 3721 0 discriminator 1
	movq	-40(%rbp), %rax	# decl, tmp206
	movzbl	49(%rax), %eax	# *decl_11(D), D.21703
	.loc 1 3709 0 discriminator 1
	andl	$1, %eax	#, D.21703
	testb	%al, %al	# D.21703
	sete	%al	#, iftmp.273
.L604:
	.loc 1 3709 0 is_stmt 0 discriminator 2
	testb	%al, %al	# iftmp.273
	je	.L599	#,
	.loc 1 3723 0 is_stmt 1
	movq	-40(%rbp), %rax	# decl, tmp207
	movl	$.LC217, %esi	#,
	movq	%rax, %rdi	# tmp207,
	movl	$0, %eax	#,
	call	error_with_decl	#
	.loc 1 3724 0
	movq	global_trees(%rip), %rdx	# global_trees, D.21701
	movq	-40(%rbp), %rax	# decl, tmp208
	movq	%rdx, 8(%rax)	# D.21701, decl_11(D)->common.type
.L599:
	.loc 1 3727 0
	movq	-40(%rbp), %rax	# decl, tmp209
	movzbl	49(%rax), %eax	# *decl_11(D), D.21703
	andl	$1, %eax	#, D.21703
	testb	%al, %al	# D.21703
	jne	.L605	#,
	.loc 1 3727 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# decl, tmp210
	movzbl	18(%rax), %eax	# *decl_11(D), D.21703
	andl	$4, %eax	#, D.21703
	testb	%al, %al	# D.21703
	je	.L606	#,
.L605:
	.loc 1 3728 0 is_stmt 1
	movq	-40(%rbp), %rax	# decl, tmp211
	movq	40(%rax), %rax	# decl_11(D)->decl.size, D.21701
	testq	%rax, %rax	# D.21701
	je	.L606	#,
	.loc 1 3730 0
	movq	-40(%rbp), %rax	# decl, tmp212
	movq	40(%rax), %rax	# decl_11(D)->decl.size, D.21701
	movzbl	16(%rax), %eax	# _84->common.code, D.21703
	cmpb	$25, %al	#, D.21703
	jne	.L607	#,
	.loc 1 3731 0
	movq	-40(%rbp), %rax	# decl, tmp213
	movq	40(%rax), %rax	# decl_11(D)->decl.size, D.21701
	movq	%rax, %rdi	# D.21701,
	call	constant_expression_warning	#
	jmp	.L606	#
.L607:
	.loc 1 3733 0
	movq	-40(%rbp), %rax	# decl, tmp214
	movl	$.LC218, %esi	#,
	movq	%rax, %rdi	# tmp214,
	movl	$0, %eax	#,
	call	error_with_decl	#
.L606:
	.loc 1 3736 0
	movq	-16(%rbp), %rax	# type, tmp215
	movzbl	18(%rax), %eax	# *type_4, D.21703
	andl	$1, %eax	#, D.21703
	testb	%al, %al	# D.21703
	je	.L597	#,
	.loc 1 3737 0
	movq	-40(%rbp), %rax	# decl, tmp216
	movzbl	18(%rax), %edx	#, tmp219
	orl	$1, %edx	#, tmp220
	movb	%dl, 18(%rax)	# tmp220,
.L597:
	.loc 1 3743 0
	movq	-40(%rbp), %rax	# decl, tmp221
	movzbl	16(%rax), %eax	# decl_11(D)->common.code, D.21703
	cmpb	$30, %al	#, D.21703
	jne	.L608	#,
	.loc 1 3743 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, asmspec
	je	.L608	#,
	.loc 1 3745 0 is_stmt 1
	movq	-40(%rbp), %rax	# decl, tmp222
	movzbl	51(%rax), %edx	#, tmp225
	andl	$-97, %edx	#, tmp226
	movb	%dl, 51(%rax)	# tmp226,
	.loc 1 3746 0
	movq	-40(%rbp), %rax	# decl, tmp227
	movq	$0, 144(%rax)	#, decl_11(D)->decl.rtl
	.loc 1 3747 0
	movq	-8(%rbp), %rax	# asmspec, tmp228
	movq	%rax, %rdi	# tmp228,
	call	get_identifier	#
	movq	-40(%rbp), %rdx	# decl, tmp229
	movq	%rax, 120(%rdx)	# D.21701, decl_11(D)->decl.assembler_name
.L608:
	.loc 1 3754 0
	movq	-40(%rbp), %rax	# decl, tmp230
	movzbl	16(%rax), %eax	# decl_11(D)->common.code, D.21703
	cmpb	$34, %al	#, D.21703
	je	.L609	#,
	.loc 1 3754 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# decl, tmp231
	movzbl	16(%rax), %eax	# decl_11(D)->common.code, D.21703
	cmpb	$30, %al	#, D.21703
	jne	.L610	#,
.L609:
	.loc 1 3757 0 is_stmt 1
	movq	-40(%rbp), %rax	# decl, tmp232
	movq	%rax, %rdi	# tmp232,
	call	maybe_objc_check_decl	#
	.loc 1 3759 0
	movq	-40(%rbp), %rax	# decl, tmp233
	movq	80(%rax), %rax	# decl_11(D)->decl.context, D.21701
	testq	%rax, %rax	# D.21701
	jne	.L611	#,
	.loc 1 3761 0
	movq	-40(%rbp), %rax	# decl, tmp234
	movq	104(%rax), %rax	# decl_11(D)->decl.initial, D.21701
	testq	%rax, %rax	# D.21701
	je	.L612	#,
	.loc 1 3762 0
	movq	-40(%rbp), %rax	# decl, tmp235
	movq	104(%rax), %rdx	# decl_11(D)->decl.initial, D.21701
	movq	global_trees(%rip), %rax	# global_trees, D.21701
	cmpq	%rax, %rdx	# D.21701, D.21701
	jne	.L613	#,
.L612:
	.loc 1 3766 0
	movq	-40(%rbp), %rax	# decl, tmp236
	movzbl	50(%rax), %edx	#, tmp239
	orl	$4, %edx	#, tmp240
	movb	%dl, 50(%rax)	# tmp240,
.L613:
	.loc 1 3768 0
	movq	-40(%rbp), %rax	# decl, tmp241
	movq	80(%rax), %rax	# decl_11(D)->decl.context, D.21701
	.loc 1 3767 0
	testq	%rax, %rax	# D.21701
	je	.L614	#,
	.loc 1 3769 0 discriminator 2
	movq	-40(%rbp), %rax	# decl, tmp242
	movzbl	17(%rax), %eax	# *decl_11(D), D.21703
	andl	$64, %eax	#, D.21703
	.loc 1 3767 0 discriminator 2
	testb	%al, %al	# D.21703
	je	.L615	#,
.L614:
	.loc 1 3767 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.275
	jmp	.L616	#
.L615:
	.loc 1 3767 0 discriminator 3
	movl	$0, %eax	#, iftmp.275
.L616:
	.loc 1 3767 0 discriminator 4
	movq	-8(%rbp), %rsi	# asmspec, tmp243
	movq	-40(%rbp), %rdi	# decl, tmp244
	movl	$0, %ecx	#,
	movl	%eax, %edx	# iftmp.275,
	call	rest_of_decl_compilation	#
	jmp	.L617	#
.L611:
	.loc 1 3775 0 is_stmt 1
	cmpq	$0, -8(%rbp)	#, asmspec
	je	.L618	#,
	.loc 1 3780 0
	movq	-40(%rbp), %rax	# decl, tmp245
	movzbl	49(%rax), %eax	# *decl_11(D), D.21703
	andl	$4, %eax	#, D.21703
	testb	%al, %al	# D.21703
	je	.L619	#,
	.loc 1 3781 0
	movq	-40(%rbp), %rax	# decl, tmp246
	movzbl	53(%rax), %edx	#, tmp249
	orl	$2, %edx	#, tmp250
	movb	%dl, 53(%rax)	# tmp250,
.L619:
	.loc 1 3788 0
	movq	-40(%rbp), %rax	# decl, tmp251
	movzbl	16(%rax), %eax	# decl_11(D)->common.code, D.21703
	cmpb	$34, %al	#, D.21703
	jne	.L620	#,
	.loc 1 3789 0
	movq	-40(%rbp), %rax	# decl, tmp252
	movzbl	49(%rax), %eax	# *decl_11(D), D.21703
	andl	$4, %eax	#, D.21703
	testb	%al, %al	# D.21703
	jne	.L620	#,
	.loc 1 3790 0
	movq	-40(%rbp), %rax	# decl, tmp253
	movzbl	18(%rax), %eax	# *decl_11(D), D.21703
	andl	$4, %eax	#, D.21703
	testb	%al, %al	# D.21703
	jne	.L620	#,
	.loc 1 3791 0
	movq	-40(%rbp), %rax	# decl, tmp254
	movl	$.LC219, %esi	#,
	movq	%rax, %rdi	# tmp254,
	movl	$0, %eax	#,
	call	warning_with_decl	#
	jmp	.L618	#
.L620:
	.loc 1 3794 0
	movq	-8(%rbp), %rax	# asmspec, tmp255
	movq	%rax, %rdi	# tmp255,
	call	get_identifier	#
	movq	-40(%rbp), %rdx	# decl, tmp256
	movq	%rax, 120(%rdx)	# D.21701, decl_11(D)->decl.assembler_name
.L618:
	.loc 1 3797 0
	movq	-40(%rbp), %rax	# decl, tmp257
	movzbl	16(%rax), %eax	# decl_11(D)->common.code, D.21703
	cmpb	$30, %al	#, D.21703
	je	.L617	#,
	.loc 1 3798 0
	movq	-40(%rbp), %rax	# decl, tmp258
	movq	%rax, %rdi	# tmp258,
	call	add_decl_stmt	#
.L617:
	.loc 1 3801 0
	movq	-40(%rbp), %rax	# decl, tmp259
	movq	80(%rax), %rax	# decl_11(D)->decl.context, D.21701
	testq	%rax, %rax	# D.21701
	je	.L610	#,
	.loc 1 3805 0
	cmpl	$0, -28(%rbp)	#, was_incomplete
	je	.L610	#,
	.loc 1 3806 0
	movq	-40(%rbp), %rax	# decl, tmp260
	movzbl	18(%rax), %eax	# *decl_11(D), D.21703
	andl	$4, %eax	#, D.21703
	testb	%al, %al	# D.21703
	jne	.L610	#,
	.loc 1 3806 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# decl, tmp261
	movzbl	49(%rax), %eax	# *decl_11(D), D.21703
	andl	$1, %eax	#, D.21703
	testb	%al, %al	# D.21703
	jne	.L610	#,
	.loc 1 3809 0 is_stmt 1
	movq	-40(%rbp), %rax	# decl, tmp262
	movzbl	18(%rax), %eax	# *decl_11(D), tmp265
	andl	$1, %eax	#, D.21705
	movl	%eax, %edx	# D.21705, D.21705
	movq	-40(%rbp), %rax	# decl, tmp266
	andl	$1, %edx	#, tmp268
	leal	0(,%rdx,4), %ecx	#, tmp269
	movzbl	17(%rax), %edx	#, tmp270
	andl	$-5, %edx	#, tmp271
	orl	%ecx, %edx	# tmp269, tmp272
	movb	%dl, 17(%rax)	# tmp272,
	.loc 1 3811 0
	movq	-40(%rbp), %rax	# decl, tmp273
	movq	40(%rax), %rax	# decl_11(D)->decl.size, D.21701
	testq	%rax, %rax	# D.21701
	jne	.L610	#,
	.loc 1 3812 0
	movq	-40(%rbp), %rax	# decl, tmp274
	movq	$0, 104(%rax)	#, decl_11(D)->decl.initial
.L610:
	.loc 1 3817 0
	movq	-40(%rbp), %rax	# decl, tmp275
	movzbl	16(%rax), %eax	# decl_11(D)->common.code, D.21703
	cmpb	$33, %al	#, D.21703
	jne	.L621	#,
	.loc 1 3820 0
	movq	-40(%rbp), %rax	# decl, tmp276
	movq	%rax, %rdi	# tmp276,
	call	maybe_objc_check_decl	#
	.loc 1 3821 0
	movq	-40(%rbp), %rax	# decl, tmp277
	movq	80(%rax), %rax	# decl_11(D)->decl.context, D.21701
	testq	%rax, %rax	# D.21701
	sete	%al	#, D.21702
	movzbl	%al, %edx	# D.21702, D.21704
	movq	-40(%rbp), %rax	# decl, tmp278
	movl	$0, %ecx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp278,
	call	rest_of_decl_compilation	#
.L621:
	.loc 1 3827 0
	movq	current_binding_level(%rip), %rdx	# current_binding_level, current_binding_level.276
	movq	global_binding_level(%rip), %rax	# global_binding_level, global_binding_level.277
	cmpq	%rax, %rdx	# global_binding_level.277, current_binding_level.276
	jne	.L580	#,
	.loc 1 3828 0
	call	get_pending_sizes	#
.L580:
	.loc 1 3829 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	finish_decl, .-finish_decl
	.globl	maybe_build_cleanup
	.type	maybe_build_cleanup, @function
maybe_build_cleanup:
.LFB51:
	.loc 1 3837 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# decl, decl
	.loc 1 3839 0
	movl	$0, %eax	#, D.21712
	.loc 1 3840 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	maybe_build_cleanup, .-maybe_build_cleanup
	.globl	push_parm_decl
	.type	push_parm_decl, @function
push_parm_decl:
.LFB52:
	.loc 1 3850 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# parm, parm
	.loc 1 3852 0
	movl	immediate_size_expand(%rip), %eax	# immediate_size_expand, tmp73
	movl	%eax, -28(%rbp)	# tmp73, old_immediate_size_expand
	.loc 1 3854 0
	movl	$0, immediate_size_expand(%rip)	#, immediate_size_expand
	.loc 1 3857 0
	movq	-40(%rbp), %rax	# parm, tmp74
	movq	24(%rax), %rax	# parm_2(D)->list.purpose, D.21713
	.loc 1 3856 0
	movq	24(%rax), %rsi	# _3->list.purpose, D.21713
	movq	-40(%rbp), %rax	# parm, tmp75
	movq	24(%rax), %rax	# parm_2(D)->list.purpose, D.21713
	movq	32(%rax), %rax	# _5->list.value, D.21713
	movl	$0, %ecx	#,
	movl	$2, %edx	#,
	movq	%rax, %rdi	# D.21713,
	call	grokdeclarator	#
	movq	%rax, -24(%rbp)	# decl.278, decl
	.loc 1 3858 0
	movq	-40(%rbp), %rax	# parm, tmp76
	movq	32(%rax), %rcx	# parm_2(D)->list.value, D.21713
	leaq	-24(%rbp), %rax	#, tmp77
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.21713,
	movq	%rax, %rdi	# tmp77,
	call	decl_attributes	#
	.loc 1 3871 0
	movq	-24(%rbp), %rax	# decl, decl.279
	movq	%rax, %rdi	# decl.279,
	call	pushdecl	#
	movq	%rax, -24(%rbp)	# decl.280, decl
	.loc 1 3873 0
	movl	-28(%rbp), %eax	# old_immediate_size_expand, tmp78
	movl	%eax, immediate_size_expand(%rip)	# tmp78, immediate_size_expand
	.loc 1 3875 0
	movq	current_binding_level(%rip), %rbx	# current_binding_level, current_binding_level.281
	.loc 1 3876 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.282
	movq	64(%rax), %rdx	# current_binding_level.282_12->parm_order, D.21713
	movq	-24(%rbp), %rax	# decl, decl.283
	movq	%rax, %rsi	# decl.283,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, 64(%rbx)	# D.21713, current_binding_level.281_11->parm_order
	.loc 1 3879 0
	movq	-24(%rbp), %rax	# decl, decl.284
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# decl.284,
	call	finish_decl	#
	.loc 1 3880 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	push_parm_decl, .-push_parm_decl
	.globl	clear_parm_order
	.type	clear_parm_order, @function
clear_parm_order:
.LFB53:
	.loc 1 3888 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 3889 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.285
	movq	$0, 64(%rax)	#, current_binding_level.285_1->parm_order
	.loc 1 3890 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	clear_parm_order, .-clear_parm_order
	.section	.rodata
.LC220:
	.string	"__compound_literal"
.LC221:
	.string	"%s.%d"
	.text
	.globl	build_compound_literal
	.type	build_compound_literal, @function
build_compound_literal:
.LFB54:
	.loc 1 3901 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# type, type
	movq	%rsi, -80(%rbp)	# init, init
	.loc 1 3905 0
	movq	-72(%rbp), %rax	# type, tmp78
	movq	%rax, %rdx	# tmp78,
	movl	$0, %esi	#,
	movl	$34, %edi	#,
	call	build_decl	#
	movq	%rax, -48(%rbp)	# tmp79, decl
	.loc 1 3908 0
	movq	-48(%rbp), %rax	# decl, tmp80
	movzbl	49(%rax), %edx	#, tmp83
	andl	$-2, %edx	#, tmp84
	movb	%dl, 49(%rax)	# tmp84,
	.loc 1 3909 0
	movq	-48(%rbp), %rax	# decl, tmp85
	movzbl	18(%rax), %edx	#, tmp88
	andl	$-9, %edx	#, tmp89
	movb	%dl, 18(%rax)	# tmp89,
	.loc 1 3910 0
	movq	current_binding_level(%rip), %rdx	# current_binding_level, current_binding_level.286
	movq	global_binding_level(%rip), %rax	# global_binding_level, global_binding_level.287
	cmpq	%rax, %rdx	# global_binding_level.287, current_binding_level.286
	sete	%dl	#, D.21715
	movq	-48(%rbp), %rax	# decl, tmp90
	andl	$1, %edx	#, tmp92
	leal	0(,%rdx,4), %ecx	#, tmp93
	movzbl	18(%rax), %edx	#, tmp94
	andl	$-5, %edx	#, tmp95
	orl	%ecx, %edx	# tmp93, tmp96
	movb	%dl, 18(%rax)	# tmp96,
	.loc 1 3911 0
	movq	current_function_decl(%rip), %rdx	# current_function_decl, current_function_decl.288
	movq	-48(%rbp), %rax	# decl, tmp97
	movq	%rdx, 80(%rax)	# current_function_decl.288, decl_3->decl.context
	.loc 1 3912 0
	movq	-48(%rbp), %rax	# decl, tmp98
	movzbl	18(%rax), %edx	#, tmp101
	orl	$1, %edx	#, tmp102
	movb	%dl, 18(%rax)	# tmp102,
	.loc 1 3913 0
	movq	-48(%rbp), %rax	# decl, tmp103
	movq	-72(%rbp), %rdx	# type, tmp104
	movq	%rdx, 8(%rax)	# tmp104, decl_3->common.type
	.loc 1 3914 0
	movq	-72(%rbp), %rax	# type, tmp105
	movzbl	17(%rax), %eax	# *type_2(D), tmp108
	shrb	$4, %al	#, D.21716
	andl	$1, %eax	#, D.21716
	movq	-48(%rbp), %rdx	# decl, tmp109
	andl	$1, %eax	#, tmp111
	sall	$4, %eax	#, tmp112
	movl	%eax, %ecx	# tmp112, tmp112
	movzbl	17(%rdx), %eax	#, tmp113
	andl	$-17, %eax	#, tmp114
	orl	%ecx, %eax	# tmp112, tmp115
	movb	%al, 17(%rdx)	# tmp115,
	.loc 1 3915 0
	movq	-80(%rbp), %rdx	# init, tmp116
	movq	-48(%rbp), %rax	# decl, tmp117
	movq	%rdx, %rsi	# tmp116,
	movq	%rax, %rdi	# tmp117,
	call	store_init_value	#
	.loc 1 3917 0
	movq	-72(%rbp), %rax	# type, tmp118
	movzbl	16(%rax), %eax	# type_2(D)->common.code, D.21717
	cmpb	$18, %al	#, D.21717
	jne	.L628	#,
	.loc 1 3917 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# type, tmp119
	movq	32(%rax), %rax	# type_2(D)->type.size, D.21718
	testq	%rax, %rax	# D.21718
	jne	.L628	#,
.LBB35:
	.loc 1 3919 0 is_stmt 1
	movq	-48(%rbp), %rax	# decl, tmp120
	movq	104(%rax), %rcx	# decl_3->decl.initial, D.21718
	movq	-72(%rbp), %rax	# type, tmp121
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# D.21718,
	movq	%rax, %rdi	# tmp121,
	call	complete_array_type	#
	movl	%eax, -52(%rbp)	# tmp122, failure
	.loc 1 3920 0
	cmpl	$0, -52(%rbp)	#, failure
	je	.L628	#,
	.loc 1 3921 0
	movl	$__FUNCTION__.14580, %edx	#,
	movl	$3921, %esi	#,
	movl	$.LC154, %edi	#,
	call	fancy_abort	#
.L628:
.LBE35:
	.loc 1 3924 0
	movq	-48(%rbp), %rax	# decl, tmp123
	movq	8(%rax), %rax	# decl_3->common.type, tmp124
	movq	%rax, -72(%rbp)	# tmp124, type
	.loc 1 3925 0
	movq	global_trees(%rip), %rax	# global_trees, D.21718
	cmpq	-72(%rbp), %rax	# type, D.21718
	je	.L629	#,
	.loc 1 3925 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# type, tmp125
	movq	32(%rax), %rax	# type_14->type.size, D.21718
	testq	%rax, %rax	# D.21718
	jne	.L630	#,
.L629:
	.loc 1 3926 0 is_stmt 1
	movq	global_trees(%rip), %rax	# global_trees, D.21714
	jmp	.L631	#
.L630:
	.loc 1 3928 0
	movq	-48(%rbp), %rax	# decl, tmp126
	movq	%rax, %rsi	# tmp126,
	movl	$154, %edi	#,
	movl	$0, %eax	#,
	call	build_stmt	#
	movq	%rax, -40(%rbp)	# tmp127, stmt
	.loc 1 3929 0
	movq	-48(%rbp), %rax	# decl, tmp128
	movq	8(%rax), %rax	# decl_3->common.type, D.21718
	movq	-40(%rbp), %rdx	# stmt, tmp129
	movq	%rax, %rsi	# D.21718,
	movl	$170, %edi	#,
	call	build1	#
	movq	%rax, -32(%rbp)	# tmp130, complit
	.loc 1 3930 0
	movq	-32(%rbp), %rax	# complit, tmp131
	movzbl	17(%rax), %edx	#, tmp134
	orl	$1, %edx	#, tmp135
	movb	%dl, 17(%rax)	# tmp135,
	.loc 1 3932 0
	movq	-48(%rbp), %rax	# decl, tmp136
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp136,
	call	layout_decl	#
	.loc 1 3934 0
	movq	-48(%rbp), %rax	# decl, tmp137
	movzbl	18(%rax), %eax	# *decl_3, D.21717
	andl	$4, %eax	#, D.21717
	testb	%al, %al	# D.21717
	je	.L632	#,
.LBB36:
	.loc 1 3941 0
	movl	$16, %eax	#, tmp169
	subq	$1, %rax	#, tmp138
	addq	$43, %rax	#, tmp139
	movl	$16, %ebx	#, tmp170
	movl	$0, %edx	#, tmp142
	divq	%rbx	# tmp170
	imulq	$16, %rax, %rax	#, tmp141, tmp143
	subq	%rax, %rsp	# tmp143,
	movq	%rsp, %rax	#, tmp144
	addq	$15, %rax	#, tmp145
	shrq	$4, %rax	#, tmp146
	salq	$4, %rax	#, tmp147
	movq	%rax, -24(%rbp)	# tmp147, name
	movl	var_labelno(%rip), %edx	# var_labelno, var_labelno.289
	movq	-24(%rbp), %rax	# name, tmp148
	movl	%edx, %ecx	# var_labelno.289,
	movl	$.LC220, %edx	#,
	movl	$.LC221, %esi	#,
	movq	%rax, %rdi	# tmp148,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 1 3942 0
	movl	var_labelno(%rip), %eax	# var_labelno, var_labelno.290
	addl	$1, %eax	#, var_labelno.291
	movl	%eax, var_labelno(%rip)	# var_labelno.291, var_labelno
	.loc 1 3943 0
	movq	-24(%rbp), %rax	# name, tmp149
	movq	%rax, %rdi	# tmp149,
	call	get_identifier	#
	movq	-48(%rbp), %rdx	# decl, tmp150
	movq	%rax, 72(%rdx)	# D.21718, decl_3->decl.name
	.loc 1 3944 0
	movq	-48(%rbp), %rax	# decl, tmp151
	movzbl	50(%rax), %edx	#, tmp154
	orl	$4, %edx	#, tmp155
	movb	%dl, 50(%rax)	# tmp155,
	.loc 1 3945 0
	movq	-48(%rbp), %rax	# decl, tmp156
	movzbl	51(%rax), %edx	#, tmp159
	orl	$4, %edx	#, tmp160
	movb	%dl, 51(%rax)	# tmp160,
	.loc 1 3946 0
	movq	-48(%rbp), %rax	# decl, tmp161
	movzbl	50(%rax), %edx	#, tmp164
	orl	$64, %edx	#, tmp165
	movb	%dl, 50(%rax)	# tmp165,
	.loc 1 3947 0
	movq	-48(%rbp), %rax	# decl, tmp166
	movq	%rax, %rdi	# tmp166,
	call	pushdecl	#
	.loc 1 3948 0
	movq	-48(%rbp), %rax	# decl, tmp167
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp167,
	call	rest_of_decl_compilation	#
.L632:
.LBE36:
	.loc 1 3951 0
	movq	-32(%rbp), %rax	# complit, D.21714
.L631:
	.loc 1 3952 0
	movq	-8(%rbp), %rbx	#,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	build_compound_literal, .-build_compound_literal
	.globl	complete_array_type
	.type	complete_array_type, @function
complete_array_type:
.LFB55:
	.loc 1 3963 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# type, type
	movq	%rsi, -48(%rbp)	# initial_value, initial_value
	movl	%edx, -52(%rbp)	# do_default, do_default
	.loc 1 3964 0
	movq	$0, -16(%rbp)	#, maxindex
	.loc 1 3965 0
	movl	$0, -24(%rbp)	#, value
	.loc 1 3967 0
	cmpq	$0, -48(%rbp)	#, initial_value
	je	.L634	#,
	.loc 1 3971 0
	movq	-48(%rbp), %rax	# initial_value, tmp78
	movzbl	16(%rax), %eax	# initial_value_12(D)->common.code, D.21722
	cmpb	$29, %al	#, D.21722
	jne	.L635	#,
.LBB37:
	.loc 1 3974 0
	movq	-48(%rbp), %rax	# initial_value, tmp79
	movq	8(%rax), %rax	# initial_value_12(D)->common.type, D.21723
	movq	8(%rax), %rax	# _14->common.type, D.21723
	movq	%rax, %rdi	# D.21723,
	call	int_size_in_bytes	#
	.loc 1 3973 0
	movl	%eax, -20(%rbp)	# D.21724, eltsize
	.loc 1 3975 0
	movq	-48(%rbp), %rax	# initial_value, tmp80
	movl	32(%rax), %eax	# initial_value_12(D)->string.length, D.21725
	cltd
	idivl	-20(%rbp)	# eltsize
	subl	$1, %eax	#, D.21725
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21726,
	call	build_int_2_wide	#
	movq	%rax, -16(%rbp)	# tmp83, maxindex
.LBE37:
	jmp	.L634	#
.L635:
	.loc 1 3978 0
	movq	-48(%rbp), %rax	# initial_value, tmp84
	movzbl	16(%rax), %eax	# initial_value_12(D)->common.code, D.21722
	cmpb	$46, %al	#, D.21722
	jne	.L636	#,
.LBB38:
	.loc 1 3980 0
	movq	-48(%rbp), %rax	# initial_value, tmp85
	movq	40(%rax), %rax	# initial_value_12(D)->exp.operands, tmp86
	movq	%rax, -8(%rbp)	# tmp86, elts
	.loc 1 3981 0
	movq	$-1, %rsi	#,
	movq	$-1, %rdi	#,
	call	build_int_2_wide	#
	movq	%rax, -16(%rbp)	# tmp87, maxindex
	.loc 1 3982 0
	jmp	.L637	#
.L640:
	.loc 1 3984 0
	movq	-8(%rbp), %rax	# elts, tmp88
	movq	24(%rax), %rax	# elts_9->list.purpose, D.21723
	testq	%rax, %rax	# D.21723
	je	.L638	#,
	.loc 1 3985 0
	movq	-8(%rbp), %rax	# elts, tmp89
	movq	24(%rax), %rax	# elts_9->list.purpose, tmp90
	movq	%rax, -16(%rbp)	# tmp90, maxindex
	jmp	.L639	#
.L638:
	.loc 1 3987 0
	movq	global_trees+96(%rip), %rcx	# global_trees, D.21723
	movq	integer_types+40(%rip), %rax	# integer_types, D.21723
	movq	-16(%rbp), %rdx	# maxindex, tmp91
	movq	%rax, %rsi	# D.21723,
	movl	$59, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21723,
	call	fold	#
	movq	%rax, -16(%rbp)	# tmp92, maxindex
.L639:
	.loc 1 3982 0
	movq	-8(%rbp), %rax	# elts, tmp93
	movq	(%rax), %rax	# elts_9->common.chain, tmp94
	movq	%rax, -8(%rbp)	# tmp94, elts
.L637:
	.loc 1 3982 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, elts
	jne	.L640	#,
	.loc 1 3990 0 is_stmt 1
	movq	-16(%rbp), %rax	# maxindex, tmp95
	movq	%rax, %rdi	# tmp95,
	call	copy_node	#
	movq	%rax, -16(%rbp)	# tmp96, maxindex
.LBE38:
	jmp	.L634	#
.L636:
	.loc 1 3995 0
	movq	global_trees(%rip), %rax	# global_trees, D.21723
	cmpq	-48(%rbp), %rax	# initial_value, D.21723
	je	.L641	#,
	.loc 1 3996 0
	movl	$1, -24(%rbp)	#, value
.L641:
	.loc 1 3999 0
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	build_int_2_wide	#
	movq	%rax, -16(%rbp)	# tmp97, maxindex
.L634:
	.loc 1 4003 0
	cmpq	$0, -16(%rbp)	#, maxindex
	jne	.L642	#,
	.loc 1 4005 0
	cmpl	$0, -52(%rbp)	#, do_default
	je	.L643	#,
	.loc 1 4006 0
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	build_int_2_wide	#
	movq	%rax, -16(%rbp)	# tmp98, maxindex
.L643:
	.loc 1 4007 0
	movl	$2, -24(%rbp)	#, value
.L642:
	.loc 1 4010 0
	cmpq	$0, -16(%rbp)	#, maxindex
	je	.L644	#,
	.loc 1 4012 0
	movq	-16(%rbp), %rax	# maxindex, tmp99
	movq	%rax, %rdi	# tmp99,
	call	build_index_type	#
	movq	-40(%rbp), %rdx	# type, tmp100
	movq	%rax, 24(%rdx)	# D.21723, type_41(D)->type.values
	.loc 1 4013 0
	movq	-16(%rbp), %rax	# maxindex, tmp101
	movq	8(%rax), %rax	# maxindex_5->common.type, D.21723
	testq	%rax, %rax	# D.21723
	jne	.L644	#,
	.loc 1 4014 0
	movq	-40(%rbp), %rax	# type, tmp102
	movq	24(%rax), %rdx	# type_41(D)->type.values, D.21723
	movq	-16(%rbp), %rax	# maxindex, tmp103
	movq	%rdx, 8(%rax)	# D.21723, maxindex_5->common.type
.L644:
	.loc 1 4019 0
	movq	-40(%rbp), %rax	# type, tmp104
	movq	%rax, %rdi	# tmp104,
	call	layout_type	#
	.loc 1 4021 0
	movl	-24(%rbp), %eax	# value, D.21725
	.loc 1 4022 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	complete_array_type, .-complete_array_type
	.section	.rodata
.LC222:
	.string	"type name"
	.align 8
.LC223:
	.string	"`long long long' is too long for GCC"
	.align 8
.LC224:
	.string	"ISO C89 does not support `long long'"
.LC225:
	.string	"duplicate `%s'"
	.align 8
.LC226:
	.string	"two or more data types in declaration of `%s'"
	.align 8
.LC227:
	.string	"`%s' fails to be a typedef or built in type"
	.align 8
.LC228:
	.string	"type defaults to `int' in declaration of `%s'"
	.align 8
.LC229:
	.string	"both long and short specified for `%s'"
	.align 8
.LC230:
	.string	"long or short specified with char for `%s'"
	.align 8
.LC231:
	.string	"long or short specified with floating type for `%s'"
	.align 8
.LC232:
	.string	"the only valid combination is `long double'"
	.align 8
.LC233:
	.string	"both signed and unsigned specified for `%s'"
	.align 8
.LC234:
	.string	"long, short, signed or unsigned invalid for `%s'"
	.align 8
.LC235:
	.string	"long, short, signed or unsigned used invalidly for `%s'"
.LC236:
	.string	"complex invalid for `%s'"
	.align 8
.LC237:
	.string	"ISO C89 does not support complex types"
	.align 8
.LC238:
	.string	"ISO C does not support plain `complex' meaning `double complex'"
	.align 8
.LC239:
	.string	"ISO C does not support complex integer types"
.LC240:
	.string	"duplicate `const'"
.LC241:
	.string	"duplicate `restrict'"
.LC242:
	.string	"duplicate `volatile'"
	.align 8
.LC243:
	.string	"multiple storage classes in declaration of `%s'"
	.align 8
.LC244:
	.string	"function definition declared `auto'"
	.align 8
.LC245:
	.string	"function definition declared `register'"
	.align 8
.LC246:
	.string	"function definition declared `typedef'"
	.align 8
.LC247:
	.string	"storage class specified for structure field `%s'"
	.align 8
.LC248:
	.string	"storage class specified for parameter `%s'"
	.align 8
.LC249:
	.string	"storage class specified for typename"
	.align 8
.LC250:
	.string	"`%s' initialized and declared `extern'"
	.align 8
.LC251:
	.string	"`%s' has both `extern' and initializer"
	.align 8
.LC252:
	.string	"nested function `%s' declared `extern'"
	.align 8
.LC253:
	.string	"top-level declaration of `%s' specifies `auto'"
	.align 8
.LC254:
	.string	"static or type qualifiers in non-parameter array declarator"
	.align 8
.LC255:
	.string	"declaration of `%s' as array of voids"
	.align 8
.LC256:
	.string	"declaration of `%s' as array of functions"
	.align 8
.LC257:
	.string	"size of array `%s' has non-integer type"
	.align 8
.LC258:
	.string	"ISO C forbids zero-size array `%s'"
	.align 8
.LC259:
	.string	"size of array `%s' is negative"
	.align 8
.LC260:
	.string	"ISO C89 forbids array `%s' whose size can't be evaluated"
	.align 8
.LC261:
	.string	"ISO C89 forbids variable-size array `%s'"
	.align 8
.LC262:
	.string	"size of array `%s' is too large"
	.align 8
.LC263:
	.string	"ISO C89 does not support flexible array members"
	.align 8
.LC264:
	.string	"array type has incomplete element type"
	.align 8
.LC265:
	.string	"`%s' declared as function returning a function"
	.align 8
.LC266:
	.string	"`%s' declared as function returning an array"
	.align 8
.LC267:
	.string	"ISO C forbids qualified void function return type"
	.align 8
.LC268:
	.string	"type qualifiers ignored on function return type"
	.align 8
.LC269:
	.string	"ISO C forbids qualified function types"
	.align 8
.LC270:
	.string	"invalid type modifier within pointer declarator"
	.align 8
.LC271:
	.string	"ISO C forbids const or volatile function types"
	.align 8
.LC272:
	.string	"variable or field `%s' declared void"
	.align 8
.LC273:
	.string	"attributes in parameter array declarator ignored"
	.align 8
.LC274:
	.string	"invalid type modifier within array declarator"
	.align 8
.LC275:
	.string	"field `%s' declared as a function"
	.align 8
.LC276:
	.string	"field `%s' has incomplete type"
	.align 8
.LC277:
	.string	"invalid storage class for function `%s'"
	.align 8
.LC278:
	.string	"`noreturn' function returns non-void value"
.LC279:
	.string	"cannot inline function `main'"
	.align 8
.LC280:
	.string	"variable `%s' declared `inline'"
	.text
	.type	grokdeclarator, @function
grokdeclarator:
.LFB56:
	.loc 1 4059 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$344, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -328(%rbp)	# declarator, declarator
	movq	%rsi, -336(%rbp)	# declspecs, declspecs
	movl	%edx, -340(%rbp)	# decl_context, decl_context
	movl	%ecx, -344(%rbp)	# initialized, initialized
	.loc 1 4060 0
	movl	$0, -312(%rbp)	#, specbits
	.loc 1 4062 0
	movq	$0, -216(%rbp)	#, type
	.loc 1 4063 0
	movl	$0, -308(%rbp)	#, longlong
	.loc 1 4067 0
	movl	$0, -292(%rbp)	#, type_quals
	.loc 1 4069 0
	movl	$0, -288(%rbp)	#, explicit_int
	.loc 1 4070 0
	movl	$0, -284(%rbp)	#, explicit_char
	.loc 1 4071 0
	movl	$0, -280(%rbp)	#, defaulted_int
	.loc 1 4072 0
	movq	$0, -184(%rbp)	#, typedef_decl
	.loc 1 4074 0
	movq	$0, -88(%rbp)	#, typedef_type
	.loc 1 4075 0
	movl	$0, -276(%rbp)	#, funcdef_flag
	.loc 1 4076 0
	movl	$0, -272(%rbp)	#, innermost_code
	.loc 1 4077 0
	movl	$0, -268(%rbp)	#, bitfield
	.loc 1 4078 0
	movl	$0, -264(%rbp)	#, size_varies
	.loc 1 4079 0
	movq	$0, -168(%rbp)	#, decl_attr
	.loc 1 4080 0
	movq	$0, -160(%rbp)	#, array_ptr_quals
	.loc 1 4081 0
	movl	$0, -260(%rbp)	#, array_parm_static
	.loc 1 4082 0
	movq	$0, -152(%rbp)	#, returned_attrs
	.loc 1 4084 0
	cmpl	$4, -340(%rbp)	#, decl_context
	jne	.L647	#,
	.loc 1 4085 0
	movl	$1, -268(%rbp)	#, bitfield
	movl	$3, -340(%rbp)	#, decl_context
.L647:
	.loc 1 4087 0
	cmpl	$1, -340(%rbp)	#, decl_context
	jne	.L648	#,
	.loc 1 4088 0
	movl	$1, -276(%rbp)	#, funcdef_flag
	movl	$0, -340(%rbp)	#, decl_context
.L648:
.LBB39:
	.loc 1 4093 0
	movq	-328(%rbp), %rax	# declarator, tmp601
	movq	%rax, -144(%rbp)	# tmp601, decl
	.loc 1 4094 0
	movq	$0, -176(%rbp)	#, name
	.loc 1 4096 0
	jmp	.L649	#
.L655:
	.loc 1 4097 0
	movq	-144(%rbp), %rax	# decl, tmp602
	movzbl	16(%rax), %eax	# decl_70->common.code, D.21728
	movzbl	%al, %eax	# D.21728, D.21729
	cmpl	$41, %eax	#, D.21729
	je	.L651	#,
	cmpl	$41, %eax	#, D.21729
	ja	.L652	#,
	cmpl	$1, %eax	#, D.21729
	je	.L653	#,
	cmpl	$2, %eax	#, D.21729
	je	.L654	#,
	jmp	.L650	#
.L652:
	cmpl	$43, %eax	#, D.21729
	je	.L651	#,
	cmpl	$53, %eax	#, D.21729
	jne	.L650	#,
.L651:
	.loc 1 4102 0
	movq	-144(%rbp), %rax	# decl, tmp603
	movzbl	16(%rax), %eax	# decl_70->common.code, D.21728
	movzbl	%al, %eax	# D.21728, tmp604
	movl	%eax, -272(%rbp)	# tmp604, innermost_code
	.loc 1 4103 0
	movq	-144(%rbp), %rax	# decl, tmp605
	movq	32(%rax), %rax	# decl_70->exp.operands, tmp606
	movq	%rax, -144(%rbp)	# tmp606, decl
	.loc 1 4104 0
	jmp	.L649	#
.L654:
	.loc 1 4107 0
	movq	-144(%rbp), %rax	# decl, tmp607
	movq	32(%rax), %rax	# decl_70->list.value, tmp608
	movq	%rax, -144(%rbp)	# tmp608, decl
	.loc 1 4108 0
	jmp	.L649	#
.L653:
	.loc 1 4111 0
	movq	-144(%rbp), %rax	# decl, tmp609
	movq	32(%rax), %rax	# decl_70->identifier.id.str, tmp610
	movq	%rax, -176(%rbp)	# tmp610, name
	.loc 1 4112 0
	movq	$0, -144(%rbp)	#, decl
	.loc 1 4113 0
	jmp	.L649	#
.L650:
	.loc 1 4116 0
	movl	$__FUNCTION__.14633, %edx	#,
	movl	$4116, %esi	#,
	movl	$.LC154, %edi	#,
	call	fancy_abort	#
.L649:
	.loc 1 4096 0 discriminator 1
	cmpq	$0, -144(%rbp)	#, decl
	jne	.L655	#,
	.loc 1 4118 0
	cmpq	$0, -176(%rbp)	#, name
	jne	.L656	#,
	.loc 1 4119 0
	movq	$.LC222, -176(%rbp)	#, name
.L656:
.LBE39:
	.loc 1 4125 0
	cmpl	$0, -276(%rbp)	#, funcdef_flag
	je	.L657	#,
	.loc 1 4125 0 is_stmt 0 discriminator 1
	cmpl	$53, -272(%rbp)	#, innermost_code
	je	.L657	#,
	.loc 1 4126 0 is_stmt 1
	movl	$0, %eax	#, D.21727
	jmp	.L901	#
.L657:
	.loc 1 4135 0
	cmpl	$0, -340(%rbp)	#, decl_context
	jne	.L659	#,
	.loc 1 4135 0 is_stmt 0 discriminator 1
	cmpl	$0, -276(%rbp)	#, funcdef_flag
	jne	.L659	#,
	.loc 1 4136 0 is_stmt 1
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.292
	movzbl	48(%rax), %eax	# current_binding_level.292_142->parm_flag, D.21730
	testb	%al, %al	# D.21730
	je	.L659	#,
	.loc 1 4137 0
	movl	$2, -340(%rbp)	#, decl_context
.L659:
	.loc 1 4153 0
	movq	-336(%rbp), %rax	# declspecs, tmp611
	movq	%rax, -192(%rbp)	# tmp611, spec
	jmp	.L660	#
.L678:
.LBB40:
	.loc 1 4155 0
	movq	-192(%rbp), %rax	# spec, tmp612
	movq	32(%rax), %rax	# spec_12->list.value, tmp613
	movq	%rax, -80(%rbp)	# tmp613, id
	.loc 1 4159 0
	cmpq	$0, -80(%rbp)	#, id
	je	.L661	#,
	.loc 1 4159 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# id, tmp614
	movzbl	18(%rax), %eax	# *id_147, D.21728
	andl	$-128, %eax	#, D.21728
	testb	%al, %al	# D.21728
	je	.L661	#,
	.loc 1 4161 0 is_stmt 1
	movl	deprecated_state(%rip), %eax	# deprecated_state, deprecated_state.293
	cmpl	$1, %eax	#, deprecated_state.293
	je	.L661	#,
	.loc 1 4162 0
	movq	-80(%rbp), %rax	# id, tmp615
	movq	%rax, %rdi	# tmp615,
	call	warn_deprecated_use	#
.L661:
	.loc 1 4165 0
	movq	ridpointers(%rip), %rax	# ridpointers, ridpointers.294
	addq	$216, %rax	#, D.21731
	movq	(%rax), %rax	# *_152, D.21732
	cmpq	-80(%rbp), %rax	# id, D.21732
	jne	.L662	#,
	.loc 1 4166 0
	movl	$1, -288(%rbp)	#, explicit_int
.L662:
	.loc 1 4167 0
	movq	ridpointers(%rip), %rax	# ridpointers, ridpointers.295
	addq	$224, %rax	#, D.21731
	movq	(%rax), %rax	# *_156, D.21732
	cmpq	-80(%rbp), %rax	# id, D.21732
	jne	.L663	#,
	.loc 1 4168 0
	movl	$1, -284(%rbp)	#, explicit_char
.L663:
	.loc 1 4170 0
	movq	-80(%rbp), %rax	# id, tmp616
	movzbl	16(%rax), %eax	# id_147->common.code, D.21728
	cmpb	$1, %al	#, D.21728
	jne	.L664	#,
	.loc 1 4170 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# id, tmp617
	movzbl	19(%rax), %eax	# *id_147, D.21728
	andl	$1, %eax	#, D.21728
	testb	%al, %al	# D.21728
	je	.L664	#,
.LBB41:
	.loc 1 4172 0 is_stmt 1
	movq	-80(%rbp), %rax	# id, tmp618
	movzbl	43(%rax), %eax	# MEM[(struct c_common_identifier *)id_147].node.rid_code, D.21728
	movzbl	%al, %eax	# D.21728, tmp619
	movl	%eax, -236(%rbp)	# tmp619, i
	.loc 1 4173 0
	movl	-236(%rbp), %eax	# i, i.296
	cmpl	$26, %eax	#, i.296
	jg	.L664	#,
	.loc 1 4175 0
	cmpl	$2, -236(%rbp)	#, i
	jne	.L665	#,
	.loc 1 4175 0 is_stmt 0 discriminator 1
	movl	-236(%rbp), %eax	# i, i.297
	movl	-312(%rbp), %edx	# specbits, tmp620
	movl	%eax, %ecx	# i.297, tmp994
	sarl	%cl, %edx	# tmp994, D.21733
	movl	%edx, %eax	# D.21733, D.21733
	andl	$1, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	je	.L665	#,
	.loc 1 4177 0 is_stmt 1
	cmpl	$0, -308(%rbp)	#, longlong
	je	.L666	#,
	.loc 1 4178 0
	movl	$.LC223, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 4177 0
	jmp	.L669	#
.L666:
	.loc 1 4181 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.298
	testl	%eax, %eax	# pedantic.298
	je	.L668	#,
	.loc 1 4181 0 is_stmt 0 discriminator 1
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.299
	testl	%eax, %eax	# flag_isoc99.299
	jne	.L668	#,
	movl	in_system_header(%rip), %eax	# in_system_header, in_system_header.300
	testl	%eax, %eax	# in_system_header.300
	jne	.L668	#,
	.loc 1 4182 0 is_stmt 1
	movl	warn_long_long(%rip), %eax	# warn_long_long, warn_long_long.301
	testl	%eax, %eax	# warn_long_long.301
	je	.L668	#,
	.loc 1 4183 0
	movl	$.LC224, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L668:
	.loc 1 4184 0
	movl	$1, -308(%rbp)	#, longlong
	.loc 1 4177 0
	jmp	.L669	#
.L665:
	.loc 1 4187 0
	movl	-236(%rbp), %eax	# i, i.302
	movl	-312(%rbp), %edx	# specbits, tmp621
	movl	%eax, %ecx	# i.302, tmp996
	sarl	%cl, %edx	# tmp996, D.21733
	movl	%edx, %eax	# D.21733, D.21733
	andl	$1, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	je	.L669	#,
	.loc 1 4188 0
	movq	-80(%rbp), %rax	# id, tmp622
	movq	32(%rax), %rax	# id_147->identifier.id.str, D.21734
	movq	%rax, %rsi	# D.21734,
	movl	$.LC225, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L669:
	.loc 1 4189 0
	movl	-236(%rbp), %eax	# i, i.303
	movl	$1, %edx	#, tmp623
	movl	%eax, %ecx	# i.303, tmp998
	sall	%cl, %edx	# tmp998, D.21733
	movl	%edx, %eax	# D.21733, D.21733
	orl	%eax, -312(%rbp)	# D.21733, specbits
	.loc 1 4190 0
	jmp	.L670	#
.L664:
.LBE41:
	.loc 1 4193 0
	movq	-216(%rbp), %rax	# type, type.304
	testq	%rax, %rax	# type.304
	je	.L671	#,
	.loc 1 4194 0
	movq	-176(%rbp), %rax	# name, tmp624
	movq	%rax, %rsi	# tmp624,
	movl	$.LC226, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	jmp	.L670	#
.L671:
	.loc 1 4196 0
	movq	-80(%rbp), %rax	# id, tmp625
	movzbl	16(%rax), %eax	# id_147->common.code, D.21728
	cmpb	$33, %al	#, D.21728
	jne	.L672	#,
	.loc 1 4198 0
	movq	-80(%rbp), %rax	# id, tmp626
	movq	8(%rax), %rdx	# id_147->common.type, D.21732
	movq	global_trees(%rip), %rax	# global_trees, D.21732
	cmpq	%rax, %rdx	# D.21732, D.21732
	je	.L670	#,
	.loc 1 4202 0
	movq	-80(%rbp), %rax	# id, tmp627
	movq	8(%rax), %rax	# id_147->common.type, type.305
	movq	%rax, -216(%rbp)	# type.305, type
	.loc 1 4203 0
	movq	-80(%rbp), %rax	# id, tmp628
	movq	136(%rax), %rax	# id_147->decl.attributes, tmp629
	movq	%rax, -168(%rbp)	# tmp629, decl_attr
	.loc 1 4204 0
	movq	-80(%rbp), %rax	# id, tmp630
	movq	%rax, -184(%rbp)	# tmp630, typedef_decl
	jmp	.L670	#
.L672:
	.loc 1 4208 0
	movq	-80(%rbp), %rax	# id, tmp631
	movzbl	16(%rax), %eax	# id_147->common.code, D.21728
	cmpb	$1, %al	#, D.21728
	jne	.L674	#,
.LBB42:
	.loc 1 4210 0
	movq	-80(%rbp), %rax	# id, tmp632
	movq	%rax, %rdi	# tmp632,
	call	lookup_name	#
	movq	%rax, -72(%rbp)	# tmp633, t
	.loc 1 4211 0
	movq	-72(%rbp), %rax	# t, tmp634
	movq	8(%rax), %rdx	# t_188->common.type, D.21732
	movq	global_trees(%rip), %rax	# global_trees, D.21732
	cmpq	%rax, %rdx	# D.21732, D.21732
	je	.L675	#,
	.loc 1 4213 0
	cmpq	$0, -72(%rbp)	#, t
	je	.L676	#,
	.loc 1 4213 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# t, tmp635
	movzbl	16(%rax), %eax	# t_188->common.code, D.21728
	cmpb	$33, %al	#, D.21728
	je	.L677	#,
.L676:
	.loc 1 4215 0 is_stmt 1
	movq	-80(%rbp), %rax	# id, tmp636
	movq	32(%rax), %rax	# id_147->identifier.id.str, D.21734
	.loc 1 4214 0
	movq	%rax, %rsi	# D.21734,
	movl	$.LC227, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	jmp	.L675	#
.L677:
	.loc 1 4218 0
	movq	-72(%rbp), %rax	# t, tmp637
	movq	8(%rax), %rax	# t_188->common.type, type.306
	movq	%rax, -216(%rbp)	# type.306, type
	.loc 1 4219 0
	movq	-72(%rbp), %rax	# t, tmp638
	movq	%rax, -184(%rbp)	# tmp638, typedef_decl
.LBE42:
	jmp	.L670	#
.L675:
	jmp	.L670	#
.L674:
	.loc 1 4222 0
	movq	-80(%rbp), %rax	# id, tmp639
	movzbl	16(%rax), %eax	# id_147->common.code, D.21728
	testb	%al, %al	# D.21728
	je	.L670	#,
	.loc 1 4223 0
	movq	-80(%rbp), %rax	# id, tmp640
	movq	%rax, -216(%rbp)	# tmp640, type
.L670:
.LBE40:
	.loc 1 4153 0
	movq	-192(%rbp), %rax	# spec, tmp641
	movq	(%rax), %rax	# spec_12->common.chain, tmp642
	movq	%rax, -192(%rbp)	# tmp642, spec
.L660:
	.loc 1 4153 0 is_stmt 0 discriminator 1
	cmpq	$0, -192(%rbp)	#, spec
	jne	.L678	#,
	.loc 1 4229 0 is_stmt 1
	movq	-216(%rbp), %rax	# type, tmp643
	movq	%rax, -88(%rbp)	# tmp643, typedef_type
	.loc 1 4230 0
	movq	-216(%rbp), %rax	# type, type.307
	testq	%rax, %rax	# type.307
	je	.L679	#,
	.loc 1 4231 0
	movq	-216(%rbp), %rax	# type, type.308
	movzbl	63(%rax), %eax	# *type.308_199, tmp646
	shrb	%al	# D.21735
	andl	$1, %eax	#, D.21735
	movzbl	%al, %eax	# D.21735, tmp647
	movl	%eax, -264(%rbp)	# tmp647, size_varies
.L679:
	.loc 1 4236 0
	movq	-216(%rbp), %rax	# type, type.309
	testq	%rax, %rax	# type.309
	jne	.L680	#,
	.loc 1 4238 0
	movl	-312(%rbp), %eax	# specbits, tmp648
	andl	$33926, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	jne	.L681	#,
	.loc 1 4243 0
	movl	-312(%rbp), %eax	# specbits, tmp649
	andl	$64, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	je	.L682	#,
	.loc 1 4243 0 is_stmt 0 discriminator 1
	cmpl	$0, -344(%rbp)	#, initialized
	jne	.L681	#,
.L682:
	.loc 1 4244 0 is_stmt 1
	movl	in_system_header(%rip), %eax	# in_system_header, in_system_header.310
	testl	%eax, %eax	# in_system_header.310
	jne	.L681	#,
	.loc 1 4249 0
	movl	warn_implicit_int(%rip), %eax	# warn_implicit_int, warn_implicit_int.311
	testl	%eax, %eax	# warn_implicit_int.311
	jne	.L683	#,
	.loc 1 4249 0 is_stmt 0 discriminator 1
	movl	warn_return_type(%rip), %eax	# warn_return_type, warn_return_type.312
	testl	%eax, %eax	# warn_return_type.312
	jne	.L683	#,
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.313
	testl	%eax, %eax	# flag_isoc99.313
	je	.L684	#,
.L683:
	.loc 1 4250 0 is_stmt 1
	cmpl	$0, -276(%rbp)	#, funcdef_flag
	je	.L684	#,
	.loc 1 4251 0
	movl	$1, warn_about_return_type(%rip)	#, warn_about_return_type
	jmp	.L681	#
.L684:
	.loc 1 4252 0
	movl	warn_implicit_int(%rip), %eax	# warn_implicit_int, warn_implicit_int.314
	testl	%eax, %eax	# warn_implicit_int.314
	jne	.L685	#,
	.loc 1 4252 0 is_stmt 0 discriminator 1
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.315
	testl	%eax, %eax	# flag_isoc99.315
	je	.L681	#,
.L685:
	.loc 1 4253 0 is_stmt 1
	movq	-176(%rbp), %rax	# name, tmp650
	movq	%rax, %rsi	# tmp650,
	movl	$.LC228, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn_c99	#
.L681:
	.loc 1 4257 0
	movl	$1, -280(%rbp)	#, defaulted_int
	.loc 1 4258 0
	movq	integer_types+40(%rip), %rax	# integer_types, type.316
	movq	%rax, -216(%rbp)	# type.316, type
.L680:
	.loc 1 4266 0
	movl	-312(%rbp), %eax	# specbits, tmp651
	andl	$4, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	je	.L686	#,
	.loc 1 4266 0 is_stmt 0 discriminator 1
	cmpl	$0, -308(%rbp)	#, longlong
	jne	.L686	#,
	.loc 1 4267 0 is_stmt 1
	movq	-216(%rbp), %rax	# type, type.317
	movq	128(%rax), %rdx	# type.317_215->type.main_variant, D.21732
	movq	global_trees+200(%rip), %rax	# global_trees, D.21732
	cmpq	%rax, %rdx	# D.21732, D.21732
	jne	.L686	#,
	.loc 1 4269 0
	andl	$-5, -312(%rbp)	#, specbits
	.loc 1 4270 0
	movq	global_trees+208(%rip), %rax	# global_trees, type.318
	movq	%rax, -216(%rbp)	# type.318, type
.L686:
	.loc 1 4275 0
	movl	-312(%rbp), %eax	# specbits, tmp652
	andl	$1158, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	je	.L687	#,
.LBB43:
	.loc 1 4278 0
	movl	$0, -256(%rbp)	#, ok
	.loc 1 4280 0
	movl	-312(%rbp), %eax	# specbits, tmp653
	andl	$4, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	je	.L688	#,
	.loc 1 4281 0
	movl	-312(%rbp), %eax	# specbits, tmp654
	andl	$128, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	je	.L688	#,
	.loc 1 4282 0
	movq	-176(%rbp), %rax	# name, tmp655
	movq	%rax, %rsi	# tmp655,
	movl	$.LC229, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	jmp	.L689	#
.L688:
	.loc 1 4283 0
	movl	-312(%rbp), %eax	# specbits, tmp656
	andl	$4, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	jne	.L690	#,
	.loc 1 4284 0
	movl	-312(%rbp), %eax	# specbits, tmp657
	andl	$128, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	je	.L691	#,
.L690:
	.loc 1 4285 0
	cmpl	$0, -284(%rbp)	#, explicit_char
	je	.L691	#,
	.loc 1 4286 0
	movq	-176(%rbp), %rax	# name, tmp658
	movq	%rax, %rsi	# tmp658,
	movl	$.LC230, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	jmp	.L689	#
.L691:
	.loc 1 4287 0
	movl	-312(%rbp), %eax	# specbits, tmp659
	andl	$4, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	jne	.L692	#,
	.loc 1 4288 0
	movl	-312(%rbp), %eax	# specbits, tmp660
	andl	$128, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	je	.L693	#,
.L692:
	.loc 1 4289 0
	movq	-216(%rbp), %rax	# type, type.319
	movzbl	16(%rax), %eax	# type.319_228->common.code, D.21728
	cmpb	$7, %al	#, D.21728
	jne	.L693	#,
.LBB44:
	.loc 1 4293 0
	movq	-176(%rbp), %rax	# name, tmp661
	movq	%rax, %rsi	# tmp661,
	movl	$.LC231, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 4294 0
	movl	already.14645(%rip), %eax	# already, already.320
	testl	%eax, %eax	# already.320
	jne	.L694	#,
	.loc 1 4294 0 is_stmt 0 discriminator 1
	movl	pedantic(%rip), %eax	# pedantic, pedantic.321
	testl	%eax, %eax	# pedantic.321
	jne	.L694	#,
	.loc 1 4296 0 is_stmt 1
	movl	$.LC232, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 4297 0
	movl	$1, already.14645(%rip)	#, already
.LBE44:
	.loc 1 4290 0
	jmp	.L689	#
.L694:
	jmp	.L689	#
.L693:
	.loc 1 4300 0
	movl	-312(%rbp), %eax	# specbits, tmp662
	andl	$1024, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	je	.L695	#,
	.loc 1 4301 0
	movl	-312(%rbp), %eax	# specbits, tmp663
	andl	$2, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	je	.L695	#,
	.loc 1 4302 0
	movq	-176(%rbp), %rax	# name, tmp664
	movq	%rax, %rsi	# tmp664,
	movl	$.LC233, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	jmp	.L689	#
.L695:
	.loc 1 4303 0
	movq	-216(%rbp), %rax	# type, type.322
	movzbl	16(%rax), %eax	# type.322_234->common.code, D.21728
	cmpb	$6, %al	#, D.21728
	je	.L696	#,
	.loc 1 4304 0
	movq	-176(%rbp), %rax	# name, tmp665
	movq	%rax, %rsi	# tmp665,
	movl	$.LC234, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	jmp	.L689	#
.L696:
	.loc 1 4307 0
	movl	$1, -256(%rbp)	#, ok
	.loc 1 4308 0
	cmpl	$0, -288(%rbp)	#, explicit_int
	jne	.L689	#,
	.loc 1 4308 0 is_stmt 0 discriminator 1
	cmpl	$0, -280(%rbp)	#, defaulted_int
	jne	.L689	#,
	cmpl	$0, -284(%rbp)	#, explicit_char
	jne	.L689	#,
	movl	pedantic(%rip), %eax	# pedantic, pedantic.323
	testl	%eax, %eax	# pedantic.323
	je	.L689	#,
	.loc 1 4310 0 is_stmt 1
	movq	-176(%rbp), %rax	# name, tmp666
	movq	%rax, %rsi	# tmp666,
	movl	$.LC235, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
	.loc 1 4312 0
	movl	flag_pedantic_errors(%rip), %eax	# flag_pedantic_errors, flag_pedantic_errors.324
	testl	%eax, %eax	# flag_pedantic_errors.324
	je	.L689	#,
	.loc 1 4313 0
	movl	$0, -256(%rbp)	#, ok
.L689:
	.loc 1 4318 0
	cmpl	$0, -256(%rbp)	#, ok
	jne	.L687	#,
	.loc 1 4320 0
	andl	$-1159, -312(%rbp)	#, specbits
	.loc 1 4322 0
	movl	$0, -308(%rbp)	#, longlong
.L687:
.LBE43:
	.loc 1 4326 0
	movl	-312(%rbp), %eax	# specbits, tmp667
	andl	$32768, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	je	.L697	#,
	.loc 1 4327 0
	movq	-216(%rbp), %rax	# type, type.325
	movzbl	16(%rax), %eax	# type.325_243->common.code, D.21728
	cmpb	$6, %al	#, D.21728
	je	.L697	#,
	.loc 1 4327 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# type, type.326
	movzbl	16(%rax), %eax	# type.326_245->common.code, D.21728
	cmpb	$7, %al	#, D.21728
	je	.L697	#,
	.loc 1 4329 0 is_stmt 1
	movq	-176(%rbp), %rax	# name, tmp668
	movq	%rax, %rsi	# tmp668,
	movl	$.LC236, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 4330 0
	andl	$-32769, -312(%rbp)	#, specbits
.L697:
	.loc 1 4335 0
	movl	-312(%rbp), %eax	# specbits, tmp669
	andl	$2, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	jne	.L698	#,
	.loc 1 4337 0
	cmpl	$0, -268(%rbp)	#, bitfield
	je	.L699	#,
	.loc 1 4337 0 is_stmt 0 discriminator 1
	movl	flag_traditional(%rip), %eax	# flag_traditional, flag_traditional.327
	testl	%eax, %eax	# flag_traditional.327
	je	.L699	#,
	.loc 1 4338 0 is_stmt 1
	movl	explicit_flag_signed_bitfields(%rip), %eax	# explicit_flag_signed_bitfields, explicit_flag_signed_bitfields.328
	testl	%eax, %eax	# explicit_flag_signed_bitfields.328
	je	.L698	#,
	.loc 1 4338 0 is_stmt 0 discriminator 1
	movl	flag_signed_bitfields(%rip), %eax	# flag_signed_bitfields, flag_signed_bitfields.329
	testl	%eax, %eax	# flag_signed_bitfields.329
	je	.L698	#,
.L699:
	.loc 1 4339 0 is_stmt 1
	cmpl	$0, -268(%rbp)	#, bitfield
	je	.L700	#,
	.loc 1 4339 0 is_stmt 0 discriminator 1
	movl	flag_signed_bitfields(%rip), %eax	# flag_signed_bitfields, flag_signed_bitfields.330
	testl	%eax, %eax	# flag_signed_bitfields.330
	jne	.L700	#,
	.loc 1 4340 0 is_stmt 1
	cmpl	$0, -288(%rbp)	#, explicit_int
	jne	.L701	#,
	.loc 1 4340 0 is_stmt 0 discriminator 1
	cmpl	$0, -280(%rbp)	#, defaulted_int
	jne	.L701	#,
	cmpl	$0, -284(%rbp)	#, explicit_char
	jne	.L701	#,
	.loc 1 4343 0 is_stmt 1
	cmpq	$0, -184(%rbp)	#, typedef_decl
	je	.L701	#,
	.loc 1 4344 0 discriminator 1
	movq	-184(%rbp), %rax	# typedef_decl, tmp670
	movzbl	52(%rax), %eax	# *typedef_decl_49, D.21728
	andl	$64, %eax	#, D.21728
	.loc 1 4343 0 discriminator 1
	testb	%al, %al	# D.21728
	jne	.L700	#,
.L701:
	.loc 1 4345 0
	movq	-216(%rbp), %rax	# type, type.331
	movzbl	16(%rax), %eax	# type.331_255->common.code, D.21728
	cmpb	$10, %al	#, D.21728
	je	.L700	#,
	.loc 1 4346 0
	movl	-312(%rbp), %eax	# specbits, tmp671
	andl	$1024, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	jne	.L700	#,
.L698:
	.loc 1 4348 0
	cmpl	$0, -308(%rbp)	#, longlong
	je	.L702	#,
	.loc 1 4349 0
	movq	integer_types+80(%rip), %rax	# integer_types, type.332
	movq	%rax, -216(%rbp)	# type.332, type
	jmp	.L703	#
.L702:
	.loc 1 4350 0
	movl	-312(%rbp), %eax	# specbits, tmp672
	andl	$4, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	je	.L704	#,
	.loc 1 4351 0
	movq	integer_types+64(%rip), %rax	# integer_types, type.333
	movq	%rax, -216(%rbp)	# type.333, type
	jmp	.L703	#
.L704:
	.loc 1 4352 0
	movl	-312(%rbp), %eax	# specbits, tmp673
	andl	$128, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	je	.L705	#,
	.loc 1 4353 0
	movq	integer_types+32(%rip), %rax	# integer_types, type.334
	movq	%rax, -216(%rbp)	# type.334, type
	jmp	.L703	#
.L705:
	.loc 1 4354 0
	movq	integer_types(%rip), %rdx	# integer_types, D.21732
	movq	-216(%rbp), %rax	# type, type.335
	cmpq	%rax, %rdx	# type.335, D.21732
	jne	.L706	#,
	.loc 1 4355 0
	movq	integer_types+16(%rip), %rax	# integer_types, type.336
	movq	%rax, -216(%rbp)	# type.336, type
	jmp	.L703	#
.L706:
	.loc 1 4356 0
	cmpq	$0, -184(%rbp)	#, typedef_decl
	je	.L707	#,
	.loc 1 4357 0
	movq	-216(%rbp), %rax	# type, type.337
	movq	%rax, %rdi	# type.337,
	call	unsigned_type	#
	movq	%rax, -216(%rbp)	# type.338, type
	jmp	.L703	#
.L707:
	.loc 1 4359 0
	movq	integer_types+48(%rip), %rax	# integer_types, type.339
	movq	%rax, -216(%rbp)	# type.339, type
	.loc 1 4348 0
	jmp	.L708	#
.L703:
	jmp	.L708	#
.L700:
	.loc 1 4361 0
	movl	-312(%rbp), %eax	# specbits, tmp674
	andl	$1024, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	je	.L709	#,
	.loc 1 4362 0
	movq	integer_types(%rip), %rdx	# integer_types, D.21732
	movq	-216(%rbp), %rax	# type, type.340
	cmpq	%rax, %rdx	# type.340, D.21732
	jne	.L709	#,
	.loc 1 4363 0
	movq	integer_types+8(%rip), %rax	# integer_types, type.341
	movq	%rax, -216(%rbp)	# type.341, type
	jmp	.L708	#
.L709:
	.loc 1 4364 0
	cmpl	$0, -308(%rbp)	#, longlong
	je	.L710	#,
	.loc 1 4365 0
	movq	integer_types+72(%rip), %rax	# integer_types, type.342
	movq	%rax, -216(%rbp)	# type.342, type
	jmp	.L708	#
.L710:
	.loc 1 4366 0
	movl	-312(%rbp), %eax	# specbits, tmp675
	andl	$4, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	je	.L711	#,
	.loc 1 4367 0
	movq	integer_types+56(%rip), %rax	# integer_types, type.343
	movq	%rax, -216(%rbp)	# type.343, type
	jmp	.L708	#
.L711:
	.loc 1 4368 0
	movl	-312(%rbp), %eax	# specbits, tmp676
	andl	$128, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	je	.L708	#,
	.loc 1 4369 0
	movq	integer_types+24(%rip), %rax	# integer_types, type.344
	movq	%rax, -216(%rbp)	# type.344, type
.L708:
	.loc 1 4371 0
	movl	-312(%rbp), %eax	# specbits, tmp677
	andl	$32768, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	je	.L712	#,
	.loc 1 4373 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.345
	testl	%eax, %eax	# pedantic.345
	je	.L713	#,
	.loc 1 4373 0 is_stmt 0 discriminator 1
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.346
	testl	%eax, %eax	# flag_isoc99.346
	jne	.L713	#,
	.loc 1 4374 0 is_stmt 1
	movl	$.LC237, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L713:
	.loc 1 4380 0
	cmpl	$0, -280(%rbp)	#, defaulted_int
	je	.L714	#,
	.loc 1 4380 0 is_stmt 0 discriminator 1
	cmpl	$0, -308(%rbp)	#, longlong
	jne	.L714	#,
	.loc 1 4381 0 is_stmt 1
	movl	-312(%rbp), %eax	# specbits, tmp678
	andl	$1158, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	jne	.L714	#,
	.loc 1 4385 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.347
	testl	%eax, %eax	# pedantic.347
	je	.L715	#,
	.loc 1 4386 0
	movl	$.LC238, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L715:
	.loc 1 4387 0
	movq	global_trees+176(%rip), %rax	# global_trees, type.348
	movq	%rax, -216(%rbp)	# type.348, type
	jmp	.L712	#
.L714:
	.loc 1 4389 0
	movq	integer_types+40(%rip), %rdx	# integer_types, D.21732
	movq	-216(%rbp), %rax	# type, type.349
	cmpq	%rax, %rdx	# type.349, D.21732
	jne	.L716	#,
	.loc 1 4391 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.350
	testl	%eax, %eax	# pedantic.350
	je	.L717	#,
	.loc 1 4392 0
	movl	$.LC239, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L717:
	.loc 1 4393 0
	movq	global_trees+160(%rip), %rax	# global_trees, type.351
	movq	%rax, -216(%rbp)	# type.351, type
	jmp	.L712	#
.L716:
	.loc 1 4395 0
	movq	global_trees+192(%rip), %rdx	# global_trees, D.21732
	movq	-216(%rbp), %rax	# type, type.352
	cmpq	%rax, %rdx	# type.352, D.21732
	jne	.L718	#,
	.loc 1 4396 0
	movq	global_trees+168(%rip), %rax	# global_trees, type.353
	movq	%rax, -216(%rbp)	# type.353, type
	jmp	.L712	#
.L718:
	.loc 1 4397 0
	movq	global_trees+200(%rip), %rdx	# global_trees, D.21732
	movq	-216(%rbp), %rax	# type, type.354
	cmpq	%rax, %rdx	# type.354, D.21732
	jne	.L719	#,
	.loc 1 4398 0
	movq	global_trees+176(%rip), %rax	# global_trees, type.355
	movq	%rax, -216(%rbp)	# type.355, type
	jmp	.L712	#
.L719:
	.loc 1 4399 0
	movq	global_trees+208(%rip), %rdx	# global_trees, D.21732
	movq	-216(%rbp), %rax	# type, type.356
	cmpq	%rax, %rdx	# type.356, D.21732
	jne	.L720	#,
	.loc 1 4400 0
	movq	global_trees+184(%rip), %rax	# global_trees, type.357
	movq	%rax, -216(%rbp)	# type.357, type
	jmp	.L712	#
.L720:
	.loc 1 4403 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.358
	testl	%eax, %eax	# pedantic.358
	je	.L721	#,
	.loc 1 4404 0
	movl	$.LC239, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L721:
	.loc 1 4405 0
	movq	-216(%rbp), %rax	# type, type.359
	movq	%rax, %rdi	# type.359,
	call	build_complex_type	#
	movq	%rax, -216(%rbp)	# type.360, type
.L712:
	.loc 1 4414 0
	movl	-312(%rbp), %eax	# specbits, tmp679
	andl	$8, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	setne	%al	#, D.21736
	movzbl	%al, %edx	# D.21736, D.21733
	movq	-216(%rbp), %rax	# type, type.361
	movzbl	17(%rax), %eax	# *type.361_303, tmp682
	shrb	$4, %al	#, D.21735
	andl	$1, %eax	#, D.21735
	movzbl	%al, %eax	# D.21735, D.21733
	addl	%edx, %eax	# D.21733, tmp683
	movl	%eax, -304(%rbp)	# tmp683, constp
	.loc 1 4415 0
	movl	-312(%rbp), %eax	# specbits, tmp684
	andl	$4096, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	setne	%al	#, D.21736
	movzbl	%al, %edx	# D.21736, D.21733
	movq	-216(%rbp), %rax	# type, type.362
	movzbl	62(%rax), %eax	# *type.362_310, tmp687
	shrb	$5, %al	#, D.21735
	andl	$1, %eax	#, D.21735
	movzbl	%al, %eax	# D.21735, D.21733
	addl	%edx, %eax	# D.21733, tmp688
	movl	%eax, -300(%rbp)	# tmp688, restrictp
	.loc 1 4416 0
	movl	-312(%rbp), %eax	# specbits, tmp689
	andl	$512, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	setne	%al	#, D.21736
	movzbl	%al, %edx	# D.21736, D.21733
	movq	-216(%rbp), %rax	# type, type.363
	movzbl	17(%rax), %eax	# *type.363_317, tmp692
	shrb	$3, %al	#, D.21735
	andl	$1, %eax	#, D.21735
	movzbl	%al, %eax	# D.21735, D.21733
	addl	%edx, %eax	# D.21733, tmp693
	movl	%eax, -296(%rbp)	# tmp693, volatilep
	.loc 1 4417 0
	movl	-312(%rbp), %eax	# specbits, tmp694
	andl	$256, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	setne	%al	#, D.21736
	movzbl	%al, %eax	# D.21736, tmp695
	movl	%eax, -232(%rbp)	# tmp695, inlinep
	.loc 1 4418 0
	cmpl	$1, -304(%rbp)	#, constp
	jle	.L722	#,
	.loc 1 4418 0 is_stmt 0 discriminator 1
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.364
	testl	%eax, %eax	# flag_isoc99.364
	jne	.L722	#,
	.loc 1 4419 0 is_stmt 1
	movl	$.LC240, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L722:
	.loc 1 4420 0
	cmpl	$1, -300(%rbp)	#, restrictp
	jle	.L723	#,
	.loc 1 4420 0 is_stmt 0 discriminator 1
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.365
	testl	%eax, %eax	# flag_isoc99.365
	jne	.L723	#,
	.loc 1 4421 0 is_stmt 1
	movl	$.LC241, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L723:
	.loc 1 4422 0
	cmpl	$1, -296(%rbp)	#, volatilep
	jle	.L724	#,
	.loc 1 4422 0 is_stmt 0 discriminator 1
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.366
	testl	%eax, %eax	# flag_isoc99.366
	jne	.L724	#,
	.loc 1 4423 0 is_stmt 1
	movl	$.LC242, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L724:
	.loc 1 4424 0
	movl	flag_gen_aux_info(%rip), %eax	# flag_gen_aux_info, flag_gen_aux_info.367
	testl	%eax, %eax	# flag_gen_aux_info.367
	jne	.L725	#,
	.loc 1 4424 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# type, type.368
	movzbl	17(%rax), %eax	# *type.368_328, tmp698
	shrb	$4, %al	#, D.21735
	andl	$1, %eax	#, D.21735
	movzbl	%al, %edx	# D.21735, D.21733
	movq	-216(%rbp), %rax	# type, type.369
	movzbl	17(%rax), %eax	# *type.369_331, tmp701
	shrb	$3, %al	#, D.21735
	andl	$1, %eax	#, D.21735
	movzbl	%al, %eax	# D.21735, D.21733
	addl	%eax, %eax	# D.21733
	orl	%eax, %edx	# D.21733, D.21733
	movq	-216(%rbp), %rax	# type, type.370
	movzbl	62(%rax), %eax	# *type.370_336, tmp704
	shrb	$5, %al	#, D.21735
	andl	$1, %eax	#, D.21735
	movzbl	%al, %eax	# D.21735, D.21733
	sall	$2, %eax	#, D.21733
	orl	%eax, %edx	# D.21733, D.21733
	movq	-216(%rbp), %rax	# type, type.372
	movzbl	16(%rax), %eax	# type.372_341->common.code, D.21728
	cmpb	$20, %al	#, D.21728
	jne	.L726	#,
	movq	-216(%rbp), %rax	# type, type.373
	movq	8(%rax), %rax	# type.373_343->common.type, D.21732
	testq	%rax, %rax	# D.21732
	je	.L726	#,
	.loc 1 4424 0 discriminator 3
	movl	$1, %eax	#, iftmp.371
	jmp	.L727	#
.L726:
	.loc 1 4424 0 discriminator 2
	movl	$0, %eax	#, iftmp.371
.L727:
	.loc 1 4424 0 discriminator 4
	sall	$3, %eax	#, D.21733
	orl	%edx, %eax	# D.21733, D.21733
	testl	%eax, %eax	# D.21733
	je	.L725	#,
	.loc 1 4425 0 is_stmt 1
	movq	-216(%rbp), %rax	# type, type.374
	movq	128(%rax), %rax	# type.374_349->type.main_variant, type.375
	movq	%rax, -216(%rbp)	# type.375, type
.L725:
	.loc 1 4426 0
	cmpl	$0, -304(%rbp)	#, constp
	setne	%al	#, D.21736
	movzbl	%al, %edx	# D.21736, D.21733
	.loc 1 4427 0
	cmpl	$0, -300(%rbp)	#, restrictp
	je	.L728	#,
	.loc 1 4427 0 is_stmt 0 discriminator 1
	movl	$4, %eax	#, iftmp.376
	jmp	.L729	#
.L728:
	.loc 1 4427 0 discriminator 2
	movl	$0, %eax	#, iftmp.376
.L729:
	.loc 1 4427 0 discriminator 3
	orl	%eax, %edx	# iftmp.376, D.21733
	.loc 1 4428 0 is_stmt 1 discriminator 3
	cmpl	$0, -296(%rbp)	#, volatilep
	je	.L730	#,
	.loc 1 4428 0 is_stmt 0 discriminator 1
	movl	$2, %eax	#, iftmp.377
	jmp	.L731	#
.L730:
	.loc 1 4428 0 discriminator 2
	movl	$0, %eax	#, iftmp.377
.L731:
	.loc 1 4426 0 is_stmt 1
	orl	%edx, %eax	# D.21733, tmp705
	movl	%eax, -292(%rbp)	# tmp705, type_quals
.LBB45:
	.loc 1 4433 0
	movl	$0, -252(%rbp)	#, nclasses
	.loc 1 4435 0
	movl	-312(%rbp), %eax	# specbits, tmp706
	andl	$2048, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	je	.L732	#,
	.loc 1 4435 0 is_stmt 0 discriminator 1
	addl	$1, -252(%rbp)	#, nclasses
.L732:
	.loc 1 4436 0 is_stmt 1
	movl	-312(%rbp), %eax	# specbits, tmp707
	andl	$1, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	je	.L733	#,
	.loc 1 4436 0 is_stmt 0 discriminator 1
	addl	$1, -252(%rbp)	#, nclasses
.L733:
	.loc 1 4437 0 is_stmt 1
	movl	-312(%rbp), %eax	# specbits, tmp708
	andl	$16, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	je	.L734	#,
	.loc 1 4437 0 is_stmt 0 discriminator 1
	addl	$1, -252(%rbp)	#, nclasses
.L734:
	.loc 1 4438 0 is_stmt 1
	movl	-312(%rbp), %eax	# specbits, tmp709
	andl	$32, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	je	.L735	#,
	.loc 1 4438 0 is_stmt 0 discriminator 1
	addl	$1, -252(%rbp)	#, nclasses
.L735:
	.loc 1 4439 0 is_stmt 1
	movl	-312(%rbp), %eax	# specbits, tmp710
	andl	$64, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	je	.L736	#,
	.loc 1 4439 0 is_stmt 0 discriminator 1
	addl	$1, -252(%rbp)	#, nclasses
.L736:
	.loc 1 4444 0 is_stmt 1
	cmpl	$1, -252(%rbp)	#, nclasses
	jle	.L737	#,
	.loc 1 4445 0
	movq	-176(%rbp), %rax	# name, tmp711
	movq	%rax, %rsi	# tmp711,
	movl	$.LC243, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	jmp	.L738	#
.L737:
	.loc 1 4446 0
	cmpl	$0, -276(%rbp)	#, funcdef_flag
	je	.L739	#,
	.loc 1 4448 0
	movl	-312(%rbp), %eax	# specbits, tmp712
	andl	$2144, %eax	#, D.21733
	.loc 1 4447 0
	testl	%eax, %eax	# D.21733
	je	.L739	#,
	.loc 1 4452 0
	movl	-312(%rbp), %eax	# specbits, tmp713
	andl	$2048, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	je	.L740	#,
	.loc 1 4453 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.378
	testl	%eax, %eax	# pedantic.378
	jne	.L741	#,
	.loc 1 4453 0 is_stmt 0 discriminator 1
	movq	current_binding_level(%rip), %rdx	# current_binding_level, current_binding_level.379
	movq	global_binding_level(%rip), %rax	# global_binding_level, global_binding_level.380
	cmpq	%rax, %rdx	# global_binding_level.380, current_binding_level.379
	jne	.L740	#,
.L741:
	.loc 1 4454 0 is_stmt 1
	movl	$.LC244, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L740:
	.loc 1 4455 0
	movl	-312(%rbp), %eax	# specbits, tmp714
	andl	$32, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	je	.L742	#,
	.loc 1 4456 0
	movl	$.LC245, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.L742:
	.loc 1 4457 0
	movl	-312(%rbp), %eax	# specbits, tmp715
	andl	$64, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	je	.L743	#,
	.loc 1 4458 0
	movl	$.LC246, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.L743:
	.loc 1 4459 0
	andl	$-2145, -312(%rbp)	#, specbits
	jmp	.L738	#
.L739:
	.loc 1 4462 0
	cmpl	$0, -340(%rbp)	#, decl_context
	je	.L744	#,
	.loc 1 4462 0 is_stmt 0 discriminator 1
	cmpl	$0, -252(%rbp)	#, nclasses
	jle	.L744	#,
	.loc 1 4464 0 is_stmt 1
	cmpl	$2, -340(%rbp)	#, decl_context
	jne	.L745	#,
	.loc 1 4464 0 is_stmt 0 discriminator 1
	movl	-312(%rbp), %eax	# specbits, tmp716
	andl	$32, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	je	.L745	#,
	nop
	jmp	.L738	#
.L745:
	.loc 1 4468 0 is_stmt 1
	movl	-340(%rbp), %eax	# decl_context, decl_context
	cmpl	$2, %eax	#, decl_context
	je	.L748	#,
	cmpl	$3, %eax	#, decl_context
	jne	.L902	#,
	.loc 1 4471 0
	movq	-176(%rbp), %rax	# name, tmp718
	movq	%rax, %rsi	# tmp718,
	movl	$.LC247, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 4473 0
	jmp	.L750	#
.L748:
	.loc 1 4475 0
	movq	-176(%rbp), %rax	# name, tmp719
	movq	%rax, %rsi	# tmp719,
	movl	$.LC248, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 4476 0
	jmp	.L750	#
.L902:
	.loc 1 4478 0
	movl	$.LC249, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 4479 0
	nop
.L750:
	.loc 1 4481 0
	andl	$-2162, -312(%rbp)	#, specbits
	.loc 1 4464 0
	jmp	.L738	#
.L744:
	.loc 1 4486 0
	movl	-312(%rbp), %eax	# specbits, tmp720
	andl	$16, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	je	.L751	#,
	.loc 1 4486 0 is_stmt 0 discriminator 1
	cmpl	$0, -344(%rbp)	#, initialized
	je	.L751	#,
	cmpl	$0, -276(%rbp)	#, funcdef_flag
	jne	.L751	#,
	.loc 1 4489 0 is_stmt 1
	movq	current_binding_level(%rip), %rdx	# current_binding_level, current_binding_level.381
	movq	global_binding_level(%rip), %rax	# global_binding_level, global_binding_level.382
	cmpq	%rax, %rdx	# global_binding_level.382, current_binding_level.381
	jne	.L752	#,
	.loc 1 4490 0
	movq	-176(%rbp), %rax	# name, tmp721
	movq	%rax, %rsi	# tmp721,
	movl	$.LC250, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	.loc 1 4489 0
	jmp	.L738	#
.L752:
	.loc 1 4492 0
	movq	-176(%rbp), %rax	# name, tmp722
	movq	%rax, %rsi	# tmp722,
	movl	$.LC251, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 4489 0
	jmp	.L738	#
.L751:
	.loc 1 4494 0
	movl	-312(%rbp), %eax	# specbits, tmp723
	andl	$16, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	je	.L754	#,
	.loc 1 4494 0 is_stmt 0 discriminator 1
	cmpl	$0, -276(%rbp)	#, funcdef_flag
	je	.L754	#,
	.loc 1 4495 0 is_stmt 1
	movq	current_binding_level(%rip), %rdx	# current_binding_level, current_binding_level.383
	movq	global_binding_level(%rip), %rax	# global_binding_level, global_binding_level.384
	cmpq	%rax, %rdx	# global_binding_level.384, current_binding_level.383
	je	.L754	#,
	.loc 1 4496 0
	movq	-176(%rbp), %rax	# name, tmp724
	movq	%rax, %rsi	# tmp724,
	movl	$.LC252, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	jmp	.L738	#
.L754:
	.loc 1 4497 0
	movq	current_binding_level(%rip), %rdx	# current_binding_level, current_binding_level.385
	movq	global_binding_level(%rip), %rax	# global_binding_level, global_binding_level.386
	cmpq	%rax, %rdx	# global_binding_level.386, current_binding_level.385
	jne	.L738	#,
	.loc 1 4498 0
	movl	-312(%rbp), %eax	# specbits, tmp725
	andl	$2048, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	je	.L738	#,
	.loc 1 4499 0
	movq	-176(%rbp), %rax	# name, tmp726
	movq	%rax, %rsi	# tmp726,
	movl	$.LC253, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.LBE45:
	.loc 1 4506 0
	jmp	.L755	#
.L738:
	jmp	.L755	#
.L829:
	.loc 1 4508 0
	movq	global_trees(%rip), %rdx	# global_trees, D.21732
	movq	-216(%rbp), %rax	# type, type.387
	cmpq	%rax, %rdx	# type.387, D.21732
	jne	.L756	#,
	.loc 1 4510 0
	movq	-328(%rbp), %rax	# declarator, tmp727
	movq	32(%rax), %rax	# declarator_1->exp.operands, tmp728
	movq	%rax, -328(%rbp)	# tmp728, declarator
	.loc 1 4511 0
	jmp	.L755	#
.L756:
	.loc 1 4529 0
	cmpq	$0, -160(%rbp)	#, array_ptr_quals
	jne	.L757	#,
	.loc 1 4529 0 is_stmt 0 discriminator 1
	cmpl	$0, -260(%rbp)	#, array_parm_static
	je	.L758	#,
.L757:
	.loc 1 4534 0 is_stmt 1
	movl	$.LC254, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 4535 0
	movq	$0, -160(%rbp)	#, array_ptr_quals
	.loc 1 4536 0
	movl	$0, -260(%rbp)	#, array_parm_static
.L758:
	.loc 1 4539 0
	movq	-328(%rbp), %rax	# declarator, tmp729
	movzbl	16(%rax), %eax	# declarator_1->common.code, D.21728
	cmpb	$2, %al	#, D.21728
	jne	.L759	#,
.LBB46:
	.loc 1 4543 0
	movq	-328(%rbp), %rax	# declarator, tmp730
	movq	24(%rax), %rax	# declarator_1->list.purpose, tmp731
	movq	%rax, -64(%rbp)	# tmp731, attrs
	.loc 1 4545 0
	movl	$0, -248(%rbp)	#, attr_flags
	.loc 1 4546 0
	movq	-328(%rbp), %rax	# declarator, tmp732
	movq	32(%rax), %rax	# declarator_1->list.value, tmp733
	movq	%rax, -328(%rbp)	# tmp733, declarator
	.loc 1 4547 0
	movq	-328(%rbp), %rax	# declarator, tmp734
	movq	%rax, -136(%rbp)	# tmp734, inner_decl
	.loc 1 4548 0
	jmp	.L760	#
.L762:
	.loc 1 4550 0
	movq	-136(%rbp), %rax	# inner_decl, tmp735
	movq	32(%rax), %rax	# inner_decl_77->list.value, tmp736
	movq	%rax, -136(%rbp)	# tmp736, inner_decl
.L760:
	.loc 1 4548 0 discriminator 1
	cmpq	$0, -136(%rbp)	#, inner_decl
	je	.L761	#,
	.loc 1 4549 0
	movq	-136(%rbp), %rax	# inner_decl, tmp737
	movzbl	16(%rax), %eax	# inner_decl_77->common.code, D.21728
	cmpb	$2, %al	#, D.21728
	je	.L762	#,
.L761:
	.loc 1 4551 0
	cmpq	$0, -136(%rbp)	#, inner_decl
	je	.L763	#,
	.loc 1 4552 0
	movq	-136(%rbp), %rax	# inner_decl, tmp738
	movzbl	16(%rax), %eax	# inner_decl_77->common.code, D.21728
	cmpb	$1, %al	#, D.21728
	jne	.L764	#,
.L763:
	.loc 1 4553 0
	orl	$1, -248(%rbp)	#, attr_flags
	jmp	.L765	#
.L764:
	.loc 1 4554 0
	movq	-136(%rbp), %rax	# inner_decl, tmp739
	movzbl	16(%rax), %eax	# inner_decl_77->common.code, D.21728
	cmpb	$53, %al	#, D.21728
	jne	.L766	#,
	.loc 1 4555 0
	orl	$2, -248(%rbp)	#, attr_flags
	jmp	.L765	#
.L766:
	.loc 1 4556 0
	movq	-136(%rbp), %rax	# inner_decl, tmp740
	movzbl	16(%rax), %eax	# inner_decl_77->common.code, D.21728
	cmpb	$43, %al	#, D.21728
	jne	.L765	#,
	.loc 1 4557 0
	orl	$4, -248(%rbp)	#, attr_flags
.L765:
	.loc 1 4558 0 discriminator 1
	movq	-64(%rbp), %rdx	# attrs, tmp741
	movq	-152(%rbp), %rax	# returned_attrs, tmp742
	movq	%rdx, %rsi	# tmp741,
	movq	%rax, %rdi	# tmp742,
	call	chainon	#
	movq	%rax, %rcx	#, D.21732
	movl	-248(%rbp), %edx	# attr_flags, tmp743
	leaq	-216(%rbp), %rax	#, tmp744
	movq	%rcx, %rsi	# D.21732,
	movq	%rax, %rdi	# tmp744,
	call	decl_attributes	#
	movq	%rax, -152(%rbp)	# tmp745, returned_attrs
.LBE46:
	jmp	.L755	#
.L759:
	.loc 1 4562 0
	movq	-328(%rbp), %rax	# declarator, tmp746
	movzbl	16(%rax), %eax	# declarator_1->common.code, D.21728
	cmpb	$43, %al	#, D.21728
	jne	.L767	#,
.LBB47:
	.loc 1 4564 0
	movq	$0, -128(%rbp)	#, itype
	.loc 1 4565 0
	movq	-328(%rbp), %rax	# declarator, tmp747
	movq	40(%rax), %rax	# declarator_1->exp.operands, tmp748
	movq	%rax, -120(%rbp)	# tmp748, size
	.loc 1 4567 0
	movq	sizetype_tab(%rip), %rax	# sizetype_tab, D.21732
	movq	%rax, %rdi	# D.21732,
	call	signed_type	#
	movq	%rax, -56(%rbp)	# tmp749, index_type
	.loc 1 4569 0
	movq	-328(%rbp), %rax	# declarator, tmp750
	movq	8(%rax), %rax	# declarator_1->common.type, tmp751
	movq	%rax, -160(%rbp)	# tmp751, array_ptr_quals
	.loc 1 4570 0
	movq	-328(%rbp), %rax	# declarator, tmp752
	movzbl	18(%rax), %eax	# *declarator_1, tmp755
	shrb	$2, %al	#, D.21735
	andl	$1, %eax	#, D.21735
	movzbl	%al, %eax	# D.21735, tmp756
	movl	%eax, -260(%rbp)	# tmp756, array_parm_static
	.loc 1 4572 0
	movq	-328(%rbp), %rax	# declarator, tmp757
	movq	32(%rax), %rax	# declarator_1->exp.operands, tmp758
	movq	%rax, -328(%rbp)	# tmp758, declarator
	.loc 1 4576 0
	movq	-216(%rbp), %rax	# type, type.388
	movzbl	16(%rax), %eax	# type.388_419->common.code, D.21728
	cmpb	$5, %al	#, D.21728
	jne	.L768	#,
	.loc 1 4578 0
	movq	-176(%rbp), %rax	# name, tmp759
	movq	%rax, %rsi	# tmp759,
	movl	$.LC255, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 4579 0
	movq	global_trees(%rip), %rax	# global_trees, type.389
	movq	%rax, -216(%rbp)	# type.389, type
.L768:
	.loc 1 4582 0
	movq	-216(%rbp), %rax	# type, type.390
	movzbl	16(%rax), %eax	# type.390_422->common.code, D.21728
	cmpb	$23, %al	#, D.21728
	jne	.L769	#,
	.loc 1 4584 0
	movq	-176(%rbp), %rax	# name, tmp760
	movq	%rax, %rsi	# tmp760,
	movl	$.LC256, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 4585 0
	movq	global_trees(%rip), %rax	# global_trees, type.391
	movq	%rax, -216(%rbp)	# type.391, type
.L769:
	.loc 1 4588 0
	movq	global_trees(%rip), %rax	# global_trees, D.21732
	cmpq	-120(%rbp), %rax	# size, D.21732
	jne	.L770	#,
	.loc 1 4589 0
	movq	global_trees(%rip), %rax	# global_trees, type.392
	movq	%rax, -216(%rbp)	# type.392, type
.L770:
	.loc 1 4591 0
	movq	global_trees(%rip), %rdx	# global_trees, D.21732
	movq	-216(%rbp), %rax	# type, type.393
	cmpq	%rax, %rdx	# type.393, D.21732
	jne	.L771	#,
	.loc 1 4592 0
	jmp	.L755	#
.L771:
	.loc 1 4598 0
	cmpq	$0, -120(%rbp)	#, size
	je	.L772	#,
	.loc 1 4601 0
	jmp	.L773	#
.L776:
	.loc 1 4601 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# size, tmp761
	movq	32(%rax), %rax	# size_82->exp.operands, tmp762
	movq	%rax, -120(%rbp)	# tmp762, size
.L773:
	movq	-120(%rbp), %rax	# size, tmp763
	movzbl	16(%rax), %eax	# size_82->common.code, D.21728
	cmpb	$115, %al	#, D.21728
	je	.L774	#,
	.loc 1 4601 0 discriminator 3
	movq	-120(%rbp), %rax	# size, tmp764
	movzbl	16(%rax), %eax	# size_82->common.code, D.21728
	cmpb	$114, %al	#, D.21728
	je	.L774	#,
	.loc 1 4601 0 discriminator 1
	movq	-120(%rbp), %rax	# size, tmp765
	movzbl	16(%rax), %eax	# size_82->common.code, D.21728
	cmpb	$116, %al	#, D.21728
	jne	.L775	#,
.L774:
	.loc 1 4601 0 discriminator 2
	movq	-120(%rbp), %rax	# size, tmp766
	movq	32(%rax), %rdx	# size_82->exp.operands, D.21732
	movq	global_trees(%rip), %rax	# global_trees, D.21732
	cmpq	%rax, %rdx	# D.21732, D.21732
	je	.L775	#,
	.loc 1 4601 0 discriminator 1
	movq	-120(%rbp), %rax	# size, tmp767
	movq	8(%rax), %rdx	# size_82->common.type, D.21732
	movq	-120(%rbp), %rax	# size, tmp768
	movq	32(%rax), %rax	# size_82->exp.operands, D.21732
	movq	8(%rax), %rax	# _435->common.type, D.21732
	cmpq	%rax, %rdx	# D.21732, D.21732
	je	.L776	#,
.L775:
	.loc 1 4603 0 is_stmt 1
	movq	-120(%rbp), %rax	# size, tmp769
	movq	8(%rax), %rax	# size_82->common.type, D.21732
	movzbl	16(%rax), %eax	# _438->common.code, D.21728
	cmpb	$6, %al	#, D.21728
	je	.L777	#,
	.loc 1 4603 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# size, tmp770
	movq	8(%rax), %rax	# size_82->common.type, D.21732
	movzbl	16(%rax), %eax	# _440->common.code, D.21728
	cmpb	$10, %al	#, D.21728
	je	.L777	#,
	movq	-120(%rbp), %rax	# size, tmp771
	movq	8(%rax), %rax	# size_82->common.type, D.21732
	movzbl	16(%rax), %eax	# _442->common.code, D.21728
	cmpb	$11, %al	#, D.21728
	je	.L777	#,
	movq	-120(%rbp), %rax	# size, tmp772
	movq	8(%rax), %rax	# size_82->common.type, D.21732
	movzbl	16(%rax), %eax	# _444->common.code, D.21728
	cmpb	$12, %al	#, D.21728
	je	.L777	#,
	.loc 1 4605 0 is_stmt 1
	movq	-176(%rbp), %rax	# name, tmp773
	movq	%rax, %rsi	# tmp773,
	movl	$.LC257, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 4606 0
	movq	global_trees+96(%rip), %rax	# global_trees, tmp774
	movq	%rax, -120(%rbp)	# tmp774, size
.L777:
	.loc 1 4609 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.394
	testl	%eax, %eax	# pedantic.394
	je	.L778	#,
	.loc 1 4609 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# size, tmp775
	movq	%rax, %rdi	# tmp775,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21733
	je	.L778	#,
	.loc 1 4610 0 is_stmt 1
	movq	-176(%rbp), %rax	# name, tmp776
	movq	%rax, %rsi	# tmp776,
	movl	$.LC258, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L778:
	.loc 1 4612 0
	movq	-120(%rbp), %rax	# size, tmp777
	movzbl	16(%rax), %eax	# size_83->common.code, D.21728
	cmpb	$25, %al	#, D.21728
	jne	.L779	#,
	.loc 1 4614 0
	movq	-120(%rbp), %rax	# size, tmp778
	movq	%rax, %rdi	# tmp778,
	call	constant_expression_warning	#
	.loc 1 4615 0
	movq	-120(%rbp), %rax	# size, tmp779
	movq	%rax, %rdi	# tmp779,
	call	tree_int_cst_sgn	#
	testl	%eax, %eax	# D.21733
	jns	.L781	#,
	.loc 1 4617 0
	movq	-176(%rbp), %rax	# name, tmp780
	movq	%rax, %rsi	# tmp780,
	movl	$.LC259, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 4618 0
	movq	global_trees+96(%rip), %rax	# global_trees, tmp781
	movq	%rax, -120(%rbp)	# tmp781, size
	jmp	.L781	#
.L779:
	.loc 1 4625 0
	movl	$1, -264(%rbp)	#, size_varies
	.loc 1 4627 0
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.395
	testl	%eax, %eax	# flag_isoc99.395
	jne	.L781	#,
	.loc 1 4627 0 is_stmt 0 discriminator 1
	movl	pedantic(%rip), %eax	# pedantic, pedantic.396
	testl	%eax, %eax	# pedantic.396
	je	.L781	#,
	.loc 1 4629 0 is_stmt 1
	movq	-120(%rbp), %rax	# size, tmp782
	movzbl	17(%rax), %eax	# *size_83, D.21728
	andl	$2, %eax	#, D.21728
	testb	%al, %al	# D.21728
	je	.L782	#,
	.loc 1 4630 0
	movq	-176(%rbp), %rax	# name, tmp783
	movq	%rax, %rsi	# tmp783,
	movl	$.LC260, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
	jmp	.L781	#
.L782:
	.loc 1 4633 0
	movq	-176(%rbp), %rax	# name, tmp784
	movq	%rax, %rsi	# tmp784,
	movl	$.LC261, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L781:
	.loc 1 4638 0
	movq	-120(%rbp), %rax	# size, tmp785
	movq	%rax, %rdi	# tmp785,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21733
	je	.L783	#,
	.loc 1 4643 0
	movq	sizetype_tab(%rip), %rax	# sizetype_tab, D.21732
	movq	-120(%rbp), %rcx	# size, tmp786
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp786,
	movq	%rax, %rdi	# D.21732,
	call	build_range_type	#
	movq	%rax, -128(%rbp)	# tmp787, itype
	jmp	.L787	#
.L783:
	.loc 1 4651 0
	movq	global_trees+128(%rip), %rdx	# global_trees, D.21732
	movq	-56(%rbp), %rax	# index_type, tmp788
	movq	%rdx, %rsi	# D.21732,
	movq	%rax, %rdi	# tmp788,
	call	convert	#
	movq	%rax, %rbx	#, D.21732
	movq	-120(%rbp), %rdx	# size, tmp789
	movq	-56(%rbp), %rax	# index_type, tmp790
	movq	%rdx, %rsi	# tmp789,
	movq	%rax, %rdi	# tmp790,
	call	convert	#
	movq	%rax, %rdx	#, D.21732
	movq	-56(%rbp), %rax	# index_type, tmp791
	movq	%rbx, %rcx	# D.21732,
	movq	%rax, %rsi	# tmp791,
	movl	$60, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21732,
	call	fold	#
	movq	%rax, -128(%rbp)	# tmp792, itype
	.loc 1 4661 0
	movq	-128(%rbp), %rax	# itype, tmp793
	movzbl	18(%rax), %eax	# *itype_464, D.21728
	andl	$8, %eax	#, D.21728
	testb	%al, %al	# D.21728
	je	.L785	#,
	.loc 1 4663 0
	movq	-176(%rbp), %rax	# name, tmp794
	movq	%rax, %rsi	# tmp794,
	movl	$.LC262, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 4664 0
	movq	global_trees(%rip), %rax	# global_trees, type.397
	movq	%rax, -216(%rbp)	# type.397, type
	.loc 1 4665 0
	jmp	.L755	#
.L785:
	.loc 1 4668 0
	cmpl	$0, -264(%rbp)	#, size_varies
	je	.L786	#,
	.loc 1 4669 0
	movq	-128(%rbp), %rax	# itype, tmp795
	movq	%rax, %rdi	# tmp795,
	call	variable_size	#
	movq	%rax, -128(%rbp)	# tmp796, itype
.L786:
	.loc 1 4670 0
	movq	-128(%rbp), %rax	# itype, tmp797
	movq	%rax, %rdi	# tmp797,
	call	build_index_type	#
	movq	%rax, -128(%rbp)	# tmp798, itype
	jmp	.L787	#
.L772:
	.loc 1 4673 0
	cmpl	$3, -340(%rbp)	#, decl_context
	jne	.L787	#,
	.loc 1 4675 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.398
	testl	%eax, %eax	# pedantic.398
	je	.L788	#,
	.loc 1 4675 0 is_stmt 0 discriminator 1
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.399
	testl	%eax, %eax	# flag_isoc99.399
	jne	.L788	#,
	movl	in_system_header(%rip), %eax	# in_system_header, in_system_header.400
	testl	%eax, %eax	# in_system_header.400
	jne	.L788	#,
	.loc 1 4676 0 is_stmt 1
	movl	$.LC263, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L788:
	.loc 1 4680 0
	movq	global_trees+120(%rip), %rcx	# global_trees, D.21732
	movq	sizetype_tab(%rip), %rax	# sizetype_tab, D.21732
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.21732,
	movq	%rax, %rdi	# D.21732,
	call	build_range_type	#
	movq	%rax, -128(%rbp)	# tmp799, itype
.L787:
	.loc 1 4685 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.401
	testl	%eax, %eax	# pedantic.401
	je	.L789	#,
	.loc 1 4685 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# type, type.402
	movq	32(%rax), %rax	# type.402_477->type.size, D.21732
	testq	%rax, %rax	# D.21732
	jne	.L789	#,
	.loc 1 4686 0 is_stmt 1
	movl	$.LC264, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L789:
	.loc 1 4701 0
	movq	-216(%rbp), %rax	# type, type.403
	movq	-128(%rbp), %rdx	# itype, tmp800
	movq	%rdx, %rsi	# tmp800,
	movq	%rax, %rdi	# type.403,
	call	build_array_type	#
	movq	%rax, -216(%rbp)	# type.404, type
	.loc 1 4702 0
	cmpl	$0, -292(%rbp)	#, type_quals
	je	.L790	#,
	.loc 1 4703 0
	movq	-216(%rbp), %rax	# type, type.405
	movl	-292(%rbp), %edx	# type_quals, tmp801
	movl	%edx, %esi	# tmp801,
	movq	%rax, %rdi	# type.405,
	call	c_build_qualified_type	#
	movq	%rax, -216(%rbp)	# type.406, type
.L790:
	.loc 1 4705 0
	cmpl	$0, -264(%rbp)	#, size_varies
	je	.L791	#,
	.loc 1 4706 0
	movq	-216(%rbp), %rax	# type, type.407
	movzbl	63(%rax), %edx	#, tmp804
	orl	$2, %edx	#, tmp805
	movb	%dl, 63(%rax)	# tmp805,
.L791:
	.loc 1 4710 0
	cmpq	$0, -120(%rbp)	#, size
	je	.L792	#,
	.loc 1 4710 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# size, tmp806
	movq	%rax, %rdi	# tmp806,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21733
	je	.L792	#,
	.loc 1 4712 0 is_stmt 1
	movq	-216(%rbp), %rax	# type, type.408
	movq	%rax, %rdi	# type.408,
	call	layout_type	#
	.loc 1 4713 0
	movq	-216(%rbp), %rax	# type, type.409
	movq	global_trees+136(%rip), %rdx	# global_trees, D.21732
	movq	%rdx, 32(%rax)	# D.21732, type.409_486->type.size
	.loc 1 4714 0
	movq	-216(%rbp), %rax	# type, type.410
	movq	global_trees+120(%rip), %rdx	# global_trees, D.21732
	movq	%rdx, 40(%rax)	# D.21732, type.410_488->type.size_unit
.L792:
	.loc 1 4716 0
	cmpl	$2, -340(%rbp)	#, decl_context
	je	.L793	#,
	.loc 1 4717 0
	cmpq	$0, -160(%rbp)	#, array_ptr_quals
	jne	.L794	#,
	.loc 1 4717 0 is_stmt 0 discriminator 1
	cmpl	$0, -260(%rbp)	#, array_parm_static
	je	.L793	#,
.L794:
	.loc 1 4719 0 is_stmt 1
	movl	$.LC254, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 4720 0
	movq	$0, -160(%rbp)	#, array_ptr_quals
	.loc 1 4721 0
	movl	$0, -260(%rbp)	#, array_parm_static
.LBE47:
	jmp	.L755	#
.L793:
	jmp	.L755	#
.L767:
	.loc 1 4724 0
	movq	-328(%rbp), %rax	# declarator, tmp807
	movzbl	16(%rax), %eax	# declarator_1->common.code, D.21728
	cmpb	$53, %al	#, D.21728
	jne	.L795	#,
.LBB48:
	.loc 1 4730 0
	movq	global_trees(%rip), %rdx	# global_trees, D.21732
	movq	-216(%rbp), %rax	# type, type.411
	cmpq	%rax, %rdx	# type.411, D.21732
	jne	.L796	#,
	.loc 1 4731 0
	jmp	.L755	#
.L796:
	.loc 1 4733 0
	movl	$0, -264(%rbp)	#, size_varies
	.loc 1 4737 0
	movq	-216(%rbp), %rax	# type, type.412
	movzbl	16(%rax), %eax	# type.412_496->common.code, D.21728
	cmpb	$23, %al	#, D.21728
	jne	.L797	#,
	.loc 1 4739 0
	movq	-176(%rbp), %rax	# name, tmp808
	movq	%rax, %rsi	# tmp808,
	movl	$.LC265, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 4740 0
	movq	integer_types+40(%rip), %rax	# integer_types, type.413
	movq	%rax, -216(%rbp)	# type.413, type
.L797:
	.loc 1 4742 0
	movq	-216(%rbp), %rax	# type, type.414
	movzbl	16(%rax), %eax	# type.414_499->common.code, D.21728
	cmpb	$18, %al	#, D.21728
	jne	.L798	#,
	.loc 1 4744 0
	movq	-176(%rbp), %rax	# name, tmp809
	movq	%rax, %rsi	# tmp809,
	movl	$.LC266, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 4745 0
	movq	integer_types+40(%rip), %rax	# integer_types, type.415
	movq	%rax, -216(%rbp)	# type.415, type
.L798:
	.loc 1 4751 0
	movl	flag_traditional(%rip), %eax	# flag_traditional, flag_traditional.416
	testl	%eax, %eax	# flag_traditional.416
	je	.L799	#,
	.loc 1 4751 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# type, type.417
	movq	128(%rax), %rdx	# type.417_503->type.main_variant, D.21732
	movq	global_trees+192(%rip), %rax	# global_trees, D.21732
	cmpq	%rax, %rdx	# D.21732, D.21732
	jne	.L799	#,
	.loc 1 4752 0 is_stmt 1
	movq	global_trees+200(%rip), %rax	# global_trees, type.418
	movq	%rax, -216(%rbp)	# type.418, type
.L799:
	.loc 1 4758 0
	cmpl	$0, -276(%rbp)	#, funcdef_flag
	je	.L800	#,
	.loc 1 4763 0 discriminator 1
	movq	-328(%rbp), %rax	# declarator, tmp810
	movq	32(%rax), %rax	# declarator_1->exp.operands, D.21732
	movzbl	16(%rax), %eax	# _507->common.code, D.21728
	.loc 1 4758 0 discriminator 1
	cmpb	$1, %al	#, D.21728
	jne	.L800	#,
	.loc 1 4758 0 is_stmt 0 discriminator 3
	movl	$1, %eax	#, iftmp.419
	jmp	.L801	#
.L800:
	.loc 1 4758 0 discriminator 2
	movl	$0, %eax	#, iftmp.419
.L801:
	.loc 1 4758 0 discriminator 4
	movq	-328(%rbp), %rdx	# declarator, tmp811
	movq	40(%rdx), %rdx	# declarator_1->exp.operands, D.21732
	movl	%eax, %esi	# iftmp.419,
	movq	%rdx, %rdi	# D.21732,
	call	grokparms	#
	movq	%rax, -48(%rbp)	# tmp812, arg_types
	.loc 1 4766 0 is_stmt 1 discriminator 4
	cmpl	$0, -292(%rbp)	#, type_quals
	je	.L802	#,
	.loc 1 4778 0
	movq	-216(%rbp), %rax	# type, type.420
	movzbl	16(%rax), %eax	# type.420_513->common.code, D.21728
	cmpb	$5, %al	#, D.21728
	jne	.L803	#,
	.loc 1 4778 0 is_stmt 0 discriminator 1
	movl	pedantic(%rip), %eax	# pedantic, pedantic.421
	testl	%eax, %eax	# pedantic.421
	je	.L803	#,
	movl	in_system_header(%rip), %eax	# in_system_header, in_system_header.422
	testl	%eax, %eax	# in_system_header.422
	jne	.L803	#,
	.loc 1 4779 0 is_stmt 1
	movl	$.LC267, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
	jmp	.L804	#
.L803:
	.loc 1 4780 0
	movl	extra_warnings(%rip), %eax	# extra_warnings, extra_warnings.423
	testl	%eax, %eax	# extra_warnings.423
	je	.L804	#,
	.loc 1 4781 0
	movq	-216(%rbp), %rax	# type, type.424
	movzbl	16(%rax), %eax	# type.424_518->common.code, D.21728
	cmpb	$5, %al	#, D.21728
	jne	.L805	#,
	.loc 1 4781 0 is_stmt 0 discriminator 1
	cmpl	$2, -292(%rbp)	#, type_quals
	je	.L804	#,
.L805:
	.loc 1 4783 0 is_stmt 1
	movl	$.LC268, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L804:
	.loc 1 4785 0
	movq	-216(%rbp), %rax	# type, type.425
	movl	-292(%rbp), %edx	# type_quals, tmp813
	movl	%edx, %esi	# tmp813,
	movq	%rax, %rdi	# type.425,
	call	c_build_qualified_type	#
	movq	%rax, -216(%rbp)	# type.426, type
.L802:
	.loc 1 4787 0
	movl	$0, -292(%rbp)	#, type_quals
	.loc 1 4789 0
	movq	-216(%rbp), %rax	# type, type.427
	movq	-48(%rbp), %rdx	# arg_types, tmp814
	movq	%rdx, %rsi	# tmp814,
	movq	%rax, %rdi	# type.427,
	call	build_function_type	#
	movq	%rax, -216(%rbp)	# type.428, type
	.loc 1 4790 0
	movq	-328(%rbp), %rax	# declarator, tmp815
	movq	32(%rax), %rax	# declarator_1->exp.operands, tmp816
	movq	%rax, -328(%rbp)	# tmp816, declarator
.LBB49:
	.loc 1 4799 0
	movq	last_function_parm_tags(%rip), %rax	# last_function_parm_tags, tmp817
	movq	%rax, -112(%rbp)	# tmp817, link
	jmp	.L806	#
.L807:
	.loc 1 4802 0
	movq	-112(%rbp), %rax	# link, tmp818
	movq	32(%rax), %rax	# link_87->list.value, D.21732
	movq	-216(%rbp), %rdx	# type, type.429
	movq	%rdx, 144(%rax)	# type.429, _527->type.context
	.loc 1 4801 0
	movq	-112(%rbp), %rax	# link, tmp819
	movq	(%rax), %rax	# link_87->common.chain, tmp820
	movq	%rax, -112(%rbp)	# tmp820, link
.L806:
	.loc 1 4799 0 discriminator 1
	cmpq	$0, -112(%rbp)	#, link
	jne	.L807	#,
.LBE49:
.LBE48:
	jmp	.L755	#
.L795:
	.loc 1 4805 0
	movq	-328(%rbp), %rax	# declarator, tmp821
	movzbl	16(%rax), %eax	# declarator_1->common.code, D.21728
	cmpb	$41, %al	#, D.21728
	jne	.L808	#,
	.loc 1 4810 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.430
	testl	%eax, %eax	# pedantic.430
	je	.L809	#,
	.loc 1 4810 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# type, type.431
	movzbl	16(%rax), %eax	# type.431_532->common.code, D.21728
	cmpb	$23, %al	#, D.21728
	jne	.L809	#,
	.loc 1 4811 0 is_stmt 1
	cmpl	$0, -292(%rbp)	#, type_quals
	je	.L809	#,
	.loc 1 4812 0
	movl	$.LC269, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L809:
	.loc 1 4813 0
	cmpl	$0, -292(%rbp)	#, type_quals
	je	.L810	#,
	.loc 1 4814 0
	movq	-216(%rbp), %rax	# type, type.432
	movl	-292(%rbp), %edx	# type_quals, tmp822
	movl	%edx, %esi	# tmp822,
	movq	%rax, %rdi	# type.432,
	call	c_build_qualified_type	#
	movq	%rax, -216(%rbp)	# type.433, type
.L810:
	.loc 1 4815 0
	movl	$0, -292(%rbp)	#, type_quals
	.loc 1 4816 0
	movl	$0, -264(%rbp)	#, size_varies
	.loc 1 4818 0
	movq	-216(%rbp), %rax	# type, type.434
	movq	%rax, %rdi	# type.434,
	call	build_pointer_type	#
	movq	%rax, -216(%rbp)	# type.435, type
	.loc 1 4823 0
	movq	-328(%rbp), %rax	# declarator, tmp823
	movq	8(%rax), %rax	# declarator_1->common.type, D.21732
	testq	%rax, %rax	# D.21732
	je	.L811	#,
.LBB50:
	.loc 1 4826 0
	movl	$0, -244(%rbp)	#, erred
	.loc 1 4828 0
	movl	$0, -304(%rbp)	#, constp
	.loc 1 4829 0
	movl	$0, -296(%rbp)	#, volatilep
	.loc 1 4830 0
	movl	$0, -300(%rbp)	#, restrictp
	.loc 1 4831 0
	movq	-328(%rbp), %rax	# declarator, tmp824
	movq	8(%rax), %rax	# declarator_1->common.type, tmp825
	movq	%rax, -104(%rbp)	# tmp825, typemodlist
	jmp	.L812	#
.L819:
.LBB51:
	.loc 1 4834 0
	movq	-104(%rbp), %rax	# typemodlist, tmp826
	movq	32(%rax), %rax	# typemodlist_88->list.value, tmp827
	movq	%rax, -40(%rbp)	# tmp827, qualifier
	.loc 1 4836 0
	movq	-40(%rbp), %rax	# qualifier, tmp828
	movzbl	19(%rax), %eax	# *qualifier_546, D.21728
	andl	$1, %eax	#, D.21728
	testb	%al, %al	# D.21728
	je	.L813	#,
	.loc 1 4838 0
	movq	-40(%rbp), %rax	# qualifier, tmp829
	movzbl	43(%rax), %eax	# MEM[(struct c_common_identifier *)qualifier_546].node.rid_code, D.21728
	cmpb	$3, %al	#, D.21728
	jne	.L814	#,
	.loc 1 4839 0
	addl	$1, -304(%rbp)	#, constp
	jmp	.L818	#
.L814:
	.loc 1 4840 0
	movq	-40(%rbp), %rax	# qualifier, tmp830
	movzbl	43(%rax), %eax	# MEM[(struct c_common_identifier *)qualifier_546].node.rid_code, D.21728
	cmpb	$9, %al	#, D.21728
	jne	.L816	#,
	.loc 1 4841 0
	addl	$1, -296(%rbp)	#, volatilep
	jmp	.L818	#
.L816:
	.loc 1 4842 0
	movq	-40(%rbp), %rax	# qualifier, tmp831
	movzbl	43(%rax), %eax	# MEM[(struct c_common_identifier *)qualifier_546].node.rid_code, D.21728
	cmpb	$12, %al	#, D.21728
	jne	.L817	#,
	.loc 1 4843 0
	addl	$1, -300(%rbp)	#, restrictp
	jmp	.L818	#
.L817:
	.loc 1 4845 0
	addl	$1, -244(%rbp)	#, erred
	jmp	.L818	#
.L813:
	.loc 1 4848 0
	addl	$1, -244(%rbp)	#, erred
.L818:
.LBE51:
	.loc 1 4832 0
	movq	-104(%rbp), %rax	# typemodlist, tmp832
	movq	(%rax), %rax	# typemodlist_88->common.chain, tmp833
	movq	%rax, -104(%rbp)	# tmp833, typemodlist
.L812:
	.loc 1 4831 0 discriminator 1
	cmpq	$0, -104(%rbp)	#, typemodlist
	jne	.L819	#,
	.loc 1 4851 0
	cmpl	$0, -244(%rbp)	#, erred
	je	.L820	#,
	.loc 1 4852 0
	movl	$.LC270, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.L820:
	.loc 1 4853 0
	cmpl	$1, -304(%rbp)	#, constp
	jle	.L821	#,
	.loc 1 4853 0 is_stmt 0 discriminator 1
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.436
	testl	%eax, %eax	# flag_isoc99.436
	jne	.L821	#,
	.loc 1 4854 0 is_stmt 1
	movl	$.LC240, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L821:
	.loc 1 4855 0
	cmpl	$1, -296(%rbp)	#, volatilep
	jle	.L822	#,
	.loc 1 4855 0 is_stmt 0 discriminator 1
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.437
	testl	%eax, %eax	# flag_isoc99.437
	jne	.L822	#,
	.loc 1 4856 0 is_stmt 1
	movl	$.LC242, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L822:
	.loc 1 4857 0
	cmpl	$1, -300(%rbp)	#, restrictp
	jle	.L823	#,
	.loc 1 4857 0 is_stmt 0 discriminator 1
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.438
	testl	%eax, %eax	# flag_isoc99.438
	jne	.L823	#,
	.loc 1 4858 0 is_stmt 1
	movl	$.LC241, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L823:
	.loc 1 4860 0
	cmpl	$0, -304(%rbp)	#, constp
	setne	%al	#, D.21736
	movzbl	%al, %edx	# D.21736, D.21733
	.loc 1 4861 0
	cmpl	$0, -300(%rbp)	#, restrictp
	je	.L824	#,
	.loc 1 4861 0 is_stmt 0 discriminator 1
	movl	$4, %eax	#, iftmp.439
	jmp	.L825	#
.L824:
	.loc 1 4861 0 discriminator 2
	movl	$0, %eax	#, iftmp.439
.L825:
	.loc 1 4861 0 discriminator 3
	orl	%eax, %edx	# iftmp.439, D.21733
	.loc 1 4862 0 is_stmt 1 discriminator 3
	cmpl	$0, -296(%rbp)	#, volatilep
	je	.L826	#,
	.loc 1 4862 0 is_stmt 0 discriminator 1
	movl	$2, %eax	#, iftmp.440
	jmp	.L827	#
.L826:
	.loc 1 4862 0 discriminator 2
	movl	$0, %eax	#, iftmp.440
.L827:
	.loc 1 4860 0 is_stmt 1
	orl	%edx, %eax	# D.21733, tmp834
	movl	%eax, -292(%rbp)	# tmp834, type_quals
.L811:
.LBE50:
	.loc 1 4865 0
	movq	-328(%rbp), %rax	# declarator, tmp835
	movq	32(%rax), %rax	# declarator_1->exp.operands, tmp836
	movq	%rax, -328(%rbp)	# tmp836, declarator
	jmp	.L755	#
.L808:
	.loc 1 4868 0
	movl	$__FUNCTION__.14633, %edx	#,
	movl	$4868, %esi	#,
	movl	$.LC154, %edi	#,
	call	fancy_abort	#
.L755:
	.loc 1 4506 0 discriminator 1
	cmpq	$0, -328(%rbp)	#, declarator
	je	.L828	#,
	.loc 1 4506 0 is_stmt 0 discriminator 2
	movq	-328(%rbp), %rax	# declarator, tmp837
	movzbl	16(%rax), %eax	# declarator_1->common.code, D.21728
	cmpb	$1, %al	#, D.21728
	jne	.L829	#,
.L828:
	.loc 1 4876 0 is_stmt 1
	movq	-216(%rbp), %rax	# type, type.441
	movzbl	16(%rax), %eax	# type.441_570->common.code, D.21728
	cmpb	$18, %al	#, D.21728
	jne	.L830	#,
	.loc 1 4877 0
	movq	-216(%rbp), %rax	# type, type.442
	movq	32(%rax), %rax	# type.442_572->type.size, D.21732
	testq	%rax, %rax	# D.21732
	je	.L830	#,
	.loc 1 4878 0
	movq	-216(%rbp), %rax	# type, type.443
	movq	32(%rax), %rax	# type.443_574->type.size, D.21732
	movzbl	18(%rax), %eax	# *_575, D.21728
	andl	$8, %eax	#, D.21728
	testb	%al, %al	# D.21728
	je	.L830	#,
	.loc 1 4880 0
	movq	-176(%rbp), %rax	# name, tmp838
	movq	%rax, %rsi	# tmp838,
	movl	$.LC262, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 4883 0
	movq	global_trees(%rip), %rax	# global_trees, type.444
	movq	%rax, -216(%rbp)	# type.444, type
.L830:
	.loc 1 4888 0
	movl	-312(%rbp), %eax	# specbits, tmp839
	andl	$64, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	je	.L831	#,
.LBB52:
	.loc 1 4893 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.445
	testl	%eax, %eax	# pedantic.445
	je	.L832	#,
	.loc 1 4893 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# type, type.446
	movzbl	16(%rax), %eax	# type.446_581->common.code, D.21728
	cmpb	$23, %al	#, D.21728
	jne	.L832	#,
	.loc 1 4894 0 is_stmt 1
	cmpl	$0, -292(%rbp)	#, type_quals
	je	.L832	#,
	.loc 1 4895 0
	movl	$.LC269, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L832:
	.loc 1 4896 0
	cmpl	$0, -292(%rbp)	#, type_quals
	je	.L833	#,
	.loc 1 4897 0
	movq	-216(%rbp), %rax	# type, type.447
	movl	-292(%rbp), %edx	# type_quals, tmp840
	movl	%edx, %esi	# tmp840,
	movq	%rax, %rdi	# type.447,
	call	c_build_qualified_type	#
	movq	%rax, -216(%rbp)	# type.448, type
.L833:
	.loc 1 4898 0
	movq	-216(%rbp), %rdx	# type, type.449
	movq	-328(%rbp), %rax	# declarator, tmp841
	movq	%rax, %rsi	# tmp841,
	movl	$33, %edi	#,
	call	build_decl	#
	movq	%rax, -200(%rbp)	# decl.450, decl
	.loc 1 4899 0
	movl	-312(%rbp), %eax	# specbits, tmp842
	andl	$1024, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	jne	.L834	#,
	.loc 1 4900 0
	cmpq	$0, -184(%rbp)	#, typedef_decl
	je	.L835	#,
	.loc 1 4900 0 is_stmt 0 discriminator 1
	movq	-184(%rbp), %rax	# typedef_decl, tmp843
	movzbl	52(%rax), %eax	# *typedef_decl_49, D.21728
	andl	$64, %eax	#, D.21728
	testb	%al, %al	# D.21728
	je	.L835	#,
.L834:
	.loc 1 4901 0 is_stmt 1
	movq	-200(%rbp), %rax	# decl, decl.451
	movzbl	52(%rax), %edx	#, tmp846
	orl	$64, %edx	#, tmp847
	movb	%dl, 52(%rax)	# tmp847,
.L835:
	.loc 1 4902 0
	movq	-152(%rbp), %rcx	# returned_attrs, tmp848
	leaq	-200(%rbp), %rax	#, tmp849
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp848,
	movq	%rax, %rdi	# tmp849,
	call	decl_attributes	#
	.loc 1 4903 0
	movq	-200(%rbp), %rax	# decl, D.21727
	jmp	.L901	#
.L831:
.LBE52:
	.loc 1 4912 0
	movq	-216(%rbp), %rax	# type, type.452
	testq	%rax, %rax	# type.452
	je	.L836	#,
	.loc 1 4912 0 is_stmt 0 discriminator 1
	cmpq	$0, -88(%rbp)	#, typedef_type
	je	.L836	#,
	.loc 1 4913 0 is_stmt 1
	movq	-216(%rbp), %rax	# type, type.453
	movzbl	16(%rax), %eax	# type.453_593->common.code, D.21728
	cmpb	$18, %al	#, D.21728
	jne	.L836	#,
	.loc 1 4913 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# type, type.454
	movq	24(%rax), %rax	# type.454_595->type.values, D.21732
	testq	%rax, %rax	# D.21732
	jne	.L836	#,
	.loc 1 4914 0 is_stmt 1
	movq	-216(%rbp), %rax	# type, type.455
	movq	128(%rax), %rdx	# type.455_597->type.main_variant, D.21732
	movq	-88(%rbp), %rax	# typedef_type, tmp850
	movq	128(%rax), %rax	# typedef_type_197->type.main_variant, D.21732
	cmpq	%rax, %rdx	# D.21732, D.21732
	jne	.L836	#,
	.loc 1 4916 0
	movq	-216(%rbp), %rax	# type, type.456
	movq	8(%rax), %rax	# type.456_600->common.type, D.21732
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21732,
	call	build_array_type	#
	movq	%rax, -216(%rbp)	# type.457, type
	.loc 1 4917 0
	cmpl	$0, -264(%rbp)	#, size_varies
	je	.L836	#,
	.loc 1 4918 0
	movq	-216(%rbp), %rax	# type, type.458
	movzbl	63(%rax), %edx	#, tmp853
	orl	$2, %edx	#, tmp854
	movb	%dl, 63(%rax)	# tmp854,
.L836:
	.loc 1 4924 0
	cmpl	$5, -340(%rbp)	#, decl_context
	jne	.L837	#,
	.loc 1 4928 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.459
	testl	%eax, %eax	# pedantic.459
	je	.L838	#,
	.loc 1 4928 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# type, type.460
	movzbl	16(%rax), %eax	# type.460_605->common.code, D.21728
	cmpb	$23, %al	#, D.21728
	jne	.L838	#,
	.loc 1 4929 0 is_stmt 1
	cmpl	$0, -292(%rbp)	#, type_quals
	je	.L838	#,
	.loc 1 4930 0
	movl	$.LC271, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L838:
	.loc 1 4931 0
	cmpl	$0, -292(%rbp)	#, type_quals
	je	.L839	#,
	.loc 1 4932 0
	movq	-216(%rbp), %rax	# type, type.461
	movl	-292(%rbp), %edx	# type_quals, tmp855
	movl	%edx, %esi	# tmp855,
	movq	%rax, %rdi	# type.461,
	call	c_build_qualified_type	#
	movq	%rax, -216(%rbp)	# type.462, type
.L839:
	.loc 1 4933 0
	movq	-152(%rbp), %rcx	# returned_attrs, tmp856
	leaq	-216(%rbp), %rax	#, tmp857
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp856,
	movq	%rax, %rdi	# tmp857,
	call	decl_attributes	#
	.loc 1 4934 0
	movq	-216(%rbp), %rax	# type, D.21727
	jmp	.L901	#
.L837:
	.loc 1 4943 0
	movq	-216(%rbp), %rax	# type, type.463
	movzbl	16(%rax), %eax	# type.463_610->common.code, D.21728
	cmpb	$5, %al	#, D.21728
	jne	.L840	#,
	.loc 1 4943 0 is_stmt 0 discriminator 1
	cmpl	$2, -340(%rbp)	#, decl_context
	je	.L840	#,
	.loc 1 4944 0 is_stmt 1
	cmpl	$3, -340(%rbp)	#, decl_context
	je	.L841	#,
	.loc 1 4944 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# type, type.464
	movzbl	16(%rax), %eax	# type.464_612->common.code, D.21728
	cmpb	$23, %al	#, D.21728
	je	.L841	#,
	.loc 1 4945 0 is_stmt 1 discriminator 1
	movl	-312(%rbp), %eax	# specbits, tmp858
	andl	$16, %eax	#, D.21733
	.loc 1 4944 0 discriminator 1
	testl	%eax, %eax	# D.21733
	jne	.L840	#,
	.loc 1 4946 0
	movq	current_binding_level(%rip), %rdx	# current_binding_level, current_binding_level.465
	movq	global_binding_level(%rip), %rax	# global_binding_level, global_binding_level.466
	cmpq	%rax, %rdx	# global_binding_level.466, current_binding_level.465
	jne	.L841	#,
	.loc 1 4948 0
	movl	-312(%rbp), %eax	# specbits, tmp859
	andl	$33, %eax	#, D.21733
	.loc 1 4947 0
	testl	%eax, %eax	# D.21733
	je	.L840	#,
.L841:
	.loc 1 4950 0
	movq	-176(%rbp), %rax	# name, tmp860
	movq	%rax, %rsi	# tmp860,
	movl	$.LC272, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 4951 0
	movq	integer_types+40(%rip), %rax	# integer_types, type.467
	movq	%rax, -216(%rbp)	# type.467, type
.L840:
.LBB53:
	.loc 1 4960 0
	cmpl	$2, -340(%rbp)	#, decl_context
	jne	.L842	#,
.LBB54:
	.loc 1 4968 0
	movq	-216(%rbp), %rax	# type, type.468
	movzbl	16(%rax), %eax	# type.468_619->common.code, D.21728
	cmpb	$18, %al	#, D.21728
	jne	.L843	#,
	.loc 1 4971 0
	movq	-216(%rbp), %rax	# type, type.469
	movq	8(%rax), %rax	# type.469_621->common.type, type.470
	movq	%rax, -216(%rbp)	# type.470, type
	.loc 1 4972 0
	cmpl	$0, -292(%rbp)	#, type_quals
	je	.L844	#,
	.loc 1 4973 0
	movq	-216(%rbp), %rax	# type, type.471
	movl	-292(%rbp), %edx	# type_quals, tmp861
	movl	%edx, %esi	# tmp861,
	movq	%rax, %rdi	# type.471,
	call	c_build_qualified_type	#
	movq	%rax, -216(%rbp)	# type.472, type
.L844:
	.loc 1 4974 0
	movq	-216(%rbp), %rax	# type, type.473
	movq	%rax, %rdi	# type.473,
	call	build_pointer_type	#
	movq	%rax, -216(%rbp)	# type.474, type
	.loc 1 4975 0
	movl	$0, -292(%rbp)	#, type_quals
	.loc 1 4976 0
	cmpq	$0, -160(%rbp)	#, array_ptr_quals
	je	.L845	#,
.LBB55:
	.loc 1 4979 0
	movl	$0, -240(%rbp)	#, erred
	.loc 1 4980 0
	leaq	-200(%rbp), %rdx	#, tmp862
	leaq	-208(%rbp), %rcx	#, tmp863
	movq	-160(%rbp), %rax	# array_ptr_quals, tmp864
	movq	%rcx, %rsi	# tmp863,
	movq	%rax, %rdi	# tmp864,
	call	split_specs_attrs	#
	.loc 1 4982 0
	movq	-200(%rbp), %rax	# new_ptr_attrs, new_ptr_attrs.475
	testq	%rax, %rax	# new_ptr_attrs.475
	je	.L846	#,
	.loc 1 4983 0
	movl	$.LC273, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L846:
	.loc 1 4985 0
	movl	$0, -304(%rbp)	#, constp
	.loc 1 4986 0
	movl	$0, -296(%rbp)	#, volatilep
	.loc 1 4987 0
	movl	$0, -300(%rbp)	#, restrictp
	.loc 1 4988 0
	jmp	.L847	#
.L854:
.LBB56:
	.loc 1 4990 0
	movq	-208(%rbp), %rax	# new_ptr_quals, new_ptr_quals.476
	movq	32(%rax), %rax	# new_ptr_quals.476_634->list.value, tmp865
	movq	%rax, -32(%rbp)	# tmp865, qualifier
	.loc 1 4992 0
	movq	-32(%rbp), %rax	# qualifier, tmp866
	movzbl	19(%rax), %eax	# *qualifier_635, D.21728
	andl	$1, %eax	#, D.21728
	testb	%al, %al	# D.21728
	je	.L848	#,
	.loc 1 4994 0
	movq	-32(%rbp), %rax	# qualifier, tmp867
	movzbl	43(%rax), %eax	# MEM[(struct c_common_identifier *)qualifier_635].node.rid_code, D.21728
	cmpb	$3, %al	#, D.21728
	jne	.L849	#,
	.loc 1 4995 0
	addl	$1, -304(%rbp)	#, constp
	jmp	.L853	#
.L849:
	.loc 1 4996 0
	movq	-32(%rbp), %rax	# qualifier, tmp868
	movzbl	43(%rax), %eax	# MEM[(struct c_common_identifier *)qualifier_635].node.rid_code, D.21728
	cmpb	$9, %al	#, D.21728
	jne	.L851	#,
	.loc 1 4997 0
	addl	$1, -296(%rbp)	#, volatilep
	jmp	.L853	#
.L851:
	.loc 1 4998 0
	movq	-32(%rbp), %rax	# qualifier, tmp869
	movzbl	43(%rax), %eax	# MEM[(struct c_common_identifier *)qualifier_635].node.rid_code, D.21728
	cmpb	$12, %al	#, D.21728
	jne	.L852	#,
	.loc 1 4999 0
	addl	$1, -300(%rbp)	#, restrictp
	jmp	.L853	#
.L852:
	.loc 1 5001 0
	addl	$1, -240(%rbp)	#, erred
	jmp	.L853	#
.L848:
	.loc 1 5004 0
	addl	$1, -240(%rbp)	#, erred
.L853:
.LBE56:
	.loc 1 4988 0
	movq	-208(%rbp), %rax	# new_ptr_quals, new_ptr_quals.477
	movq	(%rax), %rax	# new_ptr_quals.477_646->common.chain, new_ptr_quals.478
	movq	%rax, -208(%rbp)	# new_ptr_quals.478, new_ptr_quals
.L847:
	.loc 1 4988 0 is_stmt 0 discriminator 1
	movq	-208(%rbp), %rax	# new_ptr_quals, new_ptr_quals.479
	testq	%rax, %rax	# new_ptr_quals.479
	jne	.L854	#,
	.loc 1 5007 0 is_stmt 1
	cmpl	$0, -240(%rbp)	#, erred
	je	.L855	#,
	.loc 1 5008 0
	movl	$.LC274, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.L855:
	.loc 1 5010 0
	cmpl	$0, -304(%rbp)	#, constp
	setne	%al	#, D.21736
	movzbl	%al, %edx	# D.21736, D.21733
	.loc 1 5011 0
	cmpl	$0, -300(%rbp)	#, restrictp
	je	.L856	#,
	.loc 1 5011 0 is_stmt 0 discriminator 1
	movl	$4, %eax	#, iftmp.480
	jmp	.L857	#
.L856:
	.loc 1 5011 0 discriminator 2
	movl	$0, %eax	#, iftmp.480
.L857:
	.loc 1 5011 0 discriminator 3
	orl	%eax, %edx	# iftmp.480, D.21733
	.loc 1 5012 0 is_stmt 1 discriminator 3
	cmpl	$0, -296(%rbp)	#, volatilep
	je	.L858	#,
	.loc 1 5012 0 is_stmt 0 discriminator 1
	movl	$2, %eax	#, iftmp.481
	jmp	.L859	#
.L858:
	.loc 1 5012 0 discriminator 2
	movl	$0, %eax	#, iftmp.481
.L859:
	.loc 1 5010 0 is_stmt 1 discriminator 1
	orl	%edx, %eax	# D.21733, tmp870
	movl	%eax, -292(%rbp)	# tmp870, type_quals
.L845:
.LBE55:
	.loc 1 5014 0 discriminator 2
	movl	$0, -264(%rbp)	#, size_varies
	jmp	.L860	#
.L843:
	.loc 1 5016 0
	movq	-216(%rbp), %rax	# type, type.482
	movzbl	16(%rax), %eax	# type.482_657->common.code, D.21728
	cmpb	$23, %al	#, D.21728
	jne	.L861	#,
	.loc 1 5018 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.483
	testl	%eax, %eax	# pedantic.483
	je	.L862	#,
	.loc 1 5018 0 is_stmt 0 discriminator 1
	cmpl	$0, -292(%rbp)	#, type_quals
	je	.L862	#,
	.loc 1 5019 0 is_stmt 1
	movl	$.LC269, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L862:
	.loc 1 5020 0
	cmpl	$0, -292(%rbp)	#, type_quals
	je	.L863	#,
	.loc 1 5021 0
	movq	-216(%rbp), %rax	# type, type.484
	movl	-292(%rbp), %edx	# type_quals, tmp871
	movl	%edx, %esi	# tmp871,
	movq	%rax, %rdi	# type.484,
	call	c_build_qualified_type	#
	movq	%rax, -216(%rbp)	# type.485, type
.L863:
	.loc 1 5022 0
	movq	-216(%rbp), %rax	# type, type.486
	movq	%rax, %rdi	# type.486,
	call	build_pointer_type	#
	movq	%rax, -216(%rbp)	# type.487, type
	.loc 1 5023 0
	movl	$0, -292(%rbp)	#, type_quals
	jmp	.L860	#
.L861:
	.loc 1 5025 0
	cmpl	$0, -292(%rbp)	#, type_quals
	je	.L860	#,
	.loc 1 5026 0
	movq	-216(%rbp), %rax	# type, type.488
	movl	-292(%rbp), %edx	# type_quals, tmp872
	movl	%edx, %esi	# tmp872,
	movq	%rax, %rdi	# type.488,
	call	c_build_qualified_type	#
	movq	%rax, -216(%rbp)	# type.489, type
.L860:
	.loc 1 5028 0
	movq	-216(%rbp), %rax	# type, tmp873
	movq	%rax, -24(%rbp)	# tmp873, type_as_written
	.loc 1 5030 0
	movq	-216(%rbp), %rdx	# type, type.490
	movq	-328(%rbp), %rax	# declarator, tmp874
	movq	%rax, %rsi	# tmp874,
	movl	$35, %edi	#,
	call	build_decl	#
	movq	%rax, -200(%rbp)	# decl.491, decl
	.loc 1 5031 0
	cmpl	$0, -264(%rbp)	#, size_varies
	je	.L864	#,
	.loc 1 5032 0
	movq	-200(%rbp), %rax	# decl, decl.492
	movzbl	52(%rax), %edx	#, tmp877
	orl	$32, %edx	#, tmp878
	movb	%dl, 52(%rax)	# tmp878,
.L864:
	.loc 1 5039 0
	movq	global_trees(%rip), %rdx	# global_trees, D.21732
	movq	-216(%rbp), %rax	# type, type.493
	cmpq	%rax, %rdx	# type.493, D.21732
	jne	.L865	#,
	.loc 1 5040 0
	movq	-216(%rbp), %rax	# type, tmp879
	movq	%rax, -96(%rbp)	# tmp879, promoted_type
	jmp	.L866	#
.L865:
	.loc 1 5043 0
	movq	-216(%rbp), %rax	# type, type.494
	movq	%rax, %rdi	# type.494,
	call	simple_type_promotes_to	#
	movq	%rax, -96(%rbp)	# tmp880, promoted_type
	.loc 1 5044 0
	cmpq	$0, -96(%rbp)	#, promoted_type
	jne	.L866	#,
	.loc 1 5045 0
	movq	-216(%rbp), %rax	# type, tmp881
	movq	%rax, -96(%rbp)	# tmp881, promoted_type
.L866:
	.loc 1 5048 0 discriminator 1
	movq	-200(%rbp), %rax	# decl, decl.495
	movq	-96(%rbp), %rdx	# promoted_type, tmp882
	movq	%rdx, 104(%rax)	# tmp882, decl.495_677->decl.initial
	.loc 1 5049 0 discriminator 1
	movq	-200(%rbp), %rax	# decl, decl.496
	movq	-24(%rbp), %rdx	# type_as_written, tmp883
	movq	%rdx, 96(%rax)	# tmp883, decl.496_678->decl.result
.LBE54:
	jmp	.L867	#
.L842:
	.loc 1 5051 0
	cmpl	$3, -340(%rbp)	#, decl_context
	jne	.L868	#,
	.loc 1 5055 0
	movq	-216(%rbp), %rax	# type, type.497
	movzbl	16(%rax), %eax	# type.497_679->common.code, D.21728
	cmpb	$23, %al	#, D.21728
	jne	.L869	#,
	.loc 1 5057 0
	movq	-176(%rbp), %rax	# name, tmp884
	movq	%rax, %rsi	# tmp884,
	movl	$.LC275, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 5058 0
	movq	-216(%rbp), %rax	# type, type.498
	movq	%rax, %rdi	# type.498,
	call	build_pointer_type	#
	movq	%rax, -216(%rbp)	# type.499, type
	jmp	.L870	#
.L869:
	.loc 1 5060 0
	movq	-216(%rbp), %rax	# type, type.500
	movzbl	16(%rax), %eax	# type.500_683->common.code, D.21728
	testb	%al, %al	# D.21728
	je	.L870	#,
	.loc 1 5061 0
	movq	-216(%rbp), %rax	# type, type.502
	movzbl	16(%rax), %eax	# type.502_685->common.code, D.21728
	cmpb	$18, %al	#, D.21728
	jne	.L871	#,
	.loc 1 5061 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# type, type.503
	movq	8(%rax), %rax	# type.503_687->common.type, iftmp.501
	jmp	.L872	#
.L871:
	.loc 1 5061 0 discriminator 2
	movq	-216(%rbp), %rax	# type, iftmp.501
.L872:
	.loc 1 5061 0 discriminator 3
	movq	32(%rax), %rax	# iftmp.501_105->type.size, D.21732
	testq	%rax, %rax	# D.21732
	jne	.L870	#,
	.loc 1 5063 0 is_stmt 1
	movq	-176(%rbp), %rax	# name, tmp885
	movq	%rax, %rsi	# tmp885,
	movl	$.LC276, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 5064 0
	movq	global_trees(%rip), %rax	# global_trees, type.504
	movq	%rax, -216(%rbp)	# type.504, type
.L870:
	.loc 1 5067 0
	movq	-216(%rbp), %rax	# type, type.505
	movzbl	16(%rax), %eax	# type.505_692->common.code, D.21728
	cmpb	$18, %al	#, D.21728
	jne	.L873	#,
	.loc 1 5067 0 is_stmt 0 discriminator 1
	cmpl	$0, -292(%rbp)	#, type_quals
	je	.L873	#,
	.loc 1 5071 0 is_stmt 1
	movq	-216(%rbp), %rax	# type, type.506
	.loc 1 5069 0
	movq	24(%rax), %rbx	# type.506_694->type.values, D.21732
	movq	-216(%rbp), %rax	# type, type.507
	movq	8(%rax), %rax	# type.507_696->common.type, D.21732
	movl	-292(%rbp), %edx	# type_quals, tmp886
	movl	%edx, %esi	# tmp886,
	movq	%rax, %rdi	# D.21732,
	call	c_build_qualified_type	#
	movq	%rbx, %rsi	# D.21732,
	movq	%rax, %rdi	# D.21732,
	call	build_array_type	#
	movq	%rax, -216(%rbp)	# type.508, type
.L873:
	.loc 1 5077 0
	movq	-216(%rbp), %rdx	# type, type.509
	movq	-328(%rbp), %rax	# declarator, tmp887
	movq	%rax, %rsi	# tmp887,
	movl	$37, %edi	#,
	call	build_decl	#
	movq	%rax, -200(%rbp)	# decl.510, decl
	.loc 1 5078 0
	movq	-200(%rbp), %rax	# decl, decl.511
	movl	-268(%rbp), %edx	# bitfield, tmp888
	andl	$1, %edx	#, D.21735
	andl	$1, %edx	#, tmp890
	leal	0(,%rdx,4), %ecx	#, tmp891
	movzbl	52(%rax), %edx	#, tmp892
	andl	$-5, %edx	#, tmp893
	orl	%ecx, %edx	# tmp891, tmp894
	movb	%dl, 52(%rax)	# tmp894,
	.loc 1 5080 0
	cmpl	$0, -264(%rbp)	#, size_varies
	je	.L867	#,
	.loc 1 5081 0
	movq	-200(%rbp), %rax	# decl, decl.512
	movzbl	52(%rax), %edx	#, tmp897
	orl	$32, %edx	#, tmp898
	movb	%dl, 52(%rax)	# tmp898,
	jmp	.L867	#
.L868:
	.loc 1 5083 0
	movq	-216(%rbp), %rax	# type, type.513
	movzbl	16(%rax), %eax	# type.513_706->common.code, D.21728
	cmpb	$23, %al	#, D.21728
	jne	.L875	#,
.LBB57:
	.loc 1 5090 0
	movl	-312(%rbp), %eax	# specbits, tmp899
	andl	$2048, %eax	#, D.21733
	.loc 1 5091 0
	testl	%eax, %eax	# D.21733
	je	.L876	#,
	.loc 1 5091 0 is_stmt 0 discriminator 2
	movq	current_binding_level(%rip), %rdx	# current_binding_level, current_binding_level.515
	movq	global_binding_level(%rip), %rax	# global_binding_level, global_binding_level.516
	cmpq	%rax, %rdx	# global_binding_level.516, current_binding_level.515
	jne	.L877	#,
.L876:
	.loc 1 5091 0 discriminator 1
	movl	$1, %eax	#, iftmp.514
	jmp	.L878	#
.L877:
	.loc 1 5091 0 discriminator 3
	movl	$0, %eax	#, iftmp.514
.L878:
	.loc 1 5090 0 is_stmt 1
	movl	%eax, -228(%rbp)	# iftmp.514, extern_ref
	.loc 1 5093 0
	movl	-312(%rbp), %eax	# specbits, tmp900
	andl	$2048, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	je	.L879	#,
	.loc 1 5094 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.517
	testl	%eax, %eax	# pedantic.517
	jne	.L880	#,
	.loc 1 5094 0 is_stmt 0 discriminator 1
	movq	current_binding_level(%rip), %rdx	# current_binding_level, current_binding_level.518
	movq	global_binding_level(%rip), %rax	# global_binding_level, global_binding_level.519
	cmpq	%rax, %rdx	# global_binding_level.519, current_binding_level.518
	jne	.L879	#,
.L880:
	.loc 1 5095 0 is_stmt 1
	movq	-176(%rbp), %rax	# name, tmp901
	movq	%rax, %rsi	# tmp901,
	movl	$.LC277, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L879:
	.loc 1 5096 0
	movl	-312(%rbp), %eax	# specbits, tmp902
	andl	$32, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	je	.L881	#,
	.loc 1 5097 0
	movq	-176(%rbp), %rax	# name, tmp903
	movq	%rax, %rsi	# tmp903,
	movl	$.LC277, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.L881:
	.loc 1 5101 0
	movq	current_binding_level(%rip), %rdx	# current_binding_level, current_binding_level.520
	movq	global_binding_level(%rip), %rax	# global_binding_level, global_binding_level.521
	cmpq	%rax, %rdx	# global_binding_level.521, current_binding_level.520
	je	.L882	#,
	.loc 1 5102 0
	movl	-312(%rbp), %eax	# specbits, tmp904
	andl	$257, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	je	.L882	#,
	.loc 1 5103 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.522
	testl	%eax, %eax	# pedantic.522
	je	.L882	#,
	.loc 1 5104 0
	movq	-176(%rbp), %rax	# name, tmp905
	movq	%rax, %rsi	# tmp905,
	movl	$.LC277, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L882:
	.loc 1 5106 0
	movq	-216(%rbp), %rdx	# type, type.523
	movq	-328(%rbp), %rax	# declarator, tmp906
	movq	%rax, %rsi	# tmp906,
	movl	$30, %edi	#,
	call	build_decl	#
	movq	%rax, -200(%rbp)	# decl.524, decl
	.loc 1 5107 0
	movq	-200(%rbp), %rax	# decl, decl.525
	movq	-168(%rbp), %rdx	# decl_attr, tmp907
	movq	%rdx, %rsi	# tmp907,
	movq	%rax, %rdi	# decl.525,
	call	build_decl_attribute_variant	#
	movq	%rax, -200(%rbp)	# decl.526, decl
	.loc 1 5109 0
	movq	-200(%rbp), %rbx	# decl, decl.527
	.loc 1 5110 0
	movl	$16, %edi	#,
	call	ggc_alloc_cleared	#
	.loc 1 5109 0
	movq	%rax, 200(%rbx)	# D.21737, decl.527_727->decl.lang_specific
	.loc 1 5112 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.528
	testl	%eax, %eax	# pedantic.528
	je	.L883	#,
	.loc 1 5112 0 is_stmt 0 discriminator 1
	cmpl	$0, -292(%rbp)	#, type_quals
	je	.L883	#,
	movq	-200(%rbp), %rax	# decl, decl.529
	movzbl	50(%rax), %eax	# *decl.529_730, D.21728
	andl	$1, %eax	#, D.21728
	testb	%al, %al	# D.21728
	jne	.L883	#,
	.loc 1 5113 0 is_stmt 1
	movl	$.LC269, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L883:
	.loc 1 5117 0
	movl	-292(%rbp), %eax	# type_quals, tmp908
	andl	$2, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	je	.L884	#,
	.loc 1 5118 0
	movq	-200(%rbp), %rax	# decl, decl.530
	movq	8(%rax), %rax	# decl.530_734->common.type, D.21732
	movq	8(%rax), %rax	# _735->common.type, D.21732
	movzbl	16(%rax), %eax	# _736->common.code, D.21728
	cmpb	$5, %al	#, D.21728
	je	.L884	#,
	.loc 1 5119 0
	movl	$.LC278, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L884:
	.loc 1 5121 0
	cmpl	$0, -228(%rbp)	#, extern_ref
	je	.L885	#,
	.loc 1 5122 0
	movq	-200(%rbp), %rax	# decl, decl.531
	movzbl	49(%rax), %edx	#, tmp911
	orl	$1, %edx	#, tmp912
	movb	%dl, 49(%rax)	# tmp912,
.L885:
	.loc 1 5124 0
	movq	-200(%rbp), %rax	# decl, decl.532
	.loc 1 5125 0
	movl	-312(%rbp), %edx	# specbits, tmp913
	andl	$2049, %edx	#, D.21733
	testl	%edx, %edx	# D.21733
	sete	%dl	#, D.21736
	andl	$1, %edx	#, tmp915
	leal	0(,%rdx,8), %ecx	#, tmp916
	movzbl	18(%rax), %edx	#, tmp917
	andl	$-9, %edx	#, tmp918
	orl	%ecx, %edx	# tmp916, tmp919
	movb	%dl, 18(%rax)	# tmp919,
	.loc 1 5127 0
	cmpl	$0, -280(%rbp)	#, defaulted_int
	je	.L886	#,
	.loc 1 5128 0
	movq	-200(%rbp), %rax	# decl, decl.533
	movzbl	52(%rax), %edx	#, tmp922
	orl	$64, %edx	#, tmp923
	movb	%dl, 52(%rax)	# tmp923,
.L886:
	.loc 1 5131 0
	movq	global_trees+400(%rip), %rax	# global_trees, D.21732
	cmpq	-328(%rbp), %rax	# declarator, D.21732
	jne	.L887	#,
	.loc 1 5133 0
	cmpl	$0, -232(%rbp)	#, inlinep
	je	.L889	#,
	.loc 1 5134 0
	movl	$.LC279, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.LBE57:
	jmp	.L867	#
.L887:
.LBB58:
	.loc 1 5136 0
	cmpl	$0, -232(%rbp)	#, inlinep
	je	.L890	#,
	.loc 1 5139 0
	movq	-200(%rbp), %rax	# decl, decl.534
	movq	200(%rax), %rax	# decl.534_744->decl.lang_specific, D.21738
	movzbl	(%rax), %edx	# _745->base.declared_inline, tmp926
	orl	$1, %edx	#, tmp927
	movb	%dl, (%rax)	# tmp927, _745->base.declared_inline
	.loc 1 5145 0
	cmpl	$0, -344(%rbp)	#, initialized
	je	.L889	#,
	.loc 1 5147 0
	movq	-200(%rbp), %rax	# decl, decl.535
	movzbl	49(%rax), %edx	#, tmp930
	orl	$8, %edx	#, tmp931
	movb	%dl, 49(%rax)	# tmp931,
	.loc 1 5148 0
	movl	-312(%rbp), %eax	# specbits, tmp932
	andl	$16, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	je	.L889	#,
	.loc 1 5149 0
	movl	$1, current_extern_inline(%rip)	#, current_extern_inline
.LBE58:
	jmp	.L867	#
.L890:
.LBB59:
	.loc 1 5155 0
	movl	flag_inline_trees(%rip), %eax	# flag_inline_trees, flag_inline_trees.536
	cmpl	$2, %eax	#, flag_inline_trees.536
	jne	.L889	#,
	.loc 1 5155 0 is_stmt 0 discriminator 1
	cmpl	$0, -344(%rbp)	#, initialized
	je	.L889	#,
	.loc 1 5157 0 is_stmt 1
	movq	-200(%rbp), %rax	# decl, decl.537
	movzbl	49(%rax), %edx	#, tmp935
	orl	$8, %edx	#, tmp936
	movb	%dl, 49(%rax)	# tmp936,
	.loc 1 5158 0
	movq	-200(%rbp), %rax	# decl, decl.538
	movq	200(%rax), %rax	# decl.538_750->decl.lang_specific, D.21738
	movzbl	(%rax), %edx	# _751->base.declared_inline, tmp939
	andl	$-2, %edx	#, tmp940
	movb	%dl, (%rax)	# tmp940, _751->base.declared_inline
.LBE59:
	jmp	.L867	#
.L889:
	jmp	.L867	#
.L875:
.LBB60:
	.loc 1 5165 0
	cmpl	$0, -344(%rbp)	#, initialized
	jne	.L892	#,
	.loc 1 5165 0 is_stmt 0 discriminator 1
	movl	-312(%rbp), %eax	# specbits, tmp941
	andl	$16, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	je	.L892	#,
	.loc 1 5165 0 discriminator 3
	movl	$1, %eax	#, iftmp.539
	jmp	.L893	#
.L892:
	.loc 1 5165 0 discriminator 2
	movl	$0, %eax	#, iftmp.539
.L893:
	.loc 1 5165 0 discriminator 4
	movl	%eax, -224(%rbp)	# iftmp.539, extern_ref
	.loc 1 5168 0 is_stmt 1 discriminator 4
	movq	-216(%rbp), %rax	# type, type.540
	movzbl	16(%rax), %eax	# type.540_756->common.code, D.21728
	cmpb	$18, %al	#, D.21728
	jne	.L894	#,
	.loc 1 5168 0 is_stmt 0 discriminator 1
	cmpl	$0, -292(%rbp)	#, type_quals
	je	.L894	#,
.LBB61:
	.loc 1 5170 0 is_stmt 1
	movq	-216(%rbp), %rax	# type, type.541
	movl	64(%rax), %eax	# type.541_758->type.align, D.21729
	movl	%eax, -220(%rbp)	# D.21729, saved_align
	.loc 1 5173 0
	movq	-216(%rbp), %rax	# type, type.542
	.loc 1 5171 0
	movq	24(%rax), %rbx	# type.542_761->type.values, D.21732
	movq	-216(%rbp), %rax	# type, type.543
	movq	8(%rax), %rax	# type.543_763->common.type, D.21732
	movl	-292(%rbp), %edx	# type_quals, tmp942
	movl	%edx, %esi	# tmp942,
	movq	%rax, %rdi	# D.21732,
	call	c_build_qualified_type	#
	movq	%rbx, %rsi	# D.21732,
	movq	%rax, %rdi	# D.21732,
	call	build_array_type	#
	movq	%rax, -216(%rbp)	# type.544, type
	.loc 1 5174 0
	movq	-216(%rbp), %rax	# type, type.545
	movl	-220(%rbp), %edx	# saved_align, saved_align.546
	movl	%edx, 64(%rax)	# saved_align.546, type.545_767->type.align
.LBE61:
	.loc 1 5169 0
	jmp	.L895	#
.L894:
	.loc 1 5179 0
	cmpl	$0, -292(%rbp)	#, type_quals
	je	.L895	#,
	.loc 1 5180 0
	movq	-216(%rbp), %rax	# type, type.547
	movl	-292(%rbp), %edx	# type_quals, tmp943
	movl	%edx, %esi	# tmp943,
	movq	%rax, %rdi	# type.547,
	call	c_build_qualified_type	#
	movq	%rax, -216(%rbp)	# type.548, type
.L895:
	.loc 1 5182 0
	movq	-216(%rbp), %rdx	# type, type.549
	movq	-328(%rbp), %rax	# declarator, tmp944
	movq	%rax, %rsi	# tmp944,
	movl	$34, %edi	#,
	call	build_decl	#
	movq	%rax, -200(%rbp)	# decl.550, decl
	.loc 1 5183 0
	cmpl	$0, -264(%rbp)	#, size_varies
	je	.L896	#,
	.loc 1 5184 0
	movq	-200(%rbp), %rax	# decl, decl.551
	movzbl	52(%rax), %edx	#, tmp947
	orl	$32, %edx	#, tmp948
	movb	%dl, 52(%rax)	# tmp948,
.L896:
	.loc 1 5186 0
	cmpl	$0, -232(%rbp)	#, inlinep
	je	.L897	#,
	.loc 1 5187 0
	movq	-200(%rbp), %rax	# decl, decl.552
	movl	$.LC280, %esi	#,
	movq	%rax, %rdi	# decl.552,
	movl	$0, %eax	#,
	call	pedwarn_with_decl	#
.L897:
	.loc 1 5189 0
	movq	-200(%rbp), %rax	# decl, decl.553
	movl	-224(%rbp), %edx	# extern_ref, tmp949
	andl	$1, %edx	#, D.21735
	movl	%edx, %ecx	# D.21735, tmp951
	andl	$1, %ecx	#, tmp951
	movzbl	49(%rax), %edx	#, tmp952
	andl	$-2, %edx	#, tmp953
	orl	%ecx, %edx	# tmp951, tmp954
	movb	%dl, 49(%rax)	# tmp954,
	.loc 1 5194 0
	movq	current_binding_level(%rip), %rdx	# current_binding_level, current_binding_level.554
	movq	global_binding_level(%rip), %rax	# global_binding_level, global_binding_level.555
	cmpq	%rax, %rdx	# global_binding_level.555, current_binding_level.554
	jne	.L898	#,
	.loc 1 5196 0
	movq	-200(%rbp), %rax	# decl, decl.556
	.loc 1 5198 0
	movl	-312(%rbp), %edx	# specbits, tmp955
	andl	$33, %edx	#, D.21733
	.loc 1 5197 0
	testl	%edx, %edx	# D.21733
	sete	%dl	#, D.21736
	andl	$1, %edx	#, tmp957
	leal	0(,%rdx,8), %ecx	#, tmp958
	movzbl	18(%rax), %edx	#, tmp959
	andl	$-9, %edx	#, tmp960
	orl	%ecx, %edx	# tmp958, tmp961
	movb	%dl, 18(%rax)	# tmp961,
	.loc 1 5199 0
	movq	-200(%rbp), %rax	# decl, decl.557
	movq	-200(%rbp), %rdx	# decl, decl.558
	movzbl	49(%rdx), %edx	# *decl.558_784, D.21728
	andl	$1, %edx	#, D.21728
	testb	%dl, %dl	# D.21728
	sete	%dl	#, D.21736
	andl	$1, %edx	#, tmp963
	leal	0(,%rdx,4), %ecx	#, tmp964
	movzbl	18(%rax), %edx	#, tmp965
	andl	$-5, %edx	#, tmp966
	orl	%ecx, %edx	# tmp964, tmp967
	movb	%dl, 18(%rax)	# tmp967,
	jmp	.L867	#
.L898:
	.loc 1 5204 0
	movq	-200(%rbp), %rax	# decl, decl.559
	movl	-312(%rbp), %edx	# specbits, tmp968
	andl	$1, %edx	#, D.21733
	testl	%edx, %edx	# D.21733
	setne	%dl	#, D.21736
	andl	$1, %edx	#, tmp970
	leal	0(,%rdx,4), %ecx	#, tmp971
	movzbl	18(%rax), %edx	#, tmp972
	andl	$-5, %edx	#, tmp973
	orl	%ecx, %edx	# tmp971, tmp974
	movb	%dl, 18(%rax)	# tmp974,
	.loc 1 5205 0
	movq	-200(%rbp), %rax	# decl, decl.560
	movq	-200(%rbp), %rdx	# decl, decl.561
	movzbl	49(%rdx), %edx	# *decl.561_792, tmp977
	andl	$1, %edx	#, D.21735
	andl	$1, %edx	#, tmp979
	leal	0(,%rdx,8), %ecx	#, tmp980
	movzbl	18(%rax), %edx	#, tmp981
	andl	$-9, %edx	#, tmp982
	orl	%ecx, %edx	# tmp980, tmp983
	movb	%dl, 18(%rax)	# tmp983,
.L867:
.LBE60:
	.loc 1 5212 0
	movl	-312(%rbp), %eax	# specbits, tmp984
	andl	$32, %eax	#, D.21733
	testl	%eax, %eax	# D.21733
	je	.L899	#,
	.loc 1 5213 0
	movq	-200(%rbp), %rax	# decl, decl.562
	movzbl	49(%rax), %edx	#, tmp987
	orl	$4, %edx	#, tmp988
	movb	%dl, 49(%rax)	# tmp988,
.L899:
	.loc 1 5216 0
	movq	-200(%rbp), %rdx	# decl, decl.563
	movl	-292(%rbp), %eax	# type_quals, tmp989
	movq	%rdx, %rsi	# decl.563,
	movl	%eax, %edi	# tmp989,
	call	c_apply_type_quals_to_decl	#
	.loc 1 5221 0
	movq	-200(%rbp), %rax	# decl, decl.564
	movq	8(%rax), %rax	# decl.564_797->common.type, D.21732
	movzbl	19(%rax), %eax	# *_798, D.21728
	andl	$4, %eax	#, D.21728
	testb	%al, %al	# D.21728
	je	.L900	#,
	.loc 1 5222 0
	movq	-200(%rbp), %rax	# decl, decl.565
	movq	%rax, %rdi	# decl.565,
	call	mark_addressable	#
.L900:
	.loc 1 5224 0
	movq	-152(%rbp), %rcx	# returned_attrs, tmp990
	leaq	-200(%rbp), %rax	#, tmp991
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp990,
	movq	%rax, %rdi	# tmp991,
	call	decl_attributes	#
	.loc 1 5226 0
	movq	-200(%rbp), %rax	# decl, D.21727
.L901:
.LBE53:
	.loc 1 5228 0
	addq	$344, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	grokdeclarator, .-grokdeclarator
	.section	.rodata
	.align 8
.LC281:
	.string	"function declaration isn't a prototype"
	.align 8
.LC282:
	.string	"parameter names (without types) in function declaration"
	.align 8
.LC283:
	.string	"parameter `%s' has incomplete type"
.LC284:
	.string	"parameter has incomplete type"
	.text
	.type	grokparms, @function
grokparms:
.LFB57:
	.loc 1 5252 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# parms_info, parms_info
	movl	%esi, -44(%rbp)	# funcdef_flag, funcdef_flag
	.loc 1 5253 0
	movq	-40(%rbp), %rax	# parms_info, tmp75
	movq	(%rax), %rax	# parms_info_5(D)->common.chain, tmp76
	movq	%rax, -16(%rbp)	# tmp76, first_parm
	.loc 1 5255 0
	movq	-40(%rbp), %rax	# parms_info, tmp77
	movq	24(%rax), %rax	# parms_info_5(D)->list.purpose, last_function_parms.566
	movq	%rax, last_function_parms(%rip)	# last_function_parms.566, last_function_parms
	.loc 1 5256 0
	movq	-40(%rbp), %rax	# parms_info, tmp78
	movq	32(%rax), %rax	# parms_info_5(D)->list.value, last_function_parm_tags.567
	movq	%rax, last_function_parm_tags(%rip)	# last_function_parm_tags.567, last_function_parm_tags
	.loc 1 5258 0
	movl	warn_strict_prototypes(%rip), %eax	# warn_strict_prototypes, warn_strict_prototypes.568
	testl	%eax, %eax	# warn_strict_prototypes.568
	je	.L904	#,
	.loc 1 5258 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, first_parm
	jne	.L904	#,
	cmpl	$0, -44(%rbp)	#, funcdef_flag
	jne	.L904	#,
	.loc 1 5259 0 is_stmt 1
	movl	in_system_header(%rip), %eax	# in_system_header, in_system_header.569
	testl	%eax, %eax	# in_system_header.569
	jne	.L904	#,
	.loc 1 5260 0
	movl	$.LC281, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L904:
	.loc 1 5262 0
	cmpq	$0, -16(%rbp)	#, first_parm
	je	.L905	#,
	.loc 1 5263 0
	movq	-16(%rbp), %rax	# first_parm, tmp79
	movq	32(%rax), %rax	# first_parm_6->list.value, D.21801
	movzbl	16(%rax), %eax	# _12->common.code, D.21802
	cmpb	$1, %al	#, D.21802
	jne	.L905	#,
	.loc 1 5265 0
	cmpl	$0, -44(%rbp)	#, funcdef_flag
	jne	.L906	#,
	.loc 1 5266 0
	movl	$.LC282, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L906:
	.loc 1 5268 0
	movq	-16(%rbp), %rax	# first_parm, tmp80
	movq	%rax, last_function_parms(%rip)	# tmp80, last_function_parms
	.loc 1 5269 0
	movl	$0, %eax	#, D.21800
	jmp	.L907	#
.L905:
.LBB62:
	.loc 1 5285 0
	movq	last_function_parms(%rip), %rax	# last_function_parms, tmp81
	movq	%rax, -32(%rbp)	# tmp81, parm
	movq	-16(%rbp), %rax	# first_parm, tmp82
	movq	%rax, -24(%rbp)	# tmp82, typelt
	jmp	.L908	#
.L914:
	.loc 1 5289 0
	movq	-32(%rbp), %rax	# parm, tmp83
	movzbl	16(%rax), %eax	# parm_1->common.code, D.21802
	cmpb	$35, %al	#, D.21802
	jne	.L909	#,
.LBB63:
	.loc 1 5292 0
	movq	-24(%rbp), %rax	# typelt, tmp84
	movq	32(%rax), %rax	# typelt_3->list.value, tmp85
	movq	%rax, -8(%rbp)	# tmp85, type
	.loc 1 5293 0
	movq	global_trees(%rip), %rax	# global_trees, D.21801
	cmpq	-8(%rbp), %rax	# type, D.21801
	jne	.L910	#,
	.loc 1 5294 0
	jmp	.L909	#
.L910:
	.loc 1 5295 0
	movq	-8(%rbp), %rax	# type, tmp86
	movq	32(%rax), %rax	# type_18->type.size, D.21801
	testq	%rax, %rax	# D.21801
	jne	.L911	#,
	.loc 1 5297 0
	cmpl	$0, -44(%rbp)	#, funcdef_flag
	je	.L912	#,
	.loc 1 5297 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# parm, tmp87
	movq	72(%rax), %rax	# parm_1->decl.name, D.21801
	testq	%rax, %rax	# D.21801
	je	.L912	#,
	.loc 1 5299 0 is_stmt 1
	movq	-32(%rbp), %rax	# parm, tmp88
	movq	72(%rax), %rax	# parm_1->decl.name, D.21801
	movq	32(%rax), %rax	# _22->identifier.id.str, D.21803
	.loc 1 5298 0
	movq	%rax, %rsi	# D.21803,
	movl	$.LC283, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	jmp	.L913	#
.L912:
	.loc 1 5301 0
	movl	$.LC284, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L913:
	.loc 1 5302 0
	cmpl	$0, -44(%rbp)	#, funcdef_flag
	je	.L911	#,
	.loc 1 5304 0
	movq	global_trees(%rip), %rdx	# global_trees, D.21801
	movq	-24(%rbp), %rax	# typelt, tmp89
	movq	%rdx, 32(%rax)	# D.21801, typelt_3->list.value
	.loc 1 5305 0
	movq	global_trees(%rip), %rdx	# global_trees, D.21801
	movq	-32(%rbp), %rax	# parm, tmp90
	movq	%rdx, 8(%rax)	# D.21801, parm_1->common.type
.L911:
	.loc 1 5329 0
	movq	-24(%rbp), %rax	# typelt, tmp91
	movq	(%rax), %rax	# typelt_3->common.chain, tmp92
	movq	%rax, -24(%rbp)	# tmp92, typelt
.L909:
.LBE63:
	.loc 1 5287 0
	movq	-32(%rbp), %rax	# parm, tmp93
	movq	(%rax), %rax	# parm_1->common.chain, tmp94
	movq	%rax, -32(%rbp)	# tmp94, parm
.L908:
	.loc 1 5285 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, parm
	jne	.L914	#,
	.loc 1 5332 0
	movq	-16(%rbp), %rax	# first_parm, D.21800
.L907:
.LBE62:
	.loc 1 5334 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	grokparms, .-grokparms
	.section	.rodata
	.align 8
.LC285:
	.string	"parameter `%s' has just a forward declaration"
	.align 8
.LC286:
	.string	"`void' in parameter list must be the entire list"
	.text
	.globl	get_parm_info
	.type	get_parm_info, @function
get_parm_info:
.LFB58:
	.loc 1 5348 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movl	%edi, -84(%rbp)	# void_at_end, void_at_end
	.loc 1 5350 0
	movq	$0, -56(%rbp)	#, types
	.loc 1 5351 0
	movl	$0, -76(%rbp)	#, erred
	.loc 1 5352 0
	call	gettags	#
	movq	%rax, -40(%rbp)	# tmp105, tags
	.loc 1 5353 0
	call	getdecls	#
	movq	%rax, -32(%rbp)	# tmp106, parms
	.loc 1 5354 0
	movq	$0, -48(%rbp)	#, new_parms
	.loc 1 5355 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.570
	movq	64(%rax), %rax	# current_binding_level.570_17->parm_order, tmp107
	movq	%rax, -24(%rbp)	# tmp107, order
	.loc 1 5362 0
	cmpl	$0, -84(%rbp)	#, void_at_end
	je	.L916	#,
	.loc 1 5362 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, parms
	je	.L916	#,
	.loc 1 5363 0 is_stmt 1
	movq	-32(%rbp), %rax	# parms, tmp108
	movq	(%rax), %rax	# parms_15->common.chain, D.21809
	testq	%rax, %rax	# D.21809
	jne	.L916	#,
	.loc 1 5364 0
	movq	-32(%rbp), %rax	# parms, tmp109
	movq	8(%rax), %rax	# parms_15->common.type, D.21809
	movzbl	16(%rax), %eax	# _21->common.code, D.21810
	cmpb	$5, %al	#, D.21810
	jne	.L916	#,
	.loc 1 5365 0
	movq	-32(%rbp), %rax	# parms, tmp110
	movzbl	17(%rax), %eax	# *parms_15, D.21810
	andl	$8, %eax	#, D.21810
	testb	%al, %al	# D.21810
	jne	.L916	#,
	.loc 1 5366 0
	movq	-32(%rbp), %rax	# parms, tmp111
	movzbl	17(%rax), %eax	# *parms_15, D.21810
	andl	$16, %eax	#, D.21810
	testb	%al, %al	# D.21810
	jne	.L916	#,
	.loc 1 5367 0
	movq	-32(%rbp), %rax	# parms, tmp112
	movzbl	49(%rax), %eax	# *parms_15, D.21810
	andl	$4, %eax	#, D.21810
	testb	%al, %al	# D.21810
	jne	.L916	#,
	.loc 1 5368 0
	movq	-32(%rbp), %rax	# parms, tmp113
	movq	72(%rax), %rax	# parms_15->decl.name, D.21809
	testq	%rax, %rax	# D.21809
	jne	.L916	#,
	.loc 1 5370 0
	movq	$0, -32(%rbp)	#, parms
	.loc 1 5371 0
	movl	$0, %edi	#,
	call	storedecls	#
	.loc 1 5372 0
	movq	global_trees+216(%rip), %rax	# global_trees, D.21809
	movl	$0, %edx	#,
	movq	%rax, %rsi	# D.21809,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	# D.21809,
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	tree_cons	#
	jmp	.L917	#
.L916:
	.loc 1 5378 0
	movq	-32(%rbp), %rax	# parms, tmp114
	movq	%rax, -72(%rbp)	# tmp114, decl
	jmp	.L918	#
.L921:
.LBB64:
	.loc 1 5380 0
	movq	-72(%rbp), %rax	# decl, tmp115
	movq	(%rax), %rax	# decl_1->common.chain, tmp116
	movq	%rax, -16(%rbp)	# tmp116, next
	.loc 1 5382 0
	movq	-72(%rbp), %rax	# decl, tmp117
	movzbl	16(%rax), %eax	# decl_1->common.code, D.21810
	cmpb	$35, %al	#, D.21810
	je	.L919	#,
	.loc 1 5384 0
	movq	-72(%rbp), %rax	# decl, tmp118
	movq	-48(%rbp), %rdx	# new_parms, tmp119
	movq	%rdx, (%rax)	# tmp119, decl_1->common.chain
	.loc 1 5385 0
	movq	-72(%rbp), %rax	# decl, tmp120
	movq	%rax, -48(%rbp)	# tmp120, new_parms
	jmp	.L920	#
.L919:
	.loc 1 5387 0
	movq	-72(%rbp), %rax	# decl, tmp121
	movzbl	17(%rax), %eax	# *decl_1, D.21810
	andl	$64, %eax	#, D.21810
	testb	%al, %al	# D.21810
	je	.L920	#,
	.loc 1 5389 0
	movq	-72(%rbp), %rax	# decl, tmp122
	movl	$.LC285, %esi	#,
	movq	%rax, %rdi	# tmp122,
	movl	$0, %eax	#,
	call	error_with_decl	#
	.loc 1 5391 0
	movq	-72(%rbp), %rax	# decl, tmp123
	movq	-48(%rbp), %rdx	# new_parms, tmp124
	movq	%rdx, (%rax)	# tmp124, decl_1->common.chain
	.loc 1 5392 0
	movq	-72(%rbp), %rax	# decl, tmp125
	movq	%rax, -48(%rbp)	# tmp125, new_parms
.L920:
	.loc 1 5394 0
	movq	-16(%rbp), %rax	# next, tmp126
	movq	%rax, -72(%rbp)	# tmp126, decl
.L918:
.LBE64:
	.loc 1 5378 0 discriminator 1
	cmpq	$0, -72(%rbp)	#, decl
	jne	.L921	#,
	.loc 1 5398 0
	movq	-24(%rbp), %rax	# order, tmp127
	movq	%rax, -64(%rbp)	# tmp127, t
	jmp	.L922	#
.L925:
	.loc 1 5400 0
	movq	-64(%rbp), %rax	# t, tmp128
	movq	(%rax), %rax	# t_3->common.chain, D.21809
	testq	%rax, %rax	# D.21809
	je	.L923	#,
	.loc 1 5401 0
	movq	-64(%rbp), %rax	# t, tmp129
	movq	32(%rax), %rax	# t_3->list.value, D.21809
	movq	-64(%rbp), %rdx	# t, tmp130
	movq	(%rdx), %rdx	# t_3->common.chain, D.21809
	movq	32(%rdx), %rdx	# _45->list.value, D.21809
	movq	%rdx, (%rax)	# D.21809, _44->common.chain
	jmp	.L924	#
.L923:
	.loc 1 5403 0
	movq	-64(%rbp), %rax	# t, tmp131
	movq	32(%rax), %rax	# t_3->list.value, D.21809
	movq	$0, (%rax)	#, _47->common.chain
.L924:
	.loc 1 5398 0
	movq	-64(%rbp), %rax	# t, tmp132
	movq	(%rax), %rax	# t_3->common.chain, tmp133
	movq	%rax, -64(%rbp)	# tmp133, t
.L922:
	.loc 1 5398 0 is_stmt 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, t
	jne	.L925	#,
	.loc 1 5406 0 is_stmt 1
	cmpq	$0, -24(%rbp)	#, order
	je	.L926	#,
	.loc 1 5406 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# order, tmp134
	movq	32(%rax), %rax	# order_18->list.value, D.21809
	movq	%rax, %rdi	# D.21809,
	call	nreverse	#
	jmp	.L927	#
.L926:
	.loc 1 5406 0 discriminator 2
	movl	$0, %eax	#, iftmp.571
.L927:
	.loc 1 5406 0 discriminator 3
	movq	-48(%rbp), %rdx	# new_parms, tmp135
	movq	%rdx, %rsi	# tmp135,
	movq	%rax, %rdi	# iftmp.571,
	call	chainon	#
	movq	%rax, -48(%rbp)	# tmp136, new_parms
	.loc 1 5411 0 is_stmt 1 discriminator 3
	movq	-48(%rbp), %rax	# new_parms, tmp137
	movq	%rax, %rdi	# tmp137,
	call	storedecls	#
	.loc 1 5413 0 discriminator 3
	movq	-48(%rbp), %rax	# new_parms, tmp138
	movq	%rax, -72(%rbp)	# tmp138, decl
	jmp	.L928	#
.L932:
	.loc 1 5416 0
	movq	-72(%rbp), %rax	# decl, tmp139
	movzbl	16(%rax), %eax	# decl_2->common.code, D.21810
	cmpb	$35, %al	#, D.21810
	jne	.L929	#,
.LBB65:
	.loc 1 5420 0
	movq	-72(%rbp), %rax	# decl, tmp140
	movq	8(%rax), %rax	# decl_2->common.type, tmp141
	movq	%rax, -8(%rbp)	# tmp141, type
	.loc 1 5421 0
	movq	-72(%rbp), %rax	# decl, tmp142
	movq	-8(%rbp), %rdx	# type, tmp143
	movq	%rdx, 104(%rax)	# tmp143, decl_2->decl.initial
	.loc 1 5422 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.572
	andl	$33554432, %eax	#, D.21811
	testl	%eax, %eax	# D.21811
	jne	.L930	#,
	.loc 1 5423 0
	movq	-8(%rbp), %rax	# type, tmp144
	movzbl	16(%rax), %eax	# type_55->common.code, D.21810
	cmpb	$6, %al	#, D.21810
	je	.L931	#,
	.loc 1 5423 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# type, tmp145
	movzbl	16(%rax), %eax	# type_55->common.code, D.21810
	cmpb	$10, %al	#, D.21810
	je	.L931	#,
	movq	-8(%rbp), %rax	# type, tmp146
	movzbl	16(%rax), %eax	# type_55->common.code, D.21810
	cmpb	$11, %al	#, D.21810
	je	.L931	#,
	movq	-8(%rbp), %rax	# type, tmp147
	movzbl	16(%rax), %eax	# type_55->common.code, D.21810
	cmpb	$12, %al	#, D.21810
	jne	.L930	#,
.L931:
	.loc 1 5424 0 is_stmt 1
	movq	-8(%rbp), %rax	# type, tmp148
	movzwl	60(%rax), %eax	# *type_55, tmp151
	andw	$511, %ax	#, D.21812
	movzwl	%ax, %edx	# D.21812, D.21811
	movq	integer_types+40(%rip), %rax	# integer_types, D.21809
	movzwl	60(%rax), %eax	# *_64, tmp154
	andw	$511, %ax	#, D.21812
	movzwl	%ax, %eax	# D.21812, D.21811
	cmpl	%eax, %edx	# D.21811, D.21811
	jge	.L930	#,
	.loc 1 5425 0
	movq	integer_types+40(%rip), %rdx	# integer_types, D.21809
	movq	-72(%rbp), %rax	# decl, tmp155
	movq	%rdx, 104(%rax)	# D.21809, decl_2->decl.initial
.L930:
	.loc 1 5427 0
	movq	-72(%rbp), %rax	# decl, tmp156
	movq	8(%rax), %rax	# decl_2->common.type, D.21809
	movq	-56(%rbp), %rdx	# types, tmp157
	movq	%rax, %rsi	# D.21809,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, -56(%rbp)	# tmp158, types
	.loc 1 5428 0
	movq	-56(%rbp), %rax	# types, tmp159
	movq	32(%rax), %rax	# types_69->list.value, D.21809
	movzbl	16(%rax), %eax	# _70->common.code, D.21810
	cmpb	$5, %al	#, D.21810
	jne	.L929	#,
	.loc 1 5428 0 is_stmt 0 discriminator 1
	cmpl	$0, -76(%rbp)	#, erred
	jne	.L929	#,
	.loc 1 5429 0 is_stmt 1
	movq	-72(%rbp), %rax	# decl, tmp160
	movq	72(%rax), %rax	# decl_2->decl.name, D.21809
	testq	%rax, %rax	# D.21809
	jne	.L929	#,
	.loc 1 5431 0
	movl	$.LC286, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 5432 0
	movl	$1, -76(%rbp)	#, erred
.L929:
.LBE65:
	.loc 1 5413 0
	movq	-72(%rbp), %rax	# decl, tmp161
	movq	(%rax), %rax	# decl_2->common.chain, tmp162
	movq	%rax, -72(%rbp)	# tmp162, decl
.L928:
	.loc 1 5413 0 is_stmt 0 discriminator 1
	cmpq	$0, -72(%rbp)	#, decl
	jne	.L932	#,
	.loc 1 5436 0 is_stmt 1
	cmpl	$0, -84(%rbp)	#, void_at_end
	je	.L933	#,
	.loc 1 5437 0
	movq	global_trees+216(%rip), %rax	# global_trees, D.21809
	movq	-56(%rbp), %rdx	# types, tmp163
	movq	%rax, %rsi	# D.21809,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdi	# D.21809,
	call	nreverse	#
	movq	%rax, %rdx	#, D.21809
	movq	-40(%rbp), %rcx	# tags, tmp164
	movq	-48(%rbp), %rax	# new_parms, tmp165
	movq	%rcx, %rsi	# tmp164,
	movq	%rax, %rdi	# tmp165,
	call	tree_cons	#
	jmp	.L917	#
.L933:
	.loc 1 5440 0
	movq	-56(%rbp), %rax	# types, tmp166
	movq	%rax, %rdi	# tmp166,
	call	nreverse	#
	movq	%rax, %rdx	#, D.21809
	movq	-40(%rbp), %rcx	# tags, tmp167
	movq	-48(%rbp), %rax	# new_parms, tmp168
	movq	%rcx, %rsi	# tmp167,
	movq	%rax, %rdi	# tmp168,
	call	tree_cons	#
.L917:
	.loc 1 5441 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	get_parm_info, .-get_parm_info
	.section	.rodata
	.align 8
.LC287:
	.string	"`struct %s' declared inside parameter list"
	.align 8
.LC288:
	.string	"`union %s' declared inside parameter list"
	.align 8
.LC289:
	.string	"`enum %s' declared inside parameter list"
	.align 8
.LC290:
	.string	"anonymous struct declared inside parameter list"
	.align 8
.LC291:
	.string	"anonymous union declared inside parameter list"
	.align 8
.LC292:
	.string	"anonymous enum declared inside parameter list"
	.align 8
.LC293:
	.string	"its scope is only this definition or declaration, which is probably not what you want"
	.text
	.globl	parmlist_tags_warning
	.type	parmlist_tags_warning, @function
parmlist_tags_warning:
.LFB59:
	.loc 1 5448 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 5452 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.573
	movq	8(%rax), %rax	# current_binding_level.573_2->tags, tmp72
	movq	%rax, -8(%rbp)	# tmp72, elt
	jmp	.L935	#
.L945:
.LBB66:
	.loc 1 5454 0
	movq	-8(%rbp), %rax	# elt, tmp73
	movq	32(%rax), %rax	# elt_1->list.value, D.21815
	movzbl	16(%rax), %eax	# _4->common.code, D.21816
	movzbl	%al, %eax	# D.21816, tmp74
	movl	%eax, -12(%rbp)	# tmp74, code
	.loc 1 5457 0
	cmpl	$21, -12(%rbp)	#, code
	jne	.L936	#,
	.loc 1 5457 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# elt, tmp75
	movq	24(%rax), %rax	# elt_1->list.purpose, D.21815
	testq	%rax, %rax	# D.21815
	jne	.L936	#,
	movl	pedantic(%rip), %eax	# pedantic, pedantic.574
	testl	%eax, %eax	# pedantic.574
	jne	.L936	#,
	.loc 1 5458 0 is_stmt 1
	jmp	.L937	#
.L936:
	.loc 1 5459 0
	movq	-8(%rbp), %rax	# elt, tmp76
	movq	24(%rax), %rax	# elt_1->list.purpose, D.21815
	testq	%rax, %rax	# D.21815
	je	.L938	#,
	.loc 1 5461 0
	cmpl	$20, -12(%rbp)	#, code
	jne	.L939	#,
	.loc 1 5463 0
	movq	-8(%rbp), %rax	# elt, tmp77
	movq	24(%rax), %rax	# elt_1->list.purpose, D.21815
	movq	32(%rax), %rax	# _10->identifier.id.str, D.21817
	.loc 1 5462 0
	movq	%rax, %rsi	# D.21817,
	movl	$.LC287, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	jmp	.L942	#
.L939:
	.loc 1 5464 0
	cmpl	$21, -12(%rbp)	#, code
	jne	.L941	#,
	.loc 1 5466 0
	movq	-8(%rbp), %rax	# elt, tmp78
	movq	24(%rax), %rax	# elt_1->list.purpose, D.21815
	movq	32(%rax), %rax	# _12->identifier.id.str, D.21817
	.loc 1 5465 0
	movq	%rax, %rsi	# D.21817,
	movl	$.LC288, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	jmp	.L942	#
.L941:
	.loc 1 5469 0
	movq	-8(%rbp), %rax	# elt, tmp79
	movq	24(%rax), %rax	# elt_1->list.purpose, D.21815
	movq	32(%rax), %rax	# _14->identifier.id.str, D.21817
	.loc 1 5468 0
	movq	%rax, %rsi	# D.21817,
	movl	$.LC289, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	jmp	.L942	#
.L938:
	.loc 1 5474 0
	cmpl	$20, -12(%rbp)	#, code
	jne	.L943	#,
	.loc 1 5475 0
	movl	$.LC290, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	jmp	.L942	#
.L943:
	.loc 1 5476 0
	cmpl	$21, -12(%rbp)	#, code
	jne	.L944	#,
	.loc 1 5477 0
	movl	$.LC291, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	jmp	.L942	#
.L944:
	.loc 1 5479 0
	movl	$.LC292, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L942:
	.loc 1 5481 0
	movl	already.14728(%rip), %eax	# already, already.575
	testl	%eax, %eax	# already.575
	jne	.L937	#,
	.loc 1 5483 0
	movl	$.LC293, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	.loc 1 5484 0
	movl	$1, already.14728(%rip)	#, already
.L937:
.LBE66:
	.loc 1 5452 0
	movq	-8(%rbp), %rax	# elt, tmp80
	movq	(%rax), %rax	# elt_1->common.chain, tmp81
	movq	%rax, -8(%rbp)	# tmp81, elt
.L935:
	.loc 1 5452 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, elt
	jne	.L945	#,
	.loc 1 5487 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	parmlist_tags_warning, .-parmlist_tags_warning
	.globl	xref_tag
	.type	xref_tag, @function
xref_tag:
.LFB60:
	.loc 1 5496 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# code, code
	movq	%rsi, -32(%rbp)	# name, name
	.loc 1 5500 0
	movq	current_binding_level(%rip), %rdx	# current_binding_level, current_binding_level.576
	movq	-32(%rbp), %rsi	# name, tmp74
	movl	-20(%rbp), %eax	# code, tmp75
	movl	$0, %ecx	#,
	movl	%eax, %edi	# tmp75,
	call	lookup_tag	#
	movq	%rax, -8(%rbp)	# tmp76, ref
	.loc 1 5512 0
	cmpq	$0, -8(%rbp)	#, ref
	je	.L947	#,
	.loc 1 5512 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# ref, tmp77
	movzbl	16(%rax), %eax	# ref_5->common.code, D.21826
	movzbl	%al, %eax	# D.21826, D.21827
	cmpl	-20(%rbp), %eax	# code, D.21827
	jne	.L947	#,
	.loc 1 5513 0 is_stmt 1
	movq	-8(%rbp), %rax	# ref, D.21825
	jmp	.L948	#
.L947:
	.loc 1 5520 0
	movl	-20(%rbp), %eax	# code, tmp78
	movl	%eax, %edi	# tmp78,
	call	make_node	#
	movq	%rax, -8(%rbp)	# tmp79, ref
	.loc 1 5521 0
	cmpl	$10, -20(%rbp)	#, code
	jne	.L949	#,
	.loc 1 5525 0
	movq	integer_types+48(%rip), %rax	# integer_types, D.21828
	movzbl	61(%rax), %eax	# *_10, tmp82
	shrb	%al	# D.21829
	movl	%eax, %edx	# D.21829, D.21829
	movq	-8(%rbp), %rax	# ref, tmp83
	leal	(%rdx,%rdx), %ecx	#, tmp85
	movzbl	61(%rax), %edx	#, tmp86
	andl	$1, %edx	#, tmp87
	orl	%ecx, %edx	# tmp85, tmp88
	movb	%dl, 61(%rax)	# tmp88,
	.loc 1 5526 0
	movq	integer_types+48(%rip), %rax	# integer_types, D.21828
	movl	64(%rax), %edx	# _12->type.align, D.21827
	movq	-8(%rbp), %rax	# ref, tmp89
	movl	%edx, 64(%rax)	# D.21827, ref_9->type.align
	.loc 1 5527 0
	movq	-8(%rbp), %rax	# ref, tmp90
	movzbl	63(%rax), %edx	#, tmp93
	andl	$127, %edx	#, tmp94
	movb	%dl, 63(%rax)	# tmp94,
	.loc 1 5528 0
	movq	-8(%rbp), %rax	# ref, tmp95
	movzbl	17(%rax), %edx	#, tmp98
	orl	$32, %edx	#, tmp99
	movb	%dl, 17(%rax)	# tmp99,
	.loc 1 5529 0
	movq	integer_types+48(%rip), %rax	# integer_types, D.21828
	movzwl	60(%rax), %eax	# *_14, tmp102
	andw	$511, %ax	#, D.21830
	movl	%eax, %edx	# D.21830, D.21830
	movq	-8(%rbp), %rax	# ref, tmp103
	movl	%edx, %ecx	# D.21830, tmp105
	andw	$511, %cx	#, tmp105
	movzwl	60(%rax), %edx	# ref_9->type.precision, tmp106
	andw	$-512, %dx	#, tmp107
	orl	%ecx, %edx	# tmp105, tmp108
	movw	%dx, 60(%rax)	# tmp108, ref_9->type.precision
	.loc 1 5530 0
	movq	integer_types+48(%rip), %rax	# integer_types, D.21828
	movq	104(%rax), %rdx	# _16->type.minval, D.21828
	movq	-8(%rbp), %rax	# ref, tmp109
	movq	%rdx, 104(%rax)	# D.21828, ref_9->type.minval
	.loc 1 5531 0
	movq	integer_types+48(%rip), %rax	# integer_types, D.21828
	movq	112(%rax), %rdx	# _18->type.maxval, D.21828
	movq	-8(%rbp), %rax	# ref, tmp110
	movq	%rdx, 112(%rax)	# D.21828, ref_9->type.maxval
.L949:
	.loc 1 5534 0
	movq	-8(%rbp), %rdx	# ref, tmp111
	movq	-32(%rbp), %rax	# name, tmp112
	movq	%rdx, %rsi	# tmp111,
	movq	%rax, %rdi	# tmp112,
	call	pushtag	#
	.loc 1 5536 0
	movq	-8(%rbp), %rax	# ref, D.21825
.L948:
	.loc 1 5537 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	xref_tag, .-xref_tag
	.section	.rodata
.LC294:
	.string	"redefinition of `union %s'"
.LC295:
	.string	"redefinition of `struct %s'"
	.text
	.globl	start_struct
	.type	start_struct, @function
start_struct:
.LFB61:
	.loc 1 5547 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# code, code
	movq	%rsi, -32(%rbp)	# name, name
	.loc 1 5551 0
	movq	$0, -8(%rbp)	#, ref
	.loc 1 5553 0
	cmpq	$0, -32(%rbp)	#, name
	je	.L951	#,
	.loc 1 5554 0
	movq	current_binding_level(%rip), %rdx	# current_binding_level, current_binding_level.577
	movq	-32(%rbp), %rsi	# name, tmp73
	movl	-20(%rbp), %eax	# code, tmp74
	movl	$1, %ecx	#,
	movl	%eax, %edi	# tmp74,
	call	lookup_tag	#
	movq	%rax, -8(%rbp)	# tmp75, ref
.L951:
	.loc 1 5555 0
	cmpq	$0, -8(%rbp)	#, ref
	je	.L952	#,
	.loc 1 5555 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# ref, tmp76
	movzbl	16(%rax), %eax	# ref_1->common.code, D.21832
	movzbl	%al, %eax	# D.21832, D.21833
	cmpl	-20(%rbp), %eax	# code, D.21833
	jne	.L952	#,
	.loc 1 5557 0 is_stmt 1
	movq	-8(%rbp), %rax	# ref, tmp77
	movzbl	63(%rax), %edx	#, tmp80
	orl	$1, %edx	#, tmp81
	movb	%dl, 63(%rax)	# tmp81,
	.loc 1 5558 0
	movl	flag_pack_struct(%rip), %eax	# flag_pack_struct, flag_pack_struct.578
	andl	$1, %eax	#, D.21834
	movl	%eax, %edx	# D.21834, D.21834
	movq	-8(%rbp), %rax	# ref, tmp82
	andl	$1, %edx	#, tmp84
	movl	%edx, %ecx	# tmp84, tmp85
	sall	$4, %ecx	#, tmp85
	movzbl	62(%rax), %edx	#, tmp86
	andl	$-17, %edx	#, tmp87
	orl	%ecx, %edx	# tmp85, tmp88
	movb	%dl, 62(%rax)	# tmp88,
	.loc 1 5559 0
	movq	-8(%rbp), %rax	# ref, tmp89
	movq	24(%rax), %rax	# ref_1->type.values, D.21835
	testq	%rax, %rax	# D.21835
	je	.L953	#,
	.loc 1 5561 0
	cmpl	$21, -20(%rbp)	#, code
	jne	.L954	#,
	.loc 1 5563 0
	movq	-32(%rbp), %rax	# name, tmp90
	movq	32(%rax), %rax	# name_4(D)->identifier.id.str, D.21836
	.loc 1 5562 0
	movq	%rax, %rsi	# D.21836,
	movl	$.LC294, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	jmp	.L953	#
.L954:
	.loc 1 5566 0
	movq	-32(%rbp), %rax	# name, tmp91
	movq	32(%rax), %rax	# name_4(D)->identifier.id.str, D.21836
	.loc 1 5565 0
	movq	%rax, %rsi	# D.21836,
	movl	$.LC295, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.L953:
	.loc 1 5569 0
	movq	-8(%rbp), %rax	# ref, D.21831
	jmp	.L955	#
.L952:
	.loc 1 5574 0
	movl	-20(%rbp), %eax	# code, tmp92
	movl	%eax, %edi	# tmp92,
	call	make_node	#
	movq	%rax, -8(%rbp)	# tmp93, ref
	.loc 1 5575 0
	movq	-8(%rbp), %rdx	# ref, tmp94
	movq	-32(%rbp), %rax	# name, tmp95
	movq	%rdx, %rsi	# tmp94,
	movq	%rax, %rdi	# tmp95,
	call	pushtag	#
	.loc 1 5576 0
	movq	-8(%rbp), %rax	# ref, tmp96
	movzbl	63(%rax), %edx	#, tmp99
	orl	$1, %edx	#, tmp100
	movb	%dl, 63(%rax)	# tmp100,
	.loc 1 5577 0
	movl	flag_pack_struct(%rip), %eax	# flag_pack_struct, flag_pack_struct.579
	andl	$1, %eax	#, D.21834
	movl	%eax, %edx	# D.21834, D.21834
	movq	-8(%rbp), %rax	# ref, tmp101
	andl	$1, %edx	#, tmp103
	movl	%edx, %ecx	# tmp103, tmp104
	sall	$4, %ecx	#, tmp104
	movzbl	62(%rax), %edx	#, tmp105
	andl	$-17, %edx	#, tmp106
	orl	%ecx, %edx	# tmp104, tmp107
	movb	%dl, 62(%rax)	# tmp107,
	.loc 1 5578 0
	movq	-8(%rbp), %rax	# ref, D.21831
.L955:
	.loc 1 5579 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	start_struct, .-start_struct
	.section	.rodata
	.align 8
.LC296:
	.string	"unnamed fields of type other than struct or union are not allowed"
	.text
	.globl	grokfield
	.type	grokfield, @function
grokfield:
.LFB62:
	.loc 1 5594 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -24(%rbp)	# filename, filename
	movl	%esi, -28(%rbp)	# line, line
	movq	%rdx, -40(%rbp)	# declarator, declarator
	movq	%rcx, -48(%rbp)	# declspecs, declspecs
	movq	%r8, -56(%rbp)	# width, width
	.loc 1 5597 0
	cmpq	$0, -40(%rbp)	#, declarator
	jne	.L957	#,
	.loc 1 5597 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, width
	jne	.L957	#,
.LBB67:
	.loc 1 5601 0 is_stmt 1
	movq	-48(%rbp), %rax	# declspecs, tmp65
	movq	32(%rax), %rax	# declspecs_6(D)->list.value, tmp66
	movq	%rax, -16(%rbp)	# tmp66, type
	.loc 1 5603 0
	movq	-16(%rbp), %rax	# type, tmp67
	movzbl	16(%rax), %eax	# type_7->common.code, D.21840
	cmpb	$33, %al	#, D.21840
	jne	.L958	#,
	.loc 1 5604 0
	movq	-16(%rbp), %rax	# type, tmp68
	movq	8(%rax), %rax	# type_7->common.type, tmp69
	movq	%rax, -16(%rbp)	# tmp69, type
.L958:
	.loc 1 5605 0
	movq	-16(%rbp), %rax	# type, tmp70
	movzbl	16(%rax), %eax	# type_1->common.code, D.21840
	cmpb	$20, %al	#, D.21840
	je	.L957	#,
	.loc 1 5605 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# type, tmp71
	movzbl	16(%rax), %eax	# type_1->common.code, D.21840
	cmpb	$21, %al	#, D.21840
	je	.L957	#,
	.loc 1 5607 0 is_stmt 1
	movl	$.LC296, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 5608 0
	movl	$0, %eax	#, D.21839
	jmp	.L959	#
.L957:
.LBE67:
	.loc 1 5612 0
	cmpq	$0, -56(%rbp)	#, width
	je	.L960	#,
	.loc 1 5612 0 is_stmt 0 discriminator 1
	movl	$4, %eax	#, iftmp.580
	jmp	.L961	#
.L960:
	.loc 1 5612 0 discriminator 2
	movl	$3, %eax	#, iftmp.580
.L961:
	.loc 1 5612 0 discriminator 3
	movq	-48(%rbp), %rsi	# declspecs, tmp72
	movq	-40(%rbp), %rdi	# declarator, tmp73
	movl	$0, %ecx	#,
	movl	%eax, %edx	# iftmp.580,
	call	grokdeclarator	#
	movq	%rax, -8(%rbp)	# tmp74, value
	.loc 1 5614 0 is_stmt 1 discriminator 3
	movq	-8(%rbp), %rax	# value, tmp75
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp75,
	call	finish_decl	#
	.loc 1 5615 0 discriminator 3
	movq	-8(%rbp), %rax	# value, tmp76
	movq	-56(%rbp), %rdx	# width, tmp77
	movq	%rdx, 104(%rax)	# tmp77, value_15->decl.initial
	.loc 1 5617 0 discriminator 3
	movq	-8(%rbp), %rax	# value, tmp78
	movq	%rax, %rdi	# tmp78,
	call	maybe_objc_check_decl	#
	.loc 1 5618 0 discriminator 3
	movq	-8(%rbp), %rax	# value, D.21839
.L959:
	.loc 1 5619 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	grokfield, .-grokfield
	.section	.rodata
.LC297:
	.string	"union"
.LC298:
	.string	"structure"
.LC299:
	.string	"%s defined inside parms"
.LC300:
	.string	"named members"
.LC301:
	.string	"members"
.LC302:
	.string	"struct"
.LC303:
	.string	"%s has no %s"
.LC304:
	.string	"nested redefinition of `%s'"
	.align 8
.LC305:
	.string	"bit-field `%s' width not an integer constant"
	.align 8
.LC306:
	.string	"bit-field `%s' has invalid type"
	.align 8
.LC307:
	.string	"bit-field `%s' type invalid in ISO C"
	.align 8
.LC308:
	.string	"negative width in bit-field `%s'"
	.align 8
.LC309:
	.string	"width of `%s' exceeds its type"
.LC310:
	.string	"zero width for bit-field `%s'"
	.align 8
.LC311:
	.string	"`%s' is narrower than values of its type"
	.align 8
.LC312:
	.string	"flexible array member in union"
	.align 8
.LC313:
	.string	"flexible array member not at end of struct"
	.align 8
.LC314:
	.string	"flexible array member in otherwise empty struct"
.LC315:
	.string	"duplicate member `%s'"
	.align 8
.LC316:
	.string	"union cannot be made transparent"
	.text
	.globl	finish_struct
	.type	finish_struct, @function
finish_struct:
.LFB63:
	.loc 1 5630 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -88(%rbp)	# t, t
	movq	%rsi, -96(%rbp)	# fieldlist, fieldlist
	movq	%rdx, -104(%rbp)	# attributes, attributes
	.loc 1 5632 0
	movq	global_binding_level(%rip), %rdx	# global_binding_level, global_binding_level.581
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.582
	cmpq	%rax, %rdx	# current_binding_level.582, global_binding_level.581
	sete	%al	#, D.21842
	movzbl	%al, %eax	# D.21842, tmp325
	movl	%eax, -68(%rbp)	# tmp325, toplevel
	.loc 1 5638 0
	movq	-88(%rbp), %rax	# t, t.583
	movq	$0, 32(%rax)	#, t.583_23->type.size
	.loc 1 5640 0
	movq	-104(%rbp), %rcx	# attributes, tmp326
	leaq	-88(%rbp), %rax	#, tmp327
	movl	$8, %edx	#,
	movq	%rcx, %rsi	# tmp326,
	movq	%rax, %rdi	# tmp327,
	call	decl_attributes	#
	.loc 1 5643 0
	movq	-88(%rbp), %rax	# t, t.584
	movzbl	16(%rax), %eax	# t.584_25->common.code, D.21843
	cmpb	$21, %al	#, D.21843
	jne	.L963	#,
	.loc 1 5643 0 is_stmt 0 discriminator 2
	movq	-88(%rbp), %rax	# t, t.585
	movq	96(%rax), %rax	# t.585_27->type.name, D.21844
	testq	%rax, %rax	# D.21844
	je	.L964	#,
.L963:
	.loc 1 5643 0 discriminator 1
	movl	pedantic(%rip), %eax	# pedantic, pedantic.586
	testl	%eax, %eax	# pedantic.586
	jne	.L964	#,
	.loc 1 5645 0 is_stmt 1
	call	in_parm_level_p	#
	testl	%eax, %eax	# D.21845
	je	.L964	#,
	.loc 1 5647 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.587
	testl	%eax, %eax	# pedantic.587
	je	.L965	#,
	.loc 1 5649 0
	movq	-88(%rbp), %rax	# t, t.589
	movzbl	16(%rax), %eax	# t.589_32->common.code, D.21843
	.loc 1 5648 0
	cmpb	$21, %al	#, D.21843
	jne	.L966	#,
	.loc 1 5648 0 is_stmt 0 discriminator 1
	movl	$.LC297, %eax	#, iftmp.588
	jmp	.L967	#
.L966:
	.loc 1 5648 0 discriminator 2
	movl	$.LC298, %eax	#, iftmp.588
.L967:
	.loc 1 5648 0 discriminator 1
	movq	%rax, %rsi	# iftmp.588,
	movl	$.LC299, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
	jmp	.L964	#
.L965:
	.loc 1 5650 0 is_stmt 1
	movl	flag_traditional(%rip), %eax	# flag_traditional, flag_traditional.590
	testl	%eax, %eax	# flag_traditional.590
	jne	.L964	#,
	.loc 1 5652 0
	movq	-88(%rbp), %rax	# t, t.592
	movzbl	16(%rax), %eax	# t.592_37->common.code, D.21843
	.loc 1 5651 0
	cmpb	$21, %al	#, D.21843
	jne	.L968	#,
	.loc 1 5651 0 is_stmt 0 discriminator 1
	movl	$.LC297, %eax	#, iftmp.591
	jmp	.L969	#
.L968:
	.loc 1 5651 0 discriminator 2
	movl	$.LC298, %eax	#, iftmp.591
.L969:
	.loc 1 5651 0 discriminator 3
	movq	%rax, %rsi	# iftmp.591,
	movl	$.LC299, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L964:
	.loc 1 5655 0 is_stmt 1
	movl	pedantic(%rip), %eax	# pedantic, pedantic.593
	testl	%eax, %eax	# pedantic.593
	je	.L970	#,
	.loc 1 5657 0
	movq	-96(%rbp), %rax	# fieldlist, tmp328
	movq	%rax, -56(%rbp)	# tmp328, x
	jmp	.L971	#
.L974:
	.loc 1 5658 0
	movq	-56(%rbp), %rax	# x, tmp329
	movq	72(%rax), %rax	# x_1->decl.name, D.21844
	testq	%rax, %rax	# D.21844
	je	.L972	#,
	.loc 1 5659 0
	jmp	.L973	#
.L972:
	.loc 1 5657 0
	movq	-56(%rbp), %rax	# x, tmp330
	movq	(%rax), %rax	# x_1->common.chain, tmp331
	movq	%rax, -56(%rbp)	# tmp331, x
.L971:
	.loc 1 5657 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, x
	jne	.L974	#,
.L973:
	.loc 1 5661 0 is_stmt 1
	cmpq	$0, -56(%rbp)	#, x
	jne	.L970	#,
	.loc 1 5664 0
	movq	-96(%rbp), %rax	# fieldlist, fieldlist.595
	.loc 1 5662 0
	testq	%rax, %rax	# fieldlist.595
	je	.L975	#,
	.loc 1 5662 0 is_stmt 0 discriminator 1
	movl	$.LC300, %edx	#, iftmp.594
	jmp	.L976	#
.L975:
	.loc 1 5662 0 discriminator 2
	movl	$.LC301, %edx	#, iftmp.594
.L976:
	.loc 1 5663 0 is_stmt 1 discriminator 3
	movq	-88(%rbp), %rax	# t, t.597
	movzbl	16(%rax), %eax	# t.597_48->common.code, D.21843
	.loc 1 5662 0 discriminator 3
	cmpb	$21, %al	#, D.21843
	jne	.L977	#,
	.loc 1 5662 0 is_stmt 0 discriminator 4
	movl	$.LC297, %eax	#, iftmp.596
	jmp	.L978	#
.L977:
	.loc 1 5662 0 discriminator 5
	movl	$.LC302, %eax	#, iftmp.596
.L978:
	.loc 1 5662 0 discriminator 6
	movq	%rax, %rsi	# iftmp.596,
	movl	$.LC303, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L970:
	.loc 1 5672 0 is_stmt 1
	movl	$0, -72(%rbp)	#, saw_named_field
	.loc 1 5673 0
	movq	-96(%rbp), %rax	# fieldlist, tmp332
	movq	%rax, -56(%rbp)	# tmp332, x
	jmp	.L979	#
.L1015:
	.loc 1 5675 0
	movq	-88(%rbp), %rdx	# t, t.598
	movq	-56(%rbp), %rax	# x, tmp333
	movq	%rdx, 80(%rax)	# t.598, x_2->decl.context
	.loc 1 5676 0
	movq	-56(%rbp), %rax	# x, tmp334
	movzbl	49(%rax), %eax	# *x_2, tmp337
	shrb	$2, %al	#, D.21846
	andl	$1, %eax	#, D.21846
	movl	%eax, %edx	# D.21846, D.21843
	movq	-88(%rbp), %rax	# t, t.599
	movzbl	62(%rax), %eax	# *t.599_57, tmp340
	shrb	$4, %al	#, D.21846
	andl	$1, %eax	#, D.21846
	orl	%edx, %eax	# D.21843, D.21843
	andl	$1, %eax	#, D.21846
	movl	%eax, %edx	# D.21846, D.21846
	movq	-56(%rbp), %rax	# x, tmp341
	andl	$1, %edx	#, tmp343
	leal	0(,%rdx,4), %ecx	#, tmp344
	movzbl	49(%rax), %edx	#, tmp345
	andl	$-5, %edx	#, tmp346
	orl	%ecx, %edx	# tmp344, tmp347
	movb	%dl, 49(%rax)	# tmp347,
	.loc 1 5679 0
	movq	-56(%rbp), %rax	# x, tmp348
	movzbl	17(%rax), %eax	# *x_2, D.21843
	andl	$16, %eax	#, D.21843
	testb	%al, %al	# D.21843
	je	.L980	#,
	.loc 1 5680 0
	movq	-88(%rbp), %rax	# t, t.600
	movzbl	19(%rax), %edx	#, tmp351
	orl	$2, %edx	#, tmp352
	movb	%dl, 19(%rax)	# tmp352,
	jmp	.L981	#
.L980:
.LBB68:
	.loc 1 5684 0
	movq	-56(%rbp), %rax	# x, tmp353
	movq	8(%rax), %rax	# x_2->common.type, tmp354
	movq	%rax, -48(%rbp)	# tmp354, t1
	.loc 1 5685 0
	jmp	.L982	#
.L983:
	.loc 1 5686 0
	movq	-48(%rbp), %rax	# t1, tmp355
	movq	8(%rax), %rax	# t1_7->common.type, tmp356
	movq	%rax, -48(%rbp)	# tmp356, t1
.L982:
	.loc 1 5685 0 discriminator 1
	movq	-48(%rbp), %rax	# t1, tmp357
	movzbl	16(%rax), %eax	# t1_7->common.code, D.21843
	cmpb	$18, %al	#, D.21843
	je	.L983	#,
	.loc 1 5687 0
	movq	-48(%rbp), %rax	# t1, tmp358
	movzbl	16(%rax), %eax	# t1_7->common.code, D.21843
	cmpb	$20, %al	#, D.21843
	je	.L984	#,
	.loc 1 5687 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# t1, tmp359
	movzbl	16(%rax), %eax	# t1_7->common.code, D.21843
	cmpb	$21, %al	#, D.21843
	jne	.L981	#,
.L984:
	.loc 1 5688 0 is_stmt 1
	movq	-48(%rbp), %rax	# t1, tmp360
	movzbl	19(%rax), %eax	# *t1_7, D.21843
	andl	$2, %eax	#, D.21843
	testb	%al, %al	# D.21843
	je	.L981	#,
	.loc 1 5689 0
	movq	-88(%rbp), %rax	# t, t.601
	movzbl	19(%rax), %edx	#, tmp363
	orl	$2, %edx	#, tmp364
	movb	%dl, 19(%rax)	# tmp364,
.L981:
.LBE68:
	.loc 1 5694 0
	movq	-56(%rbp), %rax	# x, tmp365
	movzbl	17(%rax), %eax	# *x_2, D.21843
	andl	$8, %eax	#, D.21843
	testb	%al, %al	# D.21843
	je	.L985	#,
	.loc 1 5695 0
	movq	-88(%rbp), %rax	# t, t.602
	movzbl	19(%rax), %edx	#, tmp368
	orl	$4, %edx	#, tmp369
	movb	%dl, 19(%rax)	# tmp369,
.L985:
	.loc 1 5698 0
	movq	-56(%rbp), %rax	# x, tmp370
	movzbl	52(%rax), %eax	# *x_2, D.21843
	andl	$32, %eax	#, D.21843
	testb	%al, %al	# D.21843
	je	.L986	#,
	.loc 1 5699 0
	movq	-88(%rbp), %rax	# t, t.603
	movzbl	63(%rax), %edx	#, tmp373
	orl	$2, %edx	#, tmp374
	movb	%dl, 63(%rax)	# tmp374,
.L986:
	.loc 1 5702 0
	movq	-56(%rbp), %rax	# x, tmp375
	movq	8(%rax), %rdx	# x_2->common.type, D.21844
	movq	-88(%rbp), %rax	# t, t.604
	cmpq	%rax, %rdx	# t.604, D.21844
	jne	.L987	#,
	.loc 1 5704 0
	movq	-88(%rbp), %rax	# t, t.605
	movq	96(%rax), %rax	# t.605_81->type.name, D.21844
	movq	32(%rax), %rax	# _82->identifier.id.str, D.21847
	.loc 1 5703 0
	movq	%rax, %rsi	# D.21847,
	movl	$.LC304, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.L987:
	.loc 1 5707 0
	movq	-56(%rbp), %rax	# x, tmp376
	movq	104(%rax), %rax	# x_2->decl.initial, D.21844
	testq	%rax, %rax	# D.21844
	je	.L988	#,
	.loc 1 5708 0
	jmp	.L989	#
.L991:
	.loc 1 5708 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp377
	movq	104(%rax), %rax	# x_2->decl.initial, D.21844
	movq	32(%rax), %rdx	# _101->exp.operands, D.21844
	movq	-56(%rbp), %rax	# x, tmp378
	movq	%rdx, 104(%rax)	# D.21844, x_2->decl.initial
.L989:
	movq	-56(%rbp), %rax	# x, tmp379
	movq	104(%rax), %rax	# x_2->decl.initial, D.21844
	movzbl	16(%rax), %eax	# _85->common.code, D.21843
	cmpb	$115, %al	#, D.21843
	je	.L990	#,
	.loc 1 5708 0 discriminator 3
	movq	-56(%rbp), %rax	# x, tmp380
	movq	104(%rax), %rax	# x_2->decl.initial, D.21844
	movzbl	16(%rax), %eax	# _87->common.code, D.21843
	cmpb	$114, %al	#, D.21843
	je	.L990	#,
	.loc 1 5708 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp381
	movq	104(%rax), %rax	# x_2->decl.initial, D.21844
	movzbl	16(%rax), %eax	# _89->common.code, D.21843
	cmpb	$116, %al	#, D.21843
	jne	.L988	#,
.L990:
	.loc 1 5708 0 discriminator 2
	movq	-56(%rbp), %rax	# x, tmp382
	movq	104(%rax), %rax	# x_2->decl.initial, D.21844
	movq	32(%rax), %rdx	# _91->exp.operands, D.21844
	movq	global_trees(%rip), %rax	# global_trees, D.21844
	cmpq	%rax, %rdx	# D.21844, D.21844
	je	.L988	#,
	.loc 1 5708 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp383
	movq	104(%rax), %rax	# x_2->decl.initial, D.21844
	movq	8(%rax), %rax	# _94->common.type, D.21844
	movzbl	61(%rax), %eax	# *_95, tmp386
	shrb	%al	# D.21848
	movl	%eax, %edx	# D.21848, D.21848
	movq	-56(%rbp), %rax	# x, tmp387
	movq	104(%rax), %rax	# x_2->decl.initial, D.21844
	movq	32(%rax), %rax	# _97->exp.operands, D.21844
	movq	8(%rax), %rax	# _98->common.type, D.21844
	movzbl	61(%rax), %eax	# *_99, tmp390
	shrb	%al	# D.21848
	cmpb	%al, %dl	# D.21848, D.21848
	je	.L991	#,
.L988:
	.loc 1 5709 0 is_stmt 1
	movq	-56(%rbp), %rax	# x, tmp391
	movq	104(%rax), %rax	# x_2->decl.initial, D.21844
	testq	%rax, %rax	# D.21844
	je	.L992	#,
	.loc 1 5711 0
	movq	-56(%rbp), %rax	# x, tmp392
	movq	104(%rax), %rax	# x_2->decl.initial, D.21844
	movzbl	16(%rax), %eax	# _104->common.code, D.21843
	cmpb	$25, %al	#, D.21843
	jne	.L993	#,
	.loc 1 5712 0
	movq	-56(%rbp), %rax	# x, tmp393
	movq	104(%rax), %rax	# x_2->decl.initial, D.21844
	movq	%rax, %rdi	# D.21844,
	call	constant_expression_warning	#
	jmp	.L992	#
.L993:
	.loc 1 5715 0
	movq	-56(%rbp), %rax	# x, tmp394
	movl	$.LC305, %esi	#,
	movq	%rax, %rdi	# tmp394,
	movl	$0, %eax	#,
	call	error_with_decl	#
	.loc 1 5717 0
	movq	-56(%rbp), %rax	# x, tmp395
	movq	$0, 104(%rax)	#, x_2->decl.initial
.L992:
	.loc 1 5722 0
	movq	-56(%rbp), %rax	# x, tmp396
	movq	104(%rax), %rax	# x_2->decl.initial, D.21844
	testq	%rax, %rax	# D.21844
	je	.L994	#,
	.loc 1 5723 0
	movq	-56(%rbp), %rax	# x, tmp397
	movq	8(%rax), %rax	# x_2->common.type, D.21844
	movzbl	16(%rax), %eax	# _108->common.code, D.21843
	cmpb	$6, %al	#, D.21843
	je	.L994	#,
	.loc 1 5724 0
	movq	-56(%rbp), %rax	# x, tmp398
	movq	8(%rax), %rax	# x_2->common.type, D.21844
	movzbl	16(%rax), %eax	# _110->common.code, D.21843
	cmpb	$11, %al	#, D.21843
	je	.L994	#,
	.loc 1 5725 0
	movq	-56(%rbp), %rax	# x, tmp399
	movq	8(%rax), %rax	# x_2->common.type, D.21844
	movzbl	16(%rax), %eax	# _112->common.code, D.21843
	cmpb	$10, %al	#, D.21843
	je	.L994	#,
	.loc 1 5727 0
	movq	-56(%rbp), %rax	# x, tmp400
	movl	$.LC306, %esi	#,
	movq	%rax, %rdi	# tmp400,
	movl	$0, %eax	#,
	call	error_with_decl	#
	.loc 1 5728 0
	movq	-56(%rbp), %rax	# x, tmp401
	movq	$0, 104(%rax)	#, x_2->decl.initial
.L994:
	.loc 1 5731 0
	movq	-56(%rbp), %rax	# x, tmp402
	movq	104(%rax), %rax	# x_2->decl.initial, D.21844
	testq	%rax, %rax	# D.21844
	je	.L995	#,
	.loc 1 5731 0 is_stmt 0 discriminator 1
	movl	pedantic(%rip), %eax	# pedantic, pedantic.606
	testl	%eax, %eax	# pedantic.606
	je	.L995	#,
	.loc 1 5732 0 is_stmt 1
	movq	-56(%rbp), %rax	# x, tmp403
	movq	8(%rax), %rax	# x_2->common.type, D.21844
	movq	128(%rax), %rdx	# _116->type.main_variant, D.21844
	movq	integer_types+40(%rip), %rax	# integer_types, D.21844
	cmpq	%rax, %rdx	# D.21844, D.21844
	je	.L995	#,
	.loc 1 5733 0
	movq	-56(%rbp), %rax	# x, tmp404
	movq	8(%rax), %rax	# x_2->common.type, D.21844
	movq	128(%rax), %rdx	# _119->type.main_variant, D.21844
	movq	integer_types+48(%rip), %rax	# integer_types, D.21844
	cmpq	%rax, %rdx	# D.21844, D.21844
	je	.L995	#,
	.loc 1 5734 0
	movq	-56(%rbp), %rax	# x, tmp405
	movq	8(%rax), %rax	# x_2->common.type, D.21844
	movq	128(%rax), %rdx	# _122->type.main_variant, D.21844
	movq	c_global_trees+152(%rip), %rax	# c_global_trees, D.21844
	cmpq	%rax, %rdx	# D.21844, D.21844
	je	.L995	#,
	.loc 1 5736 0
	movq	-56(%rbp), %rax	# x, tmp406
	movq	8(%rax), %rax	# x_2->common.type, D.21844
	movzbl	16(%rax), %eax	# _125->common.code, D.21843
	cmpb	$10, %al	#, D.21843
	jne	.L996	#,
	.loc 1 5737 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp407
	movq	8(%rax), %rax	# x_2->common.type, D.21844
	movzwl	60(%rax), %eax	# *_127, tmp410
	andw	$511, %ax	#, D.21849
	movl	%eax, %edx	# D.21849, D.21849
	.loc 1 5738 0 discriminator 1
	movq	integer_types+40(%rip), %rax	# integer_types, D.21844
	movzwl	60(%rax), %eax	# *_129, tmp413
	andw	$511, %ax	#, D.21849
	.loc 1 5736 0 discriminator 1
	cmpw	%ax, %dx	# D.21849, D.21849
	je	.L995	#,
.L996:
	.loc 1 5739 0
	movq	-56(%rbp), %rax	# x, tmp414
	movl	$.LC307, %esi	#,
	movq	%rax, %rdi	# tmp414,
	movl	$0, %eax	#,
	call	pedwarn_with_decl	#
.L995:
	.loc 1 5743 0
	movq	-56(%rbp), %rax	# x, tmp415
	movq	104(%rax), %rax	# x_2->decl.initial, D.21844
	testq	%rax, %rax	# D.21844
	je	.L997	#,
.LBB69:
	.loc 1 5746 0
	movq	-56(%rbp), %rax	# x, tmp416
	movq	8(%rax), %rax	# x_2->common.type, D.21844
	movq	128(%rax), %rdx	# _132->type.main_variant, D.21844
	movq	c_global_trees+152(%rip), %rax	# c_global_trees, D.21844
	.loc 1 5747 0
	cmpq	%rax, %rdx	# D.21844, D.21844
	je	.L998	#,
	.loc 1 5747 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp417
	movq	8(%rax), %rax	# x_2->common.type, D.21844
	movzwl	60(%rax), %eax	# *_135, tmp420
	andw	$511, %ax	#, D.21849
	movzwl	%ax, %eax	# D.21849, iftmp.607
	jmp	.L999	#
.L998:
	.loc 1 5747 0 discriminator 2
	movl	$8, %eax	#, iftmp.607
.L999:
	.loc 1 5745 0 is_stmt 1
	movl	%eax, -64(%rbp)	# iftmp.607, max_width
	.loc 1 5749 0
	movq	-56(%rbp), %rax	# x, tmp421
	movq	104(%rax), %rax	# x_2->decl.initial, D.21844
	movq	%rax, %rdi	# D.21844,
	call	tree_int_cst_sgn	#
	testl	%eax, %eax	# D.21845
	jns	.L1000	#,
	.loc 1 5750 0
	movq	-56(%rbp), %rax	# x, tmp422
	movl	$.LC308, %esi	#,
	movq	%rax, %rdi	# tmp422,
	movl	$0, %eax	#,
	call	error_with_decl	#
	jmp	.L1001	#
.L1000:
	.loc 1 5751 0
	movl	-64(%rbp), %eax	# max_width, tmp423
	movslq	%eax, %rdx	# tmp423, D.21850
	movq	-56(%rbp), %rax	# x, tmp424
	movq	104(%rax), %rax	# x_2->decl.initial, D.21844
	movq	%rdx, %rsi	# D.21850,
	movq	%rax, %rdi	# D.21844,
	call	compare_tree_int	#
	testl	%eax, %eax	# D.21845
	jle	.L1002	#,
	.loc 1 5752 0
	movq	-56(%rbp), %rax	# x, tmp425
	movl	$.LC309, %esi	#,
	movq	%rax, %rdi	# tmp425,
	movl	$0, %eax	#,
	call	pedwarn_with_decl	#
	jmp	.L1001	#
.L1002:
	.loc 1 5753 0
	movq	-56(%rbp), %rax	# x, tmp426
	movq	104(%rax), %rax	# x_2->decl.initial, D.21844
	movq	%rax, %rdi	# D.21844,
	call	integer_zerop	#
	testl	%eax, %eax	# D.21845
	je	.L1003	#,
	.loc 1 5753 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp427
	movq	72(%rax), %rax	# x_2->decl.name, D.21844
	testq	%rax, %rax	# D.21844
	je	.L1003	#,
	.loc 1 5754 0 is_stmt 1
	movq	-56(%rbp), %rax	# x, tmp428
	movl	$.LC310, %esi	#,
	movq	%rax, %rdi	# tmp428,
	movl	$0, %eax	#,
	call	error_with_decl	#
	jmp	.L1001	#
.L1003:
.LBB70:
	.loc 1 5759 0
	movq	-56(%rbp), %rax	# x, tmp429
	movq	104(%rax), %rax	# x_2->decl.initial, D.21844
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.21844,
	call	tree_low_cst	#
	.loc 1 5758 0
	movq	%rax, -8(%rbp)	# D.21851, width
	.loc 1 5761 0
	movq	-56(%rbp), %rax	# x, tmp430
	movq	8(%rax), %rax	# x_2->common.type, D.21844
	movzbl	16(%rax), %eax	# _151->common.code, D.21843
	cmpb	$10, %al	#, D.21843
	jne	.L1004	#,
	.loc 1 5763 0
	movq	-56(%rbp), %rax	# x, tmp431
	movq	8(%rax), %rax	# x_2->common.type, D.21844
	movzbl	17(%rax), %eax	# *_153, tmp434
	shrb	$5, %al	#, D.21846
	andl	$1, %eax	#, D.21846
	.loc 1 5762 0
	movzbl	%al, %edx	# D.21846, D.21845
	movq	-56(%rbp), %rax	# x, tmp435
	movq	8(%rax), %rax	# x_2->common.type, D.21844
	movq	104(%rax), %rax	# _156->type.minval, D.21844
	movl	%edx, %esi	# D.21845,
	movq	%rax, %rdi	# D.21844,
	call	min_precision	#
	movl	%eax, %eax	# D.21852, D.21850
	cmpq	-8(%rbp), %rax	# width, D.21850
	ja	.L1005	#,
	.loc 1 5766 0
	movq	-56(%rbp), %rax	# x, tmp436
	movq	8(%rax), %rax	# x_2->common.type, D.21844
	movzbl	17(%rax), %eax	# *_160, tmp439
	shrb	$5, %al	#, D.21846
	andl	$1, %eax	#, D.21846
	.loc 1 5765 0
	movzbl	%al, %edx	# D.21846, D.21845
	movq	-56(%rbp), %rax	# x, tmp440
	movq	8(%rax), %rax	# x_2->common.type, D.21844
	movq	112(%rax), %rax	# _163->type.maxval, D.21844
	movl	%edx, %esi	# D.21845,
	movq	%rax, %rdi	# D.21844,
	call	min_precision	#
	movl	%eax, %eax	# D.21852, D.21850
	.loc 1 5764 0
	cmpq	-8(%rbp), %rax	# width, D.21850
	jbe	.L1004	#,
.L1005:
	.loc 1 5767 0
	movq	-56(%rbp), %rax	# x, tmp441
	movl	$.LC311, %esi	#,
	movq	%rax, %rdi	# tmp441,
	movl	$0, %eax	#,
	call	warning_with_decl	#
.L1004:
	.loc 1 5770 0
	movq	-8(%rbp), %rax	# width, width.608
	movl	$3, %esi	#,
	movq	%rax, %rdi	# width.608,
	call	size_int_wide	#
	movq	-56(%rbp), %rdx	# x, tmp442
	movq	%rax, 40(%rdx)	# D.21844, x_2->decl.size
	.loc 1 5771 0
	movq	-56(%rbp), %rax	# x, tmp443
	movzbl	49(%rax), %edx	#, tmp446
	orl	$16, %edx	#, tmp447
	movb	%dl, 49(%rax)	# tmp447,
	.loc 1 5772 0
	movq	-56(%rbp), %rax	# x, tmp448
	movzbl	53(%rax), %edx	#, tmp451
	orl	$2, %edx	#, tmp452
	movb	%dl, 53(%rax)	# tmp452,
	.loc 1 5774 0
	cmpq	$0, -8(%rbp)	#, width
	jne	.L1001	#,
	.loc 1 5775 0
	movq	targetm+296(%rip), %rax	# targetm.ms_bitfield_layout_p, D.21853
	movq	-88(%rbp), %rdx	# t, t.609
	movq	%rdx, %rdi	# t.609,
	call	*%rax	# D.21853
	xorl	$1, %eax	#, D.21842
	testb	%al, %al	# D.21842
	je	.L1001	#,
	.loc 1 5779 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.611
	andl	$33554432, %eax	#, D.21845
	testl	%eax, %eax	# D.21845
	je	.L1006	#,
	.loc 1 5779 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.610
	jmp	.L1007	#
.L1006:
	.loc 1 5779 0 discriminator 2
	movl	$32, %eax	#, iftmp.610
.L1007:
	.loc 1 5779 0 discriminator 3
	movq	-56(%rbp), %rdx	# x, tmp453
	movl	56(%rdx), %edx	# *x_2, tmp456
	andl	$16777215, %edx	#, D.21854
	cmpl	%edx, %eax	# D.21845, iftmp.610
	cmovl	%edx, %eax	# iftmp.610,, D.21845, D.21845
	andl	$16777215, %eax	#, D.21854
	movl	%eax, %edx	# D.21854, D.21854
	movq	-56(%rbp), %rax	# x, tmp457
	movl	%edx, %ecx	# D.21854, tmp459
	andl	$16777215, %ecx	#, tmp459
	movl	56(%rax), %edx	#, tmp460
	andl	$-16777216, %edx	#, tmp461
	orl	%ecx, %edx	# tmp459, tmp462
	movl	%edx, 56(%rax)	# tmp462,
	.loc 1 5784 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# x, tmp463
	movq	8(%rax), %rax	# x_2->common.type, D.21844
	movl	64(%rax), %edx	# _182->type.align, D.21852
	movq	-56(%rbp), %rax	# x, tmp464
	movl	56(%rax), %eax	# *x_2, tmp467
	andl	$16777215, %eax	#, D.21854
	cmpl	%eax, %edx	# D.21852, D.21852
	cmovae	%edx, %eax	# D.21852,, D.21852
	andl	$16777215, %eax	#, D.21854
	movl	%eax, %edx	# D.21854, D.21854
	movq	-56(%rbp), %rax	# x, tmp468
	movl	%edx, %ecx	# D.21854, tmp470
	andl	$16777215, %ecx	#, tmp470
	movl	56(%rax), %edx	#, tmp471
	andl	$-16777216, %edx	#, tmp472
	orl	%ecx, %edx	# tmp470, tmp473
	movl	%edx, 56(%rax)	# tmp473,
	.loc 1 5786 0 discriminator 3
	movq	-56(%rbp), %rax	# x, tmp474
	movzbl	52(%rax), %eax	# *x_2, tmp477
	shrb	$3, %al	#, D.21846
	andl	$1, %eax	#, D.21846
	movl	%eax, %edx	# D.21846, D.21843
	movq	-56(%rbp), %rax	# x, tmp478
	movq	8(%rax), %rax	# x_2->common.type, D.21844
	movzbl	63(%rax), %eax	# *_190, tmp481
	shrb	$7, %al	#, D.21846
	orl	%edx, %eax	# D.21843, D.21843
	andl	$1, %eax	#, D.21846
	movl	%eax, %edx	# D.21846, D.21846
	movq	-56(%rbp), %rax	# x, tmp482
	andl	$1, %edx	#, tmp484
	leal	0(,%rdx,8), %ecx	#, tmp485
	movzbl	52(%rax), %edx	#, tmp486
	andl	$-9, %edx	#, tmp487
	orl	%ecx, %edx	# tmp485, tmp488
	movb	%dl, 52(%rax)	# tmp488,
.LBE70:
.LBE69:
	jmp	.L1008	#
.L1001:
	jmp	.L1008	#
.L997:
	.loc 1 5793 0
	movq	-56(%rbp), %rax	# x, tmp489
	movq	8(%rax), %rdx	# x_2->common.type, D.21844
	movq	global_trees(%rip), %rax	# global_trees, D.21844
	cmpq	%rax, %rdx	# D.21844, D.21844
	je	.L1008	#,
.LBB71:
	.loc 1 5795 0
	movq	-56(%rbp), %rax	# x, tmp490
	movzbl	49(%rax), %eax	# *x_2, D.21843
	andl	$4, %eax	#, D.21843
	.loc 1 5796 0
	testb	%al, %al	# D.21843
	jne	.L1009	#,
	.loc 1 5796 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp491
	movq	8(%rax), %rax	# x_2->common.type, D.21844
	movl	64(%rax), %eax	# _199->type.align, iftmp.612
	jmp	.L1010	#
.L1009:
	.loc 1 5796 0 discriminator 2
	movl	$8, %eax	#, iftmp.612
.L1010:
	.loc 1 5795 0 is_stmt 1
	movl	%eax, -60(%rbp)	# iftmp.612, min_align
	.loc 1 5800 0
	movq	-56(%rbp), %rax	# x, tmp492
	movl	56(%rax), %eax	# *x_2, tmp495
	andl	$16777215, %eax	#, D.21854
	movl	%eax, %edx	# D.21854, D.21852
	movl	-60(%rbp), %eax	# min_align, tmp496
	cmpl	%eax, %edx	# tmp496, D.21852
	cmovae	%edx, %eax	# D.21852,, D.21852
	andl	$16777215, %eax	#, D.21854
	movl	%eax, %edx	# D.21854, D.21854
	movq	-56(%rbp), %rax	# x, tmp497
	movl	%edx, %ecx	# D.21854, tmp499
	andl	$16777215, %ecx	#, tmp499
	movl	56(%rax), %edx	#, tmp500
	andl	$-16777216, %edx	#, tmp501
	orl	%ecx, %edx	# tmp499, tmp502
	movl	%edx, 56(%rax)	# tmp502,
	.loc 1 5801 0
	movq	-56(%rbp), %rax	# x, tmp503
	movzbl	49(%rax), %eax	# *x_2, D.21843
	andl	$4, %eax	#, D.21843
	testb	%al, %al	# D.21843
	jne	.L1008	#,
	.loc 1 5802 0
	movq	-56(%rbp), %rax	# x, tmp504
	movzbl	52(%rax), %eax	# *x_2, tmp507
	shrb	$3, %al	#, D.21846
	andl	$1, %eax	#, D.21846
	movl	%eax, %edx	# D.21846, D.21843
	movq	-56(%rbp), %rax	# x, tmp508
	movq	8(%rax), %rax	# x_2->common.type, D.21844
	movzbl	63(%rax), %eax	# *_211, tmp511
	shrb	$7, %al	#, D.21846
	orl	%edx, %eax	# D.21843, D.21843
	andl	$1, %eax	#, D.21846
	movl	%eax, %edx	# D.21846, D.21846
	movq	-56(%rbp), %rax	# x, tmp512
	andl	$1, %edx	#, tmp514
	leal	0(,%rdx,8), %ecx	#, tmp515
	movzbl	52(%rax), %edx	#, tmp516
	andl	$-9, %edx	#, tmp517
	orl	%ecx, %edx	# tmp515, tmp518
	movb	%dl, 52(%rax)	# tmp518,
.L1008:
.LBE71:
	.loc 1 5805 0
	movq	-56(%rbp), %rax	# x, tmp519
	movq	$0, 104(%rax)	#, x_2->decl.initial
	.loc 1 5808 0
	movq	-56(%rbp), %rax	# x, tmp520
	movq	8(%rax), %rax	# x_2->common.type, D.21844
	movzbl	16(%rax), %eax	# _216->common.code, D.21843
	cmpb	$18, %al	#, D.21843
	jne	.L1011	#,
	.loc 1 5809 0
	movq	-56(%rbp), %rax	# x, tmp521
	movq	8(%rax), %rax	# x_2->common.type, D.21844
	movq	32(%rax), %rax	# _218->type.size, D.21844
	testq	%rax, %rax	# D.21844
	jne	.L1011	#,
	.loc 1 5810 0
	movq	-56(%rbp), %rax	# x, tmp522
	movq	8(%rax), %rax	# x_2->common.type, D.21844
	movq	24(%rax), %rax	# _220->type.values, D.21844
	testq	%rax, %rax	# D.21844
	je	.L1011	#,
	.loc 1 5811 0
	movq	-56(%rbp), %rax	# x, tmp523
	movq	8(%rax), %rax	# x_2->common.type, D.21844
	movq	24(%rax), %rax	# _222->type.values, D.21844
	movq	112(%rax), %rax	# _223->type.maxval, D.21844
	testq	%rax, %rax	# D.21844
	jne	.L1011	#,
	.loc 1 5813 0
	movq	-88(%rbp), %rax	# t, t.613
	movzbl	16(%rax), %eax	# t.613_225->common.code, D.21843
	cmpb	$21, %al	#, D.21843
	jne	.L1012	#,
	.loc 1 5814 0
	movq	-56(%rbp), %rax	# x, tmp524
	movl	$.LC312, %esi	#,
	movq	%rax, %rdi	# tmp524,
	movl	$0, %eax	#,
	call	error_with_decl	#
	jmp	.L1011	#
.L1012:
	.loc 1 5815 0
	movq	-56(%rbp), %rax	# x, tmp525
	movq	(%rax), %rax	# x_2->common.chain, D.21844
	testq	%rax, %rax	# D.21844
	je	.L1013	#,
	.loc 1 5816 0
	movq	-56(%rbp), %rax	# x, tmp526
	movl	$.LC313, %esi	#,
	movq	%rax, %rdi	# tmp526,
	movl	$0, %eax	#,
	call	error_with_decl	#
	jmp	.L1011	#
.L1013:
	.loc 1 5817 0
	cmpl	$0, -72(%rbp)	#, saw_named_field
	jne	.L1011	#,
	.loc 1 5818 0
	movq	-56(%rbp), %rax	# x, tmp527
	movl	$.LC314, %esi	#,
	movq	%rax, %rdi	# tmp527,
	movl	$0, %eax	#,
	call	error_with_decl	#
.L1011:
	.loc 1 5820 0
	movq	-56(%rbp), %rax	# x, tmp528
	movq	72(%rax), %rax	# x_2->decl.name, D.21844
	testq	%rax, %rax	# D.21844
	je	.L1014	#,
	.loc 1 5821 0
	movl	$1, -72(%rbp)	#, saw_named_field
.L1014:
	.loc 1 5673 0
	movq	-56(%rbp), %rax	# x, tmp529
	movq	(%rax), %rax	# x_2->common.chain, tmp530
	movq	%rax, -56(%rbp)	# tmp530, x
.L979:
	.loc 1 5673 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, x
	jne	.L1015	#,
	.loc 1 5825 0 is_stmt 1
	movq	-96(%rbp), %rax	# fieldlist, tmp531
	movq	%rax, -56(%rbp)	# tmp531, x
	jmp	.L1016	#
.L1024:
	.loc 1 5827 0
	movq	-56(%rbp), %rax	# x, tmp532
	movq	(%rax), %rax	# x_3->common.chain, D.21844
	movq	72(%rax), %rax	# _233->decl.name, D.21844
	testq	%rax, %rax	# D.21844
	jne	.L1017	#,
	.loc 1 5828 0
	movq	-56(%rbp), %rax	# x, tmp533
	movq	(%rax), %rax	# x_3->common.chain, tmp534
	movq	%rax, -56(%rbp)	# tmp534, x
	jmp	.L1016	#
.L1017:
.LBB72:
	.loc 1 5831 0
	movq	-96(%rbp), %rax	# fieldlist, tmp535
	movq	%rax, -40(%rbp)	# tmp535, y
.L1021:
	.loc 1 5835 0
	movq	-40(%rbp), %rax	# y, tmp536
	movq	72(%rax), %rdx	# y_8->decl.name, D.21844
	movq	-56(%rbp), %rax	# x, tmp537
	movq	(%rax), %rax	# x_3->common.chain, D.21844
	movq	72(%rax), %rax	# _238->decl.name, D.21844
	cmpq	%rax, %rdx	# D.21844, D.21844
	jne	.L1018	#,
	.loc 1 5836 0
	jmp	.L1019	#
.L1018:
	.loc 1 5837 0
	movq	-40(%rbp), %rax	# y, tmp538
	cmpq	-56(%rbp), %rax	# x, tmp538
	jne	.L1020	#,
	.loc 1 5838 0
	jmp	.L1019	#
.L1020:
	.loc 1 5839 0
	movq	-40(%rbp), %rax	# y, tmp539
	movq	(%rax), %rax	# y_8->common.chain, tmp540
	movq	%rax, -40(%rbp)	# tmp540, y
	.loc 1 5840 0
	jmp	.L1021	#
.L1019:
	.loc 1 5841 0
	movq	-40(%rbp), %rax	# y, tmp541
	movq	72(%rax), %rdx	# y_8->decl.name, D.21844
	movq	-56(%rbp), %rax	# x, tmp542
	movq	(%rax), %rax	# x_3->common.chain, D.21844
	movq	72(%rax), %rax	# _242->decl.name, D.21844
	cmpq	%rax, %rdx	# D.21844, D.21844
	jne	.L1022	#,
	.loc 1 5843 0
	movq	-56(%rbp), %rax	# x, tmp543
	movq	(%rax), %rax	# x_3->common.chain, D.21844
	movl	$.LC315, %esi	#,
	movq	%rax, %rdi	# D.21844,
	movl	$0, %eax	#,
	call	error_with_decl	#
	.loc 1 5844 0
	movq	-56(%rbp), %rax	# x, tmp544
	movq	(%rax), %rax	# x_3->common.chain, D.21844
	movq	(%rax), %rdx	# _245->common.chain, D.21844
	movq	-56(%rbp), %rax	# x, tmp545
	movq	%rdx, (%rax)	# D.21844, x_3->common.chain
	jmp	.L1016	#
.L1022:
	.loc 1 5847 0
	movq	-56(%rbp), %rax	# x, tmp546
	movq	(%rax), %rax	# x_3->common.chain, tmp547
	movq	%rax, -56(%rbp)	# tmp547, x
.L1016:
.LBE72:
	.loc 1 5825 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, x
	je	.L1023	#,
	.loc 1 5825 0 is_stmt 0 discriminator 2
	movq	-56(%rbp), %rax	# x, tmp548
	movq	(%rax), %rax	# x_3->common.chain, D.21844
	testq	%rax, %rax	# D.21844
	jne	.L1024	#,
.L1023:
	.loc 1 5853 0 is_stmt 1
	movq	-88(%rbp), %rax	# t, t.614
	movq	-96(%rbp), %rdx	# fieldlist, fieldlist.615
	movq	%rdx, 24(%rax)	# fieldlist.615, t.614_248->type.values
	.loc 1 5855 0
	movq	-88(%rbp), %rax	# t, t.616
	movq	%rax, %rdi	# t.616,
	call	layout_type	#
.LBB73:
	.loc 1 5859 0
	leaq	-96(%rbp), %rax	#, tmp549
	movq	%rax, -32(%rbp)	# tmp549, fieldlistp
	.loc 1 5860 0
	jmp	.L1025	#
.L1027:
	.loc 1 5861 0
	movq	-32(%rbp), %rax	# fieldlistp, tmp550
	movq	(%rax), %rax	# *fieldlistp_9, D.21844
	movzbl	16(%rax), %eax	# _253->common.code, D.21843
	cmpb	$37, %al	#, D.21843
	jne	.L1026	#,
	.loc 1 5861 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# fieldlistp, tmp551
	movq	(%rax), %rax	# *fieldlistp_9, D.21844
	movq	104(%rax), %rax	# _255->decl.initial, D.21844
	testq	%rax, %rax	# D.21844
	je	.L1026	#,
	.loc 1 5862 0 is_stmt 1
	movq	-32(%rbp), %rax	# fieldlistp, tmp552
	movq	(%rax), %rax	# *fieldlistp_9, D.21844
	movq	(%rax), %rdx	# _257->common.chain, D.21844
	movq	-32(%rbp), %rax	# fieldlistp, tmp553
	movq	%rdx, (%rax)	# D.21844, *fieldlistp_9
	jmp	.L1025	#
.L1026:
	.loc 1 5864 0
	movq	-32(%rbp), %rax	# fieldlistp, tmp554
	movq	(%rax), %rax	# *fieldlistp_9, D.21844
	movq	%rax, -32(%rbp)	# D.21844, fieldlistp
.L1025:
	.loc 1 5860 0 discriminator 1
	movq	-32(%rbp), %rax	# fieldlistp, tmp555
	movq	(%rax), %rax	# *fieldlistp_9, D.21844
	testq	%rax, %rax	# D.21844
	jne	.L1027	#,
.LBE73:
	.loc 1 5870 0
	movq	-88(%rbp), %rax	# t, t.617
	movq	-96(%rbp), %rdx	# fieldlist, fieldlist.618
	movq	%rdx, 24(%rax)	# fieldlist.618, t.617_261->type.values
	.loc 1 5872 0
	movq	-88(%rbp), %rax	# t, t.619
	movq	128(%rax), %rax	# t.619_263->type.main_variant, tmp556
	movq	%rax, -56(%rbp)	# tmp556, x
	jmp	.L1028	#
.L1029:
	.loc 1 5874 0 discriminator 2
	movq	-88(%rbp), %rax	# t, t.620
	movq	24(%rax), %rdx	# t.620_265->type.values, D.21844
	movq	-56(%rbp), %rax	# x, tmp557
	movq	%rdx, 24(%rax)	# D.21844, x_4->type.values
	.loc 1 5875 0 discriminator 2
	movq	-88(%rbp), %rax	# t, t.621
	movq	160(%rax), %rdx	# t.621_267->type.lang_specific, D.21855
	movq	-56(%rbp), %rax	# x, tmp558
	movq	%rdx, 160(%rax)	# D.21855, x_4->type.lang_specific
	.loc 1 5876 0 discriminator 2
	movq	-88(%rbp), %rax	# t, t.622
	movl	64(%rax), %edx	# t.622_269->type.align, D.21852
	movq	-56(%rbp), %rax	# x, tmp559
	movl	%edx, 64(%rax)	# D.21852, x_4->type.align
	.loc 1 5877 0 discriminator 2
	movq	-88(%rbp), %rax	# t, t.623
	movzbl	63(%rax), %eax	# *t.623_271, tmp562
	shrb	$7, %al	#, D.21846
	movl	%eax, %edx	# D.21846, D.21846
	movq	-56(%rbp), %rax	# x, tmp563
	movl	%edx, %ecx	# D.21846, tmp565
	sall	$7, %ecx	#, tmp565
	movzbl	63(%rax), %edx	#, tmp566
	andl	$127, %edx	#, tmp567
	orl	%ecx, %edx	# tmp565, tmp568
	movb	%dl, 63(%rax)	# tmp568,
	.loc 1 5872 0 discriminator 2
	movq	-56(%rbp), %rax	# x, tmp569
	movq	120(%rax), %rax	# x_4->type.next_variant, tmp570
	movq	%rax, -56(%rbp)	# tmp570, x
.L1028:
	.loc 1 5872 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, x
	jne	.L1029	#,
	.loc 1 5882 0 is_stmt 1
	movq	-88(%rbp), %rax	# t, t.624
	movzbl	16(%rax), %eax	# t.624_274->common.code, D.21843
	cmpb	$21, %al	#, D.21843
	jne	.L1030	#,
	.loc 1 5883 0
	movq	-88(%rbp), %rax	# t, t.625
	movzbl	62(%rax), %eax	# *t.625_276, D.21843
	andl	$8, %eax	#, D.21843
	testb	%al, %al	# D.21843
	je	.L1030	#,
	.loc 1 5884 0
	movq	-88(%rbp), %rax	# t, t.626
	movzbl	61(%rax), %eax	# *t.626_279, tmp573
	shrb	%al	# D.21848
	movzbl	%al, %edx	# D.21848, D.21845
	movq	-88(%rbp), %rax	# t, t.627
	movq	24(%rax), %rax	# t.627_282->type.values, D.21844
	movzbl	48(%rax), %eax	# _283->decl.mode, D.21843
	movzbl	%al, %eax	# D.21843, D.21845
	cmpl	%eax, %edx	# D.21845, D.21845
	je	.L1030	#,
	.loc 1 5886 0
	movq	-88(%rbp), %rax	# t, t.628
	movzbl	62(%rax), %edx	#, tmp576
	andl	$-9, %edx	#, tmp577
	movb	%dl, 62(%rax)	# tmp577,
	.loc 1 5887 0
	movl	$.LC316, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L1030:
	.loc 1 5893 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.629
	movl	56(%rax), %eax	# current_binding_level.629_287->n_incomplete, D.21845
	testl	%eax, %eax	# D.21845
	je	.L1031	#,
.LBB74:
	.loc 1 5896 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.630
	movq	(%rax), %rax	# current_binding_level.630_289->names, tmp578
	movq	%rax, -24(%rbp)	# tmp578, decl
	jmp	.L1032	#
.L1040:
	.loc 1 5898 0
	movq	-24(%rbp), %rax	# decl, tmp579
	movq	8(%rax), %rax	# decl_10->common.type, D.21844
	movq	128(%rax), %rdx	# _291->type.main_variant, D.21844
	movq	-88(%rbp), %rax	# t, t.631
	movq	128(%rax), %rax	# t.631_293->type.main_variant, D.21844
	cmpq	%rax, %rdx	# D.21844, D.21844
	jne	.L1033	#,
	.loc 1 5899 0
	movq	-24(%rbp), %rax	# decl, tmp580
	movzbl	16(%rax), %eax	# decl_10->common.code, D.21843
	cmpb	$33, %al	#, D.21843
	je	.L1033	#,
	.loc 1 5901 0
	movq	-24(%rbp), %rax	# decl, tmp581
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp581,
	call	layout_decl	#
	.loc 1 5903 0
	movq	-24(%rbp), %rax	# decl, tmp582
	movq	%rax, %rdi	# tmp582,
	call	maybe_objc_check_decl	#
	.loc 1 5904 0
	movl	-68(%rbp), %edx	# toplevel, tmp583
	movq	-24(%rbp), %rax	# decl, tmp584
	movl	$0, %ecx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp584,
	call	rest_of_decl_compilation	#
	.loc 1 5905 0
	cmpl	$0, -68(%rbp)	#, toplevel
	jne	.L1034	#,
	.loc 1 5906 0
	movq	-24(%rbp), %rax	# decl, tmp585
	movq	%rax, %rdi	# tmp585,
	call	expand_decl	#
.L1034:
	.loc 1 5907 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.632
	movl	56(%rax), %edx	# current_binding_level.632_296->n_incomplete, D.21845
	subl	$1, %edx	#, D.21845
	movl	%edx, 56(%rax)	# D.21845, current_binding_level.632_296->n_incomplete
	movl	56(%rax), %eax	# current_binding_level.632_296->n_incomplete, D.21845
	testl	%eax, %eax	# D.21845
	jne	.L1035	#,
	.loc 1 5908 0
	jmp	.L1031	#
.L1035:
	.loc 1 5907 0 discriminator 1
	jmp	.L1036	#
.L1033:
	.loc 1 5910 0
	movq	-24(%rbp), %rax	# decl, tmp586
	movq	8(%rax), %rax	# decl_10->common.type, D.21844
	movq	32(%rax), %rax	# _300->type.size, D.21844
	testq	%rax, %rax	# D.21844
	jne	.L1036	#,
	.loc 1 5911 0
	movq	-24(%rbp), %rax	# decl, tmp587
	movq	8(%rax), %rax	# decl_10->common.type, D.21844
	movzbl	16(%rax), %eax	# _302->common.code, D.21843
	cmpb	$18, %al	#, D.21843
	jne	.L1036	#,
.LBB75:
	.loc 1 5913 0
	movq	-24(%rbp), %rax	# decl, tmp588
	movq	8(%rax), %rax	# decl_10->common.type, tmp589
	movq	%rax, -16(%rbp)	# tmp589, element
	.loc 1 5914 0
	jmp	.L1037	#
.L1038:
	.loc 1 5915 0
	movq	-16(%rbp), %rax	# element, tmp590
	movq	8(%rax), %rax	# element_11->common.type, tmp591
	movq	%rax, -16(%rbp)	# tmp591, element
.L1037:
	.loc 1 5914 0 discriminator 1
	movq	-16(%rbp), %rax	# element, tmp592
	movzbl	16(%rax), %eax	# element_11->common.code, D.21843
	cmpb	$18, %al	#, D.21843
	je	.L1038	#,
	.loc 1 5916 0
	movq	-88(%rbp), %rax	# t, t.633
	cmpq	%rax, -16(%rbp)	# t.633, element
	jne	.L1036	#,
	.loc 1 5918 0
	movq	-24(%rbp), %rax	# decl, tmp593
	movq	8(%rax), %rax	# decl_10->common.type, D.21844
	movq	%rax, %rdi	# D.21844,
	call	layout_array_type	#
	.loc 1 5919 0
	movq	-24(%rbp), %rax	# decl, tmp594
	movzbl	16(%rax), %eax	# decl_10->common.code, D.21843
	cmpb	$33, %al	#, D.21843
	je	.L1039	#,
	.loc 1 5921 0
	movq	-24(%rbp), %rax	# decl, tmp595
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp595,
	call	layout_decl	#
	.loc 1 5922 0
	movq	-24(%rbp), %rax	# decl, tmp596
	movq	%rax, %rdi	# tmp596,
	call	maybe_objc_check_decl	#
	.loc 1 5923 0
	movl	-68(%rbp), %edx	# toplevel, tmp597
	movq	-24(%rbp), %rax	# decl, tmp598
	movl	$0, %ecx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp598,
	call	rest_of_decl_compilation	#
	.loc 1 5924 0
	cmpl	$0, -68(%rbp)	#, toplevel
	jne	.L1039	#,
	.loc 1 5925 0
	movq	-24(%rbp), %rax	# decl, tmp599
	movq	%rax, %rdi	# tmp599,
	call	expand_decl	#
.L1039:
	.loc 1 5927 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.634
	movl	56(%rax), %edx	# current_binding_level.634_310->n_incomplete, D.21845
	subl	$1, %edx	#, D.21845
	movl	%edx, 56(%rax)	# D.21845, current_binding_level.634_310->n_incomplete
	movl	56(%rax), %eax	# current_binding_level.634_310->n_incomplete, D.21845
	testl	%eax, %eax	# D.21845
	jne	.L1036	#,
	.loc 1 5928 0
	jmp	.L1031	#
.L1036:
.LBE75:
	.loc 1 5896 0
	movq	-24(%rbp), %rax	# decl, tmp600
	movq	(%rax), %rax	# decl_10->common.chain, tmp601
	movq	%rax, -24(%rbp)	# tmp601, decl
.L1032:
	.loc 1 5896 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, decl
	jne	.L1040	#,
.L1031:
.LBE74:
	.loc 1 5935 0 is_stmt 1
	movq	-88(%rbp), %rax	# t, t.635
	movl	-68(%rbp), %edx	# toplevel, tmp602
	movl	%edx, %esi	# tmp602,
	movq	%rax, %rdi	# t.635,
	call	rest_of_type_compilation	#
	.loc 1 5937 0
	movq	-88(%rbp), %rax	# t, D.21856
	.loc 1 5938 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	finish_struct, .-finish_struct
	.type	layout_array_type, @function
layout_array_type:
.LFB64:
	.loc 1 5945 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# t, t
	.loc 1 5946 0
	movq	-8(%rbp), %rax	# t, tmp62
	movq	8(%rax), %rax	# t_1(D)->common.type, D.21877
	movzbl	16(%rax), %eax	# _2->common.code, D.21878
	cmpb	$18, %al	#, D.21878
	jne	.L1043	#,
	.loc 1 5947 0
	movq	-8(%rbp), %rax	# t, tmp63
	movq	8(%rax), %rax	# t_1(D)->common.type, D.21877
	movq	%rax, %rdi	# D.21877,
	call	layout_array_type	#
.L1043:
	.loc 1 5948 0
	movq	-8(%rbp), %rax	# t, tmp64
	movq	%rax, %rdi	# tmp64,
	call	layout_type	#
	.loc 1 5949 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	layout_array_type, .-layout_array_type
	.section	.rodata
.LC317:
	.string	"redeclaration of `enum %s'"
	.text
	.globl	start_enum
	.type	start_enum, @function
start_enum:
.LFB65:
	.loc 1 5960 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# name, name
	.loc 1 5961 0
	movq	$0, -8(%rbp)	#, enumtype
	.loc 1 5967 0
	cmpq	$0, -24(%rbp)	#, name
	je	.L1045	#,
	.loc 1 5968 0
	movq	current_binding_level(%rip), %rdx	# current_binding_level, current_binding_level.636
	movq	-24(%rbp), %rax	# name, tmp67
	movl	$1, %ecx	#,
	movq	%rax, %rsi	# tmp67,
	movl	$10, %edi	#,
	call	lookup_tag	#
	movq	%rax, -8(%rbp)	# tmp68, enumtype
.L1045:
	.loc 1 5970 0
	cmpq	$0, -8(%rbp)	#, enumtype
	je	.L1046	#,
	.loc 1 5970 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# enumtype, tmp69
	movzbl	16(%rax), %eax	# enumtype_1->common.code, D.21879
	cmpb	$10, %al	#, D.21879
	je	.L1047	#,
.L1046:
	.loc 1 5972 0 is_stmt 1
	movl	$10, %edi	#,
	call	make_node	#
	movq	%rax, -8(%rbp)	# tmp70, enumtype
	.loc 1 5973 0
	movq	-8(%rbp), %rdx	# enumtype, tmp71
	movq	-24(%rbp), %rax	# name, tmp72
	movq	%rdx, %rsi	# tmp71,
	movq	%rax, %rdi	# tmp72,
	call	pushtag	#
.L1047:
	.loc 1 5976 0
	movq	-8(%rbp), %rax	# enumtype, tmp73
	movzbl	63(%rax), %edx	#, tmp76
	orl	$1, %edx	#, tmp77
	movb	%dl, 63(%rax)	# tmp77,
	.loc 1 5978 0
	movq	-8(%rbp), %rax	# enumtype, tmp78
	movq	24(%rax), %rax	# enumtype_2->type.values, D.21880
	testq	%rax, %rax	# D.21880
	je	.L1048	#,
	.loc 1 5981 0
	movq	-24(%rbp), %rax	# name, tmp79
	movq	32(%rax), %rax	# name_4(D)->identifier.id.str, D.21881
	movq	%rax, %rsi	# D.21881,
	movl	$.LC317, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 5985 0
	movq	-8(%rbp), %rax	# enumtype, tmp80
	movq	$0, 24(%rax)	#, enumtype_2->type.values
.L1048:
	.loc 1 5988 0
	movq	global_trees+88(%rip), %rax	# global_trees, enum_next_value.637
	movq	%rax, enum_next_value(%rip)	# enum_next_value.637, enum_next_value
	.loc 1 5989 0
	movl	$0, enum_overflow(%rip)	#, enum_overflow
	.loc 1 5991 0
	movl	flag_short_enums(%rip), %eax	# flag_short_enums, flag_short_enums.638
	testl	%eax, %eax	# flag_short_enums.638
	je	.L1049	#,
	.loc 1 5992 0
	movq	-8(%rbp), %rax	# enumtype, tmp81
	movzbl	62(%rax), %edx	#, tmp84
	orl	$16, %edx	#, tmp85
	movb	%dl, 62(%rax)	# tmp85,
.L1049:
	.loc 1 5994 0
	movq	-8(%rbp), %rax	# enumtype, D.21882
	.loc 1 5995 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	start_enum, .-start_enum
	.section	.rodata
.LC318:
	.string	"enum defined inside parms"
	.align 8
.LC319:
	.string	"enumeration values exceed range of largest integer"
	.text
	.globl	finish_enum
	.type	finish_enum, @function
finish_enum:
.LFB66:
	.loc 1 6008 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$120, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)	# enumtype, enumtype
	movq	%rsi, -112(%rbp)	# values, values
	movq	%rdx, -120(%rbp)	# attributes, attributes
	.loc 1 6010 0
	movq	$0, -64(%rbp)	#, minnode
	movq	$0, -56(%rbp)	#, maxnode
	.loc 1 6012 0
	movq	global_binding_level(%rip), %rdx	# global_binding_level, global_binding_level.639
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.640
	cmpq	%rax, %rdx	# current_binding_level.640, global_binding_level.639
	sete	%al	#, D.21884
	movzbl	%al, %eax	# D.21884, tmp146
	movl	%eax, -88(%rbp)	# tmp146, toplevel
	.loc 1 6014 0
	call	in_parm_level_p	#
	testl	%eax, %eax	# D.21885
	je	.L1052	#,
	.loc 1 6015 0
	movl	$.LC318, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L1052:
	.loc 1 6017 0
	movq	-120(%rbp), %rcx	# attributes, tmp147
	leaq	-104(%rbp), %rax	#, tmp148
	movl	$8, %edx	#,
	movq	%rcx, %rsi	# tmp147,
	movq	%rax, %rdi	# tmp148,
	call	decl_attributes	#
	.loc 1 6021 0
	movq	global_trees(%rip), %rax	# global_trees, D.21886
	cmpq	-112(%rbp), %rax	# values, D.21886
	jne	.L1053	#,
	.loc 1 6022 0
	movq	global_trees+88(%rip), %rax	# global_trees, tmp149
	movq	%rax, -56(%rbp)	# tmp149, maxnode
	movq	-56(%rbp), %rax	# maxnode, tmp150
	movq	%rax, -64(%rbp)	# tmp150, minnode
	jmp	.L1054	#
.L1053:
	.loc 1 6025 0
	movq	-112(%rbp), %rax	# values, tmp151
	movq	32(%rax), %rax	# values_23(D)->list.value, tmp152
	movq	%rax, -56(%rbp)	# tmp152, maxnode
	movq	-56(%rbp), %rax	# maxnode, tmp153
	movq	%rax, -64(%rbp)	# tmp153, minnode
	.loc 1 6026 0
	movq	-112(%rbp), %rax	# values, tmp154
	movq	(%rax), %rax	# values_23(D)->common.chain, tmp155
	movq	%rax, -80(%rbp)	# tmp155, pair
	jmp	.L1055	#
.L1058:
.LBB76:
	.loc 1 6028 0
	movq	-80(%rbp), %rax	# pair, tmp156
	movq	32(%rax), %rax	# pair_1->list.value, tmp157
	movq	%rax, -32(%rbp)	# tmp157, value
	.loc 1 6029 0
	movq	-32(%rbp), %rdx	# value, tmp158
	movq	-56(%rbp), %rax	# maxnode, tmp159
	movq	%rdx, %rsi	# tmp158,
	movq	%rax, %rdi	# tmp159,
	call	tree_int_cst_lt	#
	testl	%eax, %eax	# D.21885
	je	.L1056	#,
	.loc 1 6030 0
	movq	-32(%rbp), %rax	# value, tmp160
	movq	%rax, -56(%rbp)	# tmp160, maxnode
.L1056:
	.loc 1 6031 0
	movq	-64(%rbp), %rdx	# minnode, tmp161
	movq	-32(%rbp), %rax	# value, tmp162
	movq	%rdx, %rsi	# tmp161,
	movq	%rax, %rdi	# tmp162,
	call	tree_int_cst_lt	#
	testl	%eax, %eax	# D.21885
	je	.L1057	#,
	.loc 1 6032 0
	movq	-32(%rbp), %rax	# value, tmp163
	movq	%rax, -64(%rbp)	# tmp163, minnode
.L1057:
.LBE76:
	.loc 1 6026 0
	movq	-80(%rbp), %rax	# pair, tmp164
	movq	(%rax), %rax	# pair_1->common.chain, tmp165
	movq	%rax, -80(%rbp)	# tmp165, pair
.L1055:
	.loc 1 6026 0 is_stmt 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, pair
	jne	.L1058	#,
.L1054:
	.loc 1 6040 0 is_stmt 1
	movq	-64(%rbp), %rax	# minnode, tmp166
	movq	%rax, %rdi	# tmp166,
	call	tree_int_cst_sgn	#
	notl	%eax	# tmp167
	shrl	$31, %eax	#, tmp168
	movzbl	%al, %eax	# D.21884, tmp169
	movl	%eax, -84(%rbp)	# tmp169, unsign
	.loc 1 6041 0
	movl	-84(%rbp), %edx	# unsign, tmp170
	movq	-64(%rbp), %rax	# minnode, tmp171
	movl	%edx, %esi	# tmp170,
	movq	%rax, %rdi	# tmp171,
	call	min_precision	#
	movl	%eax, %ebx	#, D.21887
	movl	-84(%rbp), %edx	# unsign, tmp172
	movq	-56(%rbp), %rax	# maxnode, tmp173
	movl	%edx, %esi	# tmp172,
	movq	%rax, %rdi	# tmp173,
	call	min_precision	#
	cmpl	%eax, %ebx	# D.21887, D.21887
	jbe	.L1059	#,
	.loc 1 6041 0 is_stmt 0 discriminator 1
	movl	-84(%rbp), %edx	# unsign, tmp174
	movq	-64(%rbp), %rax	# minnode, tmp175
	movl	%edx, %esi	# tmp174,
	movq	%rax, %rdi	# tmp175,
	call	min_precision	#
	jmp	.L1060	#
.L1059:
	.loc 1 6041 0 discriminator 2
	movl	-84(%rbp), %edx	# unsign, tmp176
	movq	-56(%rbp), %rax	# maxnode, tmp177
	movl	%edx, %esi	# tmp176,
	movq	%rax, %rdi	# tmp177,
	call	min_precision	#
.L1060:
	.loc 1 6041 0 discriminator 3
	movl	%eax, -92(%rbp)	# iftmp.641, precision
	.loc 1 6043 0 is_stmt 1 discriminator 3
	movq	-104(%rbp), %rax	# enumtype, enumtype.642
	movzbl	62(%rax), %eax	# *enumtype.642_45, D.21888
	andl	$16, %eax	#, D.21888
	testb	%al, %al	# D.21888
	jne	.L1061	#,
	.loc 1 6043 0 is_stmt 0 discriminator 1
	movq	integer_types+40(%rip), %rax	# integer_types, D.21886
	movzwl	60(%rax), %eax	# *_48, tmp180
	andw	$511, %ax	#, D.21889
	movzwl	%ax, %eax	# D.21889, D.21885
	cmpl	-92(%rbp), %eax	# precision, D.21885
	jge	.L1062	#,
.L1061:
.LBB77:
	.loc 1 6045 0 is_stmt 1
	movl	-92(%rbp), %eax	# precision, precision.643
	movl	-84(%rbp), %edx	# unsign, tmp181
	movl	%edx, %esi	# tmp181,
	movl	%eax, %edi	# precision.643,
	call	type_for_size	#
	movq	%rax, -40(%rbp)	# tmp182, narrowest
	.loc 1 6046 0
	cmpq	$0, -40(%rbp)	#, narrowest
	jne	.L1063	#,
	.loc 1 6048 0
	movl	$.LC319, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	.loc 1 6049 0
	movq	integer_types+72(%rip), %rax	# integer_types, tmp183
	movq	%rax, -40(%rbp)	# tmp183, narrowest
.L1063:
	.loc 1 6052 0
	movq	-40(%rbp), %rax	# narrowest, tmp184
	movzwl	60(%rax), %eax	# *narrowest_12, tmp187
	andw	$511, %ax	#, D.21889
	movzwl	%ax, %eax	# D.21889, tmp188
	movl	%eax, -92(%rbp)	# tmp188, precision
.LBE77:
	.loc 1 6044 0
	jmp	.L1064	#
.L1062:
	.loc 1 6055 0
	movq	integer_types+40(%rip), %rax	# integer_types, D.21886
	movzwl	60(%rax), %eax	# *_51, tmp191
	andw	$511, %ax	#, D.21889
	movzwl	%ax, %eax	# D.21889, tmp192
	movl	%eax, -92(%rbp)	# tmp192, precision
.L1064:
	.loc 1 6057 0
	movq	integer_types+40(%rip), %rax	# integer_types, D.21886
	movzwl	60(%rax), %eax	# *_59, tmp195
	andw	$511, %ax	#, D.21889
	movzwl	%ax, %eax	# D.21889, D.21885
	cmpl	-92(%rbp), %eax	# precision, D.21885
	jne	.L1065	#,
	.loc 1 6058 0
	movl	-92(%rbp), %eax	# precision, precision.644
	movl	$0, %esi	#,
	movl	%eax, %edi	# precision.644,
	call	type_for_size	#
	movq	%rax, -48(%rbp)	# tmp196, enum_value_type
	jmp	.L1066	#
.L1065:
	.loc 1 6060 0
	movq	-104(%rbp), %rax	# enumtype, tmp197
	movq	%rax, -48(%rbp)	# tmp197, enum_value_type
.L1066:
	.loc 1 6062 0
	movq	-104(%rbp), %rax	# enumtype, enumtype.645
	movq	-64(%rbp), %rdx	# minnode, tmp198
	movq	%rdx, 104(%rax)	# tmp198, enumtype.645_65->type.minval
	.loc 1 6063 0
	movq	-104(%rbp), %rax	# enumtype, enumtype.646
	movq	-56(%rbp), %rdx	# maxnode, tmp199
	movq	%rdx, 112(%rax)	# tmp199, enumtype.646_66->type.maxval
	.loc 1 6064 0
	movq	-104(%rbp), %rax	# enumtype, enumtype.647
	movl	-92(%rbp), %edx	# precision, tmp200
	andw	$511, %dx	#, D.21889
	movl	%edx, %ecx	# D.21889, tmp202
	andw	$511, %cx	#, tmp202
	movzwl	60(%rax), %edx	# enumtype.647_67->type.precision, tmp203
	andw	$-512, %dx	#, tmp204
	orl	%ecx, %edx	# tmp202, tmp205
	movw	%dx, 60(%rax)	# tmp205, enumtype.647_67->type.precision
	.loc 1 6065 0
	movq	-104(%rbp), %rax	# enumtype, enumtype.648
	movl	-84(%rbp), %edx	# unsign, tmp206
	andl	$1, %edx	#, D.21891
	andl	$1, %edx	#, tmp208
	movl	%edx, %ecx	# tmp208, tmp209
	sall	$5, %ecx	#, tmp209
	movzbl	17(%rax), %edx	#, tmp210
	andl	$-33, %edx	#, tmp211
	orl	%ecx, %edx	# tmp209, tmp212
	movb	%dl, 17(%rax)	# tmp212,
	.loc 1 6066 0
	movq	-104(%rbp), %rax	# enumtype, enumtype.649
	movq	$0, 32(%rax)	#, enumtype.649_73->type.size
	.loc 1 6067 0
	movq	-104(%rbp), %rax	# enumtype, enumtype.650
	movq	%rax, %rdi	# enumtype.650,
	call	layout_type	#
	.loc 1 6069 0
	movq	global_trees(%rip), %rax	# global_trees, D.21886
	cmpq	-112(%rbp), %rax	# values, D.21886
	je	.L1067	#,
	.loc 1 6078 0
	movq	-112(%rbp), %rax	# values, tmp213
	movq	%rax, -80(%rbp)	# tmp213, pair
	jmp	.L1068	#
.L1071:
.LBB78:
	.loc 1 6080 0
	movq	-80(%rbp), %rax	# pair, tmp214
	movq	24(%rax), %rax	# pair_2->list.purpose, tmp215
	movq	%rax, -24(%rbp)	# tmp215, enu
	.loc 1 6082 0
	movq	-104(%rbp), %rdx	# enumtype, enumtype.651
	movq	-24(%rbp), %rax	# enu, tmp216
	movq	%rdx, 8(%rax)	# enumtype.651, enu_77->common.type
	.loc 1 6083 0
	movq	-104(%rbp), %rax	# enumtype, enumtype.652
	movq	32(%rax), %rdx	# enumtype.652_79->type.size, D.21886
	movq	-24(%rbp), %rax	# enu, tmp217
	movq	%rdx, 40(%rax)	# D.21886, enu_77->decl.size
	.loc 1 6084 0
	movq	-104(%rbp), %rax	# enumtype, enumtype.653
	movq	40(%rax), %rdx	# enumtype.653_81->type.size_unit, D.21886
	movq	-24(%rbp), %rax	# enu, tmp218
	movq	%rdx, 64(%rax)	# D.21886, enu_77->decl.size_unit
	.loc 1 6085 0
	movq	-104(%rbp), %rax	# enumtype, enumtype.654
	movl	64(%rax), %eax	# enumtype.654_83->type.align, D.21887
	andl	$16777215, %eax	#, D.21892
	movl	%eax, %edx	# D.21892, D.21892
	movq	-24(%rbp), %rax	# enu, tmp219
	movl	%edx, %ecx	# D.21892, tmp221
	andl	$16777215, %ecx	#, tmp221
	movl	56(%rax), %edx	#, tmp222
	andl	$-16777216, %edx	#, tmp223
	orl	%ecx, %edx	# tmp221, tmp224
	movl	%edx, 56(%rax)	# tmp224,
	.loc 1 6086 0
	movq	-104(%rbp), %rax	# enumtype, enumtype.655
	movzbl	63(%rax), %eax	# *enumtype.655_86, tmp227
	shrb	$7, %al	#, D.21891
	movl	%eax, %edx	# D.21891, D.21891
	movq	-24(%rbp), %rax	# enu, tmp228
	andl	$1, %edx	#, tmp230
	leal	0(,%rdx,8), %ecx	#, tmp231
	movzbl	52(%rax), %edx	#, tmp232
	andl	$-9, %edx	#, tmp233
	orl	%ecx, %edx	# tmp231, tmp234
	movb	%dl, 52(%rax)	# tmp234,
	.loc 1 6087 0
	movq	-104(%rbp), %rax	# enumtype, enumtype.656
	movzbl	61(%rax), %eax	# *enumtype.656_88, tmp237
	shrb	%al	# D.21893
	movl	%eax, %edx	# D.21893, D.21888
	movq	-24(%rbp), %rax	# enu, tmp238
	movb	%dl, 48(%rax)	# D.21888, enu_77->decl.mode
	.loc 1 6096 0
	movq	-24(%rbp), %rax	# enu, tmp239
	movq	104(%rax), %rax	# enu_77->decl.initial, D.21886
	movq	-48(%rbp), %rdx	# enum_value_type, tmp240
	movq	%rdx, %rsi	# tmp240,
	movq	%rax, %rdi	# D.21886,
	call	int_fits_type_p	#
	testl	%eax, %eax	# D.21885
	je	.L1069	#,
	.loc 1 6097 0
	movq	-24(%rbp), %rax	# enu, tmp241
	movq	104(%rax), %rdx	# enu_77->decl.initial, D.21886
	movq	-48(%rbp), %rax	# enum_value_type, tmp242
	movq	%rdx, %rsi	# D.21886,
	movq	%rax, %rdi	# tmp242,
	call	convert	#
	movq	-24(%rbp), %rdx	# enu, tmp243
	movq	%rax, 104(%rdx)	# D.21886, enu_77->decl.initial
	jmp	.L1070	#
.L1069:
	.loc 1 6099 0
	movq	-24(%rbp), %rax	# enu, tmp244
	movq	104(%rax), %rdx	# enu_77->decl.initial, D.21886
	movq	-104(%rbp), %rax	# enumtype, enumtype.657
	movq	%rdx, %rsi	# D.21886,
	movq	%rax, %rdi	# enumtype.657,
	call	convert	#
	movq	-24(%rbp), %rdx	# enu, tmp245
	movq	%rax, 104(%rdx)	# D.21886, enu_77->decl.initial
.L1070:
	.loc 1 6101 0
	movq	-24(%rbp), %rax	# enu, tmp246
	movq	72(%rax), %rdx	# enu_77->decl.name, D.21886
	movq	-80(%rbp), %rax	# pair, tmp247
	movq	%rdx, 24(%rax)	# D.21886, pair_2->list.purpose
	.loc 1 6102 0
	movq	-24(%rbp), %rax	# enu, tmp248
	movq	104(%rax), %rdx	# enu_77->decl.initial, D.21886
	movq	-80(%rbp), %rax	# pair, tmp249
	movq	%rdx, 32(%rax)	# D.21886, pair_2->list.value
.LBE78:
	.loc 1 6078 0
	movq	-80(%rbp), %rax	# pair, tmp250
	movq	(%rax), %rax	# pair_2->common.chain, tmp251
	movq	%rax, -80(%rbp)	# tmp251, pair
.L1068:
	.loc 1 6078 0 is_stmt 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, pair
	jne	.L1071	#,
	.loc 1 6105 0 is_stmt 1
	movq	-104(%rbp), %rax	# enumtype, enumtype.658
	movq	-112(%rbp), %rdx	# values, tmp252
	movq	%rdx, 24(%rax)	# tmp252, enumtype.658_101->type.values
.L1067:
	.loc 1 6109 0
	movq	-104(%rbp), %rax	# enumtype, enumtype.659
	movq	128(%rax), %rax	# enumtype.659_102->type.main_variant, tmp253
	movq	%rax, -72(%rbp)	# tmp253, tem
	jmp	.L1072	#
.L1075:
	.loc 1 6111 0
	movq	-104(%rbp), %rax	# enumtype, enumtype.660
	cmpq	%rax, -72(%rbp)	# enumtype.660, tem
	jne	.L1073	#,
	.loc 1 6112 0
	jmp	.L1074	#
.L1073:
	.loc 1 6113 0
	movq	-104(%rbp), %rax	# enumtype, enumtype.661
	movq	24(%rax), %rdx	# enumtype.661_105->type.values, D.21886
	movq	-72(%rbp), %rax	# tem, tmp254
	movq	%rdx, 24(%rax)	# D.21886, tem_3->type.values
	.loc 1 6114 0
	movq	-104(%rbp), %rax	# enumtype, enumtype.662
	movq	104(%rax), %rdx	# enumtype.662_107->type.minval, D.21886
	movq	-72(%rbp), %rax	# tem, tmp255
	movq	%rdx, 104(%rax)	# D.21886, tem_3->type.minval
	.loc 1 6115 0
	movq	-104(%rbp), %rax	# enumtype, enumtype.663
	movq	112(%rax), %rdx	# enumtype.663_109->type.maxval, D.21886
	movq	-72(%rbp), %rax	# tem, tmp256
	movq	%rdx, 112(%rax)	# D.21886, tem_3->type.maxval
	.loc 1 6116 0
	movq	-104(%rbp), %rax	# enumtype, enumtype.664
	movq	32(%rax), %rdx	# enumtype.664_111->type.size, D.21886
	movq	-72(%rbp), %rax	# tem, tmp257
	movq	%rdx, 32(%rax)	# D.21886, tem_3->type.size
	.loc 1 6117 0
	movq	-104(%rbp), %rax	# enumtype, enumtype.665
	movq	40(%rax), %rdx	# enumtype.665_113->type.size_unit, D.21886
	movq	-72(%rbp), %rax	# tem, tmp258
	movq	%rdx, 40(%rax)	# D.21886, tem_3->type.size_unit
	.loc 1 6118 0
	movq	-104(%rbp), %rax	# enumtype, enumtype.666
	movzbl	61(%rax), %eax	# *enumtype.666_115, tmp261
	shrb	%al	# D.21893
	movl	%eax, %edx	# D.21893, D.21893
	movq	-72(%rbp), %rax	# tem, tmp262
	leal	(%rdx,%rdx), %ecx	#, tmp264
	movzbl	61(%rax), %edx	#, tmp265
	andl	$1, %edx	#, tmp266
	orl	%ecx, %edx	# tmp264, tmp267
	movb	%dl, 61(%rax)	# tmp267,
	.loc 1 6119 0
	movq	-104(%rbp), %rax	# enumtype, enumtype.667
	movzwl	60(%rax), %eax	# *enumtype.667_117, tmp270
	andw	$511, %ax	#, D.21889
	movl	%eax, %edx	# D.21889, D.21889
	movq	-72(%rbp), %rax	# tem, tmp271
	movl	%edx, %ecx	# D.21889, tmp273
	andw	$511, %cx	#, tmp273
	movzwl	60(%rax), %edx	# tem_3->type.precision, tmp274
	andw	$-512, %dx	#, tmp275
	orl	%ecx, %edx	# tmp273, tmp276
	movw	%dx, 60(%rax)	# tmp276, tem_3->type.precision
	.loc 1 6120 0
	movq	-104(%rbp), %rax	# enumtype, enumtype.668
	movl	64(%rax), %edx	# enumtype.668_119->type.align, D.21887
	movq	-72(%rbp), %rax	# tem, tmp277
	movl	%edx, 64(%rax)	# D.21887, tem_3->type.align
	.loc 1 6121 0
	movq	-104(%rbp), %rax	# enumtype, enumtype.669
	movzbl	63(%rax), %eax	# *enumtype.669_121, tmp280
	shrb	$7, %al	#, D.21891
	movl	%eax, %edx	# D.21891, D.21891
	movq	-72(%rbp), %rax	# tem, tmp281
	movl	%edx, %ecx	# D.21891, tmp283
	sall	$7, %ecx	#, tmp283
	movzbl	63(%rax), %edx	#, tmp284
	andl	$127, %edx	#, tmp285
	orl	%ecx, %edx	# tmp283, tmp286
	movb	%dl, 63(%rax)	# tmp286,
	.loc 1 6122 0
	movq	-104(%rbp), %rax	# enumtype, enumtype.670
	movzbl	17(%rax), %eax	# *enumtype.670_123, tmp289
	shrb	$5, %al	#, D.21891
	andl	$1, %eax	#, D.21891
	movq	-72(%rbp), %rdx	# tem, tmp290
	andl	$1, %eax	#, tmp292
	sall	$5, %eax	#, tmp293
	movl	%eax, %ecx	# tmp293, tmp293
	movzbl	17(%rdx), %eax	#, tmp294
	andl	$-33, %eax	#, tmp295
	orl	%ecx, %eax	# tmp293, tmp296
	movb	%al, 17(%rdx)	# tmp296,
.L1074:
	.loc 1 6109 0
	movq	-72(%rbp), %rax	# tem, tmp297
	movq	120(%rax), %rax	# tem_3->type.next_variant, tmp298
	movq	%rax, -72(%rbp)	# tmp298, tem
.L1072:
	.loc 1 6109 0 is_stmt 0 discriminator 1
	cmpq	$0, -72(%rbp)	#, tem
	jne	.L1075	#,
	.loc 1 6126 0 is_stmt 1
	movq	-104(%rbp), %rax	# enumtype, enumtype.671
	movl	-88(%rbp), %edx	# toplevel, tmp299
	movl	%edx, %esi	# tmp299,
	movq	%rax, %rdi	# enumtype.671,
	call	rest_of_type_compilation	#
	.loc 1 6128 0
	movq	-104(%rbp), %rax	# enumtype, D.21894
	.loc 1 6129 0
	addq	$120, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	finish_enum, .-finish_enum
	.section	.rodata
	.align 8
.LC320:
	.string	"enumerator value for `%s' not integer constant"
	.align 8
.LC321:
	.string	"overflow in enumeration values"
	.align 8
.LC322:
	.string	"ISO C restricts enumerator values to range of `int'"
	.text
	.globl	build_enumerator
	.type	build_enumerator, @function
build_enumerator:
.LFB67:
	.loc 1 6139 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# name, name
	movq	%rsi, -32(%rbp)	# value, value
	.loc 1 6145 0
	cmpq	$0, -32(%rbp)	#, value
	je	.L1078	#,
	.loc 1 6146 0
	jmp	.L1079	#
.L1081:
	.loc 1 6146 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# value, tmp97
	movq	32(%rax), %rax	# value_1->exp.operands, tmp98
	movq	%rax, -32(%rbp)	# tmp98, value
.L1079:
	movq	-32(%rbp), %rax	# value, tmp99
	movzbl	16(%rax), %eax	# value_1->common.code, D.21897
	cmpb	$115, %al	#, D.21897
	je	.L1080	#,
	.loc 1 6146 0 discriminator 3
	movq	-32(%rbp), %rax	# value, tmp100
	movzbl	16(%rax), %eax	# value_1->common.code, D.21897
	cmpb	$114, %al	#, D.21897
	je	.L1080	#,
	.loc 1 6146 0 discriminator 1
	movq	-32(%rbp), %rax	# value, tmp101
	movzbl	16(%rax), %eax	# value_1->common.code, D.21897
	cmpb	$116, %al	#, D.21897
	jne	.L1078	#,
.L1080:
	.loc 1 6146 0 discriminator 2
	movq	-32(%rbp), %rax	# value, tmp102
	movq	32(%rax), %rdx	# value_1->exp.operands, D.21898
	movq	global_trees(%rip), %rax	# global_trees, D.21898
	cmpq	%rax, %rdx	# D.21898, D.21898
	je	.L1078	#,
	.loc 1 6146 0 discriminator 1
	movq	-32(%rbp), %rax	# value, tmp103
	movq	8(%rax), %rdx	# value_1->common.type, D.21898
	movq	-32(%rbp), %rax	# value, tmp104
	movq	32(%rax), %rax	# value_1->exp.operands, D.21898
	movq	8(%rax), %rax	# _14->common.type, D.21898
	cmpq	%rax, %rdx	# D.21898, D.21898
	je	.L1081	#,
.L1078:
	.loc 1 6148 0 is_stmt 1
	cmpq	$0, -32(%rbp)	#, value
	je	.L1082	#,
	.loc 1 6150 0
	movq	-32(%rbp), %rax	# value, tmp105
	movzbl	16(%rax), %eax	# value_2->common.code, D.21897
	cmpb	$25, %al	#, D.21897
	jne	.L1083	#,
	.loc 1 6152 0
	movq	-32(%rbp), %rax	# value, tmp106
	movq	%rax, %rdi	# tmp106,
	call	default_conversion	#
	movq	%rax, -32(%rbp)	# tmp107, value
	.loc 1 6153 0
	movq	-32(%rbp), %rax	# value, tmp108
	movq	%rax, %rdi	# tmp108,
	call	constant_expression_warning	#
	jmp	.L1082	#
.L1083:
	.loc 1 6158 0
	movq	-24(%rbp), %rax	# name, tmp109
	movq	32(%rax), %rax	# name_19(D)->identifier.id.str, D.21899
	.loc 1 6157 0
	movq	%rax, %rsi	# D.21899,
	movl	$.LC320, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 6159 0
	movq	$0, -32(%rbp)	#, value
.L1082:
	.loc 1 6166 0
	cmpq	$0, -32(%rbp)	#, value
	jne	.L1084	#,
	.loc 1 6168 0
	movq	enum_next_value(%rip), %rax	# enum_next_value, tmp110
	movq	%rax, -32(%rbp)	# tmp110, value
	.loc 1 6169 0
	movl	enum_overflow(%rip), %eax	# enum_overflow, enum_overflow.672
	testl	%eax, %eax	# enum_overflow.672
	je	.L1084	#,
	.loc 1 6170 0
	movl	$.LC321, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.L1084:
	.loc 1 6173 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.673
	testl	%eax, %eax	# pedantic.673
	je	.L1085	#,
	.loc 1 6173 0 is_stmt 0 discriminator 1
	movq	integer_types+40(%rip), %rdx	# integer_types, D.21898
	movq	-32(%rbp), %rax	# value, tmp111
	movq	%rdx, %rsi	# D.21898,
	movq	%rax, %rdi	# tmp111,
	call	int_fits_type_p	#
	testl	%eax, %eax	# D.21900
	jne	.L1085	#,
	.loc 1 6175 0 is_stmt 1
	movl	$.LC322, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
	.loc 1 6176 0
	movq	integer_types+40(%rip), %rax	# integer_types, D.21898
	movq	-32(%rbp), %rdx	# value, tmp112
	movq	%rdx, %rsi	# tmp112,
	movq	%rax, %rdi	# D.21898,
	call	convert	#
	movq	%rax, -32(%rbp)	# tmp113, value
.L1085:
	.loc 1 6180 0
	movq	global_trees+96(%rip), %rdx	# global_trees, D.21898
	movq	-32(%rbp), %rax	# value, tmp114
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp114,
	movl	$59, %edi	#,
	call	build_binary_op	#
	movq	%rax, enum_next_value(%rip)	# enum_next_value.674, enum_next_value
	.loc 1 6181 0
	movq	enum_next_value(%rip), %rax	# enum_next_value, enum_next_value.675
	movq	-32(%rbp), %rdx	# value, tmp115
	movq	%rdx, %rsi	# tmp115,
	movq	%rax, %rdi	# enum_next_value.675,
	call	tree_int_cst_lt	#
	movl	%eax, enum_overflow(%rip)	# enum_overflow.676, enum_overflow
	.loc 1 6185 0
	movq	-32(%rbp), %rax	# value, tmp116
	movq	8(%rax), %rax	# value_5->common.type, tmp117
	movq	%rax, -16(%rbp)	# tmp117, type
	.loc 1 6188 0
	movl	flag_traditional(%rip), %eax	# flag_traditional, flag_traditional.678
	.loc 1 6186 0
	testl	%eax, %eax	# flag_traditional.678
	jne	.L1086	#,
	.loc 1 6189 0
	movq	-16(%rbp), %rax	# type, tmp118
	movzwl	60(%rax), %eax	# *type_33, tmp121
	andw	$511, %ax	#, D.21901
	movzwl	%ax, %edx	# D.21901, D.21900
	movq	integer_types+40(%rip), %rax	# integer_types, D.21898
	movzwl	60(%rax), %eax	# *_37, tmp124
	andw	$511, %ax	#, D.21901
	movzwl	%ax, %eax	# D.21901, D.21900
	cmpl	%eax, %edx	# D.21900, D.21900
	jl	.L1087	#,
.L1086:
	.loc 1 6190 0 discriminator 1
	movq	-16(%rbp), %rax	# type, tmp125
	movzbl	17(%rax), %eax	# *type_33, D.21897
	andl	$32, %eax	#, D.21897
	.loc 1 6186 0 discriminator 1
	testb	%al, %al	# D.21897
	je	.L1087	#,
	.loc 1 6186 0 is_stmt 0 discriminator 2
	movl	$1, %eax	#, iftmp.677
	jmp	.L1088	#
.L1087:
	.loc 1 6186 0 discriminator 3
	movl	$0, %eax	#, iftmp.677
.L1088:
	.loc 1 6186 0 discriminator 4
	movq	integer_types+40(%rip), %rdx	# integer_types, D.21898
	movzwl	60(%rdx), %edx	# *_44, tmp128
	andw	$511, %dx	#, D.21901
	movzwl	%dx, %ecx	# D.21901, D.21900
	movq	-16(%rbp), %rdx	# type, tmp129
	movzwl	60(%rdx), %edx	# *type_33, tmp132
	andw	$511, %dx	#, D.21901
	movzwl	%dx, %edx	# D.21901, D.21900
	cmpl	%edx, %ecx	# D.21900, D.21900
	cmovge	%ecx, %edx	# D.21900,, D.21900
	movl	%eax, %esi	# iftmp.677,
	movl	%edx, %edi	# D.21902,
	call	type_for_size	#
	movq	%rax, -16(%rbp)	# tmp133, type
	.loc 1 6192 0 is_stmt 1 discriminator 4
	movq	-16(%rbp), %rdx	# type, tmp134
	movq	-24(%rbp), %rax	# name, tmp135
	movq	%rax, %rsi	# tmp135,
	movl	$32, %edi	#,
	call	build_decl	#
	movq	%rax, -8(%rbp)	# tmp136, decl
	.loc 1 6193 0 discriminator 4
	movq	-32(%rbp), %rdx	# value, tmp137
	movq	-16(%rbp), %rax	# type, tmp138
	movq	%rdx, %rsi	# tmp137,
	movq	%rax, %rdi	# tmp138,
	call	convert	#
	movq	-8(%rbp), %rdx	# decl, tmp139
	movq	%rax, 104(%rdx)	# D.21898, decl_52->decl.initial
	.loc 1 6194 0 discriminator 4
	movq	-8(%rbp), %rax	# decl, tmp140
	movq	%rax, %rdi	# tmp140,
	call	pushdecl	#
	.loc 1 6196 0 discriminator 4
	movq	-32(%rbp), %rcx	# value, tmp141
	movq	-8(%rbp), %rax	# decl, tmp142
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp141,
	movq	%rax, %rdi	# tmp142,
	call	tree_cons	#
	.loc 1 6197 0 discriminator 4
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	build_enumerator, .-build_enumerator
	.section	.rodata
	.align 8
.LC323:
	.string	"return type is an incomplete type"
.LC324:
	.string	"return type defaults to `int'"
	.align 8
.LC325:
	.string	"no previous prototype for `%s'"
	.align 8
.LC326:
	.string	"`%s' was used with no prototype before its definition"
	.align 8
.LC327:
	.string	"no previous declaration for `%s'"
	.align 8
.LC328:
	.string	"`%s' was used with no declaration before its definition"
	.align 8
.LC329:
	.string	"return type of `%s' is not `int'"
	.align 8
.LC330:
	.string	"first argument of `%s' should be `int'"
	.align 8
.LC331:
	.string	"second argument of `%s' should be `char **'"
	.align 8
.LC332:
	.string	"third argument of `%s' should probably be `char **'"
	.align 8
.LC333:
	.string	"`%s' takes only zero or two arguments"
	.align 8
.LC334:
	.string	"`%s' is normally a non-static function"
	.text
	.globl	start_function
	.type	start_function, @function
start_function:
.LFB68:
	.loc 1 6215 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# declspecs, declspecs
	movq	%rsi, -80(%rbp)	# declarator, declarator
	movq	%rdx, -88(%rbp)	# attributes, attributes
	.loc 1 6218 0
	movl	immediate_size_expand(%rip), %eax	# immediate_size_expand, tmp233
	movl	%eax, -60(%rbp)	# tmp233, old_immediate_size_expand
	.loc 1 6220 0
	movl	$0, current_function_returns_value(%rip)	#, current_function_returns_value
	.loc 1 6221 0
	movl	$0, current_function_returns_null(%rip)	#, current_function_returns_null
	.loc 1 6222 0
	movl	$0, current_function_returns_abnormally(%rip)	#, current_function_returns_abnormally
	.loc 1 6223 0
	movl	$0, warn_about_return_type(%rip)	#, warn_about_return_type
	.loc 1 6224 0
	movl	$0, current_extern_inline(%rip)	#, current_extern_inline
	.loc 1 6225 0
	movl	$0, c_function_varargs(%rip)	#, c_function_varargs
	.loc 1 6226 0
	movq	$0, named_labels(%rip)	#, named_labels
	.loc 1 6227 0
	movq	$0, shadowed_labels(%rip)	#, shadowed_labels
	.loc 1 6230 0
	movl	$0, immediate_size_expand(%rip)	#, immediate_size_expand
	.loc 1 6232 0
	movq	-72(%rbp), %rsi	# declspecs, tmp234
	movq	-80(%rbp), %rax	# declarator, tmp235
	movl	$1, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp235,
	call	grokdeclarator	#
	movq	%rax, -56(%rbp)	# decl1.679, decl1
	.loc 1 6236 0
	movq	-56(%rbp), %rax	# decl1, decl1.680
	testq	%rax, %rax	# decl1.680
	jne	.L1091	#,
	.loc 1 6238 0
	movl	-60(%rbp), %eax	# old_immediate_size_expand, tmp236
	movl	%eax, immediate_size_expand(%rip)	# tmp236, immediate_size_expand
	.loc 1 6239 0
	movl	$0, %eax	#, D.21907
	jmp	.L1131	#
.L1091:
	.loc 1 6242 0
	movq	-88(%rbp), %rcx	# attributes, tmp237
	leaq	-56(%rbp), %rax	#, tmp238
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp237,
	movq	%rax, %rdi	# tmp238,
	call	decl_attributes	#
	.loc 1 6245 0
	movq	current_binding_level(%rip), %rdx	# current_binding_level, current_binding_level.681
	movq	global_binding_level(%rip), %rax	# global_binding_level, global_binding_level.682
	cmpq	%rax, %rdx	# global_binding_level.682, current_binding_level.681
	jne	.L1093	#,
	.loc 1 6246 0
	movq	-56(%rbp), %rax	# decl1, decl1.683
	movq	%rax, %rdi	# decl1.683,
	call	maybe_apply_pragma_weak	#
.L1093:
	.loc 1 6248 0
	movq	-56(%rbp), %rax	# decl1, decl1.684
	movq	200(%rax), %rax	# decl1.684_17->decl.lang_specific, D.21908
	movzbl	(%rax), %eax	# *_18, D.21909
	andl	$1, %eax	#, D.21909
	testb	%al, %al	# D.21909
	je	.L1094	#,
	.loc 1 6249 0
	movq	-56(%rbp), %rax	# decl1, decl1.685
	movzbl	52(%rax), %eax	# *decl1.685_21, D.21909
	andl	$16, %eax	#, D.21909
	testb	%al, %al	# D.21909
	je	.L1094	#,
	.loc 1 6250 0
	movq	-56(%rbp), %rax	# decl1, decl1.686
	movq	136(%rax), %rax	# decl1.686_24->decl.attributes, D.21910
	movq	%rax, %rsi	# D.21910,
	movl	$.LC136, %edi	#,
	call	lookup_attribute	#
	testq	%rax, %rax	# D.21910
	je	.L1094	#,
	.loc 1 6251 0
	movq	-56(%rbp), %rax	# decl1, decl1.687
	movl	$.LC213, %esi	#,
	movq	%rax, %rdi	# decl1.687,
	movl	$0, %eax	#,
	call	warning_with_decl	#
.L1094:
	.loc 1 6254 0
	movq	-56(%rbp), %rax	# decl1, decl1.688
	movq	%rax, %rdi	# decl1.688,
	call	announce_function	#
	.loc 1 6256 0
	movq	-56(%rbp), %rax	# decl1, decl1.689
	movq	8(%rax), %rax	# decl1.689_29->common.type, D.21910
	movq	8(%rax), %rax	# _30->common.type, D.21910
	movq	32(%rax), %rax	# _31->type.size, D.21910
	testq	%rax, %rax	# D.21910
	jne	.L1095	#,
	.loc 1 6256 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# decl1, decl1.690
	movq	8(%rax), %rax	# decl1.690_33->common.type, D.21910
	movq	8(%rax), %rax	# _34->common.type, D.21910
	movzbl	16(%rax), %eax	# _35->common.code, D.21909
	cmpb	$5, %al	#, D.21909
	je	.L1095	#,
	.loc 1 6258 0 is_stmt 1
	movl	$.LC323, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 6260 0
	movq	-56(%rbp), %rbx	# decl1, decl1.691
	.loc 1 6262 0
	movq	-56(%rbp), %rax	# decl1, decl1.692
	movq	8(%rax), %rax	# decl1.692_38->common.type, D.21910
	.loc 1 6261 0
	movq	24(%rax), %rdx	# _39->type.values, D.21910
	movq	global_trees+216(%rip), %rax	# global_trees, D.21910
	movq	%rdx, %rsi	# D.21910,
	movq	%rax, %rdi	# D.21910,
	call	build_function_type	#
	movq	%rax, 8(%rbx)	# D.21910, decl1.691_37->common.type
.L1095:
	.loc 1 6265 0
	movl	warn_about_return_type(%rip), %eax	# warn_about_return_type, warn_about_return_type.693
	testl	%eax, %eax	# warn_about_return_type.693
	je	.L1096	#,
	.loc 1 6266 0
	movl	$.LC324, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn_c99	#
.L1096:
	.loc 1 6270 0
	movq	last_function_parms(%rip), %rax	# last_function_parms, last_function_parms.694
	movq	%rax, current_function_parms(%rip)	# last_function_parms.694, current_function_parms
	.loc 1 6271 0
	movq	last_function_parm_tags(%rip), %rax	# last_function_parm_tags, last_function_parm_tags.695
	movq	%rax, current_function_parm_tags(%rip)	# last_function_parm_tags.695, current_function_parm_tags
	.loc 1 6275 0
	movq	-56(%rbp), %rax	# decl1, decl1.696
	movq	global_trees(%rip), %rdx	# global_trees, D.21910
	movq	%rdx, 104(%rax)	# D.21910, decl1.696_46->decl.initial
	.loc 1 6280 0
	movq	-56(%rbp), %rax	# decl1, decl1.697
	movq	72(%rax), %rax	# decl1.697_48->decl.name, D.21910
	movq	%rax, %rdi	# D.21910,
	call	lookup_name_current_level	#
	movq	%rax, -48(%rbp)	# tmp239, old_decl
	.loc 1 6281 0
	cmpq	$0, -48(%rbp)	#, old_decl
	je	.L1097	#,
	.loc 1 6281 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# old_decl, tmp240
	movq	8(%rax), %rax	# old_decl_50->common.type, D.21910
	movzbl	16(%rax), %eax	# _51->common.code, D.21909
	cmpb	$23, %al	#, D.21909
	jne	.L1097	#,
	.loc 1 6282 0 is_stmt 1
	movq	-48(%rbp), %rax	# old_decl, tmp241
	movzbl	51(%rax), %eax	# *old_decl_50, D.21909
	andl	$96, %eax	#, D.21909
	testb	%al, %al	# D.21909
	jne	.L1097	#,
	.loc 1 6283 0
	movq	-56(%rbp), %rax	# decl1, decl1.698
	movq	8(%rax), %rax	# decl1.698_55->common.type, D.21910
	movq	8(%rax), %rax	# _56->common.type, D.21910
	movq	128(%rax), %rdx	# _57->type.main_variant, D.21910
	.loc 1 6284 0
	movq	-48(%rbp), %rax	# old_decl, tmp242
	movq	8(%rax), %rax	# old_decl_50->common.type, D.21910
	movq	8(%rax), %rax	# _59->common.type, D.21910
	movq	128(%rax), %rax	# _60->type.main_variant, D.21910
	.loc 1 6283 0
	cmpq	%rax, %rdx	# D.21910, D.21910
	jne	.L1097	#,
	.loc 1 6285 0
	movq	-56(%rbp), %rax	# decl1, decl1.699
	movq	8(%rax), %rax	# decl1.699_62->common.type, D.21910
	movq	24(%rax), %rax	# _63->type.values, D.21910
	testq	%rax, %rax	# D.21910
	jne	.L1097	#,
	.loc 1 6287 0
	movq	-56(%rbp), %rax	# decl1, decl1.700
	movq	-48(%rbp), %rdx	# old_decl, tmp243
	movq	8(%rdx), %rdx	# old_decl_50->common.type, D.21910
	movq	%rdx, 8(%rax)	# D.21910, decl1.700_65->common.type
	.loc 1 6288 0
	movq	-48(%rbp), %rax	# old_decl, tmp244
	movq	24(%rax), %rax	# old_decl_50->decl.filename, current_function_prototype_file.701
	movq	%rax, current_function_prototype_file(%rip)	# current_function_prototype_file.701, current_function_prototype_file
	.loc 1 6289 0
	movq	-48(%rbp), %rax	# old_decl, tmp245
	movl	32(%rax), %eax	# old_decl_50->decl.linenum, current_function_prototype_line.702
	movl	%eax, current_function_prototype_line(%rip)	# current_function_prototype_line.702, current_function_prototype_line
.L1097:
	.loc 1 6294 0
	cmpq	$0, -48(%rbp)	#, old_decl
	jne	.L1098	#,
	.loc 1 6295 0
	movq	-56(%rbp), %rax	# decl1, decl1.703
	movq	72(%rax), %rax	# decl1.703_69->decl.name, D.21910
	movq	80(%rax), %rax	# MEM[(struct lang_identifier *)_70].implicit_decl, tmp246
	movq	%rax, -48(%rbp)	# tmp246, old_decl
.L1098:
	.loc 1 6298 0
	movl	warn_strict_prototypes(%rip), %eax	# warn_strict_prototypes, warn_strict_prototypes.704
	testl	%eax, %eax	# warn_strict_prototypes.704
	je	.L1099	#,
	.loc 1 6299 0
	movq	-56(%rbp), %rax	# decl1, decl1.705
	movq	8(%rax), %rax	# decl1.705_73->common.type, D.21910
	movq	24(%rax), %rax	# _74->type.values, D.21910
	testq	%rax, %rax	# D.21910
	jne	.L1099	#,
	.loc 1 6300 0
	cmpq	$0, -48(%rbp)	#, old_decl
	je	.L1100	#,
	.loc 1 6301 0 discriminator 1
	movq	-48(%rbp), %rax	# old_decl, tmp247
	movq	8(%rax), %rax	# old_decl_1->common.type, D.21910
	movq	24(%rax), %rax	# _76->type.values, D.21910
	.loc 1 6300 0 discriminator 1
	testq	%rax, %rax	# D.21910
	jne	.L1099	#,
	.loc 1 6302 0
	movq	-48(%rbp), %rax	# old_decl, tmp248
	movzbl	51(%rax), %eax	# *old_decl_1, D.21909
	andl	$96, %eax	#, D.21909
	testb	%al, %al	# D.21909
	je	.L1100	#,
	.loc 1 6303 0
	movq	-48(%rbp), %rax	# old_decl, tmp249
	movzbl	53(%rax), %eax	# *old_decl_1, D.21909
	andl	$1, %eax	#, D.21909
	testb	%al, %al	# D.21909
	je	.L1099	#,
.L1100:
	.loc 1 6304 0
	movl	$.LC281, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	jmp	.L1101	#
.L1099:
	.loc 1 6306 0
	movl	warn_missing_prototypes(%rip), %eax	# warn_missing_prototypes, warn_missing_prototypes.706
	testl	%eax, %eax	# warn_missing_prototypes.706
	je	.L1102	#,
	.loc 1 6307 0
	movq	-56(%rbp), %rax	# decl1, decl1.707
	movzbl	18(%rax), %eax	# *decl1.707_83, D.21909
	andl	$8, %eax	#, D.21909
	testb	%al, %al	# D.21909
	je	.L1102	#,
	.loc 1 6308 0
	cmpq	$0, -48(%rbp)	#, old_decl
	je	.L1103	#,
	.loc 1 6309 0 discriminator 1
	movq	-48(%rbp), %rax	# old_decl, tmp250
	movq	8(%rax), %rax	# old_decl_1->common.type, D.21910
	movq	24(%rax), %rax	# _86->type.values, D.21910
	.loc 1 6308 0 discriminator 1
	testq	%rax, %rax	# D.21910
	jne	.L1102	#,
	.loc 1 6310 0
	movq	-48(%rbp), %rax	# old_decl, tmp251
	movzbl	51(%rax), %eax	# *old_decl_1, D.21909
	andl	$96, %eax	#, D.21909
	testb	%al, %al	# D.21909
	je	.L1103	#,
	.loc 1 6311 0
	movq	-48(%rbp), %rax	# old_decl, tmp252
	movzbl	53(%rax), %eax	# *old_decl_1, D.21909
	andl	$1, %eax	#, D.21909
	testb	%al, %al	# D.21909
	je	.L1102	#,
.L1103:
	.loc 1 6312 0
	movq	-56(%rbp), %rax	# decl1, decl1.708
	movq	72(%rax), %rdx	# decl1.708_92->decl.name, D.21910
	movq	global_trees+400(%rip), %rax	# global_trees, D.21910
	cmpq	%rax, %rdx	# D.21910, D.21910
	je	.L1102	#,
	.loc 1 6313 0
	movq	-56(%rbp), %rax	# decl1, decl1.709
	movl	$.LC325, %esi	#,
	movq	%rax, %rdi	# decl1.709,
	movl	$0, %eax	#,
	call	warning_with_decl	#
	jmp	.L1101	#
.L1102:
	.loc 1 6316 0
	movl	warn_missing_prototypes(%rip), %eax	# warn_missing_prototypes, warn_missing_prototypes.710
	testl	%eax, %eax	# warn_missing_prototypes.710
	je	.L1104	#,
	.loc 1 6317 0
	cmpq	$0, -48(%rbp)	#, old_decl
	je	.L1104	#,
	.loc 1 6317 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# old_decl, tmp253
	movzbl	18(%rax), %eax	# *old_decl_1, D.21909
	andl	$1, %eax	#, D.21909
	testb	%al, %al	# D.21909
	je	.L1104	#,
	.loc 1 6318 0 is_stmt 1
	movq	-48(%rbp), %rax	# old_decl, tmp254
	movq	8(%rax), %rax	# old_decl_1->common.type, D.21910
	movq	24(%rax), %rax	# _99->type.values, D.21910
	testq	%rax, %rax	# D.21910
	jne	.L1104	#,
	.loc 1 6319 0
	movq	-56(%rbp), %rax	# decl1, decl1.711
	movl	$.LC326, %esi	#,
	movq	%rax, %rdi	# decl1.711,
	movl	$0, %eax	#,
	call	warning_with_decl	#
	jmp	.L1101	#
.L1104:
	.loc 1 6322 0
	movl	warn_missing_declarations(%rip), %eax	# warn_missing_declarations, warn_missing_declarations.712
	testl	%eax, %eax	# warn_missing_declarations.712
	je	.L1105	#,
	.loc 1 6323 0
	movq	-56(%rbp), %rax	# decl1, decl1.713
	movzbl	18(%rax), %eax	# *decl1.713_103, D.21909
	andl	$8, %eax	#, D.21909
	testb	%al, %al	# D.21909
	je	.L1105	#,
	.loc 1 6324 0
	cmpq	$0, -48(%rbp)	#, old_decl
	jne	.L1105	#,
	.loc 1 6325 0
	movq	-56(%rbp), %rax	# decl1, decl1.714
	movq	72(%rax), %rdx	# decl1.714_106->decl.name, D.21910
	movq	global_trees+400(%rip), %rax	# global_trees, D.21910
	cmpq	%rax, %rdx	# D.21910, D.21910
	je	.L1105	#,
	.loc 1 6326 0
	movq	-56(%rbp), %rax	# decl1, decl1.715
	movl	$.LC327, %esi	#,
	movq	%rax, %rdi	# decl1.715,
	movl	$0, %eax	#,
	call	warning_with_decl	#
	jmp	.L1101	#
.L1105:
	.loc 1 6329 0
	movl	warn_missing_declarations(%rip), %eax	# warn_missing_declarations, warn_missing_declarations.716
	testl	%eax, %eax	# warn_missing_declarations.716
	je	.L1101	#,
	.loc 1 6330 0
	cmpq	$0, -48(%rbp)	#, old_decl
	je	.L1101	#,
	.loc 1 6330 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# old_decl, tmp255
	movzbl	18(%rax), %eax	# *old_decl_1, D.21909
	andl	$1, %eax	#, D.21909
	testb	%al, %al	# D.21909
	je	.L1101	#,
	.loc 1 6331 0 is_stmt 1
	movq	-56(%rbp), %rax	# decl1, decl1.717
	movq	72(%rax), %rax	# decl1.717_113->decl.name, D.21910
	movq	80(%rax), %rax	# MEM[(struct lang_identifier *)_114].implicit_decl, D.21910
	cmpq	-48(%rbp), %rax	# old_decl, D.21910
	jne	.L1101	#,
	.loc 1 6332 0
	movq	-56(%rbp), %rax	# decl1, decl1.718
	movl	$.LC328, %esi	#,
	movq	%rax, %rdi	# decl1.718,
	movl	$0, %eax	#,
	call	warning_with_decl	#
.L1101:
	.loc 1 6339 0
	movq	-56(%rbp), %rax	# decl1, decl1.719
	movl	current_extern_inline(%rip), %edx	# current_extern_inline, current_extern_inline.720
	andl	$1, %edx	#, D.21911
	movl	%edx, %ecx	# D.21911, tmp257
	andl	$1, %ecx	#, tmp257
	movzbl	49(%rax), %edx	#, tmp258
	andl	$-2, %edx	#, tmp259
	orl	%ecx, %edx	# tmp257, tmp260
	movb	%dl, 49(%rax)	# tmp260,
	.loc 1 6343 0
	movq	-56(%rbp), %rax	# decl1, decl1.721
	movzbl	18(%rax), %edx	#, tmp263
	orl	$4, %edx	#, tmp264
	movb	%dl, 18(%rax)	# tmp264,
	.loc 1 6346 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.722
	testq	%rax, %rax	# current_function_decl.722
	je	.L1106	#,
	.loc 1 6347 0
	movq	-56(%rbp), %rax	# decl1, decl1.723
	movzbl	18(%rax), %edx	#, tmp267
	andl	$-9, %edx	#, tmp268
	movb	%dl, 18(%rax)	# tmp268,
.L1106:
	.loc 1 6350 0
	movl	warn_main(%rip), %eax	# warn_main, warn_main.724
	testl	%eax, %eax	# warn_main.724
	jle	.L1107	#,
	.loc 1 6350 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# decl1, decl1.725
	movq	72(%rax), %rdx	# decl1.725_125->decl.name, D.21910
	movq	global_trees+400(%rip), %rax	# global_trees, D.21910
	cmpq	%rax, %rdx	# D.21910, D.21910
	jne	.L1107	#,
.LBB79:
	.loc 1 6353 0 is_stmt 1
	movl	$0, -64(%rbp)	#, argct
	.loc 1 6355 0
	movq	-56(%rbp), %rax	# decl1, decl1.726
	movq	8(%rax), %rax	# decl1.726_129->common.type, D.21910
	movq	8(%rax), %rax	# _130->common.type, D.21910
	movq	128(%rax), %rdx	# _131->type.main_variant, D.21910
	.loc 1 6356 0
	movq	integer_types+40(%rip), %rax	# integer_types, D.21910
	.loc 1 6355 0
	cmpq	%rax, %rdx	# D.21910, D.21910
	je	.L1108	#,
	.loc 1 6357 0
	movq	-56(%rbp), %rax	# decl1, decl1.727
	movl	$.LC329, %esi	#,
	movq	%rax, %rdi	# decl1.727,
	movl	$0, %eax	#,
	call	pedwarn_with_decl	#
.L1108:
	.loc 1 6359 0
	movq	-56(%rbp), %rax	# decl1, decl1.728
	movq	8(%rax), %rax	# decl1.728_135->common.type, D.21910
	movq	24(%rax), %rax	# _136->type.values, tmp269
	movq	%rax, -32(%rbp)	# tmp269, args
	jmp	.L1109	#
.L1123:
.LBB80:
	.loc 1 6362 0
	cmpq	$0, -32(%rbp)	#, args
	je	.L1110	#,
	.loc 1 6362 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# args, tmp270
	movq	32(%rax), %rax	# args_3->list.value, iftmp.729
	jmp	.L1111	#
.L1110:
	.loc 1 6362 0 discriminator 2
	movl	$0, %eax	#, iftmp.729
.L1111:
	.loc 1 6362 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.729, type
	.loc 1 6364 0 is_stmt 1 discriminator 3
	movq	global_trees+216(%rip), %rax	# global_trees, D.21910
	cmpq	-24(%rbp), %rax	# type, D.21910
	jne	.L1112	#,
	.loc 1 6365 0
	jmp	.L1113	#
.L1112:
	.loc 1 6367 0
	addl	$1, -64(%rbp)	#, argct
	.loc 1 6368 0
	movl	-64(%rbp), %eax	# argct, argct
	cmpl	$2, %eax	#, argct
	je	.L1115	#,
	cmpl	$3, %eax	#, argct
	je	.L1116	#,
	cmpl	$1, %eax	#, argct
	jne	.L1114	#,
	.loc 1 6371 0
	movq	-24(%rbp), %rax	# type, tmp272
	movq	128(%rax), %rdx	# type_140->type.main_variant, D.21910
	movq	integer_types+40(%rip), %rax	# integer_types, D.21910
	cmpq	%rax, %rdx	# D.21910, D.21910
	je	.L1118	#,
	.loc 1 6372 0
	movq	-56(%rbp), %rax	# decl1, decl1.730
	movl	$.LC330, %esi	#,
	movq	%rax, %rdi	# decl1.730,
	movl	$0, %eax	#,
	call	pedwarn_with_decl	#
	.loc 1 6374 0
	jmp	.L1114	#
.L1118:
	jmp	.L1114	#
.L1115:
	.loc 1 6377 0
	movq	-24(%rbp), %rax	# type, tmp273
	movzbl	16(%rax), %eax	# type_140->common.code, D.21909
	cmpb	$13, %al	#, D.21909
	jne	.L1119	#,
	.loc 1 6378 0
	movq	-24(%rbp), %rax	# type, tmp274
	movq	8(%rax), %rax	# type_140->common.type, D.21910
	movzbl	16(%rax), %eax	# _147->common.code, D.21909
	cmpb	$13, %al	#, D.21909
	jne	.L1119	#,
	.loc 1 6379 0
	movq	-24(%rbp), %rax	# type, tmp275
	movq	8(%rax), %rax	# type_140->common.type, D.21910
	movq	8(%rax), %rax	# _149->common.type, D.21910
	movq	128(%rax), %rdx	# _150->type.main_variant, D.21910
	.loc 1 6380 0
	movq	integer_types(%rip), %rax	# integer_types, D.21910
	.loc 1 6379 0
	cmpq	%rax, %rdx	# D.21910, D.21910
	je	.L1120	#,
.L1119:
	.loc 1 6381 0
	movq	-56(%rbp), %rax	# decl1, decl1.731
	movl	$.LC331, %esi	#,
	movq	%rax, %rdi	# decl1.731,
	movl	$0, %eax	#,
	call	pedwarn_with_decl	#
	.loc 1 6383 0
	jmp	.L1114	#
.L1120:
	jmp	.L1114	#
.L1116:
	.loc 1 6386 0
	movq	-24(%rbp), %rax	# type, tmp276
	movzbl	16(%rax), %eax	# type_140->common.code, D.21909
	cmpb	$13, %al	#, D.21909
	jne	.L1121	#,
	.loc 1 6387 0
	movq	-24(%rbp), %rax	# type, tmp277
	movq	8(%rax), %rax	# type_140->common.type, D.21910
	movzbl	16(%rax), %eax	# _155->common.code, D.21909
	cmpb	$13, %al	#, D.21909
	jne	.L1121	#,
	.loc 1 6388 0
	movq	-24(%rbp), %rax	# type, tmp278
	movq	8(%rax), %rax	# type_140->common.type, D.21910
	movq	8(%rax), %rax	# _157->common.type, D.21910
	movq	128(%rax), %rdx	# _158->type.main_variant, D.21910
	.loc 1 6389 0
	movq	integer_types(%rip), %rax	# integer_types, D.21910
	.loc 1 6388 0
	cmpq	%rax, %rdx	# D.21910, D.21910
	je	.L1122	#,
.L1121:
	.loc 1 6390 0
	movq	-56(%rbp), %rax	# decl1, decl1.732
	movl	$.LC332, %esi	#,
	movq	%rax, %rdi	# decl1.732,
	movl	$0, %eax	#,
	call	pedwarn_with_decl	#
	.loc 1 6392 0
	jmp	.L1132	#
.L1122:
.L1132:
	nop
.L1114:
.LBE80:
	.loc 1 6360 0
	movq	-32(%rbp), %rax	# args, tmp279
	movq	(%rax), %rax	# args_3->common.chain, tmp280
	movq	%rax, -32(%rbp)	# tmp280, args
.L1109:
	.loc 1 6359 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, args
	jne	.L1123	#,
.L1113:
	.loc 1 6399 0
	cmpl	$0, -64(%rbp)	#, argct
	jle	.L1124	#,
	.loc 1 6399 0 is_stmt 0 discriminator 1
	cmpl	$1, -64(%rbp)	#, argct
	jle	.L1125	#,
	cmpl	$3, -64(%rbp)	#, argct
	jle	.L1124	#,
.L1125:
	.loc 1 6400 0 is_stmt 1
	movq	-56(%rbp), %rax	# decl1, decl1.733
	movl	$.LC333, %esi	#,
	movq	%rax, %rdi	# decl1.733,
	movl	$0, %eax	#,
	call	pedwarn_with_decl	#
.L1124:
	.loc 1 6402 0
	movq	-56(%rbp), %rax	# decl1, decl1.734
	movzbl	18(%rax), %eax	# *decl1.734_164, D.21909
	andl	$8, %eax	#, D.21909
	testb	%al, %al	# D.21909
	jne	.L1107	#,
	.loc 1 6403 0
	movq	-56(%rbp), %rax	# decl1, decl1.735
	movl	$.LC334, %esi	#,
	movq	%rax, %rdi	# decl1.735,
	movl	$0, %eax	#,
	call	pedwarn_with_decl	#
.L1107:
.LBE79:
	.loc 1 6410 0
	movq	-56(%rbp), %rax	# decl1, decl1.736
	movq	%rax, %rdi	# decl1.736,
	call	pushdecl	#
	movq	%rax, current_function_decl(%rip)	# current_function_decl.737, current_function_decl
	.loc 1 6412 0
	movl	$0, %edi	#,
	call	pushlevel	#
	.loc 1 6413 0
	movl	$1, %edi	#,
	call	declare_parm_level	#
	.loc 1 6414 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.738
	movb	$1, 50(%rax)	#, current_binding_level.738_170->subblocks_tag_transparent
	.loc 1 6416 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.739
	movl	$0, %esi	#,
	movq	%rax, %rdi	# current_function_decl.739,
	call	make_decl_rtl	#
	.loc 1 6418 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.740
	movq	8(%rax), %rax	# current_function_decl.740_172->common.type, D.21910
	movq	8(%rax), %rax	# _173->common.type, tmp281
	movq	%rax, -40(%rbp)	# tmp281, restype
	.loc 1 6420 0
	movq	-40(%rbp), %rax	# restype, tmp282
	movq	%rax, %rdi	# tmp282,
	call	c_promoting_integer_type_p	#
	testb	%al, %al	# D.21912
	je	.L1126	#,
	.loc 1 6424 0
	movq	-40(%rbp), %rax	# restype, tmp283
	movzbl	17(%rax), %eax	# *restype_174, D.21909
	andl	$32, %eax	#, D.21909
	testb	%al, %al	# D.21909
	je	.L1127	#,
	.loc 1 6425 0
	movl	flag_traditional(%rip), %eax	# flag_traditional, flag_traditional.741
	testl	%eax, %eax	# flag_traditional.741
	jne	.L1128	#,
	.loc 1 6426 0
	movq	-40(%rbp), %rax	# restype, tmp284
	movzwl	60(%rax), %eax	# *restype_174, tmp287
	andw	$511, %ax	#, D.21913
	movl	%eax, %edx	# D.21913, D.21913
	.loc 1 6427 0
	movq	integer_types+40(%rip), %rax	# integer_types, D.21910
	movzwl	60(%rax), %eax	# *_180, tmp290
	andw	$511, %ax	#, D.21913
	.loc 1 6426 0
	cmpw	%ax, %dx	# D.21913, D.21913
	jne	.L1127	#,
.L1128:
	.loc 1 6428 0
	movq	integer_types+48(%rip), %rax	# integer_types, tmp291
	movq	%rax, -40(%rbp)	# tmp291, restype
	jmp	.L1126	#
.L1127:
	.loc 1 6430 0
	movq	integer_types+40(%rip), %rax	# integer_types, tmp292
	movq	%rax, -40(%rbp)	# tmp292, restype
.L1126:
	.loc 1 6432 0
	movq	current_function_decl(%rip), %rbx	# current_function_decl, current_function_decl.742
	.loc 1 6433 0
	movq	-40(%rbp), %rax	# restype, tmp293
	movq	%rax, %rdx	# tmp293,
	movl	$0, %esi	#,
	movl	$36, %edi	#,
	call	build_decl	#
	movq	%rax, 96(%rbx)	# D.21910, current_function_decl.742_184->decl.result
	.loc 1 6437 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.743
	movq	120(%rax), %rax	# current_function_decl.743_186->decl.assembler_name, D.21910
	testq	%rax, %rax	# D.21910
	jne	.L1129	#,
	.loc 1 6437 0 is_stmt 0 discriminator 1
	movq	lang_set_decl_assembler_name(%rip), %rax	# lang_set_decl_assembler_name, lang_set_decl_assembler_name.744
	movq	current_function_decl(%rip), %rdx	# current_function_decl, current_function_decl.745
	movq	%rdx, %rdi	# current_function_decl.745,
	call	*%rax	# lang_set_decl_assembler_name.744
.L1129:
	.loc 1 6437 0 discriminator 2
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.746
	movq	120(%rax), %rax	# current_function_decl.746_190->decl.assembler_name, D.21910
	movzbl	17(%rax), %eax	# *_191, D.21909
	andl	$4, %eax	#, D.21909
	testb	%al, %al	# D.21909
	je	.L1130	#,
	.loc 1 6438 0 is_stmt 1
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.747
	movzbl	17(%rax), %edx	#, tmp296
	orl	$4, %edx	#, tmp297
	movb	%dl, 17(%rax)	# tmp297,
.L1130:
	.loc 1 6440 0
	movl	-60(%rbp), %eax	# old_immediate_size_expand, tmp298
	movl	%eax, immediate_size_expand(%rip)	# tmp298, immediate_size_expand
	.loc 1 6442 0
	call	start_fname_decls	#
	.loc 1 6444 0
	movl	$1, %eax	#, D.21907
.L1131:
	.loc 1 6445 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	start_function, .-start_function
	.globl	c_mark_varargs
	.type	c_mark_varargs, @function
c_mark_varargs:
.LFB69:
	.loc 1 6453 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 6454 0
	movl	$1, c_function_varargs(%rip)	#, c_function_varargs
	.loc 1 6455 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	c_mark_varargs, .-c_mark_varargs
	.section	.rodata
	.align 8
.LC335:
	.string	"parm types given both in parmlist and separately"
.LC336:
	.string	"parameter name omitted"
.LC337:
	.string	"parameter `%s' declared void"
	.align 8
.LC338:
	.string	"parameter name missing from parameter list"
	.align 8
.LC339:
	.string	"multiple parameters named `%s'"
	.align 8
.LC340:
	.string	"type of `%s' defaults to `int'"
	.align 8
.LC341:
	.string	"declaration for parameter `%s' but no such parameter"
	.align 8
.LC342:
	.string	"number of arguments doesn't match prototype"
.LC343:
	.string	"prototype declaration"
	.align 8
.LC344:
	.string	"promoted argument `%s' doesn't match prototype"
	.align 8
.LC345:
	.string	"argument `%s' doesn't match prototype"
	.text
	.globl	store_parm_decls
	.type	store_parm_decls, @function
store_parm_decls:
.LFB70:
	.loc 1 6466 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$184, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 6467 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, tmp189
	movq	%rax, -72(%rbp)	# tmp189, fndecl
	.loc 1 6472 0
	movq	current_function_parms(%rip), %rax	# current_function_parms, tmp190
	movq	%rax, -168(%rbp)	# tmp190, specparms
	.loc 1 6475 0
	movq	current_function_parm_tags(%rip), %rax	# current_function_parm_tags, tmp191
	movq	%rax, -64(%rbp)	# tmp191, parmtags
	.loc 1 6478 0
	call	getdecls	#
	movq	%rax, -56(%rbp)	# tmp192, parmdecls
	.loc 1 6483 0
	movq	$0, -160(%rbp)	#, nonparms
	.loc 1 6486 0
	movq	-72(%rbp), %rax	# fndecl, tmp193
	movq	%rax, %rdi	# tmp193,
	call	decl_function_context	#
	movq	%rax, -48(%rbp)	# tmp194, context
	.loc 1 6489 0
	movl	$0, -184(%rbp)	#, prototype
	.loc 1 6491 0
	movl	warn_shadow(%rip), %eax	# warn_shadow, tmp195
	movl	%eax, -180(%rbp)	# tmp195, saved_warn_shadow
	.loc 1 6494 0
	movl	$0, warn_shadow(%rip)	#, warn_shadow
	.loc 1 6496 0
	cmpq	$0, -168(%rbp)	#, specparms
	je	.L1135	#,
	.loc 1 6496 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# specparms, tmp196
	movzbl	16(%rax), %eax	# specparms_31->common.code, D.21926
	cmpb	$2, %al	#, D.21926
	je	.L1135	#,
.LBB81:
	.loc 1 6504 0 is_stmt 1
	movq	$0, -152(%rbp)	#, others
	.loc 1 6506 0
	movl	$1, -184(%rbp)	#, prototype
	.loc 1 6508 0
	cmpq	$0, -56(%rbp)	#, parmdecls
	je	.L1136	#,
.LBB82:
	.loc 1 6512 0
	movq	-72(%rbp), %rax	# fndecl, tmp197
	movl	$.LC335, %esi	#,
	movq	%rax, %rdi	# tmp197,
	movl	$0, %eax	#,
	call	error_with_decl	#
	.loc 1 6516 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.748
	movq	(%rax), %rax	# current_binding_level.748_41->names, tmp198
	movq	%rax, -144(%rbp)	# tmp198, decl
	jmp	.L1137	#
.L1139:
	.loc 1 6518 0
	movq	-144(%rbp), %rax	# decl, tmp199
	movq	72(%rax), %rax	# decl_16->decl.name, D.21927
	testq	%rax, %rax	# D.21927
	je	.L1138	#,
	.loc 1 6519 0
	movq	-144(%rbp), %rax	# decl, tmp200
	movq	72(%rax), %rax	# decl_16->decl.name, D.21927
	movq	$0, 64(%rax)	#, MEM[(struct lang_identifier *)_44].local_value
.L1138:
	.loc 1 6517 0
	movq	-144(%rbp), %rax	# decl, tmp201
	movq	(%rax), %rax	# decl_16->common.chain, tmp202
	movq	%rax, -144(%rbp)	# tmp202, decl
.L1137:
	.loc 1 6516 0 discriminator 1
	cmpq	$0, -144(%rbp)	#, decl
	jne	.L1139	#,
	.loc 1 6520 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.749
	movq	16(%rax), %rax	# current_binding_level.749_46->shadowed, tmp203
	movq	%rax, -136(%rbp)	# tmp203, link
	jmp	.L1140	#
.L1141:
	.loc 1 6522 0
	movq	-136(%rbp), %rax	# link, tmp204
	movq	24(%rax), %rax	# link_17->list.purpose, D.21927
	movq	-136(%rbp), %rdx	# link, tmp205
	movq	32(%rdx), %rdx	# link_17->list.value, D.21927
	movq	%rdx, 64(%rax)	# D.21927, MEM[(struct lang_identifier *)_48].local_value
	.loc 1 6521 0
	movq	-136(%rbp), %rax	# link, tmp206
	movq	(%rax), %rax	# link_17->common.chain, tmp207
	movq	%rax, -136(%rbp)	# tmp207, link
.L1140:
	.loc 1 6520 0 discriminator 1
	cmpq	$0, -136(%rbp)	#, link
	jne	.L1141	#,
	.loc 1 6523 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.750
	movq	$0, (%rax)	#, current_binding_level.750_51->names
	.loc 1 6524 0
	movq	current_binding_level(%rip), %rax	# current_binding_level, current_binding_level.751
	movq	$0, 16(%rax)	#, current_binding_level.751_52->shadowed
.L1136:
.LBE82:
	.loc 1 6527 0
	movq	-168(%rbp), %rax	# specparms, tmp208
	movq	%rax, %rdi	# tmp208,
	call	nreverse	#
	movq	%rax, -168(%rbp)	# tmp209, specparms
	.loc 1 6528 0
	movq	-168(%rbp), %rax	# specparms, tmp210
	movq	%rax, -176(%rbp)	# tmp210, parm
	jmp	.L1142	#
.L1147:
	.loc 1 6530 0
	movq	-176(%rbp), %rax	# parm, tmp211
	movq	(%rax), %rax	# parm_1->common.chain, tmp212
	movq	%rax, -40(%rbp)	# tmp212, next
	.loc 1 6531 0
	movq	-176(%rbp), %rax	# parm, tmp213
	movzbl	16(%rax), %eax	# parm_1->common.code, D.21926
	cmpb	$35, %al	#, D.21926
	jne	.L1143	#,
	.loc 1 6533 0
	movq	-176(%rbp), %rax	# parm, tmp214
	movq	72(%rax), %rax	# parm_1->decl.name, D.21927
	testq	%rax, %rax	# D.21927
	jne	.L1144	#,
	.loc 1 6534 0
	movq	-176(%rbp), %rax	# parm, tmp215
	movl	$.LC336, %esi	#,
	movq	%rax, %rdi	# tmp215,
	movl	$0, %eax	#,
	call	error_with_decl	#
	jmp	.L1145	#
.L1144:
	.loc 1 6535 0
	movq	-176(%rbp), %rax	# parm, tmp216
	movq	8(%rax), %rax	# parm_1->common.type, D.21927
	movzbl	16(%rax), %eax	# _58->common.code, D.21926
	testb	%al, %al	# D.21926
	je	.L1145	#,
	.loc 1 6536 0
	movq	-176(%rbp), %rax	# parm, tmp217
	movq	8(%rax), %rax	# parm_1->common.type, D.21927
	movzbl	16(%rax), %eax	# _60->common.code, D.21926
	cmpb	$5, %al	#, D.21926
	jne	.L1145	#,
	.loc 1 6538 0
	movq	-176(%rbp), %rax	# parm, tmp218
	movl	$.LC337, %esi	#,
	movq	%rax, %rdi	# tmp218,
	movl	$0, %eax	#,
	call	error_with_decl	#
	.loc 1 6541 0
	movq	global_trees(%rip), %rdx	# global_trees, D.21927
	movq	-176(%rbp), %rax	# parm, tmp219
	movq	%rdx, 8(%rax)	# D.21927, parm_1->common.type
.L1145:
	.loc 1 6543 0 discriminator 1
	movq	-176(%rbp), %rax	# parm, tmp220
	movq	%rax, %rdi	# tmp220,
	call	pushdecl	#
	jmp	.L1146	#
.L1143:
	.loc 1 6549 0
	movq	-176(%rbp), %rax	# parm, tmp221
	movq	$0, (%rax)	#, parm_1->common.chain
	.loc 1 6550 0
	movq	-176(%rbp), %rdx	# parm, tmp222
	movq	-152(%rbp), %rax	# others, tmp223
	movq	%rdx, %rsi	# tmp222,
	movq	%rax, %rdi	# tmp223,
	call	chainon	#
	movq	%rax, -152(%rbp)	# tmp224, others
.L1146:
	.loc 1 6528 0
	movq	-40(%rbp), %rax	# next, tmp225
	movq	%rax, -176(%rbp)	# tmp225, parm
.L1142:
	.loc 1 6528 0 is_stmt 0 discriminator 1
	cmpq	$0, -176(%rbp)	#, parm
	jne	.L1147	#,
	.loc 1 6556 0 is_stmt 1
	call	getdecls	#
	movq	-72(%rbp), %rdx	# fndecl, tmp226
	movq	%rax, 88(%rdx)	# D.21927, fndecl_30->decl.arguments
	.loc 1 6575 0
	movq	-152(%rbp), %rax	# others, tmp227
	movq	%rax, -176(%rbp)	# tmp227, parm
	jmp	.L1148	#
.L1150:
	.loc 1 6577 0
	movq	-176(%rbp), %rax	# parm, tmp228
	movq	(%rax), %rax	# parm_2->common.chain, tmp229
	movq	%rax, -40(%rbp)	# tmp229, next
	.loc 1 6578 0
	movq	-176(%rbp), %rax	# parm, tmp230
	movq	72(%rax), %rax	# parm_2->decl.name, D.21927
	testq	%rax, %rax	# D.21927
	je	.L1149	#,
	.loc 1 6580 0
	movq	-176(%rbp), %rax	# parm, tmp231
	movq	8(%rax), %rax	# parm_2->common.type, D.21927
	movq	128(%rax), %rdx	# _69->type.main_variant, D.21927
	movq	global_trees+216(%rip), %rax	# global_trees, D.21927
	cmpq	%rax, %rdx	# D.21927, D.21927
	je	.L1149	#,
	.loc 1 6582 0
	movq	-176(%rbp), %rax	# parm, tmp232
	movzbl	16(%rax), %eax	# parm_2->common.code, D.21926
	cmpb	$35, %al	#, D.21926
	je	.L1149	#,
	.loc 1 6583 0
	movq	-176(%rbp), %rax	# parm, tmp233
	movq	%rax, %rdi	# tmp233,
	call	pushdecl	#
.L1149:
	.loc 1 6575 0
	movq	-40(%rbp), %rax	# next, tmp234
	movq	%rax, -176(%rbp)	# tmp234, parm
.L1148:
	.loc 1 6575 0 is_stmt 0 discriminator 1
	cmpq	$0, -176(%rbp)	#, parm
	jne	.L1150	#,
	.loc 1 6586 0 is_stmt 1
	call	gettags	#
	movq	%rax, %rdx	#, D.21927
	movq	-64(%rbp), %rax	# parmtags, tmp235
	movq	%rdx, %rsi	# D.21927,
	movq	%rax, %rdi	# tmp235,
	call	chainon	#
	movq	%rax, %rdi	# D.21927,
	call	storetags	#
.LBE81:
	.loc 1 6497 0
	jmp	.L1151	#
.L1135:
	.loc 1 6604 0
	movq	-56(%rbp), %rax	# parmdecls, tmp236
	movq	%rax, -176(%rbp)	# tmp236, parm
	jmp	.L1152	#
.L1153:
	.loc 1 6605 0 discriminator 2
	movq	-176(%rbp), %rax	# parm, tmp237
	movzbl	50(%rax), %edx	#, tmp240
	andl	$127, %edx	#, tmp241
	movb	%dl, 50(%rax)	# tmp241,
	.loc 1 6604 0 discriminator 2
	movq	-176(%rbp), %rax	# parm, tmp242
	movq	(%rax), %rax	# parm_3->common.chain, tmp243
	movq	%rax, -176(%rbp)	# tmp243, parm
.L1152:
	.loc 1 6604 0 is_stmt 0 discriminator 1
	cmpq	$0, -176(%rbp)	#, parm
	jne	.L1153	#,
	.loc 1 6607 0 is_stmt 1
	movq	-168(%rbp), %rax	# specparms, tmp244
	movq	%rax, -176(%rbp)	# tmp244, parm
	jmp	.L1154	#
.L1167:
.LBB83:
	.loc 1 6609 0
	movq	$0, -120(%rbp)	#, found
	.loc 1 6611 0
	movq	-176(%rbp), %rax	# parm, tmp245
	movq	32(%rax), %rax	# parm_4->list.value, D.21927
	testq	%rax, %rax	# D.21927
	jne	.L1155	#,
	.loc 1 6613 0
	movq	-72(%rbp), %rax	# fndecl, tmp246
	movl	$.LC338, %esi	#,
	movq	%rax, %rdi	# tmp246,
	movl	$0, %eax	#,
	call	error_with_decl	#
	.loc 1 6615 0
	movq	-176(%rbp), %rax	# parm, tmp247
	movq	$0, 24(%rax)	#, parm_4->list.purpose
	.loc 1 6616 0
	jmp	.L1156	#
.L1155:
	.loc 1 6621 0
	movq	-56(%rbp), %rax	# parmdecls, tmp248
	movq	%rax, -128(%rbp)	# tmp248, tail
	jmp	.L1157	#
.L1160:
	.loc 1 6622 0
	movq	-128(%rbp), %rax	# tail, tmp249
	movq	72(%rax), %rdx	# tail_18->decl.name, D.21927
	movq	-176(%rbp), %rax	# parm, tmp250
	movq	32(%rax), %rax	# parm_4->list.value, D.21927
	cmpq	%rax, %rdx	# D.21927, D.21927
	jne	.L1158	#,
	.loc 1 6623 0
	movq	-128(%rbp), %rax	# tail, tmp251
	movzbl	16(%rax), %eax	# tail_18->common.code, D.21926
	cmpb	$35, %al	#, D.21926
	jne	.L1158	#,
	.loc 1 6625 0
	movq	-128(%rbp), %rax	# tail, tmp252
	movq	%rax, -120(%rbp)	# tmp252, found
	.loc 1 6626 0
	jmp	.L1159	#
.L1158:
	.loc 1 6621 0
	movq	-128(%rbp), %rax	# tail, tmp253
	movq	(%rax), %rax	# tail_18->common.chain, tmp254
	movq	%rax, -128(%rbp)	# tmp254, tail
.L1157:
	.loc 1 6621 0 is_stmt 0 discriminator 1
	cmpq	$0, -128(%rbp)	#, tail
	jne	.L1160	#,
.L1159:
	.loc 1 6631 0 is_stmt 1
	cmpq	$0, -120(%rbp)	#, found
	je	.L1161	#,
	.loc 1 6631 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# found, tmp255
	movzbl	50(%rax), %eax	# *found_19, D.21926
	andl	$-128, %eax	#, D.21926
	testb	%al, %al	# D.21926
	je	.L1161	#,
	.loc 1 6633 0 is_stmt 1
	movq	-120(%rbp), %rax	# found, tmp256
	movl	$.LC339, %esi	#,
	movq	%rax, %rdi	# tmp256,
	movl	$0, %eax	#,
	call	error_with_decl	#
	.loc 1 6634 0
	movq	$0, -120(%rbp)	#, found
.L1161:
	.loc 1 6638 0
	cmpq	$0, -120(%rbp)	#, found
	je	.L1162	#,
	.loc 1 6638 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# found, tmp257
	movq	8(%rax), %rax	# found_20->common.type, D.21927
	movzbl	16(%rax), %eax	# _90->common.code, D.21926
	cmpb	$5, %al	#, D.21926
	jne	.L1162	#,
	.loc 1 6640 0 is_stmt 1
	movq	-120(%rbp), %rax	# found, tmp258
	movl	$.LC337, %esi	#,
	movq	%rax, %rdi	# tmp258,
	movl	$0, %eax	#,
	call	error_with_decl	#
	.loc 1 6641 0
	movq	integer_types+40(%rip), %rdx	# integer_types, D.21927
	movq	-120(%rbp), %rax	# found, tmp259
	movq	%rdx, 8(%rax)	# D.21927, found_20->common.type
	.loc 1 6642 0
	movq	integer_types+40(%rip), %rdx	# integer_types, D.21927
	movq	-120(%rbp), %rax	# found, tmp260
	movq	%rdx, 104(%rax)	# D.21927, found_20->decl.initial
	.loc 1 6643 0
	movq	-120(%rbp), %rax	# found, tmp261
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp261,
	call	layout_decl	#
.L1162:
	.loc 1 6647 0
	cmpq	$0, -120(%rbp)	#, found
	je	.L1163	#,
	.loc 1 6647 0 is_stmt 0 discriminator 1
	movl	flag_traditional(%rip), %eax	# flag_traditional, flag_traditional.752
	testl	%eax, %eax	# flag_traditional.752
	je	.L1163	#,
	.loc 1 6648 0 is_stmt 1
	movq	-120(%rbp), %rax	# found, tmp262
	movq	8(%rax), %rax	# found_20->common.type, D.21927
	movq	128(%rax), %rdx	# _95->type.main_variant, D.21927
	movq	global_trees+192(%rip), %rax	# global_trees, D.21927
	cmpq	%rax, %rdx	# D.21927, D.21927
	jne	.L1163	#,
	.loc 1 6650 0
	movq	global_trees+200(%rip), %rdx	# global_trees, D.21927
	movq	-120(%rbp), %rax	# found, tmp263
	movq	%rdx, 8(%rax)	# D.21927, found_20->common.type
	.loc 1 6651 0
	movq	global_trees+200(%rip), %rdx	# global_trees, D.21927
	movq	-120(%rbp), %rax	# found, tmp264
	movq	%rdx, 104(%rax)	# D.21927, found_20->decl.initial
	.loc 1 6652 0
	movq	-120(%rbp), %rax	# found, tmp265
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp265,
	call	layout_decl	#
.L1163:
	.loc 1 6656 0
	cmpq	$0, -120(%rbp)	#, found
	jne	.L1164	#,
	.loc 1 6658 0
	movq	integer_types+40(%rip), %rdx	# integer_types, D.21927
	movq	-176(%rbp), %rax	# parm, tmp266
	movq	32(%rax), %rax	# parm_4->list.value, D.21927
	movq	%rax, %rsi	# D.21927,
	movl	$35, %edi	#,
	call	build_decl	#
	movq	%rax, -120(%rbp)	# tmp267, found
	.loc 1 6660 0
	movq	-120(%rbp), %rax	# found, tmp268
	movq	8(%rax), %rdx	# found_102->common.type, D.21927
	movq	-120(%rbp), %rax	# found, tmp269
	movq	%rdx, 104(%rax)	# D.21927, found_102->decl.initial
	.loc 1 6661 0
	movq	-72(%rbp), %rax	# fndecl, tmp270
	movl	32(%rax), %edx	# fndecl_30->decl.linenum, D.21928
	movq	-120(%rbp), %rax	# found, tmp271
	movl	%edx, 32(%rax)	# D.21928, found_102->decl.linenum
	.loc 1 6662 0
	movq	-72(%rbp), %rax	# fndecl, tmp272
	movq	24(%rax), %rdx	# fndecl_30->decl.filename, D.21929
	movq	-120(%rbp), %rax	# found, tmp273
	movq	%rdx, 24(%rax)	# D.21929, found_102->decl.filename
	.loc 1 6663 0
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.753
	testl	%eax, %eax	# flag_isoc99.753
	je	.L1165	#,
	.loc 1 6664 0
	movq	-120(%rbp), %rax	# found, tmp274
	movl	$.LC340, %esi	#,
	movq	%rax, %rdi	# tmp274,
	movl	$0, %eax	#,
	call	pedwarn_with_decl	#
	jmp	.L1166	#
.L1165:
	.loc 1 6665 0
	movl	extra_warnings(%rip), %eax	# extra_warnings, extra_warnings.754
	testl	%eax, %eax	# extra_warnings.754
	je	.L1166	#,
	.loc 1 6666 0
	movq	-120(%rbp), %rax	# found, tmp275
	movl	$.LC340, %esi	#,
	movq	%rax, %rdi	# tmp275,
	movl	$0, %eax	#,
	call	warning_with_decl	#
.L1166:
	.loc 1 6667 0
	movq	-120(%rbp), %rax	# found, tmp276
	movq	%rax, %rdi	# tmp276,
	call	pushdecl	#
.L1164:
	.loc 1 6670 0
	movq	-176(%rbp), %rax	# parm, tmp277
	movq	-120(%rbp), %rdx	# found, tmp278
	movq	%rdx, 24(%rax)	# tmp278, parm_4->list.purpose
	.loc 1 6673 0
	movq	-120(%rbp), %rax	# found, tmp279
	movzbl	50(%rax), %edx	#, tmp282
	orl	$-128, %edx	#, tmp283
	movb	%dl, 50(%rax)	# tmp283,
.L1156:
.LBE83:
	.loc 1 6607 0
	movq	-176(%rbp), %rax	# parm, tmp284
	movq	(%rax), %rax	# parm_4->common.chain, tmp285
	movq	%rax, -176(%rbp)	# tmp285, parm
.L1154:
	.loc 1 6607 0 is_stmt 0 discriminator 1
	cmpq	$0, -176(%rbp)	#, parm
	jne	.L1167	#,
	.loc 1 6682 0 is_stmt 1
	movq	$0, -160(%rbp)	#, nonparms
	.loc 1 6683 0
	movq	-56(%rbp), %rax	# parmdecls, tmp286
	movq	%rax, -176(%rbp)	# tmp286, parm
	jmp	.L1168	#
.L1172:
.LBB84:
	.loc 1 6685 0
	movq	-176(%rbp), %rax	# parm, tmp287
	movq	(%rax), %rax	# parm_5->common.chain, tmp288
	movq	%rax, -32(%rbp)	# tmp288, next
	.loc 1 6686 0
	movq	-176(%rbp), %rax	# parm, tmp289
	movq	$0, (%rax)	#, parm_5->common.chain
	.loc 1 6688 0
	movq	-176(%rbp), %rax	# parm, tmp290
	movzbl	16(%rax), %eax	# parm_5->common.code, D.21926
	cmpb	$35, %al	#, D.21926
	je	.L1169	#,
	.loc 1 6689 0
	movq	-176(%rbp), %rdx	# parm, tmp291
	movq	-160(%rbp), %rax	# nonparms, tmp292
	movq	%rdx, %rsi	# tmp291,
	movq	%rax, %rdi	# tmp292,
	call	chainon	#
	movq	%rax, -160(%rbp)	# tmp293, nonparms
	jmp	.L1170	#
.L1169:
	.loc 1 6693 0
	movq	-176(%rbp), %rax	# parm, tmp294
	movq	8(%rax), %rax	# parm_5->common.type, D.21927
	movq	32(%rax), %rax	# _114->type.size, D.21927
	testq	%rax, %rax	# D.21927
	jne	.L1171	#,
	.loc 1 6695 0
	movq	-176(%rbp), %rax	# parm, tmp295
	movl	$.LC283, %esi	#,
	movq	%rax, %rdi	# tmp295,
	movl	$0, %eax	#,
	call	error_with_decl	#
	.loc 1 6696 0
	movq	global_trees(%rip), %rdx	# global_trees, D.21927
	movq	-176(%rbp), %rax	# parm, tmp296
	movq	%rdx, 8(%rax)	# D.21927, parm_5->common.type
.L1171:
	.loc 1 6699 0
	movq	-176(%rbp), %rax	# parm, tmp297
	movzbl	50(%rax), %eax	# *parm_5, D.21926
	andl	$-128, %eax	#, D.21926
	testb	%al, %al	# D.21926
	jne	.L1170	#,
	.loc 1 6701 0
	movq	-176(%rbp), %rax	# parm, tmp298
	movl	$.LC341, %esi	#,
	movq	%rax, %rdi	# tmp298,
	movl	$0, %eax	#,
	call	error_with_decl	#
	.loc 1 6707 0
	movq	-176(%rbp), %rax	# parm, tmp299
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp299,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.21927
	movq	-168(%rbp), %rax	# specparms, tmp300
	movq	%rdx, %rsi	# D.21927,
	movq	%rax, %rdi	# tmp300,
	call	chainon	#
	movq	%rax, -168(%rbp)	# tmp301, specparms
.L1170:
	.loc 1 6712 0
	movq	-32(%rbp), %rax	# next, tmp302
	movq	%rax, -176(%rbp)	# tmp302, parm
.L1168:
.LBE84:
	.loc 1 6683 0 discriminator 1
	cmpq	$0, -176(%rbp)	#, parm
	jne	.L1172	#,
	.loc 1 6718 0
	movq	-168(%rbp), %rax	# specparms, tmp303
	movq	%rax, -176(%rbp)	# tmp303, parm
	.loc 1 6719 0
	movq	-72(%rbp), %rax	# fndecl, tmp304
	movq	$0, 88(%rax)	#, fndecl_30->decl.arguments
.LBB85:
	.loc 1 6722 0
	movq	$0, -112(%rbp)	#, last
	jmp	.L1173	#
.L1177:
	.loc 1 6723 0
	movq	-176(%rbp), %rax	# parm, tmp305
	movq	24(%rax), %rax	# parm_6->list.purpose, D.21927
	testq	%rax, %rax	# D.21927
	je	.L1174	#,
	.loc 1 6725 0
	cmpq	$0, -112(%rbp)	#, last
	jne	.L1175	#,
	.loc 1 6726 0
	movq	-176(%rbp), %rax	# parm, tmp306
	movq	24(%rax), %rdx	# parm_6->list.purpose, D.21927
	movq	-72(%rbp), %rax	# fndecl, tmp307
	movq	%rdx, 88(%rax)	# D.21927, fndecl_30->decl.arguments
	jmp	.L1176	#
.L1175:
	.loc 1 6728 0
	movq	-176(%rbp), %rax	# parm, tmp308
	movq	24(%rax), %rdx	# parm_6->list.purpose, D.21927
	movq	-112(%rbp), %rax	# last, tmp309
	movq	%rdx, (%rax)	# D.21927, last_23->common.chain
.L1176:
	.loc 1 6729 0
	movq	-176(%rbp), %rax	# parm, tmp310
	movq	24(%rax), %rax	# parm_6->list.purpose, tmp311
	movq	%rax, -112(%rbp)	# tmp311, last
	.loc 1 6730 0
	movq	-112(%rbp), %rax	# last, tmp312
	movq	$0, (%rax)	#, last_127->common.chain
.L1174:
	.loc 1 6722 0
	movq	-176(%rbp), %rax	# parm, tmp313
	movq	(%rax), %rax	# parm_6->common.chain, tmp314
	movq	%rax, -176(%rbp)	# tmp314, parm
.L1173:
	.loc 1 6722 0 is_stmt 0 discriminator 1
	cmpq	$0, -176(%rbp)	#, parm
	jne	.L1177	#,
.LBE85:
	.loc 1 6738 0 is_stmt 1
	movq	-72(%rbp), %rax	# fndecl, tmp315
	movq	8(%rax), %rax	# fndecl_30->common.type, D.21927
	movq	24(%rax), %rax	# _129->type.values, D.21927
	testq	%rax, %rax	# D.21927
	je	.L1178	#,
.LBB86:
	.loc 1 6741 0
	movq	-72(%rbp), %rax	# fndecl, tmp316
	movq	88(%rax), %rax	# fndecl_30->decl.arguments, tmp317
	movq	%rax, -176(%rbp)	# tmp317, parm
	.loc 1 6742 0
	movq	-72(%rbp), %rax	# fndecl, tmp318
	movq	8(%rax), %rax	# fndecl_30->common.type, D.21927
	movq	24(%rax), %rax	# _132->type.values, tmp319
	movq	%rax, -104(%rbp)	# tmp319, type
	.loc 1 6741 0
	jmp	.L1179	#
.L1189:
	.loc 1 6747 0
	cmpq	$0, -176(%rbp)	#, parm
	je	.L1180	#,
	.loc 1 6747 0 is_stmt 0 discriminator 1
	cmpq	$0, -104(%rbp)	#, type
	je	.L1180	#,
	.loc 1 6748 0 is_stmt 1
	movq	-104(%rbp), %rax	# type, tmp320
	movq	32(%rax), %rax	# type_24->list.value, D.21927
	movq	128(%rax), %rdx	# _137->type.main_variant, D.21927
	movq	global_trees+216(%rip), %rax	# global_trees, D.21927
	cmpq	%rax, %rdx	# D.21927, D.21927
	jne	.L1181	#,
.L1180:
	.loc 1 6750 0
	movl	$.LC342, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 6751 0
	movl	current_function_prototype_line(%rip), %ecx	# current_function_prototype_line, current_function_prototype_line.755
	movq	current_function_prototype_file(%rip), %rax	# current_function_prototype_file, current_function_prototype_file.756
	movl	$.LC343, %edx	#,
	movl	%ecx, %esi	# current_function_prototype_line.755,
	movq	%rax, %rdi	# current_function_prototype_file.756,
	movl	$0, %eax	#,
	call	error_with_file_and_line	#
	.loc 1 6754 0
	jmp	.L1182	#
.L1181:
	.loc 1 6760 0
	movq	-104(%rbp), %rax	# type, tmp321
	movq	32(%rax), %rax	# type_24->list.value, D.21927
	.loc 1 6759 0
	movq	128(%rax), %rdx	# _140->type.main_variant, D.21927
	movq	-176(%rbp), %rax	# parm, tmp322
	movq	104(%rax), %rax	# parm_7->decl.initial, D.21927
	movq	128(%rax), %rax	# _142->type.main_variant, D.21927
	movq	%rdx, %rsi	# D.21927,
	movq	%rax, %rdi	# D.21927,
	call	comptypes	#
	testl	%eax, %eax	# D.21928
	jne	.L1183	#,
	.loc 1 6762 0
	movq	-176(%rbp), %rax	# parm, tmp323
	movq	8(%rax), %rax	# parm_7->common.type, D.21927
	movq	128(%rax), %rdx	# _145->type.main_variant, D.21927
	.loc 1 6763 0
	movq	-104(%rbp), %rax	# type, tmp324
	movq	32(%rax), %rax	# type_24->list.value, D.21927
	movq	128(%rax), %rax	# _147->type.main_variant, D.21927
	.loc 1 6762 0
	cmpq	%rax, %rdx	# D.21927, D.21927
	jne	.L1184	#,
	.loc 1 6770 0
	movq	-176(%rbp), %rax	# parm, tmp325
	movq	8(%rax), %rdx	# parm_7->common.type, D.21927
	movq	-176(%rbp), %rax	# parm, tmp326
	movq	%rdx, 104(%rax)	# D.21927, parm_7->decl.initial
	.loc 1 6772 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.757
	andl	$33554432, %eax	#, D.21928
	testl	%eax, %eax	# D.21928
	jne	.L1185	#,
	.loc 1 6773 0
	movq	-176(%rbp), %rax	# parm, tmp327
	movq	8(%rax), %rax	# parm_7->common.type, D.21927
	movzbl	16(%rax), %eax	# _152->common.code, D.21926
	cmpb	$6, %al	#, D.21926
	je	.L1186	#,
	.loc 1 6773 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# parm, tmp328
	movq	8(%rax), %rax	# parm_7->common.type, D.21927
	movzbl	16(%rax), %eax	# _154->common.code, D.21926
	cmpb	$10, %al	#, D.21926
	je	.L1186	#,
	movq	-176(%rbp), %rax	# parm, tmp329
	movq	8(%rax), %rax	# parm_7->common.type, D.21927
	movzbl	16(%rax), %eax	# _156->common.code, D.21926
	cmpb	$11, %al	#, D.21926
	je	.L1186	#,
	movq	-176(%rbp), %rax	# parm, tmp330
	movq	8(%rax), %rax	# parm_7->common.type, D.21927
	movzbl	16(%rax), %eax	# _158->common.code, D.21926
	cmpb	$12, %al	#, D.21926
	jne	.L1185	#,
.L1186:
	.loc 1 6774 0 is_stmt 1
	movq	-176(%rbp), %rax	# parm, tmp331
	movq	8(%rax), %rax	# parm_7->common.type, D.21927
	movzwl	60(%rax), %eax	# *_160, tmp334
	andw	$511, %ax	#, D.21930
	.loc 1 6775 0
	movzwl	%ax, %edx	# D.21930, D.21928
	movq	integer_types+40(%rip), %rax	# integer_types, D.21927
	movzwl	60(%rax), %eax	# *_163, tmp337
	andw	$511, %ax	#, D.21930
	movzwl	%ax, %eax	# D.21930, D.21928
	.loc 1 6774 0
	cmpl	%eax, %edx	# D.21928, D.21928
	jge	.L1185	#,
	.loc 1 6776 0
	movq	integer_types+40(%rip), %rdx	# integer_types, D.21927
	movq	-176(%rbp), %rax	# parm, tmp338
	movq	%rdx, 104(%rax)	# D.21927, parm_7->decl.initial
.L1185:
	.loc 1 6778 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.758
	testl	%eax, %eax	# pedantic.758
	je	.L1183	#,
	.loc 1 6781 0
	movq	-176(%rbp), %rax	# parm, tmp339
	movq	72(%rax), %rax	# parm_7->decl.name, D.21927
	movq	32(%rax), %rax	# _168->identifier.id.str, D.21931
	.loc 1 6780 0
	movq	%rax, %rsi	# D.21931,
	movl	$.LC344, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
	.loc 1 6783 0
	movl	current_function_prototype_line(%rip), %ecx	# current_function_prototype_line, current_function_prototype_line.759
	movq	current_function_prototype_file(%rip), %rax	# current_function_prototype_file, current_function_prototype_file.760
	movl	$.LC343, %edx	#,
	movl	%ecx, %esi	# current_function_prototype_line.759,
	movq	%rax, %rdi	# current_function_prototype_file.760,
	movl	$0, %eax	#,
	call	warning_with_file_and_line	#
	jmp	.L1183	#
.L1184:
	.loc 1 6790 0
	movl	flag_traditional(%rip), %eax	# flag_traditional, flag_traditional.761
	testl	%eax, %eax	# flag_traditional.761
	je	.L1188	#,
	.loc 1 6791 0
	movq	-176(%rbp), %rax	# parm, tmp340
	movq	8(%rax), %rax	# parm_7->common.type, D.21927
	movq	128(%rax), %rdx	# _173->type.main_variant, D.21927
	movq	integer_types+40(%rip), %rax	# integer_types, D.21927
	cmpq	%rax, %rdx	# D.21927, D.21927
	jne	.L1188	#,
	.loc 1 6792 0
	movq	-104(%rbp), %rax	# type, tmp341
	movq	32(%rax), %rax	# type_24->list.value, D.21927
	movq	128(%rax), %rdx	# _176->type.main_variant, D.21927
	movq	integer_types+48(%rip), %rax	# integer_types, D.21927
	.loc 1 6790 0
	cmpq	%rax, %rdx	# D.21927, D.21927
	je	.L1183	#,
.L1188:
	.loc 1 6795 0
	movq	-176(%rbp), %rax	# parm, tmp342
	movq	72(%rax), %rax	# parm_7->decl.name, D.21927
	movq	32(%rax), %rax	# _179->identifier.id.str, D.21931
	.loc 1 6794 0
	movq	%rax, %rsi	# D.21931,
	movl	$.LC345, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 6796 0
	movl	current_function_prototype_line(%rip), %ecx	# current_function_prototype_line, current_function_prototype_line.762
	movq	current_function_prototype_file(%rip), %rax	# current_function_prototype_file, current_function_prototype_file.763
	movl	$.LC343, %edx	#,
	movl	%ecx, %esi	# current_function_prototype_line.762,
	movq	%rax, %rdi	# current_function_prototype_file.763,
	movl	$0, %eax	#,
	call	error_with_file_and_line	#
.L1183:
	.loc 1 6745 0
	movq	-176(%rbp), %rax	# parm, tmp343
	movq	(%rax), %rax	# parm_7->common.chain, tmp344
	movq	%rax, -176(%rbp)	# tmp344, parm
	movq	-104(%rbp), %rax	# type, tmp345
	movq	(%rax), %rax	# type_24->common.chain, tmp346
	movq	%rax, -104(%rbp)	# tmp346, type
.L1179:
	.loc 1 6741 0 discriminator 1
	cmpq	$0, -176(%rbp)	#, parm
	jne	.L1189	#,
	.loc 1 6743 0
	cmpq	$0, -104(%rbp)	#, type
	je	.L1182	#,
	.loc 1 6743 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# type, tmp347
	movq	32(%rax), %rax	# type_24->list.value, D.21927
	movq	128(%rax), %rdx	# _134->type.main_variant, D.21927
	.loc 1 6744 0 is_stmt 1 discriminator 1
	movq	global_trees+216(%rip), %rax	# global_trees, D.21927
	.loc 1 6743 0 discriminator 1
	cmpq	%rax, %rdx	# D.21927, D.21927
	jne	.L1189	#,
.L1182:
	.loc 1 6802 0
	movq	-72(%rbp), %rax	# fndecl, tmp348
	movq	8(%rax), %rax	# fndecl_30->common.type, D.21927
	movq	$0, 136(%rax)	#, _187->type.binfo
.LBE86:
	jmp	.L1190	#
.L1178:
.LBB87:
	.loc 1 6809 0
	movq	$0, -96(%rbp)	#, actual
	movq	$0, -88(%rbp)	#, last
	.loc 1 6811 0
	movq	-72(%rbp), %rax	# fndecl, tmp349
	movq	88(%rax), %rax	# fndecl_30->decl.arguments, tmp350
	movq	%rax, -176(%rbp)	# tmp350, parm
	jmp	.L1191	#
.L1194:
	.loc 1 6813 0
	movq	-176(%rbp), %rax	# parm, tmp351
	movq	104(%rax), %rax	# parm_8->decl.initial, D.21927
	movl	$0, %edx	#,
	movq	%rax, %rsi	# D.21927,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, -24(%rbp)	# tmp352, type
	.loc 1 6814 0
	cmpq	$0, -88(%rbp)	#, last
	je	.L1192	#,
	.loc 1 6815 0
	movq	-88(%rbp), %rax	# last, tmp353
	movq	-24(%rbp), %rdx	# type, tmp354
	movq	%rdx, (%rax)	# tmp354, last_28->common.chain
	jmp	.L1193	#
.L1192:
	.loc 1 6817 0
	movq	-24(%rbp), %rax	# type, tmp355
	movq	%rax, -96(%rbp)	# tmp355, actual
.L1193:
	.loc 1 6818 0
	movq	-24(%rbp), %rax	# type, tmp356
	movq	%rax, -88(%rbp)	# tmp356, last
	.loc 1 6811 0
	movq	-176(%rbp), %rax	# parm, tmp357
	movq	(%rax), %rax	# parm_8->common.chain, tmp358
	movq	%rax, -176(%rbp)	# tmp358, parm
.L1191:
	.loc 1 6811 0 is_stmt 0 discriminator 1
	cmpq	$0, -176(%rbp)	#, parm
	jne	.L1194	#,
	.loc 1 6820 0 is_stmt 1
	movq	global_trees+216(%rip), %rax	# global_trees, D.21927
	movl	$0, %edx	#,
	movq	%rax, %rsi	# D.21927,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, -24(%rbp)	# tmp359, type
	.loc 1 6821 0
	cmpq	$0, -88(%rbp)	#, last
	je	.L1195	#,
	.loc 1 6822 0
	movq	-88(%rbp), %rax	# last, tmp360
	movq	-24(%rbp), %rdx	# type, tmp361
	movq	%rdx, (%rax)	# tmp361, last_28->common.chain
	jmp	.L1196	#
.L1195:
	.loc 1 6824 0
	movq	-24(%rbp), %rax	# type, tmp362
	movq	%rax, -96(%rbp)	# tmp362, actual
.L1196:
	.loc 1 6834 0
	movq	-72(%rbp), %rax	# fndecl, tmp363
	movq	8(%rax), %rax	# fndecl_30->common.type, D.21927
	movq	%rax, %rdi	# D.21927,
	call	build_type_copy	#
	movq	-72(%rbp), %rdx	# fndecl, tmp364
	movq	%rax, 8(%rdx)	# D.21927, fndecl_30->common.type
	.loc 1 6836 0
	movq	-72(%rbp), %rax	# fndecl, tmp365
	movq	8(%rax), %rax	# fndecl_30->common.type, D.21927
	movq	-96(%rbp), %rdx	# actual, tmp366
	movq	%rdx, 136(%rax)	# tmp366, _201->type.binfo
.L1190:
.LBE87:
	.loc 1 6844 0
	movq	-72(%rbp), %rax	# fndecl, tmp367
	movq	88(%rax), %rdx	# fndecl_30->decl.arguments, D.21927
	movq	-160(%rbp), %rax	# nonparms, tmp368
	movq	%rdx, %rsi	# D.21927,
	movq	%rax, %rdi	# tmp368,
	call	chainon	#
	movq	%rax, %rdi	# D.21927,
	call	storedecls	#
.L1151:
	.loc 1 6851 0
	movl	$1, keep_next_if_subblocks(%rip)	#, keep_next_if_subblocks
	.loc 1 6862 0
	movl	-184(%rbp), %edx	# prototype, tmp369
	movq	-72(%rbp), %rax	# fndecl, tmp370
	movl	%edx, %ecx	# tmp369,
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp370,
	call	gen_aux_info_record	#
	.loc 1 6865 0
	movl	lineno(%rip), %edx	# lineno, lineno.764
	movq	input_filename(%rip), %rcx	# input_filename, input_filename.765
	movq	-72(%rbp), %rax	# fndecl, tmp371
	movq	%rcx, %rsi	# input_filename.765,
	movq	%rax, %rdi	# tmp371,
	call	init_function_start	#
	.loc 1 6868 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.766
	addq	$168, %rax	#, D.21932
	movq	%rax, %rdi	# D.21932,
	call	begin_stmt_tree	#
	.loc 1 6873 0
	cmpq	$0, -48(%rbp)	#, context
	je	.L1197	#,
.LBB88:
	.loc 1 6877 0
	movq	-72(%rbp), %rax	# fndecl, tmp372
	movq	200(%rax), %rbx	# fndecl_30->decl.lang_specific, D.21933
	.loc 1 6878 0
	call	get_pending_sizes	#
	movq	%rax, %rdi	# D.21927,
	call	nreverse	#
	movq	%rax, 8(%rbx)	# D.21927, _208->pending_sizes
	.loc 1 6879 0
	movq	-72(%rbp), %rax	# fndecl, tmp373
	movq	200(%rax), %rax	# fndecl_30->decl.lang_specific, D.21933
	movq	8(%rax), %rax	# _211->pending_sizes, tmp374
	movq	%rax, -80(%rbp)	# tmp374, t
	jmp	.L1198	#
.L1199:
	.loc 1 6882 0
	movq	-80(%rbp), %rax	# t, tmp375
	movq	32(%rax), %rax	# t_29->list.value, D.21927
	movq	-48(%rbp), %rdx	# context, tmp376
	movq	%rdx, 40(%rax)	# tmp376, _213->exp.operands
	.loc 1 6881 0
	movq	-80(%rbp), %rax	# t, tmp377
	movq	(%rax), %rax	# t_29->common.chain, tmp378
	movq	%rax, -80(%rbp)	# tmp378, t
.L1198:
	.loc 1 6879 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, t
	jne	.L1199	#,
.L1197:
.LBE88:
	.loc 1 6886 0
	movq	cfun(%rip), %rax	# cfun, cfun.767
	movzbl	426(%rax), %edx	#, tmp381
	orl	$4, %edx	#, tmp382
	movb	%dl, 426(%rax)	# tmp382,
	.loc 1 6892 0
	movl	$0, immediate_size_expand(%rip)	#, immediate_size_expand
	.loc 1 6893 0
	movq	cfun(%rip), %rax	# cfun, cfun.768
	movzbl	426(%rax), %edx	#, tmp385
	orl	$8, %edx	#, tmp386
	movb	%dl, 426(%rax)	# tmp386,
	.loc 1 6895 0
	movl	-180(%rbp), %eax	# saved_warn_shadow, tmp387
	movl	%eax, warn_shadow(%rip)	# tmp387, warn_shadow
	.loc 1 6896 0
	addq	$184, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	store_parm_decls, .-store_parm_decls
	.section	.rodata
	.align 8
.LC346:
	.string	"no return statement in function returning non-void"
	.text
	.globl	finish_function
	.type	finish_function, @function
finish_function:
.LFB71:
	.loc 1 6911 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# nested, nested
	movl	%esi, -24(%rbp)	# can_defer_p, can_defer_p
	.loc 1 6912 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, tmp92
	movq	%rax, -8(%rbp)	# tmp92, fndecl
	.loc 1 6920 0
	movl	$1, %edx	#,
	movl	$0, %esi	#,
	movl	$1, %edi	#,
	call	poplevel	#
	.loc 1 6921 0
	movq	-8(%rbp), %rax	# fndecl, tmp93
	movq	104(%rax), %rax	# fndecl_1->decl.initial, D.21945
	movq	-8(%rbp), %rdx	# fndecl, tmp94
	movq	%rdx, 48(%rax)	# tmp94, _2->block.supercontext
	.loc 1 6925 0
	movq	-8(%rbp), %rax	# fndecl, tmp95
	movq	96(%rax), %rax	# fndecl_1->decl.result, D.21945
	movq	-8(%rbp), %rdx	# fndecl, tmp96
	movq	%rdx, 80(%rax)	# tmp96, _3->decl.context
	.loc 1 6928 0
	movl	flag_traditional(%rip), %eax	# flag_traditional, flag_traditional.769
	testl	%eax, %eax	# flag_traditional.769
	je	.L1201	#,
	.loc 1 6928 0 is_stmt 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.770
	movzbl	424(%rax), %eax	# *cfun.770_5, D.21946
	andl	$16, %eax	#, D.21946
	testb	%al, %al	# D.21946
	je	.L1201	#,
	.loc 1 6930 0 is_stmt 1
	movq	-8(%rbp), %rax	# fndecl, tmp97
	movq	104(%rax), %rax	# fndecl_1->decl.initial, D.21945
	movq	%rax, %rdi	# D.21945,
	call	setjmp_protect	#
	.loc 1 6931 0
	call	setjmp_protect_args	#
.L1201:
	.loc 1 6934 0
	movq	-8(%rbp), %rax	# fndecl, tmp98
	movq	72(%rax), %rdx	# fndecl_1->decl.name, D.21945
	movq	global_trees+400(%rip), %rax	# global_trees, D.21945
	cmpq	%rax, %rdx	# D.21945, D.21945
	jne	.L1202	#,
	.loc 1 6934 0 is_stmt 0 discriminator 1
	movl	flag_hosted(%rip), %eax	# flag_hosted, flag_hosted.771
	testl	%eax, %eax	# flag_hosted.771
	je	.L1202	#,
	.loc 1 6936 0 is_stmt 1
	movq	-8(%rbp), %rax	# fndecl, tmp99
	movq	8(%rax), %rax	# fndecl_1->common.type, D.21945
	movq	8(%rax), %rax	# _12->common.type, D.21945
	movq	128(%rax), %rdx	# _13->type.main_variant, D.21945
	.loc 1 6937 0
	movq	integer_types+40(%rip), %rax	# integer_types, D.21945
	.loc 1 6936 0
	cmpq	%rax, %rdx	# D.21945, D.21945
	je	.L1203	#,
	.loc 1 6941 0
	movl	warn_main(%rip), %eax	# warn_main, warn_main.772
	testl	%eax, %eax	# warn_main.772
	jne	.L1202	#,
	.loc 1 6942 0
	movq	-8(%rbp), %rax	# fndecl, tmp100
	movl	$.LC329, %esi	#,
	movq	%rax, %rdi	# tmp100,
	movl	$0, %eax	#,
	call	pedwarn_with_decl	#
	jmp	.L1202	#
.L1203:
	.loc 1 6950 0
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.773
	testl	%eax, %eax	# flag_isoc99.773
	je	.L1202	#,
	.loc 1 6951 0
	movq	global_trees+88(%rip), %rax	# global_trees, D.21945
	movq	%rax, %rdi	# D.21945,
	call	c_expand_return	#
.L1202:
	.loc 1 6956 0
	call	finish_fname_decls	#
	.loc 1 6959 0
	movq	-8(%rbp), %rax	# fndecl, tmp101
	addq	$168, %rax	#, D.21947
	movq	%rax, %rdi	# D.21947,
	call	finish_stmt_tree	#
	.loc 1 6962 0
	movl	warn_return_type(%rip), %eax	# warn_return_type, warn_return_type.774
	testl	%eax, %eax	# warn_return_type.774
	je	.L1205	#,
	.loc 1 6963 0
	movq	-8(%rbp), %rax	# fndecl, tmp102
	movq	8(%rax), %rax	# fndecl_1->common.type, D.21945
	movq	8(%rax), %rax	# _21->common.type, D.21945
	movzbl	16(%rax), %eax	# _22->common.code, D.21946
	cmpb	$5, %al	#, D.21946
	je	.L1205	#,
	.loc 1 6964 0
	movl	current_function_returns_value(%rip), %eax	# current_function_returns_value, current_function_returns_value.775
	testl	%eax, %eax	# current_function_returns_value.775
	jne	.L1205	#,
	.loc 1 6964 0 is_stmt 0 discriminator 1
	movl	current_function_returns_null(%rip), %eax	# current_function_returns_null, current_function_returns_null.776
	testl	%eax, %eax	# current_function_returns_null.776
	jne	.L1205	#,
	.loc 1 6966 0 is_stmt 1
	movl	current_function_returns_abnormally(%rip), %eax	# current_function_returns_abnormally, current_function_returns_abnormally.777
	testl	%eax, %eax	# current_function_returns_abnormally.777
	jne	.L1205	#,
	.loc 1 6968 0
	movq	-8(%rbp), %rax	# fndecl, tmp103
	movq	72(%rax), %rdx	# fndecl_1->decl.name, D.21945
	movq	global_trees+400(%rip), %rax	# global_trees, D.21945
	cmpq	%rax, %rdx	# D.21945, D.21945
	je	.L1205	#,
	.loc 1 6970 0
	movq	-8(%rbp), %rax	# fndecl, tmp104
	movzbl	52(%rax), %eax	# *fndecl_1, D.21946
	andl	$64, %eax	#, D.21946
	testb	%al, %al	# D.21946
	jne	.L1205	#,
	.loc 1 6973 0
	movq	-8(%rbp), %rax	# fndecl, tmp105
	movzbl	49(%rax), %eax	# *fndecl_1, D.21946
	andl	$8, %eax	#, D.21946
	testb	%al, %al	# D.21946
	je	.L1205	#,
	.loc 1 6974 0
	movl	$.LC346, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L1205:
	.loc 1 6977 0
	movq	cfun(%rip), %rax	# cfun, cfun.778
	movq	%rax, %rdi	# cfun.778,
	call	free_after_parsing	#
	.loc 1 6980 0
	movq	cfun(%rip), %rax	# cfun, cfun.779
	movq	%rax, %rdi	# cfun.779,
	call	free_after_compilation	#
	.loc 1 6981 0
	movq	$0, cfun(%rip)	#, cfun
	.loc 1 6983 0
	cmpl	$0, -20(%rbp)	#, nested
	jne	.L1200	#,
	.loc 1 6986 0
	movl	-24(%rbp), %edx	# can_defer_p, tmp106
	movl	-20(%rbp), %ecx	# nested, tmp107
	movq	-8(%rbp), %rax	# fndecl, tmp108
	movl	%ecx, %esi	# tmp107,
	movq	%rax, %rdi	# tmp108,
	call	c_expand_body	#
	.loc 1 6991 0
	movq	$0, current_function_decl(%rip)	#, current_function_decl
.L1200:
	.loc 1 6993 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	finish_function, .-finish_function
	.globl	c_expand_deferred_function
	.type	c_expand_deferred_function, @function
c_expand_deferred_function:
.LFB72:
	.loc 1 7000 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# fndecl, fndecl
	.loc 1 7003 0
	movq	-8(%rbp), %rax	# fndecl, tmp62
	movzbl	49(%rax), %eax	# *fndecl_1(D), D.21949
	andl	$8, %eax	#, D.21949
	testb	%al, %al	# D.21949
	je	.L1207	#,
	.loc 1 7003 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# fndecl, tmp63
	movq	96(%rax), %rax	# fndecl_1(D)->decl.result, D.21950
	testq	%rax, %rax	# D.21950
	je	.L1207	#,
	.loc 1 7005 0 is_stmt 1
	movq	-8(%rbp), %rax	# fndecl, tmp64
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp64,
	call	c_expand_body	#
	.loc 1 7006 0
	movq	$0, current_function_decl(%rip)	#, current_function_decl
.L1207:
	.loc 1 7008 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	c_expand_deferred_function, .-c_expand_deferred_function
	.section	.rodata
	.align 8
.LC347:
	.string	"this function may return with or without a value"
	.align 8
.LC348:
	.string	"size of return value of `%s' is %u bytes"
	.align 8
.LC349:
	.string	"size of return value of `%s' is larger than %d bytes"
	.text
	.type	c_expand_body, @function
c_expand_body:
.LFB73:
	.loc 1 7019 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# fndecl, fndecl
	movl	%esi, -44(%rbp)	# nested_p, nested_p
	movl	%edx, -48(%rbp)	# can_defer_p, can_defer_p
	.loc 1 7020 0
	movl	$1, -32(%rbp)	#, uninlinable
	.loc 1 7024 0
	movl	flag_syntax_only(%rip), %eax	# flag_syntax_only, flag_syntax_only.780
	testl	%eax, %eax	# flag_syntax_only.780
	je	.L1210	#,
	.loc 1 7025 0
	jmp	.L1209	#
.L1210:
	.loc 1 7027 0
	movl	flag_inline_trees(%rip), %eax	# flag_inline_trees, flag_inline_trees.781
	testl	%eax, %eax	# flag_inline_trees.781
	je	.L1212	#,
	.loc 1 7032 0
	movl	$12, %edi	#,
	call	timevar_push	#
	.loc 1 7033 0
	movq	-40(%rbp), %rax	# fndecl, tmp126
	movq	%rax, %rdi	# tmp126,
	call	tree_inlinable_function_p	#
	testl	%eax, %eax	# D.21951
	sete	%al	#, D.21952
	movzbl	%al, %eax	# D.21952, tmp127
	movl	%eax, -32(%rbp)	# tmp127, uninlinable
	.loc 1 7035 0
	cmpl	$0, -32(%rbp)	#, uninlinable
	jne	.L1213	#,
	.loc 1 7035 0 is_stmt 0 discriminator 1
	cmpl	$0, -48(%rbp)	#, can_defer_p
	je	.L1213	#,
	.loc 1 7039 0 is_stmt 1
	movq	-40(%rbp), %rax	# fndecl, tmp128
	movq	%rax, %rdi	# tmp128,
	call	defer_fn	#
	testl	%eax, %eax	# D.21951
	je	.L1213	#,
	.loc 1 7042 0
	movq	debug_hooks(%rip), %rax	# debug_hooks, debug_hooks.782
	movq	136(%rax), %rax	# debug_hooks.782_13->deferred_inline_function, D.21953
	movq	-40(%rbp), %rdx	# fndecl, tmp129
	movq	%rdx, %rdi	# tmp129,
	call	*%rax	# D.21953
	.loc 1 7043 0
	movl	$12, %edi	#,
	call	timevar_pop	#
	.loc 1 7044 0
	jmp	.L1209	#
.L1213:
	.loc 1 7048 0
	movq	-40(%rbp), %rax	# fndecl, tmp130
	movq	%rax, %rdi	# tmp130,
	call	optimize_inline_calls	#
	.loc 1 7049 0
	movl	$12, %edi	#,
	call	timevar_pop	#
.L1212:
	.loc 1 7052 0
	movl	$10, %edi	#,
	call	timevar_push	#
	.loc 1 7054 0
	cmpl	$0, -44(%rbp)	#, nested_p
	je	.L1214	#,
	.loc 1 7058 0
	movq	-40(%rbp), %rax	# fndecl, tmp131
	movq	200(%rax), %rax	# fndecl_7(D)->decl.lang_specific, D.21954
	movq	8(%rax), %rax	# _16->pending_sizes, D.21955
	movq	%rax, %rdi	# D.21955,
	call	expand_pending_sizes	#
	.loc 1 7060 0
	call	push_function_context	#
.L1214:
	.loc 1 7064 0
	movq	-40(%rbp), %rax	# fndecl, tmp132
	movq	%rax, current_function_decl(%rip)	# tmp132, current_function_decl
	.loc 1 7065 0
	movq	-40(%rbp), %rax	# fndecl, tmp133
	movq	24(%rax), %rax	# fndecl_7(D)->decl.filename, input_filename.783
	movq	%rax, input_filename(%rip)	# input_filename.783, input_filename
	.loc 1 7066 0
	movq	-40(%rbp), %rax	# fndecl, tmp134
	movl	32(%rax), %edx	# fndecl_7(D)->decl.linenum, D.21951
	movq	input_filename(%rip), %rcx	# input_filename, input_filename.784
	movq	-40(%rbp), %rax	# fndecl, tmp135
	movq	%rcx, %rsi	# input_filename.784,
	movq	%rax, %rdi	# tmp135,
	call	init_function_start	#
	.loc 1 7069 0
	movq	cfun(%rip), %rax	# cfun, cfun.785
	movzbl	426(%rax), %edx	#, tmp138
	orl	$4, %edx	#, tmp139
	movb	%dl, 426(%rax)	# tmp139,
	.loc 1 7075 0
	movl	$0, immediate_size_expand(%rip)	#, immediate_size_expand
	.loc 1 7076 0
	movq	cfun(%rip), %rax	# cfun, cfun.786
	movzbl	426(%rax), %edx	#, tmp142
	orl	$8, %edx	#, tmp143
	movb	%dl, 426(%rax)	# tmp143,
	.loc 1 7079 0
	movl	c_function_varargs(%rip), %eax	# c_function_varargs, c_function_varargs.787
	testl	%eax, %eax	# c_function_varargs.787
	je	.L1215	#,
	.loc 1 7080 0
	call	mark_varargs	#
.L1215:
	.loc 1 7083 0
	movq	-40(%rbp), %rax	# fndecl, tmp144
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp144,
	call	expand_function_start	#
	.loc 1 7087 0
	movq	-40(%rbp), %rax	# fndecl, tmp145
	movq	72(%rax), %rax	# fndecl_7(D)->decl.name, D.21955
	testq	%rax, %rax	# D.21955
	je	.L1216	#,
	.loc 1 7088 0
	movq	-40(%rbp), %rax	# fndecl, tmp146
	movq	72(%rax), %rdx	# fndecl_7(D)->decl.name, D.21955
	movq	global_trees+400(%rip), %rax	# global_trees, D.21955
	cmpq	%rax, %rdx	# D.21955, D.21955
	jne	.L1216	#,
	.loc 1 7089 0
	movq	-40(%rbp), %rax	# fndecl, tmp147
	movq	80(%rax), %rax	# fndecl_7(D)->decl.context, D.21955
	testq	%rax, %rax	# D.21955
	jne	.L1216	#,
	.loc 1 7090 0
	call	expand_main_function	#
.L1216:
	.loc 1 7093 0
	movq	-40(%rbp), %rax	# fndecl, tmp148
	movq	168(%rax), %rax	# fndecl_7(D)->decl.saved_tree, D.21955
	movq	%rax, %rdi	# D.21955,
	call	expand_stmt	#
	.loc 1 7094 0
	cmpl	$0, -32(%rbp)	#, uninlinable
	je	.L1217	#,
	.loc 1 7097 0
	movq	-40(%rbp), %rax	# fndecl, tmp149
	movq	$0, 168(%rax)	#, fndecl_7(D)->decl.saved_tree
.L1217:
	.loc 1 7104 0
	movl	$1, immediate_size_expand(%rip)	#, immediate_size_expand
	.loc 1 7107 0
	movq	lang_expand_function_end(%rip), %rax	# lang_expand_function_end, lang_expand_function_end.788
	testq	%rax, %rax	# lang_expand_function_end.788
	je	.L1218	#,
	.loc 1 7108 0
	movq	lang_expand_function_end(%rip), %rax	# lang_expand_function_end, lang_expand_function_end.789
	call	*%rax	# lang_expand_function_end.789
.L1218:
	.loc 1 7111 0
	movl	lineno(%rip), %ecx	# lineno, lineno.790
	movq	input_filename(%rip), %rax	# input_filename, input_filename.791
	movl	$0, %edx	#,
	movl	%ecx, %esi	# lineno.790,
	movq	%rax, %rdi	# input_filename.791,
	call	expand_function_end	#
	.loc 1 7115 0
	cmpl	$0, -44(%rbp)	#, nested_p
	je	.L1219	#,
	.loc 1 7116 0
	call	ggc_push_context	#
.L1219:
	.loc 1 7119 0
	movq	-40(%rbp), %rax	# fndecl, tmp150
	movq	%rax, %rdi	# tmp150,
	call	rest_of_compilation	#
	.loc 1 7122 0
	cmpl	$0, -44(%rbp)	#, nested_p
	je	.L1220	#,
	.loc 1 7123 0
	call	ggc_pop_context	#
.L1220:
	.loc 1 7127 0
	movl	extra_warnings(%rip), %eax	# extra_warnings, extra_warnings.792
	testl	%eax, %eax	# extra_warnings.792
	je	.L1221	#,
	.loc 1 7128 0
	movl	current_function_returns_value(%rip), %eax	# current_function_returns_value, current_function_returns_value.793
	testl	%eax, %eax	# current_function_returns_value.793
	je	.L1221	#,
	.loc 1 7129 0
	movl	current_function_returns_null(%rip), %eax	# current_function_returns_null, current_function_returns_null.794
	testl	%eax, %eax	# current_function_returns_null.794
	je	.L1221	#,
	.loc 1 7130 0
	movl	$.LC347, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L1221:
	.loc 1 7136 0
	movl	warn_larger_than(%rip), %eax	# warn_larger_than, warn_larger_than.795
	testl	%eax, %eax	# warn_larger_than.795
	je	.L1222	#,
	.loc 1 7136 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# fndecl, tmp151
	movzbl	49(%rax), %eax	# *fndecl_7(D), D.21956
	andl	$1, %eax	#, D.21956
	testb	%al, %al	# D.21956
	jne	.L1222	#,
	movq	-40(%rbp), %rax	# fndecl, tmp152
	movq	8(%rax), %rax	# fndecl_7(D)->common.type, D.21955
	testq	%rax, %rax	# D.21955
	je	.L1222	#,
.LBB89:
	.loc 1 7138 0 is_stmt 1
	movq	-40(%rbp), %rax	# fndecl, tmp153
	movq	8(%rax), %rax	# fndecl_7(D)->common.type, D.21955
	movq	8(%rax), %rax	# _40->common.type, tmp154
	movq	%rax, -24(%rbp)	# tmp154, ret_type
	.loc 1 7140 0
	cmpq	$0, -24(%rbp)	#, ret_type
	je	.L1222	#,
	.loc 1 7140 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# ret_type, tmp155
	movq	40(%rax), %rax	# ret_type_41->type.size_unit, D.21955
	testq	%rax, %rax	# D.21955
	je	.L1222	#,
	.loc 1 7141 0 is_stmt 1
	movq	-24(%rbp), %rax	# ret_type, tmp156
	movq	40(%rax), %rax	# ret_type_41->type.size_unit, D.21955
	movzbl	16(%rax), %eax	# _43->common.code, D.21956
	cmpb	$25, %al	#, D.21956
	jne	.L1222	#,
	.loc 1 7142 0
	movq	larger_than_size(%rip), %rax	# larger_than_size, larger_than_size.796
	movq	%rax, %rdx	# larger_than_size.796, larger_than_size.797
	movq	-24(%rbp), %rax	# ret_type, tmp157
	movq	40(%rax), %rax	# ret_type_41->type.size_unit, D.21955
	movq	%rdx, %rsi	# larger_than_size.797,
	movq	%rax, %rdi	# D.21955,
	call	compare_tree_int	#
	testl	%eax, %eax	# D.21951
	jle	.L1222	#,
.LBB90:
	.loc 1 7146 0
	movq	-24(%rbp), %rax	# ret_type, tmp158
	movq	40(%rax), %rax	# ret_type_41->type.size_unit, D.21955
	movq	32(%rax), %rax	# _49->int_cst.int_cst.low, D.21957
	.loc 1 7145 0
	movl	%eax, -28(%rbp)	# D.21957, size_as_int
	.loc 1 7148 0
	movl	-28(%rbp), %edx	# size_as_int, D.21957
	movq	-24(%rbp), %rax	# ret_type, tmp159
	movq	40(%rax), %rax	# ret_type_41->type.size_unit, D.21955
	movq	%rdx, %rsi	# D.21957,
	movq	%rax, %rdi	# D.21955,
	call	compare_tree_int	#
	testl	%eax, %eax	# D.21951
	jne	.L1223	#,
	.loc 1 7149 0
	movl	-28(%rbp), %edx	# size_as_int, tmp160
	movq	-40(%rbp), %rax	# fndecl, tmp161
	movl	$.LC348, %esi	#,
	movq	%rax, %rdi	# tmp161,
	movl	$0, %eax	#,
	call	warning_with_decl	#
	jmp	.L1222	#
.L1223:
	.loc 1 7153 0
	movq	larger_than_size(%rip), %rdx	# larger_than_size, larger_than_size.798
	movq	-40(%rbp), %rax	# fndecl, tmp162
	movl	$.LC349, %esi	#,
	movq	%rax, %rdi	# tmp162,
	movl	$0, %eax	#,
	call	warning_with_decl	#
.L1222:
.LBE90:
.LBE89:
	.loc 1 7159 0
	movq	-40(%rbp), %rax	# fndecl, tmp163
	movq	160(%rax), %rax	# fndecl_7(D)->decl.u2.f, D.21958
	testq	%rax, %rax	# D.21958
	jne	.L1224	#,
	.loc 1 7159 0 is_stmt 0 discriminator 1
	cmpl	$0, -44(%rbp)	#, nested_p
	jne	.L1224	#,
	.loc 1 7160 0 is_stmt 1
	movl	flag_inline_trees(%rip), %eax	# flag_inline_trees, flag_inline_trees.799
	testl	%eax, %eax	# flag_inline_trees.799
	jne	.L1224	#,
	.loc 1 7167 0
	movq	-40(%rbp), %rax	# fndecl, tmp164
	movq	104(%rax), %rax	# fndecl_7(D)->decl.initial, D.21955
	testq	%rax, %rax	# D.21955
	je	.L1225	#,
	.loc 1 7168 0
	movq	global_trees(%rip), %rdx	# global_trees, D.21955
	movq	-40(%rbp), %rax	# fndecl, tmp165
	movq	%rdx, 104(%rax)	# D.21955, fndecl_7(D)->decl.initial
.L1225:
	.loc 1 7170 0
	movq	-40(%rbp), %rax	# fndecl, tmp166
	movq	$0, 88(%rax)	#, fndecl_7(D)->decl.arguments
.L1224:
	.loc 1 7173 0
	movq	-40(%rbp), %rax	# fndecl, tmp167
	movzbl	50(%rax), %eax	# *fndecl_7(D), D.21956
	andl	$16, %eax	#, D.21956
	testb	%al, %al	# D.21956
	je	.L1226	#,
	.loc 1 7175 0
	movzbl	targetm+329(%rip), %eax	# targetm.have_ctors_dtors, D.21952
	testb	%al, %al	# D.21952
	je	.L1227	#,
	.loc 1 7176 0
	movq	targetm+152(%rip), %rbx	# targetm.asm_out.constructor, D.21959
	movq	-40(%rbp), %rax	# fndecl, tmp168
	movq	144(%rax), %rax	# fndecl_7(D)->decl.rtl, D.21960
	testq	%rax, %rax	# D.21960
	je	.L1228	#,
	.loc 1 7176 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# fndecl, tmp169
	movq	144(%rax), %rax	# fndecl_7(D)->decl.rtl, iftmp.800
	jmp	.L1229	#
.L1228:
	.loc 1 7176 0 discriminator 2
	movq	-40(%rbp), %rax	# fndecl, tmp170
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp170,
	call	make_decl_rtl	#
	movq	-40(%rbp), %rax	# fndecl, tmp171
	movq	144(%rax), %rax	# fndecl_7(D)->decl.rtl, iftmp.800
.L1229:
	.loc 1 7176 0 discriminator 1
	movq	8(%rax), %rax	# iftmp.800_2->fld[0].rtx, D.21960
	movl	$65535, %esi	#,
	movq	%rax, %rdi	# D.21960,
	call	*%rbx	# D.21959
	jmp	.L1226	#
.L1227:
	.loc 1 7179 0 is_stmt 1
	movq	static_ctors(%rip), %rdx	# static_ctors, static_ctors.801
	movq	-40(%rbp), %rax	# fndecl, tmp172
	movq	%rax, %rsi	# tmp172,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, static_ctors(%rip)	# static_ctors.802, static_ctors
.L1226:
	.loc 1 7182 0
	movq	-40(%rbp), %rax	# fndecl, tmp173
	movzbl	50(%rax), %eax	# *fndecl_7(D), D.21956
	andl	$32, %eax	#, D.21956
	testb	%al, %al	# D.21956
	je	.L1230	#,
	.loc 1 7184 0
	movzbl	targetm+329(%rip), %eax	# targetm.have_ctors_dtors, D.21952
	testb	%al, %al	# D.21952
	je	.L1231	#,
	.loc 1 7185 0
	movq	targetm+160(%rip), %rbx	# targetm.asm_out.destructor, D.21959
	movq	-40(%rbp), %rax	# fndecl, tmp174
	movq	144(%rax), %rax	# fndecl_7(D)->decl.rtl, D.21960
	testq	%rax, %rax	# D.21960
	je	.L1232	#,
	.loc 1 7185 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# fndecl, tmp175
	movq	144(%rax), %rax	# fndecl_7(D)->decl.rtl, iftmp.803
	jmp	.L1233	#
.L1232:
	.loc 1 7185 0 discriminator 2
	movq	-40(%rbp), %rax	# fndecl, tmp176
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp176,
	call	make_decl_rtl	#
	movq	-40(%rbp), %rax	# fndecl, tmp177
	movq	144(%rax), %rax	# fndecl_7(D)->decl.rtl, iftmp.803
.L1233:
	movq	8(%rax), %rax	# iftmp.803_3->fld[0].rtx, D.21960
	movl	$65535, %esi	#,
	movq	%rax, %rdi	# D.21960,
	call	*%rbx	# D.21959
	jmp	.L1230	#
.L1231:
	.loc 1 7188 0 is_stmt 1
	movq	static_dtors(%rip), %rdx	# static_dtors, static_dtors.804
	movq	-40(%rbp), %rax	# fndecl, tmp178
	movq	%rax, %rsi	# tmp178,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, static_dtors(%rip)	# static_dtors.805, static_dtors
.L1230:
	.loc 1 7191 0
	cmpl	$0, -44(%rbp)	#, nested_p
	je	.L1234	#,
	.loc 1 7193 0
	call	pop_function_context	#
.L1234:
	.loc 1 7194 0
	movl	$10, %edi	#,
	call	timevar_pop	#
.L1209:
	.loc 1 7195 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	c_expand_body, .-c_expand_body
	.section	.rodata
	.align 8
.LC350:
	.string	"`for' loop initial declaration used outside C99 mode"
	.align 8
.LC351:
	.string	"`struct %s' declared in `for' loop initial declaration"
	.align 8
.LC352:
	.string	"`union %s' declared in `for' loop initial declaration"
	.align 8
.LC353:
	.string	"`enum %s' declared in `for' loop initial declaration"
	.align 8
.LC354:
	.string	"declaration of non-variable `%s' in `for' loop initial declaration"
	.align 8
.LC355:
	.string	"declaration of static variable `%s' in `for' loop initial declaration"
	.align 8
.LC356:
	.string	"declaration of `extern' variable `%s' in `for' loop initial declaration"
	.text
	.globl	check_for_loop_decls
	.type	check_for_loop_decls, @function
check_for_loop_decls:
.LFB74:
	.loc 1 7201 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 7204 0
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.806
	testl	%eax, %eax	# flag_isoc99.806
	jne	.L1236	#,
	.loc 1 7209 0
	movl	$.LC350, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 7210 0
	jmp	.L1235	#
.L1236:
	.loc 1 7226 0
	call	gettags	#
	movq	%rax, -8(%rbp)	# tmp75, t
	jmp	.L1238	#
.L1242:
	.loc 1 7228 0
	movq	-8(%rbp), %rax	# t, tmp76
	movq	24(%rax), %rax	# t_1->list.purpose, D.21964
	testq	%rax, %rax	# D.21964
	je	.L1239	#,
.LBB91:
	.loc 1 7230 0
	movq	-8(%rbp), %rax	# t, tmp77
	movq	32(%rax), %rax	# t_1->list.value, D.21964
	movzbl	16(%rax), %eax	# _6->common.code, D.21965
	movzbl	%al, %eax	# D.21965, tmp78
	movl	%eax, -12(%rbp)	# tmp78, code
	.loc 1 7232 0
	cmpl	$20, -12(%rbp)	#, code
	jne	.L1240	#,
	.loc 1 7234 0
	movq	-8(%rbp), %rax	# t, tmp79
	movq	24(%rax), %rax	# t_1->list.purpose, D.21964
	movq	32(%rax), %rax	# _9->identifier.id.str, D.21966
	.loc 1 7233 0
	movq	%rax, %rsi	# D.21966,
	movl	$.LC351, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	jmp	.L1239	#
.L1240:
	.loc 1 7235 0
	cmpl	$21, -12(%rbp)	#, code
	jne	.L1241	#,
	.loc 1 7237 0
	movq	-8(%rbp), %rax	# t, tmp80
	movq	24(%rax), %rax	# t_1->list.purpose, D.21964
	movq	32(%rax), %rax	# _11->identifier.id.str, D.21966
	.loc 1 7236 0
	movq	%rax, %rsi	# D.21966,
	movl	$.LC352, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	jmp	.L1239	#
.L1241:
	.loc 1 7240 0
	movq	-8(%rbp), %rax	# t, tmp81
	movq	24(%rax), %rax	# t_1->list.purpose, D.21964
	movq	32(%rax), %rax	# _13->identifier.id.str, D.21966
	.loc 1 7239 0
	movq	%rax, %rsi	# D.21966,
	movl	$.LC353, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.L1239:
.LBE91:
	.loc 1 7226 0
	movq	-8(%rbp), %rax	# t, tmp82
	movq	(%rax), %rax	# t_1->common.chain, tmp83
	movq	%rax, -8(%rbp)	# tmp83, t
.L1238:
	.loc 1 7226 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, t
	jne	.L1242	#,
	.loc 1 7244 0 is_stmt 1
	call	getdecls	#
	movq	%rax, -8(%rbp)	# tmp84, t
	jmp	.L1243	#
.L1247:
	.loc 1 7246 0
	movq	-8(%rbp), %rax	# t, tmp85
	movzbl	16(%rax), %eax	# t_2->common.code, D.21965
	cmpb	$34, %al	#, D.21965
	je	.L1244	#,
	.loc 1 7246 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# t, tmp86
	movq	72(%rax), %rax	# t_2->decl.name, D.21964
	testq	%rax, %rax	# D.21964
	je	.L1244	#,
	.loc 1 7247 0 is_stmt 1
	movq	-8(%rbp), %rax	# t, tmp87
	movl	$.LC354, %esi	#,
	movq	%rax, %rdi	# tmp87,
	movl	$0, %eax	#,
	call	error_with_decl	#
	jmp	.L1245	#
.L1244:
	.loc 1 7248 0
	movq	-8(%rbp), %rax	# t, tmp88
	movzbl	18(%rax), %eax	# *t_2, D.21965
	andl	$4, %eax	#, D.21965
	testb	%al, %al	# D.21965
	je	.L1246	#,
	.loc 1 7249 0
	movq	-8(%rbp), %rax	# t, tmp89
	movl	$.LC355, %esi	#,
	movq	%rax, %rdi	# tmp89,
	movl	$0, %eax	#,
	call	error_with_decl	#
	jmp	.L1245	#
.L1246:
	.loc 1 7250 0
	movq	-8(%rbp), %rax	# t, tmp90
	movzbl	49(%rax), %eax	# *t_2, D.21965
	andl	$1, %eax	#, D.21965
	testb	%al, %al	# D.21965
	je	.L1245	#,
	.loc 1 7251 0
	movq	-8(%rbp), %rax	# t, tmp91
	movl	$.LC356, %esi	#,
	movq	%rax, %rdi	# tmp91,
	movl	$0, %eax	#,
	call	error_with_decl	#
.L1245:
	.loc 1 7244 0
	movq	-8(%rbp), %rax	# t, tmp92
	movq	(%rax), %rax	# t_2->common.chain, tmp93
	movq	%rax, -8(%rbp)	# tmp93, t
.L1243:
	.loc 1 7244 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, t
	jne	.L1247	#,
.L1235:
	.loc 1 7253 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	check_for_loop_decls, .-check_for_loop_decls
	.globl	push_c_function_context
	.type	push_c_function_context, @function
push_c_function_context:
.LFB75:
	.loc 1 7278 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 7280 0
	movl	$88, %edi	#,
	call	xmalloc	#
	movq	%rax, -8(%rbp)	# tmp68, p
	.loc 1 7282 0
	movq	-24(%rbp), %rax	# f, tmp69
	movq	-8(%rbp), %rdx	# p, tmp70
	movq	%rdx, 408(%rax)	# tmp70, f_2(D)->language
	.loc 1 7284 0
	movq	-8(%rbp), %rax	# p, tmp71
	movq	c_stmt_tree(%rip), %rdx	# c_stmt_tree, tmp73
	movq	%rdx, (%rax)	# tmp73, p_1->base.x_stmt_tree
	movq	c_stmt_tree+8(%rip), %rdx	# c_stmt_tree, tmp74
	movq	%rdx, 8(%rax)	# tmp74, p_1->base.x_stmt_tree
	movq	c_stmt_tree+16(%rip), %rdx	# c_stmt_tree, tmp75
	movq	%rdx, 16(%rax)	# tmp75, p_1->base.x_stmt_tree
	movq	c_stmt_tree+24(%rip), %rdx	# c_stmt_tree, tmp76
	movq	%rdx, 24(%rax)	# tmp76, p_1->base.x_stmt_tree
	.loc 1 7285 0
	movq	c_scope_stmt_stack(%rip), %rdx	# c_scope_stmt_stack, c_scope_stmt_stack.807
	movq	-8(%rbp), %rax	# p, tmp77
	movq	%rdx, 32(%rax)	# c_scope_stmt_stack.807, p_1->base.x_scope_stmt_stack
	.loc 1 7286 0
	movq	named_labels(%rip), %rdx	# named_labels, named_labels.808
	movq	-8(%rbp), %rax	# p, tmp78
	movq	%rdx, 40(%rax)	# named_labels.808, p_1->named_labels
	.loc 1 7287 0
	movq	shadowed_labels(%rip), %rdx	# shadowed_labels, shadowed_labels.809
	movq	-8(%rbp), %rax	# p, tmp79
	movq	%rdx, 48(%rax)	# shadowed_labels.809, p_1->shadowed_labels
	.loc 1 7288 0
	movl	current_function_returns_value(%rip), %edx	# current_function_returns_value, current_function_returns_value.810
	movq	-8(%rbp), %rax	# p, tmp80
	movl	%edx, 56(%rax)	# current_function_returns_value.810, p_1->returns_value
	.loc 1 7289 0
	movl	current_function_returns_null(%rip), %edx	# current_function_returns_null, current_function_returns_null.811
	movq	-8(%rbp), %rax	# p, tmp81
	movl	%edx, 60(%rax)	# current_function_returns_null.811, p_1->returns_null
	.loc 1 7290 0
	movl	current_function_returns_abnormally(%rip), %edx	# current_function_returns_abnormally, current_function_returns_abnormally.812
	movq	-8(%rbp), %rax	# p, tmp82
	movl	%edx, 64(%rax)	# current_function_returns_abnormally.812, p_1->returns_abnormally
	.loc 1 7291 0
	movl	warn_about_return_type(%rip), %edx	# warn_about_return_type, warn_about_return_type.813
	movq	-8(%rbp), %rax	# p, tmp83
	movl	%edx, 68(%rax)	# warn_about_return_type.813, p_1->warn_about_return_type
	.loc 1 7292 0
	movl	current_extern_inline(%rip), %edx	# current_extern_inline, current_extern_inline.814
	movq	-8(%rbp), %rax	# p, tmp84
	movl	%edx, 72(%rax)	# current_extern_inline.814, p_1->extern_inline
	.loc 1 7293 0
	movq	current_binding_level(%rip), %rdx	# current_binding_level, current_binding_level.815
	movq	-8(%rbp), %rax	# p, tmp85
	movq	%rdx, 80(%rax)	# current_binding_level.815, p_1->binding_level
	.loc 1 7294 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	push_c_function_context, .-push_c_function_context
	.globl	pop_c_function_context
	.type	pop_c_function_context, @function
pop_c_function_context:
.LFB76:
	.loc 1 7301 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 7302 0
	movq	-24(%rbp), %rax	# f, tmp80
	movq	408(%rax), %rax	# f_2(D)->language, tmp81
	movq	%rax, -8(%rbp)	# tmp81, p
	.loc 1 7307 0
	movq	shadowed_labels(%rip), %rax	# shadowed_labels, tmp82
	movq	%rax, -16(%rbp)	# tmp82, link
	jmp	.L1250	#
.L1252:
	.loc 1 7308 0
	movq	-16(%rbp), %rax	# link, tmp83
	movq	32(%rax), %rax	# link_1->list.value, D.21974
	movq	72(%rax), %rax	# _5->decl.name, D.21974
	testq	%rax, %rax	# D.21974
	je	.L1251	#,
	.loc 1 7309 0
	movq	-16(%rbp), %rax	# link, tmp84
	movq	32(%rax), %rax	# link_1->list.value, D.21974
	movq	72(%rax), %rax	# _7->decl.name, D.21974
	.loc 1 7310 0
	movq	-16(%rbp), %rdx	# link, tmp85
	movq	32(%rdx), %rdx	# link_1->list.value, D.21974
	movq	%rdx, 72(%rax)	# D.21974, MEM[(struct lang_identifier *)_8].label_value
.L1251:
	.loc 1 7307 0
	movq	-16(%rbp), %rax	# link, tmp86
	movq	(%rax), %rax	# link_1->common.chain, tmp87
	movq	%rax, -16(%rbp)	# tmp87, link
.L1250:
	.loc 1 7307 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, link
	jne	.L1252	#,
	.loc 1 7312 0 is_stmt 1
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.816
	movq	160(%rax), %rax	# current_function_decl.816_11->decl.u2.f, D.21975
	testq	%rax, %rax	# D.21975
	jne	.L1253	#,
	.loc 1 7313 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.817
	movq	168(%rax), %rax	# current_function_decl.817_13->decl.saved_tree, D.21974
	testq	%rax, %rax	# D.21974
	jne	.L1253	#,
	.loc 1 7318 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.818
	movq	global_trees(%rip), %rdx	# global_trees, D.21974
	movq	%rdx, 104(%rax)	# D.21974, current_function_decl.818_15->decl.initial
	.loc 1 7319 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.819
	movq	$0, 88(%rax)	#, current_function_decl.819_17->decl.arguments
.L1253:
	.loc 1 7322 0
	movq	-8(%rbp), %rax	# p, tmp88
	movq	(%rax), %rdx	# p_3->base.x_stmt_tree, tmp90
	movq	%rdx, c_stmt_tree(%rip)	# tmp90, c_stmt_tree
	movq	8(%rax), %rdx	# p_3->base.x_stmt_tree, tmp91
	movq	%rdx, c_stmt_tree+8(%rip)	# tmp91, c_stmt_tree
	movq	16(%rax), %rdx	# p_3->base.x_stmt_tree, tmp92
	movq	%rdx, c_stmt_tree+16(%rip)	# tmp92, c_stmt_tree
	movq	24(%rax), %rax	# p_3->base.x_stmt_tree, tmp93
	movq	%rax, c_stmt_tree+24(%rip)	# tmp93, c_stmt_tree
	.loc 1 7323 0
	movq	-8(%rbp), %rax	# p, tmp94
	movq	32(%rax), %rax	# p_3->base.x_scope_stmt_stack, c_scope_stmt_stack.820
	movq	%rax, c_scope_stmt_stack(%rip)	# c_scope_stmt_stack.820, c_scope_stmt_stack
	.loc 1 7324 0
	movq	-8(%rbp), %rax	# p, tmp95
	movq	40(%rax), %rax	# p_3->named_labels, named_labels.821
	movq	%rax, named_labels(%rip)	# named_labels.821, named_labels
	.loc 1 7325 0
	movq	-8(%rbp), %rax	# p, tmp96
	movq	48(%rax), %rax	# p_3->shadowed_labels, shadowed_labels.822
	movq	%rax, shadowed_labels(%rip)	# shadowed_labels.822, shadowed_labels
	.loc 1 7326 0
	movq	-8(%rbp), %rax	# p, tmp97
	movl	56(%rax), %eax	# p_3->returns_value, current_function_returns_value.823
	movl	%eax, current_function_returns_value(%rip)	# current_function_returns_value.823, current_function_returns_value
	.loc 1 7327 0
	movq	-8(%rbp), %rax	# p, tmp98
	movl	60(%rax), %eax	# p_3->returns_null, current_function_returns_null.824
	movl	%eax, current_function_returns_null(%rip)	# current_function_returns_null.824, current_function_returns_null
	.loc 1 7328 0
	movq	-8(%rbp), %rax	# p, tmp99
	movl	64(%rax), %eax	# p_3->returns_abnormally, current_function_returns_abnormally.825
	movl	%eax, current_function_returns_abnormally(%rip)	# current_function_returns_abnormally.825, current_function_returns_abnormally
	.loc 1 7329 0
	movq	-8(%rbp), %rax	# p, tmp100
	movl	68(%rax), %eax	# p_3->warn_about_return_type, warn_about_return_type.826
	movl	%eax, warn_about_return_type(%rip)	# warn_about_return_type.826, warn_about_return_type
	.loc 1 7330 0
	movq	-8(%rbp), %rax	# p, tmp101
	movl	72(%rax), %eax	# p_3->extern_inline, current_extern_inline.827
	movl	%eax, current_extern_inline(%rip)	# current_extern_inline.827, current_extern_inline
	.loc 1 7331 0
	movq	-8(%rbp), %rax	# p, tmp102
	movq	80(%rax), %rax	# p_3->binding_level, current_binding_level.828
	movq	%rax, current_binding_level(%rip)	# current_binding_level.828, current_binding_level
	.loc 1 7333 0
	movq	-8(%rbp), %rax	# p, tmp103
	movq	%rax, %rdi	# tmp103,
	call	free	#
	.loc 1 7334 0
	movq	-24(%rbp), %rax	# f, tmp104
	movq	$0, 408(%rax)	#, f_2(D)->language
	.loc 1 7335 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	pop_c_function_context, .-pop_c_function_context
	.globl	mark_c_function_context
	.type	mark_c_function_context, @function
mark_c_function_context:
.LFB77:
	.loc 1 7342 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# f, f
	.loc 1 7343 0
	movq	-40(%rbp), %rax	# f, tmp89
	movq	408(%rax), %rax	# f_1(D)->language, tmp90
	movq	%rax, -24(%rbp)	# tmp90, p
	.loc 1 7346 0
	cmpq	$0, -24(%rbp)	#, p
	jne	.L1255	#,
	.loc 1 7347 0
	jmp	.L1254	#
.L1255:
	.loc 1 7349 0
	movq	-24(%rbp), %rax	# p, D.21976
	movq	%rax, %rdi	# D.21976,
	call	mark_c_language_function	#
.LBB92:
	.loc 1 7350 0
	movq	-24(%rbp), %rax	# p, tmp91
	movq	48(%rax), %rax	# p_2->shadowed_labels, tmp92
	movq	%rax, -16(%rbp)	# tmp92, t__
	cmpq	$0, -16(%rbp)	#, t__
	je	.L1257	#,
	.loc 1 7350 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# t__, tmp93
	movq	%rax, %rdi	# tmp93,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.21977
	jne	.L1257	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.829
	movq	8(%rax), %rdx	# ggc_pending_trees.829_6->elements_used, D.21978
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.830
	movq	(%rax), %rax	# ggc_pending_trees.830_8->num_elements, D.21978
	cmpq	%rax, %rdx	# D.21978, D.21978
	jb	.L1258	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.831
	movq	(%rax), %rax	# ggc_pending_trees.831_10->num_elements, D.21978
	leaq	(%rax,%rax), %rdx	#, D.21978
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.832
	movq	%rdx, %rsi	# D.21978,
	movq	%rax, %rdi	# ggc_pending_trees.832,
	call	varray_grow	#
	movq	%rax, ggc_pending_trees(%rip)	# ggc_pending_trees.833, ggc_pending_trees
.L1258:
	.loc 1 7350 0 discriminator 2
	movq	ggc_pending_trees(%rip), %rcx	# ggc_pending_trees, ggc_pending_trees.834
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.835
	movq	8(%rax), %rdx	# ggc_pending_trees.835_16->elements_used, D.21978
	leaq	1(%rdx), %rsi	#, D.21978
	movq	%rsi, 8(%rax)	# D.21978, ggc_pending_trees.835_16->elements_used
	addq	$4, %rdx	#, tmp94
	movq	-16(%rbp), %rax	# t__, tmp95
	movq	%rax, (%rcx,%rdx,8)	# tmp95, ggc_pending_trees.834_15->data.tree
.L1257:
.LBE92:
.LBB93:
	.loc 1 7351 0 is_stmt 1
	movq	-24(%rbp), %rax	# p, tmp96
	movq	40(%rax), %rax	# p_2->named_labels, tmp97
	movq	%rax, -8(%rbp)	# tmp97, t__
	cmpq	$0, -8(%rbp)	#, t__
	je	.L1259	#,
	.loc 1 7351 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# t__, tmp98
	movq	%rax, %rdi	# tmp98,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.21977
	jne	.L1259	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.836
	movq	8(%rax), %rdx	# ggc_pending_trees.836_22->elements_used, D.21978
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.837
	movq	(%rax), %rax	# ggc_pending_trees.837_24->num_elements, D.21978
	cmpq	%rax, %rdx	# D.21978, D.21978
	jb	.L1260	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.838
	movq	(%rax), %rax	# ggc_pending_trees.838_26->num_elements, D.21978
	leaq	(%rax,%rax), %rdx	#, D.21978
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.839
	movq	%rdx, %rsi	# D.21978,
	movq	%rax, %rdi	# ggc_pending_trees.839,
	call	varray_grow	#
	movq	%rax, ggc_pending_trees(%rip)	# ggc_pending_trees.840, ggc_pending_trees
.L1260:
	.loc 1 7351 0 discriminator 2
	movq	ggc_pending_trees(%rip), %rcx	# ggc_pending_trees, ggc_pending_trees.841
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.842
	movq	8(%rax), %rdx	# ggc_pending_trees.842_32->elements_used, D.21978
	leaq	1(%rdx), %rsi	#, D.21978
	movq	%rsi, 8(%rax)	# D.21978, ggc_pending_trees.842_32->elements_used
	addq	$4, %rdx	#, tmp99
	movq	-8(%rbp), %rax	# t__, tmp100
	movq	%rax, (%rcx,%rdx,8)	# tmp100, ggc_pending_trees.841_31->data.tree
.L1259:
.LBE93:
	.loc 1 7352 0 is_stmt 1
	movq	-24(%rbp), %rax	# p, tmp101
	addq	$80, %rax	#, D.21979
	movq	%rax, %rdi	# D.21979,
	call	mark_binding_level	#
.L1254:
	.loc 1 7353 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	mark_c_function_context, .-mark_c_function_context
	.globl	copy_lang_decl
	.type	copy_lang_decl, @function
copy_lang_decl:
.LFB78:
	.loc 1 7360 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# decl, decl
	.loc 1 7363 0
	movq	-24(%rbp), %rax	# decl, tmp61
	movq	200(%rax), %rax	# decl_1(D)->decl.lang_specific, D.21980
	testq	%rax, %rax	# D.21980
	jne	.L1262	#,
	.loc 1 7364 0
	jmp	.L1261	#
.L1262:
	.loc 1 7366 0
	movl	$16, %edi	#,
	call	ggc_alloc	#
	movq	%rax, -8(%rbp)	# tmp62, ld
	.loc 1 7367 0
	movq	-24(%rbp), %rax	# decl, tmp63
	movq	200(%rax), %rcx	# decl_1(D)->decl.lang_specific, D.21980
	movq	-8(%rbp), %rax	# ld, tmp64
	movl	$16, %edx	#,
	movq	%rcx, %rsi	# D.21980,
	movq	%rax, %rdi	# tmp64,
	call	memcpy	#
	.loc 1 7369 0
	movq	-24(%rbp), %rax	# decl, tmp65
	movq	-8(%rbp), %rdx	# ld, tmp66
	movq	%rdx, 200(%rax)	# tmp66, decl_1(D)->decl.lang_specific
.L1261:
	.loc 1 7370 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	copy_lang_decl, .-copy_lang_decl
	.globl	lang_mark_tree
	.type	lang_mark_tree, @function
lang_mark_tree:
.LFB79:
	.loc 1 7377 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -88(%rbp)	# t, t
	.loc 1 7378 0
	movq	-88(%rbp), %rax	# t, tmp169
	movzbl	16(%rax), %eax	# t_1(D)->common.code, D.21981
	cmpb	$1, %al	#, D.21981
	jne	.L1265	#,
.LBB94:
	.loc 1 7380 0
	movq	-88(%rbp), %rax	# t, tmp170
	movq	%rax, -80(%rbp)	# tmp170, i
.LBB95:
	.loc 1 7381 0
	movq	-80(%rbp), %rax	# i, tmp171
	movq	56(%rax), %rax	# i_3->global_value, tmp172
	movq	%rax, -72(%rbp)	# tmp172, t__
	cmpq	$0, -72(%rbp)	#, t__
	je	.L1266	#,
	.loc 1 7381 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# t__, tmp173
	movq	%rax, %rdi	# tmp173,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.21982
	jne	.L1266	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.843
	movq	8(%rax), %rdx	# ggc_pending_trees.843_6->elements_used, D.21983
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.844
	movq	(%rax), %rax	# ggc_pending_trees.844_8->num_elements, D.21983
	cmpq	%rax, %rdx	# D.21983, D.21983
	jb	.L1267	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.845
	movq	(%rax), %rax	# ggc_pending_trees.845_10->num_elements, D.21983
	leaq	(%rax,%rax), %rdx	#, D.21983
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.846
	movq	%rdx, %rsi	# D.21983,
	movq	%rax, %rdi	# ggc_pending_trees.846,
	call	varray_grow	#
	movq	%rax, ggc_pending_trees(%rip)	# ggc_pending_trees.847, ggc_pending_trees
.L1267:
	.loc 1 7381 0 discriminator 2
	movq	ggc_pending_trees(%rip), %rcx	# ggc_pending_trees, ggc_pending_trees.848
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.849
	movq	8(%rax), %rdx	# ggc_pending_trees.849_16->elements_used, D.21983
	leaq	1(%rdx), %rsi	#, D.21983
	movq	%rsi, 8(%rax)	# D.21983, ggc_pending_trees.849_16->elements_used
	addq	$4, %rdx	#, tmp174
	movq	-72(%rbp), %rax	# t__, tmp175
	movq	%rax, (%rcx,%rdx,8)	# tmp175, ggc_pending_trees.848_15->data.tree
.L1266:
.LBE95:
.LBB96:
	.loc 1 7382 0 is_stmt 1
	movq	-80(%rbp), %rax	# i, tmp176
	movq	64(%rax), %rax	# i_3->local_value, tmp177
	movq	%rax, -64(%rbp)	# tmp177, t__
	cmpq	$0, -64(%rbp)	#, t__
	je	.L1268	#,
	.loc 1 7382 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# t__, tmp178
	movq	%rax, %rdi	# tmp178,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.21982
	jne	.L1268	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.850
	movq	8(%rax), %rdx	# ggc_pending_trees.850_22->elements_used, D.21983
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.851
	movq	(%rax), %rax	# ggc_pending_trees.851_24->num_elements, D.21983
	cmpq	%rax, %rdx	# D.21983, D.21983
	jb	.L1269	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.852
	movq	(%rax), %rax	# ggc_pending_trees.852_26->num_elements, D.21983
	leaq	(%rax,%rax), %rdx	#, D.21983
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.853
	movq	%rdx, %rsi	# D.21983,
	movq	%rax, %rdi	# ggc_pending_trees.853,
	call	varray_grow	#
	movq	%rax, ggc_pending_trees(%rip)	# ggc_pending_trees.854, ggc_pending_trees
.L1269:
	.loc 1 7382 0 discriminator 2
	movq	ggc_pending_trees(%rip), %rcx	# ggc_pending_trees, ggc_pending_trees.855
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.856
	movq	8(%rax), %rdx	# ggc_pending_trees.856_32->elements_used, D.21983
	leaq	1(%rdx), %rsi	#, D.21983
	movq	%rsi, 8(%rax)	# D.21983, ggc_pending_trees.856_32->elements_used
	addq	$4, %rdx	#, tmp179
	movq	-64(%rbp), %rax	# t__, tmp180
	movq	%rax, (%rcx,%rdx,8)	# tmp180, ggc_pending_trees.855_31->data.tree
.L1268:
.LBE96:
.LBB97:
	.loc 1 7383 0 is_stmt 1
	movq	-80(%rbp), %rax	# i, tmp181
	movq	72(%rax), %rax	# i_3->label_value, tmp182
	movq	%rax, -56(%rbp)	# tmp182, t__
	cmpq	$0, -56(%rbp)	#, t__
	je	.L1270	#,
	.loc 1 7383 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# t__, tmp183
	movq	%rax, %rdi	# tmp183,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.21982
	jne	.L1270	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.857
	movq	8(%rax), %rdx	# ggc_pending_trees.857_38->elements_used, D.21983
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.858
	movq	(%rax), %rax	# ggc_pending_trees.858_40->num_elements, D.21983
	cmpq	%rax, %rdx	# D.21983, D.21983
	jb	.L1271	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.859
	movq	(%rax), %rax	# ggc_pending_trees.859_42->num_elements, D.21983
	leaq	(%rax,%rax), %rdx	#, D.21983
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.860
	movq	%rdx, %rsi	# D.21983,
	movq	%rax, %rdi	# ggc_pending_trees.860,
	call	varray_grow	#
	movq	%rax, ggc_pending_trees(%rip)	# ggc_pending_trees.861, ggc_pending_trees
.L1271:
	.loc 1 7383 0 discriminator 2
	movq	ggc_pending_trees(%rip), %rcx	# ggc_pending_trees, ggc_pending_trees.862
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.863
	movq	8(%rax), %rdx	# ggc_pending_trees.863_48->elements_used, D.21983
	leaq	1(%rdx), %rsi	#, D.21983
	movq	%rsi, 8(%rax)	# D.21983, ggc_pending_trees.863_48->elements_used
	addq	$4, %rdx	#, tmp184
	movq	-56(%rbp), %rax	# t__, tmp185
	movq	%rax, (%rcx,%rdx,8)	# tmp185, ggc_pending_trees.862_47->data.tree
.L1270:
.LBE97:
.LBB98:
	.loc 1 7384 0 is_stmt 1
	movq	-80(%rbp), %rax	# i, tmp186
	movq	80(%rax), %rax	# i_3->implicit_decl, tmp187
	movq	%rax, -48(%rbp)	# tmp187, t__
	cmpq	$0, -48(%rbp)	#, t__
	je	.L1272	#,
	.loc 1 7384 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# t__, tmp188
	movq	%rax, %rdi	# tmp188,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.21982
	jne	.L1272	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.864
	movq	8(%rax), %rdx	# ggc_pending_trees.864_54->elements_used, D.21983
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.865
	movq	(%rax), %rax	# ggc_pending_trees.865_56->num_elements, D.21983
	cmpq	%rax, %rdx	# D.21983, D.21983
	jb	.L1273	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.866
	movq	(%rax), %rax	# ggc_pending_trees.866_58->num_elements, D.21983
	leaq	(%rax,%rax), %rdx	#, D.21983
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.867
	movq	%rdx, %rsi	# D.21983,
	movq	%rax, %rdi	# ggc_pending_trees.867,
	call	varray_grow	#
	movq	%rax, ggc_pending_trees(%rip)	# ggc_pending_trees.868, ggc_pending_trees
.L1273:
	.loc 1 7384 0 discriminator 2
	movq	ggc_pending_trees(%rip), %rcx	# ggc_pending_trees, ggc_pending_trees.869
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.870
	movq	8(%rax), %rdx	# ggc_pending_trees.870_64->elements_used, D.21983
	leaq	1(%rdx), %rsi	#, D.21983
	movq	%rsi, 8(%rax)	# D.21983, ggc_pending_trees.870_64->elements_used
	addq	$4, %rdx	#, tmp189
	movq	-48(%rbp), %rax	# t__, tmp190
	movq	%rax, (%rcx,%rdx,8)	# tmp190, ggc_pending_trees.869_63->data.tree
.L1272:
.LBE98:
.LBB99:
	.loc 1 7385 0 is_stmt 1
	movq	-80(%rbp), %rax	# i, tmp191
	movq	88(%rax), %rax	# i_3->error_locus, tmp192
	movq	%rax, -40(%rbp)	# tmp192, t__
	cmpq	$0, -40(%rbp)	#, t__
	je	.L1274	#,
	.loc 1 7385 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# t__, tmp193
	movq	%rax, %rdi	# tmp193,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.21982
	jne	.L1274	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.871
	movq	8(%rax), %rdx	# ggc_pending_trees.871_70->elements_used, D.21983
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.872
	movq	(%rax), %rax	# ggc_pending_trees.872_72->num_elements, D.21983
	cmpq	%rax, %rdx	# D.21983, D.21983
	jb	.L1275	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.873
	movq	(%rax), %rax	# ggc_pending_trees.873_74->num_elements, D.21983
	leaq	(%rax,%rax), %rdx	#, D.21983
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.874
	movq	%rdx, %rsi	# D.21983,
	movq	%rax, %rdi	# ggc_pending_trees.874,
	call	varray_grow	#
	movq	%rax, ggc_pending_trees(%rip)	# ggc_pending_trees.875, ggc_pending_trees
.L1275:
	.loc 1 7385 0 discriminator 2
	movq	ggc_pending_trees(%rip), %rcx	# ggc_pending_trees, ggc_pending_trees.876
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.877
	movq	8(%rax), %rdx	# ggc_pending_trees.877_80->elements_used, D.21983
	leaq	1(%rdx), %rsi	#, D.21983
	movq	%rsi, 8(%rax)	# D.21983, ggc_pending_trees.877_80->elements_used
	addq	$4, %rdx	#, tmp194
	movq	-40(%rbp), %rax	# t__, tmp195
	movq	%rax, (%rcx,%rdx,8)	# tmp195, ggc_pending_trees.876_79->data.tree
.L1274:
.LBE99:
.LBB100:
	.loc 1 7386 0 is_stmt 1
	movq	-80(%rbp), %rax	# i, tmp196
	movq	96(%rax), %rax	# i_3->limbo_value, tmp197
	movq	%rax, -32(%rbp)	# tmp197, t__
	cmpq	$0, -32(%rbp)	#, t__
	je	.L1276	#,
	.loc 1 7386 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# t__, tmp198
	movq	%rax, %rdi	# tmp198,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.21982
	jne	.L1276	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.878
	movq	8(%rax), %rdx	# ggc_pending_trees.878_86->elements_used, D.21983
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.879
	movq	(%rax), %rax	# ggc_pending_trees.879_88->num_elements, D.21983
	cmpq	%rax, %rdx	# D.21983, D.21983
	jb	.L1277	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.880
	movq	(%rax), %rax	# ggc_pending_trees.880_90->num_elements, D.21983
	leaq	(%rax,%rax), %rdx	#, D.21983
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.881
	movq	%rdx, %rsi	# D.21983,
	movq	%rax, %rdi	# ggc_pending_trees.881,
	call	varray_grow	#
	movq	%rax, ggc_pending_trees(%rip)	# ggc_pending_trees.882, ggc_pending_trees
.L1277:
	.loc 1 7386 0 discriminator 2
	movq	ggc_pending_trees(%rip), %rcx	# ggc_pending_trees, ggc_pending_trees.883
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.884
	movq	8(%rax), %rdx	# ggc_pending_trees.884_96->elements_used, D.21983
	leaq	1(%rdx), %rsi	#, D.21983
	movq	%rsi, 8(%rax)	# D.21983, ggc_pending_trees.884_96->elements_used
	addq	$4, %rdx	#, tmp199
	movq	-32(%rbp), %rax	# t__, tmp200
	movq	%rax, (%rcx,%rdx,8)	# tmp200, ggc_pending_trees.883_95->data.tree
.LBE100:
.LBE94:
	jmp	.L1264	#
.L1276:
	jmp	.L1264	#
.L1265:
	.loc 1 7388 0 is_stmt 1
	movq	-88(%rbp), %rax	# t, tmp201
	movzbl	16(%rax), %eax	# t_1(D)->common.code, D.21981
	movzbl	%al, %eax	# D.21981, D.21982
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21984
	cmpb	$116, %al	#, D.21984
	jne	.L1279	#,
	.loc 1 7388 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# t, tmp203
	movq	160(%rax), %rax	# t_1(D)->type.lang_specific, D.21985
	testq	%rax, %rax	# D.21985
	je	.L1279	#,
.LBB101:
	.loc 1 7389 0 is_stmt 1
	movq	-88(%rbp), %rax	# t, tmp204
	movq	160(%rax), %rax	# t_1(D)->type.lang_specific, tmp205
	movq	%rax, -24(%rbp)	# tmp205, a__
	cmpq	$0, -24(%rbp)	#, a__
	je	.L1280	#,
	.loc 1 7389 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# a__, tmp206
	movq	%rax, %rdi	# tmp206,
	call	ggc_set_mark	#
.LBE101:
	jmp	.L1264	#
.L1280:
	.loc 1 7389 0 discriminator 2
	jmp	.L1264	#
.L1279:
	.loc 1 7390 0 is_stmt 1
	movq	-88(%rbp), %rax	# t, tmp207
	movzbl	16(%rax), %eax	# t_1(D)->common.code, D.21981
	movzbl	%al, %eax	# D.21981, D.21982
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21984
	cmpb	$100, %al	#, D.21984
	jne	.L1264	#,
	.loc 1 7390 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# t, tmp209
	movq	200(%rax), %rax	# t_1(D)->decl.lang_specific, D.21986
	testq	%rax, %rax	# D.21986
	je	.L1264	#,
.LBB102:
	.loc 1 7392 0 is_stmt 1
	movq	-88(%rbp), %rax	# t, tmp210
	movq	200(%rax), %rax	# t_1(D)->decl.lang_specific, tmp211
	movq	%rax, -16(%rbp)	# tmp211, a__
	cmpq	$0, -16(%rbp)	#, a__
	je	.L1281	#,
	.loc 1 7392 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# a__, tmp212
	movq	%rax, %rdi	# tmp212,
	call	ggc_set_mark	#
.L1281:
.LBE102:
	.loc 1 7393 0 is_stmt 1
	movq	-88(%rbp), %rax	# t, tmp213
	movq	200(%rax), %rax	# t_1(D)->decl.lang_specific, D.21986
	movq	%rax, %rdi	# D.21987,
	call	c_mark_lang_decl	#
.LBB103:
	.loc 1 7394 0
	movq	-88(%rbp), %rax	# t, tmp214
	movq	200(%rax), %rax	# t_1(D)->decl.lang_specific, D.21986
	movq	8(%rax), %rax	# _112->pending_sizes, tmp215
	movq	%rax, -8(%rbp)	# tmp215, t__
	cmpq	$0, -8(%rbp)	#, t__
	je	.L1264	#,
	.loc 1 7394 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# t__, tmp216
	movq	%rax, %rdi	# tmp216,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.21982
	jne	.L1264	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.885
	movq	8(%rax), %rdx	# ggc_pending_trees.885_115->elements_used, D.21983
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.886
	movq	(%rax), %rax	# ggc_pending_trees.886_117->num_elements, D.21983
	cmpq	%rax, %rdx	# D.21983, D.21983
	jb	.L1282	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.887
	movq	(%rax), %rax	# ggc_pending_trees.887_119->num_elements, D.21983
	leaq	(%rax,%rax), %rdx	#, D.21983
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.888
	movq	%rdx, %rsi	# D.21983,
	movq	%rax, %rdi	# ggc_pending_trees.888,
	call	varray_grow	#
	movq	%rax, ggc_pending_trees(%rip)	# ggc_pending_trees.889, ggc_pending_trees
.L1282:
	.loc 1 7394 0 discriminator 2
	movq	ggc_pending_trees(%rip), %rcx	# ggc_pending_trees, ggc_pending_trees.890
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.891
	movq	8(%rax), %rdx	# ggc_pending_trees.891_125->elements_used, D.21983
	leaq	1(%rdx), %rsi	#, D.21983
	movq	%rsi, 8(%rax)	# D.21983, ggc_pending_trees.891_125->elements_used
	addq	$4, %rdx	#, tmp217
	movq	-8(%rbp), %rax	# t__, tmp218
	movq	%rax, (%rcx,%rdx,8)	# tmp218, ggc_pending_trees.890_124->data.tree
.L1264:
.LBE103:
	.loc 1 7396 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	lang_mark_tree, .-lang_mark_tree
	.globl	stmts_are_full_exprs_p
	.type	stmts_are_full_exprs_p, @function
stmts_are_full_exprs_p:
.LFB80:
	.loc 1 7409 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 7410 0
	movl	$0, %eax	#, D.21988
	.loc 1 7411 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	stmts_are_full_exprs_p, .-stmts_are_full_exprs_p
	.globl	current_stmt_tree
	.type	current_stmt_tree, @function
current_stmt_tree:
.LFB81:
	.loc 1 7419 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 7420 0
	movl	$c_stmt_tree, %eax	#, D.21989
	.loc 1 7421 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	current_stmt_tree, .-current_stmt_tree
	.globl	current_scope_stmt_stack
	.type	current_scope_stmt_stack, @function
current_scope_stmt_stack:
.LFB82:
	.loc 1 7427 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 7428 0
	movl	$c_scope_stmt_stack, %eax	#, D.21990
	.loc 1 7429 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	current_scope_stmt_stack, .-current_scope_stmt_stack
	.globl	anon_aggr_type_p
	.type	anon_aggr_type_p, @function
anon_aggr_type_p:
.LFB83:
	.loc 1 7437 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# node, node
	.loc 1 7438 0
	movl	$0, %eax	#, D.21991
	.loc 1 7439 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	anon_aggr_type_p, .-anon_aggr_type_p
	.globl	extract_interface_info
	.type	extract_interface_info, @function
extract_interface_info:
.LFB84:
	.loc 1 7445 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 7446 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	extract_interface_info, .-extract_interface_info
	.globl	c_begin_compound_stmt
	.type	c_begin_compound_stmt, @function
c_begin_compound_stmt:
.LFB85:
	.loc 1 7453 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 7457 0
	movl	$0, %esi	#,
	movl	$153, %edi	#,
	movl	$0, %eax	#,
	call	build_stmt	#
	movq	%rax, %rdi	# D.21992,
	call	add_stmt	#
	movq	%rax, -8(%rbp)	# tmp62, stmt
	.loc 1 7459 0
	movq	-8(%rbp), %rax	# stmt, D.21993
	.loc 1 7460 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	c_begin_compound_stmt, .-c_begin_compound_stmt
	.globl	c_expand_decl_stmt
	.type	c_expand_decl_stmt, @function
c_expand_decl_stmt:
.LFB86:
	.loc 1 7468 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# t, t
	.loc 1 7469 0
	movq	-24(%rbp), %rax	# t, tmp63
	movq	32(%rax), %rax	# t_1(D)->exp.operands, tmp64
	movq	%rax, -8(%rbp)	# tmp64, decl
	.loc 1 7472 0
	movq	-8(%rbp), %rax	# decl, tmp65
	movzbl	16(%rax), %eax	# decl_2->common.code, D.21994
	cmpb	$30, %al	#, D.21994
	jne	.L1294	#,
	.loc 1 7473 0
	movq	-8(%rbp), %rax	# decl, tmp66
	movq	80(%rax), %rdx	# decl_2->decl.context, D.21995
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.892
	cmpq	%rax, %rdx	# current_function_decl.892, D.21995
	jne	.L1294	#,
	.loc 1 7474 0
	movq	-8(%rbp), %rax	# decl, tmp67
	movq	168(%rax), %rax	# decl_2->decl.saved_tree, D.21995
	testq	%rax, %rax	# D.21995
	je	.L1294	#,
	.loc 1 7475 0
	movq	-8(%rbp), %rax	# decl, tmp68
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp68,
	call	c_expand_body	#
.L1294:
	.loc 1 7476 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE86:
	.size	c_expand_decl_stmt, .-c_expand_decl_stmt
	.globl	identifier_global_value
	.type	identifier_global_value, @function
identifier_global_value:
.LFB87:
	.loc 1 7484 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# t, t
	.loc 1 7485 0
	movq	-8(%rbp), %rax	# t, tmp61
	movq	56(%rax), %rax	# MEM[(struct lang_identifier *)t_1(D)].global_value, D.21996
	.loc 1 7486 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE87:
	.size	identifier_global_value, .-identifier_global_value
	.globl	record_builtin_type
	.type	record_builtin_type, @function
record_builtin_type:
.LFB88:
	.loc 1 7496 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# rid_index, rid_index
	movq	%rsi, -32(%rbp)	# name, name
	movq	%rdx, -40(%rbp)	# type, type
	.loc 1 7498 0
	cmpq	$0, -32(%rbp)	#, name
	jne	.L1299	#,
	.loc 1 7499 0
	movq	ridpointers(%rip), %rax	# ridpointers, ridpointers.893
	movl	-20(%rbp), %edx	# rid_index, rid_index.894
	movslq	%edx, %rdx	# rid_index.894, D.21997
	salq	$3, %rdx	#, D.21997
	addq	%rdx, %rax	# D.21997, D.21998
	movq	(%rax), %rax	# *_8, tmp65
	movq	%rax, -8(%rbp)	# tmp65, id
	jmp	.L1300	#
.L1299:
	.loc 1 7501 0
	movq	-32(%rbp), %rax	# name, tmp66
	movq	%rax, %rdi	# tmp66,
	call	get_identifier	#
	movq	%rax, -8(%rbp)	# tmp67, id
.L1300:
	.loc 1 7502 0
	movq	-40(%rbp), %rdx	# type, tmp68
	movq	-8(%rbp), %rax	# id, tmp69
	movq	%rax, %rsi	# tmp69,
	movl	$33, %edi	#,
	call	build_decl	#
	movq	%rax, %rdi	# D.21999,
	call	pushdecl	#
	.loc 1 7503 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE88:
	.size	record_builtin_type, .-record_builtin_type
	.globl	build_void_list_node
	.type	build_void_list_node, @function
build_void_list_node:
.LFB89:
	.loc 1 7508 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 7509 0
	movq	global_trees+216(%rip), %rax	# global_trees, D.22000
	movq	%rax, %rsi	# D.22000,
	movl	$0, %edi	#,
	call	build_tree_list	#
	movq	%rax, -8(%rbp)	# tmp62, t
	.loc 1 7510 0
	movq	-8(%rbp), %rax	# t, D.22001
	.loc 1 7511 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE89:
	.size	build_void_list_node, .-build_void_list_node
	.section	.rodata
	.align 16
	.type	__FUNCTION__.14345, @object
	.size	__FUNCTION__.14345, 16
__FUNCTION__.14345:
	.string	"duplicate_decls"
	.align 16
	.type	__FUNCTION__.14580, @object
	.size	__FUNCTION__.14580, 23
__FUNCTION__.14580:
	.string	"build_compound_literal"
	.type	__FUNCTION__.14633, @object
	.size	__FUNCTION__.14633, 15
__FUNCTION__.14633:
	.string	"grokdeclarator"
	.local	already.14645
	.comm	already.14645,4,4
	.local	already.14728
	.comm	already.14728,4,4
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
	.file 12 "hashtable.h"
	.file 13 "c-tree.h"
	.file 14 "function.h"
	.file 15 "c-common.h"
	.file 16 "cpplib.h"
	.file 17 "varray.h"
	.file 18 "target.h"
	.file 19 "debug.h"
	.file 20 "tree-inline.h"
	.file 21 "flags.h"
	.file 22 "c-lex.h"
	.file 23 "ggc.h"
	.file 24 "timevar.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x6edd
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1735
	.byte	0x1
	.long	.LASF1736
	.long	.LASF1737
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
	.long	0x266
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF1
	.byte	0x2
	.byte	0x80
	.long	0x266
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF2
	.byte	0x2
	.byte	0x87
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	.LASF3
	.byte	0x2
	.byte	0x8a
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	.LASF4
	.byte	0x2
	.byte	0x95
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	.LASF5
	.byte	0x2
	.byte	0x9d
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF6
	.byte	0x2
	.byte	0xaf
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF7
	.byte	0x2
	.byte	0xb6
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF8
	.byte	0x2
	.byte	0xbb
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0xc4
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x6
	.string	"fld"
	.byte	0x2
	.byte	0xc9
	.long	0x2539
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
	.long	0x2549
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
	.long	.LASF841
	.byte	0xd0
	.byte	0x4
	.value	0x744
	.long	0x1de
	.uleb128 0xa
	.long	.LASF16
	.byte	0x4
	.value	0x746
	.long	0xd0c
	.uleb128 0xa
	.long	.LASF17
	.byte	0x4
	.value	0x747
	.long	0xecc
	.uleb128 0xa
	.long	.LASF18
	.byte	0x4
	.value	0x748
	.long	0xf2f
	.uleb128 0xa
	.long	.LASF19
	.byte	0x4
	.value	0x749
	.long	0xfe8
	.uleb128 0xa
	.long	.LASF20
	.byte	0x4
	.value	0x74a
	.long	0xf64
	.uleb128 0xa
	.long	.LASF21
	.byte	0x4
	.value	0x74b
	.long	0xfa6
	.uleb128 0xa
	.long	.LASF22
	.byte	0x4
	.value	0x74c
	.long	0x1058
	.uleb128 0xa
	.long	.LASF23
	.byte	0x4
	.value	0x74d
	.long	0x1931
	.uleb128 0xa
	.long	.LASF24
	.byte	0x4
	.value	0x74e
	.long	0x11e7
	.uleb128 0xa
	.long	.LASF25
	.byte	0x4
	.value	0x74f
	.long	0x107f
	.uleb128 0xb
	.string	"vec"
	.byte	0x4
	.value	0x750
	.long	0x10b4
	.uleb128 0xb
	.string	"exp"
	.byte	0x4
	.value	0x751
	.long	0x10f7
	.uleb128 0xa
	.long	.LASF26
	.byte	0x4
	.value	0x752
	.long	0x112c
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
	.long	.LASF28
	.byte	0x1c
	.byte	0x5
	.value	0x683
	.long	0x25a
	.uleb128 0x10
	.long	.LASF29
	.byte	0x5
	.value	0x684
	.long	0x1e3
	.byte	0
	.uleb128 0x10
	.long	.LASF30
	.byte	0x5
	.value	0x685
	.long	0x1e3
	.byte	0x4
	.uleb128 0x10
	.long	.LASF31
	.byte	0x5
	.value	0x686
	.long	0x1e3
	.byte	0x8
	.uleb128 0x10
	.long	.LASF32
	.byte	0x5
	.value	0x687
	.long	0x1e3
	.byte	0xc
	.uleb128 0x10
	.long	.LASF33
	.byte	0x5
	.value	0x688
	.long	0x1e3
	.byte	0x10
	.uleb128 0x10
	.long	.LASF34
	.byte	0x5
	.value	0x689
	.long	0x1e3
	.byte	0x14
	.uleb128 0x10
	.long	.LASF35
	.byte	0x5
	.value	0x68a
	.long	0x1e3
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.long	.LASF36
	.byte	0x5
	.value	0x68b
	.long	0x1f1
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.long	.LASF37
	.uleb128 0x12
	.byte	0x8
	.uleb128 0xe
	.byte	0x8
	.byte	0x5
	.long	.LASF38
	.uleb128 0x7
	.long	.LASF39
	.byte	0x6
	.byte	0xd4
	.long	0x281
	.uleb128 0xe
	.byte	0x8
	.byte	0x7
	.long	.LASF40
	.uleb128 0xe
	.byte	0x1
	.byte	0x8
	.long	.LASF41
	.uleb128 0xe
	.byte	0x2
	.byte	0x7
	.long	.LASF42
	.uleb128 0xe
	.byte	0x1
	.byte	0x6
	.long	.LASF43
	.uleb128 0xe
	.byte	0x2
	.byte	0x5
	.long	.LASF44
	.uleb128 0x7
	.long	.LASF45
	.byte	0x7
	.byte	0x8c
	.long	0x26f
	.uleb128 0x7
	.long	.LASF46
	.byte	0x7
	.byte	0x8d
	.long	0x26f
	.uleb128 0x3
	.byte	0x8
	.long	0x2c0
	.uleb128 0xe
	.byte	0x1
	.byte	0x6
	.long	.LASF47
	.uleb128 0x7
	.long	.LASF48
	.byte	0x8
	.byte	0x30
	.long	0x2d2
	.uleb128 0x4
	.long	.LASF49
	.byte	0xd8
	.byte	0x9
	.byte	0xf6
	.long	0x453
	.uleb128 0x8
	.long	.LASF50
	.byte	0x9
	.byte	0xf7
	.long	0x1e3
	.byte	0
	.uleb128 0x8
	.long	.LASF51
	.byte	0x9
	.byte	0xfc
	.long	0x2ba
	.byte	0x8
	.uleb128 0x8
	.long	.LASF52
	.byte	0x9
	.byte	0xfd
	.long	0x2ba
	.byte	0x10
	.uleb128 0x8
	.long	.LASF53
	.byte	0x9
	.byte	0xfe
	.long	0x2ba
	.byte	0x18
	.uleb128 0x8
	.long	.LASF54
	.byte	0x9
	.byte	0xff
	.long	0x2ba
	.byte	0x20
	.uleb128 0x10
	.long	.LASF55
	.byte	0x9
	.value	0x100
	.long	0x2ba
	.byte	0x28
	.uleb128 0x10
	.long	.LASF56
	.byte	0x9
	.value	0x101
	.long	0x2ba
	.byte	0x30
	.uleb128 0x10
	.long	.LASF57
	.byte	0x9
	.value	0x102
	.long	0x2ba
	.byte	0x38
	.uleb128 0x10
	.long	.LASF58
	.byte	0x9
	.value	0x103
	.long	0x2ba
	.byte	0x40
	.uleb128 0x10
	.long	.LASF59
	.byte	0x9
	.value	0x105
	.long	0x2ba
	.byte	0x48
	.uleb128 0x10
	.long	.LASF60
	.byte	0x9
	.value	0x106
	.long	0x2ba
	.byte	0x50
	.uleb128 0x10
	.long	.LASF61
	.byte	0x9
	.value	0x107
	.long	0x2ba
	.byte	0x58
	.uleb128 0x10
	.long	.LASF62
	.byte	0x9
	.value	0x109
	.long	0x48b
	.byte	0x60
	.uleb128 0x10
	.long	.LASF63
	.byte	0x9
	.value	0x10b
	.long	0x491
	.byte	0x68
	.uleb128 0x10
	.long	.LASF64
	.byte	0x9
	.value	0x10d
	.long	0x1e3
	.byte	0x70
	.uleb128 0x10
	.long	.LASF65
	.byte	0x9
	.value	0x111
	.long	0x1e3
	.byte	0x74
	.uleb128 0x10
	.long	.LASF66
	.byte	0x9
	.value	0x113
	.long	0x2a4
	.byte	0x78
	.uleb128 0x10
	.long	.LASF67
	.byte	0x9
	.value	0x117
	.long	0x28f
	.byte	0x80
	.uleb128 0x10
	.long	.LASF68
	.byte	0x9
	.value	0x118
	.long	0x296
	.byte	0x82
	.uleb128 0x10
	.long	.LASF69
	.byte	0x9
	.value	0x119
	.long	0x497
	.byte	0x83
	.uleb128 0x10
	.long	.LASF70
	.byte	0x9
	.value	0x11d
	.long	0x4a7
	.byte	0x88
	.uleb128 0x10
	.long	.LASF71
	.byte	0x9
	.value	0x126
	.long	0x2af
	.byte	0x90
	.uleb128 0x10
	.long	.LASF72
	.byte	0x9
	.value	0x12f
	.long	0x26d
	.byte	0x98
	.uleb128 0x10
	.long	.LASF73
	.byte	0x9
	.value	0x130
	.long	0x26d
	.byte	0xa0
	.uleb128 0x10
	.long	.LASF74
	.byte	0x9
	.value	0x131
	.long	0x26d
	.byte	0xa8
	.uleb128 0x10
	.long	.LASF75
	.byte	0x9
	.value	0x132
	.long	0x26d
	.byte	0xb0
	.uleb128 0x10
	.long	.LASF76
	.byte	0x9
	.value	0x133
	.long	0x276
	.byte	0xb8
	.uleb128 0x10
	.long	.LASF77
	.byte	0x9
	.value	0x135
	.long	0x1e3
	.byte	0xc0
	.uleb128 0x10
	.long	.LASF78
	.byte	0x9
	.value	0x137
	.long	0x4ad
	.byte	0xc4
	.byte	0
	.uleb128 0x13
	.long	.LASF1738
	.byte	0x9
	.byte	0x9b
	.uleb128 0x4
	.long	.LASF79
	.byte	0x18
	.byte	0x9
	.byte	0xa1
	.long	0x48b
	.uleb128 0x8
	.long	.LASF80
	.byte	0x9
	.byte	0xa2
	.long	0x48b
	.byte	0
	.uleb128 0x8
	.long	.LASF81
	.byte	0x9
	.byte	0xa3
	.long	0x491
	.byte	0x8
	.uleb128 0x8
	.long	.LASF82
	.byte	0x9
	.byte	0xa7
	.long	0x1e3
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x45a
	.uleb128 0x3
	.byte	0x8
	.long	0x2d2
	.uleb128 0x14
	.long	0x2c0
	.long	0x4a7
	.uleb128 0x15
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x453
	.uleb128 0x14
	.long	0x2c0
	.long	0x4bd
	.uleb128 0x15
	.long	0x1ea
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x4c3
	.uleb128 0xc
	.long	0x2c0
	.uleb128 0xe
	.byte	0x8
	.byte	0x7
	.long	.LASF83
	.uleb128 0xe
	.byte	0x8
	.byte	0x5
	.long	.LASF84
	.uleb128 0x3
	.byte	0x8
	.long	0x1e3
	.uleb128 0x3
	.byte	0x8
	.long	0x4e2
	.uleb128 0x16
	.uleb128 0x17
	.long	.LASF145
	.byte	0x4
	.byte	0xa
	.byte	0x1d
	.long	0x658
	.uleb128 0x18
	.long	.LASF85
	.sleb128 0
	.uleb128 0x18
	.long	.LASF86
	.sleb128 1
	.uleb128 0x18
	.long	.LASF87
	.sleb128 2
	.uleb128 0x18
	.long	.LASF88
	.sleb128 3
	.uleb128 0x18
	.long	.LASF89
	.sleb128 4
	.uleb128 0x18
	.long	.LASF90
	.sleb128 5
	.uleb128 0x18
	.long	.LASF91
	.sleb128 6
	.uleb128 0x18
	.long	.LASF92
	.sleb128 7
	.uleb128 0x18
	.long	.LASF93
	.sleb128 8
	.uleb128 0x18
	.long	.LASF94
	.sleb128 9
	.uleb128 0x18
	.long	.LASF95
	.sleb128 10
	.uleb128 0x18
	.long	.LASF96
	.sleb128 11
	.uleb128 0x18
	.long	.LASF97
	.sleb128 12
	.uleb128 0x18
	.long	.LASF98
	.sleb128 13
	.uleb128 0x18
	.long	.LASF99
	.sleb128 14
	.uleb128 0x18
	.long	.LASF100
	.sleb128 15
	.uleb128 0x18
	.long	.LASF101
	.sleb128 16
	.uleb128 0x18
	.long	.LASF102
	.sleb128 17
	.uleb128 0x18
	.long	.LASF103
	.sleb128 18
	.uleb128 0x18
	.long	.LASF104
	.sleb128 19
	.uleb128 0x18
	.long	.LASF105
	.sleb128 20
	.uleb128 0x18
	.long	.LASF106
	.sleb128 21
	.uleb128 0x18
	.long	.LASF107
	.sleb128 22
	.uleb128 0x18
	.long	.LASF108
	.sleb128 23
	.uleb128 0x18
	.long	.LASF109
	.sleb128 24
	.uleb128 0x18
	.long	.LASF110
	.sleb128 25
	.uleb128 0x18
	.long	.LASF111
	.sleb128 26
	.uleb128 0x18
	.long	.LASF112
	.sleb128 27
	.uleb128 0x18
	.long	.LASF113
	.sleb128 28
	.uleb128 0x18
	.long	.LASF114
	.sleb128 29
	.uleb128 0x18
	.long	.LASF115
	.sleb128 30
	.uleb128 0x18
	.long	.LASF116
	.sleb128 31
	.uleb128 0x18
	.long	.LASF117
	.sleb128 32
	.uleb128 0x18
	.long	.LASF118
	.sleb128 33
	.uleb128 0x18
	.long	.LASF119
	.sleb128 34
	.uleb128 0x18
	.long	.LASF120
	.sleb128 35
	.uleb128 0x18
	.long	.LASF121
	.sleb128 36
	.uleb128 0x18
	.long	.LASF122
	.sleb128 37
	.uleb128 0x18
	.long	.LASF123
	.sleb128 38
	.uleb128 0x18
	.long	.LASF124
	.sleb128 39
	.uleb128 0x18
	.long	.LASF125
	.sleb128 40
	.uleb128 0x18
	.long	.LASF126
	.sleb128 41
	.uleb128 0x18
	.long	.LASF127
	.sleb128 42
	.uleb128 0x18
	.long	.LASF128
	.sleb128 43
	.uleb128 0x18
	.long	.LASF129
	.sleb128 44
	.uleb128 0x18
	.long	.LASF130
	.sleb128 45
	.uleb128 0x18
	.long	.LASF131
	.sleb128 46
	.uleb128 0x18
	.long	.LASF132
	.sleb128 47
	.uleb128 0x18
	.long	.LASF133
	.sleb128 48
	.uleb128 0x18
	.long	.LASF134
	.sleb128 49
	.uleb128 0x18
	.long	.LASF135
	.sleb128 50
	.uleb128 0x18
	.long	.LASF136
	.sleb128 51
	.uleb128 0x18
	.long	.LASF137
	.sleb128 52
	.uleb128 0x18
	.long	.LASF138
	.sleb128 53
	.uleb128 0x18
	.long	.LASF139
	.sleb128 54
	.uleb128 0x18
	.long	.LASF140
	.sleb128 55
	.uleb128 0x18
	.long	.LASF141
	.sleb128 56
	.uleb128 0x18
	.long	.LASF142
	.sleb128 57
	.uleb128 0x18
	.long	.LASF143
	.sleb128 58
	.uleb128 0x18
	.long	.LASF144
	.sleb128 59
	.byte	0
	.uleb128 0x17
	.long	.LASF146
	.byte	0x4
	.byte	0xa
	.byte	0x2c
	.long	0x6a1
	.uleb128 0x18
	.long	.LASF147
	.sleb128 0
	.uleb128 0x18
	.long	.LASF148
	.sleb128 1
	.uleb128 0x18
	.long	.LASF149
	.sleb128 2
	.uleb128 0x18
	.long	.LASF150
	.sleb128 3
	.uleb128 0x18
	.long	.LASF151
	.sleb128 4
	.uleb128 0x18
	.long	.LASF152
	.sleb128 5
	.uleb128 0x18
	.long	.LASF153
	.sleb128 6
	.uleb128 0x18
	.long	.LASF154
	.sleb128 7
	.uleb128 0x18
	.long	.LASF155
	.sleb128 8
	.uleb128 0x18
	.long	.LASF156
	.sleb128 9
	.byte	0
	.uleb128 0x17
	.long	.LASF157
	.byte	0x4
	.byte	0x4
	.byte	0x1d
	.long	0xa7a
	.uleb128 0x18
	.long	.LASF158
	.sleb128 0
	.uleb128 0x18
	.long	.LASF159
	.sleb128 1
	.uleb128 0x18
	.long	.LASF160
	.sleb128 2
	.uleb128 0x18
	.long	.LASF161
	.sleb128 3
	.uleb128 0x18
	.long	.LASF162
	.sleb128 4
	.uleb128 0x18
	.long	.LASF163
	.sleb128 5
	.uleb128 0x18
	.long	.LASF164
	.sleb128 6
	.uleb128 0x18
	.long	.LASF165
	.sleb128 7
	.uleb128 0x18
	.long	.LASF166
	.sleb128 8
	.uleb128 0x18
	.long	.LASF167
	.sleb128 9
	.uleb128 0x18
	.long	.LASF168
	.sleb128 10
	.uleb128 0x18
	.long	.LASF169
	.sleb128 11
	.uleb128 0x18
	.long	.LASF170
	.sleb128 12
	.uleb128 0x18
	.long	.LASF171
	.sleb128 13
	.uleb128 0x18
	.long	.LASF172
	.sleb128 14
	.uleb128 0x18
	.long	.LASF173
	.sleb128 15
	.uleb128 0x18
	.long	.LASF174
	.sleb128 16
	.uleb128 0x18
	.long	.LASF175
	.sleb128 17
	.uleb128 0x18
	.long	.LASF176
	.sleb128 18
	.uleb128 0x18
	.long	.LASF177
	.sleb128 19
	.uleb128 0x18
	.long	.LASF178
	.sleb128 20
	.uleb128 0x18
	.long	.LASF179
	.sleb128 21
	.uleb128 0x18
	.long	.LASF180
	.sleb128 22
	.uleb128 0x18
	.long	.LASF181
	.sleb128 23
	.uleb128 0x18
	.long	.LASF182
	.sleb128 24
	.uleb128 0x18
	.long	.LASF183
	.sleb128 25
	.uleb128 0x18
	.long	.LASF184
	.sleb128 26
	.uleb128 0x18
	.long	.LASF185
	.sleb128 27
	.uleb128 0x18
	.long	.LASF186
	.sleb128 28
	.uleb128 0x18
	.long	.LASF187
	.sleb128 29
	.uleb128 0x18
	.long	.LASF188
	.sleb128 30
	.uleb128 0x18
	.long	.LASF189
	.sleb128 31
	.uleb128 0x18
	.long	.LASF190
	.sleb128 32
	.uleb128 0x18
	.long	.LASF191
	.sleb128 33
	.uleb128 0x18
	.long	.LASF192
	.sleb128 34
	.uleb128 0x18
	.long	.LASF193
	.sleb128 35
	.uleb128 0x18
	.long	.LASF194
	.sleb128 36
	.uleb128 0x18
	.long	.LASF195
	.sleb128 37
	.uleb128 0x18
	.long	.LASF196
	.sleb128 38
	.uleb128 0x18
	.long	.LASF197
	.sleb128 39
	.uleb128 0x18
	.long	.LASF198
	.sleb128 40
	.uleb128 0x18
	.long	.LASF199
	.sleb128 41
	.uleb128 0x18
	.long	.LASF200
	.sleb128 42
	.uleb128 0x18
	.long	.LASF201
	.sleb128 43
	.uleb128 0x18
	.long	.LASF202
	.sleb128 44
	.uleb128 0x18
	.long	.LASF203
	.sleb128 45
	.uleb128 0x18
	.long	.LASF204
	.sleb128 46
	.uleb128 0x18
	.long	.LASF205
	.sleb128 47
	.uleb128 0x18
	.long	.LASF206
	.sleb128 48
	.uleb128 0x18
	.long	.LASF207
	.sleb128 49
	.uleb128 0x18
	.long	.LASF208
	.sleb128 50
	.uleb128 0x18
	.long	.LASF209
	.sleb128 51
	.uleb128 0x18
	.long	.LASF210
	.sleb128 52
	.uleb128 0x18
	.long	.LASF211
	.sleb128 53
	.uleb128 0x18
	.long	.LASF212
	.sleb128 54
	.uleb128 0x18
	.long	.LASF213
	.sleb128 55
	.uleb128 0x18
	.long	.LASF214
	.sleb128 56
	.uleb128 0x18
	.long	.LASF215
	.sleb128 57
	.uleb128 0x18
	.long	.LASF216
	.sleb128 58
	.uleb128 0x18
	.long	.LASF217
	.sleb128 59
	.uleb128 0x18
	.long	.LASF218
	.sleb128 60
	.uleb128 0x18
	.long	.LASF219
	.sleb128 61
	.uleb128 0x18
	.long	.LASF220
	.sleb128 62
	.uleb128 0x18
	.long	.LASF221
	.sleb128 63
	.uleb128 0x18
	.long	.LASF222
	.sleb128 64
	.uleb128 0x18
	.long	.LASF223
	.sleb128 65
	.uleb128 0x18
	.long	.LASF224
	.sleb128 66
	.uleb128 0x18
	.long	.LASF225
	.sleb128 67
	.uleb128 0x18
	.long	.LASF226
	.sleb128 68
	.uleb128 0x18
	.long	.LASF227
	.sleb128 69
	.uleb128 0x18
	.long	.LASF228
	.sleb128 70
	.uleb128 0x18
	.long	.LASF229
	.sleb128 71
	.uleb128 0x18
	.long	.LASF230
	.sleb128 72
	.uleb128 0x18
	.long	.LASF231
	.sleb128 73
	.uleb128 0x18
	.long	.LASF232
	.sleb128 74
	.uleb128 0x18
	.long	.LASF233
	.sleb128 75
	.uleb128 0x18
	.long	.LASF234
	.sleb128 76
	.uleb128 0x18
	.long	.LASF235
	.sleb128 77
	.uleb128 0x18
	.long	.LASF236
	.sleb128 78
	.uleb128 0x18
	.long	.LASF237
	.sleb128 79
	.uleb128 0x18
	.long	.LASF238
	.sleb128 80
	.uleb128 0x18
	.long	.LASF239
	.sleb128 81
	.uleb128 0x18
	.long	.LASF240
	.sleb128 82
	.uleb128 0x18
	.long	.LASF241
	.sleb128 83
	.uleb128 0x18
	.long	.LASF242
	.sleb128 84
	.uleb128 0x18
	.long	.LASF243
	.sleb128 85
	.uleb128 0x18
	.long	.LASF244
	.sleb128 86
	.uleb128 0x18
	.long	.LASF245
	.sleb128 87
	.uleb128 0x18
	.long	.LASF246
	.sleb128 88
	.uleb128 0x18
	.long	.LASF247
	.sleb128 89
	.uleb128 0x18
	.long	.LASF248
	.sleb128 90
	.uleb128 0x18
	.long	.LASF249
	.sleb128 91
	.uleb128 0x18
	.long	.LASF250
	.sleb128 92
	.uleb128 0x18
	.long	.LASF251
	.sleb128 93
	.uleb128 0x18
	.long	.LASF252
	.sleb128 94
	.uleb128 0x18
	.long	.LASF253
	.sleb128 95
	.uleb128 0x18
	.long	.LASF254
	.sleb128 96
	.uleb128 0x18
	.long	.LASF255
	.sleb128 97
	.uleb128 0x18
	.long	.LASF256
	.sleb128 98
	.uleb128 0x18
	.long	.LASF257
	.sleb128 99
	.uleb128 0x18
	.long	.LASF258
	.sleb128 100
	.uleb128 0x18
	.long	.LASF259
	.sleb128 101
	.uleb128 0x18
	.long	.LASF260
	.sleb128 102
	.uleb128 0x18
	.long	.LASF261
	.sleb128 103
	.uleb128 0x18
	.long	.LASF262
	.sleb128 104
	.uleb128 0x18
	.long	.LASF263
	.sleb128 105
	.uleb128 0x18
	.long	.LASF264
	.sleb128 106
	.uleb128 0x18
	.long	.LASF265
	.sleb128 107
	.uleb128 0x18
	.long	.LASF266
	.sleb128 108
	.uleb128 0x18
	.long	.LASF267
	.sleb128 109
	.uleb128 0x18
	.long	.LASF268
	.sleb128 110
	.uleb128 0x18
	.long	.LASF269
	.sleb128 111
	.uleb128 0x18
	.long	.LASF270
	.sleb128 112
	.uleb128 0x18
	.long	.LASF271
	.sleb128 113
	.uleb128 0x18
	.long	.LASF272
	.sleb128 114
	.uleb128 0x18
	.long	.LASF273
	.sleb128 115
	.uleb128 0x18
	.long	.LASF274
	.sleb128 116
	.uleb128 0x18
	.long	.LASF275
	.sleb128 117
	.uleb128 0x18
	.long	.LASF276
	.sleb128 118
	.uleb128 0x18
	.long	.LASF277
	.sleb128 119
	.uleb128 0x18
	.long	.LASF278
	.sleb128 120
	.uleb128 0x18
	.long	.LASF279
	.sleb128 121
	.uleb128 0x18
	.long	.LASF280
	.sleb128 122
	.uleb128 0x18
	.long	.LASF281
	.sleb128 123
	.uleb128 0x18
	.long	.LASF282
	.sleb128 124
	.uleb128 0x18
	.long	.LASF283
	.sleb128 125
	.uleb128 0x18
	.long	.LASF284
	.sleb128 126
	.uleb128 0x18
	.long	.LASF285
	.sleb128 127
	.uleb128 0x18
	.long	.LASF286
	.sleb128 128
	.uleb128 0x18
	.long	.LASF287
	.sleb128 129
	.uleb128 0x18
	.long	.LASF288
	.sleb128 130
	.uleb128 0x18
	.long	.LASF289
	.sleb128 131
	.uleb128 0x18
	.long	.LASF290
	.sleb128 132
	.uleb128 0x18
	.long	.LASF291
	.sleb128 133
	.uleb128 0x18
	.long	.LASF292
	.sleb128 134
	.uleb128 0x18
	.long	.LASF293
	.sleb128 135
	.uleb128 0x18
	.long	.LASF294
	.sleb128 136
	.uleb128 0x18
	.long	.LASF295
	.sleb128 137
	.uleb128 0x18
	.long	.LASF296
	.sleb128 138
	.uleb128 0x18
	.long	.LASF297
	.sleb128 139
	.uleb128 0x18
	.long	.LASF298
	.sleb128 140
	.uleb128 0x18
	.long	.LASF299
	.sleb128 141
	.uleb128 0x18
	.long	.LASF300
	.sleb128 142
	.uleb128 0x18
	.long	.LASF301
	.sleb128 143
	.uleb128 0x18
	.long	.LASF302
	.sleb128 144
	.uleb128 0x18
	.long	.LASF303
	.sleb128 145
	.uleb128 0x18
	.long	.LASF304
	.sleb128 146
	.uleb128 0x18
	.long	.LASF305
	.sleb128 147
	.byte	0
	.uleb128 0x17
	.long	.LASF306
	.byte	0x4
	.byte	0x4
	.byte	0x45
	.long	0xa9f
	.uleb128 0x18
	.long	.LASF307
	.sleb128 0
	.uleb128 0x18
	.long	.LASF308
	.sleb128 1
	.uleb128 0x18
	.long	.LASF309
	.sleb128 2
	.uleb128 0x18
	.long	.LASF310
	.sleb128 3
	.byte	0
	.uleb128 0x17
	.long	.LASF311
	.byte	0x4
	.byte	0x4
	.byte	0x54
	.long	0xd0c
	.uleb128 0x18
	.long	.LASF312
	.sleb128 0
	.uleb128 0x18
	.long	.LASF313
	.sleb128 1
	.uleb128 0x18
	.long	.LASF314
	.sleb128 2
	.uleb128 0x18
	.long	.LASF315
	.sleb128 3
	.uleb128 0x18
	.long	.LASF316
	.sleb128 4
	.uleb128 0x18
	.long	.LASF317
	.sleb128 5
	.uleb128 0x18
	.long	.LASF318
	.sleb128 6
	.uleb128 0x18
	.long	.LASF319
	.sleb128 7
	.uleb128 0x18
	.long	.LASF320
	.sleb128 8
	.uleb128 0x18
	.long	.LASF321
	.sleb128 9
	.uleb128 0x18
	.long	.LASF322
	.sleb128 10
	.uleb128 0x18
	.long	.LASF323
	.sleb128 11
	.uleb128 0x18
	.long	.LASF324
	.sleb128 12
	.uleb128 0x18
	.long	.LASF325
	.sleb128 13
	.uleb128 0x18
	.long	.LASF326
	.sleb128 14
	.uleb128 0x18
	.long	.LASF327
	.sleb128 15
	.uleb128 0x18
	.long	.LASF328
	.sleb128 16
	.uleb128 0x18
	.long	.LASF329
	.sleb128 17
	.uleb128 0x18
	.long	.LASF330
	.sleb128 18
	.uleb128 0x18
	.long	.LASF331
	.sleb128 19
	.uleb128 0x18
	.long	.LASF332
	.sleb128 20
	.uleb128 0x18
	.long	.LASF333
	.sleb128 21
	.uleb128 0x18
	.long	.LASF334
	.sleb128 22
	.uleb128 0x18
	.long	.LASF335
	.sleb128 23
	.uleb128 0x18
	.long	.LASF336
	.sleb128 24
	.uleb128 0x18
	.long	.LASF337
	.sleb128 25
	.uleb128 0x18
	.long	.LASF338
	.sleb128 26
	.uleb128 0x18
	.long	.LASF339
	.sleb128 27
	.uleb128 0x18
	.long	.LASF340
	.sleb128 28
	.uleb128 0x18
	.long	.LASF341
	.sleb128 29
	.uleb128 0x18
	.long	.LASF342
	.sleb128 30
	.uleb128 0x18
	.long	.LASF343
	.sleb128 31
	.uleb128 0x18
	.long	.LASF344
	.sleb128 32
	.uleb128 0x18
	.long	.LASF345
	.sleb128 33
	.uleb128 0x18
	.long	.LASF346
	.sleb128 34
	.uleb128 0x18
	.long	.LASF347
	.sleb128 35
	.uleb128 0x18
	.long	.LASF348
	.sleb128 36
	.uleb128 0x18
	.long	.LASF349
	.sleb128 37
	.uleb128 0x18
	.long	.LASF350
	.sleb128 38
	.uleb128 0x18
	.long	.LASF351
	.sleb128 39
	.uleb128 0x18
	.long	.LASF352
	.sleb128 40
	.uleb128 0x18
	.long	.LASF353
	.sleb128 41
	.uleb128 0x18
	.long	.LASF354
	.sleb128 42
	.uleb128 0x18
	.long	.LASF355
	.sleb128 43
	.uleb128 0x18
	.long	.LASF356
	.sleb128 44
	.uleb128 0x18
	.long	.LASF357
	.sleb128 45
	.uleb128 0x18
	.long	.LASF358
	.sleb128 46
	.uleb128 0x18
	.long	.LASF359
	.sleb128 47
	.uleb128 0x18
	.long	.LASF360
	.sleb128 48
	.uleb128 0x18
	.long	.LASF361
	.sleb128 49
	.uleb128 0x18
	.long	.LASF362
	.sleb128 50
	.uleb128 0x18
	.long	.LASF363
	.sleb128 51
	.uleb128 0x18
	.long	.LASF364
	.sleb128 52
	.uleb128 0x18
	.long	.LASF365
	.sleb128 53
	.uleb128 0x18
	.long	.LASF366
	.sleb128 54
	.uleb128 0x18
	.long	.LASF367
	.sleb128 55
	.uleb128 0x18
	.long	.LASF368
	.sleb128 56
	.uleb128 0x18
	.long	.LASF369
	.sleb128 57
	.uleb128 0x18
	.long	.LASF370
	.sleb128 58
	.uleb128 0x18
	.long	.LASF371
	.sleb128 59
	.uleb128 0x18
	.long	.LASF372
	.sleb128 60
	.uleb128 0x18
	.long	.LASF373
	.sleb128 61
	.uleb128 0x18
	.long	.LASF374
	.sleb128 62
	.uleb128 0x18
	.long	.LASF375
	.sleb128 63
	.uleb128 0x18
	.long	.LASF376
	.sleb128 64
	.uleb128 0x18
	.long	.LASF377
	.sleb128 65
	.uleb128 0x18
	.long	.LASF378
	.sleb128 66
	.uleb128 0x18
	.long	.LASF379
	.sleb128 67
	.uleb128 0x18
	.long	.LASF380
	.sleb128 68
	.uleb128 0x18
	.long	.LASF381
	.sleb128 69
	.uleb128 0x18
	.long	.LASF382
	.sleb128 70
	.uleb128 0x18
	.long	.LASF383
	.sleb128 71
	.uleb128 0x18
	.long	.LASF384
	.sleb128 72
	.uleb128 0x18
	.long	.LASF385
	.sleb128 73
	.uleb128 0x18
	.long	.LASF386
	.sleb128 74
	.uleb128 0x18
	.long	.LASF387
	.sleb128 75
	.uleb128 0x18
	.long	.LASF388
	.sleb128 76
	.uleb128 0x18
	.long	.LASF389
	.sleb128 77
	.uleb128 0x18
	.long	.LASF390
	.sleb128 78
	.uleb128 0x18
	.long	.LASF391
	.sleb128 79
	.uleb128 0x18
	.long	.LASF392
	.sleb128 80
	.uleb128 0x18
	.long	.LASF393
	.sleb128 81
	.uleb128 0x18
	.long	.LASF394
	.sleb128 82
	.uleb128 0x18
	.long	.LASF395
	.sleb128 83
	.uleb128 0x18
	.long	.LASF396
	.sleb128 84
	.uleb128 0x18
	.long	.LASF397
	.sleb128 85
	.uleb128 0x18
	.long	.LASF398
	.sleb128 86
	.uleb128 0x18
	.long	.LASF399
	.sleb128 87
	.uleb128 0x18
	.long	.LASF400
	.sleb128 88
	.uleb128 0x18
	.long	.LASF401
	.sleb128 89
	.uleb128 0x18
	.long	.LASF402
	.sleb128 90
	.uleb128 0x18
	.long	.LASF403
	.sleb128 91
	.uleb128 0x18
	.long	.LASF404
	.sleb128 92
	.uleb128 0x18
	.long	.LASF405
	.sleb128 93
	.uleb128 0x18
	.long	.LASF406
	.sleb128 94
	.uleb128 0x18
	.long	.LASF407
	.sleb128 95
	.byte	0
	.uleb128 0x4
	.long	.LASF408
	.byte	0x18
	.byte	0x4
	.byte	0x79
	.long	0xea8
	.uleb128 0x8
	.long	.LASF409
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
	.long	0x266
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x10
	.uleb128 0x5
	.long	.LASF410
	.byte	0x4
	.byte	0x80
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x10
	.uleb128 0x5
	.long	.LASF411
	.byte	0x4
	.byte	0x81
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x10
	.uleb128 0x5
	.long	.LASF412
	.byte	0x4
	.byte	0x82
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x10
	.uleb128 0x5
	.long	.LASF413
	.byte	0x4
	.byte	0x83
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x10
	.uleb128 0x5
	.long	.LASF414
	.byte	0x4
	.byte	0x84
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x10
	.uleb128 0x5
	.long	.LASF415
	.byte	0x4
	.byte	0x85
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x10
	.uleb128 0x5
	.long	.LASF416
	.byte	0x4
	.byte	0x86
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x10
	.uleb128 0x5
	.long	.LASF417
	.byte	0x4
	.byte	0x87
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x10
	.uleb128 0x5
	.long	.LASF418
	.byte	0x4
	.byte	0x89
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x10
	.uleb128 0x5
	.long	.LASF419
	.byte	0x4
	.byte	0x8a
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x10
	.uleb128 0x5
	.long	.LASF420
	.byte	0x4
	.byte	0x8b
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x10
	.uleb128 0x5
	.long	.LASF421
	.byte	0x4
	.byte	0x8c
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x10
	.uleb128 0x5
	.long	.LASF422
	.byte	0x4
	.byte	0x8d
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x10
	.uleb128 0x5
	.long	.LASF423
	.byte	0x4
	.byte	0x8e
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x10
	.uleb128 0x5
	.long	.LASF424
	.byte	0x4
	.byte	0x8f
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x10
	.uleb128 0x5
	.long	.LASF425
	.byte	0x4
	.byte	0x90
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x10
	.uleb128 0x5
	.long	.LASF426
	.byte	0x4
	.byte	0x92
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x10
	.uleb128 0x5
	.long	.LASF427
	.byte	0x4
	.byte	0x93
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x10
	.uleb128 0x5
	.long	.LASF428
	.byte	0x4
	.byte	0x94
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x10
	.uleb128 0x5
	.long	.LASF429
	.byte	0x4
	.byte	0x95
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x10
	.uleb128 0x5
	.long	.LASF430
	.byte	0x4
	.byte	0x96
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x10
	.uleb128 0x5
	.long	.LASF431
	.byte	0x4
	.byte	0x97
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x5
	.long	.LASF432
	.byte	0x4
	.byte	0x98
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x10
	.uleb128 0x5
	.long	.LASF433
	.byte	0x4
	.byte	0x99
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x10
	.byte	0
	.uleb128 0x19
	.byte	0x10
	.byte	0x4
	.value	0x2c9
	.long	0xecc
	.uleb128 0x1a
	.string	"low"
	.byte	0x4
	.value	0x2ca
	.long	0x281
	.byte	0
	.uleb128 0x10
	.long	.LASF434
	.byte	0x4
	.value	0x2cb
	.long	0x26f
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.long	.LASF435
	.byte	0x30
	.byte	0x4
	.value	0x2c1
	.long	0xf01
	.uleb128 0x10
	.long	.LASF16
	.byte	0x4
	.value	0x2c3
	.long	0xd0c
	.byte	0
	.uleb128 0x1a
	.string	"rtl"
	.byte	0x4
	.value	0x2c4
	.long	0x2d
	.byte	0x18
	.uleb128 0x10
	.long	.LASF17
	.byte	0x4
	.value	0x2cc
	.long	0xea8
	.byte	0x20
	.byte	0
	.uleb128 0x1b
	.byte	0x18
	.byte	0xb
	.byte	0x6b
	.long	0xf14
	.uleb128 0x6
	.string	"r"
	.byte	0xb
	.byte	0x6c
	.long	0xf14
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x26f
	.long	0xf24
	.uleb128 0x15
	.long	0x1ea
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF436
	.byte	0xb
	.byte	0x6d
	.long	0xf01
	.uleb128 0xf
	.long	.LASF437
	.byte	0x38
	.byte	0x4
	.value	0x2de
	.long	0xf64
	.uleb128 0x10
	.long	.LASF16
	.byte	0x4
	.value	0x2e0
	.long	0xd0c
	.byte	0
	.uleb128 0x1a
	.string	"rtl"
	.byte	0x4
	.value	0x2e1
	.long	0x2d
	.byte	0x18
	.uleb128 0x10
	.long	.LASF18
	.byte	0x4
	.value	0x2e2
	.long	0xf24
	.byte	0x20
	.byte	0
	.uleb128 0xf
	.long	.LASF438
	.byte	0x30
	.byte	0x4
	.value	0x2e9
	.long	0xfa6
	.uleb128 0x10
	.long	.LASF16
	.byte	0x4
	.value	0x2eb
	.long	0xd0c
	.byte	0
	.uleb128 0x1a
	.string	"rtl"
	.byte	0x4
	.value	0x2ec
	.long	0x2d
	.byte	0x18
	.uleb128 0x10
	.long	.LASF439
	.byte	0x4
	.value	0x2ed
	.long	0x1e3
	.byte	0x20
	.uleb128 0x10
	.long	.LASF440
	.byte	0x4
	.value	0x2ee
	.long	0x4bd
	.byte	0x28
	.byte	0
	.uleb128 0xf
	.long	.LASF441
	.byte	0x30
	.byte	0x4
	.value	0x2f5
	.long	0xfe8
	.uleb128 0x10
	.long	.LASF16
	.byte	0x4
	.value	0x2f7
	.long	0xd0c
	.byte	0
	.uleb128 0x1a
	.string	"rtl"
	.byte	0x4
	.value	0x2f8
	.long	0x2d
	.byte	0x18
	.uleb128 0x10
	.long	.LASF442
	.byte	0x4
	.value	0x2f9
	.long	0x123
	.byte	0x20
	.uleb128 0x10
	.long	.LASF443
	.byte	0x4
	.value	0x2fa
	.long	0x123
	.byte	0x28
	.byte	0
	.uleb128 0xf
	.long	.LASF444
	.byte	0x28
	.byte	0x4
	.value	0x300
	.long	0x101d
	.uleb128 0x10
	.long	.LASF16
	.byte	0x4
	.value	0x302
	.long	0xd0c
	.byte	0
	.uleb128 0x1a
	.string	"rtl"
	.byte	0x4
	.value	0x303
	.long	0x2d
	.byte	0x18
	.uleb128 0x10
	.long	.LASF445
	.byte	0x4
	.value	0x304
	.long	0x123
	.byte	0x20
	.byte	0
	.uleb128 0x4
	.long	.LASF446
	.byte	0x10
	.byte	0xc
	.byte	0x1a
	.long	0x1042
	.uleb128 0x6
	.string	"len"
	.byte	0xc
	.byte	0x1c
	.long	0x266
	.byte	0
	.uleb128 0x6
	.string	"str"
	.byte	0xc
	.byte	0x1d
	.long	0x1042
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1048
	.uleb128 0xc
	.long	0x288
	.uleb128 0x1c
	.long	.LASF853
	.uleb128 0x3
	.byte	0x8
	.long	0x104d
	.uleb128 0xf
	.long	.LASF447
	.byte	0x28
	.byte	0x4
	.value	0x317
	.long	0x107f
	.uleb128 0x10
	.long	.LASF16
	.byte	0x4
	.value	0x319
	.long	0xd0c
	.byte	0
	.uleb128 0x1a
	.string	"id"
	.byte	0x4
	.value	0x31a
	.long	0x101d
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.long	.LASF448
	.byte	0x28
	.byte	0x4
	.value	0x321
	.long	0x10b4
	.uleb128 0x10
	.long	.LASF16
	.byte	0x4
	.value	0x323
	.long	0xd0c
	.byte	0
	.uleb128 0x10
	.long	.LASF449
	.byte	0x4
	.value	0x324
	.long	0x123
	.byte	0x18
	.uleb128 0x10
	.long	.LASF450
	.byte	0x4
	.value	0x325
	.long	0x123
	.byte	0x20
	.byte	0
	.uleb128 0xf
	.long	.LASF451
	.byte	0x28
	.byte	0x4
	.value	0x32e
	.long	0x10e7
	.uleb128 0x10
	.long	.LASF16
	.byte	0x4
	.value	0x330
	.long	0xd0c
	.byte	0
	.uleb128 0x10
	.long	.LASF439
	.byte	0x4
	.value	0x331
	.long	0x1e3
	.byte	0x18
	.uleb128 0x1a
	.string	"a"
	.byte	0x4
	.value	0x332
	.long	0x10e7
	.byte	0x20
	.byte	0
	.uleb128 0x14
	.long	0x123
	.long	0x10f7
	.uleb128 0x15
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LASF452
	.byte	0x28
	.byte	0x4
	.value	0x36f
	.long	0x112c
	.uleb128 0x10
	.long	.LASF16
	.byte	0x4
	.value	0x371
	.long	0xd0c
	.byte	0
	.uleb128 0x10
	.long	.LASF453
	.byte	0x4
	.value	0x372
	.long	0x1e3
	.byte	0x18
	.uleb128 0x10
	.long	.LASF454
	.byte	0x4
	.value	0x373
	.long	0x10e7
	.byte	0x20
	.byte	0
	.uleb128 0xf
	.long	.LASF455
	.byte	0x50
	.byte	0x4
	.value	0x3a3
	.long	0x11c5
	.uleb128 0x10
	.long	.LASF16
	.byte	0x4
	.value	0x3a5
	.long	0xd0c
	.byte	0
	.uleb128 0x1d
	.long	.LASF456
	.byte	0x4
	.value	0x3a7
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x18
	.uleb128 0x1d
	.long	.LASF457
	.byte	0x4
	.value	0x3a8
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x18
	.uleb128 0x1d
	.long	.LASF458
	.byte	0x4
	.value	0x3a9
	.long	0x266
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x18
	.uleb128 0x10
	.long	.LASF459
	.byte	0x4
	.value	0x3ab
	.long	0x123
	.byte	0x20
	.uleb128 0x10
	.long	.LASF460
	.byte	0x4
	.value	0x3ac
	.long	0x123
	.byte	0x28
	.uleb128 0x10
	.long	.LASF461
	.byte	0x4
	.value	0x3ad
	.long	0x123
	.byte	0x30
	.uleb128 0x10
	.long	.LASF462
	.byte	0x4
	.value	0x3ae
	.long	0x123
	.byte	0x38
	.uleb128 0x10
	.long	.LASF463
	.byte	0x4
	.value	0x3af
	.long	0x123
	.byte	0x40
	.uleb128 0x10
	.long	.LASF464
	.byte	0x4
	.value	0x3b0
	.long	0x123
	.byte	0x48
	.byte	0
	.uleb128 0x1e
	.byte	0x8
	.byte	0x4
	.value	0x4d8
	.long	0x11e7
	.uleb128 0xa
	.long	.LASF465
	.byte	0x4
	.value	0x4d8
	.long	0x1e3
	.uleb128 0xa
	.long	.LASF440
	.byte	0x4
	.value	0x4d8
	.long	0x2ba
	.byte	0
	.uleb128 0xf
	.long	.LASF466
	.byte	0xa8
	.byte	0x4
	.value	0x4b8
	.long	0x13fc
	.uleb128 0x10
	.long	.LASF16
	.byte	0x4
	.value	0x4ba
	.long	0xd0c
	.byte	0
	.uleb128 0x10
	.long	.LASF467
	.byte	0x4
	.value	0x4bb
	.long	0x123
	.byte	0x18
	.uleb128 0x10
	.long	.LASF468
	.byte	0x4
	.value	0x4bc
	.long	0x123
	.byte	0x20
	.uleb128 0x10
	.long	.LASF469
	.byte	0x4
	.value	0x4bd
	.long	0x123
	.byte	0x28
	.uleb128 0x10
	.long	.LASF470
	.byte	0x4
	.value	0x4be
	.long	0x123
	.byte	0x30
	.uleb128 0x1a
	.string	"uid"
	.byte	0x4
	.value	0x4bf
	.long	0x266
	.byte	0x38
	.uleb128 0x1d
	.long	.LASF471
	.byte	0x4
	.value	0x4c1
	.long	0x266
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x3c
	.uleb128 0x1d
	.long	.LASF1
	.byte	0x4
	.value	0x4c2
	.long	0x266
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x3c
	.uleb128 0x1d
	.long	.LASF472
	.byte	0x4
	.value	0x4c4
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3c
	.uleb128 0x1d
	.long	.LASF473
	.byte	0x4
	.value	0x4c5
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3c
	.uleb128 0x1d
	.long	.LASF474
	.byte	0x4
	.value	0x4c6
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3c
	.uleb128 0x1d
	.long	.LASF475
	.byte	0x4
	.value	0x4c7
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3c
	.uleb128 0x1d
	.long	.LASF476
	.byte	0x4
	.value	0x4c8
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3c
	.uleb128 0x1d
	.long	.LASF477
	.byte	0x4
	.value	0x4c9
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3c
	.uleb128 0x1d
	.long	.LASF478
	.byte	0x4
	.value	0x4ca
	.long	0x266
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.uleb128 0x1d
	.long	.LASF426
	.byte	0x4
	.value	0x4cc
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3c
	.uleb128 0x1d
	.long	.LASF427
	.byte	0x4
	.value	0x4cd
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x3c
	.uleb128 0x1d
	.long	.LASF428
	.byte	0x4
	.value	0x4ce
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x3c
	.uleb128 0x1d
	.long	.LASF429
	.byte	0x4
	.value	0x4cf
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x3c
	.uleb128 0x1d
	.long	.LASF430
	.byte	0x4
	.value	0x4d0
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x3c
	.uleb128 0x1d
	.long	.LASF431
	.byte	0x4
	.value	0x4d1
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x3c
	.uleb128 0x1d
	.long	.LASF432
	.byte	0x4
	.value	0x4d2
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x3c
	.uleb128 0x1d
	.long	.LASF479
	.byte	0x4
	.value	0x4d3
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x3c
	.uleb128 0x10
	.long	.LASF480
	.byte	0x4
	.value	0x4d5
	.long	0x266
	.byte	0x40
	.uleb128 0x10
	.long	.LASF481
	.byte	0x4
	.value	0x4d6
	.long	0x123
	.byte	0x48
	.uleb128 0x10
	.long	.LASF482
	.byte	0x4
	.value	0x4d7
	.long	0x123
	.byte	0x50
	.uleb128 0x10
	.long	.LASF483
	.byte	0x4
	.value	0x4d8
	.long	0x11c5
	.byte	0x58
	.uleb128 0x10
	.long	.LASF484
	.byte	0x4
	.value	0x4d9
	.long	0x123
	.byte	0x60
	.uleb128 0x10
	.long	.LASF485
	.byte	0x4
	.value	0x4da
	.long	0x123
	.byte	0x68
	.uleb128 0x10
	.long	.LASF486
	.byte	0x4
	.value	0x4db
	.long	0x123
	.byte	0x70
	.uleb128 0x10
	.long	.LASF487
	.byte	0x4
	.value	0x4dc
	.long	0x123
	.byte	0x78
	.uleb128 0x10
	.long	.LASF488
	.byte	0x4
	.value	0x4dd
	.long	0x123
	.byte	0x80
	.uleb128 0x10
	.long	.LASF489
	.byte	0x4
	.value	0x4de
	.long	0x123
	.byte	0x88
	.uleb128 0x10
	.long	.LASF490
	.byte	0x4
	.value	0x4df
	.long	0x123
	.byte	0x90
	.uleb128 0x10
	.long	.LASF491
	.byte	0x4
	.value	0x4e0
	.long	0x26f
	.byte	0x98
	.uleb128 0x10
	.long	.LASF492
	.byte	0x4
	.value	0x4e2
	.long	0x1421
	.byte	0xa0
	.byte	0
	.uleb128 0x4
	.long	.LASF493
	.byte	0x10
	.byte	0xd
	.byte	0x6e
	.long	0x1421
	.uleb128 0x6
	.string	"len"
	.byte	0xd
	.byte	0x70
	.long	0x1e3
	.byte	0
	.uleb128 0x8
	.long	.LASF494
	.byte	0xd
	.byte	0x71
	.long	0x10e7
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x13fc
	.uleb128 0x19
	.byte	0x4
	.byte	0x4
	.value	0x717
	.long	0x1451
	.uleb128 0x1d
	.long	.LASF480
	.byte	0x4
	.value	0x717
	.long	0x266
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0x1d
	.long	.LASF495
	.byte	0x4
	.value	0x717
	.long	0x266
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.byte	0x8
	.byte	0x4
	.value	0x70e
	.long	0x1479
	.uleb128 0xb
	.string	"f"
	.byte	0x4
	.value	0x711
	.long	0xa9f
	.uleb128 0xb
	.string	"i"
	.byte	0x4
	.value	0x714
	.long	0x26f
	.uleb128 0xb
	.string	"a"
	.byte	0x4
	.value	0x717
	.long	0x1427
	.byte	0
	.uleb128 0x1e
	.byte	0x8
	.byte	0x4
	.value	0x72c
	.long	0x14ab
	.uleb128 0xb
	.string	"f"
	.byte	0x4
	.value	0x72d
	.long	0x192b
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
	.uleb128 0x1f
	.long	.LASF496
	.value	0x1b0
	.byte	0xe
	.byte	0xae
	.long	0x192b
	.uleb128 0x6
	.string	"eh"
	.byte	0xe
	.byte	0xb0
	.long	0x27ff
	.byte	0
	.uleb128 0x8
	.long	.LASF497
	.byte	0xe
	.byte	0xb1
	.long	0x280a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF498
	.byte	0xe
	.byte	0xb2
	.long	0x2810
	.byte	0x10
	.uleb128 0x8
	.long	.LASF499
	.byte	0xe
	.byte	0xb3
	.long	0x2816
	.byte	0x18
	.uleb128 0x8
	.long	.LASF500
	.byte	0xe
	.byte	0xb4
	.long	0x2821
	.byte	0x20
	.uleb128 0x8
	.long	.LASF484
	.byte	0xe
	.byte	0xb9
	.long	0x4bd
	.byte	0x28
	.uleb128 0x8
	.long	.LASF23
	.byte	0xe
	.byte	0xbc
	.long	0x123
	.byte	0x30
	.uleb128 0x8
	.long	.LASF501
	.byte	0xe
	.byte	0xbf
	.long	0x192b
	.byte	0x38
	.uleb128 0x8
	.long	.LASF502
	.byte	0xe
	.byte	0xc4
	.long	0x1e3
	.byte	0x40
	.uleb128 0x8
	.long	.LASF503
	.byte	0xe
	.byte	0xc9
	.long	0x1e3
	.byte	0x44
	.uleb128 0x8
	.long	.LASF504
	.byte	0xe
	.byte	0xce
	.long	0x1e3
	.byte	0x48
	.uleb128 0x8
	.long	.LASF505
	.byte	0xe
	.byte	0xd2
	.long	0x1e3
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF506
	.byte	0xe
	.byte	0xd6
	.long	0x2d
	.byte	0x50
	.uleb128 0x8
	.long	.LASF507
	.byte	0xe
	.byte	0xda
	.long	0x25a
	.byte	0x58
	.uleb128 0x8
	.long	.LASF508
	.byte	0xe
	.byte	0xe0
	.long	0x2d
	.byte	0x78
	.uleb128 0x8
	.long	.LASF509
	.byte	0xe
	.byte	0xe3
	.long	0x2d
	.byte	0x80
	.uleb128 0x8
	.long	.LASF510
	.byte	0xe
	.byte	0xe7
	.long	0x4bd
	.byte	0x88
	.uleb128 0x8
	.long	.LASF511
	.byte	0xe
	.byte	0xeb
	.long	0x282c
	.byte	0x90
	.uleb128 0x8
	.long	.LASF512
	.byte	0xe
	.byte	0xee
	.long	0x1e3
	.byte	0x98
	.uleb128 0x8
	.long	.LASF513
	.byte	0xe
	.byte	0xf3
	.long	0x123
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF514
	.byte	0xe
	.byte	0xf9
	.long	0x2d
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF515
	.byte	0xe
	.byte	0xfd
	.long	0x2d
	.byte	0xb0
	.uleb128 0x10
	.long	.LASF516
	.byte	0xe
	.value	0x102
	.long	0x2d
	.byte	0xb8
	.uleb128 0x10
	.long	.LASF517
	.byte	0xe
	.value	0x108
	.long	0x2d
	.byte	0xc0
	.uleb128 0x10
	.long	.LASF518
	.byte	0xe
	.value	0x10d
	.long	0x2d
	.byte	0xc8
	.uleb128 0x10
	.long	.LASF519
	.byte	0xe
	.value	0x111
	.long	0x2d
	.byte	0xd0
	.uleb128 0x10
	.long	.LASF520
	.byte	0xe
	.value	0x115
	.long	0x2d
	.byte	0xd8
	.uleb128 0x10
	.long	.LASF521
	.byte	0xe
	.value	0x118
	.long	0x123
	.byte	0xe0
	.uleb128 0x10
	.long	.LASF522
	.byte	0xe
	.value	0x11c
	.long	0x2d
	.byte	0xe8
	.uleb128 0x10
	.long	.LASF523
	.byte	0xe
	.value	0x11f
	.long	0x2d
	.byte	0xf0
	.uleb128 0x10
	.long	.LASF524
	.byte	0xe
	.value	0x125
	.long	0x2d
	.byte	0xf8
	.uleb128 0x20
	.long	.LASF525
	.byte	0xe
	.value	0x12a
	.long	0x2d
	.value	0x100
	.uleb128 0x20
	.long	.LASF526
	.byte	0xe
	.value	0x12f
	.long	0x26f
	.value	0x108
	.uleb128 0x20
	.long	.LASF527
	.byte	0xe
	.value	0x134
	.long	0x123
	.value	0x110
	.uleb128 0x20
	.long	.LASF528
	.byte	0xe
	.value	0x13d
	.long	0x123
	.value	0x118
	.uleb128 0x20
	.long	.LASF529
	.byte	0xe
	.value	0x140
	.long	0x2d
	.value	0x120
	.uleb128 0x20
	.long	.LASF530
	.byte	0xe
	.value	0x144
	.long	0x2d
	.value	0x128
	.uleb128 0x20
	.long	.LASF531
	.byte	0xe
	.value	0x148
	.long	0x266
	.value	0x130
	.uleb128 0x20
	.long	.LASF532
	.byte	0xe
	.value	0x14e
	.long	0x2608
	.value	0x138
	.uleb128 0x20
	.long	.LASF533
	.byte	0xe
	.value	0x151
	.long	0x2837
	.value	0x140
	.uleb128 0x20
	.long	.LASF534
	.byte	0xe
	.value	0x154
	.long	0x1e3
	.value	0x148
	.uleb128 0x20
	.long	.LASF535
	.byte	0xe
	.value	0x157
	.long	0x1e3
	.value	0x14c
	.uleb128 0x20
	.long	.LASF536
	.byte	0xe
	.value	0x15d
	.long	0x1e3
	.value	0x150
	.uleb128 0x20
	.long	.LASF537
	.byte	0xe
	.value	0x161
	.long	0x26a1
	.value	0x158
	.uleb128 0x20
	.long	.LASF538
	.byte	0xe
	.value	0x164
	.long	0x1e3
	.value	0x160
	.uleb128 0x20
	.long	.LASF539
	.byte	0xe
	.value	0x165
	.long	0x1e3
	.value	0x164
	.uleb128 0x20
	.long	.LASF540
	.byte	0xe
	.value	0x167
	.long	0x26d
	.value	0x168
	.uleb128 0x20
	.long	.LASF541
	.byte	0xe
	.value	0x168
	.long	0x123
	.value	0x170
	.uleb128 0x20
	.long	.LASF542
	.byte	0xe
	.value	0x16b
	.long	0x2d
	.value	0x178
	.uleb128 0x20
	.long	.LASF543
	.byte	0xe
	.value	0x16d
	.long	0x1e3
	.value	0x180
	.uleb128 0x20
	.long	.LASF544
	.byte	0xe
	.value	0x170
	.long	0x1e3
	.value	0x184
	.uleb128 0x20
	.long	.LASF545
	.byte	0xe
	.value	0x175
	.long	0x2842
	.value	0x188
	.uleb128 0x20
	.long	.LASF546
	.byte	0xe
	.value	0x177
	.long	0x1e3
	.value	0x190
	.uleb128 0x20
	.long	.LASF547
	.byte	0xe
	.value	0x179
	.long	0x1e3
	.value	0x194
	.uleb128 0x20
	.long	.LASF548
	.byte	0xe
	.value	0x17c
	.long	0x2870
	.value	0x198
	.uleb128 0x20
	.long	.LASF549
	.byte	0xe
	.value	0x182
	.long	0x2d
	.value	0x1a0
	.uleb128 0x21
	.long	.LASF550
	.byte	0xe
	.value	0x188
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF551
	.byte	0xe
	.value	0x18c
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF552
	.byte	0xe
	.value	0x18f
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF553
	.byte	0xe
	.value	0x192
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF554
	.byte	0xe
	.value	0x195
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF555
	.byte	0xe
	.value	0x198
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF556
	.byte	0xe
	.value	0x19c
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF557
	.byte	0xe
	.value	0x19f
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF558
	.byte	0xe
	.value	0x1a3
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF559
	.byte	0xe
	.value	0x1a7
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF560
	.byte	0xe
	.value	0x1aa
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF561
	.byte	0xe
	.value	0x1ad
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF562
	.byte	0xe
	.value	0x1b2
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF563
	.byte	0xe
	.value	0x1b6
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF564
	.byte	0xe
	.value	0x1b9
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF565
	.byte	0xe
	.value	0x1bd
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF566
	.byte	0xe
	.value	0x1c1
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF567
	.byte	0xe
	.value	0x1c5
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF568
	.byte	0xe
	.value	0x1cb
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF569
	.byte	0xe
	.value	0x1d4
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF570
	.byte	0xe
	.value	0x1d7
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF571
	.byte	0xe
	.value	0x1da
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF572
	.byte	0xe
	.value	0x1dd
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.value	0x1a8
	.uleb128 0x21
	.long	.LASF573
	.byte	0xe
	.value	0x1e0
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.value	0x1a8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x14ab
	.uleb128 0xf
	.long	.LASF574
	.byte	0xd0
	.byte	0x4
	.value	0x6dc
	.long	0x1cb5
	.uleb128 0x10
	.long	.LASF16
	.byte	0x4
	.value	0x6de
	.long	0xd0c
	.byte	0
	.uleb128 0x10
	.long	.LASF575
	.byte	0x4
	.value	0x6df
	.long	0x4bd
	.byte	0x18
	.uleb128 0x10
	.long	.LASF576
	.byte	0x4
	.value	0x6e0
	.long	0x1e3
	.byte	0x20
	.uleb128 0x1a
	.string	"uid"
	.byte	0x4
	.value	0x6e1
	.long	0x266
	.byte	0x24
	.uleb128 0x10
	.long	.LASF468
	.byte	0x4
	.value	0x6e2
	.long	0x123
	.byte	0x28
	.uleb128 0x1d
	.long	.LASF1
	.byte	0x4
	.value	0x6e3
	.long	0x266
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x30
	.uleb128 0x1d
	.long	.LASF577
	.byte	0x4
	.value	0x6e5
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x30
	.uleb128 0x1d
	.long	.LASF578
	.byte	0x4
	.value	0x6e6
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x30
	.uleb128 0x1d
	.long	.LASF579
	.byte	0x4
	.value	0x6e7
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x30
	.uleb128 0x1d
	.long	.LASF580
	.byte	0x4
	.value	0x6e8
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x30
	.uleb128 0x1d
	.long	.LASF581
	.byte	0x4
	.value	0x6e9
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x30
	.uleb128 0x1d
	.long	.LASF582
	.byte	0x4
	.value	0x6ea
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x30
	.uleb128 0x1d
	.long	.LASF583
	.byte	0x4
	.value	0x6eb
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x30
	.uleb128 0x1d
	.long	.LASF457
	.byte	0x4
	.value	0x6ec
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x30
	.uleb128 0x1d
	.long	.LASF584
	.byte	0x4
	.value	0x6ee
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x30
	.uleb128 0x1d
	.long	.LASF585
	.byte	0x4
	.value	0x6ef
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x30
	.uleb128 0x1d
	.long	.LASF586
	.byte	0x4
	.value	0x6f0
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x30
	.uleb128 0x1d
	.long	.LASF587
	.byte	0x4
	.value	0x6f1
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x30
	.uleb128 0x1d
	.long	.LASF588
	.byte	0x4
	.value	0x6f2
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x30
	.uleb128 0x1d
	.long	.LASF589
	.byte	0x4
	.value	0x6f3
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x30
	.uleb128 0x1d
	.long	.LASF590
	.byte	0x4
	.value	0x6f4
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x30
	.uleb128 0x1d
	.long	.LASF591
	.byte	0x4
	.value	0x6f5
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x30
	.uleb128 0x1d
	.long	.LASF592
	.byte	0x4
	.value	0x6f7
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x30
	.uleb128 0x1d
	.long	.LASF593
	.byte	0x4
	.value	0x6f8
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x30
	.uleb128 0x1d
	.long	.LASF594
	.byte	0x4
	.value	0x6f9
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x30
	.uleb128 0x1d
	.long	.LASF595
	.byte	0x4
	.value	0x6fa
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x30
	.uleb128 0x1d
	.long	.LASF596
	.byte	0x4
	.value	0x6fb
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x30
	.uleb128 0x1d
	.long	.LASF306
	.byte	0x4
	.value	0x6fc
	.long	0x266
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x30
	.uleb128 0x1d
	.long	.LASF597
	.byte	0x4
	.value	0x6fd
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x30
	.uleb128 0x1d
	.long	.LASF478
	.byte	0x4
	.value	0x6ff
	.long	0x266
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x34
	.uleb128 0x1d
	.long	.LASF598
	.byte	0x4
	.value	0x700
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x34
	.uleb128 0x1d
	.long	.LASF479
	.byte	0x4
	.value	0x701
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x34
	.uleb128 0x1d
	.long	.LASF599
	.byte	0x4
	.value	0x702
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x34
	.uleb128 0x1d
	.long	.LASF426
	.byte	0x4
	.value	0x705
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x34
	.uleb128 0x1d
	.long	.LASF427
	.byte	0x4
	.value	0x706
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x34
	.uleb128 0x1d
	.long	.LASF428
	.byte	0x4
	.value	0x707
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x34
	.uleb128 0x1d
	.long	.LASF429
	.byte	0x4
	.value	0x708
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x34
	.uleb128 0x1d
	.long	.LASF430
	.byte	0x4
	.value	0x709
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x34
	.uleb128 0x1d
	.long	.LASF431
	.byte	0x4
	.value	0x70a
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x34
	.uleb128 0x1d
	.long	.LASF432
	.byte	0x4
	.value	0x70b
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x34
	.uleb128 0x1d
	.long	.LASF600
	.byte	0x4
	.value	0x70c
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x34
	.uleb128 0x1a
	.string	"u1"
	.byte	0x4
	.value	0x718
	.long	0x1451
	.byte	0x38
	.uleb128 0x10
	.long	.LASF469
	.byte	0x4
	.value	0x71a
	.long	0x123
	.byte	0x40
	.uleb128 0x10
	.long	.LASF484
	.byte	0x4
	.value	0x71b
	.long	0x123
	.byte	0x48
	.uleb128 0x10
	.long	.LASF490
	.byte	0x4
	.value	0x71c
	.long	0x123
	.byte	0x50
	.uleb128 0x10
	.long	.LASF601
	.byte	0x4
	.value	0x71d
	.long	0x123
	.byte	0x58
	.uleb128 0x10
	.long	.LASF602
	.byte	0x4
	.value	0x71e
	.long	0x123
	.byte	0x60
	.uleb128 0x10
	.long	.LASF603
	.byte	0x4
	.value	0x71f
	.long	0x123
	.byte	0x68
	.uleb128 0x10
	.long	.LASF462
	.byte	0x4
	.value	0x720
	.long	0x123
	.byte	0x70
	.uleb128 0x10
	.long	.LASF604
	.byte	0x4
	.value	0x721
	.long	0x123
	.byte	0x78
	.uleb128 0x10
	.long	.LASF605
	.byte	0x4
	.value	0x722
	.long	0x123
	.byte	0x80
	.uleb128 0x10
	.long	.LASF470
	.byte	0x4
	.value	0x723
	.long	0x123
	.byte	0x88
	.uleb128 0x1a
	.string	"rtl"
	.byte	0x4
	.value	0x724
	.long	0x2d
	.byte	0x90
	.uleb128 0x10
	.long	.LASF606
	.byte	0x4
	.value	0x725
	.long	0x2d
	.byte	0x98
	.uleb128 0x1a
	.string	"u2"
	.byte	0x4
	.value	0x731
	.long	0x1479
	.byte	0xa0
	.uleb128 0x10
	.long	.LASF607
	.byte	0x4
	.value	0x734
	.long	0x123
	.byte	0xa8
	.uleb128 0x10
	.long	.LASF608
	.byte	0x4
	.value	0x738
	.long	0x123
	.byte	0xb0
	.uleb128 0x10
	.long	.LASF609
	.byte	0x4
	.value	0x73a
	.long	0x123
	.byte	0xb8
	.uleb128 0x10
	.long	.LASF610
	.byte	0x4
	.value	0x73b
	.long	0x26f
	.byte	0xc0
	.uleb128 0x10
	.long	.LASF492
	.byte	0x4
	.value	0x73d
	.long	0x1cda
	.byte	0xc8
	.byte	0
	.uleb128 0x4
	.long	.LASF611
	.byte	0x10
	.byte	0xd
	.byte	0x2e
	.long	0x1cda
	.uleb128 0x8
	.long	.LASF612
	.byte	0xd
	.byte	0x30
	.long	0x2f8e
	.byte	0
	.uleb128 0x8
	.long	.LASF613
	.byte	0xd
	.byte	0x34
	.long	0x123
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1cb5
	.uleb128 0x22
	.long	.LASF614
	.byte	0x4
	.byte	0x4
	.value	0x757
	.long	0x1e26
	.uleb128 0x18
	.long	.LASF615
	.sleb128 0
	.uleb128 0x18
	.long	.LASF616
	.sleb128 1
	.uleb128 0x18
	.long	.LASF617
	.sleb128 2
	.uleb128 0x18
	.long	.LASF618
	.sleb128 3
	.uleb128 0x18
	.long	.LASF619
	.sleb128 4
	.uleb128 0x18
	.long	.LASF620
	.sleb128 5
	.uleb128 0x18
	.long	.LASF621
	.sleb128 6
	.uleb128 0x18
	.long	.LASF622
	.sleb128 7
	.uleb128 0x18
	.long	.LASF623
	.sleb128 8
	.uleb128 0x18
	.long	.LASF624
	.sleb128 9
	.uleb128 0x18
	.long	.LASF625
	.sleb128 10
	.uleb128 0x18
	.long	.LASF626
	.sleb128 11
	.uleb128 0x18
	.long	.LASF627
	.sleb128 12
	.uleb128 0x18
	.long	.LASF628
	.sleb128 13
	.uleb128 0x18
	.long	.LASF629
	.sleb128 14
	.uleb128 0x18
	.long	.LASF630
	.sleb128 15
	.uleb128 0x18
	.long	.LASF631
	.sleb128 16
	.uleb128 0x18
	.long	.LASF632
	.sleb128 17
	.uleb128 0x18
	.long	.LASF633
	.sleb128 18
	.uleb128 0x18
	.long	.LASF634
	.sleb128 19
	.uleb128 0x18
	.long	.LASF635
	.sleb128 20
	.uleb128 0x18
	.long	.LASF636
	.sleb128 21
	.uleb128 0x18
	.long	.LASF637
	.sleb128 22
	.uleb128 0x18
	.long	.LASF638
	.sleb128 23
	.uleb128 0x18
	.long	.LASF639
	.sleb128 24
	.uleb128 0x18
	.long	.LASF640
	.sleb128 25
	.uleb128 0x18
	.long	.LASF641
	.sleb128 26
	.uleb128 0x18
	.long	.LASF642
	.sleb128 27
	.uleb128 0x18
	.long	.LASF643
	.sleb128 28
	.uleb128 0x18
	.long	.LASF644
	.sleb128 29
	.uleb128 0x18
	.long	.LASF645
	.sleb128 30
	.uleb128 0x18
	.long	.LASF646
	.sleb128 31
	.uleb128 0x18
	.long	.LASF647
	.sleb128 32
	.uleb128 0x18
	.long	.LASF648
	.sleb128 33
	.uleb128 0x18
	.long	.LASF649
	.sleb128 34
	.uleb128 0x18
	.long	.LASF650
	.sleb128 35
	.uleb128 0x18
	.long	.LASF651
	.sleb128 36
	.uleb128 0x18
	.long	.LASF652
	.sleb128 37
	.uleb128 0x18
	.long	.LASF653
	.sleb128 38
	.uleb128 0x18
	.long	.LASF654
	.sleb128 39
	.uleb128 0x18
	.long	.LASF655
	.sleb128 40
	.uleb128 0x18
	.long	.LASF656
	.sleb128 41
	.uleb128 0x18
	.long	.LASF657
	.sleb128 42
	.uleb128 0x18
	.long	.LASF658
	.sleb128 43
	.uleb128 0x18
	.long	.LASF659
	.sleb128 44
	.uleb128 0x18
	.long	.LASF660
	.sleb128 45
	.uleb128 0x18
	.long	.LASF661
	.sleb128 46
	.uleb128 0x18
	.long	.LASF662
	.sleb128 47
	.uleb128 0x18
	.long	.LASF663
	.sleb128 48
	.uleb128 0x18
	.long	.LASF664
	.sleb128 49
	.uleb128 0x18
	.long	.LASF665
	.sleb128 50
	.uleb128 0x18
	.long	.LASF666
	.sleb128 51
	.byte	0
	.uleb128 0x22
	.long	.LASF667
	.byte	0x4
	.byte	0x4
	.value	0x7e4
	.long	0x1e7c
	.uleb128 0x18
	.long	.LASF668
	.sleb128 0
	.uleb128 0x18
	.long	.LASF669
	.sleb128 1
	.uleb128 0x18
	.long	.LASF670
	.sleb128 2
	.uleb128 0x18
	.long	.LASF671
	.sleb128 3
	.uleb128 0x18
	.long	.LASF672
	.sleb128 4
	.uleb128 0x18
	.long	.LASF673
	.sleb128 5
	.uleb128 0x18
	.long	.LASF674
	.sleb128 6
	.uleb128 0x18
	.long	.LASF675
	.sleb128 7
	.uleb128 0x18
	.long	.LASF676
	.sleb128 8
	.uleb128 0x18
	.long	.LASF677
	.sleb128 9
	.uleb128 0x18
	.long	.LASF678
	.sleb128 10
	.uleb128 0x18
	.long	.LASF679
	.sleb128 11
	.byte	0
	.uleb128 0xf
	.long	.LASF680
	.byte	0x20
	.byte	0x4
	.value	0x885
	.long	0x1ee5
	.uleb128 0x10
	.long	.LASF484
	.byte	0x4
	.value	0x889
	.long	0x1ee5
	.byte	0
	.uleb128 0x10
	.long	.LASF681
	.byte	0x4
	.value	0x88b
	.long	0x1de
	.byte	0x8
	.uleb128 0x10
	.long	.LASF682
	.byte	0x4
	.value	0x88e
	.long	0x1de
	.byte	0xc
	.uleb128 0x10
	.long	.LASF683
	.byte	0x4
	.value	0x896
	.long	0x1eea
	.byte	0x10
	.uleb128 0x10
	.long	.LASF684
	.byte	0x4
	.value	0x899
	.long	0x1eea
	.byte	0x11
	.uleb128 0x10
	.long	.LASF685
	.byte	0x4
	.value	0x89e
	.long	0x1eea
	.byte	0x12
	.uleb128 0x10
	.long	.LASF686
	.byte	0x4
	.value	0x8ad
	.long	0x1f25
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.long	0x4bd
	.uleb128 0xc
	.long	0x1eef
	.uleb128 0xe
	.byte	0x1
	.byte	0x2
	.long	.LASF687
	.uleb128 0x23
	.long	0x123
	.long	0x1f19
	.uleb128 0x24
	.long	0x1f19
	.uleb128 0x24
	.long	0x123
	.uleb128 0x24
	.long	0x123
	.uleb128 0x24
	.long	0x1e3
	.uleb128 0x24
	.long	0x1f1f
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x123
	.uleb128 0x3
	.byte	0x8
	.long	0x1eef
	.uleb128 0xc
	.long	0x1f2a
	.uleb128 0x3
	.byte	0x8
	.long	0x1ef6
	.uleb128 0x22
	.long	.LASF688
	.byte	0x4
	.byte	0x4
	.value	0x8b5
	.long	0x1f5c
	.uleb128 0x18
	.long	.LASF689
	.sleb128 1
	.uleb128 0x18
	.long	.LASF690
	.sleb128 2
	.uleb128 0x18
	.long	.LASF691
	.sleb128 4
	.uleb128 0x18
	.long	.LASF692
	.sleb128 8
	.uleb128 0x18
	.long	.LASF693
	.sleb128 16
	.byte	0
	.uleb128 0x22
	.long	.LASF694
	.byte	0x4
	.byte	0x4
	.value	0x972
	.long	0x1f94
	.uleb128 0x18
	.long	.LASF695
	.sleb128 0
	.uleb128 0x18
	.long	.LASF696
	.sleb128 1
	.uleb128 0x18
	.long	.LASF697
	.sleb128 2
	.uleb128 0x18
	.long	.LASF698
	.sleb128 3
	.uleb128 0x18
	.long	.LASF699
	.sleb128 4
	.uleb128 0x18
	.long	.LASF700
	.sleb128 5
	.uleb128 0x18
	.long	.LASF701
	.sleb128 6
	.byte	0
	.uleb128 0x17
	.long	.LASF702
	.byte	0x4
	.byte	0x2
	.byte	0x29
	.long	0x2390
	.uleb128 0x18
	.long	.LASF703
	.sleb128 0
	.uleb128 0x25
	.string	"NIL"
	.sleb128 1
	.uleb128 0x18
	.long	.LASF704
	.sleb128 2
	.uleb128 0x18
	.long	.LASF705
	.sleb128 3
	.uleb128 0x18
	.long	.LASF706
	.sleb128 4
	.uleb128 0x18
	.long	.LASF707
	.sleb128 5
	.uleb128 0x18
	.long	.LASF708
	.sleb128 6
	.uleb128 0x18
	.long	.LASF709
	.sleb128 7
	.uleb128 0x18
	.long	.LASF710
	.sleb128 8
	.uleb128 0x18
	.long	.LASF711
	.sleb128 9
	.uleb128 0x18
	.long	.LASF712
	.sleb128 10
	.uleb128 0x18
	.long	.LASF713
	.sleb128 11
	.uleb128 0x18
	.long	.LASF714
	.sleb128 12
	.uleb128 0x18
	.long	.LASF715
	.sleb128 13
	.uleb128 0x18
	.long	.LASF716
	.sleb128 14
	.uleb128 0x18
	.long	.LASF717
	.sleb128 15
	.uleb128 0x18
	.long	.LASF718
	.sleb128 16
	.uleb128 0x18
	.long	.LASF719
	.sleb128 17
	.uleb128 0x18
	.long	.LASF720
	.sleb128 18
	.uleb128 0x18
	.long	.LASF721
	.sleb128 19
	.uleb128 0x18
	.long	.LASF722
	.sleb128 20
	.uleb128 0x18
	.long	.LASF723
	.sleb128 21
	.uleb128 0x18
	.long	.LASF724
	.sleb128 22
	.uleb128 0x18
	.long	.LASF725
	.sleb128 23
	.uleb128 0x18
	.long	.LASF726
	.sleb128 24
	.uleb128 0x18
	.long	.LASF727
	.sleb128 25
	.uleb128 0x18
	.long	.LASF728
	.sleb128 26
	.uleb128 0x18
	.long	.LASF729
	.sleb128 27
	.uleb128 0x18
	.long	.LASF730
	.sleb128 28
	.uleb128 0x18
	.long	.LASF731
	.sleb128 29
	.uleb128 0x18
	.long	.LASF732
	.sleb128 30
	.uleb128 0x18
	.long	.LASF733
	.sleb128 31
	.uleb128 0x18
	.long	.LASF734
	.sleb128 32
	.uleb128 0x18
	.long	.LASF735
	.sleb128 33
	.uleb128 0x18
	.long	.LASF736
	.sleb128 34
	.uleb128 0x18
	.long	.LASF737
	.sleb128 35
	.uleb128 0x18
	.long	.LASF738
	.sleb128 36
	.uleb128 0x18
	.long	.LASF739
	.sleb128 37
	.uleb128 0x18
	.long	.LASF740
	.sleb128 38
	.uleb128 0x18
	.long	.LASF741
	.sleb128 39
	.uleb128 0x18
	.long	.LASF742
	.sleb128 40
	.uleb128 0x18
	.long	.LASF743
	.sleb128 41
	.uleb128 0x18
	.long	.LASF744
	.sleb128 42
	.uleb128 0x18
	.long	.LASF745
	.sleb128 43
	.uleb128 0x18
	.long	.LASF746
	.sleb128 44
	.uleb128 0x18
	.long	.LASF747
	.sleb128 45
	.uleb128 0x18
	.long	.LASF748
	.sleb128 46
	.uleb128 0x25
	.string	"SET"
	.sleb128 47
	.uleb128 0x25
	.string	"USE"
	.sleb128 48
	.uleb128 0x18
	.long	.LASF749
	.sleb128 49
	.uleb128 0x18
	.long	.LASF750
	.sleb128 50
	.uleb128 0x18
	.long	.LASF751
	.sleb128 51
	.uleb128 0x18
	.long	.LASF752
	.sleb128 52
	.uleb128 0x18
	.long	.LASF753
	.sleb128 53
	.uleb128 0x18
	.long	.LASF754
	.sleb128 54
	.uleb128 0x18
	.long	.LASF755
	.sleb128 55
	.uleb128 0x18
	.long	.LASF756
	.sleb128 56
	.uleb128 0x18
	.long	.LASF757
	.sleb128 57
	.uleb128 0x18
	.long	.LASF758
	.sleb128 58
	.uleb128 0x25
	.string	"PC"
	.sleb128 59
	.uleb128 0x18
	.long	.LASF759
	.sleb128 60
	.uleb128 0x25
	.string	"REG"
	.sleb128 61
	.uleb128 0x18
	.long	.LASF760
	.sleb128 62
	.uleb128 0x18
	.long	.LASF761
	.sleb128 63
	.uleb128 0x18
	.long	.LASF762
	.sleb128 64
	.uleb128 0x18
	.long	.LASF763
	.sleb128 65
	.uleb128 0x25
	.string	"MEM"
	.sleb128 66
	.uleb128 0x18
	.long	.LASF764
	.sleb128 67
	.uleb128 0x18
	.long	.LASF765
	.sleb128 68
	.uleb128 0x25
	.string	"CC0"
	.sleb128 69
	.uleb128 0x18
	.long	.LASF766
	.sleb128 70
	.uleb128 0x18
	.long	.LASF767
	.sleb128 71
	.uleb128 0x18
	.long	.LASF768
	.sleb128 72
	.uleb128 0x18
	.long	.LASF769
	.sleb128 73
	.uleb128 0x18
	.long	.LASF770
	.sleb128 74
	.uleb128 0x18
	.long	.LASF771
	.sleb128 75
	.uleb128 0x18
	.long	.LASF772
	.sleb128 76
	.uleb128 0x25
	.string	"NEG"
	.sleb128 77
	.uleb128 0x18
	.long	.LASF773
	.sleb128 78
	.uleb128 0x25
	.string	"DIV"
	.sleb128 79
	.uleb128 0x25
	.string	"MOD"
	.sleb128 80
	.uleb128 0x18
	.long	.LASF774
	.sleb128 81
	.uleb128 0x18
	.long	.LASF775
	.sleb128 82
	.uleb128 0x25
	.string	"AND"
	.sleb128 83
	.uleb128 0x25
	.string	"IOR"
	.sleb128 84
	.uleb128 0x25
	.string	"XOR"
	.sleb128 85
	.uleb128 0x25
	.string	"NOT"
	.sleb128 86
	.uleb128 0x18
	.long	.LASF776
	.sleb128 87
	.uleb128 0x18
	.long	.LASF777
	.sleb128 88
	.uleb128 0x18
	.long	.LASF778
	.sleb128 89
	.uleb128 0x18
	.long	.LASF779
	.sleb128 90
	.uleb128 0x18
	.long	.LASF780
	.sleb128 91
	.uleb128 0x18
	.long	.LASF781
	.sleb128 92
	.uleb128 0x18
	.long	.LASF782
	.sleb128 93
	.uleb128 0x18
	.long	.LASF783
	.sleb128 94
	.uleb128 0x18
	.long	.LASF784
	.sleb128 95
	.uleb128 0x18
	.long	.LASF785
	.sleb128 96
	.uleb128 0x18
	.long	.LASF786
	.sleb128 97
	.uleb128 0x18
	.long	.LASF787
	.sleb128 98
	.uleb128 0x18
	.long	.LASF788
	.sleb128 99
	.uleb128 0x18
	.long	.LASF789
	.sleb128 100
	.uleb128 0x18
	.long	.LASF790
	.sleb128 101
	.uleb128 0x25
	.string	"NE"
	.sleb128 102
	.uleb128 0x25
	.string	"EQ"
	.sleb128 103
	.uleb128 0x25
	.string	"GE"
	.sleb128 104
	.uleb128 0x25
	.string	"GT"
	.sleb128 105
	.uleb128 0x25
	.string	"LE"
	.sleb128 106
	.uleb128 0x25
	.string	"LT"
	.sleb128 107
	.uleb128 0x25
	.string	"GEU"
	.sleb128 108
	.uleb128 0x25
	.string	"GTU"
	.sleb128 109
	.uleb128 0x25
	.string	"LEU"
	.sleb128 110
	.uleb128 0x25
	.string	"LTU"
	.sleb128 111
	.uleb128 0x18
	.long	.LASF791
	.sleb128 112
	.uleb128 0x18
	.long	.LASF792
	.sleb128 113
	.uleb128 0x18
	.long	.LASF793
	.sleb128 114
	.uleb128 0x18
	.long	.LASF794
	.sleb128 115
	.uleb128 0x18
	.long	.LASF795
	.sleb128 116
	.uleb128 0x18
	.long	.LASF796
	.sleb128 117
	.uleb128 0x18
	.long	.LASF797
	.sleb128 118
	.uleb128 0x18
	.long	.LASF798
	.sleb128 119
	.uleb128 0x18
	.long	.LASF799
	.sleb128 120
	.uleb128 0x18
	.long	.LASF800
	.sleb128 121
	.uleb128 0x18
	.long	.LASF801
	.sleb128 122
	.uleb128 0x18
	.long	.LASF802
	.sleb128 123
	.uleb128 0x18
	.long	.LASF803
	.sleb128 124
	.uleb128 0x18
	.long	.LASF804
	.sleb128 125
	.uleb128 0x25
	.string	"FIX"
	.sleb128 126
	.uleb128 0x18
	.long	.LASF805
	.sleb128 127
	.uleb128 0x18
	.long	.LASF806
	.sleb128 128
	.uleb128 0x25
	.string	"ABS"
	.sleb128 129
	.uleb128 0x18
	.long	.LASF807
	.sleb128 130
	.uleb128 0x25
	.string	"FFS"
	.sleb128 131
	.uleb128 0x18
	.long	.LASF808
	.sleb128 132
	.uleb128 0x18
	.long	.LASF809
	.sleb128 133
	.uleb128 0x18
	.long	.LASF810
	.sleb128 134
	.uleb128 0x18
	.long	.LASF811
	.sleb128 135
	.uleb128 0x18
	.long	.LASF812
	.sleb128 136
	.uleb128 0x18
	.long	.LASF813
	.sleb128 137
	.uleb128 0x18
	.long	.LASF814
	.sleb128 138
	.uleb128 0x18
	.long	.LASF815
	.sleb128 139
	.uleb128 0x18
	.long	.LASF816
	.sleb128 140
	.uleb128 0x18
	.long	.LASF817
	.sleb128 141
	.uleb128 0x18
	.long	.LASF818
	.sleb128 142
	.uleb128 0x18
	.long	.LASF819
	.sleb128 143
	.uleb128 0x18
	.long	.LASF820
	.sleb128 144
	.uleb128 0x18
	.long	.LASF821
	.sleb128 145
	.uleb128 0x18
	.long	.LASF822
	.sleb128 146
	.uleb128 0x18
	.long	.LASF823
	.sleb128 147
	.uleb128 0x18
	.long	.LASF824
	.sleb128 148
	.uleb128 0x18
	.long	.LASF825
	.sleb128 149
	.uleb128 0x18
	.long	.LASF826
	.sleb128 150
	.uleb128 0x18
	.long	.LASF827
	.sleb128 151
	.uleb128 0x25
	.string	"PHI"
	.sleb128 152
	.uleb128 0x18
	.long	.LASF828
	.sleb128 153
	.byte	0
	.uleb128 0x1b
	.byte	0x4
	.byte	0x2
	.byte	0x44
	.long	0x2411
	.uleb128 0x5
	.long	.LASF829
	.byte	0x2
	.byte	0x47
	.long	0x266
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF830
	.byte	0x2
	.byte	0x49
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF831
	.byte	0x2
	.byte	0x4a
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.long	.LASF832
	.byte	0x2
	.byte	0x4c
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	.LASF833
	.byte	0x2
	.byte	0x4e
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF834
	.byte	0x2
	.byte	0x50
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF835
	.byte	0x2
	.byte	0x53
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	.LASF836
	.byte	0x2
	.byte	0x55
	.long	0x266
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF837
	.byte	0x2
	.byte	0x56
	.long	0x2390
	.uleb128 0x1b
	.byte	0x28
	.byte	0x2
	.byte	0x5c
	.long	0x2461
	.uleb128 0x8
	.long	.LASF838
	.byte	0x2
	.byte	0x5e
	.long	0x26f
	.byte	0
	.uleb128 0x8
	.long	.LASF498
	.byte	0x2
	.byte	0x5f
	.long	0x123
	.byte	0x8
	.uleb128 0x8
	.long	.LASF839
	.byte	0x2
	.byte	0x60
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF468
	.byte	0x2
	.byte	0x61
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF480
	.byte	0x2
	.byte	0x62
	.long	0x266
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF840
	.byte	0x2
	.byte	0x63
	.long	0x241c
	.uleb128 0x26
	.long	.LASF842
	.byte	0x8
	.byte	0x2
	.byte	0x67
	.long	0x2507
	.uleb128 0x27
	.long	.LASF843
	.byte	0x2
	.byte	0x69
	.long	0x26f
	.uleb128 0x27
	.long	.LASF844
	.byte	0x2
	.byte	0x6a
	.long	0x1e3
	.uleb128 0x27
	.long	.LASF845
	.byte	0x2
	.byte	0x6b
	.long	0x266
	.uleb128 0x27
	.long	.LASF846
	.byte	0x2
	.byte	0x6c
	.long	0x4bd
	.uleb128 0x28
	.string	"rtx"
	.byte	0x2
	.byte	0x6d
	.long	0x2d
	.uleb128 0x27
	.long	.LASF10
	.byte	0x2
	.byte	0x6e
	.long	0xed
	.uleb128 0x27
	.long	.LASF847
	.byte	0x2
	.byte	0x6f
	.long	0x4e3
	.uleb128 0x27
	.long	.LASF848
	.byte	0x2
	.byte	0x70
	.long	0x2411
	.uleb128 0x27
	.long	.LASF849
	.byte	0x2
	.byte	0x71
	.long	0x250c
	.uleb128 0x27
	.long	.LASF850
	.byte	0x2
	.byte	0x72
	.long	0x2517
	.uleb128 0x27
	.long	.LASF851
	.byte	0x2
	.byte	0x73
	.long	0x123
	.uleb128 0x28
	.string	"bb"
	.byte	0x2
	.byte	0x74
	.long	0x2522
	.uleb128 0x27
	.long	.LASF852
	.byte	0x2
	.byte	0x75
	.long	0x2528
	.byte	0
	.uleb128 0x1c
	.long	.LASF854
	.uleb128 0x3
	.byte	0x8
	.long	0x2507
	.uleb128 0x1c
	.long	.LASF855
	.uleb128 0x3
	.byte	0x8
	.long	0x2512
	.uleb128 0x1c
	.long	.LASF856
	.uleb128 0x3
	.byte	0x8
	.long	0x251d
	.uleb128 0x3
	.byte	0x8
	.long	0x2461
	.uleb128 0x7
	.long	.LASF857
	.byte	0x2
	.byte	0x76
	.long	0x246c
	.uleb128 0x14
	.long	0x252e
	.long	0x2549
	.uleb128 0x15
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x2d
	.long	0x2559
	.uleb128 0x15
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF858
	.byte	0x4
	.byte	0x2
	.value	0x297
	.long	0x2608
	.uleb128 0x18
	.long	.LASF859
	.sleb128 -100
	.uleb128 0x18
	.long	.LASF860
	.sleb128 -99
	.uleb128 0x18
	.long	.LASF861
	.sleb128 -98
	.uleb128 0x18
	.long	.LASF862
	.sleb128 -97
	.uleb128 0x18
	.long	.LASF863
	.sleb128 -96
	.uleb128 0x18
	.long	.LASF864
	.sleb128 -95
	.uleb128 0x18
	.long	.LASF865
	.sleb128 -94
	.uleb128 0x18
	.long	.LASF866
	.sleb128 -93
	.uleb128 0x18
	.long	.LASF867
	.sleb128 -92
	.uleb128 0x18
	.long	.LASF868
	.sleb128 -91
	.uleb128 0x18
	.long	.LASF869
	.sleb128 -90
	.uleb128 0x18
	.long	.LASF870
	.sleb128 -89
	.uleb128 0x18
	.long	.LASF871
	.sleb128 -88
	.uleb128 0x18
	.long	.LASF872
	.sleb128 -87
	.uleb128 0x18
	.long	.LASF873
	.sleb128 -86
	.uleb128 0x18
	.long	.LASF874
	.sleb128 -85
	.uleb128 0x18
	.long	.LASF875
	.sleb128 -84
	.uleb128 0x18
	.long	.LASF876
	.sleb128 -83
	.uleb128 0x18
	.long	.LASF877
	.sleb128 -82
	.uleb128 0x18
	.long	.LASF878
	.sleb128 -81
	.uleb128 0x18
	.long	.LASF879
	.sleb128 -80
	.uleb128 0x18
	.long	.LASF880
	.sleb128 -79
	.uleb128 0x18
	.long	.LASF881
	.sleb128 -78
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d
	.uleb128 0x22
	.long	.LASF882
	.byte	0x4
	.byte	0x2
	.value	0x630
	.long	0x2664
	.uleb128 0x18
	.long	.LASF883
	.sleb128 0
	.uleb128 0x18
	.long	.LASF884
	.sleb128 1
	.uleb128 0x18
	.long	.LASF885
	.sleb128 2
	.uleb128 0x18
	.long	.LASF886
	.sleb128 3
	.uleb128 0x18
	.long	.LASF887
	.sleb128 4
	.uleb128 0x18
	.long	.LASF888
	.sleb128 5
	.uleb128 0x18
	.long	.LASF889
	.sleb128 6
	.uleb128 0x18
	.long	.LASF890
	.sleb128 7
	.uleb128 0x18
	.long	.LASF891
	.sleb128 8
	.uleb128 0x18
	.long	.LASF892
	.sleb128 9
	.uleb128 0x18
	.long	.LASF893
	.sleb128 10
	.uleb128 0x18
	.long	.LASF894
	.sleb128 11
	.byte	0
	.uleb128 0x4
	.long	.LASF895
	.byte	0x18
	.byte	0xe
	.byte	0x16
	.long	0x26a1
	.uleb128 0x8
	.long	.LASF896
	.byte	0xe
	.byte	0x18
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF897
	.byte	0xe
	.byte	0x19
	.long	0x4e3
	.byte	0x8
	.uleb128 0x8
	.long	.LASF898
	.byte	0xe
	.byte	0x1a
	.long	0x1e3
	.byte	0xc
	.uleb128 0x8
	.long	.LASF899
	.byte	0xe
	.byte	0x1b
	.long	0x26a1
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2664
	.uleb128 0x4
	.long	.LASF900
	.byte	0x20
	.byte	0xe
	.byte	0x23
	.long	0x26e4
	.uleb128 0x8
	.long	.LASF901
	.byte	0xe
	.byte	0x26
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF902
	.byte	0xe
	.byte	0x26
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF903
	.byte	0xe
	.byte	0x27
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF899
	.byte	0xe
	.byte	0x28
	.long	0x26e4
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x26a7
	.uleb128 0x4
	.long	.LASF904
	.byte	0x58
	.byte	0xe
	.byte	0x35
	.long	0x2793
	.uleb128 0x8
	.long	.LASF905
	.byte	0xe
	.byte	0x39
	.long	0x1e3
	.byte	0
	.uleb128 0x8
	.long	.LASF906
	.byte	0xe
	.byte	0x3c
	.long	0x1e3
	.byte	0x4
	.uleb128 0x8
	.long	.LASF907
	.byte	0xe
	.byte	0x43
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF908
	.byte	0xe
	.byte	0x44
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF903
	.byte	0xe
	.byte	0x49
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF900
	.byte	0xe
	.byte	0x4f
	.long	0x26e4
	.byte	0x20
	.uleb128 0x8
	.long	.LASF909
	.byte	0xe
	.byte	0x53
	.long	0x1e3
	.byte	0x28
	.uleb128 0x8
	.long	.LASF910
	.byte	0xe
	.byte	0x57
	.long	0x1e3
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF911
	.byte	0xe
	.byte	0x58
	.long	0x4bd
	.byte	0x30
	.uleb128 0x8
	.long	.LASF912
	.byte	0xe
	.byte	0x5e
	.long	0x1e3
	.byte	0x38
	.uleb128 0x8
	.long	.LASF913
	.byte	0xe
	.byte	0x63
	.long	0x2793
	.byte	0x40
	.uleb128 0x8
	.long	.LASF914
	.byte	0xe
	.byte	0x67
	.long	0x1f19
	.byte	0x48
	.uleb128 0x8
	.long	.LASF915
	.byte	0xe
	.byte	0x6b
	.long	0x2608
	.byte	0x50
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x288
	.uleb128 0x4
	.long	.LASF916
	.byte	0x30
	.byte	0xe
	.byte	0x77
	.long	0x27fa
	.uleb128 0x8
	.long	.LASF917
	.byte	0xe
	.byte	0x7b
	.long	0x1e3
	.byte	0
	.uleb128 0x8
	.long	.LASF918
	.byte	0xe
	.byte	0x8c
	.long	0x1e3
	.byte	0x4
	.uleb128 0x8
	.long	.LASF919
	.byte	0xe
	.byte	0x92
	.long	0x1e3
	.byte	0x8
	.uleb128 0x8
	.long	.LASF920
	.byte	0xe
	.byte	0x97
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF921
	.byte	0xe
	.byte	0x9a
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF922
	.byte	0xe
	.byte	0x9d
	.long	0x2d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF923
	.byte	0xe
	.byte	0xa0
	.long	0x2d
	.byte	0x28
	.byte	0
	.uleb128 0x1c
	.long	.LASF924
	.uleb128 0x3
	.byte	0x8
	.long	0x27fa
	.uleb128 0x1c
	.long	.LASF925
	.uleb128 0x3
	.byte	0x8
	.long	0x2805
	.uleb128 0x3
	.byte	0x8
	.long	0x2799
	.uleb128 0x3
	.byte	0x8
	.long	0x26ea
	.uleb128 0x1c
	.long	.LASF926
	.uleb128 0x3
	.byte	0x8
	.long	0x281c
	.uleb128 0x1c
	.long	.LASF927
	.uleb128 0x3
	.byte	0x8
	.long	0x2827
	.uleb128 0x1c
	.long	.LASF928
	.uleb128 0x3
	.byte	0x8
	.long	0x2832
	.uleb128 0x1c
	.long	.LASF929
	.uleb128 0x3
	.byte	0x8
	.long	0x283d
	.uleb128 0xf
	.long	.LASF930
	.byte	0x28
	.byte	0xf
	.value	0x11d
	.long	0x2870
	.uleb128 0x10
	.long	.LASF931
	.byte	0xf
	.value	0x120
	.long	0x2f3b
	.byte	0
	.uleb128 0x10
	.long	.LASF932
	.byte	0xf
	.value	0x122
	.long	0x123
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2848
	.uleb128 0xf
	.long	.LASF933
	.byte	0x20
	.byte	0x10
	.value	0x1b7
	.long	0x28e2
	.uleb128 0x10
	.long	.LASF934
	.byte	0x10
	.value	0x1b9
	.long	0x101d
	.byte	0
	.uleb128 0x10
	.long	.LASF935
	.byte	0x10
	.value	0x1ba
	.long	0x28f
	.byte	0x10
	.uleb128 0x10
	.long	.LASF936
	.byte	0x10
	.value	0x1bb
	.long	0x288
	.byte	0x12
	.uleb128 0x10
	.long	.LASF937
	.byte	0x10
	.value	0x1bc
	.long	0x288
	.byte	0x13
	.uleb128 0x1d
	.long	.LASF24
	.byte	0x10
	.value	0x1bd
	.long	0x266
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x14
	.uleb128 0x10
	.long	.LASF938
	.byte	0x10
	.value	0x1be
	.long	0x288
	.byte	0x15
	.uleb128 0x10
	.long	.LASF450
	.byte	0x10
	.value	0x1c6
	.long	0x2ae0
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.long	.LASF939
	.byte	0x10
	.byte	0x2b
	.long	0x28ed
	.uleb128 0x1c
	.long	.LASF939
	.uleb128 0x17
	.long	.LASF940
	.byte	0x4
	.byte	0x10
	.byte	0x8f
	.long	0x2aa2
	.uleb128 0x18
	.long	.LASF941
	.sleb128 0
	.uleb128 0x18
	.long	.LASF942
	.sleb128 1
	.uleb128 0x18
	.long	.LASF943
	.sleb128 2
	.uleb128 0x18
	.long	.LASF944
	.sleb128 3
	.uleb128 0x18
	.long	.LASF945
	.sleb128 4
	.uleb128 0x18
	.long	.LASF946
	.sleb128 5
	.uleb128 0x18
	.long	.LASF947
	.sleb128 6
	.uleb128 0x18
	.long	.LASF948
	.sleb128 7
	.uleb128 0x18
	.long	.LASF949
	.sleb128 8
	.uleb128 0x18
	.long	.LASF950
	.sleb128 9
	.uleb128 0x18
	.long	.LASF951
	.sleb128 10
	.uleb128 0x18
	.long	.LASF952
	.sleb128 11
	.uleb128 0x18
	.long	.LASF953
	.sleb128 12
	.uleb128 0x18
	.long	.LASF954
	.sleb128 13
	.uleb128 0x18
	.long	.LASF955
	.sleb128 14
	.uleb128 0x18
	.long	.LASF956
	.sleb128 15
	.uleb128 0x18
	.long	.LASF957
	.sleb128 16
	.uleb128 0x18
	.long	.LASF958
	.sleb128 17
	.uleb128 0x18
	.long	.LASF959
	.sleb128 18
	.uleb128 0x18
	.long	.LASF960
	.sleb128 19
	.uleb128 0x18
	.long	.LASF961
	.sleb128 20
	.uleb128 0x18
	.long	.LASF962
	.sleb128 21
	.uleb128 0x18
	.long	.LASF963
	.sleb128 22
	.uleb128 0x18
	.long	.LASF964
	.sleb128 23
	.uleb128 0x18
	.long	.LASF965
	.sleb128 24
	.uleb128 0x18
	.long	.LASF966
	.sleb128 25
	.uleb128 0x18
	.long	.LASF967
	.sleb128 26
	.uleb128 0x18
	.long	.LASF968
	.sleb128 27
	.uleb128 0x18
	.long	.LASF969
	.sleb128 28
	.uleb128 0x18
	.long	.LASF970
	.sleb128 29
	.uleb128 0x18
	.long	.LASF971
	.sleb128 30
	.uleb128 0x18
	.long	.LASF972
	.sleb128 31
	.uleb128 0x18
	.long	.LASF973
	.sleb128 32
	.uleb128 0x18
	.long	.LASF974
	.sleb128 33
	.uleb128 0x18
	.long	.LASF975
	.sleb128 34
	.uleb128 0x18
	.long	.LASF976
	.sleb128 35
	.uleb128 0x18
	.long	.LASF977
	.sleb128 36
	.uleb128 0x18
	.long	.LASF978
	.sleb128 37
	.uleb128 0x18
	.long	.LASF979
	.sleb128 38
	.uleb128 0x18
	.long	.LASF980
	.sleb128 39
	.uleb128 0x18
	.long	.LASF981
	.sleb128 40
	.uleb128 0x18
	.long	.LASF982
	.sleb128 41
	.uleb128 0x18
	.long	.LASF983
	.sleb128 42
	.uleb128 0x18
	.long	.LASF984
	.sleb128 43
	.uleb128 0x18
	.long	.LASF985
	.sleb128 44
	.uleb128 0x18
	.long	.LASF986
	.sleb128 45
	.uleb128 0x18
	.long	.LASF987
	.sleb128 46
	.uleb128 0x18
	.long	.LASF988
	.sleb128 47
	.uleb128 0x18
	.long	.LASF989
	.sleb128 48
	.uleb128 0x18
	.long	.LASF990
	.sleb128 49
	.uleb128 0x18
	.long	.LASF991
	.sleb128 50
	.uleb128 0x18
	.long	.LASF992
	.sleb128 51
	.uleb128 0x18
	.long	.LASF993
	.sleb128 52
	.uleb128 0x18
	.long	.LASF994
	.sleb128 53
	.uleb128 0x18
	.long	.LASF995
	.sleb128 54
	.uleb128 0x18
	.long	.LASF996
	.sleb128 55
	.uleb128 0x18
	.long	.LASF997
	.sleb128 56
	.uleb128 0x18
	.long	.LASF998
	.sleb128 57
	.uleb128 0x18
	.long	.LASF999
	.sleb128 58
	.uleb128 0x18
	.long	.LASF1000
	.sleb128 59
	.uleb128 0x18
	.long	.LASF1001
	.sleb128 60
	.uleb128 0x18
	.long	.LASF1002
	.sleb128 61
	.uleb128 0x18
	.long	.LASF1003
	.sleb128 62
	.uleb128 0x18
	.long	.LASF1004
	.sleb128 63
	.uleb128 0x18
	.long	.LASF1005
	.sleb128 64
	.uleb128 0x18
	.long	.LASF1006
	.sleb128 65
	.uleb128 0x18
	.long	.LASF1007
	.sleb128 66
	.uleb128 0x18
	.long	.LASF1008
	.sleb128 67
	.uleb128 0x18
	.long	.LASF1009
	.sleb128 68
	.byte	0
	.uleb128 0x22
	.long	.LASF1010
	.byte	0x4
	.byte	0x10
	.value	0x1a3
	.long	0x2ae0
	.uleb128 0x18
	.long	.LASF1011
	.sleb128 0
	.uleb128 0x18
	.long	.LASF1012
	.sleb128 1
	.uleb128 0x18
	.long	.LASF1013
	.sleb128 2
	.uleb128 0x18
	.long	.LASF1014
	.sleb128 3
	.uleb128 0x18
	.long	.LASF1015
	.sleb128 4
	.uleb128 0x18
	.long	.LASF1016
	.sleb128 5
	.uleb128 0x18
	.long	.LASF1017
	.sleb128 6
	.uleb128 0x18
	.long	.LASF1018
	.sleb128 7
	.byte	0
	.uleb128 0x1e
	.byte	0x8
	.byte	0x10
	.value	0x1c0
	.long	0x2b1a
	.uleb128 0xa
	.long	.LASF1019
	.byte	0x10
	.value	0x1c2
	.long	0x2b1a
	.uleb128 0xa
	.long	.LASF1020
	.byte	0x10
	.value	0x1c3
	.long	0x2b25
	.uleb128 0xa
	.long	.LASF1021
	.byte	0x10
	.value	0x1c4
	.long	0x28f2
	.uleb128 0xa
	.long	.LASF1022
	.byte	0x10
	.value	0x1c5
	.long	0x2aa2
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x28e2
	.uleb128 0x1c
	.long	.LASF1023
	.uleb128 0x3
	.byte	0x8
	.long	0x2b20
	.uleb128 0x29
	.string	"rid"
	.byte	0x4
	.byte	0xf
	.byte	0x33
	.long	0x2e43
	.uleb128 0x18
	.long	.LASF1024
	.sleb128 0
	.uleb128 0x18
	.long	.LASF1025
	.sleb128 1
	.uleb128 0x18
	.long	.LASF1026
	.sleb128 2
	.uleb128 0x18
	.long	.LASF1027
	.sleb128 3
	.uleb128 0x18
	.long	.LASF1028
	.sleb128 4
	.uleb128 0x18
	.long	.LASF1029
	.sleb128 5
	.uleb128 0x18
	.long	.LASF1030
	.sleb128 6
	.uleb128 0x18
	.long	.LASF1031
	.sleb128 7
	.uleb128 0x18
	.long	.LASF1032
	.sleb128 8
	.uleb128 0x18
	.long	.LASF1033
	.sleb128 9
	.uleb128 0x18
	.long	.LASF1034
	.sleb128 10
	.uleb128 0x18
	.long	.LASF1035
	.sleb128 11
	.uleb128 0x18
	.long	.LASF1036
	.sleb128 12
	.uleb128 0x18
	.long	.LASF1037
	.sleb128 13
	.uleb128 0x18
	.long	.LASF1038
	.sleb128 14
	.uleb128 0x18
	.long	.LASF1039
	.sleb128 15
	.uleb128 0x18
	.long	.LASF1040
	.sleb128 16
	.uleb128 0x18
	.long	.LASF1041
	.sleb128 17
	.uleb128 0x18
	.long	.LASF1042
	.sleb128 18
	.uleb128 0x18
	.long	.LASF1043
	.sleb128 19
	.uleb128 0x18
	.long	.LASF1044
	.sleb128 20
	.uleb128 0x18
	.long	.LASF1045
	.sleb128 21
	.uleb128 0x18
	.long	.LASF1046
	.sleb128 22
	.uleb128 0x18
	.long	.LASF1047
	.sleb128 23
	.uleb128 0x18
	.long	.LASF1048
	.sleb128 24
	.uleb128 0x18
	.long	.LASF1049
	.sleb128 25
	.uleb128 0x18
	.long	.LASF1050
	.sleb128 26
	.uleb128 0x18
	.long	.LASF1051
	.sleb128 27
	.uleb128 0x18
	.long	.LASF1052
	.sleb128 28
	.uleb128 0x18
	.long	.LASF1053
	.sleb128 29
	.uleb128 0x18
	.long	.LASF1054
	.sleb128 30
	.uleb128 0x18
	.long	.LASF1055
	.sleb128 31
	.uleb128 0x18
	.long	.LASF1056
	.sleb128 32
	.uleb128 0x18
	.long	.LASF1057
	.sleb128 33
	.uleb128 0x18
	.long	.LASF1058
	.sleb128 34
	.uleb128 0x18
	.long	.LASF1059
	.sleb128 35
	.uleb128 0x18
	.long	.LASF1060
	.sleb128 36
	.uleb128 0x18
	.long	.LASF1061
	.sleb128 37
	.uleb128 0x18
	.long	.LASF1062
	.sleb128 38
	.uleb128 0x18
	.long	.LASF1063
	.sleb128 39
	.uleb128 0x18
	.long	.LASF1064
	.sleb128 40
	.uleb128 0x18
	.long	.LASF1065
	.sleb128 41
	.uleb128 0x18
	.long	.LASF1066
	.sleb128 42
	.uleb128 0x18
	.long	.LASF1067
	.sleb128 43
	.uleb128 0x18
	.long	.LASF1068
	.sleb128 44
	.uleb128 0x18
	.long	.LASF1069
	.sleb128 45
	.uleb128 0x18
	.long	.LASF1070
	.sleb128 46
	.uleb128 0x18
	.long	.LASF1071
	.sleb128 47
	.uleb128 0x18
	.long	.LASF1072
	.sleb128 48
	.uleb128 0x18
	.long	.LASF1073
	.sleb128 49
	.uleb128 0x18
	.long	.LASF1074
	.sleb128 50
	.uleb128 0x18
	.long	.LASF1075
	.sleb128 51
	.uleb128 0x18
	.long	.LASF1076
	.sleb128 52
	.uleb128 0x18
	.long	.LASF1077
	.sleb128 53
	.uleb128 0x18
	.long	.LASF1078
	.sleb128 54
	.uleb128 0x18
	.long	.LASF1079
	.sleb128 55
	.uleb128 0x18
	.long	.LASF1080
	.sleb128 56
	.uleb128 0x18
	.long	.LASF1081
	.sleb128 57
	.uleb128 0x18
	.long	.LASF1082
	.sleb128 58
	.uleb128 0x18
	.long	.LASF1083
	.sleb128 59
	.uleb128 0x18
	.long	.LASF1084
	.sleb128 60
	.uleb128 0x18
	.long	.LASF1085
	.sleb128 61
	.uleb128 0x18
	.long	.LASF1086
	.sleb128 62
	.uleb128 0x18
	.long	.LASF1087
	.sleb128 63
	.uleb128 0x18
	.long	.LASF1088
	.sleb128 64
	.uleb128 0x18
	.long	.LASF1089
	.sleb128 65
	.uleb128 0x18
	.long	.LASF1090
	.sleb128 66
	.uleb128 0x18
	.long	.LASF1091
	.sleb128 67
	.uleb128 0x18
	.long	.LASF1092
	.sleb128 68
	.uleb128 0x18
	.long	.LASF1093
	.sleb128 69
	.uleb128 0x18
	.long	.LASF1094
	.sleb128 70
	.uleb128 0x18
	.long	.LASF1095
	.sleb128 71
	.uleb128 0x18
	.long	.LASF1096
	.sleb128 72
	.uleb128 0x18
	.long	.LASF1097
	.sleb128 73
	.uleb128 0x18
	.long	.LASF1098
	.sleb128 74
	.uleb128 0x18
	.long	.LASF1099
	.sleb128 75
	.uleb128 0x18
	.long	.LASF1100
	.sleb128 76
	.uleb128 0x18
	.long	.LASF1101
	.sleb128 77
	.uleb128 0x18
	.long	.LASF1102
	.sleb128 78
	.uleb128 0x18
	.long	.LASF1103
	.sleb128 79
	.uleb128 0x18
	.long	.LASF1104
	.sleb128 80
	.uleb128 0x18
	.long	.LASF1105
	.sleb128 81
	.uleb128 0x18
	.long	.LASF1106
	.sleb128 82
	.uleb128 0x18
	.long	.LASF1107
	.sleb128 83
	.uleb128 0x18
	.long	.LASF1108
	.sleb128 84
	.uleb128 0x18
	.long	.LASF1109
	.sleb128 85
	.uleb128 0x18
	.long	.LASF1110
	.sleb128 86
	.uleb128 0x18
	.long	.LASF1111
	.sleb128 87
	.uleb128 0x18
	.long	.LASF1112
	.sleb128 88
	.uleb128 0x18
	.long	.LASF1113
	.sleb128 89
	.uleb128 0x18
	.long	.LASF1114
	.sleb128 90
	.uleb128 0x18
	.long	.LASF1115
	.sleb128 91
	.uleb128 0x18
	.long	.LASF1116
	.sleb128 92
	.uleb128 0x18
	.long	.LASF1117
	.sleb128 93
	.uleb128 0x18
	.long	.LASF1118
	.sleb128 94
	.uleb128 0x18
	.long	.LASF1119
	.sleb128 95
	.uleb128 0x18
	.long	.LASF1120
	.sleb128 96
	.uleb128 0x18
	.long	.LASF1121
	.sleb128 97
	.uleb128 0x18
	.long	.LASF1122
	.sleb128 98
	.uleb128 0x18
	.long	.LASF1123
	.sleb128 99
	.uleb128 0x18
	.long	.LASF1124
	.sleb128 100
	.uleb128 0x18
	.long	.LASF1125
	.sleb128 101
	.uleb128 0x18
	.long	.LASF1126
	.sleb128 102
	.uleb128 0x18
	.long	.LASF1127
	.sleb128 103
	.uleb128 0x18
	.long	.LASF1128
	.sleb128 104
	.uleb128 0x18
	.long	.LASF1129
	.sleb128 105
	.uleb128 0x18
	.long	.LASF1130
	.sleb128 106
	.uleb128 0x18
	.long	.LASF1131
	.sleb128 107
	.uleb128 0x18
	.long	.LASF1132
	.sleb128 108
	.uleb128 0x18
	.long	.LASF1133
	.sleb128 109
	.uleb128 0x18
	.long	.LASF1134
	.sleb128 110
	.uleb128 0x18
	.long	.LASF1135
	.sleb128 111
	.uleb128 0x18
	.long	.LASF1136
	.sleb128 112
	.uleb128 0x18
	.long	.LASF1137
	.sleb128 113
	.uleb128 0x18
	.long	.LASF1138
	.sleb128 114
	.uleb128 0x18
	.long	.LASF1139
	.sleb128 0
	.uleb128 0x18
	.long	.LASF1140
	.sleb128 26
	.uleb128 0x18
	.long	.LASF1141
	.sleb128 102
	.uleb128 0x18
	.long	.LASF1142
	.sleb128 113
	.uleb128 0x18
	.long	.LASF1143
	.sleb128 21
	.uleb128 0x18
	.long	.LASF1144
	.sleb128 26
	.byte	0
	.uleb128 0x17
	.long	.LASF1145
	.byte	0x4
	.byte	0xf
	.byte	0x85
	.long	0x2f16
	.uleb128 0x18
	.long	.LASF1146
	.sleb128 0
	.uleb128 0x18
	.long	.LASF1147
	.sleb128 1
	.uleb128 0x18
	.long	.LASF1148
	.sleb128 2
	.uleb128 0x18
	.long	.LASF1149
	.sleb128 3
	.uleb128 0x18
	.long	.LASF1150
	.sleb128 4
	.uleb128 0x18
	.long	.LASF1151
	.sleb128 5
	.uleb128 0x18
	.long	.LASF1152
	.sleb128 6
	.uleb128 0x18
	.long	.LASF1153
	.sleb128 7
	.uleb128 0x18
	.long	.LASF1154
	.sleb128 8
	.uleb128 0x18
	.long	.LASF1155
	.sleb128 9
	.uleb128 0x18
	.long	.LASF1156
	.sleb128 10
	.uleb128 0x18
	.long	.LASF1157
	.sleb128 11
	.uleb128 0x18
	.long	.LASF1158
	.sleb128 12
	.uleb128 0x18
	.long	.LASF1159
	.sleb128 13
	.uleb128 0x18
	.long	.LASF1160
	.sleb128 14
	.uleb128 0x18
	.long	.LASF1161
	.sleb128 15
	.uleb128 0x18
	.long	.LASF1162
	.sleb128 16
	.uleb128 0x18
	.long	.LASF1163
	.sleb128 17
	.uleb128 0x18
	.long	.LASF1164
	.sleb128 18
	.uleb128 0x18
	.long	.LASF1165
	.sleb128 19
	.uleb128 0x18
	.long	.LASF1166
	.sleb128 20
	.uleb128 0x18
	.long	.LASF1167
	.sleb128 21
	.uleb128 0x18
	.long	.LASF1168
	.sleb128 22
	.uleb128 0x18
	.long	.LASF1169
	.sleb128 23
	.uleb128 0x18
	.long	.LASF1170
	.sleb128 24
	.uleb128 0x18
	.long	.LASF1171
	.sleb128 25
	.uleb128 0x18
	.long	.LASF1172
	.sleb128 26
	.uleb128 0x18
	.long	.LASF1173
	.sleb128 27
	.uleb128 0x18
	.long	.LASF1174
	.sleb128 28
	.uleb128 0x18
	.long	.LASF1175
	.sleb128 29
	.uleb128 0x18
	.long	.LASF1176
	.sleb128 30
	.uleb128 0x18
	.long	.LASF1177
	.sleb128 31
	.uleb128 0x18
	.long	.LASF1178
	.sleb128 32
	.byte	0
	.uleb128 0x4
	.long	.LASF1179
	.byte	0x38
	.byte	0xf
	.byte	0xba
	.long	0x2f3b
	.uleb128 0x8
	.long	.LASF16
	.byte	0xf
	.byte	0xbc
	.long	0xd0c
	.byte	0
	.uleb128 0x8
	.long	.LASF1180
	.byte	0xf
	.byte	0xbd
	.long	0x2876
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.long	.LASF1181
	.byte	0x20
	.byte	0xf
	.byte	0xff
	.long	0x2f7c
	.uleb128 0x10
	.long	.LASF1182
	.byte	0xf
	.value	0x101
	.long	0x123
	.byte	0
	.uleb128 0x10
	.long	.LASF1183
	.byte	0xf
	.value	0x104
	.long	0x123
	.byte	0x8
	.uleb128 0x10
	.long	.LASF1184
	.byte	0xf
	.value	0x106
	.long	0x4bd
	.byte	0x10
	.uleb128 0x10
	.long	.LASF1185
	.byte	0xf
	.value	0x115
	.long	0x1e3
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.long	.LASF1186
	.byte	0xf
	.value	0x118
	.long	0x2f88
	.uleb128 0x3
	.byte	0x8
	.long	0x2f3b
	.uleb128 0xf
	.long	.LASF1187
	.byte	0x4
	.byte	0xf
	.value	0x165
	.long	0x2fac
	.uleb128 0x1d
	.long	.LASF1188
	.byte	0xf
	.value	0x166
	.long	0x266
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF1189
	.byte	0x4
	.byte	0xf
	.value	0x2e3
	.long	0x3070
	.uleb128 0x18
	.long	.LASF1190
	.sleb128 147
	.uleb128 0x18
	.long	.LASF1191
	.sleb128 148
	.uleb128 0x18
	.long	.LASF1192
	.sleb128 149
	.uleb128 0x18
	.long	.LASF1193
	.sleb128 150
	.uleb128 0x18
	.long	.LASF1194
	.sleb128 151
	.uleb128 0x18
	.long	.LASF1195
	.sleb128 152
	.uleb128 0x18
	.long	.LASF1196
	.sleb128 153
	.uleb128 0x18
	.long	.LASF1197
	.sleb128 154
	.uleb128 0x18
	.long	.LASF1198
	.sleb128 155
	.uleb128 0x18
	.long	.LASF1199
	.sleb128 156
	.uleb128 0x18
	.long	.LASF1200
	.sleb128 157
	.uleb128 0x18
	.long	.LASF1201
	.sleb128 158
	.uleb128 0x18
	.long	.LASF1202
	.sleb128 159
	.uleb128 0x18
	.long	.LASF1203
	.sleb128 160
	.uleb128 0x18
	.long	.LASF1204
	.sleb128 161
	.uleb128 0x18
	.long	.LASF1205
	.sleb128 162
	.uleb128 0x18
	.long	.LASF1206
	.sleb128 163
	.uleb128 0x18
	.long	.LASF1207
	.sleb128 164
	.uleb128 0x18
	.long	.LASF1208
	.sleb128 165
	.uleb128 0x18
	.long	.LASF1209
	.sleb128 166
	.uleb128 0x18
	.long	.LASF1210
	.sleb128 167
	.uleb128 0x18
	.long	.LASF1211
	.sleb128 168
	.uleb128 0x18
	.long	.LASF1212
	.sleb128 169
	.uleb128 0x18
	.long	.LASF1213
	.sleb128 170
	.uleb128 0x18
	.long	.LASF1214
	.sleb128 171
	.uleb128 0x18
	.long	.LASF1215
	.sleb128 172
	.byte	0
	.uleb128 0x4
	.long	.LASF1216
	.byte	0x68
	.byte	0xd
	.byte	0x25
	.long	0x30d1
	.uleb128 0x8
	.long	.LASF1217
	.byte	0xd
	.byte	0x27
	.long	0x2f16
	.byte	0
	.uleb128 0x8
	.long	.LASF1218
	.byte	0xd
	.byte	0x28
	.long	0x123
	.byte	0x38
	.uleb128 0x8
	.long	.LASF1219
	.byte	0xd
	.byte	0x28
	.long	0x123
	.byte	0x40
	.uleb128 0x8
	.long	.LASF1220
	.byte	0xd
	.byte	0x28
	.long	0x123
	.byte	0x48
	.uleb128 0x8
	.long	.LASF1221
	.byte	0xd
	.byte	0x28
	.long	0x123
	.byte	0x50
	.uleb128 0x8
	.long	.LASF1222
	.byte	0xd
	.byte	0x29
	.long	0x123
	.byte	0x58
	.uleb128 0x8
	.long	.LASF1223
	.byte	0xd
	.byte	0x29
	.long	0x123
	.byte	0x60
	.byte	0
	.uleb128 0x4
	.long	.LASF1224
	.byte	0x10
	.byte	0x11
	.byte	0x24
	.long	0x30f6
	.uleb128 0x6
	.string	"rtx"
	.byte	0x11
	.byte	0x32
	.long	0x38
	.byte	0
	.uleb128 0x6
	.string	"age"
	.byte	0x11
	.byte	0x36
	.long	0x266
	.byte	0x8
	.byte	0
	.uleb128 0x26
	.long	.LASF1225
	.byte	0x10
	.byte	0x11
	.byte	0x3a
	.long	0x31db
	.uleb128 0x28
	.string	"c"
	.byte	0x11
	.byte	0x3b
	.long	0x497
	.uleb128 0x28
	.string	"uc"
	.byte	0x11
	.byte	0x3c
	.long	0x31db
	.uleb128 0x28
	.string	"s"
	.byte	0x11
	.byte	0x3d
	.long	0x31eb
	.uleb128 0x28
	.string	"us"
	.byte	0x11
	.byte	0x3e
	.long	0x31fb
	.uleb128 0x28
	.string	"i"
	.byte	0x11
	.byte	0x3f
	.long	0x320b
	.uleb128 0x28
	.string	"u"
	.byte	0x11
	.byte	0x40
	.long	0x321b
	.uleb128 0x28
	.string	"l"
	.byte	0x11
	.byte	0x41
	.long	0x322b
	.uleb128 0x28
	.string	"ul"
	.byte	0x11
	.byte	0x42
	.long	0x323b
	.uleb128 0x27
	.long	.LASF1226
	.byte	0x11
	.byte	0x43
	.long	0x322b
	.uleb128 0x27
	.long	.LASF1227
	.byte	0x11
	.byte	0x44
	.long	0x323b
	.uleb128 0x27
	.long	.LASF1228
	.byte	0x11
	.byte	0x45
	.long	0x324b
	.uleb128 0x27
	.long	.LASF1229
	.byte	0x11
	.byte	0x46
	.long	0x325b
	.uleb128 0x28
	.string	"rtx"
	.byte	0x11
	.byte	0x47
	.long	0x326b
	.uleb128 0x27
	.long	.LASF10
	.byte	0x11
	.byte	0x48
	.long	0x327b
	.uleb128 0x27
	.long	.LASF15
	.byte	0x11
	.byte	0x49
	.long	0x328b
	.uleb128 0x27
	.long	.LASF1230
	.byte	0x11
	.byte	0x4a
	.long	0x329b
	.uleb128 0x27
	.long	.LASF1231
	.byte	0x11
	.byte	0x4b
	.long	0x32ab
	.uleb128 0x28
	.string	"reg"
	.byte	0x11
	.byte	0x4c
	.long	0x32c6
	.uleb128 0x27
	.long	.LASF1232
	.byte	0x11
	.byte	0x4d
	.long	0x32e1
	.uleb128 0x28
	.string	"bb"
	.byte	0x11
	.byte	0x4e
	.long	0x32f1
	.uleb128 0x28
	.string	"te"
	.byte	0x11
	.byte	0x4f
	.long	0x3301
	.byte	0
	.uleb128 0x14
	.long	0x288
	.long	0x31eb
	.uleb128 0x15
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x29d
	.long	0x31fb
	.uleb128 0x15
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x28f
	.long	0x320b
	.uleb128 0x15
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x1e3
	.long	0x321b
	.uleb128 0x15
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x266
	.long	0x322b
	.uleb128 0x15
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x26f
	.long	0x323b
	.uleb128 0x15
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x281
	.long	0x324b
	.uleb128 0x15
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x26d
	.long	0x325b
	.uleb128 0x15
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x2ba
	.long	0x326b
	.uleb128 0x15
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x38
	.long	0x327b
	.uleb128 0x15
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0xf8
	.long	0x328b
	.uleb128 0x15
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x12e
	.long	0x329b
	.uleb128 0x15
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x2517
	.long	0x32ab
	.uleb128 0x15
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x32bb
	.long	0x32bb
	.uleb128 0x15
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x32c1
	.uleb128 0x1c
	.long	.LASF1233
	.uleb128 0x14
	.long	0x32d6
	.long	0x32d6
	.uleb128 0x15
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x32dc
	.uleb128 0x1c
	.long	.LASF1234
	.uleb128 0x14
	.long	0x30d1
	.long	0x32f1
	.uleb128 0x15
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x2522
	.long	0x3301
	.uleb128 0x15
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x3311
	.long	0x3311
	.uleb128 0x15
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3317
	.uleb128 0x1c
	.long	.LASF1235
	.uleb128 0x7
	.long	.LASF1236
	.byte	0x11
	.byte	0x50
	.long	0x30f6
	.uleb128 0x4
	.long	.LASF1237
	.byte	0x30
	.byte	0x11
	.byte	0x53
	.long	0x3370
	.uleb128 0x8
	.long	.LASF1238
	.byte	0x11
	.byte	0x54
	.long	0x276
	.byte	0
	.uleb128 0x8
	.long	.LASF1239
	.byte	0x11
	.byte	0x55
	.long	0x276
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1240
	.byte	0x11
	.byte	0x57
	.long	0x276
	.byte	0x10
	.uleb128 0x8
	.long	.LASF484
	.byte	0x11
	.byte	0x58
	.long	0x4bd
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1241
	.byte	0x11
	.byte	0x59
	.long	0x331c
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF1242
	.byte	0x11
	.byte	0x5a
	.long	0x337b
	.uleb128 0x3
	.byte	0x8
	.long	0x3327
	.uleb128 0x4
	.long	.LASF1243
	.byte	0x20
	.byte	0x12
	.byte	0x39
	.long	0x33ba
	.uleb128 0x6
	.string	"hi"
	.byte	0x12
	.byte	0x3b
	.long	0x4bd
	.byte	0
	.uleb128 0x6
	.string	"si"
	.byte	0x12
	.byte	0x3c
	.long	0x4bd
	.byte	0x8
	.uleb128 0x6
	.string	"di"
	.byte	0x12
	.byte	0x3d
	.long	0x4bd
	.byte	0x10
	.uleb128 0x6
	.string	"ti"
	.byte	0x12
	.byte	0x3e
	.long	0x4bd
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.long	.LASF1244
	.byte	0xa8
	.byte	0x12
	.byte	0x32
	.long	0x347b
	.uleb128 0x8
	.long	.LASF1245
	.byte	0x12
	.byte	0x35
	.long	0x4bd
	.byte	0
	.uleb128 0x8
	.long	.LASF1246
	.byte	0x12
	.byte	0x35
	.long	0x4bd
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1247
	.byte	0x12
	.byte	0x38
	.long	0x4bd
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1248
	.byte	0x12
	.byte	0x3f
	.long	0x3381
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1249
	.byte	0x12
	.byte	0x3f
	.long	0x3381
	.byte	0x38
	.uleb128 0x8
	.long	.LASF1250
	.byte	0x12
	.byte	0x46
	.long	0x3494
	.byte	0x58
	.uleb128 0x8
	.long	.LASF1251
	.byte	0x12
	.byte	0x49
	.long	0x34b0
	.byte	0x60
	.uleb128 0x8
	.long	.LASF1252
	.byte	0x12
	.byte	0x4c
	.long	0x34c1
	.byte	0x68
	.uleb128 0x8
	.long	.LASF1253
	.byte	0x12
	.byte	0x4f
	.long	0x34c1
	.byte	0x70
	.uleb128 0x8
	.long	.LASF1254
	.byte	0x12
	.byte	0x52
	.long	0x34b0
	.byte	0x78
	.uleb128 0x8
	.long	.LASF1255
	.byte	0x12
	.byte	0x56
	.long	0x34d7
	.byte	0x80
	.uleb128 0x8
	.long	.LASF1256
	.byte	0x12
	.byte	0x59
	.long	0x34de
	.byte	0x88
	.uleb128 0x8
	.long	.LASF1257
	.byte	0x12
	.byte	0x5c
	.long	0x34de
	.byte	0x90
	.uleb128 0x8
	.long	.LASF1258
	.byte	0x12
	.byte	0x5f
	.long	0x34f4
	.byte	0x98
	.uleb128 0x8
	.long	.LASF1259
	.byte	0x12
	.byte	0x62
	.long	0x34f4
	.byte	0xa0
	.byte	0
	.uleb128 0x23
	.long	0x1eef
	.long	0x3494
	.uleb128 0x24
	.long	0x2d
	.uleb128 0x24
	.long	0x266
	.uleb128 0x24
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x347b
	.uleb128 0x2a
	.long	0x34aa
	.uleb128 0x24
	.long	0x34aa
	.uleb128 0x24
	.long	0x26f
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2c7
	.uleb128 0x3
	.byte	0x8
	.long	0x349a
	.uleb128 0x2a
	.long	0x34c1
	.uleb128 0x24
	.long	0x34aa
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x34b6
	.uleb128 0x2a
	.long	0x34d7
	.uleb128 0x24
	.long	0x4bd
	.uleb128 0x24
	.long	0x266
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x34c7
	.uleb128 0x2b
	.uleb128 0x3
	.byte	0x8
	.long	0x34dd
	.uleb128 0x2a
	.long	0x34f4
	.uleb128 0x24
	.long	0x2d
	.uleb128 0x24
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x34e4
	.uleb128 0x4
	.long	.LASF1231
	.byte	0x48
	.byte	0x12
	.byte	0x66
	.long	0x3573
	.uleb128 0x8
	.long	.LASF1260
	.byte	0x12
	.byte	0x6b
	.long	0x3591
	.byte	0
	.uleb128 0x8
	.long	.LASF1261
	.byte	0x12
	.byte	0x6f
	.long	0x35ab
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1262
	.byte	0x12
	.byte	0x74
	.long	0x35b6
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1263
	.byte	0x12
	.byte	0x78
	.long	0x35da
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1264
	.byte	0x12
	.byte	0x7b
	.long	0x35f5
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1265
	.byte	0x12
	.byte	0x7e
	.long	0x360b
	.byte	0x28
	.uleb128 0x8
	.long	.LASF1266
	.byte	0x12
	.byte	0x82
	.long	0x3634
	.byte	0x30
	.uleb128 0x8
	.long	.LASF1267
	.byte	0x12
	.byte	0x83
	.long	0x3634
	.byte	0x38
	.uleb128 0x8
	.long	.LASF1268
	.byte	0x12
	.byte	0x8a
	.long	0x364e
	.byte	0x40
	.byte	0
	.uleb128 0x23
	.long	0x1e3
	.long	0x3591
	.uleb128 0x24
	.long	0x2d
	.uleb128 0x24
	.long	0x2d
	.uleb128 0x24
	.long	0x2d
	.uleb128 0x24
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3573
	.uleb128 0x23
	.long	0x1e3
	.long	0x35ab
	.uleb128 0x24
	.long	0x2d
	.uleb128 0x24
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3597
	.uleb128 0x2c
	.long	0x1e3
	.uleb128 0x3
	.byte	0x8
	.long	0x35b1
	.uleb128 0x23
	.long	0x1e3
	.long	0x35da
	.uleb128 0x24
	.long	0x34aa
	.uleb128 0x24
	.long	0x1e3
	.uleb128 0x24
	.long	0x2d
	.uleb128 0x24
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x35bc
	.uleb128 0x2a
	.long	0x35f5
	.uleb128 0x24
	.long	0x34aa
	.uleb128 0x24
	.long	0x1e3
	.uleb128 0x24
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x35e0
	.uleb128 0x2a
	.long	0x360b
	.uleb128 0x24
	.long	0x34aa
	.uleb128 0x24
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x35fb
	.uleb128 0x23
	.long	0x1e3
	.long	0x3634
	.uleb128 0x24
	.long	0x34aa
	.uleb128 0x24
	.long	0x1e3
	.uleb128 0x24
	.long	0x2608
	.uleb128 0x24
	.long	0x4d6
	.uleb128 0x24
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3611
	.uleb128 0x23
	.long	0x2d
	.long	0x364e
	.uleb128 0x24
	.long	0x1e3
	.uleb128 0x24
	.long	0x2d
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x363a
	.uleb128 0x1f
	.long	.LASF1269
	.value	0x158
	.byte	0x12
	.byte	0x2f
	.long	0x372e
	.uleb128 0x8
	.long	.LASF1244
	.byte	0x12
	.byte	0x63
	.long	0x33ba
	.byte	0
	.uleb128 0x8
	.long	.LASF1231
	.byte	0x12
	.byte	0x8b
	.long	0x34fa
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF1270
	.byte	0x12
	.byte	0x8e
	.long	0x3742
	.byte	0xf0
	.uleb128 0x8
	.long	.LASF1271
	.byte	0x12
	.byte	0x91
	.long	0x3742
	.byte	0xf8
	.uleb128 0x2d
	.long	.LASF1272
	.byte	0x12
	.byte	0x94
	.long	0x3748
	.value	0x100
	.uleb128 0x2d
	.long	.LASF1273
	.byte	0x12
	.byte	0x99
	.long	0x3767
	.value	0x108
	.uleb128 0x2d
	.long	.LASF1274
	.byte	0x12
	.byte	0x9c
	.long	0x3778
	.value	0x110
	.uleb128 0x2d
	.long	.LASF1275
	.byte	0x12
	.byte	0x9f
	.long	0x378e
	.value	0x118
	.uleb128 0x2d
	.long	.LASF1276
	.byte	0x12
	.byte	0xa3
	.long	0x37a3
	.value	0x120
	.uleb128 0x2d
	.long	.LASF1277
	.byte	0x12
	.byte	0xa7
	.long	0x37a3
	.value	0x128
	.uleb128 0x2d
	.long	.LASF1278
	.byte	0x12
	.byte	0xaa
	.long	0x34de
	.value	0x130
	.uleb128 0x2d
	.long	.LASF1279
	.byte	0x12
	.byte	0xad
	.long	0x37cc
	.value	0x138
	.uleb128 0x2d
	.long	.LASF1280
	.byte	0x12
	.byte	0xb3
	.long	0x37eb
	.value	0x140
	.uleb128 0x2d
	.long	.LASF1281
	.byte	0x12
	.byte	0xb6
	.long	0x1eef
	.value	0x148
	.uleb128 0x2d
	.long	.LASF1282
	.byte	0x12
	.byte	0xba
	.long	0x1eef
	.value	0x149
	.uleb128 0x2d
	.long	.LASF1283
	.byte	0x12
	.byte	0xbe
	.long	0x37f6
	.value	0x150
	.byte	0
	.uleb128 0x23
	.long	0x123
	.long	0x3742
	.uleb128 0x24
	.long	0x123
	.uleb128 0x24
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x372e
	.uleb128 0x3
	.byte	0x8
	.long	0x374e
	.uleb128 0xc
	.long	0x1e7c
	.uleb128 0x23
	.long	0x1e3
	.long	0x3767
	.uleb128 0x24
	.long	0x123
	.uleb128 0x24
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3753
	.uleb128 0x2a
	.long	0x3778
	.uleb128 0x24
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x376d
	.uleb128 0x2a
	.long	0x378e
	.uleb128 0x24
	.long	0x123
	.uleb128 0x24
	.long	0x1f19
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x377e
	.uleb128 0x23
	.long	0x1eef
	.long	0x37a3
	.uleb128 0x24
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3794
	.uleb128 0x23
	.long	0x2d
	.long	0x37cc
	.uleb128 0x24
	.long	0x123
	.uleb128 0x24
	.long	0x2d
	.uleb128 0x24
	.long	0x2d
	.uleb128 0x24
	.long	0x4e3
	.uleb128 0x24
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x37a9
	.uleb128 0x23
	.long	0x266
	.long	0x37eb
	.uleb128 0x24
	.long	0x123
	.uleb128 0x24
	.long	0x4bd
	.uleb128 0x24
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x37d2
	.uleb128 0x2c
	.long	0x1eef
	.uleb128 0x3
	.byte	0x8
	.long	0x37f1
	.uleb128 0x4
	.long	.LASF1284
	.byte	0xa0
	.byte	0x13
	.byte	0x18
	.long	0x38f9
	.uleb128 0x8
	.long	.LASF1285
	.byte	0x13
	.byte	0x1c
	.long	0x3904
	.byte	0
	.uleb128 0x8
	.long	.LASF1286
	.byte	0x13
	.byte	0x1f
	.long	0x3904
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1287
	.byte	0x13
	.byte	0x22
	.long	0x391a
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1288
	.byte	0x13
	.byte	0x25
	.long	0x391a
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1289
	.byte	0x13
	.byte	0x29
	.long	0x391a
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1290
	.byte	0x13
	.byte	0x2d
	.long	0x392b
	.byte	0x28
	.uleb128 0x8
	.long	.LASF1291
	.byte	0x13
	.byte	0x31
	.long	0x3941
	.byte	0x30
	.uleb128 0x8
	.long	.LASF1292
	.byte	0x13
	.byte	0x34
	.long	0x3941
	.byte	0x38
	.uleb128 0x8
	.long	.LASF1293
	.byte	0x13
	.byte	0x3b
	.long	0x37a3
	.byte	0x40
	.uleb128 0x8
	.long	.LASF1294
	.byte	0x13
	.byte	0x3e
	.long	0x391a
	.byte	0x48
	.uleb128 0x8
	.long	.LASF1295
	.byte	0x13
	.byte	0x43
	.long	0x391a
	.byte	0x50
	.uleb128 0x8
	.long	.LASF1296
	.byte	0x13
	.byte	0x47
	.long	0x392b
	.byte	0x58
	.uleb128 0x8
	.long	.LASF1297
	.byte	0x13
	.byte	0x4a
	.long	0x34de
	.byte	0x60
	.uleb128 0x8
	.long	.LASF1298
	.byte	0x13
	.byte	0x4d
	.long	0x3778
	.byte	0x68
	.uleb128 0x8
	.long	.LASF1299
	.byte	0x13
	.byte	0x50
	.long	0x392b
	.byte	0x70
	.uleb128 0x8
	.long	.LASF1300
	.byte	0x13
	.byte	0x56
	.long	0x3778
	.byte	0x78
	.uleb128 0x8
	.long	.LASF1301
	.byte	0x13
	.byte	0x5a
	.long	0x3778
	.byte	0x80
	.uleb128 0x8
	.long	.LASF1302
	.byte	0x13
	.byte	0x5e
	.long	0x3778
	.byte	0x88
	.uleb128 0x8
	.long	.LASF1303
	.byte	0x13
	.byte	0x63
	.long	0x3778
	.byte	0x90
	.uleb128 0x8
	.long	.LASF1304
	.byte	0x13
	.byte	0x67
	.long	0x3952
	.byte	0x98
	.byte	0
	.uleb128 0x2a
	.long	0x3904
	.uleb128 0x24
	.long	0x4bd
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x38f9
	.uleb128 0x2a
	.long	0x391a
	.uleb128 0x24
	.long	0x266
	.uleb128 0x24
	.long	0x4bd
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x390a
	.uleb128 0x2a
	.long	0x392b
	.uleb128 0x24
	.long	0x266
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3920
	.uleb128 0x2a
	.long	0x3941
	.uleb128 0x24
	.long	0x266
	.uleb128 0x24
	.long	0x266
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3931
	.uleb128 0x2a
	.long	0x3952
	.uleb128 0x24
	.long	0x2d
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3947
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.long	.LASF1305
	.uleb128 0x2e
	.byte	0x4
	.byte	0x18
	.byte	0x48
	.long	0x3a7c
	.uleb128 0x18
	.long	.LASF1306
	.sleb128 0
	.uleb128 0x18
	.long	.LASF1307
	.sleb128 1
	.uleb128 0x18
	.long	.LASF1308
	.sleb128 2
	.uleb128 0x18
	.long	.LASF1309
	.sleb128 3
	.uleb128 0x18
	.long	.LASF1310
	.sleb128 4
	.uleb128 0x18
	.long	.LASF1311
	.sleb128 5
	.uleb128 0x18
	.long	.LASF1312
	.sleb128 6
	.uleb128 0x18
	.long	.LASF1313
	.sleb128 7
	.uleb128 0x18
	.long	.LASF1314
	.sleb128 8
	.uleb128 0x18
	.long	.LASF1315
	.sleb128 9
	.uleb128 0x18
	.long	.LASF1316
	.sleb128 10
	.uleb128 0x18
	.long	.LASF1317
	.sleb128 11
	.uleb128 0x18
	.long	.LASF1318
	.sleb128 12
	.uleb128 0x18
	.long	.LASF1319
	.sleb128 13
	.uleb128 0x18
	.long	.LASF1320
	.sleb128 14
	.uleb128 0x18
	.long	.LASF1321
	.sleb128 15
	.uleb128 0x18
	.long	.LASF1322
	.sleb128 16
	.uleb128 0x18
	.long	.LASF1323
	.sleb128 17
	.uleb128 0x18
	.long	.LASF1324
	.sleb128 18
	.uleb128 0x18
	.long	.LASF1325
	.sleb128 19
	.uleb128 0x18
	.long	.LASF1326
	.sleb128 20
	.uleb128 0x18
	.long	.LASF1327
	.sleb128 21
	.uleb128 0x18
	.long	.LASF1328
	.sleb128 22
	.uleb128 0x18
	.long	.LASF1329
	.sleb128 23
	.uleb128 0x18
	.long	.LASF1330
	.sleb128 24
	.uleb128 0x18
	.long	.LASF1331
	.sleb128 25
	.uleb128 0x18
	.long	.LASF1332
	.sleb128 26
	.uleb128 0x18
	.long	.LASF1333
	.sleb128 27
	.uleb128 0x18
	.long	.LASF1334
	.sleb128 28
	.uleb128 0x18
	.long	.LASF1335
	.sleb128 29
	.uleb128 0x18
	.long	.LASF1336
	.sleb128 30
	.uleb128 0x18
	.long	.LASF1337
	.sleb128 31
	.uleb128 0x18
	.long	.LASF1338
	.sleb128 32
	.uleb128 0x18
	.long	.LASF1339
	.sleb128 33
	.uleb128 0x18
	.long	.LASF1340
	.sleb128 34
	.uleb128 0x18
	.long	.LASF1341
	.sleb128 35
	.uleb128 0x18
	.long	.LASF1342
	.sleb128 36
	.uleb128 0x18
	.long	.LASF1343
	.sleb128 37
	.uleb128 0x18
	.long	.LASF1344
	.sleb128 38
	.uleb128 0x18
	.long	.LASF1345
	.sleb128 39
	.uleb128 0x18
	.long	.LASF1346
	.sleb128 40
	.uleb128 0x18
	.long	.LASF1347
	.sleb128 41
	.uleb128 0x18
	.long	.LASF1348
	.sleb128 42
	.uleb128 0x18
	.long	.LASF1349
	.sleb128 43
	.uleb128 0x18
	.long	.LASF1350
	.sleb128 44
	.uleb128 0x18
	.long	.LASF1351
	.sleb128 45
	.byte	0
	.uleb128 0x17
	.long	.LASF1352
	.byte	0x4
	.byte	0x1
	.byte	0x34
	.long	0x3aad
	.uleb128 0x18
	.long	.LASF1353
	.sleb128 0
	.uleb128 0x18
	.long	.LASF1354
	.sleb128 1
	.uleb128 0x18
	.long	.LASF1355
	.sleb128 2
	.uleb128 0x18
	.long	.LASF1356
	.sleb128 3
	.uleb128 0x18
	.long	.LASF1357
	.sleb128 4
	.uleb128 0x18
	.long	.LASF1358
	.sleb128 5
	.byte	0
	.uleb128 0x4
	.long	.LASF1359
	.byte	0x48
	.byte	0x1
	.byte	0xa8
	.long	0x3b56
	.uleb128 0x8
	.long	.LASF1360
	.byte	0x1
	.byte	0xad
	.long	0x123
	.byte	0
	.uleb128 0x8
	.long	.LASF1361
	.byte	0x1
	.byte	0xb5
	.long	0x123
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1362
	.byte	0x1
	.byte	0xbb
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1363
	.byte	0x1
	.byte	0xc0
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1364
	.byte	0x1
	.byte	0xc4
	.long	0x123
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1365
	.byte	0x1
	.byte	0xc7
	.long	0x3b56
	.byte	0x28
	.uleb128 0x8
	.long	.LASF1366
	.byte	0x1
	.byte	0xca
	.long	0x2c0
	.byte	0x30
	.uleb128 0x8
	.long	.LASF1367
	.byte	0x1
	.byte	0xcd
	.long	0x2c0
	.byte	0x31
	.uleb128 0x8
	.long	.LASF1368
	.byte	0x1
	.byte	0xd3
	.long	0x2c0
	.byte	0x32
	.uleb128 0x8
	.long	.LASF1369
	.byte	0x1
	.byte	0xd6
	.long	0x2c0
	.byte	0x33
	.uleb128 0x8
	.long	.LASF1370
	.byte	0x1
	.byte	0xd9
	.long	0x2c0
	.byte	0x34
	.uleb128 0x8
	.long	.LASF1371
	.byte	0x1
	.byte	0xdd
	.long	0x1e3
	.byte	0x38
	.uleb128 0x8
	.long	.LASF1372
	.byte	0x1
	.byte	0xe2
	.long	0x123
	.byte	0x40
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3aad
	.uleb128 0x22
	.long	.LASF1373
	.byte	0x4
	.byte	0x1
	.value	0x1c5
	.long	0x3b76
	.uleb128 0x18
	.long	.LASF1374
	.sleb128 0
	.uleb128 0x18
	.long	.LASF1375
	.sleb128 1
	.byte	0
	.uleb128 0xf
	.long	.LASF1376
	.byte	0x58
	.byte	0x1
	.value	0x1c5b
	.long	0x3bf9
	.uleb128 0x10
	.long	.LASF612
	.byte	0x1
	.value	0x1c5d
	.long	0x2848
	.byte	0
	.uleb128 0x10
	.long	.LASF1377
	.byte	0x1
	.value	0x1c5e
	.long	0x123
	.byte	0x28
	.uleb128 0x10
	.long	.LASF1378
	.byte	0x1
	.value	0x1c5f
	.long	0x123
	.byte	0x30
	.uleb128 0x10
	.long	.LASF1379
	.byte	0x1
	.value	0x1c60
	.long	0x1e3
	.byte	0x38
	.uleb128 0x10
	.long	.LASF1380
	.byte	0x1
	.value	0x1c61
	.long	0x1e3
	.byte	0x3c
	.uleb128 0x10
	.long	.LASF1381
	.byte	0x1
	.value	0x1c62
	.long	0x1e3
	.byte	0x40
	.uleb128 0x10
	.long	.LASF1382
	.byte	0x1
	.value	0x1c63
	.long	0x1e3
	.byte	0x44
	.uleb128 0x10
	.long	.LASF1383
	.byte	0x1
	.value	0x1c64
	.long	0x1e3
	.byte	0x48
	.uleb128 0x10
	.long	.LASF1359
	.byte	0x1
	.value	0x1c65
	.long	0x3b56
	.byte	0x50
	.byte	0
	.uleb128 0x2f
	.long	.LASF1401
	.byte	0x1
	.value	0x1d1
	.long	0x1e3
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c97
	.uleb128 0x30
	.long	.LASF1384
	.byte	0x1
	.value	0x1d2
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x30
	.long	.LASF1385
	.byte	0x1
	.value	0x1d3
	.long	0x3c97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.long	.LASF1386
	.byte	0x1
	.value	0x1d5
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.string	"p"
	.byte	0x1
	.value	0x1d6
	.long	0x2ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LASF1387
	.byte	0x1
	.value	0x205
	.quad	.L14
	.uleb128 0x33
	.long	.LASF1388
	.byte	0x1
	.value	0x207
	.quad	.L16
	.uleb128 0x34
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x31
	.long	.LASF1389
	.byte	0x1
	.value	0x200
	.long	0x1ee5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2ba
	.uleb128 0x35
	.long	.LASF1392
	.byte	0x1
	.value	0x32c
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d0a
	.uleb128 0x30
	.long	.LASF1390
	.byte	0x1
	.value	0x32d
	.long	0x34aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF1180
	.byte	0x1
	.value	0x32e
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF1391
	.byte	0x1
	.value	0x32f
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x34
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x32
	.string	"rid"
	.byte	0x1
	.value	0x339
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1393
	.byte	0x1
	.value	0x345
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d59
	.uleb128 0x30
	.long	.LASF23
	.byte	0x1
	.value	0x346
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x31
	.long	.LASF24
	.byte	0x1
	.value	0x34a
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	.LASF1739
	.byte	0x1
	.value	0x35c
	.long	0x3b56
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x37
	.long	.LASF1394
	.byte	0x1
	.value	0x365
	.long	0x1e3
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x38
	.long	.LASF1456
	.byte	0x1
	.value	0x36b
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x37
	.long	.LASF1395
	.byte	0x1
	.value	0x373
	.long	0x1e3
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x39
	.long	.LASF1396
	.byte	0x1
	.value	0x383
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x3dfb
	.uleb128 0x30
	.long	.LASF1397
	.byte	0x1
	.value	0x384
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x37
	.long	.LASF1398
	.byte	0x1
	.value	0x38c
	.long	0x1e3
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x35
	.long	.LASF1399
	.byte	0x1
	.value	0x396
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e56
	.uleb128 0x30
	.long	.LASF1367
	.byte	0x1
	.value	0x397
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x31
	.long	.LASF1400
	.byte	0x1
	.value	0x399
	.long	0x3b56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3a
	.long	.LASF1430
	.byte	0x1
	.value	0x3c3
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e93
	.uleb128 0x30
	.long	.LASF26
	.byte	0x1
	.value	0x3c4
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.string	"tem"
	.byte	0x1
	.value	0x3c6
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.long	.LASF1402
	.byte	0x1
	.value	0x3e0
	.long	0x123
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f9a
	.uleb128 0x30
	.long	.LASF1369
	.byte	0x1
	.value	0x3e1
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x30
	.long	.LASF1403
	.byte	0x1
	.value	0x3e2
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x30
	.long	.LASF1404
	.byte	0x1
	.value	0x3e3
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x31
	.long	.LASF1405
	.byte	0x1
	.value	0x3e5
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x31
	.long	.LASF1406
	.byte	0x1
	.value	0x3e8
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x31
	.long	.LASF1361
	.byte	0x1
	.value	0x3e9
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.long	.LASF460
	.byte	0x1
	.value	0x3ea
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.long	.LASF26
	.byte	0x1
	.value	0x3eb
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.long	.LASF23
	.byte	0x1
	.value	0x3ec
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.long	.LASF1407
	.byte	0x1
	.value	0x3ed
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x3b
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x3f78
	.uleb128 0x31
	.long	.LASF1304
	.byte	0x1
	.value	0x474
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x34
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x31
	.long	.LASF1408
	.byte	0x1
	.value	0x48b
	.long	0x3b56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1409
	.byte	0x1
	.value	0x4c4
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x3fc8
	.uleb128 0x30
	.long	.LASF26
	.byte	0x1
	.value	0x4c5
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x35
	.long	.LASF1410
	.byte	0x1
	.value	0x4d0
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ff6
	.uleb128 0x30
	.long	.LASF26
	.byte	0x1
	.value	0x4d1
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x35
	.long	.LASF1411
	.byte	0x1
	.value	0x4db
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x4024
	.uleb128 0x31
	.long	.LASF1400
	.byte	0x1
	.value	0x4dd
	.long	0x3b56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.long	.LASF1412
	.byte	0x1
	.value	0x4f7
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x4070
	.uleb128 0x31
	.long	.LASF1408
	.byte	0x1
	.value	0x4f9
	.long	0x3b56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.long	.LASF1405
	.byte	0x1
	.value	0x4fa
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.long	.LASF1413
	.byte	0x1
	.value	0x4fa
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF1414
	.byte	0x1
	.value	0x534
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x40ba
	.uleb128 0x30
	.long	.LASF484
	.byte	0x1
	.value	0x535
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF24
	.byte	0x1
	.value	0x535
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.string	"b"
	.byte	0x1
	.value	0x537
	.long	0x3b56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3c
	.long	.LASF1442
	.byte	0x1
	.value	0x562
	.long	0x1e3
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x42e2
	.uleb128 0x30
	.long	.LASF1415
	.byte	0x1
	.value	0x563
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x30
	.long	.LASF1416
	.byte	0x1
	.value	0x563
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x30
	.long	.LASF1417
	.byte	0x1
	.value	0x564
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x31
	.long	.LASF1418
	.byte	0x1
	.value	0x566
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x31
	.long	.LASF1419
	.byte	0x1
	.value	0x567
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x31
	.long	.LASF1420
	.byte	0x1
	.value	0x569
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x31
	.long	.LASF1421
	.byte	0x1
	.value	0x56a
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x31
	.long	.LASF1422
	.byte	0x1
	.value	0x56b
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x3d
	.long	.LASF1504
	.long	0x42f2
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14345
	.uleb128 0x3b
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0x41ea
	.uleb128 0x31
	.long	.LASF1423
	.byte	0x1
	.value	0x5e5
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.long	.LASF1424
	.byte	0x1
	.value	0x5e6
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3b
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x41c8
	.uleb128 0x31
	.long	.LASF1425
	.byte	0x1
	.value	0x5ec
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x34
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x31
	.long	.LASF1425
	.byte	0x1
	.value	0x601
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x3b
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x420f
	.uleb128 0x31
	.long	.LASF1425
	.byte	0x1
	.value	0x616
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x3b
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0x4254
	.uleb128 0x32
	.string	"t"
	.byte	0x1
	.value	0x66e
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x34
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x31
	.long	.LASF24
	.byte	0x1
	.value	0x673
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x3b
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.long	0x429a
	.uleb128 0x31
	.long	.LASF24
	.byte	0x1
	.value	0x6b2
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x31
	.long	.LASF1426
	.byte	0x1
	.value	0x6b2
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.long	.LASF1427
	.byte	0x1
	.value	0x6b3
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.byte	0
	.uleb128 0x3b
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.long	0x42bf
	.uleb128 0x31
	.long	.LASF1428
	.byte	0x1
	.value	0x727
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x34
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x31
	.long	.LASF1429
	.byte	0x1
	.value	0x821
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x2c0
	.long	0x42f2
	.uleb128 0x15
	.long	0x1ea
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.long	0x42e2
	.uleb128 0x3a
	.long	.LASF1431
	.byte	0x1
	.value	0x834
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x4341
	.uleb128 0x3e
	.string	"x"
	.byte	0x1
	.value	0x835
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF1432
	.byte	0x1
	.value	0x835
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.long	.LASF484
	.byte	0x1
	.value	0x837
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.long	.LASF1433
	.byte	0x1
	.value	0x875
	.long	0x123
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x4483
	.uleb128 0x3e
	.string	"x"
	.byte	0x1
	.value	0x876
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x32
	.string	"t"
	.byte	0x1
	.value	0x878
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x31
	.long	.LASF484
	.byte	0x1
	.value	0x879
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.string	"b"
	.byte	0x1
	.value	0x87a
	.long	0x3b56
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x34
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x31
	.long	.LASF1417
	.byte	0x1
	.value	0x88b
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x3b
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.long	0x43e1
	.uleb128 0x32
	.string	"tt"
	.byte	0x1
	.value	0x903
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x3b
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.long	0x4407
	.uleb128 0x31
	.long	.LASF23
	.byte	0x1
	.value	0x915
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x3b
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.long	0x442c
	.uleb128 0x31
	.long	.LASF24
	.byte	0x1
	.value	0x93e
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x3b
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.long	0x4460
	.uleb128 0x31
	.long	.LASF1432
	.byte	0x1
	.value	0x99a
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.long	.LASF1434
	.byte	0x1
	.value	0x99b
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x34
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x31
	.long	.LASF1435
	.byte	0x1
	.value	0x9fd
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF1436
	.byte	0x1
	.value	0xa12
	.long	0x123
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x44cd
	.uleb128 0x3e
	.string	"x"
	.byte	0x1
	.value	0xa13
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.string	"t"
	.byte	0x1
	.value	0xa15
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.string	"b"
	.byte	0x1
	.value	0xa16
	.long	0x3b56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2f
	.long	.LASF1437
	.byte	0x1
	.value	0xa22
	.long	0x123
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x452c
	.uleb128 0x30
	.long	.LASF1438
	.byte	0x1
	.value	0xa23
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.long	.LASF23
	.byte	0x1
	.value	0xa25
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.long	.LASF1439
	.byte	0x1
	.value	0xa26
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.long	.LASF1440
	.byte	0x1
	.value	0xa28
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x35
	.long	.LASF1441
	.byte	0x1
	.value	0xa5e
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x4568
	.uleb128 0x3e
	.string	"id"
	.byte	0x1
	.value	0xa5f
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.long	.LASF484
	.byte	0x1
	.value	0xa61
	.long	0x4bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3f
	.long	.LASF1443
	.byte	0x1
	.value	0xa6f
	.long	0x1e3
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x45a9
	.uleb128 0x30
	.long	.LASF1415
	.byte	0x1
	.value	0xa70
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	.LASF1416
	.byte	0x1
	.value	0xa70
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2f
	.long	.LASF1444
	.byte	0x1
	.value	0xab6
	.long	0x123
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x45e9
	.uleb128 0x3e
	.string	"id"
	.byte	0x1
	.value	0xab7
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.long	.LASF23
	.byte	0x1
	.value	0xab9
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.long	.LASF1445
	.byte	0x1
	.value	0xae8
	.long	0x123
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x464b
	.uleb128 0x30
	.long	.LASF484
	.byte	0x1
	.value	0xae9
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.long	.LASF23
	.byte	0x1
	.value	0xaeb
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x32
	.string	"dup"
	.byte	0x1
	.value	0xaef
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF1446
	.byte	0x1
	.value	0xb0a
	.long	0x123
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x46aa
	.uleb128 0x30
	.long	.LASF575
	.byte	0x1
	.value	0xb0b
	.long	0x4bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF1447
	.byte	0x1
	.value	0xb0c
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x30
	.long	.LASF484
	.byte	0x1
	.value	0xb0d
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.long	.LASF23
	.byte	0x1
	.value	0xb0f
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF1448
	.byte	0x1
	.value	0xb35
	.long	0x123
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x37
	.long	.LASF1449
	.byte	0x1
	.value	0xb3d
	.long	0x123
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x40
	.long	.LASF1450
	.byte	0x1
	.value	0xb47
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x4714
	.uleb128 0x30
	.long	.LASF1406
	.byte	0x1
	.value	0xb48
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x40
	.long	.LASF1451
	.byte	0x1
	.value	0xb50
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x4742
	.uleb128 0x30
	.long	.LASF1361
	.byte	0x1
	.value	0xb51
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3c
	.long	.LASF1452
	.byte	0x1
	.value	0xb61
	.long	0x123
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x47e1
	.uleb128 0x30
	.long	.LASF0
	.byte	0x1
	.value	0xb62
	.long	0x6a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x30
	.long	.LASF484
	.byte	0x1
	.value	0xb64
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.long	.LASF1359
	.byte	0x1
	.value	0xb63
	.long	0x3b56
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.long	.LASF1453
	.byte	0x1
	.value	0xb65
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.long	.LASF1408
	.byte	0x1
	.value	0xb67
	.long	0x3b56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.long	.LASF1454
	.byte	0x1
	.value	0xb68
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x31
	.long	.LASF1455
	.byte	0x1
	.value	0xb6c
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x41
	.long	.LASF1457
	.byte	0x1
	.value	0xb91
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3f
	.long	.LASF1458
	.byte	0x1
	.value	0xb9f
	.long	0x123
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x485d
	.uleb128 0x30
	.long	.LASF24
	.byte	0x1
	.value	0xba0
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.long	.LASF1408
	.byte	0x1
	.value	0xba2
	.long	0x3b56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x31
	.long	.LASF1455
	.byte	0x1
	.value	0xba6
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x42
	.long	.LASF1459
	.byte	0x1
	.value	0xbb6
	.long	0x123
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x489e
	.uleb128 0x30
	.long	.LASF484
	.byte	0x1
	.value	0xbb7
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.string	"val"
	.byte	0x1
	.value	0xbb9
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x42
	.long	.LASF1460
	.byte	0x1
	.value	0xbc6
	.long	0x123
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x48dd
	.uleb128 0x30
	.long	.LASF484
	.byte	0x1
	.value	0xbc7
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.string	"t"
	.byte	0x1
	.value	0xbc9
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3a
	.long	.LASF1461
	.byte	0x1
	.value	0xbdb
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x49f6
	.uleb128 0x3e
	.string	"arg"
	.byte	0x1
	.value	0xbdc
	.long	0x26d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x31
	.long	.LASF1408
	.byte	0x1
	.value	0xbde
	.long	0x3b56
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3b
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.long	0x4940
	.uleb128 0x32
	.string	"t__"
	.byte	0x1
	.value	0xbe2
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x3b
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.long	0x4965
	.uleb128 0x32
	.string	"t__"
	.byte	0x1
	.value	0xbe3
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x3b
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.long	0x498a
	.uleb128 0x32
	.string	"t__"
	.byte	0x1
	.value	0xbe4
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x3b
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.long	0x49af
	.uleb128 0x32
	.string	"t__"
	.byte	0x1
	.value	0xbe5
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x3b
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.long	0x49d4
	.uleb128 0x32
	.string	"t__"
	.byte	0x1
	.value	0xbe6
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x34
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.uleb128 0x32
	.string	"t__"
	.byte	0x1
	.value	0xbe7
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1462
	.byte	0x1
	.value	0xbf1
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a42
	.uleb128 0x31
	.long	.LASF1463
	.byte	0x1
	.value	0xbf3
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.long	.LASF1464
	.byte	0x1
	.value	0xbf4
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.long	.LASF1465
	.byte	0x1
	.value	0xbf4
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x3c
	.long	.LASF1466
	.byte	0x1
	.value	0xc6c
	.long	0x123
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ad0
	.uleb128 0x3e
	.string	"id"
	.byte	0x1
	.value	0xc6d
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x30
	.long	.LASF1467
	.byte	0x1
	.value	0xc6e
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x31
	.long	.LASF484
	.byte	0x1
	.value	0xc70
	.long	0x4bd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.long	.LASF23
	.byte	0x1
	.value	0xc71
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.long	.LASF24
	.byte	0x1
	.value	0xc71
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.long	.LASF1285
	.byte	0x1
	.value	0xc71
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.long	.LASF439
	.byte	0x1
	.value	0xc72
	.long	0x276
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x2f
	.long	.LASF1468
	.byte	0x1
	.value	0xc94
	.long	0x123
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b50
	.uleb128 0x30
	.long	.LASF484
	.byte	0x1
	.value	0xc95
	.long	0x4bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF24
	.byte	0x1
	.value	0xc96
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.long	.LASF1469
	.byte	0x1
	.value	0xc97
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x30
	.long	.LASF1470
	.byte	0x1
	.value	0xc98
	.long	0xa7a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.long	.LASF1471
	.byte	0x1
	.value	0xc99
	.long	0x4bd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.long	.LASF23
	.byte	0x1
	.value	0xc9b
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x35
	.long	.LASF1472
	.byte	0x1
	.value	0xcbd
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b7e
	.uleb128 0x30
	.long	.LASF23
	.byte	0x1
	.value	0xcbe
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.long	.LASF1473
	.byte	0x1
	.value	0xcce
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x4bac
	.uleb128 0x30
	.long	.LASF1474
	.byte	0x1
	.value	0xccf
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.long	.LASF1475
	.byte	0x1
	.value	0xcd5
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x4c7b
	.uleb128 0x30
	.long	.LASF1474
	.byte	0x1
	.value	0xcd6
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x30
	.long	.LASF1476
	.byte	0x1
	.value	0xcd7
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x31
	.long	.LASF1477
	.byte	0x1
	.value	0xcdb
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.long	.LASF1405
	.byte	0x1
	.value	0xcdc
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.long	.LASF1478
	.byte	0x1
	.value	0xcdd
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.long	.LASF1479
	.byte	0x1
	.value	0xcdd
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.uleb128 0x31
	.long	.LASF450
	.byte	0x1
	.value	0xce7
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.long	.LASF0
	.byte	0x1
	.value	0xce8
	.long	0x6a1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x43
	.long	.Ldebug_ranges0+0
	.uleb128 0x31
	.long	.LASF484
	.byte	0x1
	.value	0xcee
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.string	"t"
	.byte	0x1
	.value	0xcef
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF1480
	.byte	0x1
	.value	0xd28
	.long	0x123
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ce9
	.uleb128 0x30
	.long	.LASF498
	.byte	0x1
	.value	0xd29
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF1481
	.byte	0x1
	.value	0xd2a
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF1482
	.byte	0x1
	.value	0xd2b
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x30
	.long	.LASF1483
	.byte	0x1
	.value	0xd2c
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.long	.LASF23
	.byte	0x1
	.value	0xd2e
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.long	.LASF1484
	.byte	0x1
	.value	0xd46
	.long	0x123
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x4d39
	.uleb128 0x30
	.long	.LASF23
	.byte	0x1
	.value	0xd47
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	.LASF24
	.byte	0x1
	.value	0xd48
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	.LASF1485
	.byte	0x1
	.value	0xd49
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2f
	.long	.LASF1486
	.byte	0x1
	.value	0xd54
	.long	0x123
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x4d89
	.uleb128 0x30
	.long	.LASF1487
	.byte	0x1
	.value	0xd55
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.long	.LASF1478
	.byte	0x1
	.value	0xd57
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.long	.LASF1479
	.byte	0x1
	.value	0xd57
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.long	.LASF1488
	.byte	0x1
	.value	0xd69
	.long	0x123
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x4dbb
	.uleb128 0x30
	.long	.LASF1487
	.byte	0x1
	.value	0xd6a
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.long	.LASF1489
	.byte	0x1
	.value	0xd83
	.long	0x123
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e38
	.uleb128 0x30
	.long	.LASF1490
	.byte	0x1
	.value	0xd84
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF1474
	.byte	0x1
	.value	0xd84
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF1491
	.byte	0x1
	.value	0xd85
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x30
	.long	.LASF470
	.byte	0x1
	.value	0xd86
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.long	.LASF23
	.byte	0x1
	.value	0xd88
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.string	"tem"
	.byte	0x1
	.value	0xd89
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.long	.LASF1492
	.byte	0x1
	.value	0xe26
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ee2
	.uleb128 0x30
	.long	.LASF23
	.byte	0x1
	.value	0xe27
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF1285
	.byte	0x1
	.value	0xe27
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.long	.LASF1493
	.byte	0x1
	.value	0xe28
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.long	.LASF24
	.byte	0x1
	.value	0xe2a
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.long	.LASF1494
	.byte	0x1
	.value	0xe2b
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x31
	.long	.LASF1495
	.byte	0x1
	.value	0xe2c
	.long	0x4bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.uleb128 0x31
	.long	.LASF1496
	.byte	0x1
	.value	0xe4d
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.long	.LASF1497
	.byte	0x1
	.value	0xe53
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x42
	.long	.LASF1498
	.byte	0x1
	.value	0xefb
	.long	0x123
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x4f14
	.uleb128 0x30
	.long	.LASF23
	.byte	0x1
	.value	0xefc
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.long	.LASF1499
	.byte	0x1
	.value	0xf08
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x4f60
	.uleb128 0x30
	.long	.LASF1426
	.byte	0x1
	.value	0xf09
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.long	.LASF23
	.byte	0x1
	.value	0xf0b
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.long	.LASF1500
	.byte	0x1
	.value	0xf0c
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x38
	.long	.LASF1501
	.byte	0x1
	.value	0xf2f
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2f
	.long	.LASF1502
	.byte	0x1
	.value	0xf3a
	.long	0x123
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x5050
	.uleb128 0x30
	.long	.LASF24
	.byte	0x1
	.value	0xf3b
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x30
	.long	.LASF1285
	.byte	0x1
	.value	0xf3c
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x31
	.long	.LASF23
	.byte	0x1
	.value	0xf41
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.long	.LASF1503
	.byte	0x1
	.value	0xf42
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.long	.LASF497
	.byte	0x1
	.value	0xf43
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3d
	.long	.LASF1504
	.long	0x5060
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14580
	.uleb128 0x3b
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.long	0x5022
	.uleb128 0x31
	.long	.LASF1497
	.byte	0x1
	.value	0xf4f
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x34
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.uleb128 0x31
	.long	.LASF484
	.byte	0x1
	.value	0xf62
	.long	0x2ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x44
	.long	.LASF1641
	.byte	0x1
	.value	0xf63
	.long	0x1e3
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x2c0
	.long	0x5060
	.uleb128 0x15
	.long	0x1ea
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.long	0x5050
	.uleb128 0x2f
	.long	.LASF1505
	.byte	0x1
	.value	0xf77
	.long	0x1e3
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x511a
	.uleb128 0x30
	.long	.LASF24
	.byte	0x1
	.value	0xf78
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF1506
	.byte	0x1
	.value	0xf79
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.long	.LASF1496
	.byte	0x1
	.value	0xf7a
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x31
	.long	.LASF1507
	.byte	0x1
	.value	0xf7c
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.long	.LASF450
	.byte	0x1
	.value	0xf7d
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.long	0x50f8
	.uleb128 0x31
	.long	.LASF1508
	.byte	0x1
	.value	0xf85
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x34
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.uleb128 0x31
	.long	.LASF494
	.byte	0x1
	.value	0xf8c
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	.LASF1509
	.byte	0x1
	.value	0xfd6
	.long	0x123
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x567a
	.uleb128 0x30
	.long	.LASF1490
	.byte	0x1
	.value	0xfd8
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x30
	.long	.LASF1474
	.byte	0x1
	.value	0xfd7
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x30
	.long	.LASF1352
	.byte	0x1
	.value	0xfd9
	.long	0x3a7c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -356
	.uleb128 0x30
	.long	.LASF1491
	.byte	0x1
	.value	0xfda
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x31
	.long	.LASF1510
	.byte	0x1
	.value	0xfdc
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x31
	.long	.LASF1511
	.byte	0x1
	.value	0xfdd
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x31
	.long	.LASF24
	.byte	0x1
	.value	0xfde
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x31
	.long	.LASF1512
	.byte	0x1
	.value	0xfdf
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -324
	.uleb128 0x31
	.long	.LASF1513
	.byte	0x1
	.value	0xfe0
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x31
	.long	.LASF1514
	.byte	0x1
	.value	0xfe1
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -316
	.uleb128 0x31
	.long	.LASF1515
	.byte	0x1
	.value	0xfe2
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x31
	.long	.LASF1516
	.byte	0x1
	.value	0xfe3
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x31
	.long	.LASF1517
	.byte	0x1
	.value	0xfe4
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x31
	.long	.LASF1518
	.byte	0x1
	.value	0xfe5
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x31
	.long	.LASF1519
	.byte	0x1
	.value	0xfe6
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x31
	.long	.LASF1520
	.byte	0x1
	.value	0xfe7
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x31
	.long	.LASF1521
	.byte	0x1
	.value	0xfe8
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x31
	.long	.LASF484
	.byte	0x1
	.value	0xfe9
	.long	0x4bd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x31
	.long	.LASF1522
	.byte	0x1
	.value	0xfea
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x31
	.long	.LASF1523
	.byte	0x1
	.value	0xfeb
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x31
	.long	.LASF1524
	.byte	0x1
	.value	0xfec
	.long	0x6a1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x31
	.long	.LASF1525
	.byte	0x1
	.value	0xfed
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x31
	.long	.LASF1526
	.byte	0x1
	.value	0xfee
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x31
	.long	.LASF1527
	.byte	0x1
	.value	0xfef
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x31
	.long	.LASF1528
	.byte	0x1
	.value	0xff0
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x31
	.long	.LASF1529
	.byte	0x1
	.value	0xff1
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x31
	.long	.LASF1530
	.byte	0x1
	.value	0xff2
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x3d
	.long	.LASF1504
	.long	0x568a
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14633
	.uleb128 0x33
	.long	.LASF1531
	.byte	0x1
	.value	0x1081
	.quad	.L670
	.uleb128 0x3b
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.long	0x5335
	.uleb128 0x31
	.long	.LASF23
	.byte	0x1
	.value	0xffd
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x3b
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.long	0x539e
	.uleb128 0x32
	.string	"id"
	.byte	0x1
	.value	0x103b
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x3b
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.long	0x537d
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.value	0x104c
	.long	0x2b2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.byte	0
	.uleb128 0x34
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.uleb128 0x32
	.string	"t"
	.byte	0x1
	.value	0x1072
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.byte	0
	.uleb128 0x3b
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.long	0x53eb
	.uleb128 0x32
	.string	"ok"
	.byte	0x1
	.value	0x10b6
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x34
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.uleb128 0x31
	.long	.LASF1532
	.byte	0x1
	.value	0x10c3
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	already.14645
	.byte	0
	.byte	0
	.uleb128 0x3b
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.long	0x5411
	.uleb128 0x31
	.long	.LASF1533
	.byte	0x1
	.value	0x1151
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.byte	0
	.uleb128 0x3b
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.long	0x5457
	.uleb128 0x31
	.long	.LASF1479
	.byte	0x1
	.value	0x11bf
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.long	.LASF1534
	.byte	0x1
	.value	0x11c0
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x31
	.long	.LASF1535
	.byte	0x1
	.value	0x11c1
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.byte	0
	.uleb128 0x3b
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.long	0x549d
	.uleb128 0x31
	.long	.LASF1536
	.byte	0x1
	.value	0x11d4
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x31
	.long	.LASF468
	.byte	0x1
	.value	0x11d5
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x31
	.long	.LASF1537
	.byte	0x1
	.value	0x11d7
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x3b
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.long	0x54e4
	.uleb128 0x31
	.long	.LASF1538
	.byte	0x1
	.value	0x1276
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x34
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.uleb128 0x31
	.long	.LASF1405
	.byte	0x1
	.value	0x12bd
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.byte	0
	.uleb128 0x3b
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.long	0x553b
	.uleb128 0x31
	.long	.LASF1539
	.byte	0x1
	.value	0x12d9
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x31
	.long	.LASF1540
	.byte	0x1
	.value	0x12da
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x34
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.uleb128 0x31
	.long	.LASF1541
	.byte	0x1
	.value	0x12e2
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x3b
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.long	0x5561
	.uleb128 0x31
	.long	.LASF23
	.byte	0x1
	.value	0x131a
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.uleb128 0x34
	.quad	.LBB53
	.quad	.LBE53-.LBB53
	.uleb128 0x31
	.long	.LASF23
	.byte	0x1
	.value	0x135e
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x3b
	.quad	.LBB54
	.quad	.LBE54-.LBB54
	.long	0x561a
	.uleb128 0x31
	.long	.LASF1542
	.byte	0x1
	.value	0x1362
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.long	.LASF1543
	.byte	0x1
	.value	0x1363
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x34
	.quad	.LBB55
	.quad	.LBE55-.LBB55
	.uleb128 0x31
	.long	.LASF1544
	.byte	0x1
	.value	0x1372
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x31
	.long	.LASF1545
	.byte	0x1
	.value	0x1372
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x31
	.long	.LASF1540
	.byte	0x1
	.value	0x1373
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x34
	.quad	.LBB56
	.quad	.LBE56-.LBB56
	.uleb128 0x31
	.long	.LASF1541
	.byte	0x1
	.value	0x137e
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x45
	.long	.Ldebug_ranges0+0x30
	.long	0x5634
	.uleb128 0x31
	.long	.LASF1546
	.byte	0x1
	.value	0x13e2
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.byte	0
	.uleb128 0x34
	.quad	.LBB60
	.quad	.LBE60-.LBB60
	.uleb128 0x31
	.long	.LASF1546
	.byte	0x1
	.value	0x142d
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x34
	.quad	.LBB61
	.quad	.LBE61-.LBB61
	.uleb128 0x31
	.long	.LASF1547
	.byte	0x1
	.value	0x1432
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x2c0
	.long	0x568a
	.uleb128 0x15
	.long	0x1ea
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.long	0x567a
	.uleb128 0x3c
	.long	.LASF1548
	.byte	0x1
	.value	0x1481
	.long	0x123
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x5730
	.uleb128 0x30
	.long	.LASF1549
	.byte	0x1
	.value	0x1482
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF1523
	.byte	0x1
	.value	0x1483
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x31
	.long	.LASF1550
	.byte	0x1
	.value	0x1485
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.quad	.LBB62
	.quad	.LBE62-.LBB62
	.uleb128 0x31
	.long	.LASF1426
	.byte	0x1
	.value	0x1499
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.long	.LASF1551
	.byte	0x1
	.value	0x149a
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.quad	.LBB63
	.quad	.LBE63-.LBB63
	.uleb128 0x31
	.long	.LASF24
	.byte	0x1
	.value	0x14ac
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF1552
	.byte	0x1
	.value	0x14e2
	.long	0x123
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x5823
	.uleb128 0x30
	.long	.LASF1553
	.byte	0x1
	.value	0x14e3
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x31
	.long	.LASF23
	.byte	0x1
	.value	0x14e5
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x32
	.string	"t"
	.byte	0x1
	.value	0x14e5
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.long	.LASF1554
	.byte	0x1
	.value	0x14e6
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.long	.LASF1540
	.byte	0x1
	.value	0x14e7
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x31
	.long	.LASF1361
	.byte	0x1
	.value	0x14e8
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.long	.LASF1555
	.byte	0x1
	.value	0x14e9
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.long	.LASF1556
	.byte	0x1
	.value	0x14ea
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.long	.LASF1557
	.byte	0x1
	.value	0x14eb
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.quad	.LBB64
	.quad	.LBE64-.LBB64
	.long	0x5801
	.uleb128 0x31
	.long	.LASF899
	.byte	0x1
	.value	0x1504
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x34
	.quad	.LBB65
	.quad	.LBE65-.LBB65
	.uleb128 0x31
	.long	.LASF24
	.byte	0x1
	.value	0x152c
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1558
	.byte	0x1
	.value	0x1547
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x5888
	.uleb128 0x32
	.string	"elt"
	.byte	0x1
	.value	0x1549
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.long	.LASF1532
	.byte	0x1
	.value	0x154a
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	already.14728
	.uleb128 0x34
	.quad	.LBB66
	.quad	.LBE66-.LBB66
	.uleb128 0x31
	.long	.LASF0
	.byte	0x1
	.value	0x154e
	.long	0x6a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF1559
	.byte	0x1
	.value	0x1575
	.long	0x123
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x58d8
	.uleb128 0x30
	.long	.LASF0
	.byte	0x1
	.value	0x1576
	.long	0x6a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.long	.LASF484
	.byte	0x1
	.value	0x1577
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.string	"ref"
	.byte	0x1
	.value	0x157c
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.long	.LASF1560
	.byte	0x1
	.value	0x15a8
	.long	0x123
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x5928
	.uleb128 0x30
	.long	.LASF0
	.byte	0x1
	.value	0x15a9
	.long	0x6a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.long	.LASF484
	.byte	0x1
	.value	0x15aa
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.string	"ref"
	.byte	0x1
	.value	0x15af
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.long	.LASF1561
	.byte	0x1
	.value	0x15d6
	.long	0x123
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x59c7
	.uleb128 0x30
	.long	.LASF575
	.byte	0x1
	.value	0x15d7
	.long	0x4bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF1447
	.byte	0x1
	.value	0x15d8
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x30
	.long	.LASF1490
	.byte	0x1
	.value	0x15d9
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF1474
	.byte	0x1
	.value	0x15d9
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.long	.LASF1562
	.byte	0x1
	.value	0x15d9
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.long	.LASF450
	.byte	0x1
	.value	0x15db
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.quad	.LBB67
	.quad	.LBE67-.LBB67
	.uleb128 0x31
	.long	.LASF24
	.byte	0x1
	.value	0x15e1
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF1563
	.byte	0x1
	.value	0x15fa
	.long	0x123
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x5b61
	.uleb128 0x3e
	.string	"t"
	.byte	0x1
	.value	0x15fb
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x30
	.long	.LASF1564
	.byte	0x1
	.value	0x15fc
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x30
	.long	.LASF470
	.byte	0x1
	.value	0x15fd
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0x15ff
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.long	.LASF1565
	.byte	0x1
	.value	0x1600
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x31
	.long	.LASF1566
	.byte	0x1
	.value	0x1601
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x3b
	.quad	.LBB68
	.quad	.LBE68-.LBB68
	.long	0x5a69
	.uleb128 0x32
	.string	"t1"
	.byte	0x1
	.value	0x1634
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x3b
	.quad	.LBB69
	.quad	.LBE69-.LBB69
	.long	0x5ab0
	.uleb128 0x31
	.long	.LASF1567
	.byte	0x1
	.value	0x1671
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x34
	.quad	.LBB70
	.quad	.LBE70-.LBB70
	.uleb128 0x31
	.long	.LASF1562
	.byte	0x1
	.value	0x167e
	.long	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3b
	.quad	.LBB71
	.quad	.LBE71-.LBB71
	.long	0x5ad6
	.uleb128 0x31
	.long	.LASF829
	.byte	0x1
	.value	0x16a3
	.long	0x266
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x3b
	.quad	.LBB72
	.quad	.LBE72-.LBB72
	.long	0x5af9
	.uleb128 0x32
	.string	"y"
	.byte	0x1
	.value	0x16c7
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x3b
	.quad	.LBB73
	.quad	.LBE73-.LBB73
	.long	0x5b1e
	.uleb128 0x31
	.long	.LASF1568
	.byte	0x1
	.value	0x16e3
	.long	0x1f19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x34
	.quad	.LBB74
	.quad	.LBE74-.LBB74
	.uleb128 0x31
	.long	.LASF23
	.byte	0x1
	.value	0x1707
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.quad	.LBB75
	.quad	.LBE75-.LBB75
	.uleb128 0x31
	.long	.LASF1435
	.byte	0x1
	.value	0x1719
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	.LASF1569
	.byte	0x1
	.value	0x1737
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x5b8d
	.uleb128 0x3e
	.string	"t"
	.byte	0x1
	.value	0x1738
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.long	.LASF1570
	.byte	0x1
	.value	0x1746
	.long	0x123
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x5bce
	.uleb128 0x30
	.long	.LASF484
	.byte	0x1
	.value	0x1747
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.long	.LASF1571
	.byte	0x1
	.value	0x1749
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.long	.LASF1572
	.byte	0x1
	.value	0x1774
	.long	0x123
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x5d0b
	.uleb128 0x30
	.long	.LASF1571
	.byte	0x1
	.value	0x1775
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x30
	.long	.LASF467
	.byte	0x1
	.value	0x1776
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x30
	.long	.LASF470
	.byte	0x1
	.value	0x1777
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x31
	.long	.LASF1573
	.byte	0x1
	.value	0x1779
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x32
	.string	"tem"
	.byte	0x1
	.value	0x1779
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x31
	.long	.LASF1574
	.byte	0x1
	.value	0x177a
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.long	.LASF1575
	.byte	0x1
	.value	0x177a
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.long	.LASF1576
	.byte	0x1
	.value	0x177a
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.long	.LASF471
	.byte	0x1
	.value	0x177b
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x31
	.long	.LASF1577
	.byte	0x1
	.value	0x177b
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x31
	.long	.LASF1565
	.byte	0x1
	.value	0x177c
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x3b
	.quad	.LBB76
	.quad	.LBE76-.LBB76
	.long	0x5cc4
	.uleb128 0x31
	.long	.LASF450
	.byte	0x1
	.value	0x178c
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x3b
	.quad	.LBB77
	.quad	.LBE77-.LBB77
	.long	0x5ce9
	.uleb128 0x31
	.long	.LASF1578
	.byte	0x1
	.value	0x179d
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x34
	.quad	.LBB78
	.quad	.LBE78-.LBB78
	.uleb128 0x32
	.string	"enu"
	.byte	0x1
	.value	0x17c0
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF1579
	.byte	0x1
	.value	0x17f9
	.long	0x123
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x5d6a
	.uleb128 0x30
	.long	.LASF484
	.byte	0x1
	.value	0x17fa
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF450
	.byte	0x1
	.value	0x17fa
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.long	.LASF23
	.byte	0x1
	.value	0x17fc
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.long	.LASF24
	.byte	0x1
	.value	0x17fc
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2f
	.long	.LASF1580
	.byte	0x1
	.value	0x1845
	.long	0x1e3
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x5e4d
	.uleb128 0x30
	.long	.LASF1474
	.byte	0x1
	.value	0x1846
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x30
	.long	.LASF1490
	.byte	0x1
	.value	0x1846
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x30
	.long	.LASF470
	.byte	0x1
	.value	0x1846
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x31
	.long	.LASF1581
	.byte	0x1
	.value	0x1848
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.long	.LASF1582
	.byte	0x1
	.value	0x1848
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.long	.LASF1583
	.byte	0x1
	.value	0x1849
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.long	.LASF1500
	.byte	0x1
	.value	0x184a
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x34
	.quad	.LBB79
	.quad	.LBE79-.LBB79
	.uleb128 0x31
	.long	.LASF1584
	.byte	0x1
	.value	0x18d0
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.long	.LASF1585
	.byte	0x1
	.value	0x18d1
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x34
	.quad	.LBB80
	.quad	.LBE80-.LBB80
	.uleb128 0x31
	.long	.LASF24
	.byte	0x1
	.value	0x18da
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LASF1586
	.byte	0x1
	.value	0x1934
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x35
	.long	.LASF1587
	.byte	0x1
	.value	0x1941
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x6088
	.uleb128 0x31
	.long	.LASF1588
	.byte	0x1
	.value	0x1943
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x31
	.long	.LASF1426
	.byte	0x1
	.value	0x1944
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x31
	.long	.LASF1589
	.byte	0x1
	.value	0x1948
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x31
	.long	.LASF1590
	.byte	0x1
	.value	0x194b
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.long	.LASF1591
	.byte	0x1
	.value	0x194e
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.long	.LASF1592
	.byte	0x1
	.value	0x1953
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x31
	.long	.LASF490
	.byte	0x1
	.value	0x1956
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.long	.LASF1593
	.byte	0x1
	.value	0x1959
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x31
	.long	.LASF1594
	.byte	0x1
	.value	0x195b
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x3b
	.quad	.LBB81
	.quad	.LBE81-.LBB81
	.long	0x5f7b
	.uleb128 0x31
	.long	.LASF899
	.byte	0x1
	.value	0x1967
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.long	.LASF1595
	.byte	0x1
	.value	0x1968
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x34
	.quad	.LBB82
	.quad	.LBE82-.LBB82
	.uleb128 0x31
	.long	.LASF23
	.byte	0x1
	.value	0x196e
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x31
	.long	.LASF1405
	.byte	0x1
	.value	0x196e
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.byte	0
	.uleb128 0x3b
	.quad	.LBB83
	.quad	.LBE83-.LBB83
	.long	0x5fb1
	.uleb128 0x31
	.long	.LASF1455
	.byte	0x1
	.value	0x19d1
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x31
	.long	.LASF1531
	.byte	0x1
	.value	0x19d1
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.uleb128 0x3b
	.quad	.LBB84
	.quad	.LBE84-.LBB84
	.long	0x5fd6
	.uleb128 0x31
	.long	.LASF899
	.byte	0x1
	.value	0x1a1d
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x3b
	.quad	.LBB85
	.quad	.LBE85-.LBB85
	.long	0x5ffc
	.uleb128 0x31
	.long	.LASF902
	.byte	0x1
	.value	0x1a41
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0x3b
	.quad	.LBB86
	.quad	.LBE86-.LBB86
	.long	0x6022
	.uleb128 0x31
	.long	.LASF24
	.byte	0x1
	.value	0x1a54
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x3b
	.quad	.LBB87
	.quad	.LBE87-.LBB87
	.long	0x6067
	.uleb128 0x31
	.long	.LASF1596
	.byte	0x1
	.value	0x1a99
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x31
	.long	.LASF902
	.byte	0x1
	.value	0x1a99
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x31
	.long	.LASF24
	.byte	0x1
	.value	0x1a99
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x34
	.quad	.LBB88
	.quad	.LBE88-.LBB88
	.uleb128 0x32
	.string	"t"
	.byte	0x1
	.value	0x1adb
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1597
	.byte	0x1
	.value	0x1afc
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x60d4
	.uleb128 0x30
	.long	.LASF1598
	.byte	0x1
	.value	0x1afd
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.long	.LASF1599
	.byte	0x1
	.value	0x1afe
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.long	.LASF1588
	.byte	0x1
	.value	0x1b00
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.long	.LASF1600
	.byte	0x1
	.value	0x1b56
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x6102
	.uleb128 0x30
	.long	.LASF1588
	.byte	0x1
	.value	0x1b57
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3a
	.long	.LASF1601
	.byte	0x1
	.value	0x1b68
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x619f
	.uleb128 0x30
	.long	.LASF1588
	.byte	0x1
	.value	0x1b69
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF1602
	.byte	0x1
	.value	0x1b6a
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x30
	.long	.LASF1599
	.byte	0x1
	.value	0x1b6a
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.long	.LASF599
	.byte	0x1
	.value	0x1b6c
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.quad	.LBB89
	.quad	.LBE89-.LBB89
	.uleb128 0x31
	.long	.LASF1603
	.byte	0x1
	.value	0x1be2
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.quad	.LBB90
	.quad	.LBE90-.LBB90
	.uleb128 0x31
	.long	.LASF1604
	.byte	0x1
	.value	0x1be9
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1605
	.byte	0x1
	.value	0x1c20
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x61ec
	.uleb128 0x32
	.string	"t"
	.byte	0x1
	.value	0x1c22
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.quad	.LBB91
	.quad	.LBE91-.LBB91
	.uleb128 0x31
	.long	.LASF0
	.byte	0x1
	.value	0x1c3e
	.long	0x6a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1606
	.byte	0x1
	.value	0x1c6c
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x6225
	.uleb128 0x3e
	.string	"f"
	.byte	0x1
	.value	0x1c6d
	.long	0x192b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.string	"p"
	.byte	0x1
	.value	0x1c6f
	.long	0x6225
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3b76
	.uleb128 0x35
	.long	.LASF1607
	.byte	0x1
	.value	0x1c83
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0x6273
	.uleb128 0x3e
	.string	"f"
	.byte	0x1
	.value	0x1c84
	.long	0x192b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.string	"p"
	.byte	0x1
	.value	0x1c86
	.long	0x6225
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.long	.LASF1405
	.byte	0x1
	.value	0x1c88
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.long	.LASF1608
	.byte	0x1
	.value	0x1cac
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0x62f2
	.uleb128 0x3e
	.string	"f"
	.byte	0x1
	.value	0x1cad
	.long	0x192b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.string	"p"
	.byte	0x1
	.value	0x1caf
	.long	0x6225
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.quad	.LBB92
	.quad	.LBE92-.LBB92
	.long	0x62d0
	.uleb128 0x32
	.string	"t__"
	.byte	0x1
	.value	0x1cb6
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x34
	.quad	.LBB93
	.quad	.LBE93-.LBB93
	.uleb128 0x32
	.string	"t__"
	.byte	0x1
	.value	0x1cb7
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1609
	.byte	0x1
	.value	0x1cbe
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.long	0x632e
	.uleb128 0x30
	.long	.LASF23
	.byte	0x1
	.value	0x1cbf
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.string	"ld"
	.byte	0x1
	.value	0x1cc1
	.long	0x1cda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.long	.LASF1610
	.byte	0x1
	.value	0x1ccf
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.long	0x64c7
	.uleb128 0x3e
	.string	"t"
	.byte	0x1
	.value	0x1cd0
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x3b
	.quad	.LBB94
	.quad	.LBE94-.LBB94
	.long	0x645b
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.value	0x1cd4
	.long	0x64c7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x3b
	.quad	.LBB95
	.quad	.LBE95-.LBB95
	.long	0x63a3
	.uleb128 0x32
	.string	"t__"
	.byte	0x1
	.value	0x1cd5
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x3b
	.quad	.LBB96
	.quad	.LBE96-.LBB96
	.long	0x63c9
	.uleb128 0x32
	.string	"t__"
	.byte	0x1
	.value	0x1cd6
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x3b
	.quad	.LBB97
	.quad	.LBE97-.LBB97
	.long	0x63ef
	.uleb128 0x32
	.string	"t__"
	.byte	0x1
	.value	0x1cd7
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x3b
	.quad	.LBB98
	.quad	.LBE98-.LBB98
	.long	0x6414
	.uleb128 0x32
	.string	"t__"
	.byte	0x1
	.value	0x1cd8
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x3b
	.quad	.LBB99
	.quad	.LBE99-.LBB99
	.long	0x6439
	.uleb128 0x32
	.string	"t__"
	.byte	0x1
	.value	0x1cd9
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x34
	.quad	.LBB100
	.quad	.LBE100-.LBB100
	.uleb128 0x32
	.string	"t__"
	.byte	0x1
	.value	0x1cda
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x3b
	.quad	.LBB101
	.quad	.LBE101-.LBB101
	.long	0x6480
	.uleb128 0x32
	.string	"a__"
	.byte	0x1
	.value	0x1cdd
	.long	0x4dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x3b
	.quad	.LBB102
	.quad	.LBE102-.LBB102
	.long	0x64a5
	.uleb128 0x32
	.string	"a__"
	.byte	0x1
	.value	0x1ce0
	.long	0x4dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x34
	.quad	.LBB103
	.quad	.LBE103-.LBB103
	.uleb128 0x32
	.string	"t__"
	.byte	0x1
	.value	0x1ce2
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3070
	.uleb128 0x37
	.long	.LASF1185
	.byte	0x1
	.value	0x1cf0
	.long	0x1e3
	.quad	.LFB80
	.quad	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x37
	.long	.LASF1611
	.byte	0x1
	.value	0x1cfa
	.long	0x2f7c
	.quad	.LFB81
	.quad	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x37
	.long	.LASF1612
	.byte	0x1
	.value	0x1d02
	.long	0x1f19
	.quad	.LFB82
	.quad	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x42
	.long	.LASF1613
	.byte	0x1
	.value	0x1d0b
	.long	0x1e3
	.quad	.LFB83
	.quad	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.long	0x6559
	.uleb128 0x30
	.long	.LASF1180
	.byte	0x1
	.value	0x1d0c
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x38
	.long	.LASF1614
	.byte	0x1
	.value	0x1d14
	.quad	.LFB84
	.quad	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2f
	.long	.LASF1615
	.byte	0x1
	.value	0x1d1c
	.long	0x123
	.quad	.LFB85
	.quad	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.long	0x65a5
	.uleb128 0x31
	.long	.LASF497
	.byte	0x1
	.value	0x1d1e
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.long	.LASF1616
	.byte	0x1
	.value	0x1d2a
	.quad	.LFB86
	.quad	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.long	0x65e0
	.uleb128 0x3e
	.string	"t"
	.byte	0x1
	.value	0x1d2b
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.long	.LASF23
	.byte	0x1
	.value	0x1d2d
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x42
	.long	.LASF1617
	.byte	0x1
	.value	0x1d3a
	.long	0x123
	.quad	.LFB87
	.quad	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.long	0x6610
	.uleb128 0x3e
	.string	"t"
	.byte	0x1
	.value	0x1d3b
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.long	.LASF1618
	.byte	0x1
	.value	0x1d44
	.quad	.LFB88
	.quad	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.long	0x666a
	.uleb128 0x30
	.long	.LASF1619
	.byte	0x1
	.value	0x1d45
	.long	0x2b2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.long	.LASF484
	.byte	0x1
	.value	0x1d46
	.long	0x4bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF24
	.byte	0x1
	.value	0x1d47
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.string	"id"
	.byte	0x1
	.value	0x1d49
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.long	.LASF1620
	.byte	0x1
	.value	0x1d53
	.long	0x123
	.quad	.LFB89
	.quad	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.long	0x669a
	.uleb128 0x32
	.string	"t"
	.byte	0x1
	.value	0x1d55
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x46
	.long	.LASF1621
	.byte	0x1
	.byte	0x4b
	.long	0x123
	.uleb128 0x9
	.byte	0x3
	.quad	enum_next_value
	.uleb128 0x46
	.long	.LASF1622
	.byte	0x1
	.byte	0x4f
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	enum_overflow
	.uleb128 0x46
	.long	.LASF1623
	.byte	0x1
	.byte	0x54
	.long	0x123
	.uleb128 0x9
	.byte	0x3
	.quad	last_function_parms
	.uleb128 0x46
	.long	.LASF1624
	.byte	0x1
	.byte	0x59
	.long	0x123
	.uleb128 0x9
	.byte	0x3
	.quad	last_function_parm_tags
	.uleb128 0x46
	.long	.LASF1625
	.byte	0x1
	.byte	0x5f
	.long	0x123
	.uleb128 0x9
	.byte	0x3
	.quad	current_function_parms
	.uleb128 0x46
	.long	.LASF1626
	.byte	0x1
	.byte	0x62
	.long	0x123
	.uleb128 0x9
	.byte	0x3
	.quad	current_function_parm_tags
	.uleb128 0x46
	.long	.LASF1627
	.byte	0x1
	.byte	0x66
	.long	0x4bd
	.uleb128 0x9
	.byte	0x3
	.quad	current_function_prototype_file
	.uleb128 0x46
	.long	.LASF1628
	.byte	0x1
	.byte	0x67
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	current_function_prototype_line
	.uleb128 0x46
	.long	.LASF1629
	.byte	0x1
	.byte	0x6b
	.long	0x2f3b
	.uleb128 0x9
	.byte	0x3
	.quad	c_stmt_tree
	.uleb128 0x46
	.long	.LASF1630
	.byte	0x1
	.byte	0x6f
	.long	0x123
	.uleb128 0x9
	.byte	0x3
	.quad	c_scope_stmt_stack
	.uleb128 0x46
	.long	.LASF1377
	.byte	0x1
	.byte	0x75
	.long	0x123
	.uleb128 0x9
	.byte	0x3
	.quad	named_labels
	.uleb128 0x46
	.long	.LASF1378
	.byte	0x1
	.byte	0x79
	.long	0x123
	.uleb128 0x9
	.byte	0x3
	.quad	shadowed_labels
	.uleb128 0x46
	.long	.LASF1631
	.byte	0x1
	.byte	0x7e
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	c_function_varargs
	.uleb128 0x46
	.long	.LASF1382
	.byte	0x1
	.byte	0x92
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_about_return_type
	.uleb128 0x46
	.long	.LASF1632
	.byte	0x1
	.byte	0x96
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	current_extern_inline
	.uleb128 0x46
	.long	.LASF1633
	.byte	0x1
	.byte	0xe9
	.long	0x3b56
	.uleb128 0x9
	.byte	0x3
	.quad	current_binding_level
	.uleb128 0x46
	.long	.LASF1634
	.byte	0x1
	.byte	0xed
	.long	0x3b56
	.uleb128 0x9
	.byte	0x3
	.quad	free_binding_level
	.uleb128 0x46
	.long	.LASF1635
	.byte	0x1
	.byte	0xf3
	.long	0x3b56
	.uleb128 0x9
	.byte	0x3
	.quad	global_binding_level
	.uleb128 0x46
	.long	.LASF1636
	.byte	0x1
	.byte	0xf7
	.long	0x3aad
	.uleb128 0x9
	.byte	0x3
	.quad	clear_binding_level
	.uleb128 0x46
	.long	.LASF1637
	.byte	0x1
	.byte	0xfd
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	keep_next_level_flag
	.uleb128 0x31
	.long	.LASF1638
	.byte	0x1
	.value	0x102
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	keep_next_if_subblocks
	.uleb128 0x31
	.long	.LASF1639
	.byte	0x1
	.value	0x10a
	.long	0x3b56
	.uleb128 0x9
	.byte	0x3
	.quad	label_level_chain
	.uleb128 0x31
	.long	.LASF1640
	.byte	0x1
	.value	0x1ca
	.long	0x3b5c
	.uleb128 0x9
	.byte	0x3
	.quad	deprecated_state
	.uleb128 0x47
	.long	.LASF1642
	.byte	0x5
	.byte	0x62
	.long	0x1e3
	.uleb128 0x14
	.long	0x2c0
	.long	0x689b
	.uleb128 0x15
	.long	0x1ea
	.byte	0xff
	.byte	0
	.uleb128 0x47
	.long	.LASF1643
	.byte	0x4
	.byte	0x31
	.long	0x688b
	.uleb128 0x14
	.long	0x123
	.long	0x68b6
	.uleb128 0x15
	.long	0x1ea
	.byte	0x32
	.byte	0
	.uleb128 0x44
	.long	.LASF1644
	.byte	0x4
	.value	0x79b
	.long	0x68a6
	.uleb128 0x14
	.long	0x123
	.long	0x68d2
	.uleb128 0x15
	.long	0x1ea
	.byte	0xa
	.byte	0
	.uleb128 0x44
	.long	.LASF1645
	.byte	0x4
	.value	0x7f8
	.long	0x68c2
	.uleb128 0x14
	.long	0x123
	.long	0x68ee
	.uleb128 0x15
	.long	0x1ea
	.byte	0x5
	.byte	0
	.uleb128 0x44
	.long	.LASF1646
	.byte	0x4
	.value	0x97c
	.long	0x68de
	.uleb128 0x44
	.long	.LASF1647
	.byte	0x4
	.value	0xa87
	.long	0x4bd
	.uleb128 0x44
	.long	.LASF1648
	.byte	0x4
	.value	0xa8a
	.long	0x1e3
	.uleb128 0x44
	.long	.LASF1649
	.byte	0x4
	.value	0xa8f
	.long	0x1e3
	.uleb128 0x44
	.long	.LASF1650
	.byte	0x4
	.value	0xa94
	.long	0x1e3
	.uleb128 0x44
	.long	.LASF1651
	.byte	0x4
	.value	0xa98
	.long	0x123
	.uleb128 0x44
	.long	.LASF1652
	.byte	0x4
	.value	0xaae
	.long	0x3778
	.uleb128 0x44
	.long	.LASF1653
	.byte	0x4
	.value	0xb5b
	.long	0x3778
	.uleb128 0x47
	.long	.LASF1654
	.byte	0x14
	.byte	0x28
	.long	0x1e3
	.uleb128 0x47
	.long	.LASF1655
	.byte	0x15
	.byte	0x5b
	.long	0x1e3
	.uleb128 0x47
	.long	.LASF1656
	.byte	0x15
	.byte	0x64
	.long	0x1e3
	.uleb128 0x47
	.long	.LASF1657
	.byte	0x15
	.byte	0x73
	.long	0x1e3
	.uleb128 0x48
	.long	.LASF1658
	.byte	0x1
	.value	0x1aa
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_unknown_pragmas
	.uleb128 0x47
	.long	.LASF1659
	.byte	0x15
	.byte	0x7f
	.long	0x1e3
	.uleb128 0x47
	.long	.LASF1660
	.byte	0x15
	.byte	0x83
	.long	0x1e3
	.uleb128 0x47
	.long	.LASF1661
	.byte	0x15
	.byte	0x88
	.long	0x1e3
	.uleb128 0x47
	.long	.LASF1662
	.byte	0x15
	.byte	0x8c
	.long	0x1e3
	.uleb128 0x47
	.long	.LASF1663
	.byte	0x15
	.byte	0x98
	.long	0x1e3
	.uleb128 0x47
	.long	.LASF1664
	.byte	0x15
	.byte	0x99
	.long	0x26f
	.uleb128 0x47
	.long	.LASF1665
	.byte	0x15
	.byte	0xcc
	.long	0x1e3
	.uleb128 0x47
	.long	.LASF1666
	.byte	0x15
	.byte	0xd1
	.long	0x1e3
	.uleb128 0x47
	.long	.LASF1667
	.byte	0x15
	.byte	0xdc
	.long	0x1e3
	.uleb128 0x47
	.long	.LASF1668
	.byte	0x15
	.byte	0xe0
	.long	0x1e3
	.uleb128 0x44
	.long	.LASF1669
	.byte	0x15
	.value	0x12f
	.long	0x1e3
	.uleb128 0x44
	.long	.LASF1670
	.byte	0x15
	.value	0x186
	.long	0x1e3
	.uleb128 0x44
	.long	.LASF1671
	.byte	0x15
	.value	0x18a
	.long	0x1e3
	.uleb128 0x44
	.long	.LASF1672
	.byte	0x15
	.value	0x1c3
	.long	0x1e3
	.uleb128 0x44
	.long	.LASF1673
	.byte	0x15
	.value	0x1da
	.long	0x1e3
	.uleb128 0x44
	.long	.LASF1674
	.byte	0x15
	.value	0x204
	.long	0x1e3
	.uleb128 0x44
	.long	.LASF1675
	.byte	0xe
	.value	0x1e4
	.long	0x192b
	.uleb128 0x47
	.long	.LASF1676
	.byte	0xf
	.byte	0x81
	.long	0x1f19
	.uleb128 0x14
	.long	0x123
	.long	0x6a6d
	.uleb128 0x15
	.long	0x1ea
	.byte	0x1f
	.byte	0
	.uleb128 0x47
	.long	.LASF1677
	.byte	0xf
	.byte	0xea
	.long	0x6a5d
	.uleb128 0x44
	.long	.LASF1678
	.byte	0xf
	.value	0x143
	.long	0x34de
	.uleb128 0x48
	.long	.LASF1679
	.byte	0x1
	.value	0x15e
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_const_strings
	.uleb128 0x44
	.long	.LASF1680
	.byte	0xf
	.value	0x17e
	.long	0x1e3
	.uleb128 0x44
	.long	.LASF1681
	.byte	0xf
	.value	0x182
	.long	0x1e3
	.uleb128 0x44
	.long	.LASF1682
	.byte	0xf
	.value	0x18a
	.long	0x1e3
	.uleb128 0x44
	.long	.LASF1683
	.byte	0xf
	.value	0x18e
	.long	0x1e3
	.uleb128 0x44
	.long	.LASF1684
	.byte	0xf
	.value	0x192
	.long	0x1e3
	.uleb128 0x44
	.long	.LASF1685
	.byte	0xf
	.value	0x196
	.long	0x1e3
	.uleb128 0x44
	.long	.LASF1686
	.byte	0xf
	.value	0x19a
	.long	0x1e3
	.uleb128 0x48
	.long	.LASF1687
	.byte	0x1
	.value	0x16d
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_missing_format_attribute
	.uleb128 0x48
	.long	.LASF1688
	.byte	0x1
	.value	0x176
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_pointer_arith
	.uleb128 0x44
	.long	.LASF1689
	.byte	0xf
	.value	0x1a6
	.long	0x1e3
	.uleb128 0x48
	.long	.LASF1690
	.byte	0x1
	.value	0x131
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_traditional
	.uleb128 0x48
	.long	.LASF1691
	.byte	0x1
	.value	0x135
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_isoc94
	.uleb128 0x48
	.long	.LASF1692
	.byte	0x1
	.value	0x139
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_isoc99
	.uleb128 0x48
	.long	.LASF1693
	.byte	0x1
	.value	0x13d
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_hosted
	.uleb128 0x48
	.long	.LASF1694
	.byte	0x1
	.value	0x142
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_noniso_default_format_attributes
	.uleb128 0x44
	.long	.LASF1695
	.byte	0xf
	.value	0x1bf
	.long	0x1e3
	.uleb128 0x44
	.long	.LASF1696
	.byte	0xf
	.value	0x1c4
	.long	0x1e3
	.uleb128 0x48
	.long	.LASF1697
	.byte	0x1
	.value	0x19e
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_parentheses
	.uleb128 0x48
	.long	.LASF1698
	.byte	0x1
	.value	0x19a
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_conversion
	.uleb128 0x48
	.long	.LASF1699
	.byte	0x1
	.value	0x153
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_long_long
	.uleb128 0x23
	.long	0x123
	.long	0x6c02
	.uleb128 0x24
	.long	0x123
	.uleb128 0x24
	.long	0x1e3
	.byte	0
	.uleb128 0x44
	.long	.LASF1700
	.byte	0xf
	.value	0x1ec
	.long	0x6c0e
	.uleb128 0x3
	.byte	0x8
	.long	0x6bee
	.uleb128 0x49
	.long	.LASF1701
	.byte	0x1
	.byte	0x83
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	current_function_returns_value
	.uleb128 0x49
	.long	.LASF1702
	.byte	0x1
	.byte	0x88
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	current_function_returns_null
	.uleb128 0x49
	.long	.LASF1703
	.byte	0x1
	.byte	0x8d
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	current_function_returns_abnormally
	.uleb128 0x48
	.long	.LASF1704
	.byte	0x1
	.value	0x1be
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	dollars_in_ident
	.uleb128 0x48
	.long	.LASF1705
	.byte	0x1
	.value	0x129
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_cond_mismatch
	.uleb128 0x48
	.long	.LASF1706
	.byte	0x1
	.value	0x12d
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_no_asm
	.uleb128 0x48
	.long	.LASF1707
	.byte	0x1
	.value	0x17b
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_strict_prototypes
	.uleb128 0x48
	.long	.LASF1708
	.byte	0x1
	.value	0x18a
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_redundant_decls
	.uleb128 0x48
	.long	.LASF1709
	.byte	0x1
	.value	0x192
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_nested_externs
	.uleb128 0x48
	.long	.LASF1710
	.byte	0x1
	.value	0x163
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_cast_qual
	.uleb128 0x48
	.long	.LASF1711
	.byte	0x1
	.value	0x169
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_bad_function_cast
	.uleb128 0x48
	.long	.LASF1712
	.byte	0x1
	.value	0x171
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_traditional
	.uleb128 0x48
	.long	.LASF1713
	.byte	0x1
	.value	0x196
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_char_subscripts
	.uleb128 0x48
	.long	.LASF1714
	.byte	0x1
	.value	0x1a6
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_main
	.uleb128 0x48
	.long	.LASF1715
	.byte	0x1
	.value	0x146
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_allow_single_precision
	.uleb128 0x48
	.long	.LASF1716
	.byte	0x1
	.value	0x1a2
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_missing_braces
	.uleb128 0x48
	.long	.LASF1717
	.byte	0x1
	.value	0x1af
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_sign_compare
	.uleb128 0x48
	.long	.LASF1718
	.byte	0x1
	.value	0x1b3
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_float_equal
	.uleb128 0x48
	.long	.LASF1719
	.byte	0x1
	.value	0x1b7
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_multichar
	.uleb128 0x48
	.long	.LASF1720
	.byte	0x1
	.value	0x158
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	mesg_implicit_function_declaration
	.uleb128 0x48
	.long	.LASF1721
	.byte	0x1
	.value	0x10e
	.long	0x123
	.uleb128 0x9
	.byte	0x3
	.quad	static_ctors
	.uleb128 0x48
	.long	.LASF1722
	.byte	0x1
	.value	0x10e
	.long	0x123
	.uleb128 0x9
	.byte	0x3
	.quad	static_dtors
	.uleb128 0x47
	.long	.LASF1723
	.byte	0x16
	.byte	0x21
	.long	0x1052
	.uleb128 0x47
	.long	.LASF1724
	.byte	0x17
	.byte	0x2f
	.long	0x3370
	.uleb128 0x47
	.long	.LASF1725
	.byte	0x12
	.byte	0xc1
	.long	0x3654
	.uleb128 0x47
	.long	.LASF1726
	.byte	0x13
	.byte	0x6a
	.long	0x6e21
	.uleb128 0x3
	.byte	0x8
	.long	0x37fc
	.uleb128 0x49
	.long	.LASF1727
	.byte	0x1
	.byte	0x40
	.long	0x123
	.uleb128 0x9
	.byte	0x3
	.quad	pending_invalid_xref
	.uleb128 0x49
	.long	.LASF1728
	.byte	0x1
	.byte	0x42
	.long	0x4bd
	.uleb128 0x9
	.byte	0x3
	.quad	pending_invalid_xref_file
	.uleb128 0x49
	.long	.LASF1729
	.byte	0x1
	.byte	0x43
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	pending_invalid_xref_line
	.uleb128 0x48
	.long	.LASF1730
	.byte	0x1
	.value	0x14a
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_signed_bitfields
	.uleb128 0x48
	.long	.LASF1731
	.byte	0x1
	.value	0x14b
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	explicit_flag_signed_bitfields
	.uleb128 0x48
	.long	.LASF1732
	.byte	0x1
	.value	0x14f
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_implicit_int
	.uleb128 0x48
	.long	.LASF1733
	.byte	0x1
	.value	0x180
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_missing_prototypes
	.uleb128 0x48
	.long	.LASF1734
	.byte	0x1
	.value	0x185
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_missing_declarations
	.uleb128 0x44
	.long	.LASF1641
	.byte	0x1
	.value	0xf63
	.long	0x1e3
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x4
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
	.uleb128 0x2a
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x49
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
	.quad	.LBB32-.Ltext0
	.quad	.LBE32-.Ltext0
	.quad	.LBB33-.Ltext0
	.quad	.LBE33-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB57-.Ltext0
	.quad	.LBE57-.Ltext0
	.quad	.LBB58-.Ltext0
	.quad	.LBE58-.Ltext0
	.quad	.LBB59-.Ltext0
	.quad	.LBE59-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF399:
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
.LASF655:
	.string	"TI_UV16QI_TYPE"
.LASF320:
	.string	"BUILT_IN_CONJ"
.LASF544:
	.string	"profile_label_no"
.LASF1579:
	.string	"build_enumerator"
.LASF846:
	.string	"rtstr"
.LASF670:
	.string	"itk_unsigned_char"
.LASF1415:
	.string	"newdecl"
.LASF213:
	.string	"WITH_CLEANUP_EXPR"
.LASF203:
	.string	"VTABLE_REF"
.LASF1489:
	.string	"start_decl"
.LASF1075:
	.string	"RID_ATTRIBUTE"
.LASF860:
	.string	"NOTE_INSN_DELETED"
.LASF1448:
	.string	"getdecls"
.LASF1340:
	.string	"TV_DBR_SCHED"
.LASF1409:
	.string	"insert_block"
.LASF971:
	.string	"CPP_MULT_EQ"
.LASF1029:
	.string	"RID_REGISTER"
.LASF366:
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
.LASF1589:
	.string	"specparms"
.LASF78:
	.string	"_unused2"
.LASF775:
	.string	"UMOD"
.LASF829:
	.string	"min_align"
.LASF290:
	.string	"POSTINCREMENT_EXPR"
.LASF1652:
	.string	"incomplete_decl_finalize_hook"
.LASF1624:
	.string	"last_function_parm_tags"
.LASF316:
	.string	"BUILT_IN_FABSF"
.LASF226:
	.string	"FLOOR_MOD_EXPR"
.LASF64:
	.string	"_fileno"
.LASF1568:
	.string	"fieldlistp"
.LASF1525:
	.string	"bitfield"
.LASF317:
	.string	"BUILT_IN_FABSL"
.LASF1225:
	.string	"varray_data_tag"
.LASF1184:
	.string	"x_last_expr_filename"
.LASF1566:
	.string	"saw_named_field"
.LASF1543:
	.string	"promoted_type"
.LASF1023:
	.string	"answer"
.LASF901:
	.string	"first"
.LASF1191:
	.string	"SRCLOC"
.LASF1407:
	.string	"block_previously_created"
.LASF1610:
	.string	"lang_mark_tree"
.LASF662:
	.string	"TI_V2SI_TYPE"
.LASF538:
	.string	"inlinable"
.LASF570:
	.string	"uses_const_pool"
.LASF1310:
	.string	"TV_CLEANUP_CFG"
.LASF1350:
	.string	"TV_REST_OF_COMPILATION"
.LASF683:
	.string	"decl_required"
.LASF623:
	.string	"TI_UINTSI_TYPE"
.LASF1135:
	.string	"RID_AT_SELECTOR"
.LASF185:
	.string	"COMPLEX_CST"
.LASF466:
	.string	"tree_type"
.LASF243:
	.string	"RROTATE_EXPR"
.LASF279:
	.string	"ADDR_EXPR"
.LASF899:
	.string	"next"
.LASF26:
	.string	"block"
.LASF1000:
	.string	"CPP_WCHAR"
.LASF1437:
	.string	"implicitly_declare"
.LASF687:
	.string	"_Bool"
.LASF1213:
	.string	"COMPOUND_LITERAL_EXPR"
.LASF1272:
	.string	"attribute_table"
.LASF1637:
	.string	"keep_next_level_flag"
.LASF845:
	.string	"rtuint"
.LASF1419:
	.string	"new_is_definition"
.LASF1468:
	.string	"builtin_function"
.LASF1718:
	.string	"warn_float_equal"
.LASF597:
	.string	"pure_flag"
.LASF1648:
	.string	"lineno"
.LASF849:
	.string	"rt_cselib"
.LASF719:
	.string	"DEFINE_PEEPHOLE2"
.LASF12:
	.string	"rtvec_def"
.LASF543:
	.string	"inl_max_label_num"
.LASF268:
	.string	"IN_EXPR"
.LASF779:
	.string	"LSHIFTRT"
.LASF1480:
	.string	"build_array_declarator"
.LASF1216:
	.string	"lang_identifier"
.LASF1266:
	.string	"reorder"
.LASF16:
	.string	"common"
.LASF1410:
	.string	"set_block"
.LASF400:
	.string	"BUILT_IN_EH_RETURN"
.LASF713:
	.string	"MATCH_PAR_DUP"
.LASF69:
	.string	"_shortbuf"
.LASF1737:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF1344:
	.string	"TV_TO_SSA"
.LASF774:
	.string	"UDIV"
.LASF10:
	.string	"rtvec"
.LASF622:
	.string	"TI_UINTHI_TYPE"
.LASF1217:
	.string	"ignore"
.LASF1387:
	.string	"iso_1990"
.LASF251:
	.string	"TRUTH_AND_EXPR"
.LASF1588:
	.string	"fndecl"
.LASF560:
	.string	"contains_functions"
.LASF339:
	.string	"BUILT_IN_STRCPY"
.LASF1644:
	.string	"global_trees"
.LASF1595:
	.string	"others"
.LASF975:
	.string	"CPP_OR_EQ"
.LASF707:
	.string	"MATCH_OPERAND"
.LASF1210:
	.string	"FILE_STMT"
.LASF1090:
	.string	"RID_WCHAR"
.LASF983:
	.string	"CPP_OPEN_SQUARE"
.LASF642:
	.string	"TI_VOID_TYPE"
.LASF402:
	.string	"BUILT_IN_VARARGS_START"
.LASF1575:
	.string	"maxnode"
.LASF443:
	.string	"imag"
.LASF1501:
	.string	"clear_parm_order"
.LASF691:
	.string	"ATTR_FLAG_ARRAY_NEXT"
.LASF757:
	.string	"CONST_STRING"
.LASF939:
	.string	"cpp_macro"
.LASF295:
	.string	"LABEL_EXPR"
.LASF796:
	.string	"UNLE"
.LASF834:
	.string	"max_after_base"
.LASF1702:
	.string	"current_function_returns_null"
.LASF442:
	.string	"real"
.LASF629:
	.string	"TI_NULL_POINTER"
.LASF797:
	.string	"UNLT"
.LASF1315:
	.string	"TV_PARSE"
.LASF175:
	.string	"FILE_TYPE"
.LASF464:
	.string	"fragment_chain"
.LASF1402:
	.string	"poplevel"
.LASF438:
	.string	"tree_string"
.LASF1017:
	.string	"BT_STDC"
.LASF473:
	.string	"no_force_blk_flag"
.LASF1363:
	.string	"blocks"
.LASF1091:
	.string	"RID_CLASS"
.LASF463:
	.string	"fragment_origin"
.LASF927:
	.string	"initial_value_struct"
.LASF658:
	.string	"TI_V4SI_TYPE"
.LASF1351:
	.string	"TIMEVAR_LAST"
.LASF379:
	.string	"BUILT_IN_FWRITE"
.LASF1322:
	.string	"TV_LOOP"
.LASF973:
	.string	"CPP_MOD_EQ"
.LASF114:
	.string	"CTImode"
.LASF50:
	.string	"_flags"
.LASF1077:
	.string	"RID_EXTENSION"
.LASF1381:
	.string	"returns_abnormally"
.LASF253:
	.string	"TRUTH_XOR_EXPR"
.LASF589:
	.string	"static_dtor_flag"
.LASF439:
	.string	"length"
.LASF215:
	.string	"PLACEHOLDER_EXPR"
.LASF1024:
	.string	"RID_STATIC"
.LASF493:
	.string	"lang_type"
.LASF1133:
	.string	"RID_AT_PUBLIC"
.LASF1490:
	.string	"declarator"
.LASF612:
	.string	"base"
.LASF45:
	.string	"__off_t"
.LASF1670:
	.string	"flag_syntax_only"
.LASF1394:
	.string	"global_bindings_p"
.LASF1328:
	.string	"TV_REGMOVE"
.LASF234:
	.string	"FLOAT_EXPR"
.LASF580:
	.string	"inline_flag"
.LASF1488:
	.string	"groktypename_in_parm_context"
.LASF879:
	.string	"NOTE_INSN_BASIC_BLOCK"
.LASF632:
	.string	"TI_BITSIZE_ZERO"
.LASF193:
	.string	"PARM_DECL"
.LASF1672:
	.string	"flag_pedantic_errors"
.LASF112:
	.string	"CSImode"
.LASF1695:
	.string	"flag_no_builtin"
.LASF358:
	.string	"BUILT_IN_COSL"
.LASF818:
	.string	"VEC_MERGE"
.LASF873:
	.string	"NOTE_INSN_EH_REGION_BEG"
.LASF541:
	.string	"original_decl_initial"
.LASF1085:
	.string	"RID_TYPES_COMPATIBLE_P"
.LASF1428:
	.string	"write_olddecl"
.LASF1248:
	.string	"aligned_op"
.LASF284:
	.string	"CONJ_EXPR"
.LASF1371:
	.string	"n_incomplete"
.LASF70:
	.string	"_lock"
.LASF1498:
	.string	"maybe_build_cleanup"
.LASF1227:
	.string	"uhint"
.LASF751:
	.string	"RETURN"
.LASF329:
	.string	"BUILT_IN_BZERO"
.LASF1089:
	.string	"RID_BOOL"
.LASF1456:
	.string	"keep_next_level"
.LASF300:
	.string	"LABELED_BLOCK_EXPR"
.LASF1336:
	.string	"TV_PEEPHOLE2"
.LASF1228:
	.string	"generic"
.LASF1144:
	.string	"RID_LAST_PQ"
.LASF362:
	.string	"BUILT_IN_ARGS_INFO"
.LASF947:
	.string	"CPP_MULT"
.LASF14:
	.string	"elem"
.LASF693:
	.string	"ATTR_FLAG_BUILT_IN"
.LASF1200:
	.string	"WHILE_STMT"
.LASF1578:
	.string	"narrowest"
.LASF149:
	.string	"MODE_FLOAT"
.LASF335:
	.string	"BUILT_IN_MEMCMP"
.LASF377:
	.string	"BUILT_IN_FPUTC"
.LASF369:
	.string	"BUILT_IN_RETURN"
.LASF1107:
	.string	"RID_TYPENAME"
.LASF417:
	.string	"unused_0"
.LASF433:
	.string	"unused_1"
.LASF620:
	.string	"TI_INTTI_TYPE"
.LASF378:
	.string	"BUILT_IN_FPUTS"
.LASF1602:
	.string	"nested_p"
.LASF301:
	.string	"EXIT_BLOCK_EXPR"
.LASF838:
	.string	"alias"
.LASF1173:
	.string	"CTI_FUNCTION_NAME_DECL"
.LASF835:
	.string	"offset_unsigned"
.LASF941:
	.string	"CPP_EQ"
.LASF1007:
	.string	"CPP_PADDING"
.LASF118:
	.string	"V2SImode"
.LASF1348:
	.string	"TV_FINAL"
.LASF384:
	.string	"BUILT_IN_FPUTC_UNLOCKED"
.LASF567:
	.string	"stdarg"
.LASF1686:
	.string	"warn_sequence_point"
.LASF528:
	.string	"x_trampoline_list"
.LASF172:
	.string	"OFFSET_TYPE"
.LASF639:
	.string	"TI_FLOAT_TYPE"
.LASF19:
	.string	"vector"
.LASF1546:
	.string	"extern_ref"
.LASF299:
	.string	"LOOP_EXPR"
.LASF738:
	.string	"CODE_LABEL"
.LASF385:
	.string	"BUILT_IN_FPUTS_UNLOCKED"
.LASF113:
	.string	"CDImode"
.LASF744:
	.string	"UNSPEC"
.LASF291:
	.string	"VA_ARG_EXPR"
.LASF351:
	.string	"BUILT_IN_SIN"
.LASF410:
	.string	"side_effects_flag"
.LASF645:
	.string	"TI_PTRDIFF_TYPE"
.LASF866:
	.string	"NOTE_INSN_LOOP_VTOP"
.LASF740:
	.string	"COND_EXEC"
.LASF754:
	.string	"CONST_INT"
.LASF750:
	.string	"CALL"
.LASF1222:
	.string	"error_locus"
.LASF35:
	.string	"maybe_vaarg"
.LASF549:
	.string	"epilogue_delay_list"
.LASF599:
	.string	"uninlinable"
.LASF1676:
	.string	"ridpointers"
.LASF208:
	.string	"TARGET_EXPR"
.LASF1294:
	.string	"source_line"
.LASF1325:
	.string	"TV_FLOW"
.LASF120:
	.string	"V4QImode"
.LASF1683:
	.string	"warn_format_extra_args"
.LASF729:
	.string	"ATTR"
.LASF398:
	.string	"BUILT_IN_FROB_RETURN_ADDR"
.LASF1580:
	.string	"start_function"
.LASF1431:
	.string	"warn_if_shadowing"
.LASF1302:
	.string	"deferred_inline_function"
.LASF847:
	.string	"rttype"
.LASF1258:
	.string	"constructor"
.LASF1254:
	.string	"function_epilogue"
.LASF1704:
	.string	"dollars_in_ident"
.LASF1051:
	.string	"RID_INT"
.LASF1078:
	.string	"RID_IMAGPART"
.LASF1654:
	.string	"flag_inline_trees"
.LASF453:
	.string	"complexity"
.LASF1559:
	.string	"xref_tag"
.LASF1691:
	.string	"flag_isoc94"
.LASF890:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF467:
	.string	"values"
.LASF435:
	.string	"tree_int_cst"
.LASF1692:
	.string	"flag_isoc99"
.LASF967:
	.string	"CPP_GREATER_EQ"
.LASF1323:
	.string	"TV_CSE2"
.LASF1093:
	.string	"RID_PRIVATE"
.LASF1020:
	.string	"answers"
.LASF354:
	.string	"BUILT_IN_SINF"
.LASF119:
	.string	"V2DImode"
.LASF930:
	.string	"language_function"
.LASF357:
	.string	"BUILT_IN_SINL"
.LASF414:
	.string	"readonly_flag"
.LASF1123:
	.string	"RID_BITOR"
.LASF229:
	.string	"EXACT_DIV_EXPR"
.LASF1242:
	.string	"varray_type"
.LASF840:
	.string	"mem_attrs"
.LASF56:
	.string	"_IO_write_end"
.LASF722:
	.string	"DEFINE_DELAY"
.LASF772:
	.string	"MINUS"
.LASF525:
	.string	"x_clobber_return_insn"
.LASF1027:
	.string	"RID_CONST"
.LASF1459:
	.string	"lookup_name"
.LASF1511:
	.string	"spec"
.LASF1557:
	.string	"order"
.LASF1368:
	.string	"subblocks_tag_transparent"
.LASF1110:
	.string	"RID_CONSTCAST"
.LASF334:
	.string	"BUILT_IN_MEMCPY"
.LASF196:
	.string	"NAMESPACE_DECL"
.LASF1041:
	.string	"RID_VIRTUAL"
.LASF762:
	.string	"STRICT_LOW_PART"
.LASF1364:
	.string	"this_block"
.LASF1565:
	.string	"toplevel"
.LASF1104:
	.string	"RID_THROW"
.LASF954:
	.string	"CPP_LSHIFT"
.LASF915:
	.string	"x_regno_reg_rtx"
.LASF1667:
	.string	"flag_signed_char"
.LASF201:
	.string	"ARRAY_REF"
.LASF1494:
	.string	"was_incomplete"
.LASF1472:
	.string	"insert_default_attributes"
.LASF1574:
	.string	"minnode"
.LASF1732:
	.string	"warn_implicit_int"
.LASF886:
	.string	"GR_FRAME_POINTER"
.LASF409:
	.string	"chain"
.LASF800:
	.string	"ZERO_EXTEND"
.LASF1198:
	.string	"IF_STMT"
.LASF1349:
	.string	"TV_SYMOUT"
.LASF363:
	.string	"BUILT_IN_CONSTANT_P"
.LASF803:
	.string	"FLOAT_TRUNCATE"
.LASF1010:
	.string	"builtin_type"
.LASF922:
	.string	"x_forced_labels"
.LASF389:
	.string	"BUILT_IN_ISGREATEREQUAL"
.LASF395:
	.string	"BUILT_IN_DWARF_CFA"
.LASF181:
	.string	"FUNCTION_TYPE"
.LASF1482:
	.string	"static_p"
.LASF509:
	.string	"internal_arg_pointer"
.LASF574:
	.string	"tree_decl"
.LASF1252:
	.string	"function_end_prologue"
.LASF883:
	.string	"GR_PC"
.LASF1483:
	.string	"vla_unspec_p"
.LASF1537:
	.string	"index_type"
.LASF1006:
	.string	"CPP_MACRO_ARG"
.LASF129:
	.string	"V2SFmode"
.LASF1236:
	.string	"varray_data"
.LASF929:
	.string	"machine_function"
.LASF804:
	.string	"FLOAT"
.LASF961:
	.string	"CPP_COLON"
.LASF1255:
	.string	"named_section"
.LASF145:
	.string	"machine_mode"
.LASF1176:
	.string	"CTI_SAVED_FUNCTION_NAME_DECLS"
.LASF1345:
	.string	"TV_SSA_CCP"
.LASF1136:
	.string	"RID_AT_INTERFACE"
.LASF180:
	.string	"QUAL_UNION_TYPE"
.LASF1593:
	.string	"prototype"
.LASF1282:
	.string	"have_ctors_dtors"
.LASF1249:
	.string	"unaligned_op"
.LASF1044:
	.string	"RID_MUTABLE"
.LASF1496:
	.string	"do_default"
.LASF1053:
	.string	"RID_FLOAT"
.LASF852:
	.string	"rtmem"
.LASF537:
	.string	"fixup_var_refs_queue"
.LASF1723:
	.string	"parse_in"
.LASF1534:
	.string	"inner_decl"
.LASF1194:
	.string	"ALIGNOF_EXPR"
.LASF1164:
	.string	"CTI_BOOLEAN_FALSE"
.LASF813:
	.string	"RANGE_REG"
.LASF850:
	.string	"rtbit"
.LASF296:
	.string	"GOTO_EXPR"
.LASF3:
	.string	"call"
.LASF91:
	.string	"TImode"
.LASF789:
	.string	"PRE_MODIFY"
.LASF1452:
	.string	"lookup_tag"
.LASF1384:
	.string	"argc"
.LASF1166:
	.string	"CTI_C_BOOL_TRUE"
.LASF1663:
	.string	"warn_larger_than"
.LASF207:
	.string	"INIT_EXPR"
.LASF1540:
	.string	"erred"
.LASF552:
	.string	"returns_pointer"
.LASF242:
	.string	"LROTATE_EXPR"
.LASF1171:
	.string	"CTI_G77_LONGINT_TYPE"
.LASF436:
	.string	"realvaluetype"
.LASF802:
	.string	"FLOAT_EXTEND"
.LASF332:
	.string	"BUILT_IN_INDEX"
.LASF1689:
	.string	"warn_div_by_zero"
.LASF1002:
	.string	"CPP_STRING"
.LASF273:
	.string	"NOP_EXPR"
.LASF497:
	.string	"stmt"
.LASF6:
	.string	"in_struct"
.LASF1656:
	.string	"warn_unused_label"
.LASF861:
	.string	"NOTE_INSN_BLOCK_BEG"
.LASF1397:
	.string	"definition_flag"
.LASF89:
	.string	"SImode"
.LASF746:
	.string	"ADDR_VEC"
.LASF996:
	.string	"CPP_ATSIGN"
.LASF925:
	.string	"stmt_status"
.LASF1730:
	.string	"flag_signed_bitfields"
.LASF130:
	.string	"V2DFmode"
.LASF227:
	.string	"ROUND_MOD_EXPR"
.LASF828:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF987:
	.string	"CPP_SEMICOLON"
.LASF423:
	.string	"protected_flag"
.LASF1662:
	.string	"warn_missing_noreturn"
.LASF24:
	.string	"type"
.LASF34:
	.string	"sse_regno"
.LASF1705:
	.string	"flag_cond_mismatch"
.LASF545:
	.string	"machine"
.LASF1011:
	.string	"BT_SPECLINE"
.LASF223:
	.string	"ROUND_DIV_EXPR"
.LASF1518:
	.string	"explicit_int"
.LASF1301:
	.string	"global_decl"
.LASF765:
	.string	"SYMBOL_REF"
.LASF1612:
	.string	"current_scope_stmt_stack"
.LASF859:
	.string	"NOTE_INSN_BIAS"
.LASF1418:
	.string	"types_match"
.LASF1296:
	.string	"end_prologue"
.LASF117:
	.string	"V2HImode"
.LASF611:
	.string	"lang_decl"
.LASF238:
	.string	"ABS_EXPR"
.LASF1598:
	.string	"nested"
.LASF881:
	.string	"NOTE_INSN_MAX"
.LASF920:
	.string	"x_saveregs_value"
.LASF959:
	.string	"CPP_OR_OR"
.LASF1373:
	.string	"deprecated_states"
.LASF458:
	.string	"block_num"
.LASF1163:
	.string	"CTI_BOOLEAN_TRUE"
.LASF718:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF248:
	.string	"BIT_NOT_EXPR"
.LASF1560:
	.string	"start_struct"
.LASF798:
	.string	"LTGT"
.LASF452:
	.string	"tree_exp"
.LASF898:
	.string	"unsignedp"
.LASF1146:
	.string	"CTI_WCHAR_TYPE"
.LASF1005:
	.string	"CPP_COMMENT"
.LASF810:
	.string	"HIGH"
.LASF1400:
	.string	"newlevel"
.LASF767:
	.string	"QUEUED"
.LASF1632:
	.string	"current_extern_inline"
.LASF1275:
	.string	"insert_attributes"
.LASF1:
	.string	"mode"
.LASF90:
	.string	"DImode"
.LASF250:
	.string	"TRUTH_ORIF_EXPR"
.LASF312:
	.string	"BUILT_IN_ALLOCA"
.LASF1646:
	.string	"sizetype_tab"
.LASF1493:
	.string	"asmspec_tree"
.LASF1316:
	.string	"TV_EXPAND"
.LASF962:
	.string	"CPP_COMMA"
.LASF1224:
	.string	"const_equiv_data"
.LASF511:
	.string	"hard_reg_initial_vals"
.LASF1270:
	.string	"merge_decl_attributes"
.LASF918:
	.string	"x_inhibit_defer_pop"
.LASF676:
	.string	"itk_unsigned_long"
.LASF63:
	.string	"_chain"
.LASF684:
	.string	"type_required"
.LASF1190:
	.string	"C_DUMMY_TREE_CODE"
.LASF1362:
	.string	"shadowed"
.LASF788:
	.string	"POST_INC"
.LASF1208:
	.string	"ASM_STMT"
.LASF212:
	.string	"METHOD_CALL_EXPR"
.LASF625:
	.string	"TI_UINTTI_TYPE"
.LASF1030:
	.string	"RID_TYPEDEF"
.LASF1609:
	.string	"copy_lang_decl"
.LASF588:
	.string	"static_ctor_flag"
.LASF1698:
	.string	"warn_conversion"
.LASF103:
	.string	"TFmode"
.LASF1311:
	.string	"TV_LIFE"
.LASF178:
	.string	"RECORD_TYPE"
.LASF41:
	.string	"unsigned char"
.LASF1638:
	.string	"keep_next_if_subblocks"
.LASF928:
	.string	"temp_slot"
.LASF1591:
	.string	"parmdecls"
.LASF415:
	.string	"unsigned_flag"
.LASF982:
	.string	"CPP_PASTE"
.LASF601:
	.string	"arguments"
.LASF510:
	.string	"cannot_inline"
.LASF1147:
	.string	"CTI_SIGNED_WCHAR_TYPE"
.LASF1491:
	.string	"initialized"
.LASF1738:
	.string	"_IO_lock_t"
.LASF1544:
	.string	"new_ptr_quals"
.LASF644:
	.string	"TI_CONST_PTR_TYPE"
.LASF492:
	.string	"lang_specific"
.LASF1305:
	.string	"float"
.LASF1470:
	.string	"class"
.LASF1149:
	.string	"CTI_WINT_TYPE"
.LASF1012:
	.string	"BT_DATE"
.LASF1641:
	.string	"var_labelno"
.LASF680:
	.string	"attribute_spec"
.LASF86:
	.string	"BImode"
.LASF491:
	.string	"alias_set"
.LASF100:
	.string	"SFmode"
.LASF1245:
	.string	"open_paren"
.LASF619:
	.string	"TI_INTDI_TYPE"
.LASF1435:
	.string	"element"
.LASF1307:
	.string	"TV_GC"
.LASF1083:
	.string	"RID_PTRVALUE"
.LASF499:
	.string	"emit"
.LASF1343:
	.string	"TV_REG_STACK"
.LASF1536:
	.string	"itype"
.LASF476:
	.string	"packed_flag"
.LASF244:
	.string	"BIT_IOR_EXPR"
.LASF313:
	.string	"BUILT_IN_ABS"
.LASF190:
	.string	"CONST_DECL"
.LASF437:
	.string	"tree_real_cst"
.LASF195:
	.string	"FIELD_DECL"
.LASF735:
	.string	"JUMP_INSN"
.LASF1346:
	.string	"TV_SSA_DCE"
.LASF956:
	.string	"CPP_MAX"
.LASF1399:
	.string	"pushlevel"
.LASF672:
	.string	"itk_unsigned_short"
.LASF1265:
	.string	"md_finish"
.LASF323:
	.string	"BUILT_IN_CREAL"
.LASF1726:
	.string	"debug_hooks"
.LASF1037:
	.string	"RID_BOUNDED"
.LASF153:
	.string	"MODE_COMPLEX_FLOAT"
.LASF1119:
	.string	"RID_OR_EQ"
.LASF851:
	.string	"rttree"
.LASF1446:
	.string	"define_label"
.LASF579:
	.string	"regdecl_flag"
.LASF1148:
	.string	"CTI_UNSIGNED_WCHAR_TYPE"
.LASF319:
	.string	"BUILT_IN_IMAXABS"
.LASF1042:
	.string	"RID_EXPLICIT"
.LASF169:
	.string	"BOOLEAN_TYPE"
.LASF328:
	.string	"BUILT_IN_CIMAGL"
.LASF1240:
	.string	"element_size"
.LASF1563:
	.string	"finish_struct"
.LASF1528:
	.string	"array_ptr_quals"
.LASF1130:
	.string	"RID_AT_DEFS"
.LASF858:
	.string	"insn_note"
.LASF1379:
	.string	"returns_value"
.LASF1201:
	.string	"DO_STMT"
.LASF877:
	.string	"NOTE_INSN_RANGE_END"
.LASF1403:
	.string	"reverse"
.LASF717:
	.string	"DEFINE_SPLIT"
.LASF968:
	.string	"CPP_LESS_EQ"
.LASF559:
	.string	"has_nonlocal_goto"
.LASF573:
	.string	"arg_pointer_save_area_init"
.LASF388:
	.string	"BUILT_IN_ISGREATER"
.LASF372:
	.string	"BUILT_IN_TRAP"
.LASF1622:
	.string	"enum_overflow"
.LASF957:
	.string	"CPP_COMPL"
.LASF958:
	.string	"CPP_AND_AND"
.LASF756:
	.string	"CONST_VECTOR"
.LASF276:
	.string	"SAVE_EXPR"
.LASF714:
	.string	"MATCH_INSN"
.LASF1065:
	.string	"RID_CASE"
.LASF434:
	.string	"high"
.LASF1285:
	.string	"init"
.LASF308:
	.string	"BUILT_IN_FRONTEND"
.LASF661:
	.string	"TI_V4HI_TYPE"
.LASF519:
	.string	"x_save_expr_regs"
.LASF1291:
	.string	"begin_block"
.LASF101:
	.string	"DFmode"
.LASF1734:
	.string	"warn_missing_declarations"
.LASF985:
	.string	"CPP_OPEN_BRACE"
.LASF1264:
	.string	"md_init"
.LASF1182:
	.string	"x_last_stmt"
.LASF39:
	.string	"size_t"
.LASF748:
	.string	"PREFETCH"
.LASF502:
	.string	"pops_args"
.LASF95:
	.string	"PSImode"
.LASF521:
	.string	"x_rtl_expr_chain"
.LASF338:
	.string	"BUILT_IN_STRNCAT"
.LASF1441:
	.string	"implicit_decl_warning"
.LASF548:
	.string	"language"
.LASF1076:
	.string	"RID_VA_ARG"
.LASF696:
	.string	"SSIZETYPE"
.LASF1628:
	.string	"current_function_prototype_line"
.LASF842:
	.string	"rtunion_def"
.LASF1707:
	.string	"warn_strict_prototypes"
.LASF188:
	.string	"FUNCTION_DECL"
.LASF1048:
	.string	"RID_BYCOPY"
.LASF1611:
	.string	"current_stmt_tree"
.LASF391:
	.string	"BUILT_IN_ISLESSEQUAL"
.LASF728:
	.string	"DEFINE_ATTR"
.LASF697:
	.string	"USIZETYPE"
.LASF209:
	.string	"COND_EXPR"
.LASF730:
	.string	"SET_ATTR"
.LASF109:
	.string	"TCmode"
.LASF513:
	.string	"x_nonlocal_labels"
.LASF1581:
	.string	"decl1"
.LASF1019:
	.string	"macro"
.LASF1731:
	.string	"explicit_flag_signed_bitfields"
.LASF230:
	.string	"FIX_TRUNC_EXPR"
.LASF805:
	.string	"UNSIGNED_FLOAT"
.LASF1122:
	.string	"RID_BITAND"
.LASF1479:
	.string	"attrs"
.LASF944:
	.string	"CPP_LESS"
.LASF854:
	.string	"cselib_val_struct"
.LASF1378:
	.string	"shadowed_labels"
.LASF1567:
	.string	"max_width"
.LASF880:
	.string	"NOTE_INSN_EXPECTED_VALUE"
.LASF55:
	.string	"_IO_write_ptr"
.LASF1701:
	.string	"current_function_returns_value"
.LASF166:
	.string	"COMPLEX_TYPE"
.LASF777:
	.string	"ROTATE"
.LASF950:
	.string	"CPP_AND"
.LASF373:
	.string	"BUILT_IN_PREFETCH"
.LASF1297:
	.string	"end_epilogue"
.LASF240:
	.string	"LSHIFT_EXPR"
.LASF801:
	.string	"TRUNCATE"
.LASF106:
	.string	"SCmode"
.LASF1253:
	.string	"function_begin_epilogue"
.LASF1326:
	.string	"TV_COMBINE"
.LASF1673:
	.string	"flag_no_common"
.LASF500:
	.string	"varasm"
.LASF1527:
	.string	"decl_attr"
.LASF667:
	.string	"integer_type_kind"
.LASF96:
	.string	"PDImode"
.LASF1106:
	.string	"RID_TRY"
.LASF1066:
	.string	"RID_DEFAULT"
.LASF183:
	.string	"INTEGER_CST"
.LASF191:
	.string	"TYPE_DECL"
.LASF636:
	.string	"TI_COMPLEX_FLOAT_TYPE"
.LASF1500:
	.string	"old_immediate_size_expand"
.LASF1230:
	.string	"bitmap"
.LASF542:
	.string	"inl_last_parm_insn"
.LASF1360:
	.string	"names"
.LASF871:
	.string	"NOTE_INSN_DELETED_LABEL"
.LASF1529:
	.string	"array_parm_static"
.LASF1447:
	.string	"line"
.LASF488:
	.string	"main_variant"
.LASF1405:
	.string	"link"
.LASF938:
	.string	"flags"
.LASF287:
	.string	"PREDECREMENT_EXPR"
.LASF628:
	.string	"TI_INTEGER_MINUS_ONE"
.LASF641:
	.string	"TI_LONG_DOUBLE_TYPE"
.LASF412:
	.string	"addressable_flag"
.LASF732:
	.string	"EQ_ATTR"
.LASF1117:
	.string	"RID_NOT_EQ"
.LASF1223:
	.string	"limbo_value"
.LASF1476:
	.string	"warned"
.LASF306:
	.string	"built_in_class"
.LASF1071:
	.string	"RID_SIZEOF"
.LASF638:
	.string	"TI_COMPLEX_LONG_DOUBLE_TYPE"
.LASF1727:
	.string	"pending_invalid_xref"
.LASF139:
	.string	"CCGOCmode"
.LASF763:
	.string	"CONCAT"
.LASF349:
	.string	"BUILT_IN_STRRCHR"
.LASF468:
	.string	"size"
.LASF657:
	.string	"TI_V16SF_TYPE"
.LASF831:
	.string	"min_after_vec"
.LASF637:
	.string	"TI_COMPLEX_DOUBLE_TYPE"
.LASF48:
	.string	"FILE"
.LASF1357:
	.string	"BITFIELD"
.LASF769:
	.string	"COND"
.LASF167:
	.string	"VECTOR_TYPE"
.LASF150:
	.string	"MODE_PARTIAL_INT"
.LASF529:
	.string	"x_parm_birth_insn"
.LASF494:
	.string	"elts"
.LASF531:
	.string	"x_max_parm_reg"
.LASF1719:
	.string	"warn_multichar"
.LASF330:
	.string	"BUILT_IN_BCMP"
.LASF1561:
	.string	"grokfield"
.LASF15:
	.string	"tree"
.LASF1018:
	.string	"BT_PRAGMA"
.LASF1617:
	.string	"identifier_global_value"
.LASF107:
	.string	"DCmode"
.LASF1170:
	.string	"CTI_G77_UINTEGER_TYPE"
.LASF1288:
	.string	"undef"
.LASF1032:
	.string	"RID_INLINE"
.LASF720:
	.string	"DEFINE_COMBINE"
.LASF1715:
	.string	"flag_allow_single_precision"
.LASF1535:
	.string	"attr_flags"
.LASF1735:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF1659:
	.string	"warn_shadow"
.LASF247:
	.string	"BIT_ANDTC_EXPR"
.LASF643:
	.string	"TI_PTR_TYPE"
.LASF1553:
	.string	"void_at_end"
.LASF523:
	.string	"x_tail_recursion_reentry"
.LASF22:
	.string	"identifier"
.LASF778:
	.string	"ASHIFTRT"
.LASF1404:
	.string	"functionbody"
.LASF1572:
	.string	"finish_enum"
.LASF1062:
	.string	"RID_DO"
.LASF1177:
	.string	"CTI_VOID_ZERO"
.LASF1298:
	.string	"begin_function"
.LASF1710:
	.string	"warn_cast_qual"
.LASF137:
	.string	"CCmode"
.LASF401:
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
.LASF393:
	.string	"BUILT_IN_ISUNORDERED"
.LASF1721:
	.string	"static_ctors"
.LASF1708:
	.string	"warn_redundant_decls"
.LASF1625:
	.string	"current_function_parms"
.LASF864:
	.string	"NOTE_INSN_LOOP_END"
.LASF1138:
	.string	"RID_MAX"
.LASF1383:
	.string	"extern_inline"
.LASF135:
	.string	"V16SFmode"
.LASF822:
	.string	"SS_PLUS"
.LASF603:
	.string	"initial"
.LASF1342:
	.string	"TV_SHORTEN_BRANCH"
.LASF1155:
	.string	"CTI_WIDEST_INT_LIT_TYPE"
.LASF249:
	.string	"TRUTH_ANDIF_EXPR"
.LASF1506:
	.string	"initial_value"
.LASF878:
	.string	"NOTE_INSN_LIVE"
.LASF1207:
	.string	"LABEL_STMT"
.LASF725:
	.string	"DEFINE_COND_EXEC"
.LASF1197:
	.string	"DECL_STMT"
.LASF1040:
	.string	"RID_FRIEND"
.LASF59:
	.string	"_IO_save_base"
.LASF989:
	.string	"CPP_PLUS_PLUS"
.LASF695:
	.string	"SIZETYPE"
.LASF895:
	.string	"var_refs_queue"
.LASF1204:
	.string	"CONTINUE_STMT"
.LASF1412:
	.string	"pop_label_level"
.LASF1706:
	.string	"flag_no_asm"
.LASF919:
	.string	"x_stack_pointer_delta"
.LASF1377:
	.string	"named_labels"
.LASF254:
	.string	"TRUTH_NOT_EXPR"
.LASF721:
	.string	"DEFINE_EXPAND"
.LASF235:
	.string	"NEGATE_EXPR"
.LASF1160:
	.string	"CTI_STRING_TYPE"
.LASF1353:
	.string	"NORMAL"
.LASF562:
	.string	"is_thunk"
.LASF1239:
	.string	"elements_used"
.LASF1697:
	.string	"warn_parentheses"
.LASF126:
	.string	"V8SImode"
.LASF515:
	.string	"x_nonlocal_goto_handler_labels"
.LASF1391:
	.string	"indent"
.LASF734:
	.string	"INSN"
.LASF844:
	.string	"rtint"
.LASF403:
	.string	"BUILT_IN_STDARG_START"
.LASF1513:
	.string	"constp"
.LASF594:
	.string	"comdat_flag"
.LASF980:
	.string	"CPP_MAX_EQ"
.LASF986:
	.string	"CPP_CLOSE_BRACE"
.LASF764:
	.string	"LABEL_REF"
.LASF1276:
	.string	"function_attribute_inlinable_p"
.LASF1232:
	.string	"const_equiv"
.LASF624:
	.string	"TI_UINTDI_TYPE"
.LASF1417:
	.string	"different_binding_level"
.LASF176:
	.string	"ARRAY_TYPE"
.LASF1510:
	.string	"specbits"
.LASF1460:
	.string	"lookup_name_current_level"
.LASF955:
	.string	"CPP_MIN"
.LASF634:
	.string	"TI_BITSIZE_UNIT"
.LASF1235:
	.string	"elt_list"
.LASF1312:
	.string	"TV_LIFE_UPDATE"
.LASF310:
	.string	"BUILT_IN_NORMAL"
.LASF1390:
	.string	"file"
.LASF257:
	.string	"GT_EXPR"
.LASF73:
	.string	"__pad2"
.LASF270:
	.string	"CARD_EXPR"
.LASF1274:
	.string	"set_default_type_attributes"
.LASF0:
	.string	"code"
.LASF1573:
	.string	"pair"
.LASF17:
	.string	"int_cst"
.LASF1269:
	.string	"gcc_target"
.LASF1369:
	.string	"keep"
.LASF1613:
	.string	"anon_aggr_type_p"
.LASF1680:
	.string	"flag_short_double"
.LASF640:
	.string	"TI_DOUBLE_TYPE"
.LASF1341:
	.string	"TV_REORDER_BLOCKS"
.LASF1647:
	.string	"input_filename"
.LASF1623:
	.string	"last_function_parms"
.LASF371:
	.string	"BUILT_IN_LONGJMP"
.LASF1047:
	.string	"RID_INOUT"
.LASF444:
	.string	"tree_vector"
.LASF1108:
	.string	"RID_TYPEID"
.LASF174:
	.string	"METHOD_TYPE"
.LASF1172:
	.string	"CTI_G77_ULONGINT_TYPE"
.LASF1607:
	.string	"pop_c_function_context"
.LASF1634:
	.string	"free_binding_level"
.LASF138:
	.string	"CCGCmode"
.LASF1096:
	.string	"RID_NULL"
.LASF1218:
	.string	"global_value"
.LASF1666:
	.string	"in_system_header"
.LASF25:
	.string	"list"
.LASF272:
	.string	"CONVERT_EXPR"
.LASF1114:
	.string	"RID_AND"
.LASF760:
	.string	"SCRATCH"
.LASF124:
	.string	"V8QImode"
.LASF1179:
	.string	"c_common_identifier"
.LASF1508:
	.string	"eltsize"
.LASF224:
	.string	"TRUNC_MOD_EXPR"
.LASF127:
	.string	"V8DImode"
.LASF156:
	.string	"MAX_MODE_CLASS"
.LASF1621:
	.string	"enum_next_value"
.LASF678:
	.string	"itk_unsigned_long_long"
.LASF1675:
	.string	"cfun"
.LASF1132:
	.string	"RID_AT_PROTECTED"
.LASF1477:
	.string	"found_tag"
.LASF220:
	.string	"TRUNC_DIV_EXPR"
.LASF799:
	.string	"SIGN_EXTEND"
.LASF1438:
	.string	"functionid"
.LASF1682:
	.string	"warn_format_y2k"
.LASF554:
	.string	"calls_setjmp"
.LASF1092:
	.string	"RID_PUBLIC"
.LASF277:
	.string	"UNSAVE_EXPR"
.LASF1175:
	.string	"CTI_C99_FUNCTION_NAME_DECL"
.LASF219:
	.string	"MULT_EXPR"
.LASF450:
	.string	"value"
.LASF821:
	.string	"VEC_DUPLICATE"
.LASF258:
	.string	"GE_EXPR"
.LASF1126:
	.string	"RID_AT_ENCODE"
.LASF516:
	.string	"x_nonlocal_goto_stack_level"
.LASF158:
	.string	"ERROR_MARK"
.LASF80:
	.string	"_next"
.LASF1374:
	.string	"DEPRECATED_NORMAL"
.LASF1335:
	.string	"TV_IFCVT2"
.LASF1703:
	.string	"current_function_returns_abnormally"
.LASF965:
	.string	"CPP_EQ_EQ"
.LASF345:
	.string	"BUILT_IN_STRPBRK"
.LASF280:
	.string	"REFERENCE_EXPR"
.LASF498:
	.string	"expr"
.LASF225:
	.string	"CEIL_MOD_EXPR"
.LASF1059:
	.string	"RID_IF"
.LASF874:
	.string	"NOTE_INSN_EH_REGION_END"
.LASF465:
	.string	"address"
.LASF1045:
	.string	"RID_IN"
.LASF1238:
	.string	"num_elements"
.LASF1716:
	.string	"warn_missing_braces"
.LASF1365:
	.string	"level_chain"
.LASF374:
	.string	"BUILT_IN_PUTCHAR"
.LASF685:
	.string	"function_type_required"
.LASF1151:
	.string	"CTI_SIGNED_SIZE_TYPE"
.LASF1465:
	.string	"ptr_ftype_ptr"
.LASF1464:
	.string	"ptr_ftype_void"
.LASF1097:
	.string	"RID_CATCH"
.LASF514:
	.string	"x_nonlocal_goto_handler_slots"
.LASF133:
	.string	"V8SFmode"
.LASF221:
	.string	"CEIL_DIV_EXPR"
.LASF704:
	.string	"INCLUDE"
.LASF364:
	.string	"BUILT_IN_FRAME_ADDRESS"
.LASF952:
	.string	"CPP_XOR"
.LASF1352:
	.string	"decl_context"
.LASF743:
	.string	"ASM_OPERANDS"
.LASF534:
	.string	"x_temp_slot_level"
.LASF485:
	.string	"minval"
.LASF532:
	.string	"x_parm_reg_stack_loc"
.LASF141:
	.string	"CCZmode"
.LASF1250:
	.string	"integer"
.LASF865:
	.string	"NOTE_INSN_LOOP_CONT"
.LASF700:
	.string	"UBITSIZETYPE"
.LASF222:
	.string	"FLOOR_DIV_EXPR"
.LASF160:
	.string	"TREE_LIST"
.LASF1366:
	.string	"parm_flag"
.LASF1709:
	.string	"warn_nested_externs"
.LASF1087:
	.string	"RID_PRETTY_FUNCTION_NAME"
.LASF1524:
	.string	"innermost_code"
.LASF715:
	.string	"DEFINE_INSN"
.LASF1141:
	.string	"RID_FIRST_AT"
.LASF616:
	.string	"TI_INTQI_TYPE"
.LASF1251:
	.string	"function_prologue"
.LASF462:
	.string	"abstract_origin"
.LASF187:
	.string	"STRING_CST"
.LASF255:
	.string	"LT_EXPR"
.LASF1583:
	.string	"restype"
.LASF1577:
	.string	"unsign"
.LASF998:
	.string	"CPP_NUMBER"
.LASF1633:
	.string	"current_binding_level"
.LASF1290:
	.string	"end_source_file"
.LASF747:
	.string	"ADDR_DIFF_VEC"
.LASF245:
	.string	"BIT_XOR_EXPR"
.LASF303:
	.string	"SWITCH_EXPR"
.LASF252:
	.string	"TRUTH_OR_EXPR"
.LASF809:
	.string	"ZERO_EXTRACT"
.LASF1442:
	.string	"duplicate_decls"
.LASF1187:
	.string	"c_lang_decl"
.LASF1226:
	.string	"hint"
.LASF742:
	.string	"ASM_INPUT"
.LASF294:
	.string	"GOTO_SUBROUTINE_EXPR"
.LASF446:
	.string	"ht_identifier"
.LASF792:
	.string	"ORDERED"
.LASF134:
	.string	"V8DFmode"
.LASF897:
	.string	"promoted_mode"
.LASF1639:
	.string	"label_level_chain"
.LASF604:
	.string	"assembler_name"
.LASF1359:
	.string	"binding_level"
.LASF1256:
	.string	"exception_section"
.LASF1429:
	.string	"olddecl_uid"
.LASF1131:
	.string	"RID_AT_PRIVATE"
.LASF236:
	.string	"MIN_EXPR"
.LASF692:
	.string	"ATTR_FLAG_TYPE_IN_PLACE"
.LASF649:
	.string	"TI_UV4SI_TYPE"
.LASF1516:
	.string	"type_quals"
.LASF474:
	.string	"needs_constructing_flag"
.LASF931:
	.string	"x_stmt_tree"
.LASF806:
	.string	"UNSIGNED_FIX"
.LASF231:
	.string	"FIX_CEIL_EXPR"
.LASF1600:
	.string	"c_expand_deferred_function"
.LASF1178:
	.string	"CTI_MAX"
.LASF1058:
	.string	"RID_UNION"
.LASF551:
	.string	"returns_pcc_struct"
.LASF342:
	.string	"BUILT_IN_STRNCMP"
.LASF1532:
	.string	"already"
.LASF1355:
	.string	"PARM"
.LASF1531:
	.string	"found"
.LASF949:
	.string	"CPP_MOD"
.LASF441:
	.string	"tree_complex"
.LASF1533:
	.string	"nclasses"
.LASF1054:
	.string	"RID_DOUBLE"
.LASF943:
	.string	"CPP_GREATER"
.LASF737:
	.string	"BARRIER"
.LASF1259:
	.string	"destructor"
.LASF32:
	.string	"sse_words"
.LASF690:
	.string	"ATTR_FLAG_FUNCTION_NEXT"
.LASF995:
	.string	"CPP_DOT_STAR"
.LASF1469:
	.string	"function_code"
.LASF964:
	.string	"CPP_CLOSE_PAREN"
.LASF1681:
	.string	"flag_short_wchar"
.LASF142:
	.string	"CCFPmode"
.LASF1206:
	.string	"GOTO_STMT"
.LASF256:
	.string	"LE_EXPR"
.LASF736:
	.string	"CALL_INSN"
.LASF596:
	.string	"no_limit_stack"
.LASF602:
	.string	"result"
.LASF731:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF689:
	.string	"ATTR_FLAG_DECL_NEXT"
.LASF484:
	.string	"name"
.LASF1599:
	.string	"can_defer_p"
.LASF706:
	.string	"INSN_LIST"
.LASF1115:
	.string	"RID_AND_EQ"
.LASF81:
	.string	"_sbuf"
.LASF1425:
	.string	"trytype"
.LASF814:
	.string	"RANGE_VAR"
.LASF61:
	.string	"_IO_save_end"
.LASF1247:
	.string	"byte_op"
.LASF1267:
	.string	"reorder2"
.LASF148:
	.string	"MODE_INT"
.LASF940:
	.string	"cpp_ttype"
.LASF1439:
	.string	"traditional_warning"
.LASF18:
	.string	"real_cst"
.LASF1073:
	.string	"RID_TYPEOF"
.LASF237:
	.string	"MAX_EXPR"
.LASF506:
	.string	"arg_offset_rtx"
.LASF2:
	.string	"jump"
.LASF455:
	.string	"tree_block"
.LASF31:
	.string	"regno"
.LASF630:
	.string	"TI_SIZE_ZERO"
.LASF891:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF916:
	.string	"expr_status"
.LASF1263:
	.string	"variable_issue"
.LASF1318:
	.string	"TV_INTEGRATION"
.LASF460:
	.string	"subblocks"
.LASF1271:
	.string	"merge_type_attributes"
.LASF1658:
	.string	"warn_unknown_pragmas"
.LASF1221:
	.string	"implicit_decl"
.LASF1393:
	.string	"finish_incomplete_decl"
.LASF1193:
	.string	"ARROW_EXPR"
.LASF558:
	.string	"has_nonlocal_label"
.LASF671:
	.string	"itk_short"
.LASF336:
	.string	"BUILT_IN_MEMSET"
.LASF815:
	.string	"RANGE_LIVE"
.LASF917:
	.string	"x_pending_stack_adjust"
.LASF228:
	.string	"RDIV_EXPR"
.LASF503:
	.string	"args_size"
.LASF9:
	.string	"frame_related"
.LASF1554:
	.string	"types"
.LASF582:
	.string	"virtual_flag"
.LASF1167:
	.string	"CTI_C_BOOL_FALSE"
.LASF478:
	.string	"pointer_depth"
.LASF974:
	.string	"CPP_AND_EQ"
.LASF440:
	.string	"pointer"
.LASF1587:
	.string	"store_parm_decls"
.LASF937:
	.string	"rid_code"
.LASF189:
	.string	"LABEL_DECL"
.LASF1653:
	.string	"lang_set_decl_assembler_name"
.LASF948:
	.string	"CPP_DIV"
.LASF407:
	.string	"END_BUILTINS"
.LASF705:
	.string	"EXPR_LIST"
.LASF698:
	.string	"BITSIZETYPE"
.LASF888:
	.string	"GR_ARG_POINTER"
.LASF1101:
	.string	"RID_NEW"
.LASF994:
	.string	"CPP_DEREF_STAR"
.LASF1678:
	.string	"lang_expand_function_end"
.LASF27:
	.string	"sizetype"
.LASF824:
	.string	"SS_MINUS"
.LASF1408:
	.string	"level"
.LASF688:
	.string	"attribute_flags"
.LASF1057:
	.string	"RID_STRUCT"
.LASF991:
	.string	"CPP_DEREF"
.LASF711:
	.string	"MATCH_PARALLEL"
.LASF122:
	.string	"V4SImode"
.LASF5:
	.string	"volatil"
.LASF1334:
	.string	"TV_FLOW2"
.LASF1696:
	.string	"flag_no_nonansi_builtin"
.LASF1293:
	.string	"ignore_block"
.LASF408:
	.string	"tree_common"
.LASF489:
	.string	"binfo"
.LASF633:
	.string	"TI_BITSIZE_ONE"
.LASF42:
	.string	"short unsigned int"
.LASF1113:
	.string	"RID_STATCAST"
.LASF1118:
	.string	"RID_OR"
.LASF43:
	.string	"signed char"
.LASF1056:
	.string	"RID_ENUM"
.LASF627:
	.string	"TI_INTEGER_ONE"
.LASF710:
	.string	"MATCH_OPERATOR"
.LASF1495:
	.string	"asmspec"
.LASF1386:
	.string	"strings_processed"
.LASF1499:
	.string	"push_parm_decl"
.LASF1643:
	.string	"tree_code_type"
.LASF782:
	.string	"SMAX"
.LASF449:
	.string	"purpose"
.LASF1049:
	.string	"RID_BYREF"
.LASF530:
	.string	"x_last_parm_insn"
.LASF1571:
	.string	"enumtype"
.LASF617:
	.string	"TI_INTHI_TYPE"
.LASF1237:
	.string	"varray_head_tag"
.LASF481:
	.string	"pointer_to"
.LASF613:
	.string	"pending_sizes"
.LASF1388:
	.string	"iso_1994"
.LASF591:
	.string	"weak_flag"
.LASF1426:
	.string	"parm"
.LASF607:
	.string	"saved_tree"
.LASF1620:
	.string	"build_void_list_node"
.LASF909:
	.string	"x_cur_insn_uid"
.LASF451:
	.string	"tree_vec"
.LASF951:
	.string	"CPP_OR"
.LASF923:
	.string	"x_pending_chain"
.LASF575:
	.string	"filename"
.LASF826:
	.string	"SS_TRUNCATE"
.LASF289:
	.string	"POSTDECREMENT_EXPR"
.LASF1650:
	.string	"immediate_size_expand"
.LASF1636:
	.string	"clear_binding_level"
.LASF1517:
	.string	"inlinep"
.LASF1739:
	.string	"make_binding_level"
.LASF307:
	.string	"NOT_BUILT_IN"
.LASF1538:
	.string	"arg_types"
.LASF382:
	.string	"BUILT_IN_PUTS_UNLOCKED"
.LASF1036:
	.string	"RID_RESTRICT"
.LASF539:
	.string	"no_debugging_symbols"
.LASF1321:
	.string	"TV_GCSE"
.LASF1260:
	.string	"adjust_cost"
.LASF386:
	.string	"BUILT_IN_FWRITE_UNLOCKED"
.LASF830:
	.string	"base_after_vec"
.LASF1145:
	.string	"c_tree_index"
.LASF46:
	.string	"__off64_t"
.LASF1324:
	.string	"TV_BRANCH_PROB"
.LASF666:
	.string	"TI_MAX"
.LASF123:
	.string	"V4DImode"
.LASF1711:
	.string	"warn_bad_function_cast"
.LASF1450:
	.string	"storedecls"
.LASF419:
	.string	"nothrow_flag"
.LASF1555:
	.string	"parms"
.LASF53:
	.string	"_IO_read_base"
.LASF293:
	.string	"TRY_FINALLY_EXPR"
.LASF71:
	.string	"_offset"
.LASF1645:
	.string	"integer_types"
.LASF20:
	.string	"string"
.LASF1454:
	.string	"thislevel"
.LASF889:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF1586:
	.string	"c_mark_varargs"
.LASF911:
	.string	"x_last_filename"
.LASF58:
	.string	"_IO_buf_end"
.LASF483:
	.string	"symtab"
.LASF724:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF825:
	.string	"US_MINUS"
.LASF651:
	.string	"TI_UV8QI_TYPE"
.LASF1693:
	.string	"flag_hosted"
.LASF934:
	.string	"ident"
.LASF1382:
	.string	"warn_about_return_type"
.LASF1631:
	.string	"c_function_varargs"
.LASF1505:
	.string	"complete_array_type"
.LASF508:
	.string	"return_rtx"
.LASF259:
	.string	"EQ_EXPR"
.LASF197:
	.string	"COMPONENT_REF"
.LASF808:
	.string	"SIGN_EXTRACT"
.LASF606:
	.string	"live_range_rtl"
.LASF8:
	.string	"integrated"
.LASF218:
	.string	"MINUS_EXPR"
.LASF1021:
	.string	"operator"
.LASF1629:
	.string	"c_stmt_tree"
.LASF1070:
	.string	"RID_GOTO"
.LASF749:
	.string	"CLOBBER"
.LASF487:
	.string	"next_variant"
.LASF77:
	.string	"_mode"
.LASF154:
	.string	"MODE_VECTOR_INT"
.LASF54:
	.string	"_IO_write_base"
.LASF942:
	.string	"CPP_NOT"
.LASF1615:
	.string	"c_begin_compound_stmt"
.LASF1545:
	.string	"new_ptr_attrs"
.LASF817:
	.string	"CALL_PLACEHOLDER"
.LASF496:
	.string	"function"
.LASF346:
	.string	"BUILT_IN_STRSPN"
.LASF1436:
	.string	"pushdecl_top_level"
.LASF131:
	.string	"V4SFmode"
.LASF1582:
	.string	"old_decl"
.LASF1486:
	.string	"groktypename"
.LASF420:
	.string	"static_flag"
.LASF1121:
	.string	"RID_XOR_EQ"
.LASF1564:
	.string	"fieldlist"
.LASF205:
	.string	"COMPOUND_EXPR"
.LASF563:
	.string	"instrument_entry_exit"
.LASF1033:
	.string	"RID_VOLATILE"
.LASF621:
	.string	"TI_UINTQI_TYPE"
.LASF1684:
	.string	"warn_format_nonliteral"
.LASF1725:
	.string	"targetm"
.LASF1690:
	.string	"flag_traditional"
.LASF1590:
	.string	"parmtags"
.LASF526:
	.string	"x_frame_offset"
.LASF365:
	.string	"BUILT_IN_RETURN_ADDRESS"
.LASF1061:
	.string	"RID_WHILE"
.LASF469:
	.string	"size_unit"
.LASF381:
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
.LASF1547:
	.string	"saved_align"
.LASF771:
	.string	"PLUS"
.LASF333:
	.string	"BUILT_IN_RINDEX"
.LASF1338:
	.string	"TV_SCHED2"
.LASF1314:
	.string	"TV_LEX"
.LASF1142:
	.string	"RID_LAST_AT"
.LASF1095:
	.string	"RID_TEMPLATE"
.LASF787:
	.string	"POST_DEC"
.LASF88:
	.string	"HImode"
.LASF1183:
	.string	"x_last_expr_type"
.LASF857:
	.string	"rtunion"
.LASF867:
	.string	"NOTE_INSN_LOOP_END_TOP_COND"
.LASF1109:
	.string	"RID_USING"
.LASF152:
	.string	"MODE_COMPLEX_INT"
.LASF924:
	.string	"eh_status"
.LASF1158:
	.string	"CTI_WCHAR_ARRAY_TYPE"
.LASF1098:
	.string	"RID_DELETE"
.LASF1157:
	.string	"CTI_CHAR_ARRAY_TYPE"
.LASF305:
	.string	"LAST_AND_UNUSED_TREE_CODE"
.LASF1451:
	.string	"storetags"
.LASF1233:
	.string	"sched_info_tag"
.LASF900:
	.string	"sequence_stack"
.LASF38:
	.string	"long int"
.LASF893:
	.string	"GR_VIRTUAL_CFA"
.LASF171:
	.string	"POINTER_TYPE"
.LASF1603:
	.string	"ret_type"
.LASF239:
	.string	"FFS_EXPR"
.LASF1664:
	.string	"larger_than_size"
.LASF163:
	.string	"VOID_TYPE"
.LASF275:
	.string	"VIEW_CONVERT_EXPR"
.LASF615:
	.string	"TI_ERROR_MARK"
.LASF1605:
	.string	"check_for_loop_decls"
.LASF1246:
	.string	"close_paren"
.LASF79:
	.string	"_IO_marker"
.LASF102:
	.string	"XFmode"
.LASF553:
	.string	"needs_context"
.LASF1279:
	.string	"expand_builtin"
.LASF1630:
	.string	"c_scope_stmt_stack"
.LASF992:
	.string	"CPP_DOT"
.LASF1627:
	.string	"current_function_prototype_file"
.LASF132:
	.string	"V4DFmode"
.LASF1550:
	.string	"first_parm"
.LASF1523:
	.string	"funcdef_flag"
.LASF1214:
	.string	"CLEANUP_STMT"
.LASF4:
	.string	"unchanging"
.LASF586:
	.string	"defer_output"
.LASF663:
	.string	"TI_V2SF_TYPE"
.LASF1339:
	.string	"TV_MACH_DEP"
.LASF1016:
	.string	"BT_TIME"
.LASF1129:
	.string	"RID_AT_ALIAS"
.LASF862:
	.string	"NOTE_INSN_BLOCK_END"
.LASF557:
	.string	"calls_eh_return"
.LASF1079:
	.string	"RID_REALPART"
.LASF682:
	.string	"max_length"
.LASF1202:
	.string	"RETURN_STMT"
.LASF536:
	.string	"x_target_temp_slot_level"
.LASF1188:
	.string	"declared_inline"
.LASF1283:
	.string	"cannot_modify_jumps_p"
.LASF504:
	.string	"pretend_args_size"
.LASF490:
	.string	"context"
.LASF1674:
	.string	"flag_pack_struct"
.LASF1212:
	.string	"STMT_EXPR"
.LASF702:
	.string	"rtx_code"
.LASF36:
	.string	"CUMULATIVE_ARGS"
.LASF1055:
	.string	"RID_VOID"
.LASF216:
	.string	"WITH_RECORD_EXPR"
.LASF902:
	.string	"last"
.LASF614:
	.string	"tree_index"
.LASF566:
	.string	"varargs"
.LASF1028:
	.string	"RID_EXTERN"
.LASF935:
	.string	"arg_index"
.LASF1601:
	.string	"c_expand_body"
.LASF1273:
	.string	"comp_type_attributes"
.LASF456:
	.string	"handler_block_flag"
.LASF598:
	.string	"non_addressable"
.LASF1284:
	.string	"gcc_debug_hooks"
.LASF1278:
	.string	"init_builtins"
.LASF1168:
	.string	"CTI_DEFAULT_FUNCTION_TYPE"
.LASF1080:
	.string	"RID_LABEL"
.LASF1304:
	.string	"label"
.LASF1395:
	.string	"kept_level_p"
.LASF1713:
	.string	"warn_char_subscripts"
.LASF1319:
	.string	"TV_JUMP"
.LASF979:
	.string	"CPP_MIN_EQ"
.LASF1507:
	.string	"maxindex"
.LASF397:
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
.LASF568:
	.string	"x_whole_function_mode_p"
.LASF1570:
	.string	"start_enum"
.LASF1257:
	.string	"eh_frame_section"
.LASF703:
	.string	"UNKNOWN"
.LASF1150:
	.string	"CTI_C_SIZE_TYPE"
.LASF745:
	.string	"UNSPEC_VOLATILE"
.LASF202:
	.string	"ARRAY_RANGE_REF"
.LASF1604:
	.string	"size_as_int"
.LASF701:
	.string	"TYPE_KIND_LAST"
.LASF1120:
	.string	"RID_XOR"
.LASF1074:
	.string	"RID_ALIGNOF"
.LASF344:
	.string	"BUILT_IN_STRSTR"
.LASF585:
	.string	"common_flag"
.LASF870:
	.string	"NOTE_INSN_EPILOGUE_BEG"
.LASF40:
	.string	"long unsigned int"
.LASF593:
	.string	"no_instrument_function_entry_exit"
.LASF416:
	.string	"asm_written_flag"
.LASF309:
	.string	"BUILT_IN_MD"
.LASF11:
	.string	"rtx_def"
.LASF1009:
	.string	"N_TTYPES"
.LASF157:
	.string	"tree_code"
.LASF1712:
	.string	"warn_traditional"
.LASF98:
	.string	"HFmode"
.LASF380:
	.string	"BUILT_IN_FPRINTF"
.LASF1084:
	.string	"RID_CHOOSE_EXPR"
.LASF411:
	.string	"constant_flag"
.LASF352:
	.string	"BUILT_IN_COS"
.LASF752:
	.string	"TRAP_IF"
.LASF1052:
	.string	"RID_CHAR"
.LASF1329:
	.string	"TV_MODE_SWITCH"
.LASF424:
	.string	"bounded_flag"
.LASF194:
	.string	"RESULT_DECL"
.LASF292:
	.string	"TRY_CATCH_EXPR"
.LASF1195:
	.string	"EXPR_STMT"
.LASF656:
	.string	"TI_V4SF_TYPE"
.LASF448:
	.string	"tree_list"
.LASF1181:
	.string	"stmt_tree_s"
.LASF1722:
	.string	"static_dtors"
.LASF110:
	.string	"CQImode"
.LASF853:
	.string	"cpp_reader"
.LASF546:
	.string	"stack_alignment_needed"
.LASF1295:
	.string	"begin_prologue"
.LASF1592:
	.string	"nonparms"
.LASF47:
	.string	"char"
.LASF550:
	.string	"returns_struct"
.LASF108:
	.string	"XCmode"
.LASF524:
	.string	"x_arg_pointer_save_area"
.LASF1043:
	.string	"RID_EXPORT"
.LASF392:
	.string	"BUILT_IN_ISLESSGREATER"
.LASF1665:
	.string	"pedantic"
.LASF1542:
	.string	"type_as_written"
.LASF311:
	.string	"built_in_function"
.LASF522:
	.string	"x_tail_recursion_label"
.LASF274:
	.string	"NON_LVALUE_EXPR"
.LASF1169:
	.string	"CTI_G77_INTEGER_TYPE"
.LASF972:
	.string	"CPP_DIV_EQ"
.LASF843:
	.string	"rtwint"
.LASF595:
	.string	"malloc_flag"
.LASF1116:
	.string	"RID_NOT"
.LASF57:
	.string	"_IO_buf_base"
.LASF780:
	.string	"ROTATERT"
.LASF668:
	.string	"itk_char"
.LASF471:
	.string	"precision"
.LASF766:
	.string	"ADDRESSOF"
.LASF1140:
	.string	"RID_LAST_MODIFIER"
.LASF199:
	.string	"INDIRECT_REF"
.LASF993:
	.string	"CPP_SCOPE"
.LASF116:
	.string	"V2QImode"
.LASF297:
	.string	"RETURN_EXPR"
.LASF326:
	.string	"BUILT_IN_CIMAG"
.LASF367:
	.string	"BUILT_IN_APPLY_ARGS"
.LASF946:
	.string	"CPP_MINUS"
.LASF905:
	.string	"x_reg_rtx_no"
.LASF94:
	.string	"PHImode"
.LASF52:
	.string	"_IO_read_end"
.LASF1081:
	.string	"RID_PTRBASE"
.LASF475:
	.string	"transparent_union_flag"
.LASF896:
	.string	"modified"
.LASF1159:
	.string	"CTI_INT_ARRAY_TYPE"
.LASF914:
	.string	"regno_decl"
.LASF694:
	.string	"size_type_kind"
.LASF1234:
	.string	"reg_info_def"
.LASF115:
	.string	"COImode"
.LASF1375:
	.string	"DEPRECATED_SUPPRESS"
.LASF785:
	.string	"PRE_DEC"
.LASF1180:
	.string	"node"
.LASF1143:
	.string	"RID_FIRST_PQ"
.LASF49:
	.string	"_IO_FILE"
.LASF1112:
	.string	"RID_REINTCAST"
.LASF869:
	.string	"NOTE_INSN_PROLOGUE_END"
.LASF887:
	.string	"GR_HARD_FRAME_POINTER"
.LASF1492:
	.string	"finish_decl"
.LASF480:
	.string	"align"
.LASF812:
	.string	"RANGE_INFO"
.LASF1700:
	.string	"make_fname_decl"
.LASF1473:
	.string	"shadow_tag"
.LASF394:
	.string	"BUILT_IN_UNWIND_INIT"
.LASF556:
	.string	"calls_alloca"
.LASF1268:
	.string	"cycle_display"
.LASF1060:
	.string	"RID_ELSE"
.LASF1286:
	.string	"finish"
.LASF984:
	.string	"CPP_CLOSE_SQUARE"
.LASF1008:
	.string	"CPP_EOF"
.LASF635:
	.string	"TI_COMPLEX_INTEGER_TYPE"
.LASF535:
	.string	"x_var_temp_slot_level"
.LASF1657:
	.string	"warn_uninitialized"
.LASF147:
	.string	"MODE_RANDOM"
.LASF823:
	.string	"US_PLUS"
.LASF1039:
	.string	"RID_COMPLEX"
.LASF1086:
	.string	"RID_FUNCTION_NAME"
.LASF1541:
	.string	"qualifier"
.LASF1102:
	.string	"RID_OPERATOR"
.LASF1035:
	.string	"RID_AUTO"
.LASF1244:
	.string	"asm_out"
.LASF1445:
	.string	"shadow_label"
.LASF1466:
	.string	"c_make_fname_decl"
.LASF136:
	.string	"BLKmode"
.LASF1003:
	.string	"CPP_WSTRING"
.LASF105:
	.string	"HCmode"
.LASF210:
	.string	"BIND_EXPR"
.LASF1220:
	.string	"label_value"
.LASF282:
	.string	"FDESC_EXPR"
.LASF654:
	.string	"TI_UV2SF_TYPE"
.LASF1487:
	.string	"typename"
.LASF217:
	.string	"PLUS_EXPR"
.LASF1699:
	.string	"warn_long_long"
.LASF660:
	.string	"TI_V8QI_TYPE"
.LASF988:
	.string	"CPP_ELLIPSIS"
.LASF1717:
	.string	"warn_sign_compare"
.LASF1124:
	.string	"RID_COMPL"
.LASF665:
	.string	"TI_MAIN_IDENTIFIER"
.LASF343:
	.string	"BUILT_IN_STRLEN"
.LASF1481:
	.string	"quals"
.LASF1192:
	.string	"SIZEOF_EXPR"
.LASF179:
	.string	"UNION_TYPE"
.LASF1361:
	.string	"tags"
.LASF1243:
	.string	"asm_int_op"
.LASF520:
	.string	"x_stack_slot_list"
.LASF820:
	.string	"VEC_CONCAT"
.LASF572:
	.string	"uses_eh_lsda"
.LASF1358:
	.string	"TYPENAME"
.LASF1551:
	.string	"typelt"
.LASF281:
	.string	"ENTRY_VALUE_EXPR"
.LASF1025:
	.string	"RID_UNSIGNED"
.LASF361:
	.string	"BUILT_IN_NEXT_ARG"
.LASF72:
	.string	"__pad1"
.LASF74:
	.string	"__pad3"
.LASF75:
	.string	"__pad4"
.LASF76:
	.string	"__pad5"
.LASF583:
	.string	"ignored_flag"
.LASF1440:
	.string	"implicit_warning"
.LASF733:
	.string	"ATTR_FLAG"
.LASF1111:
	.string	"RID_DYNCAST"
.LASF816:
	.string	"CONSTANT_P_RTX"
.LASF1432:
	.string	"oldlocal"
.LASF143:
	.string	"CCFPUmode"
.LASF1309:
	.string	"TV_CFG"
.LASF723:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF1497:
	.string	"failure"
.LASF1694:
	.string	"flag_noniso_default_format_attributes"
.LASF590:
	.string	"artificial_flag"
.LASF527:
	.string	"x_context_display"
.LASF1430:
	.string	"clear_limbo_values"
.LASF936:
	.string	"directive_index"
.LASF62:
	.string	"_markers"
.LASF82:
	.string	"_pos"
.LASF727:
	.string	"ADDRESS"
.LASF1478:
	.string	"specs"
.LASF262:
	.string	"ORDERED_EXPR"
.LASF1308:
	.string	"TV_DUMP"
.LASF405:
	.string	"BUILT_IN_VA_COPY"
.LASF1556:
	.string	"new_parms"
.LASF1509:
	.string	"grokdeclarator"
.LASF540:
	.string	"original_arg_vector"
.LASF1367:
	.string	"tag_transparent"
.LASF21:
	.string	"complex"
.LASF1668:
	.string	"flag_short_enums"
.LASF868:
	.string	"NOTE_INSN_FUNCTION_END"
.LASF1015:
	.string	"BT_INCLUDE_LEVEL"
.LASF1229:
	.string	"cptr"
.LASF173:
	.string	"REFERENCE_TYPE"
.LASF990:
	.string	"CPP_MINUS_MINUS"
.LASF1354:
	.string	"FUNCDEF"
.LASF1331:
	.string	"TV_LOCAL_ALLOC"
.LASF518:
	.string	"x_return_label"
.LASF1455:
	.string	"tail"
.LASF461:
	.string	"supercontext"
.LASF406:
	.string	"BUILT_IN_EXPECT"
.LASF1330:
	.string	"TV_SCHED"
.LASF1072:
	.string	"RID_ASM"
.LASF486:
	.string	"maxval"
.LASF966:
	.string	"CPP_NOT_EQ"
.LASF261:
	.string	"UNORDERED_EXPR"
.LASF1522:
	.string	"typedef_type"
.LASF1067:
	.string	"RID_BREAK"
.LASF648:
	.string	"TI_UV4SF_TYPE"
.LASF1064:
	.string	"RID_SWITCH"
.LASF827:
	.string	"US_TRUNCATE"
.LASF428:
	.string	"lang_flag_2"
.LASF1128:
	.string	"RID_AT_CLASS"
.LASF1161:
	.string	"CTI_CONST_STRING_TYPE"
.LASF1597:
	.string	"finish_function"
.LASF347:
	.string	"BUILT_IN_STRCSPN"
.LASF1165:
	.string	"CTI_C_BOOL_TYPE"
.LASF269:
	.string	"SET_LE_EXPR"
.LASF1219:
	.string	"local_value"
.LASF1584:
	.string	"args"
.LASF664:
	.string	"TI_V16QI_TYPE"
.LASF30:
	.string	"nregs"
.LASF997:
	.string	"CPP_NAME"
.LASF1300:
	.string	"function_decl"
.LASF677:
	.string	"itk_long_long"
.LASF1548:
	.string	"grokparms"
.LASF784:
	.string	"UMAX"
.LASF288:
	.string	"PREINCREMENT_EXPR"
.LASF1281:
	.string	"have_named_sections"
.LASF836:
	.string	"scale"
.LASF576:
	.string	"linenum"
.LASF87:
	.string	"QImode"
.LASF855:
	.string	"bitmap_head_def"
.LASF1205:
	.string	"SWITCH_STMT"
.LASF1001:
	.string	"CPP_OTHER"
.LASF1642:
	.string	"target_flags"
.LASF265:
	.string	"UNGT_EXPR"
.LASF770:
	.string	"COMPARE"
.LASF1241:
	.string	"data"
.LASF885:
	.string	"GR_STACK_POINTER"
.LASF1333:
	.string	"TV_RELOAD_CSE_REGS"
.LASF1526:
	.string	"size_varies"
.LASF933:
	.string	"cpp_hashnode"
.LASF1261:
	.string	"adjust_priority"
.LASF479:
	.string	"user_align"
.LASF314:
	.string	"BUILT_IN_LABS"
.LASF1094:
	.string	"RID_PROTECTED"
.LASF1596:
	.string	"actual"
.LASF99:
	.string	"TQFmode"
.LASF1660:
	.string	"warn_switch"
.LASF1082:
	.string	"RID_PTREXTENT"
.LASF1162:
	.string	"CTI_BOOLEAN_TYPE"
.LASF1292:
	.string	"end_block"
.LASF413:
	.string	"volatile_flag"
.LASF1069:
	.string	"RID_RETURN"
.LASF29:
	.string	"words"
.LASF337:
	.string	"BUILT_IN_STRCAT"
.LASF1619:
	.string	"rid_index"
.LASF353:
	.string	"BUILT_IN_SQRTF"
.LASF1679:
	.string	"flag_const_strings"
.LASF833:
	.string	"min_after_base"
.LASF969:
	.string	"CPP_PLUS_EQ"
.LASF356:
	.string	"BUILT_IN_SQRTL"
.LASF1289:
	.string	"start_source_file"
.LASF1231:
	.string	"sched"
.LASF674:
	.string	"itk_unsigned_int"
.LASF495:
	.string	"off_align"
.LASF569:
	.string	"x_dont_save_pending_sizes_p"
.LASF28:
	.string	"ix86_args"
.LASF1376:
	.string	"c_language_function"
.LASF304:
	.string	"EXC_PTR_EXPR"
.LASF1406:
	.string	"decls"
.LASF1127:
	.string	"RID_AT_END"
.LASF882:
	.string	"global_rtl_index"
.LASF331:
	.string	"BUILT_IN_FFS"
.LASF418:
	.string	"used_flag"
.LASF1562:
	.string	"width"
.LASF376:
	.string	"BUILT_IN_PRINTF"
.LASF170:
	.string	"CHAR_TYPE"
.LASF1423:
	.string	"oldreturntype"
.LASF470:
	.string	"attributes"
.LASF659:
	.string	"TI_V8HI_TYPE"
.LASF1411:
	.string	"push_label_level"
.LASF1462:
	.string	"c_init_decl_processing"
.LASF1152:
	.string	"CTI_UNSIGNED_PTRDIFF_TYPE"
.LASF1457:
	.string	"pending_xref_error"
.LASF505:
	.string	"outgoing_args_size"
.LASF232:
	.string	"FIX_FLOOR_EXPR"
.LASF92:
	.string	"OImode"
.LASF422:
	.string	"private_flag"
.LASF383:
	.string	"BUILT_IN_PRINTF_UNLOCKED"
.LASF426:
	.string	"lang_flag_0"
.LASF427:
	.string	"lang_flag_1"
.LASF198:
	.string	"BIT_FIELD_REF"
.LASF429:
	.string	"lang_flag_3"
.LASF430:
	.string	"lang_flag_4"
.LASF431:
	.string	"lang_flag_5"
.LASF432:
	.string	"lang_flag_6"
.LASF600:
	.string	"lang_flag_7"
.LASF266:
	.string	"UNGE_EXPR"
.LASF610:
	.string	"pointer_alias_set"
.LASF819:
	.string	"VEC_SELECT"
.LASF318:
	.string	"BUILT_IN_LLABS"
.LASF652:
	.string	"TI_UV4HI_TYPE"
.LASF192:
	.string	"VAR_DECL"
.LASF454:
	.string	"operands"
.LASF1677:
	.string	"c_global_trees"
.LASF206:
	.string	"MODIFY_EXPR"
.LASF1640:
	.string	"deprecated_state"
.LASF1434:
	.string	"oldglobal"
.LASF904:
	.string	"emit_status"
.LASF1514:
	.string	"restrictp"
.LASF1156:
	.string	"CTI_WIDEST_UINT_LIT_TYPE"
.LASF447:
	.string	"tree_identifier"
.LASF155:
	.string	"MODE_VECTOR_FLOAT"
.LASF161:
	.string	"TREE_VEC"
.LASF790:
	.string	"POST_MODIFY"
.LASF1401:
	.string	"c_decode_option"
.LASF1185:
	.string	"stmts_are_full_exprs_p"
.LASF359:
	.string	"BUILT_IN_SAVEREGS"
.LASF1449:
	.string	"gettags"
.LASF298:
	.string	"EXIT_EXPR"
.LASF1031:
	.string	"RID_SHORT"
.LASF321:
	.string	"BUILT_IN_CONJF"
.LASF241:
	.string	"RSHIFT_EXPR"
.LASF322:
	.string	"BUILT_IN_CONJL"
.LASF716:
	.string	"DEFINE_PEEPHOLE"
.LASF1153:
	.string	"CTI_INTMAX_TYPE"
.LASF83:
	.string	"long long unsigned int"
.LASF876:
	.string	"NOTE_INSN_RANGE_BEG"
.LASF839:
	.string	"offset"
.LASF1433:
	.string	"pushdecl"
.LASF1714:
	.string	"warn_main"
.LASF1576:
	.string	"enum_value_type"
.LASF837:
	.string	"addr_diff_vec_flags"
.LASF67:
	.string	"_cur_column"
.LASF1669:
	.string	"flag_writable_strings"
.LASF1215:
	.string	"LAST_C_TREE_CODE"
.LASF712:
	.string	"MATCH_OP_DUP"
.LASF726:
	.string	"SEQUENCE"
.LASF1512:
	.string	"longlong"
.LASF159:
	.string	"IDENTIFIER_NODE"
.LASF1262:
	.string	"issue_rate"
.LASF97:
	.string	"QFmode"
.LASF1203:
	.string	"BREAK_STMT"
.LASF1671:
	.string	"flag_gen_aux_info"
.LASF1729:
	.string	"pending_invalid_xref_line"
.LASF1616:
	.string	"c_expand_decl_stmt"
.LASF605:
	.string	"section_name"
.LASF1211:
	.string	"CASE_LABEL"
.LASF1380:
	.string	"returns_null"
.LASF1424:
	.string	"newreturntype"
.LASF507:
	.string	"args_info"
.LASF1134:
	.string	"RID_AT_PROTOCOL"
.LASF1485:
	.string	"abstract_p"
.LASF263:
	.string	"UNLT_EXPR"
.LASF686:
	.string	"handler"
.LASF1125:
	.string	"RID_ID"
.LASF1461:
	.string	"mark_binding_level"
.LASF565:
	.string	"limit_stack"
.LASF182:
	.string	"LANG_TYPE"
.LASF753:
	.string	"RESX"
.LASF1463:
	.string	"endlink"
.LASF1013:
	.string	"BT_FILE"
.LASF741:
	.string	"PARALLEL"
.LASF1199:
	.string	"FOR_STMT"
.LASF1549:
	.string	"parms_info"
.LASF13:
	.string	"num_elem"
.LASF626:
	.string	"TI_INTEGER_ZERO"
.LASF1655:
	.string	"extra_warnings"
.LASF1422:
	.string	"errmsg"
.LASF60:
	.string	"_IO_backup_base"
.LASF791:
	.string	"UNORDERED"
.LASF144:
	.string	"MAX_MACHINE_MODE"
.LASF51:
	.string	"_IO_read_ptr"
.LASF1421:
	.string	"newtype"
.LASF1038:
	.string	"RID_UNBOUNDED"
.LASF1720:
	.string	"mesg_implicit_function_declaration"
.LASF1174:
	.string	"CTI_PRETTY_FUNCTION_NAME_DECL"
.LASF673:
	.string	"itk_int"
.LASF1626:
	.string	"current_function_parm_tags"
.LASF1099:
	.string	"RID_FALSE"
.LASF1484:
	.string	"set_array_declarator_type"
.LASF360:
	.string	"BUILT_IN_CLASSIFY_TYPE"
.LASF421:
	.string	"public_flag"
.LASF758:
	.string	"CONST"
.LASF913:
	.string	"regno_pointer_align"
.LASF807:
	.string	"SQRT"
.LASF472:
	.string	"string_flag"
.LASF1034:
	.string	"RID_SIGNED"
.LASF1569:
	.string	"layout_array_type"
.LASF884:
	.string	"GR_CC0"
.LASF1317:
	.string	"TV_VARCONST"
.LASF1606:
	.string	"push_c_function_context"
.LASF146:
	.string	"mode_class"
.LASF773:
	.string	"MULT"
.LASF177:
	.string	"SET_TYPE"
.LASF151:
	.string	"MODE_CC"
.LASF459:
	.string	"vars"
.LASF708:
	.string	"MATCH_SCRATCH"
.LASF1327:
	.string	"TV_IFCVT"
.LASF211:
	.string	"CALL_EXPR"
.LASF93:
	.string	"PQImode"
.LASF246:
	.string	"BIT_AND_EXPR"
.LASF1503:
	.string	"complit"
.LASF1186:
	.string	"stmt_tree"
.LASF285:
	.string	"REALPART_EXPR"
.LASF1046:
	.string	"RID_OUT"
.LASF960:
	.string	"CPP_QUERY"
.LASF125:
	.string	"V8HImode"
.LASF1444:
	.string	"lookup_label"
.LASF795:
	.string	"UNGT"
.LASF1427:
	.string	"nargs"
.LASF1443:
	.string	"redeclaration_error_message"
.LASF533:
	.string	"x_temp_slots"
.LASF618:
	.string	"TI_INTSI_TYPE"
.LASF327:
	.string	"BUILT_IN_CIMAGF"
.LASF578:
	.string	"nonlocal_flag"
.LASF66:
	.string	"_old_offset"
.LASF425:
	.string	"deprecated_flag"
.LASF1299:
	.string	"end_function"
.LASF1467:
	.string	"type_dep"
.LASF1332:
	.string	"TV_GLOBAL_ALLOC"
.LASF978:
	.string	"CPP_LSHIFT_EQ"
.LASF761:
	.string	"SUBREG"
.LASF477:
	.string	"restrict_flag"
.LASF1026:
	.string	"RID_LONG"
.LASF1453:
	.string	"thislevel_only"
.LASF555:
	.string	"calls_longjmp"
.LASF128:
	.string	"V16QImode"
.LASF1614:
	.string	"extract_interface_info"
.LASF315:
	.string	"BUILT_IN_FABS"
.LASF1539:
	.string	"typemodlist"
.LASF1661:
	.string	"warn_return_type"
.LASF1139:
	.string	"RID_FIRST_MODIFIER"
.LASF1420:
	.string	"oldtype"
.LASF23:
	.string	"decl"
.LASF1651:
	.string	"current_function_decl"
.LASF286:
	.string	"IMAGPART_EXPR"
.LASF84:
	.string	"long long int"
.LASF653:
	.string	"TI_UV2SI_TYPE"
.LASF1392:
	.string	"c_print_identifier"
.LASF608:
	.string	"inlined_fns"
.LASF679:
	.string	"itk_none"
.LASF65:
	.string	"_flags2"
.LASF699:
	.string	"SBITSIZETYPE"
.LASF1687:
	.string	"warn_missing_format_attribute"
.LASF104:
	.string	"QCmode"
.LASF759:
	.string	"VALUE"
.LASF1050:
	.string	"RID_ONEWAY"
.LASF739:
	.string	"NOTE"
.LASF1521:
	.string	"typedef_decl"
.LASF214:
	.string	"CLEANUP_POINT_EXPR"
.LASF1347:
	.string	"TV_FROM_SSA"
.LASF977:
	.string	"CPP_RSHIFT_EQ"
.LASF1313:
	.string	"TV_CPP"
.LASF894:
	.string	"GR_MAX"
.LASF1196:
	.string	"COMPOUND_STMT"
.LASF33:
	.string	"sse_nregs"
.LASF1515:
	.string	"volatilep"
.LASF783:
	.string	"UMIN"
.LASF650:
	.string	"TI_UV8HI_TYPE"
.LASF184:
	.string	"REAL_CST"
.LASF390:
	.string	"BUILT_IN_ISLESS"
.LASF348:
	.string	"BUILT_IN_STRCHR"
.LASF404:
	.string	"BUILT_IN_VA_END"
.LASF856:
	.string	"basic_block_def"
.LASF1063:
	.string	"RID_FOR"
.LASF1585:
	.string	"argct"
.LASF963:
	.string	"CPP_OPEN_PAREN"
.LASF1520:
	.string	"defaulted_int"
.LASF1635:
	.string	"global_binding_level"
.LASF1733:
	.string	"warn_missing_prototypes"
.LASF482:
	.string	"reference_to"
.LASF1736:
	.string	"c-decl.c"
.LASF1100:
	.string	"RID_NAMESPACE"
.LASF233:
	.string	"FIX_ROUND_EXPR"
.LASF1728:
	.string	"pending_invalid_xref_file"
.LASF1280:
	.string	"section_type_flags"
.LASF260:
	.string	"NE_EXPR"
.LASF926:
	.string	"varasm_status"
.LASF368:
	.string	"BUILT_IN_APPLY"
.LASF7:
	.string	"used"
.LASF1337:
	.string	"TV_RENAME_REGISTERS"
.LASF1416:
	.string	"olddecl"
.LASF355:
	.string	"BUILT_IN_COSF"
.LASF168:
	.string	"ENUMERAL_TYPE"
.LASF1398:
	.string	"in_parm_level_p"
.LASF1189:
	.string	"c_tree_code"
.LASF1389:
	.string	"argstart"
.LASF903:
	.string	"sequence_rtl_expr"
.LASF863:
	.string	"NOTE_INSN_LOOP_BEG"
.LASF1356:
	.string	"FIELD"
.LASF512:
	.string	"x_function_call_count"
.LASF1413:
	.string	"prev"
.LASF111:
	.string	"CHImode"
.LASF1471:
	.string	"library_name"
.LASF324:
	.string	"BUILT_IN_CREALF"
.LASF204:
	.string	"CONSTRUCTOR"
.LASF457:
	.string	"abstract_flag"
.LASF325:
	.string	"BUILT_IN_CREALL"
.LASF592:
	.string	"non_addr_const_p"
.LASF932:
	.string	"x_scope_stmt_stack"
.LASF445:
	.string	"elements"
.LASF912:
	.string	"regno_pointer_align_length"
.LASF907:
	.string	"x_first_insn"
.LASF669:
	.string	"itk_signed_char"
.LASF921:
	.string	"x_apply_args_value"
.LASF1688:
	.string	"warn_pointer_arith"
.LASF1724:
	.string	"ggc_pending_trees"
.LASF755:
	.string	"CONST_DOUBLE"
.LASF370:
	.string	"BUILT_IN_SETJMP"
.LASF953:
	.string	"CPP_RSHIFT"
.LASF387:
	.string	"BUILT_IN_FPRINTF_UNLOCKED"
.LASF675:
	.string	"itk_long"
.LASF140:
	.string	"CCNOmode"
.LASF999:
	.string	"CPP_CHAR"
.LASF121:
	.string	"V4HImode"
.LASF793:
	.string	"UNEQ"
.LASF945:
	.string	"CPP_PLUS"
.LASF162:
	.string	"BLOCK"
.LASF776:
	.string	"ASHIFT"
.LASF647:
	.string	"TI_VOID_LIST_NODE"
.LASF781:
	.string	"SMIN"
.LASF1504:
	.string	"__FUNCTION__"
.LASF1502:
	.string	"build_compound_literal"
.LASF768:
	.string	"IF_THEN_ELSE"
.LASF1105:
	.string	"RID_TRUE"
.LASF581:
	.string	"bit_field_flag"
.LASF970:
	.string	"CPP_MINUS_EQ"
.LASF375:
	.string	"BUILT_IN_PUTS"
.LASF1594:
	.string	"saved_warn_shadow"
.LASF1558:
	.string	"parmlist_tags_warning"
.LASF1137:
	.string	"RID_AT_IMPLEMENTATION"
.LASF1303:
	.string	"outlining_inline_function"
.LASF1370:
	.string	"keep_if_subblocks"
.LASF584:
	.string	"in_system_header_flag"
.LASF1414:
	.string	"pushtag"
.LASF1608:
	.string	"mark_c_function_context"
.LASF1320:
	.string	"TV_CSE"
.LASF1519:
	.string	"explicit_char"
.LASF587:
	.string	"transparent_union"
.LASF1209:
	.string	"SCOPE_STMT"
.LASF875:
	.string	"NOTE_INSN_REPEATED_LINE_NUMBER"
.LASF1004:
	.string	"CPP_HEADER_NAME"
.LASF501:
	.string	"outer"
.LASF609:
	.string	"vindex"
.LASF709:
	.string	"MATCH_DUP"
.LASF1475:
	.string	"shadow_tag_warned"
.LASF872:
	.string	"NOTE_INSN_FUNCTION_BEG"
.LASF910:
	.string	"x_last_linenum"
.LASF186:
	.string	"VECTOR_CST"
.LASF37:
	.string	"unsigned int"
.LASF278:
	.string	"RTL_EXPR"
.LASF1306:
	.string	"TV_TOTAL"
.LASF841:
	.string	"tree_node"
.LASF1287:
	.string	"define"
.LASF517:
	.string	"x_cleanup_label"
.LASF1014:
	.string	"BT_BASE_FILE"
.LASF786:
	.string	"PRE_INC"
.LASF267:
	.string	"UNEQ_EXPR"
.LASF340:
	.string	"BUILT_IN_STRNCPY"
.LASF976:
	.string	"CPP_XOR_EQ"
.LASF1552:
	.string	"get_parm_info"
.LASF832:
	.string	"max_after_vec"
.LASF164:
	.string	"INTEGER_TYPE"
.LASF794:
	.string	"UNGE"
.LASF1154:
	.string	"CTI_UINTMAX_TYPE"
.LASF906:
	.string	"x_first_label_num"
.LASF1396:
	.string	"declare_parm_level"
.LASF577:
	.string	"external_flag"
.LASF44:
	.string	"short int"
.LASF271:
	.string	"RANGE_EXPR"
.LASF571:
	.string	"uses_pic_offset_table"
.LASF561:
	.string	"has_computed_jump"
.LASF350:
	.string	"BUILT_IN_SQRT"
.LASF200:
	.string	"BUFFER_REF"
.LASF908:
	.string	"x_last_insn"
.LASF1068:
	.string	"RID_CONTINUE"
.LASF564:
	.string	"profile"
.LASF68:
	.string	"_vtable_offset"
.LASF283:
	.string	"COMPLEX_EXPR"
.LASF396:
	.string	"BUILT_IN_DWARF_FP_REGNUM"
.LASF264:
	.string	"UNLE_EXPR"
.LASF1372:
	.string	"parm_order"
.LASF547:
	.string	"preferred_stack_boundary"
.LASF981:
	.string	"CPP_HASH"
.LASF1530:
	.string	"returned_attrs"
.LASF1088:
	.string	"RID_C99_FUNCTION_NAME"
.LASF1022:
	.string	"builtin"
.LASF85:
	.string	"VOIDmode"
.LASF1385:
	.string	"argv"
.LASF848:
	.string	"rt_addr_diff_vec_flags"
.LASF646:
	.string	"TI_VA_LIST_TYPE"
.LASF681:
	.string	"min_length"
.LASF892:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF811:
	.string	"LO_SUM"
.LASF1458:
	.string	"lookup_tag_reverse"
.LASF1277:
	.string	"ms_bitfield_layout_p"
.LASF341:
	.string	"BUILT_IN_STRCMP"
.LASF1474:
	.string	"declspecs"
.LASF165:
	.string	"REAL_TYPE"
.LASF631:
	.string	"TI_SIZE_ONE"
.LASF1649:
	.string	"pedantic_lvalues"
.LASF1103:
	.string	"RID_THIS"
.LASF1685:
	.string	"warn_format_security"
.LASF1618:
	.string	"record_builtin_type"
.LASF302:
	.string	"EXPR_WITH_FILE_LOCATION"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
