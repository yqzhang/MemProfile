	.file	"toplev.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 toplev.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.comm	progname,8,8
	.comm	save_argc,4,4
	.comm	save_argv,8,8
	.comm	input_filename,8,8
	.comm	main_input_filename,8,8
	.comm	lineno,4,4
	.comm	no_new_pseudos,4,4
	.comm	input_file_stack,8,8
	.comm	input_file_stack_tick,4,4
	.comm	dump_base_name,8,8
	.globl	debug_hooks
	.data
	.align 8
	.type	debug_hooks, @object
	.size	debug_hooks, 8
debug_hooks:
	.quad	do_nothing_debug_hooks
	.section	.rodata
.LC0:
	.string	"rtl"
.LC1:
	.string	"sibling"
.LC2:
	.string	"eh"
.LC3:
	.string	"jump"
.LC4:
	.string	"ssa"
.LC5:
	.string	"ssaccp"
.LC6:
	.string	"ssadce"
.LC7:
	.string	"ussa"
.LC8:
	.string	"cse"
.LC9:
	.string	"addressof"
.LC10:
	.string	"gcse"
.LC11:
	.string	"loop"
.LC12:
	.string	"cse2"
.LC13:
	.string	"cfg"
.LC14:
	.string	"bp"
.LC15:
	.string	"life"
.LC16:
	.string	"combine"
.LC17:
	.string	"ce"
.LC18:
	.string	"regmove"
.LC19:
	.string	"sched"
.LC20:
	.string	"lreg"
.LC21:
	.string	"greg"
.LC22:
	.string	"postreload"
.LC23:
	.string	"flow2"
.LC24:
	.string	"peephole2"
.LC25:
	.string	"rnreg"
.LC26:
	.string	"ce2"
.LC27:
	.string	"sched2"
.LC28:
	.string	"stack"
.LC29:
	.string	"bbro"
.LC30:
	.string	"mach"
.LC31:
	.string	"dbr"
	.data
	.align 32
	.type	dump_file, @object
	.size	dump_file, 512
dump_file:
# extension:
	.quad	.LC0
# debug_switch:
	.byte	114
# graph_dump_p:
	.byte	0
# enabled:
	.byte	0
# initialized:
	.byte	0
	.zero	4
# extension:
	.quad	.LC1
# debug_switch:
	.byte	105
# graph_dump_p:
	.byte	0
# enabled:
	.byte	0
# initialized:
	.byte	0
	.zero	4
# extension:
	.quad	.LC2
# debug_switch:
	.byte	104
# graph_dump_p:
	.byte	0
# enabled:
	.byte	0
# initialized:
	.byte	0
	.zero	4
# extension:
	.quad	.LC3
# debug_switch:
	.byte	106
# graph_dump_p:
	.byte	0
# enabled:
	.byte	0
# initialized:
	.byte	0
	.zero	4
# extension:
	.quad	.LC4
# debug_switch:
	.byte	101
# graph_dump_p:
	.byte	1
# enabled:
	.byte	0
# initialized:
	.byte	0
	.zero	4
# extension:
	.quad	.LC5
# debug_switch:
	.byte	87
# graph_dump_p:
	.byte	1
# enabled:
	.byte	0
# initialized:
	.byte	0
	.zero	4
# extension:
	.quad	.LC6
# debug_switch:
	.byte	88
# graph_dump_p:
	.byte	1
# enabled:
	.byte	0
# initialized:
	.byte	0
	.zero	4
# extension:
	.quad	.LC7
# debug_switch:
	.byte	101
# graph_dump_p:
	.byte	1
# enabled:
	.byte	0
# initialized:
	.byte	0
	.zero	4
# extension:
	.quad	.LC8
# debug_switch:
	.byte	115
# graph_dump_p:
	.byte	0
# enabled:
	.byte	0
# initialized:
	.byte	0
	.zero	4
# extension:
	.quad	.LC9
# debug_switch:
	.byte	70
# graph_dump_p:
	.byte	0
# enabled:
	.byte	0
# initialized:
	.byte	0
	.zero	4
# extension:
	.quad	.LC10
# debug_switch:
	.byte	71
# graph_dump_p:
	.byte	1
# enabled:
	.byte	0
# initialized:
	.byte	0
	.zero	4
# extension:
	.quad	.LC11
# debug_switch:
	.byte	76
# graph_dump_p:
	.byte	1
# enabled:
	.byte	0
# initialized:
	.byte	0
	.zero	4
# extension:
	.quad	.LC12
# debug_switch:
	.byte	116
# graph_dump_p:
	.byte	1
# enabled:
	.byte	0
# initialized:
	.byte	0
	.zero	4
# extension:
	.quad	.LC13
# debug_switch:
	.byte	102
# graph_dump_p:
	.byte	1
# enabled:
	.byte	0
# initialized:
	.byte	0
	.zero	4
# extension:
	.quad	.LC14
# debug_switch:
	.byte	98
# graph_dump_p:
	.byte	1
# enabled:
	.byte	0
# initialized:
	.byte	0
	.zero	4
# extension:
	.quad	.LC15
# debug_switch:
	.byte	102
# graph_dump_p:
	.byte	1
# enabled:
	.byte	0
# initialized:
	.byte	0
	.zero	4
# extension:
	.quad	.LC16
# debug_switch:
	.byte	99
# graph_dump_p:
	.byte	1
# enabled:
	.byte	0
# initialized:
	.byte	0
	.zero	4
# extension:
	.quad	.LC17
# debug_switch:
	.byte	67
# graph_dump_p:
	.byte	1
# enabled:
	.byte	0
# initialized:
	.byte	0
	.zero	4
# extension:
	.quad	.LC18
# debug_switch:
	.byte	78
# graph_dump_p:
	.byte	1
# enabled:
	.byte	0
# initialized:
	.byte	0
	.zero	4
# extension:
	.quad	.LC19
# debug_switch:
	.byte	83
# graph_dump_p:
	.byte	1
# enabled:
	.byte	0
# initialized:
	.byte	0
	.zero	4
# extension:
	.quad	.LC20
# debug_switch:
	.byte	108
# graph_dump_p:
	.byte	1
# enabled:
	.byte	0
# initialized:
	.byte	0
	.zero	4
# extension:
	.quad	.LC21
# debug_switch:
	.byte	103
# graph_dump_p:
	.byte	1
# enabled:
	.byte	0
# initialized:
	.byte	0
	.zero	4
# extension:
	.quad	.LC22
# debug_switch:
	.byte	111
# graph_dump_p:
	.byte	1
# enabled:
	.byte	0
# initialized:
	.byte	0
	.zero	4
# extension:
	.quad	.LC23
# debug_switch:
	.byte	119
# graph_dump_p:
	.byte	1
# enabled:
	.byte	0
# initialized:
	.byte	0
	.zero	4
# extension:
	.quad	.LC24
# debug_switch:
	.byte	122
# graph_dump_p:
	.byte	1
# enabled:
	.byte	0
# initialized:
	.byte	0
	.zero	4
# extension:
	.quad	.LC25
# debug_switch:
	.byte	110
# graph_dump_p:
	.byte	1
# enabled:
	.byte	0
# initialized:
	.byte	0
	.zero	4
# extension:
	.quad	.LC26
# debug_switch:
	.byte	69
# graph_dump_p:
	.byte	1
# enabled:
	.byte	0
# initialized:
	.byte	0
	.zero	4
# extension:
	.quad	.LC27
# debug_switch:
	.byte	82
# graph_dump_p:
	.byte	1
# enabled:
	.byte	0
# initialized:
	.byte	0
	.zero	4
# extension:
	.quad	.LC28
# debug_switch:
	.byte	107
# graph_dump_p:
	.byte	1
# enabled:
	.byte	0
# initialized:
	.byte	0
	.zero	4
# extension:
	.quad	.LC29
# debug_switch:
	.byte	66
# graph_dump_p:
	.byte	1
# enabled:
	.byte	0
# initialized:
	.byte	0
	.zero	4
# extension:
	.quad	.LC30
# debug_switch:
	.byte	77
# graph_dump_p:
	.byte	1
# enabled:
	.byte	0
# initialized:
	.byte	0
	.zero	4
# extension:
	.quad	.LC31
# debug_switch:
	.byte	100
# graph_dump_p:
	.byte	0
# enabled:
	.byte	0
# initialized:
	.byte	0
	.zero	4
	.comm	rtl_dump_and_exit,4,4
	.comm	flag_print_asm_name,4,4
	.local	version_flag
	.comm	version_flag,4,4
	.local	filename
	.comm	filename,8,8
	.comm	graph_dump_format,4,4
	.comm	asm_file_name,8,8
	.comm	g_switch_value,4,4
	.comm	g_switch_set,4,4
	.globl	write_symbols
	.bss
	.align 4
	.type	write_symbols, @object
	.size	write_symbols, 4
write_symbols:
	.zero	4
	.globl	debug_info_level
	.align 4
	.type	debug_info_level, @object
	.size	debug_info_level, 4
debug_info_level:
	.zero	4
	.globl	use_gnu_debug_info_extensions
	.align 4
	.type	use_gnu_debug_info_extensions, @object
	.size	use_gnu_debug_info_extensions, 4
use_gnu_debug_info_extensions:
	.zero	4
	.globl	optimize
	.data
	.align 4
	.type	optimize, @object
	.size	optimize, 4
optimize:
	.long	3
	.globl	optimize_size
	.bss
	.align 4
	.type	optimize_size, @object
	.size	optimize_size, 4
optimize_size:
	.zero	4
	.local	exit_after_options
	.comm	exit_after_options,4,4
	.comm	current_function_decl,8,8
	.comm	current_function_func_begin_label,8,8
	.comm	decl_printable_name,8,8
	.globl	lang_expand_expr
	.align 8
	.type	lang_expand_expr, @object
	.size	lang_expand_expr, 8
lang_expand_expr:
	.zero	8
	.globl	incomplete_decl_finalize_hook
	.align 8
	.type	incomplete_decl_finalize_hook, @object
	.size	incomplete_decl_finalize_hook, 8
incomplete_decl_finalize_hook:
	.zero	8
	.globl	flag_eliminate_dwarf2_dups
	.align 4
	.type	flag_eliminate_dwarf2_dups, @object
	.size	flag_eliminate_dwarf2_dups, 4
flag_eliminate_dwarf2_dups:
	.zero	4
	.globl	profile_flag
	.align 4
	.type	profile_flag, @object
	.size	profile_flag, 4
profile_flag:
	.zero	4
	.globl	profile_arc_flag
	.align 4
	.type	profile_arc_flag, @object
	.size	profile_arc_flag, 4
profile_arc_flag:
	.zero	4
	.globl	flag_test_coverage
	.align 4
	.type	flag_test_coverage, @object
	.size	flag_test_coverage, 4
flag_test_coverage:
	.zero	4
	.globl	flag_branch_probabilities
	.align 4
	.type	flag_branch_probabilities, @object
	.size	flag_branch_probabilities, 4
flag_branch_probabilities:
	.zero	4
	.globl	flag_reorder_blocks
	.align 4
	.type	flag_reorder_blocks, @object
	.size	flag_reorder_blocks, 4
flag_reorder_blocks:
	.zero	4
	.globl	flag_rename_registers
	.align 4
	.type	flag_rename_registers, @object
	.size	flag_rename_registers, 4
flag_rename_registers:
	.zero	4
	.globl	flag_cprop_registers
	.align 4
	.type	flag_cprop_registers, @object
	.size	flag_cprop_registers, 4
flag_cprop_registers:
	.zero	4
	.globl	pedantic
	.align 4
	.type	pedantic, @object
	.size	pedantic, 4
pedantic:
	.zero	4
	.globl	in_system_header
	.align 4
	.type	in_system_header, @object
	.size	in_system_header, 4
in_system_header:
	.zero	4
	.globl	quiet_flag
	.data
	.align 4
	.type	quiet_flag, @object
	.size	quiet_flag, 4
quiet_flag:
	.long	1
	.globl	time_report
	.bss
	.align 4
	.type	time_report, @object
	.size	time_report, 4
time_report:
	.zero	4
	.globl	mem_report
	.align 4
	.type	mem_report, @object
	.size	mem_report, 4
mem_report:
	.zero	4
	.globl	flag_detailed_statistics
	.align 4
	.type	flag_detailed_statistics, @object
	.size	flag_detailed_statistics, 4
flag_detailed_statistics:
	.zero	4
	.comm	flag_signed_char,4,4
	.comm	flag_short_enums,4,4
	.globl	flag_caller_saves
	.align 4
	.type	flag_caller_saves, @object
	.size	flag_caller_saves, 4
flag_caller_saves:
	.zero	4
	.globl	flag_pcc_struct_return
	.data
	.align 4
	.type	flag_pcc_struct_return, @object
	.size	flag_pcc_struct_return, 4
flag_pcc_struct_return:
	.long	1
	.globl	flag_force_mem
	.bss
	.align 4
	.type	flag_force_mem, @object
	.size	flag_force_mem, 4
flag_force_mem:
	.zero	4
	.globl	flag_force_addr
	.data
	.align 4
	.type	flag_force_addr, @object
	.size	flag_force_addr, 4
flag_force_addr:
	.long	1
	.globl	flag_defer_pop
	.bss
	.align 4
	.type	flag_defer_pop, @object
	.size	flag_defer_pop, 4
flag_defer_pop:
	.zero	4
	.globl	flag_float_store
	.align 4
	.type	flag_float_store, @object
	.size	flag_float_store, 4
flag_float_store:
	.zero	4
	.comm	flag_cse_follow_jumps,4,4
	.comm	flag_cse_skip_blocks,4,4
	.comm	flag_expensive_optimizations,4,4
	.comm	flag_thread_jumps,4,4
	.globl	flag_strength_reduce
	.align 4
	.type	flag_strength_reduce, @object
	.size	flag_strength_reduce, 4
flag_strength_reduce:
	.zero	4
	.comm	flag_unroll_loops,4,4
	.comm	flag_unroll_all_loops,4,4
	.comm	flag_prefetch_loop_arrays,4,4
	.globl	flag_move_all_movables
	.align 4
	.type	flag_move_all_movables, @object
	.size	flag_move_all_movables, 4
flag_move_all_movables:
	.zero	4
	.globl	flag_reduce_all_givs
	.align 4
	.type	flag_reduce_all_givs, @object
	.size	flag_reduce_all_givs, 4
flag_reduce_all_givs:
	.zero	4
	.globl	flag_regmove
	.align 4
	.type	flag_regmove, @object
	.size	flag_regmove, 4
flag_regmove:
	.zero	4
	.globl	flag_writable_strings
	.align 4
	.type	flag_writable_strings, @object
	.size	flag_writable_strings, 4
flag_writable_strings:
	.zero	4
	.globl	flag_no_function_cse
	.align 4
	.type	flag_no_function_cse, @object
	.size	flag_no_function_cse, 4
flag_no_function_cse:
	.zero	4
	.globl	flag_omit_frame_pointer
	.data
	.align 4
	.type	flag_omit_frame_pointer, @object
	.size	flag_omit_frame_pointer, 4
flag_omit_frame_pointer:
	.long	1
	.globl	flag_function_sections
	.bss
	.align 4
	.type	flag_function_sections, @object
	.size	flag_function_sections, 4
flag_function_sections:
	.zero	4
	.globl	flag_data_sections
	.align 4
	.type	flag_data_sections, @object
	.size	flag_data_sections, 4
flag_data_sections:
	.zero	4
	.globl	flag_no_peephole
	.align 4
	.type	flag_no_peephole, @object
	.size	flag_no_peephole, 4
flag_no_peephole:
	.zero	4
	.globl	flag_optimize_sibling_calls
	.align 4
	.type	flag_optimize_sibling_calls, @object
	.size	flag_optimize_sibling_calls, 4
flag_optimize_sibling_calls:
	.zero	4
	.globl	flag_errno_math
	.data
	.align 4
	.type	flag_errno_math, @object
	.size	flag_errno_math, 4
flag_errno_math:
	.long	1
	.globl	flag_unsafe_math_optimizations
	.align 4
	.type	flag_unsafe_math_optimizations, @object
	.size	flag_unsafe_math_optimizations, 4
flag_unsafe_math_optimizations:
	.long	1
	.globl	flag_trapping_math
	.align 4
	.type	flag_trapping_math, @object
	.size	flag_trapping_math, 4
flag_trapping_math:
	.long	1
	.globl	flag_complex_divide_method
	.bss
	.align 4
	.type	flag_complex_divide_method, @object
	.size	flag_complex_divide_method, 4
flag_complex_divide_method:
	.zero	4
	.comm	flag_volatile,4,4
	.comm	flag_volatile_global,4,4
	.comm	flag_volatile_static,4,4
	.globl	flag_syntax_only
	.align 4
	.type	flag_syntax_only, @object
	.size	flag_syntax_only, 4
flag_syntax_only:
	.zero	4
	.local	flag_gcse
	.comm	flag_gcse,4,4
	.local	flag_delete_null_pointer_checks
	.comm	flag_delete_null_pointer_checks,4,4
	.globl	flag_gcse_lm
	.data
	.align 4
	.type	flag_gcse_lm, @object
	.size	flag_gcse_lm, 4
flag_gcse_lm:
	.long	1
	.globl	flag_gcse_sm
	.align 4
	.type	flag_gcse_sm, @object
	.size	flag_gcse_sm, 4
flag_gcse_sm:
	.long	1
	.align 4
	.type	flag_rerun_cse_after_loop, @object
	.size	flag_rerun_cse_after_loop, 4
flag_rerun_cse_after_loop:
	.long	1
	.globl	flag_rerun_loop_opt
	.align 4
	.type	flag_rerun_loop_opt, @object
	.size	flag_rerun_loop_opt, 4
flag_rerun_loop_opt:
	.long	1
	.comm	flag_inline_functions,4,4
	.comm	flag_keep_inline_functions,4,4
	.globl	flag_no_inline
	.align 4
	.type	flag_no_inline, @object
	.size	flag_no_inline, 4
flag_no_inline:
	.long	2
	.globl	flag_really_no_inline
	.align 4
	.type	flag_really_no_inline, @object
	.size	flag_really_no_inline, 4
flag_really_no_inline:
	.long	2
	.globl	flag_keep_static_consts
	.align 4
	.type	flag_keep_static_consts, @object
	.size	flag_keep_static_consts, 4
flag_keep_static_consts:
	.long	1
	.globl	flag_gen_aux_info
	.bss
	.align 4
	.type	flag_gen_aux_info, @object
	.size	flag_gen_aux_info, 4
flag_gen_aux_info:
	.zero	4
	.local	aux_info_file_name
	.comm	aux_info_file_name,8,8
	.comm	flag_shared_data,4,4
	.comm	flag_delayed_branch,4,4
	.comm	flag_pic,4,4
	.comm	flag_exceptions,4,4
	.globl	flag_unwind_tables
	.align 4
	.type	flag_unwind_tables, @object
	.size	flag_unwind_tables, 4
flag_unwind_tables:
	.zero	4
	.globl	flag_asynchronous_unwind_tables
	.align 4
	.type	flag_asynchronous_unwind_tables, @object
	.size	flag_asynchronous_unwind_tables, 4
flag_asynchronous_unwind_tables:
	.zero	4
	.comm	flag_no_common,4,4
	.comm	flag_pretend_float,4,4
	.globl	flag_pedantic_errors
	.align 4
	.type	flag_pedantic_errors, @object
	.size	flag_pedantic_errors, 4
flag_pedantic_errors:
	.zero	4
	.globl	flag_schedule_insns
	.align 4
	.type	flag_schedule_insns, @object
	.size	flag_schedule_insns, 4
flag_schedule_insns:
	.zero	4
	.globl	flag_schedule_insns_after_reload
	.align 4
	.type	flag_schedule_insns_after_reload, @object
	.size	flag_schedule_insns_after_reload, 4
flag_schedule_insns_after_reload:
	.zero	4
	.globl	flag_schedule_interblock
	.data
	.align 4
	.type	flag_schedule_interblock, @object
	.size	flag_schedule_interblock, 4
flag_schedule_interblock:
	.long	1
	.globl	flag_schedule_speculative
	.align 4
	.type	flag_schedule_speculative, @object
	.size	flag_schedule_speculative, 4
flag_schedule_speculative:
	.long	1
	.globl	flag_schedule_speculative_load
	.bss
	.align 4
	.type	flag_schedule_speculative_load, @object
	.size	flag_schedule_speculative_load, 4
flag_schedule_speculative_load:
	.zero	4
	.globl	flag_schedule_speculative_load_dangerous
	.align 4
	.type	flag_schedule_speculative_load_dangerous, @object
	.size	flag_schedule_speculative_load_dangerous, 4
flag_schedule_speculative_load_dangerous:
	.zero	4
	.comm	flag_single_precision_constant,4,4
	.globl	flag_branch_on_count_reg
	.data
	.align 4
	.type	flag_branch_on_count_reg, @object
	.size	flag_branch_on_count_reg, 4
flag_branch_on_count_reg:
	.long	1
	.globl	flag_inhibit_size_directive
	.bss
	.align 4
	.type	flag_inhibit_size_directive, @object
	.size	flag_inhibit_size_directive, 4
flag_inhibit_size_directive:
	.zero	4
	.globl	flag_verbose_asm
	.align 4
	.type	flag_verbose_asm, @object
	.size	flag_verbose_asm, 4
flag_verbose_asm:
	.zero	4
	.globl	flag_debug_asm
	.align 4
	.type	flag_debug_asm, @object
	.size	flag_debug_asm, 4
flag_debug_asm:
	.zero	4
	.globl	flag_dump_rtl_in_asm
	.align 4
	.type	flag_dump_rtl_in_asm, @object
	.size	flag_dump_rtl_in_asm, 4
flag_dump_rtl_in_asm:
	.zero	4
	.globl	flag_gnu_linker
	.data
	.align 4
	.type	flag_gnu_linker, @object
	.size	flag_gnu_linker, 4
flag_gnu_linker:
	.long	1
	.globl	flag_ssa
	.align 4
	.type	flag_ssa, @object
	.size	flag_ssa, 4
flag_ssa:
	.long	1
	.globl	flag_ssa_ccp
	.bss
	.align 4
	.type	flag_ssa_ccp, @object
	.size	flag_ssa_ccp, 4
flag_ssa_ccp:
	.zero	4
	.globl	flag_ssa_dce
	.data
	.align 4
	.type	flag_ssa_dce, @object
	.size	flag_ssa_dce, 4
flag_ssa_dce:
	.long	1
	.globl	flag_pack_struct
	.bss
	.align 4
	.type	flag_pack_struct, @object
	.size	flag_pack_struct, 4
flag_pack_struct:
	.zero	4
	.comm	flag_stack_check,4,4
	.comm	stack_limit_rtx,8,8
	.globl	flag_argument_noalias
	.align 4
	.type	flag_argument_noalias, @object
	.size	flag_argument_noalias, 4
flag_argument_noalias:
	.zero	4
	.globl	flag_strict_aliasing
	.align 4
	.type	flag_strict_aliasing, @object
	.size	flag_strict_aliasing, 4
flag_strict_aliasing:
	.zero	4
	.globl	flag_instrument_function_entry_exit
	.align 4
	.type	flag_instrument_function_entry_exit, @object
	.size	flag_instrument_function_entry_exit, 4
flag_instrument_function_entry_exit:
	.zero	4
	.globl	flag_no_ident
	.align 4
	.type	flag_no_ident, @object
	.size	flag_no_ident, 4
flag_no_ident:
	.zero	4
	.globl	flag_peephole2
	.align 4
	.type	flag_peephole2, @object
	.size	flag_peephole2, 4
flag_peephole2:
	.zero	4
	.globl	flag_guess_branch_prob
	.align 4
	.type	flag_guess_branch_prob, @object
	.size	flag_guess_branch_prob, 4
flag_guess_branch_prob:
	.zero	4
	.globl	flag_bounded_pointers
	.align 4
	.type	flag_bounded_pointers, @object
	.size	flag_bounded_pointers, 4
flag_bounded_pointers:
	.zero	4
	.globl	flag_bounds_check
	.align 4
	.type	flag_bounds_check, @object
	.size	flag_bounds_check, 4
flag_bounds_check:
	.zero	4
	.globl	flag_merge_constants
	.data
	.align 4
	.type	flag_merge_constants, @object
	.size	flag_merge_constants, 4
flag_merge_constants:
	.long	1
	.globl	flag_renumber_insns
	.align 4
	.type	flag_renumber_insns, @object
	.size	flag_renumber_insns, 4
flag_renumber_insns:
	.long	1
	.comm	align_loops,4,4
	.comm	align_loops_log,4,4
	.comm	align_loops_max_skip,4,4
	.comm	align_jumps,4,4
	.comm	align_jumps_log,4,4
	.comm	align_jumps_max_skip,4,4
	.comm	align_labels,4,4
	.comm	align_labels_log,4,4
	.comm	align_labels_max_skip,4,4
	.comm	align_functions,4,4
	.comm	align_functions_log,4,4
	.local	da
	.comm	da,8,8
	.section	.rodata
.LC32:
	.string	""
	.align 8
.LC33:
	.string	"Generate debugging info in default format"
.LC34:
	.string	"gdb"
	.align 8
.LC35:
	.string	"Generate debugging info in default extended format"
.LC36:
	.string	"stabs"
	.align 8
.LC37:
	.string	"Generate STABS format debug info"
.LC38:
	.string	"stabs+"
	.align 8
.LC39:
	.string	"Generate extended STABS format debug info"
.LC40:
	.string	"dwarf-2"
.LC41:
	.string	"Generate DWARF-2 debug info"
	.align 32
	.type	debug_args, @object
	.size	debug_args, 144
debug_args:
# arg:
	.quad	.LC32
# debug_type:
	.long	0
# use_extensions_p:
	.long	1
# description:
	.quad	.LC33
# arg:
	.quad	.LC34
# debug_type:
	.long	0
# use_extensions_p:
	.long	1
# description:
	.quad	.LC35
# arg:
	.quad	.LC36
# debug_type:
	.long	1
# use_extensions_p:
	.long	0
# description:
	.quad	.LC37
# arg:
	.quad	.LC38
# debug_type:
	.long	1
# use_extensions_p:
	.long	1
# description:
	.quad	.LC39
# arg:
	.quad	.LC40
# debug_type:
	.long	4
# use_extensions_p:
	.long	0
# description:
	.quad	.LC41
# arg:
	.quad	0
# debug_type:
	.long	0
# use_extensions_p:
	.long	0
# description:
	.quad	0
	.globl	flag_trapv
	.bss
	.align 4
	.type	flag_trapv, @object
	.size	flag_trapv, 4
flag_trapv:
	.zero	4
	.globl	flag_leading_underscore
	.data
	.align 4
	.type	flag_leading_underscore, @object
	.size	flag_leading_underscore, 4
flag_leading_underscore:
	.long	-1
	.comm	user_label_prefix,8,8
	.section	.rodata
.LC42:
	.string	"max-inline-insns"
	.align 8
.LC43:
	.string	"The maximum number of instructions in a function that is eligible for inlining"
.LC44:
	.string	"max-delay-slot-insn-search"
	.align 8
.LC45:
	.string	"The maximum number of instructions to consider to fill a delay slot"
.LC46:
	.string	"max-delay-slot-live-search"
	.align 8
.LC47:
	.string	"The maximum number of instructions to consider to find accurate live register information"
.LC48:
	.string	"max-pending-list-length"
	.align 8
.LC49:
	.string	"The maximum length of scheduling's pending operations list"
.LC50:
	.string	"max-gcse-memory"
	.align 8
.LC51:
	.string	"The maximum amount of memory to be allocated by GCSE"
.LC52:
	.string	"max-gcse-passes"
	.align 8
.LC53:
	.string	"The maximum number of passes to make when doing GCSE"
	.align 32
	.type	lang_independent_params, @object
	.size	lang_independent_params, 168
lang_independent_params:
# option:
	.quad	.LC42
# value:
	.long	5500
# help:
	.zero	4
	.quad	.LC43
# option:
	.quad	.LC44
# value:
	.long	100
# help:
	.zero	4
	.quad	.LC45
# option:
	.quad	.LC46
# value:
	.long	333
# help:
	.zero	4
	.quad	.LC47
# option:
	.quad	.LC48
# value:
	.long	32
# help:
	.zero	4
	.quad	.LC49
# option:
	.quad	.LC50
# value:
	.long	314572800
# help:
	.zero	4
	.quad	.LC51
# option:
	.quad	.LC52
# value:
	.long	1
# help:
	.zero	4
	.quad	.LC53
# option:
	.quad	0
# value:
	.long	0
# help:
	.zero	4
	.quad	0
.LC54:
	.string	"eliminate-dwarf2-dups"
	.align 8
.LC55:
	.string	"Perform DWARF2 duplicate elimination"
.LC56:
	.string	"float-store"
	.align 8
.LC57:
	.string	"Do not store floats in registers"
.LC58:
	.string	"volatile"
	.align 8
.LC59:
	.string	"Consider all mem refs through pointers as volatile"
.LC60:
	.string	"volatile-global"
	.align 8
.LC61:
	.string	"Consider all mem refs to global data to be volatile"
.LC62:
	.string	"volatile-static"
	.align 8
.LC63:
	.string	"Consider all mem refs to static data to be volatile"
.LC64:
	.string	"defer-pop"
	.align 8
.LC65:
	.string	"Defer popping functions args from stack until later"
.LC66:
	.string	"omit-frame-pointer"
	.align 8
.LC67:
	.string	"When possible do not generate stack frames"
.LC68:
	.string	"optimize-sibling-calls"
	.align 8
.LC69:
	.string	"Optimize sibling and tail recursive calls"
.LC70:
	.string	"cse-follow-jumps"
	.align 8
.LC71:
	.string	"When running CSE, follow jumps to their targets"
.LC72:
	.string	"cse-skip-blocks"
	.align 8
.LC73:
	.string	"When running CSE, follow conditional jumps"
.LC74:
	.string	"expensive-optimizations"
	.align 8
.LC75:
	.string	"Perform a number of minor, expensive optimizations"
.LC76:
	.string	"thread-jumps"
	.align 8
.LC77:
	.string	"Perform jump threading optimizations"
.LC78:
	.string	"strength-reduce"
	.align 8
.LC79:
	.string	"Perform strength reduction optimizations"
.LC80:
	.string	"unroll-loops"
	.align 8
.LC81:
	.string	"Perform loop unrolling when iteration count is known"
.LC82:
	.string	"unroll-all-loops"
	.align 8
.LC83:
	.string	"Perform loop unrolling for all loops"
.LC84:
	.string	"prefetch-loop-arrays"
	.align 8
.LC85:
	.string	"Generate prefetch instructions, if available, for arrays in loops"
.LC86:
	.string	"move-all-movables"
	.align 8
.LC87:
	.string	"Force all loop invariant computations out of loops"
.LC88:
	.string	"reduce-all-givs"
	.align 8
.LC89:
	.string	"Strength reduce all loop general induction variables"
.LC90:
	.string	"writable-strings"
	.align 8
.LC91:
	.string	"Store strings in writable data section"
.LC92:
	.string	"peephole"
	.align 8
.LC93:
	.string	"Enable machine specific peephole optimizations"
.LC94:
	.string	"force-mem"
	.align 8
.LC95:
	.string	"Copy memory operands into registers before using"
.LC96:
	.string	"force-addr"
	.align 8
.LC97:
	.string	"Copy memory address constants into regs before using"
.LC98:
	.string	"function-cse"
	.align 8
.LC99:
	.string	"Allow function addresses to be held in registers"
.LC100:
	.string	"inline-functions"
	.align 8
.LC101:
	.string	"Integrate simple functions into their callers"
.LC102:
	.string	"keep-inline-functions"
	.align 8
.LC103:
	.string	"Generate code for funcs even if they are fully inlined"
.LC104:
	.string	"inline"
	.align 8
.LC105:
	.string	"Pay attention to the 'inline' keyword"
.LC106:
	.string	"keep-static-consts"
	.align 8
.LC107:
	.string	"Emit static const variables even if they are not used"
.LC108:
	.string	"syntax-only"
	.align 8
.LC109:
	.string	"Check for syntax errors, then stop"
.LC110:
	.string	"shared-data"
	.align 8
.LC111:
	.string	"Mark data as shared rather than private"
.LC112:
	.string	"caller-saves"
	.align 8
.LC113:
	.string	"Enable saving registers around function calls"
.LC114:
	.string	"pcc-struct-return"
	.align 8
.LC115:
	.string	"Return 'short' aggregates in memory, not registers"
.LC116:
	.string	"reg-struct-return"
	.align 8
.LC117:
	.string	"Return 'short' aggregates in registers"
.LC118:
	.string	"delayed-branch"
	.align 8
.LC119:
	.string	"Attempt to fill delay slots of branch instructions"
	.align 8
.LC120:
	.string	"Perform the global common subexpression elimination"
.LC121:
	.string	"gcse-lm"
	.align 8
.LC122:
	.string	"Perform enhanced load motion during global subexpression elimination"
.LC123:
	.string	"gcse-sm"
	.align 8
.LC124:
	.string	"Perform store motion after global subexpression elimination"
.LC125:
	.string	"rerun-cse-after-loop"
	.align 8
.LC126:
	.string	"Run CSE pass after loop optimizations"
.LC127:
	.string	"rerun-loop-opt"
.LC128:
	.string	"Run the loop optimizer twice"
.LC129:
	.string	"delete-null-pointer-checks"
	.align 8
.LC130:
	.string	"Delete useless null pointer checks"
.LC131:
	.string	"pretend-float"
	.align 8
.LC132:
	.string	"Pretend that host and target use the same FP format"
.LC133:
	.string	"schedule-insns"
	.align 8
.LC134:
	.string	"Reschedule instructions before register allocation"
.LC135:
	.string	"schedule-insns2"
	.align 8
.LC136:
	.string	"Reschedule instructions after register allocation"
.LC137:
	.string	"sched-interblock"
	.align 8
.LC138:
	.string	"Enable scheduling across basic blocks"
.LC139:
	.string	"sched-spec"
	.align 8
.LC140:
	.string	"Allow speculative motion of non-loads"
.LC141:
	.string	"sched-spec-load"
	.align 8
.LC142:
	.string	"Allow speculative motion of some loads"
.LC143:
	.string	"sched-spec-load-dangerous"
	.align 8
.LC144:
	.string	"Allow speculative motion of more loads"
.LC145:
	.string	"branch-count-reg"
	.align 8
.LC146:
	.string	"Replace add,compare,branch with branch on count reg"
.LC147:
	.string	"pic"
	.align 8
.LC148:
	.string	"Generate position independent code, if possible"
.LC149:
	.string	"PIC"
.LC150:
	.string	"exceptions"
.LC151:
	.string	"Enable exception handling"
.LC152:
	.string	"unwind-tables"
	.align 8
.LC153:
	.string	"Just generate unwind tables for exception handling"
.LC154:
	.string	"asynchronous-unwind-tables"
	.align 8
.LC155:
	.string	"Generate unwind tables exact at each instruction boundary"
.LC156:
	.string	"non-call-exceptions"
	.align 8
.LC157:
	.string	"Support synchronous non-call exceptions"
.LC158:
	.string	"profile-arcs"
	.align 8
.LC159:
	.string	"Insert arc based program profiling code"
.LC160:
	.string	"test-coverage"
	.align 8
.LC161:
	.string	"Create data files needed by gcov"
.LC162:
	.string	"branch-probabilities"
	.align 8
.LC163:
	.string	"Use profiling information for branch probabilities"
.LC164:
	.string	"reorder-blocks"
	.align 8
.LC165:
	.string	"Reorder basic blocks to improve code placement"
.LC166:
	.string	"rename-registers"
	.align 8
.LC167:
	.string	"Do the register renaming optimization pass"
.LC168:
	.string	"cprop-registers"
	.align 8
.LC169:
	.string	"Do the register copy-propagation optimization pass"
.LC170:
	.string	"common"
	.align 8
.LC171:
	.string	"Do not put uninitialized globals in the common section"
.LC172:
	.string	"inhibit-size-directive"
	.align 8
.LC173:
	.string	"Do not generate .size directives"
.LC174:
	.string	"function-sections"
	.align 8
.LC175:
	.string	"place each function into its own section"
.LC176:
	.string	"data-sections"
	.align 8
.LC177:
	.string	"place data items into their own section"
.LC178:
	.string	"verbose-asm"
	.align 8
.LC179:
	.string	"Add extra commentry to assembler output"
.LC180:
	.string	"gnu-linker"
	.align 8
.LC181:
	.string	"Output GNU ld formatted global initializers"
	.align 8
.LC182:
	.string	"Enables a register move optimization"
.LC183:
	.string	"optimize-register-move"
	.align 8
.LC184:
	.string	"Do the full regmove optimization pass"
.LC185:
	.string	"pack-struct"
	.align 8
.LC186:
	.string	"Pack structure members together without holes"
.LC187:
	.string	"stack-check"
	.align 8
.LC188:
	.string	"Insert stack checking code into the program"
.LC189:
	.string	"argument-alias"
	.align 8
.LC190:
	.string	"Specify that arguments may alias each other & globals"
.LC191:
	.string	"argument-noalias"
	.align 8
.LC192:
	.string	"Assume arguments may alias globals but not each other"
.LC193:
	.string	"argument-noalias-global"
	.align 8
.LC194:
	.string	"Assume arguments do not alias each other or globals"
.LC195:
	.string	"strict-aliasing"
	.align 8
.LC196:
	.string	"Assume strict aliasing rules apply"
.LC197:
	.string	"align-loops"
.LC198:
	.string	"Align the start of loops"
.LC199:
	.string	"align-jumps"
	.align 8
.LC200:
	.string	"Align labels which are only reached by jumping"
.LC201:
	.string	"align-labels"
.LC202:
	.string	"Align all labels"
.LC203:
	.string	"align-functions"
.LC204:
	.string	"Align the start of functions"
.LC205:
	.string	"merge-constants"
	.align 8
.LC206:
	.string	"Attempt to merge identical constants accross compilation units"
.LC207:
	.string	"merge-all-constants"
	.align 8
.LC208:
	.string	"Attempt to merge identical constants and constant variables"
.LC209:
	.string	"dump-unnumbered"
	.align 8
.LC210:
	.string	"Suppress output of instruction numbers and line number notes in debugging dumps"
.LC211:
	.string	"instrument-functions"
	.align 8
.LC212:
	.string	"Instrument function entry/exit with profiling calls"
.LC213:
	.string	"Enable SSA optimizations"
.LC214:
	.string	"ssa-ccp"
	.align 8
.LC215:
	.string	"Enable SSA conditional constant propagation"
.LC216:
	.string	"ssa-dce"
	.align 8
.LC217:
	.string	"Enable aggressive SSA dead code elimination"
.LC218:
	.string	"leading-underscore"
	.align 8
.LC219:
	.string	"External symbols have a leading underscore"
.LC220:
	.string	"ident"
.LC221:
	.string	"Process #ident directives"
	.align 8
.LC222:
	.string	"Enables an rtl peephole pass run before sched2"
.LC223:
	.string	"guess-branch-probability"
	.align 8
.LC224:
	.string	"Enables guessing of branch probabilities"
.LC225:
	.string	"math-errno"
	.align 8
.LC226:
	.string	"Set errno after built-in math functions"
.LC227:
	.string	"trapping-math"
	.align 8
.LC228:
	.string	"Floating-point operations can trap"
.LC229:
	.string	"unsafe-math-optimizations"
	.align 8
.LC230:
	.string	"Allow math optimizations that may violate IEEE or ANSI standards"
.LC231:
	.string	"bounded-pointers"
	.align 8
.LC232:
	.string	"Compile pointers as triples: value, base & end"
.LC233:
	.string	"bounds-check"
	.align 8
.LC234:
	.string	"Generate code to check bounds before dereferencing pointers and arrays"
.LC235:
	.string	"single-precision-constant"
	.align 8
.LC236:
	.string	"Convert floating point constant to single precision constant"
.LC237:
	.string	"time-report"
	.align 8
.LC238:
	.string	"Report time taken by each compiler pass at end of run"
.LC239:
	.string	"mem-report"
	.align 8
.LC240:
	.string	"Report on permanent memory allocation at end of run"
.LC241:
	.string	"trapv"
	.align 8
.LC242:
	.string	"Trap for signed overflow in addition / subtraction / multiplication"
	.align 32
	.type	f_options, @object
	.size	f_options, 3104
f_options:
# string:
	.quad	.LC54
# variable:
	.quad	flag_eliminate_dwarf2_dups
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC55
# string:
	.quad	.LC56
# variable:
	.quad	flag_float_store
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC57
# string:
	.quad	.LC58
# variable:
	.quad	flag_volatile
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC59
# string:
	.quad	.LC60
# variable:
	.quad	flag_volatile_global
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC61
# string:
	.quad	.LC62
# variable:
	.quad	flag_volatile_static
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC63
# string:
	.quad	.LC64
# variable:
	.quad	flag_defer_pop
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC65
# string:
	.quad	.LC66
# variable:
	.quad	flag_omit_frame_pointer
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC67
# string:
	.quad	.LC68
# variable:
	.quad	flag_optimize_sibling_calls
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC69
# string:
	.quad	.LC70
# variable:
	.quad	flag_cse_follow_jumps
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC71
# string:
	.quad	.LC72
# variable:
	.quad	flag_cse_skip_blocks
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC73
# string:
	.quad	.LC74
# variable:
	.quad	flag_expensive_optimizations
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC75
# string:
	.quad	.LC76
# variable:
	.quad	flag_thread_jumps
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC77
# string:
	.quad	.LC78
# variable:
	.quad	flag_strength_reduce
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC79
# string:
	.quad	.LC80
# variable:
	.quad	flag_unroll_loops
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC81
# string:
	.quad	.LC82
# variable:
	.quad	flag_unroll_all_loops
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC83
# string:
	.quad	.LC84
# variable:
	.quad	flag_prefetch_loop_arrays
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC85
# string:
	.quad	.LC86
# variable:
	.quad	flag_move_all_movables
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC87
# string:
	.quad	.LC88
# variable:
	.quad	flag_reduce_all_givs
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC89
# string:
	.quad	.LC90
# variable:
	.quad	flag_writable_strings
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC91
# string:
	.quad	.LC92
# variable:
	.quad	flag_no_peephole
# on_value:
	.long	0
# description:
	.zero	4
	.quad	.LC93
# string:
	.quad	.LC94
# variable:
	.quad	flag_force_mem
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC95
# string:
	.quad	.LC96
# variable:
	.quad	flag_force_addr
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC97
# string:
	.quad	.LC98
# variable:
	.quad	flag_no_function_cse
# on_value:
	.long	0
# description:
	.zero	4
	.quad	.LC99
# string:
	.quad	.LC100
# variable:
	.quad	flag_inline_functions
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC101
# string:
	.quad	.LC102
# variable:
	.quad	flag_keep_inline_functions
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC103
# string:
	.quad	.LC104
# variable:
	.quad	flag_no_inline
# on_value:
	.long	0
# description:
	.zero	4
	.quad	.LC105
# string:
	.quad	.LC106
# variable:
	.quad	flag_keep_static_consts
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC107
# string:
	.quad	.LC108
# variable:
	.quad	flag_syntax_only
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC109
# string:
	.quad	.LC110
# variable:
	.quad	flag_shared_data
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC111
# string:
	.quad	.LC112
# variable:
	.quad	flag_caller_saves
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC113
# string:
	.quad	.LC114
# variable:
	.quad	flag_pcc_struct_return
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC115
# string:
	.quad	.LC116
# variable:
	.quad	flag_pcc_struct_return
# on_value:
	.long	0
# description:
	.zero	4
	.quad	.LC117
# string:
	.quad	.LC118
# variable:
	.quad	flag_delayed_branch
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC119
# string:
	.quad	.LC10
# variable:
	.quad	flag_gcse
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC120
# string:
	.quad	.LC121
# variable:
	.quad	flag_gcse_lm
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC122
# string:
	.quad	.LC123
# variable:
	.quad	flag_gcse_sm
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC124
# string:
	.quad	.LC125
# variable:
	.quad	flag_rerun_cse_after_loop
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC126
# string:
	.quad	.LC127
# variable:
	.quad	flag_rerun_loop_opt
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC128
# string:
	.quad	.LC129
# variable:
	.quad	flag_delete_null_pointer_checks
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC130
# string:
	.quad	.LC131
# variable:
	.quad	flag_pretend_float
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC132
# string:
	.quad	.LC133
# variable:
	.quad	flag_schedule_insns
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC134
# string:
	.quad	.LC135
# variable:
	.quad	flag_schedule_insns_after_reload
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC136
# string:
	.quad	.LC137
# variable:
	.quad	flag_schedule_interblock
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC138
# string:
	.quad	.LC139
# variable:
	.quad	flag_schedule_speculative
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC140
# string:
	.quad	.LC141
# variable:
	.quad	flag_schedule_speculative_load
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC142
# string:
	.quad	.LC143
# variable:
	.quad	flag_schedule_speculative_load_dangerous
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC144
# string:
	.quad	.LC145
# variable:
	.quad	flag_branch_on_count_reg
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC146
# string:
	.quad	.LC147
# variable:
	.quad	flag_pic
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC148
# string:
	.quad	.LC149
# variable:
	.quad	flag_pic
# on_value:
	.long	2
# description:
	.zero	4
	.quad	.LC32
# string:
	.quad	.LC150
# variable:
	.quad	flag_exceptions
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC151
# string:
	.quad	.LC152
# variable:
	.quad	flag_unwind_tables
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC153
# string:
	.quad	.LC154
# variable:
	.quad	flag_asynchronous_unwind_tables
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC155
# string:
	.quad	.LC156
# variable:
	.quad	flag_non_call_exceptions
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC157
# string:
	.quad	.LC158
# variable:
	.quad	profile_arc_flag
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC159
# string:
	.quad	.LC160
# variable:
	.quad	flag_test_coverage
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC161
# string:
	.quad	.LC162
# variable:
	.quad	flag_branch_probabilities
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC163
# string:
	.quad	.LC164
# variable:
	.quad	flag_reorder_blocks
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC165
# string:
	.quad	.LC166
# variable:
	.quad	flag_rename_registers
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC167
# string:
	.quad	.LC168
# variable:
	.quad	flag_cprop_registers
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC169
# string:
	.quad	.LC170
# variable:
	.quad	flag_no_common
# on_value:
	.long	0
# description:
	.zero	4
	.quad	.LC171
# string:
	.quad	.LC172
# variable:
	.quad	flag_inhibit_size_directive
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC173
# string:
	.quad	.LC174
# variable:
	.quad	flag_function_sections
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC175
# string:
	.quad	.LC176
# variable:
	.quad	flag_data_sections
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC177
# string:
	.quad	.LC178
# variable:
	.quad	flag_verbose_asm
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC179
# string:
	.quad	.LC180
# variable:
	.quad	flag_gnu_linker
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC181
# string:
	.quad	.LC18
# variable:
	.quad	flag_regmove
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC182
# string:
	.quad	.LC183
# variable:
	.quad	flag_regmove
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC184
# string:
	.quad	.LC185
# variable:
	.quad	flag_pack_struct
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC186
# string:
	.quad	.LC187
# variable:
	.quad	flag_stack_check
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC188
# string:
	.quad	.LC189
# variable:
	.quad	flag_argument_noalias
# on_value:
	.long	0
# description:
	.zero	4
	.quad	.LC190
# string:
	.quad	.LC191
# variable:
	.quad	flag_argument_noalias
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC192
# string:
	.quad	.LC193
# variable:
	.quad	flag_argument_noalias
# on_value:
	.long	2
# description:
	.zero	4
	.quad	.LC194
# string:
	.quad	.LC195
# variable:
	.quad	flag_strict_aliasing
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC196
# string:
	.quad	.LC197
# variable:
	.quad	align_loops
# on_value:
	.long	0
# description:
	.zero	4
	.quad	.LC198
# string:
	.quad	.LC199
# variable:
	.quad	align_jumps
# on_value:
	.long	0
# description:
	.zero	4
	.quad	.LC200
# string:
	.quad	.LC201
# variable:
	.quad	align_labels
# on_value:
	.long	0
# description:
	.zero	4
	.quad	.LC202
# string:
	.quad	.LC203
# variable:
	.quad	align_functions
# on_value:
	.long	0
# description:
	.zero	4
	.quad	.LC204
# string:
	.quad	.LC205
# variable:
	.quad	flag_merge_constants
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC206
# string:
	.quad	.LC207
# variable:
	.quad	flag_merge_constants
# on_value:
	.long	2
# description:
	.zero	4
	.quad	.LC208
# string:
	.quad	.LC209
# variable:
	.quad	flag_dump_unnumbered
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC210
# string:
	.quad	.LC211
# variable:
	.quad	flag_instrument_function_entry_exit
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC212
# string:
	.quad	.LC4
# variable:
	.quad	flag_ssa
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC213
# string:
	.quad	.LC214
# variable:
	.quad	flag_ssa_ccp
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC215
# string:
	.quad	.LC216
# variable:
	.quad	flag_ssa_dce
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC217
# string:
	.quad	.LC218
# variable:
	.quad	flag_leading_underscore
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC219
# string:
	.quad	.LC220
# variable:
	.quad	flag_no_ident
# on_value:
	.long	0
# description:
	.zero	4
	.quad	.LC221
# string:
	.quad	.LC24
# variable:
	.quad	flag_peephole2
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC222
# string:
	.quad	.LC223
# variable:
	.quad	flag_guess_branch_prob
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC224
# string:
	.quad	.LC225
# variable:
	.quad	flag_errno_math
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC226
# string:
	.quad	.LC227
# variable:
	.quad	flag_trapping_math
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC228
# string:
	.quad	.LC229
# variable:
	.quad	flag_unsafe_math_optimizations
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC230
# string:
	.quad	.LC231
# variable:
	.quad	flag_bounded_pointers
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC232
# string:
	.quad	.LC233
# variable:
	.quad	flag_bounds_check
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC234
# string:
	.quad	.LC235
# variable:
	.quad	flag_single_precision_constant
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC236
# string:
	.quad	.LC237
# variable:
	.quad	time_report
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC238
# string:
	.quad	.LC239
# variable:
	.quad	mem_report
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC240
# string:
	.quad	.LC241
# variable:
	.quad	flag_trapv
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC242
.LC243:
	.string	"-ansi"
.LC244:
	.string	"Compile just for ISO C89"
.LC245:
	.string	"-fallow-single-precision"
	.align 8
.LC246:
	.string	"Do not promote floats to double if using -traditional"
.LC247:
	.string	"-std= "
.LC248:
	.string	"Determine language standard"
.LC249:
	.string	"-fsigned-bitfields"
.LC250:
	.string	"-funsigned-bitfields"
	.align 8
.LC251:
	.string	"Make bit-fields by unsigned by default"
.LC252:
	.string	"-fno-signed-bitfields"
.LC253:
	.string	"-fno-unsigned-bitfields"
.LC254:
	.string	"-fsigned-char"
	.align 8
.LC255:
	.string	"Make 'char' be signed by default"
.LC256:
	.string	"-funsigned-char"
	.align 8
.LC257:
	.string	"Make 'char' be unsigned by default"
.LC258:
	.string	"-fno-signed-char"
.LC259:
	.string	"-fno-unsigned-char"
.LC260:
	.string	"-ftraditional"
.LC261:
	.string	"-traditional"
	.align 8
.LC262:
	.string	"Attempt to support traditional K&R style C"
.LC263:
	.string	"-fnotraditional"
.LC264:
	.string	"-fno-traditional"
.LC265:
	.string	"-fasm"
.LC266:
	.string	"-fno-asm"
	.align 8
.LC267:
	.string	"Do not recognize the 'asm' keyword"
.LC268:
	.string	"-fbuiltin"
.LC269:
	.string	"-fno-builtin"
	.align 8
.LC270:
	.string	"Do not recognize any built in functions"
.LC271:
	.string	"-fhosted"
	.align 8
.LC272:
	.string	"Assume normal C execution environment"
.LC273:
	.string	"-fno-hosted"
.LC274:
	.string	"-ffreestanding"
	.align 8
.LC275:
	.string	"Assume that standard libraries & main might not exist"
.LC276:
	.string	"-fno-freestanding"
.LC277:
	.string	"-fcond-mismatch"
	.align 8
.LC278:
	.string	"Allow different types as args of ? operator"
.LC279:
	.string	"-fno-cond-mismatch"
.LC280:
	.string	"-fdollars-in-identifiers"
	.align 8
.LC281:
	.string	"Allow the use of $ inside identifiers"
.LC282:
	.string	"-fno-dollars-in-identifiers"
.LC283:
	.string	"-fpreprocessed"
.LC284:
	.string	"-fno-preprocessed"
.LC285:
	.string	"-fshort-double"
	.align 8
.LC286:
	.string	"Use the same size for double as for float"
.LC287:
	.string	"-fno-short-double"
.LC288:
	.string	"-fshort-enums"
	.align 8
.LC289:
	.string	"Use the smallest fitting integer to hold enums"
.LC290:
	.string	"-fno-short-enums"
.LC291:
	.string	"-fshort-wchar"
	.align 8
.LC292:
	.string	"Override the underlying type for wchar_t to `unsigned short'"
.LC293:
	.string	"-fno-short-wchar"
.LC294:
	.string	"-Wall"
.LC295:
	.string	"Enable most warning messages"
.LC296:
	.string	"-Wbad-function-cast"
	.align 8
.LC297:
	.string	"Warn about casting functions to incompatible types"
.LC298:
	.string	"-Wno-bad-function-cast"
.LC299:
	.string	"-Wno-missing-noreturn"
.LC300:
	.string	"-Wmissing-format-attribute"
	.align 8
.LC301:
	.string	"Warn about functions which might be candidates for format attributes"
.LC302:
	.string	"-Wno-missing-format-attribute"
.LC303:
	.string	"-Wcast-qual"
	.align 8
.LC304:
	.string	"Warn about casts which discard qualifiers"
.LC305:
	.string	"-Wno-cast-qual"
.LC306:
	.string	"-Wchar-subscripts"
	.align 8
.LC307:
	.string	"Warn about subscripts whose type is 'char'"
.LC308:
	.string	"-Wno-char-subscripts"
.LC309:
	.string	"-Wcomment"
	.align 8
.LC310:
	.string	"Warn if nested comments are detected"
.LC311:
	.string	"-Wno-comment"
.LC312:
	.string	"-Wcomments"
.LC313:
	.string	"-Wno-comments"
.LC314:
	.string	"-Wconversion"
	.align 8
.LC315:
	.string	"Warn about possibly confusing type conversions"
.LC316:
	.string	"-Wno-conversion"
.LC317:
	.string	"-Wformat"
	.align 8
.LC318:
	.string	"Warn about printf/scanf/strftime/strfmon format anomalies"
.LC319:
	.string	"-Wno-format"
.LC320:
	.string	"-Wformat-y2k"
.LC321:
	.string	"-Wno-format-y2k"
	.align 8
.LC322:
	.string	"Don't warn about strftime formats yielding 2 digit years"
.LC323:
	.string	"-Wformat-extra-args"
.LC324:
	.string	"-Wno-format-extra-args"
	.align 8
.LC325:
	.string	"Don't warn about too many arguments to format functions"
.LC326:
	.string	"-Wformat-nonliteral"
	.align 8
.LC327:
	.string	"Warn about non-string-literal format strings"
.LC328:
	.string	"-Wno-format-nonliteral"
.LC329:
	.string	"-Wformat-security"
	.align 8
.LC330:
	.string	"Warn about possible security problems with format functions"
.LC331:
	.string	"-Wno-format-security"
	.align 8
.LC332:
	.string	"-Wimplicit-function-declaration"
	.align 8
.LC333:
	.string	"Warn about implicit function declarations"
	.align 8
.LC334:
	.string	"-Wno-implicit-function-declaration"
	.align 8
.LC335:
	.string	"-Werror-implicit-function-declaration"
.LC336:
	.string	"-Wimplicit-int"
	.align 8
.LC337:
	.string	"Warn when a declaration does not specify a type"
.LC338:
	.string	"-Wno-implicit-int"
.LC339:
	.string	"-Wimplicit"
.LC340:
	.string	"-Wno-implicit"
.LC341:
	.string	"-Wimport"
	.align 8
.LC342:
	.string	"Warn about the use of the #import directive"
.LC343:
	.string	"-Wno-import"
.LC344:
	.string	"-Wlong-long"
.LC345:
	.string	"-Wno-long-long"
	.align 8
.LC346:
	.string	"Do not warn about using 'long long' when -pedantic"
.LC347:
	.string	"-Wmain"
	.align 8
.LC348:
	.string	"Warn about suspicious declarations of main"
.LC349:
	.string	"-Wno-main"
.LC350:
	.string	"-Wmissing-braces"
	.align 8
.LC351:
	.string	"Warn about possibly missing braces around initializers"
.LC352:
	.string	"-Wno-missing-braces"
.LC353:
	.string	"-Wmissing-declarations"
	.align 8
.LC354:
	.string	"Warn about global funcs without previous declarations"
.LC355:
	.string	"-Wno-missing-declarations"
.LC356:
	.string	"-Wmissing-prototypes"
	.align 8
.LC357:
	.string	"Warn about global funcs without prototypes"
.LC358:
	.string	"-Wno-missing-prototypes"
.LC359:
	.string	"-Wmultichar"
	.align 8
.LC360:
	.string	"Warn about use of multicharacter literals"
.LC361:
	.string	"-Wno-multichar"
.LC362:
	.string	"-Wnested-externs"
	.align 8
.LC363:
	.string	"Warn about externs not at file scope level"
.LC364:
	.string	"-Wno-nested-externs"
.LC365:
	.string	"-Wparentheses"
	.align 8
.LC366:
	.string	"Warn about possible missing parentheses"
.LC367:
	.string	"-Wno-parentheses"
.LC368:
	.string	"-Wsequence-point"
	.align 8
.LC369:
	.string	"Warn about possible violations of sequence point rules"
.LC370:
	.string	"-Wno-sequence-point"
.LC371:
	.string	"-Wpointer-arith"
	.align 8
.LC372:
	.string	"Warn about function pointer arithmetic"
.LC373:
	.string	"-Wno-pointer-arith"
.LC374:
	.string	"-Wredundant-decls"
	.align 8
.LC375:
	.string	"Warn about multiple declarations of the same object"
.LC376:
	.string	"-Wno-redundant-decls"
.LC377:
	.string	"-Wsign-compare"
	.align 8
.LC378:
	.string	"Warn about signed/unsigned comparisons"
.LC379:
	.string	"-Wno-sign-compare"
.LC380:
	.string	"-Wfloat-equal"
	.align 8
.LC381:
	.string	"Warn about testing equality of floating point numbers"
.LC382:
	.string	"-Wno-float-equal"
.LC383:
	.string	"-Wunknown-pragmas"
	.align 8
.LC384:
	.string	"Warn about unrecognized pragmas"
.LC385:
	.string	"-Wno-unknown-pragmas"
.LC386:
	.string	"-Wstrict-prototypes"
	.align 8
.LC387:
	.string	"Warn about non-prototyped function decls"
.LC388:
	.string	"-Wno-strict-prototypes"
.LC389:
	.string	"-Wtraditional"
	.align 8
.LC390:
	.string	"Warn about constructs whose meaning change in ISO C"
.LC391:
	.string	"-Wno-traditional"
.LC392:
	.string	"-Wtrigraphs"
	.align 8
.LC393:
	.string	"Warn when trigraphs are encountered"
.LC394:
	.string	"-Wno-trigraphs"
.LC395:
	.string	"-Wundef"
.LC396:
	.string	"-Wno-undef"
.LC397:
	.string	"-Wwrite-strings"
	.align 8
.LC398:
	.string	"Mark strings as 'const char *'"
.LC399:
	.string	"-Wno-write-strings"
	.align 32
	.type	documented_lang_options, @object
	.size	documented_lang_options, 1728
documented_lang_options:
# option:
	.quad	.LC243
# description:
	.quad	.LC244
# option:
	.quad	.LC245
# description:
	.quad	.LC246
# option:
	.quad	.LC247
# description:
	.quad	.LC248
# option:
	.quad	.LC249
# description:
	.quad	.LC32
# option:
	.quad	.LC250
# description:
	.quad	.LC251
# option:
	.quad	.LC252
# description:
	.quad	.LC32
# option:
	.quad	.LC253
# description:
	.quad	.LC32
# option:
	.quad	.LC254
# description:
	.quad	.LC255
# option:
	.quad	.LC256
# description:
	.quad	.LC257
# option:
	.quad	.LC258
# description:
	.quad	.LC32
# option:
	.quad	.LC259
# description:
	.quad	.LC32
# option:
	.quad	.LC260
# description:
	.quad	.LC32
# option:
	.quad	.LC261
# description:
	.quad	.LC262
# option:
	.quad	.LC263
# description:
	.quad	.LC32
# option:
	.quad	.LC264
# description:
	.quad	.LC32
# option:
	.quad	.LC265
# description:
	.quad	.LC32
# option:
	.quad	.LC266
# description:
	.quad	.LC267
# option:
	.quad	.LC268
# description:
	.quad	.LC32
# option:
	.quad	.LC269
# description:
	.quad	.LC270
# option:
	.quad	.LC271
# description:
	.quad	.LC272
# option:
	.quad	.LC273
# description:
	.quad	.LC32
# option:
	.quad	.LC274
# description:
	.quad	.LC275
# option:
	.quad	.LC276
# description:
	.quad	.LC32
# option:
	.quad	.LC277
# description:
	.quad	.LC278
# option:
	.quad	.LC279
# description:
	.quad	.LC32
# option:
	.quad	.LC280
# description:
	.quad	.LC281
# option:
	.quad	.LC282
# description:
	.quad	.LC32
# option:
	.quad	.LC283
# description:
	.quad	.LC32
# option:
	.quad	.LC284
# description:
	.quad	.LC32
# option:
	.quad	.LC285
# description:
	.quad	.LC286
# option:
	.quad	.LC287
# description:
	.quad	.LC32
# option:
	.quad	.LC288
# description:
	.quad	.LC289
# option:
	.quad	.LC290
# description:
	.quad	.LC32
# option:
	.quad	.LC291
# description:
	.quad	.LC292
# option:
	.quad	.LC293
# description:
	.quad	.LC32
# option:
	.quad	.LC294
# description:
	.quad	.LC295
# option:
	.quad	.LC296
# description:
	.quad	.LC297
# option:
	.quad	.LC298
# description:
	.quad	.LC32
# option:
	.quad	.LC299
# description:
	.quad	.LC32
# option:
	.quad	.LC300
# description:
	.quad	.LC301
# option:
	.quad	.LC302
# description:
	.quad	.LC32
# option:
	.quad	.LC303
# description:
	.quad	.LC304
# option:
	.quad	.LC305
# description:
	.quad	.LC32
# option:
	.quad	.LC306
# description:
	.quad	.LC307
# option:
	.quad	.LC308
# description:
	.quad	.LC32
# option:
	.quad	.LC309
# description:
	.quad	.LC310
# option:
	.quad	.LC311
# description:
	.quad	.LC32
# option:
	.quad	.LC312
# description:
	.quad	.LC310
# option:
	.quad	.LC313
# description:
	.quad	.LC32
# option:
	.quad	.LC314
# description:
	.quad	.LC315
# option:
	.quad	.LC316
# description:
	.quad	.LC32
# option:
	.quad	.LC317
# description:
	.quad	.LC318
# option:
	.quad	.LC319
# description:
	.quad	.LC32
# option:
	.quad	.LC320
# description:
	.quad	.LC32
# option:
	.quad	.LC321
# description:
	.quad	.LC322
# option:
	.quad	.LC323
# description:
	.quad	.LC32
# option:
	.quad	.LC324
# description:
	.quad	.LC325
# option:
	.quad	.LC326
# description:
	.quad	.LC327
# option:
	.quad	.LC328
# description:
	.quad	.LC32
# option:
	.quad	.LC329
# description:
	.quad	.LC330
# option:
	.quad	.LC331
# description:
	.quad	.LC32
# option:
	.quad	.LC332
# description:
	.quad	.LC333
# option:
	.quad	.LC334
# description:
	.quad	.LC32
# option:
	.quad	.LC335
# description:
	.quad	.LC32
# option:
	.quad	.LC336
# description:
	.quad	.LC337
# option:
	.quad	.LC338
# description:
	.quad	.LC32
# option:
	.quad	.LC339
# description:
	.quad	.LC32
# option:
	.quad	.LC340
# description:
	.quad	.LC32
# option:
	.quad	.LC341
# description:
	.quad	.LC342
# option:
	.quad	.LC343
# description:
	.quad	.LC32
# option:
	.quad	.LC344
# description:
	.quad	.LC32
# option:
	.quad	.LC345
# description:
	.quad	.LC346
# option:
	.quad	.LC347
# description:
	.quad	.LC348
# option:
	.quad	.LC349
# description:
	.quad	.LC32
# option:
	.quad	.LC350
# description:
	.quad	.LC351
# option:
	.quad	.LC352
# description:
	.quad	.LC32
# option:
	.quad	.LC353
# description:
	.quad	.LC354
# option:
	.quad	.LC355
# description:
	.quad	.LC32
# option:
	.quad	.LC356
# description:
	.quad	.LC357
# option:
	.quad	.LC358
# description:
	.quad	.LC32
# option:
	.quad	.LC359
# description:
	.quad	.LC360
# option:
	.quad	.LC361
# description:
	.quad	.LC32
# option:
	.quad	.LC362
# description:
	.quad	.LC363
# option:
	.quad	.LC364
# description:
	.quad	.LC32
# option:
	.quad	.LC365
# description:
	.quad	.LC366
# option:
	.quad	.LC367
# description:
	.quad	.LC32
# option:
	.quad	.LC368
# description:
	.quad	.LC369
# option:
	.quad	.LC370
# description:
	.quad	.LC32
# option:
	.quad	.LC371
# description:
	.quad	.LC372
# option:
	.quad	.LC373
# description:
	.quad	.LC32
# option:
	.quad	.LC374
# description:
	.quad	.LC375
# option:
	.quad	.LC376
# description:
	.quad	.LC32
# option:
	.quad	.LC377
# description:
	.quad	.LC378
# option:
	.quad	.LC379
# description:
	.quad	.LC32
# option:
	.quad	.LC380
# description:
	.quad	.LC381
# option:
	.quad	.LC382
# description:
	.quad	.LC32
# option:
	.quad	.LC383
# description:
	.quad	.LC384
# option:
	.quad	.LC385
# description:
	.quad	.LC32
# option:
	.quad	.LC386
# description:
	.quad	.LC387
# option:
	.quad	.LC388
# description:
	.quad	.LC32
# option:
	.quad	.LC389
# description:
	.quad	.LC390
# option:
	.quad	.LC391
# description:
	.quad	.LC32
# option:
	.quad	.LC392
# description:
	.quad	.LC393
# option:
	.quad	.LC394
# description:
	.quad	.LC32
# option:
	.quad	.LC395
# description:
	.quad	.LC32
# option:
	.quad	.LC396
# description:
	.quad	.LC32
# option:
	.quad	.LC397
# description:
	.quad	.LC398
# option:
	.quad	.LC399
# description:
	.quad	.LC32
.LC400:
	.string	"80387"
.LC401:
	.string	"Use hardware fp"
.LC402:
	.string	"no-80387"
.LC403:
	.string	"Do not use hardware fp"
.LC404:
	.string	"hard-float"
.LC405:
	.string	"soft-float"
.LC406:
	.string	"no-soft-float"
.LC407:
	.string	"386"
.LC408:
	.string	"486"
.LC409:
	.string	"pentium"
.LC410:
	.string	"pentiumpro"
.LC411:
	.string	"intel-syntax"
.LC412:
	.string	"no-intel-syntax"
.LC413:
	.string	"rtd"
.LC414:
	.string	"Alternate calling convention"
.LC415:
	.string	"no-rtd"
.LC416:
	.string	"Use normal calling convention"
.LC417:
	.string	"align-double"
	.align 8
.LC418:
	.string	"Align some doubles on dword boundary"
.LC419:
	.string	"no-align-double"
	.align 8
.LC420:
	.string	"Align doubles on word boundary"
.LC421:
	.string	"svr3-shlib"
.LC422:
	.string	"Uninitialized locals in .bss"
.LC423:
	.string	"no-svr3-shlib"
.LC424:
	.string	"Uninitialized locals in .data"
.LC425:
	.string	"ieee-fp"
	.align 8
.LC426:
	.string	"Use IEEE math for fp comparisons"
.LC427:
	.string	"no-ieee-fp"
	.align 8
.LC428:
	.string	"Do not use IEEE math for fp comparisons"
.LC429:
	.string	"fp-ret-in-387"
	.align 8
.LC430:
	.string	"Return values of functions in FPU registers"
.LC431:
	.string	"no-fp-ret-in-387"
	.align 8
.LC432:
	.string	"Do not return values of functions in FPU registers"
.LC433:
	.string	"no-fancy-math-387"
	.align 8
.LC434:
	.string	"Do not generate sin, cos, sqrt for FPU"
.LC435:
	.string	"fancy-math-387"
	.align 8
.LC436:
	.string	"Generate sin, cos, sqrt for FPU"
.LC437:
	.string	"omit-leaf-frame-pointer"
	.align 8
.LC438:
	.string	"Omit the frame pointer in leaf functions"
.LC439:
	.string	"no-omit-leaf-frame-pointer"
.LC440:
	.string	"stack-arg-probe"
.LC441:
	.string	"Enable stack probing"
.LC442:
	.string	"no-stack-arg-probe"
.LC443:
	.string	"windows"
.LC444:
	.string	"dll"
.LC445:
	.string	"align-stringops"
	.align 8
.LC446:
	.string	"Align destination of the string operations"
.LC447:
	.string	"no-align-stringops"
	.align 8
.LC448:
	.string	"Do not align destination of the string operations"
.LC449:
	.string	"inline-all-stringops"
	.align 8
.LC450:
	.string	"Inline all known string operations"
.LC451:
	.string	"no-inline-all-stringops"
	.align 8
.LC452:
	.string	"Do not inline all known string operations"
.LC453:
	.string	"push-args"
	.align 8
.LC454:
	.string	"Use push instructions to save outgoing arguments"
.LC455:
	.string	"no-push-args"
	.align 8
.LC456:
	.string	"Do not use push instructions to save outgoing arguments"
.LC457:
	.string	"accumulate-outgoing-args"
.LC458:
	.string	"no-accumulate-outgoing-args"
.LC459:
	.string	"mmx"
	.align 8
.LC460:
	.string	"Support MMX built-in functions"
.LC461:
	.string	"no-mmx"
	.align 8
.LC462:
	.string	"Do not support MMX built-in functions"
.LC463:
	.string	"3dnow"
	.align 8
.LC464:
	.string	"Support 3DNow! built-in functions"
.LC465:
	.string	"no-3dnow"
	.align 8
.LC466:
	.string	"Do not support 3DNow! built-in functions"
.LC467:
	.string	"sse"
	.align 8
.LC468:
	.string	"Support MMX and SSE built-in functions and code generation"
.LC469:
	.string	"no-sse"
	.align 8
.LC470:
	.string	"Do not support MMX and SSE built-in functions and code generation"
.LC471:
	.string	"sse2"
	.align 8
.LC472:
	.string	"Support MMX, SSE and SSE2 built-in functions and code generation"
.LC473:
	.string	"no-sse2"
	.align 8
.LC474:
	.string	"Do not support MMX, SSE and SSE2 built-in functions and code generation"
.LC475:
	.string	"128bit-long-double"
.LC476:
	.string	"sizeof(long double) is 16"
.LC477:
	.string	"96bit-long-double"
.LC478:
	.string	"sizeof(long double) is 12"
.LC479:
	.string	"64"
.LC480:
	.string	"Generate 64bit x86-64 code"
.LC481:
	.string	"32"
.LC482:
	.string	"Generate 32bit i386 code"
.LC483:
	.string	"red-zone"
	.align 8
.LC484:
	.string	"Use red-zone in the x86-64 code"
.LC485:
	.string	"no-red-zone"
	.align 8
.LC486:
	.string	"Do not use red-zone in the x86-64 code"
	.align 32
	.type	target_switches, @object
	.size	target_switches, 1344
target_switches:
# name:
	.quad	.LC400
# value:
	.long	1
# description:
	.zero	4
	.quad	.LC401
# name:
	.quad	.LC402
# value:
	.long	-1
# description:
	.zero	4
	.quad	.LC403
# name:
	.quad	.LC404
# value:
	.long	1
# description:
	.zero	4
	.quad	.LC401
# name:
	.quad	.LC405
# value:
	.long	-1
# description:
	.zero	4
	.quad	.LC403
# name:
	.quad	.LC406
# value:
	.long	1
# description:
	.zero	4
	.quad	.LC401
# name:
	.quad	.LC407
# value:
	.long	0
# description:
	.zero	4
	.quad	.LC32
# name:
	.quad	.LC408
# value:
	.long	0
# description:
	.zero	4
	.quad	.LC32
# name:
	.quad	.LC409
# value:
	.long	0
# description:
	.zero	4
	.quad	.LC32
# name:
	.quad	.LC410
# value:
	.long	0
# description:
	.zero	4
	.quad	.LC32
# name:
	.quad	.LC411
# value:
	.long	0
# description:
	.zero	4
	.quad	.LC32
# name:
	.quad	.LC412
# value:
	.long	0
# description:
	.zero	4
	.quad	.LC32
# name:
	.quad	.LC413
# value:
	.long	2
# description:
	.zero	4
	.quad	.LC414
# name:
	.quad	.LC415
# value:
	.long	-2
# description:
	.zero	4
	.quad	.LC416
# name:
	.quad	.LC417
# value:
	.long	4
# description:
	.zero	4
	.quad	.LC418
# name:
	.quad	.LC419
# value:
	.long	-4
# description:
	.zero	4
	.quad	.LC420
# name:
	.quad	.LC421
# value:
	.long	8
# description:
	.zero	4
	.quad	.LC422
# name:
	.quad	.LC423
# value:
	.long	-8
# description:
	.zero	4
	.quad	.LC424
# name:
	.quad	.LC425
# value:
	.long	16
# description:
	.zero	4
	.quad	.LC426
# name:
	.quad	.LC427
# value:
	.long	-16
# description:
	.zero	4
	.quad	.LC428
# name:
	.quad	.LC429
# value:
	.long	32
# description:
	.zero	4
	.quad	.LC430
# name:
	.quad	.LC431
# value:
	.long	-32
# description:
	.zero	4
	.quad	.LC432
# name:
	.quad	.LC433
# value:
	.long	64
# description:
	.zero	4
	.quad	.LC434
# name:
	.quad	.LC435
# value:
	.long	-64
# description:
	.zero	4
	.quad	.LC436
# name:
	.quad	.LC437
# value:
	.long	128
# description:
	.zero	4
	.quad	.LC438
# name:
	.quad	.LC439
# value:
	.long	-128
# description:
	.zero	4
	.quad	.LC32
# name:
	.quad	.LC440
# value:
	.long	256
# description:
	.zero	4
	.quad	.LC441
# name:
	.quad	.LC442
# value:
	.long	-256
# description:
	.zero	4
	.quad	.LC32
# name:
	.quad	.LC443
# value:
	.long	0
# description:
	.zero	4
	.quad	0
# name:
	.quad	.LC444
# value:
	.long	0
# description:
	.zero	4
	.quad	0
# name:
	.quad	.LC445
# value:
	.long	-512
# description:
	.zero	4
	.quad	.LC446
# name:
	.quad	.LC447
# value:
	.long	512
# description:
	.zero	4
	.quad	.LC448
# name:
	.quad	.LC449
# value:
	.long	1024
# description:
	.zero	4
	.quad	.LC450
# name:
	.quad	.LC451
# value:
	.long	-1024
# description:
	.zero	4
	.quad	.LC452
# name:
	.quad	.LC453
# value:
	.long	-2048
# description:
	.zero	4
	.quad	.LC454
# name:
	.quad	.LC455
# value:
	.long	2048
# description:
	.zero	4
	.quad	.LC456
# name:
	.quad	.LC457
# value:
	.long	12288
# description:
	.zero	4
	.quad	.LC454
# name:
	.quad	.LC458
# value:
	.long	8192
# description:
	.zero	4
	.quad	.LC456
# name:
	.quad	.LC459
# value:
	.long	49152
# description:
	.zero	4
	.quad	.LC460
# name:
	.quad	.LC461
# value:
	.long	-16384
# description:
	.zero	4
	.quad	.LC462
# name:
	.quad	.LC461
# value:
	.long	32768
# description:
	.zero	4
	.quad	.LC32
# name:
	.quad	.LC463
# value:
	.long	3145728
# description:
	.zero	4
	.quad	.LC464
# name:
	.quad	.LC465
# value:
	.long	-1048576
# description:
	.zero	4
	.quad	.LC32
# name:
	.quad	.LC465
# value:
	.long	2097152
# description:
	.zero	4
	.quad	.LC466
# name:
	.quad	.LC467
# value:
	.long	196608
# description:
	.zero	4
	.quad	.LC468
# name:
	.quad	.LC469
# value:
	.long	-65536
# description:
	.zero	4
	.quad	.LC32
# name:
	.quad	.LC469
# value:
	.long	131072
# description:
	.zero	4
	.quad	.LC470
# name:
	.quad	.LC471
# value:
	.long	786432
# description:
	.zero	4
	.quad	.LC472
# name:
	.quad	.LC473
# value:
	.long	-262144
# description:
	.zero	4
	.quad	.LC32
# name:
	.quad	.LC473
# value:
	.long	524288
# description:
	.zero	4
	.quad	.LC474
# name:
	.quad	.LC475
# value:
	.long	16777216
# description:
	.zero	4
	.quad	.LC476
# name:
	.quad	.LC477
# value:
	.long	-16777216
# description:
	.zero	4
	.quad	.LC478
# name:
	.quad	.LC479
# value:
	.long	33554432
# description:
	.zero	4
	.quad	.LC480
# name:
	.quad	.LC481
# value:
	.long	-33554432
# description:
	.zero	4
	.quad	.LC482
# name:
	.quad	.LC483
# value:
	.long	-67108864
# description:
	.zero	4
	.quad	.LC484
# name:
	.quad	.LC485
# value:
	.long	67108864
# description:
	.zero	4
	.quad	.LC486
# name:
	.quad	.LC32
# value:
	.long	33554481
# description:
	.zero	4
	.quad	0
.LC487:
	.string	"cpu="
.LC488:
	.string	"Schedule code for given CPU"
.LC489:
	.string	"fpmath="
	.align 8
.LC490:
	.string	"Generate floating point mathematics using given instruction set"
.LC491:
	.string	"arch="
.LC492:
	.string	"Generate code for given CPU"
.LC493:
	.string	"regparm="
	.align 8
.LC494:
	.string	"Number of registers used to pass integer arguments"
.LC495:
	.string	"align-loops="
	.align 8
.LC496:
	.string	"Loop code aligned to this power of 2"
.LC497:
	.string	"align-jumps="
	.align 8
.LC498:
	.string	"Jump targets are aligned to this power of 2"
.LC499:
	.string	"align-functions="
	.align 8
.LC500:
	.string	"Function starts are aligned to this power of 2"
.LC501:
	.string	"preferred-stack-boundary="
	.align 8
.LC502:
	.string	"Attempt to keep stack aligned to this power of 2"
.LC503:
	.string	"branch-cost="
	.align 8
.LC504:
	.string	"Branches are this expensive (1-5, arbitrary units)"
.LC505:
	.string	"cmodel="
.LC506:
	.string	"Use given x86-64 code model"
.LC507:
	.string	"debug-arg"
.LC508:
	.string	"debug-addr"
.LC509:
	.string	"asm="
.LC510:
	.string	"Use given assembler dialect"
	.align 32
	.type	target_options, @object
	.size	target_options, 312
target_options:
# prefix:
	.quad	.LC487
# variable:
	.quad	ix86_cpu_string
# description:
	.quad	.LC488
# prefix:
	.quad	.LC489
# variable:
	.quad	ix86_fpmath_string
# description:
	.quad	.LC490
# prefix:
	.quad	.LC491
# variable:
	.quad	ix86_arch_string
# description:
	.quad	.LC492
# prefix:
	.quad	.LC493
# variable:
	.quad	ix86_regparm_string
# description:
	.quad	.LC494
# prefix:
	.quad	.LC495
# variable:
	.quad	ix86_align_loops_string
# description:
	.quad	.LC496
# prefix:
	.quad	.LC497
# variable:
	.quad	ix86_align_jumps_string
# description:
	.quad	.LC498
# prefix:
	.quad	.LC499
# variable:
	.quad	ix86_align_funcs_string
# description:
	.quad	.LC500
# prefix:
	.quad	.LC501
# variable:
	.quad	ix86_preferred_stack_boundary_string
# description:
	.quad	.LC502
# prefix:
	.quad	.LC503
# variable:
	.quad	ix86_branch_cost_string
# description:
	.quad	.LC504
# prefix:
	.quad	.LC505
# variable:
	.quad	ix86_cmodel_string
# description:
	.quad	.LC506
# prefix:
	.quad	.LC507
# variable:
	.quad	ix86_debug_arg_string
# description:
	.quad	.LC32
# prefix:
	.quad	.LC508
# variable:
	.quad	ix86_debug_addr_string
# description:
	.quad	.LC32
# prefix:
	.quad	.LC509
# variable:
	.quad	ix86_asm_string
# description:
	.quad	.LC510
	.globl	inhibit_warnings
	.bss
	.align 4
	.type	inhibit_warnings, @object
	.size	inhibit_warnings, 4
inhibit_warnings:
	.zero	4
	.globl	warn_system_headers
	.align 4
	.type	warn_system_headers, @object
	.size	warn_system_headers, 4
warn_system_headers:
	.zero	4
	.globl	extra_warnings
	.align 4
	.type	extra_warnings, @object
	.size	extra_warnings, 4
extra_warnings:
	.zero	4
	.globl	warnings_are_errors
	.align 4
	.type	warnings_are_errors, @object
	.size	warnings_are_errors, 4
warnings_are_errors:
	.zero	4
	.comm	warn_unused_function,4,4
	.comm	warn_unused_label,4,4
	.comm	warn_unused_parameter,4,4
	.comm	warn_unused_variable,4,4
	.comm	warn_unused_value,4,4
	.comm	warn_notreached,4,4
	.comm	warn_uninitialized,4,4
	.comm	warn_shadow,4,4
	.comm	warn_switch,4,4
	.comm	warn_return_type,4,4
	.comm	warn_cast_align,4,4
	.comm	warn_larger_than,4,4
	.comm	larger_than_size,8,8
	.comm	warn_inline,4,4
	.comm	warn_aggregate_return,4,4
	.comm	warn_packed,4,4
	.comm	warn_padded,4,4
	.comm	warn_disabled_optimization,4,4
	.comm	warn_missing_noreturn,4,4
	.globl	warn_deprecated_decl
	.data
	.align 4
	.type	warn_deprecated_decl, @object
	.size	warn_deprecated_decl, 4
warn_deprecated_decl:
	.long	1
	.section	.rodata
.LC511:
	.string	"unused-function"
	.align 8
.LC512:
	.string	"Warn when a function is unused"
.LC513:
	.string	"unused-label"
.LC514:
	.string	"Warn when a label is unused"
.LC515:
	.string	"unused-parameter"
	.align 8
.LC516:
	.string	"Warn when a function parameter is unused"
.LC517:
	.string	"unused-variable"
	.align 8
.LC518:
	.string	"Warn when a variable is unused"
.LC519:
	.string	"unused-value"
	.align 8
.LC520:
	.string	"Warn when an expression value is unused"
.LC521:
	.string	"system-headers"
	.align 8
.LC522:
	.string	"Do not suppress warnings from system headers"
.LC523:
	.string	"error"
.LC524:
	.string	"Treat all warnings as errors"
.LC525:
	.string	"shadow"
	.align 8
.LC526:
	.string	"Warn when one local variable shadows another"
.LC527:
	.string	"switch"
	.align 8
.LC528:
	.string	"Warn about enumerated switches missing a specific case"
.LC529:
	.string	"aggregate-return"
	.align 8
.LC530:
	.string	"Warn about returning structures, unions or arrays"
.LC531:
	.string	"cast-align"
	.align 8
.LC532:
	.string	"Warn about pointer casts which increase alignment"
.LC533:
	.string	"unreachable-code"
	.align 8
.LC534:
	.string	"Warn about code that will never be executed"
.LC535:
	.string	"uninitialized"
	.align 8
.LC536:
	.string	"Warn about uninitialized automatic variables"
	.align 8
.LC537:
	.string	"Warn when an inlined function cannot be inlined"
.LC538:
	.string	"packed"
	.align 8
.LC539:
	.string	"Warn when the packed attribute has no effect on struct layout"
.LC540:
	.string	"padded"
	.align 8
.LC541:
	.string	"Warn when padding is required to align struct members"
.LC542:
	.string	"disabled-optimization"
	.align 8
.LC543:
	.string	"Warn when an optimization pass is disabled"
.LC544:
	.string	"deprecated-declarations"
	.align 8
.LC545:
	.string	"Warn about uses of __attribute__((deprecated)) declarations"
.LC546:
	.string	"missing-noreturn"
	.align 8
.LC547:
	.string	"Warn about functions which might be candidates for attribute noreturn"
	.align 32
	.type	W_options, @object
	.size	W_options, 608
W_options:
# string:
	.quad	.LC511
# variable:
	.quad	warn_unused_function
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC512
# string:
	.quad	.LC513
# variable:
	.quad	warn_unused_label
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC514
# string:
	.quad	.LC515
# variable:
	.quad	warn_unused_parameter
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC516
# string:
	.quad	.LC517
# variable:
	.quad	warn_unused_variable
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC518
# string:
	.quad	.LC519
# variable:
	.quad	warn_unused_value
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC520
# string:
	.quad	.LC521
# variable:
	.quad	warn_system_headers
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC522
# string:
	.quad	.LC523
# variable:
	.quad	warnings_are_errors
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC524
# string:
	.quad	.LC525
# variable:
	.quad	warn_shadow
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC526
# string:
	.quad	.LC527
# variable:
	.quad	warn_switch
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC528
# string:
	.quad	.LC529
# variable:
	.quad	warn_aggregate_return
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC530
# string:
	.quad	.LC531
# variable:
	.quad	warn_cast_align
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC532
# string:
	.quad	.LC533
# variable:
	.quad	warn_notreached
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC534
# string:
	.quad	.LC535
# variable:
	.quad	warn_uninitialized
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC536
# string:
	.quad	.LC104
# variable:
	.quad	warn_inline
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC537
# string:
	.quad	.LC538
# variable:
	.quad	warn_packed
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC539
# string:
	.quad	.LC540
# variable:
	.quad	warn_padded
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC541
# string:
	.quad	.LC542
# variable:
	.quad	warn_disabled_optimization
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC543
# string:
	.quad	.LC544
# variable:
	.quad	warn_deprecated_decl
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC545
# string:
	.quad	.LC546
# variable:
	.quad	warn_missing_noreturn
# on_value:
	.long	1
# description:
	.zero	4
	.quad	.LC547
	.text
	.globl	set_Wunused
	.type	set_Wunused, @function
set_Wunused:
.LFB2:
	.file 1 "toplev.c"
	.loc 1 1502 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# setting, setting
	.loc 1 1503 0
	movl	-4(%rbp), %eax	# setting, tmp60
	movl	%eax, warn_unused_function(%rip)	# tmp60, warn_unused_function
	.loc 1 1504 0
	movl	-4(%rbp), %eax	# setting, tmp61
	movl	%eax, warn_unused_label(%rip)	# tmp61, warn_unused_label
	.loc 1 1508 0
	cmpl	$0, -4(%rbp)	#, setting
	jne	.L2	#,
	.loc 1 1509 0
	movl	$0, warn_unused_parameter(%rip)	#, warn_unused_parameter
	jmp	.L3	#
.L2:
	.loc 1 1510 0
	movl	warn_unused_parameter(%rip), %eax	# warn_unused_parameter, warn_unused_parameter.0
	testl	%eax, %eax	# warn_unused_parameter.0
	jne	.L3	#,
	.loc 1 1511 0
	movl	$-1, warn_unused_parameter(%rip)	#, warn_unused_parameter
.L3:
	.loc 1 1512 0
	movl	-4(%rbp), %eax	# setting, tmp62
	movl	%eax, warn_unused_variable(%rip)	# tmp62, warn_unused_variable
	.loc 1 1513 0
	movl	-4(%rbp), %eax	# setting, tmp63
	movl	%eax, warn_unused_value(%rip)	# tmp63, warn_unused_value
	.loc 1 1514 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	set_Wunused, .-set_Wunused
	.globl	set_fast_math_flags
	.type	set_fast_math_flags, @function
set_fast_math_flags:
.LFB3:
	.loc 1 1521 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1522 0
	movl	$0, flag_trapping_math(%rip)	#, flag_trapping_math
	.loc 1 1523 0
	movl	$1, flag_unsafe_math_optimizations(%rip)	#, flag_unsafe_math_optimizations
	.loc 1 1524 0
	movl	$0, flag_errno_math(%rip)	#, flag_errno_math
	.loc 1 1525 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	set_fast_math_flags, .-set_fast_math_flags
	.globl	set_no_fast_math_flags
	.type	set_no_fast_math_flags, @function
set_no_fast_math_flags:
.LFB4:
	.loc 1 1529 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1530 0
	movl	$1, flag_trapping_math(%rip)	#, flag_trapping_math
	.loc 1 1531 0
	movl	$0, flag_unsafe_math_optimizations(%rip)	#, flag_unsafe_math_optimizations
	.loc 1 1532 0
	movl	$1, flag_errno_math(%rip)	#, flag_errno_math
	.loc 1 1533 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	set_no_fast_math_flags, .-set_no_fast_math_flags
	.comm	asm_out_file,8,8
	.comm	aux_info_file,8,8
	.globl	rtl_dump_file
	.bss
	.align 8
	.type	rtl_dump_file, @object
	.size	rtl_dump_file, 8
rtl_dump_file:
	.zero	8
	.section	.rodata
.LC548:
	.string	"invalid option `%s'"
	.text
	.globl	read_integral_parameter
	.type	read_integral_parameter, @function
read_integral_parameter:
.LFB5:
	.loc 1 1553 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# p, p
	movq	%rsi, -32(%rbp)	# pname, pname
	movl	%edx, -36(%rbp)	# defval, defval
	.loc 1 1554 0
	movq	-24(%rbp), %rax	# p, tmp69
	movq	%rax, -8(%rbp)	# tmp69, endp
	.loc 1 1556 0
	jmp	.L7	#
.L10:
	.loc 1 1558 0
	movq	-8(%rbp), %rax	# endp, tmp70
	movzbl	(%rax), %eax	# *endp_1, D.18644
	movsbl	%al, %eax	# D.18644, D.18643
	movzbl	%al, %eax	# D.18643, D.18643
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.18645
	movzwl	%ax, %eax	# D.18645, D.18643
	andl	$4, %eax	#, D.18643
	testl	%eax, %eax	# D.18643
	je	.L8	#,
	.loc 1 1559 0
	addq	$1, -8(%rbp)	#, endp
	jmp	.L7	#
.L8:
	.loc 1 1561 0
	jmp	.L9	#
.L7:
	.loc 1 1556 0 discriminator 1
	movq	-8(%rbp), %rax	# endp, tmp72
	movzbl	(%rax), %eax	# *endp_1, D.18644
	testb	%al, %al	# D.18644
	jne	.L10	#,
.L9:
	.loc 1 1564 0
	movq	-8(%rbp), %rax	# endp, tmp73
	movzbl	(%rax), %eax	# *endp_1, D.18644
	testb	%al, %al	# D.18644
	je	.L11	#,
	.loc 1 1566 0
	cmpq	$0, -32(%rbp)	#, pname
	je	.L12	#,
	.loc 1 1567 0
	movq	-32(%rbp), %rax	# pname, tmp74
	movq	%rax, %rsi	# tmp74,
	movl	$.LC548, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.L12:
	.loc 1 1568 0
	movl	-36(%rbp), %eax	# defval, D.18643
	jmp	.L13	#
.L11:
	.loc 1 1571 0
	movq	-24(%rbp), %rax	# p, tmp75
	movq	%rax, %rdi	# tmp75,
	call	atoi	#
.L13:
	.loc 1 1572 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	read_integral_parameter, .-read_integral_parameter
	.type	decl_name, @function
decl_name:
.LFB6:
	.loc 1 1581 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# decl, decl
	movl	%esi, -12(%rbp)	# verbosity, verbosity
	.loc 1 1582 0
	movq	-8(%rbp), %rax	# decl, tmp62
	movq	72(%rax), %rax	# decl_1(D)->decl.name, D.18647
	movq	32(%rax), %rax	# _2->identifier.id.str, D.18648
	.loc 1 1583 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	decl_name, .-decl_name
	.section	.rodata
.LC549:
	.string	"toplev.c"
	.text
	.globl	do_abort
	.type	do_abort, @function
do_abort:
.LFB7:
	.loc 1 1591 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1592 0
	movl	$__FUNCTION__.15445, %edx	#,
	movl	$1592, %esi	#,
	movl	$.LC549, %edi	#,
	call	fancy_abort	#
	.cfi_endproc
.LFE7:
	.size	do_abort, .-do_abort
	.globl	botch
	.type	botch, @function
botch:
.LFB8:
	.loc 1 1601 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# s, s
	.loc 1 1602 0
	movl	$__FUNCTION__.15449, %edx	#,
	movl	$1602, %esi	#,
	movl	$.LC549, %edi	#,
	call	fancy_abort	#
	.cfi_endproc
.LFE8:
	.size	botch, .-botch
	.globl	exact_log2_wide
	.type	exact_log2_wide, @function
exact_log2_wide:
.LFB9:
	.loc 1 1613 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# x, x
	.loc 1 1614 0
	movl	$0, -4(%rbp)	#, log
	.loc 1 1616 0
	cmpq	$0, -24(%rbp)	#, x
	je	.L19	#,
	.loc 1 1616 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# x, tmp63
	negq	%rax	# D.18651
	andq	-24(%rbp), %rax	# x, D.18651
	cmpq	-24(%rbp), %rax	# x, D.18651
	je	.L20	#,
.L19:
	.loc 1 1617 0 is_stmt 1
	movl	$-1, %eax	#, D.18650
	jmp	.L21	#
.L20:
	.loc 1 1618 0
	jmp	.L22	#
.L23:
	.loc 1 1619 0
	addl	$1, -4(%rbp)	#, log
.L22:
	.loc 1 1618 0 discriminator 1
	shrq	-24(%rbp)	# x
	cmpq	$0, -24(%rbp)	#, x
	jne	.L23	#,
	.loc 1 1620 0
	movl	-4(%rbp), %eax	# log, D.18650
.L21:
	.loc 1 1621 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	exact_log2_wide, .-exact_log2_wide
	.globl	floor_log2_wide
	.type	floor_log2_wide, @function
floor_log2_wide:
.LFB10:
	.loc 1 1631 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# x, x
	.loc 1 1632 0
	movl	$-1, -4(%rbp)	#, log
	.loc 1 1633 0
	jmp	.L25	#
.L26:
	.loc 1 1634 0
	addl	$1, -4(%rbp)	#, log
	.loc 1 1635 0
	shrq	-24(%rbp)	# x
.L25:
	.loc 1 1633 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, x
	jne	.L26	#,
	.loc 1 1636 0
	movl	-4(%rbp), %eax	# log, D.18652
	.loc 1 1637 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	floor_log2_wide, .-floor_log2_wide
	.local	float_handler_set
	.comm	float_handler_set,4,4
	.comm	float_handled,4,4
	.comm	float_handler,200,32
	.type	float_signal, @function
float_signal:
.LFB11:
	.loc 1 1649 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# signo, signo
	.loc 1 1650 0
	movl	float_handled(%rip), %eax	# float_handled, float_handled.1
	testl	%eax, %eax	# float_handled.1
	jne	.L29	#,
	.loc 1 1651 0
	movl	-4(%rbp), %eax	# signo, tmp60
	movl	%eax, %edi	# tmp60,
	call	crash_signal	#
.L29:
	.loc 1 1652 0
	movl	$0, float_handled(%rip)	#, float_handled
	.loc 1 1656 0
	movl	$float_signal, %esi	#,
	movl	$8, %edi	#,
	call	signal	#
	.loc 1 1657 0
	movl	$1, %esi	#,
	movl	$float_handler, %edi	#,
	call	longjmp	#
	.cfi_endproc
.LFE11:
	.size	float_signal, .-float_signal
	.type	set_float_handler, @function
set_float_handler:
.LFB12:
	.loc 1 1666 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# handler, handler
	.loc 1 1667 0
	cmpq	$0, -8(%rbp)	#, handler
	setne	%al	#, D.18653
	movzbl	%al, %eax	# D.18653, float_handled.2
	movl	%eax, float_handled(%rip)	# float_handled.2, float_handled
	.loc 1 1668 0
	cmpq	$0, -8(%rbp)	#, handler
	je	.L31	#,
	.loc 1 1669 0
	movq	-8(%rbp), %rax	# handler, tmp63
	movl	$200, %edx	#,
	movq	%rax, %rsi	# tmp63,
	movl	$float_handler, %edi	#,
	call	memcpy	#
.L31:
	.loc 1 1671 0
	movl	float_handled(%rip), %eax	# float_handled, float_handled.3
	testl	%eax, %eax	# float_handled.3
	je	.L30	#,
	.loc 1 1671 0 is_stmt 0 discriminator 1
	movl	float_handler_set(%rip), %eax	# float_handler_set, float_handler_set.4
	testl	%eax, %eax	# float_handler_set.4
	jne	.L30	#,
	.loc 1 1673 0 is_stmt 1
	movl	$float_signal, %esi	#,
	movl	$8, %edi	#,
	call	signal	#
	.loc 1 1674 0
	movl	$1, float_handler_set(%rip)	#, float_handler_set
.L30:
	.loc 1 1676 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	set_float_handler, .-set_float_handler
	.globl	do_float_handler
	.type	do_float_handler, @function
do_float_handler:
.LFB13:
	.loc 1 1689 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$224, %rsp	#,
	movq	%rdi, -216(%rbp)	# fn, fn
	movq	%rsi, -224(%rbp)	# data, data
	.loc 1 1692 0
	leaq	-208(%rbp), %rax	#, tmp62
	movq	%rax, %rdi	# tmp62,
	call	_setjmp	#
	testl	%eax, %eax	# D.18654
	je	.L34	#,
	.loc 1 1696 0
	movl	$0, %edi	#,
	call	set_float_handler	#
	.loc 1 1697 0
	movl	$0, %eax	#, D.18654
	jmp	.L36	#
.L34:
	.loc 1 1700 0
	leaq	-208(%rbp), %rax	#, tmp63
	movq	%rax, %rdi	# tmp63,
	call	set_float_handler	#
	.loc 1 1701 0
	movq	-224(%rbp), %rdx	# data, tmp64
	movq	-216(%rbp), %rax	# fn, tmp65
	movq	%rdx, %rdi	# tmp64,
	call	*%rax	# tmp65
	.loc 1 1702 0
	movl	$0, %edi	#,
	call	set_float_handler	#
	.loc 1 1703 0
	movl	$1, %eax	#, D.18654
.L36:
	.loc 1 1704 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	do_float_handler, .-do_float_handler
	.section	.rodata
.LC550:
	.string	"internal error: %d"
	.text
	.type	crash_signal, @function
crash_signal:
.LFB14:
	.loc 1 1712 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# signo, signo
	.loc 1 1716 0
	movl	-4(%rbp), %eax	# signo, tmp59
	movl	%eax, %esi	# tmp59,
	movl	$.LC550, %edi	#,
	movl	$0, %eax	#,
	call	internal_error	#
	.cfi_endproc
.LFE14:
	.size	crash_signal, .-crash_signal
	.globl	strip_off_ending
	.type	strip_off_ending, @function
strip_off_ending:
.LFB15:
	.loc 1 1729 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# name, name
	movl	%esi, -28(%rbp)	# len, len
	.loc 1 1731 0
	movl	$2, -4(%rbp)	#, i
	jmp	.L39	#
.L42:
	.loc 1 1733 0
	movl	-4(%rbp), %eax	# i, tmp66
	movl	-28(%rbp), %edx	# len, tmp67
	subl	%eax, %edx	# tmp66, D.18656
	movl	%edx, %eax	# D.18656, D.18656
	movslq	%eax, %rdx	# D.18656, D.18657
	movq	-24(%rbp), %rax	# name, tmp68
	addq	%rdx, %rax	# D.18657, D.18658
	movzbl	(%rax), %eax	# *_7, D.18659
	cmpb	$46, %al	#, D.18659
	jne	.L40	#,
	.loc 1 1735 0
	movl	-4(%rbp), %eax	# i, tmp69
	movl	-28(%rbp), %edx	# len, tmp70
	subl	%eax, %edx	# tmp69, D.18656
	movl	%edx, %eax	# D.18656, D.18656
	movslq	%eax, %rdx	# D.18656, D.18657
	movq	-24(%rbp), %rax	# name, tmp71
	addq	%rdx, %rax	# D.18657, D.18658
	movb	$0, (%rax)	#, *_11
	.loc 1 1736 0
	jmp	.L38	#
.L40:
	.loc 1 1731 0
	addl	$1, -4(%rbp)	#, i
.L39:
	.loc 1 1731 0 is_stmt 0 discriminator 1
	cmpl	$5, -4(%rbp)	#, i
	jg	.L38	#,
	.loc 1 1731 0 discriminator 2
	movl	-28(%rbp), %eax	# len, tmp72
	cmpl	-4(%rbp), %eax	# i, tmp72
	jg	.L42	#,
.L38:
	.loc 1 1739 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	strip_off_ending, .-strip_off_ending
	.section	.rodata
.LC551:
	.string	"\\%03o"
	.text
	.globl	output_quoted_string
	.type	output_quoted_string, @function
output_quoted_string:
.LFB16:
	.loc 1 1747 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# asm_file, asm_file
	movq	%rsi, -32(%rbp)	# string, string
	.loc 1 1753 0
	movq	-24(%rbp), %rax	# asm_file, tmp67
	movq	%rax, %rsi	# tmp67,
	movl	$34, %edi	#,
	call	_IO_putc	#
	.loc 1 1754 0
	jmp	.L44	#
.L48:
	.loc 1 1756 0
	movsbl	-1(%rbp), %eax	# c, D.18660
	movzbl	%al, %eax	# D.18660, D.18660
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.18661
	movzwl	%ax, %eax	# D.18661, D.18660
	andl	$16, %eax	#, D.18660
	testl	%eax, %eax	# D.18660
	je	.L45	#,
	.loc 1 1758 0
	cmpb	$34, -1(%rbp)	#, c
	je	.L46	#,
	.loc 1 1758 0 is_stmt 0 discriminator 1
	cmpb	$92, -1(%rbp)	#, c
	jne	.L47	#,
.L46:
	.loc 1 1759 0 is_stmt 1
	movq	-24(%rbp), %rax	# asm_file, tmp69
	movq	%rax, %rsi	# tmp69,
	movl	$92, %edi	#,
	call	_IO_putc	#
.L47:
	.loc 1 1760 0
	movsbl	-1(%rbp), %eax	# c, D.18660
	movq	-24(%rbp), %rdx	# asm_file, tmp70
	movq	%rdx, %rsi	# tmp70,
	movl	%eax, %edi	# D.18660,
	call	_IO_putc	#
	jmp	.L44	#
.L45:
	.loc 1 1763 0
	movsbl	-1(%rbp), %edx	# c, D.18660
	movq	-24(%rbp), %rax	# asm_file, tmp71
	movl	$.LC551, %esi	#,
	movq	%rax, %rdi	# tmp71,
	movl	$0, %eax	#,
	call	fprintf	#
.L44:
	.loc 1 1754 0 discriminator 1
	movq	-32(%rbp), %rax	# string, string.5
	leaq	1(%rax), %rdx	#, tmp72
	movq	%rdx, -32(%rbp)	# tmp72, string
	movzbl	(%rax), %eax	# *string.5_4, tmp73
	movb	%al, -1(%rbp)	# tmp73, c
	cmpb	$0, -1(%rbp)	#, c
	jne	.L48	#,
	.loc 1 1765 0
	movq	-24(%rbp), %rax	# asm_file, tmp74
	movq	%rax, %rsi	# tmp74,
	movl	$34, %edi	#,
	call	_IO_putc	#
	.loc 1 1767 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	output_quoted_string, .-output_quoted_string
	.section	.rodata
.LC552:
	.string	"\t.file\t"
	.text
	.globl	output_file_directive
	.type	output_file_directive, @function
output_file_directive:
.LFB17:
	.loc 1 1775 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# asm_file, asm_file
	movq	%rsi, -32(%rbp)	# input_name, input_name
	.loc 1 1776 0
	movq	-32(%rbp), %rax	# input_name, tmp63
	movq	%rax, %rdi	# tmp63,
	call	strlen	#
	movl	%eax, -12(%rbp)	# D.18663, len
	.loc 1 1777 0
	movl	-12(%rbp), %eax	# len, tmp64
	movslq	%eax, %rdx	# tmp64, D.18664
	movq	-32(%rbp), %rax	# input_name, tmp68
	addq	%rdx, %rax	# D.18664, tmp67
	movq	%rax, -8(%rbp)	# tmp67, na
	.loc 1 1780 0
	jmp	.L50	#
.L53:
	.loc 1 1782 0
	movq	-8(%rbp), %rax	# na, tmp69
	subq	$1, %rax	#, D.18665
	movzbl	(%rax), %eax	# *_7, D.18666
	cmpb	$47, %al	#, D.18666
	jne	.L51	#,
	.loc 1 1783 0
	jmp	.L52	#
.L51:
	.loc 1 1784 0
	subq	$1, -8(%rbp)	#, na
.L50:
	.loc 1 1780 0 discriminator 1
	movq	-8(%rbp), %rax	# na, tmp70
	cmpq	-32(%rbp), %rax	# input_name, tmp70
	ja	.L53	#,
.L52:
	.loc 1 1793 0
	movq	-24(%rbp), %rax	# asm_file, tmp71
	movq	%rax, %rcx	# tmp71,
	movl	$7, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC552, %edi	#,
	call	fwrite	#
	.loc 1 1794 0
	movq	-8(%rbp), %rdx	# na, tmp72
	movq	-24(%rbp), %rax	# asm_file, tmp73
	movq	%rdx, %rsi	# tmp72,
	movq	%rax, %rdi	# tmp73,
	call	output_quoted_string	#
	.loc 1 1795 0
	movq	-24(%rbp), %rax	# asm_file, tmp74
	movq	%rax, %rsi	# tmp74,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 1798 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	output_file_directive, .-output_file_directive
	.section	.rodata
.LC553:
	.string	".%02d."
.LC554:
	.string	"w"
.LC555:
	.string	"a"
.LC556:
	.string	"can't open %s"
.LC557:
	.string	"\n;; Function %s\n\n"
	.text
	.type	open_dump_file, @function
open_dump_file:
.LFB18:
	.loc 1 1806 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -68(%rbp)	# index, index
	movq	%rsi, -80(%rbp)	# decl, decl
	.loc 1 1806 0
	movq	%fs:40, %rax	#, tmp108
	movq	%rax, -24(%rbp)	# tmp108, D.18671
	xorl	%eax, %eax	# tmp108
	.loc 1 1811 0
	movl	-68(%rbp), %eax	# index, tmp76
	salq	$4, %rax	#, tmp77
	addq	$dump_file, %rax	#, tmp78
	movzbl	10(%rax), %eax	# dump_file[index_3(D)].enabled, D.18669
	testb	%al, %al	# D.18669
	jne	.L55	#,
	.loc 1 1812 0
	movl	$0, %eax	#, D.18668
	jmp	.L63	#
.L55:
	.loc 1 1814 0
	movl	$2, %edi	#,
	call	timevar_push	#
	.loc 1 1815 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.6
	testq	%rax, %rax	# rtl_dump_file.6
	je	.L57	#,
	.loc 1 1816 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.7
	movq	%rax, %rdi	# rtl_dump_file.7,
	call	fclose	#
.L57:
	.loc 1 1818 0
	movl	-68(%rbp), %edx	# index, tmp79
	leaq	-48(%rbp), %rax	#, tmp80
	movl	$.LC553, %esi	#,
	movq	%rax, %rdi	# tmp80,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 1 1820 0
	movl	-68(%rbp), %eax	# index, tmp81
	salq	$4, %rax	#, tmp82
	addq	$dump_file, %rax	#, tmp83
	movzbl	11(%rax), %eax	# dump_file[index_3(D)].initialized, D.18669
	testb	%al, %al	# D.18669
	jne	.L58	#,
	.loc 1 1823 0
	movl	graph_dump_format(%rip), %eax	# graph_dump_format, graph_dump_format.8
	testl	%eax, %eax	# graph_dump_format.8
	je	.L59	#,
	.loc 1 1824 0
	movl	-68(%rbp), %eax	# index, tmp84
	salq	$4, %rax	#, tmp85
	addq	$dump_file, %rax	#, tmp86
	movzbl	9(%rax), %eax	# dump_file[index_3(D)].graph_dump_p, D.18669
	testb	%al, %al	# D.18669
	je	.L59	#,
	.loc 1 1826 0
	movl	-68(%rbp), %eax	# index, tmp87
	salq	$4, %rax	#, tmp88
	addq	$dump_file, %rax	#, tmp89
	movq	(%rax), %rcx	# dump_file[index_3(D)].extension, D.18670
	leaq	-48(%rbp), %rax	#, tmp90
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.18670,
	movq	%rax, %rdi	# tmp90,
	movl	$0, %eax	#,
	call	concat	#
	movq	%rax, -56(%rbp)	# tmp91, dump_name
	.loc 1 1827 0
	movq	dump_base_name(%rip), %rax	# dump_base_name, dump_base_name.9
	movq	-56(%rbp), %rdx	# dump_name, tmp92
	movq	%rdx, %rsi	# tmp92,
	movq	%rax, %rdi	# dump_base_name.9,
	call	clean_graph_dump_file	#
	.loc 1 1828 0
	movq	-56(%rbp), %rax	# dump_name, tmp93
	movq	%rax, %rdi	# tmp93,
	call	free	#
.L59:
	.loc 1 1830 0
	movl	-68(%rbp), %eax	# index, tmp94
	salq	$4, %rax	#, tmp95
	addq	$dump_file, %rax	#, tmp96
	movb	$1, 11(%rax)	#, dump_file[index_3(D)].initialized
	.loc 1 1831 0
	movq	$.LC554, -64(%rbp)	#, open_arg
	jmp	.L60	#
.L58:
	.loc 1 1834 0
	movq	$.LC555, -64(%rbp)	#, open_arg
.L60:
	.loc 1 1836 0
	movl	-68(%rbp), %eax	# index, tmp97
	salq	$4, %rax	#, tmp98
	addq	$dump_file, %rax	#, tmp99
	movq	(%rax), %rdx	# dump_file[index_3(D)].extension, D.18670
	movq	dump_base_name(%rip), %rax	# dump_base_name, dump_base_name.10
	leaq	-48(%rbp), %rsi	#, tmp100
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# dump_base_name.10,
	movl	$0, %eax	#,
	call	concat	#
	movq	%rax, -56(%rbp)	# tmp101, dump_name
	.loc 1 1839 0
	movq	-64(%rbp), %rdx	# open_arg, tmp102
	movq	-56(%rbp), %rax	# dump_name, tmp103
	movq	%rdx, %rsi	# tmp102,
	movq	%rax, %rdi	# tmp103,
	call	fopen	#
	movq	%rax, rtl_dump_file(%rip)	# rtl_dump_file.11, rtl_dump_file
	.loc 1 1840 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.12
	testq	%rax, %rax	# rtl_dump_file.12
	jne	.L61	#,
	.loc 1 1841 0
	movq	-56(%rbp), %rax	# dump_name, tmp104
	movq	%rax, %rsi	# tmp104,
	movl	$.LC556, %edi	#,
	movl	$0, %eax	#,
	call	fatal_io_error	#
.L61:
	.loc 1 1843 0
	movq	-56(%rbp), %rax	# dump_name, tmp105
	movq	%rax, %rdi	# tmp105,
	call	free	#
	.loc 1 1845 0
	cmpq	$0, -80(%rbp)	#, decl
	je	.L62	#,
	.loc 1 1846 0
	movq	decl_printable_name(%rip), %rax	# decl_printable_name, decl_printable_name.13
	movq	-80(%rbp), %rdx	# decl, tmp106
	movl	$2, %esi	#,
	movq	%rdx, %rdi	# tmp106,
	call	*%rax	# decl_printable_name.13
	movq	%rax, %rdx	#, D.18670
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.14
	movl	$.LC557, %esi	#,
	movq	%rax, %rdi	# rtl_dump_file.14,
	movl	$0, %eax	#,
	call	fprintf	#
.L62:
	.loc 1 1849 0
	movl	$2, %edi	#,
	call	timevar_pop	#
	.loc 1 1850 0
	movl	$1, %eax	#, D.18668
.L63:
	.loc 1 1851 0
	movq	-24(%rbp), %rbx	# D.18671, tmp109
	xorq	%fs:40, %rbx	#, tmp109
	je	.L64	#,
	call	__stack_chk_fail	#
.L64:
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	open_dump_file, .-open_dump_file
	.type	close_dump_file, @function
close_dump_file:
.LFB19:
	.loc 1 1860 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movl	%edi, -52(%rbp)	# index, index
	movq	%rsi, -64(%rbp)	# func, func
	movq	%rdx, -72(%rbp)	# insns, insns
	.loc 1 1860 0
	movq	%fs:40, %rax	#, tmp82
	movq	%rax, -8(%rbp)	# tmp82, D.18681
	xorl	%eax, %eax	# tmp82
	.loc 1 1861 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.15
	testq	%rax, %rax	# rtl_dump_file.15
	jne	.L66	#,
	.loc 1 1862 0
	jmp	.L65	#
.L66:
	.loc 1 1864 0
	movl	$2, %edi	#,
	call	timevar_push	#
	.loc 1 1865 0
	cmpq	$0, -72(%rbp)	#, insns
	je	.L68	#,
	.loc 1 1866 0
	movl	graph_dump_format(%rip), %eax	# graph_dump_format, graph_dump_format.16
	testl	%eax, %eax	# graph_dump_format.16
	je	.L68	#,
	.loc 1 1867 0
	movl	-52(%rbp), %eax	# index, tmp67
	salq	$4, %rax	#, tmp68
	addq	$dump_file, %rax	#, tmp69
	movzbl	9(%rax), %eax	# dump_file[index_4(D)].graph_dump_p, D.18679
	testb	%al, %al	# D.18679
	je	.L68	#,
.LBB2:
	.loc 1 1872 0
	movl	-52(%rbp), %edx	# index, tmp70
	leaq	-32(%rbp), %rax	#, tmp71
	movl	$.LC553, %esi	#,
	movq	%rax, %rdi	# tmp71,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 1 1873 0
	movl	-52(%rbp), %eax	# index, tmp72
	salq	$4, %rax	#, tmp73
	addq	$dump_file, %rax	#, tmp74
	movq	(%rax), %rcx	# dump_file[index_4(D)].extension, D.18680
	leaq	-32(%rbp), %rax	#, tmp75
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.18680,
	movq	%rax, %rdi	# tmp75,
	movl	$0, %eax	#,
	call	concat	#
	movq	%rax, -40(%rbp)	# tmp76, suffix
	.loc 1 1874 0
	movq	dump_base_name(%rip), %rax	# dump_base_name, dump_base_name.17
	movq	-72(%rbp), %rdx	# insns, tmp77
	movq	-40(%rbp), %rcx	# suffix, tmp78
	movq	%rcx, %rsi	# tmp78,
	movq	%rax, %rdi	# dump_base_name.17,
	call	print_rtl_graph_with_bb	#
	.loc 1 1875 0
	movq	-40(%rbp), %rax	# suffix, tmp79
	movq	%rax, %rdi	# tmp79,
	call	free	#
.L68:
.LBE2:
	.loc 1 1878 0
	cmpq	$0, -64(%rbp)	#, func
	je	.L69	#,
	.loc 1 1878 0 is_stmt 0 discriminator 1
	cmpq	$0, -72(%rbp)	#, insns
	je	.L69	#,
	.loc 1 1879 0 is_stmt 1
	movq	rtl_dump_file(%rip), %rdx	# rtl_dump_file, rtl_dump_file.18
	movq	-72(%rbp), %rcx	# insns, tmp80
	movq	-64(%rbp), %rax	# func, tmp81
	movq	%rcx, %rsi	# tmp80,
	movq	%rdx, %rdi	# rtl_dump_file.18,
	call	*%rax	# tmp81
.L69:
	.loc 1 1881 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.19
	movq	%rax, %rdi	# rtl_dump_file.19,
	call	fflush	#
	.loc 1 1882 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.20
	movq	%rax, %rdi	# rtl_dump_file.20,
	call	fclose	#
	.loc 1 1884 0
	movq	$0, rtl_dump_file(%rip)	#, rtl_dump_file
	.loc 1 1885 0
	movl	$2, %edi	#,
	call	timevar_pop	#
.L65:
	.loc 1 1886 0
	movq	-8(%rbp), %rax	# D.18681, tmp83
	xorq	%fs:40, %rax	#, tmp83
	je	.L70	#,
	call	__stack_chk_fail	#
.L70:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	close_dump_file, .-close_dump_file
	.globl	wrapup_global_declarations
	.type	wrapup_global_declarations, @function
wrapup_global_declarations:
.LFB20:
	.loc 1 1897 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# vec, vec
	movl	%esi, -44(%rbp)	# len, len
	.loc 1 1901 0
	movl	$0, -12(%rbp)	#, output_something
	.loc 1 1903 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L72	#
.L74:
	.loc 1 1905 0
	movl	-20(%rbp), %eax	# i, tmp106
	cltq
	leaq	0(,%rax,8), %rdx	#, D.18682
	movq	-40(%rbp), %rax	# vec, tmp107
	addq	%rdx, %rax	# D.18682, D.18683
	movq	(%rax), %rax	# *_15, tmp108
	movq	%rax, -8(%rbp)	# tmp108, decl
	.loc 1 1908 0
	movq	-8(%rbp), %rax	# decl, tmp109
	movzbl	50(%rax), %edx	#, tmp112
	andl	$-5, %edx	#, tmp113
	movb	%dl, 50(%rax)	# tmp113,
	.loc 1 1910 0
	movq	-8(%rbp), %rax	# decl, tmp114
	movzbl	16(%rax), %eax	# decl_16->common.code, D.18684
	cmpb	$34, %al	#, D.18684
	jne	.L73	#,
	.loc 1 1910 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# decl, tmp115
	movq	40(%rax), %rax	# decl_16->decl.size, D.18685
	testq	%rax, %rax	# D.18685
	jne	.L73	#,
	.loc 1 1911 0 is_stmt 1
	movq	incomplete_decl_finalize_hook(%rip), %rax	# incomplete_decl_finalize_hook, incomplete_decl_finalize_hook.21
	testq	%rax, %rax	# incomplete_decl_finalize_hook.21
	je	.L73	#,
	.loc 1 1912 0
	movq	incomplete_decl_finalize_hook(%rip), %rax	# incomplete_decl_finalize_hook, incomplete_decl_finalize_hook.22
	movq	-8(%rbp), %rdx	# decl, tmp116
	movq	%rdx, %rdi	# tmp116,
	call	*%rax	# incomplete_decl_finalize_hook.22
.L73:
	.loc 1 1903 0
	addl	$1, -20(%rbp)	#, i
.L72:
	.loc 1 1903 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp117
	cmpl	-44(%rbp), %eax	# len, tmp117
	jl	.L74	#,
.L89:
	.loc 1 1920 0 is_stmt 1
	movl	$0, -16(%rbp)	#, reconsider
	.loc 1 1921 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L75	#
.L87:
	.loc 1 1923 0
	movl	-20(%rbp), %eax	# i, tmp118
	cltq
	leaq	0(,%rax,8), %rdx	#, D.18682
	movq	-40(%rbp), %rax	# vec, tmp119
	addq	%rdx, %rax	# D.18682, D.18683
	movq	(%rax), %rax	# *_26, tmp120
	movq	%rax, -8(%rbp)	# tmp120, decl
	.loc 1 1925 0
	movq	-8(%rbp), %rax	# decl, tmp121
	movzbl	17(%rax), %eax	# *decl_27, D.18684
	andl	$64, %eax	#, D.18684
	testb	%al, %al	# D.18684
	jne	.L76	#,
	.loc 1 1925 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# decl, tmp122
	movzbl	49(%rax), %eax	# *decl_27, D.18684
	andl	$1, %eax	#, D.18684
	testb	%al, %al	# D.18684
	je	.L77	#,
.L76:
	.loc 1 1926 0 is_stmt 1
	jmp	.L78	#
.L77:
	.loc 1 1953 0
	movq	-8(%rbp), %rax	# decl, tmp123
	movzbl	16(%rax), %eax	# decl_27->common.code, D.18684
	cmpb	$34, %al	#, D.18684
	jne	.L79	#,
	.loc 1 1953 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# decl, tmp124
	movzbl	18(%rax), %eax	# *decl_27, D.18684
	andl	$4, %eax	#, D.18684
	testb	%al, %al	# D.18684
	je	.L79	#,
.LBB3:
	.loc 1 1955 0 is_stmt 1
	movb	$1, -21(%rbp)	#, needed
	.loc 1 1957 0
	movq	-8(%rbp), %rax	# decl, tmp125
	movq	120(%rax), %rax	# decl_27->decl.assembler_name, D.18685
	testq	%rax, %rax	# D.18685
	jne	.L80	#,
	.loc 1 1957 0 is_stmt 0 discriminator 1
	movq	lang_set_decl_assembler_name(%rip), %rax	# lang_set_decl_assembler_name, lang_set_decl_assembler_name.23
	movq	-8(%rbp), %rdx	# decl, tmp126
	movq	%rdx, %rdi	# tmp126,
	call	*%rax	# lang_set_decl_assembler_name.23
.L80:
	.loc 1 1957 0 discriminator 2
	movq	-8(%rbp), %rax	# decl, tmp127
	movq	120(%rax), %rax	# decl_27->decl.assembler_name, D.18685
	movzbl	18(%rax), %eax	# *_38, D.18684
	andl	$4, %eax	#, D.18684
	testb	%al, %al	# D.18684
	jne	.L81	#,
	.loc 1 1959 0 is_stmt 1
	movq	-8(%rbp), %rax	# decl, tmp128
	movzbl	51(%rax), %eax	# *decl_27, D.18684
	andl	$4, %eax	#, D.18684
	testb	%al, %al	# D.18684
	je	.L82	#,
	.loc 1 1960 0
	movb	$0, -21(%rbp)	#, needed
	jmp	.L81	#
.L82:
	.loc 1 1961 0
	movq	-8(%rbp), %rax	# decl, tmp129
	movzbl	17(%rax), %eax	# *decl_27, D.18684
	andl	$16, %eax	#, D.18684
	testb	%al, %al	# D.18684
	je	.L81	#,
	.loc 1 1961 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# decl, tmp130
	movzbl	18(%rax), %eax	# *decl_27, D.18684
	andl	$8, %eax	#, D.18684
	testb	%al, %al	# D.18684
	jne	.L81	#,
	.loc 1 1962 0 is_stmt 1
	movl	optimize(%rip), %eax	# optimize, optimize.24
	testl	%eax, %eax	# optimize.24
	jne	.L83	#,
	.loc 1 1962 0 is_stmt 0 discriminator 1
	movl	flag_keep_static_consts(%rip), %eax	# flag_keep_static_consts, flag_keep_static_consts.25
	testl	%eax, %eax	# flag_keep_static_consts.25
	je	.L83	#,
	.loc 1 1963 0 is_stmt 1
	movq	-8(%rbp), %rax	# decl, tmp131
	movzbl	50(%rax), %eax	# *decl_27, D.18684
	andl	$64, %eax	#, D.18684
	testb	%al, %al	# D.18684
	je	.L81	#,
.L83:
	.loc 1 1964 0
	movb	$0, -21(%rbp)	#, needed
.L81:
	.loc 1 1966 0
	cmpb	$0, -21(%rbp)	#, needed
	je	.L79	#,
	.loc 1 1968 0
	movl	$1, -16(%rbp)	#, reconsider
	.loc 1 1969 0
	movq	-8(%rbp), %rax	# decl, tmp132
	movl	$1, %ecx	#,
	movl	$1, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp132,
	call	rest_of_decl_compilation	#
.L79:
.LBE3:
	.loc 1 1973 0
	movq	-8(%rbp), %rax	# decl, tmp133
	movzbl	16(%rax), %eax	# decl_27->common.code, D.18684
	cmpb	$30, %al	#, D.18684
	jne	.L78	#,
	.loc 1 1974 0
	movq	-8(%rbp), %rax	# decl, tmp134
	movq	104(%rax), %rax	# decl_27->decl.initial, D.18685
	testq	%rax, %rax	# D.18685
	je	.L78	#,
	.loc 1 1975 0
	movq	-8(%rbp), %rax	# decl, tmp135
	movq	160(%rax), %rax	# decl_27->decl.u2.f, D.18686
	testq	%rax, %rax	# D.18686
	je	.L78	#,
	.loc 1 1976 0
	movl	flag_keep_inline_functions(%rip), %eax	# flag_keep_inline_functions, flag_keep_inline_functions.26
	testl	%eax, %eax	# flag_keep_inline_functions.26
	jne	.L84	#,
	.loc 1 1977 0
	movq	-8(%rbp), %rax	# decl, tmp136
	movzbl	18(%rax), %eax	# *decl_27, D.18684
	andl	$8, %eax	#, D.18684
	testb	%al, %al	# D.18684
	je	.L85	#,
	.loc 1 1977 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# decl, tmp137
	movzbl	51(%rax), %eax	# *decl_27, D.18684
	andl	$4, %eax	#, D.18684
	testb	%al, %al	# D.18684
	je	.L84	#,
.L85:
	.loc 1 1978 0 is_stmt 1
	movq	-8(%rbp), %rax	# decl, tmp138
	movq	120(%rax), %rax	# decl_27->decl.assembler_name, D.18685
	testq	%rax, %rax	# D.18685
	jne	.L86	#,
	.loc 1 1978 0 is_stmt 0 discriminator 1
	movq	lang_set_decl_assembler_name(%rip), %rax	# lang_set_decl_assembler_name, lang_set_decl_assembler_name.27
	movq	-8(%rbp), %rdx	# decl, tmp139
	movq	%rdx, %rdi	# tmp139,
	call	*%rax	# lang_set_decl_assembler_name.27
.L86:
	.loc 1 1978 0 discriminator 2
	movq	-8(%rbp), %rax	# decl, tmp140
	movq	120(%rax), %rax	# decl_27->decl.assembler_name, D.18685
	movzbl	18(%rax), %eax	# *_64, D.18684
	andl	$4, %eax	#, D.18684
	testb	%al, %al	# D.18684
	je	.L78	#,
.L84:
	.loc 1 1980 0 is_stmt 1
	movl	$1, -16(%rbp)	#, reconsider
	.loc 1 1981 0
	movq	-8(%rbp), %rax	# decl, tmp141
	movq	%rax, %rdi	# tmp141,
	call	output_inline_function	#
.L78:
	.loc 1 1921 0
	addl	$1, -20(%rbp)	#, i
.L75:
	.loc 1 1921 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp142
	cmpl	-44(%rbp), %eax	# len, tmp142
	jl	.L87	#,
	.loc 1 1985 0 is_stmt 1
	cmpl	$0, -16(%rbp)	#, reconsider
	je	.L88	#,
	.loc 1 1986 0
	movl	$1, -12(%rbp)	#, output_something
.L88:
	.loc 1 1988 0
	cmpl	$0, -16(%rbp)	#, reconsider
	jne	.L89	#,
	.loc 1 1990 0
	movl	-12(%rbp), %eax	# output_something, D.18687
	.loc 1 1991 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	wrapup_global_declarations, .-wrapup_global_declarations
	.section	.rodata
.LC558:
	.string	"`%s' used but never defined"
	.align 8
.LC559:
	.string	"`%s' declared `static' but never defined"
.LC560:
	.string	"`%s' defined but not used"
	.text
	.globl	check_global_declarations
	.type	check_global_declarations, @function
check_global_declarations:
.LFB21:
	.loc 1 2000 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# vec, vec
	movl	%esi, -28(%rbp)	# len, len
	.loc 1 2004 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L92	#
.L104:
	.loc 1 2006 0
	movl	-12(%rbp), %eax	# i, tmp110
	cltq
	leaq	0(,%rax,8), %rdx	#, D.18688
	movq	-24(%rbp), %rax	# vec, tmp111
	addq	%rdx, %rax	# D.18688, D.18689
	movq	(%rax), %rax	# *_7, tmp112
	movq	%rax, -8(%rbp)	# tmp112, decl
	.loc 1 2008 0
	movq	-8(%rbp), %rax	# decl, tmp113
	movzbl	16(%rax), %eax	# decl_8->common.code, D.18690
	cmpb	$34, %al	#, D.18690
	jne	.L93	#,
	.loc 1 2008 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# decl, tmp114
	movzbl	18(%rax), %eax	# *decl_8, D.18690
	andl	$4, %eax	#, D.18690
	testb	%al, %al	# D.18690
	je	.L93	#,
	.loc 1 2009 0 is_stmt 1
	movq	-8(%rbp), %rax	# decl, tmp115
	movzbl	17(%rax), %eax	# *decl_8, D.18690
	andl	$64, %eax	#, D.18690
	testb	%al, %al	# D.18690
	jne	.L93	#,
	.loc 1 2013 0
	movq	-8(%rbp), %rax	# decl, tmp116
	movq	$0, 144(%rax)	#, decl_8->decl.rtl
.L93:
	.loc 1 2020 0
	movq	-8(%rbp), %rax	# decl, tmp117
	movzbl	16(%rax), %eax	# decl_8->common.code, D.18690
	cmpb	$30, %al	#, D.18690
	jne	.L94	#,
	.loc 1 2021 0
	movl	warn_unused_function(%rip), %eax	# warn_unused_function, warn_unused_function.28
	testl	%eax, %eax	# warn_unused_function.28
	jne	.L95	#,
	.loc 1 2022 0
	movq	-8(%rbp), %rax	# decl, tmp118
	movq	120(%rax), %rax	# decl_8->decl.assembler_name, D.18691
	testq	%rax, %rax	# D.18691
	jne	.L96	#,
	.loc 1 2022 0 is_stmt 0 discriminator 1
	movq	lang_set_decl_assembler_name(%rip), %rax	# lang_set_decl_assembler_name, lang_set_decl_assembler_name.29
	movq	-8(%rbp), %rdx	# decl, tmp119
	movq	%rdx, %rdi	# tmp119,
	call	*%rax	# lang_set_decl_assembler_name.29
.L96:
	.loc 1 2022 0 discriminator 2
	movq	-8(%rbp), %rax	# decl, tmp120
	movq	120(%rax), %rax	# decl_8->decl.assembler_name, D.18691
	movzbl	18(%rax), %eax	# *_18, D.18690
	andl	$4, %eax	#, D.18690
	testb	%al, %al	# D.18690
	je	.L94	#,
.L95:
	.loc 1 2023 0 is_stmt 1
	movq	-8(%rbp), %rax	# decl, tmp121
	movq	104(%rax), %rax	# decl_8->decl.initial, D.18691
	testq	%rax, %rax	# D.18691
	jne	.L94	#,
	.loc 1 2024 0
	movq	-8(%rbp), %rax	# decl, tmp122
	movzbl	49(%rax), %eax	# *decl_8, D.18690
	andl	$1, %eax	#, D.18690
	testb	%al, %al	# D.18690
	je	.L94	#,
	.loc 1 2025 0
	movq	-8(%rbp), %rax	# decl, tmp123
	movzbl	50(%rax), %eax	# *decl_8, D.18690
	andl	$64, %eax	#, D.18690
	testb	%al, %al	# D.18690
	jne	.L94	#,
	.loc 1 2026 0
	movq	-8(%rbp), %rax	# decl, tmp124
	movzbl	18(%rax), %eax	# *decl_8, D.18690
	andl	$8, %eax	#, D.18690
	testb	%al, %al	# D.18690
	jne	.L94	#,
	.loc 1 2028 0
	movq	-8(%rbp), %rax	# decl, tmp125
	movq	120(%rax), %rax	# decl_8->decl.assembler_name, D.18691
	testq	%rax, %rax	# D.18691
	jne	.L97	#,
	.loc 1 2028 0 is_stmt 0 discriminator 1
	movq	lang_set_decl_assembler_name(%rip), %rax	# lang_set_decl_assembler_name, lang_set_decl_assembler_name.30
	movq	-8(%rbp), %rdx	# decl, tmp126
	movq	%rdx, %rdi	# tmp126,
	call	*%rax	# lang_set_decl_assembler_name.30
.L97:
	.loc 1 2028 0 discriminator 2
	movq	-8(%rbp), %rax	# decl, tmp127
	movq	120(%rax), %rax	# decl_8->decl.assembler_name, D.18691
	movzbl	18(%rax), %eax	# *_30, D.18690
	andl	$4, %eax	#, D.18690
	testb	%al, %al	# D.18690
	je	.L98	#,
	.loc 1 2029 0 is_stmt 1
	movq	-8(%rbp), %rax	# decl, tmp128
	movl	$.LC558, %esi	#,
	movq	%rax, %rdi	# tmp128,
	movl	$0, %eax	#,
	call	pedwarn_with_decl	#
	jmp	.L99	#
.L98:
	.loc 1 2032 0
	movq	-8(%rbp), %rax	# decl, tmp129
	movl	$.LC559, %esi	#,
	movq	%rax, %rdi	# tmp129,
	movl	$0, %eax	#,
	call	warning_with_decl	#
.L99:
	.loc 1 2035 0
	movq	-8(%rbp), %rax	# decl, tmp130
	movzbl	18(%rax), %edx	#, tmp133
	orl	$8, %edx	#, tmp134
	movb	%dl, 18(%rax)	# tmp134,
	.loc 1 2036 0
	movq	-8(%rbp), %rax	# decl, tmp135
	movq	%rax, %rdi	# tmp135,
	call	assemble_external	#
.L94:
	.loc 1 2042 0
	movl	warn_unused_function(%rip), %eax	# warn_unused_function, warn_unused_function.31
	testl	%eax, %eax	# warn_unused_function.31
	je	.L100	#,
	.loc 1 2043 0
	movq	-8(%rbp), %rax	# decl, tmp136
	movzbl	16(%rax), %eax	# decl_8->common.code, D.18690
	cmpb	$30, %al	#, D.18690
	jne	.L100	#,
	.loc 1 2043 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# decl, tmp137
	movzbl	49(%rax), %eax	# *decl_8, D.18690
	andl	$8, %eax	#, D.18690
	testb	%al, %al	# D.18690
	je	.L101	#,
.L100:
	.loc 1 2044 0 is_stmt 1
	movl	warn_unused_variable(%rip), %eax	# warn_unused_variable, warn_unused_variable.32
	testl	%eax, %eax	# warn_unused_variable.32
	je	.L102	#,
	.loc 1 2045 0
	movq	-8(%rbp), %rax	# decl, tmp138
	movzbl	16(%rax), %eax	# decl_8->common.code, D.18690
	cmpb	$34, %al	#, D.18690
	jne	.L102	#,
	.loc 1 2045 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# decl, tmp139
	movzbl	17(%rax), %eax	# *decl_8, D.18690
	andl	$16, %eax	#, D.18690
	testb	%al, %al	# D.18690
	jne	.L102	#,
.L101:
	.loc 1 2046 0 is_stmt 1
	movq	-8(%rbp), %rax	# decl, tmp140
	movzbl	50(%rax), %eax	# *decl_8, D.18690
	andl	$1, %eax	#, D.18690
	testb	%al, %al	# D.18690
	jne	.L102	#,
	.loc 1 2047 0
	movq	-8(%rbp), %rax	# decl, tmp141
	movzbl	49(%rax), %eax	# *decl_8, D.18690
	andl	$1, %eax	#, D.18690
	testb	%al, %al	# D.18690
	jne	.L102	#,
	.loc 1 2048 0
	movq	-8(%rbp), %rax	# decl, tmp142
	movzbl	18(%rax), %eax	# *decl_8, D.18690
	andl	$8, %eax	#, D.18690
	testb	%al, %al	# D.18690
	jne	.L102	#,
	.loc 1 2049 0
	movq	-8(%rbp), %rax	# decl, tmp143
	movzbl	18(%rax), %eax	# *decl_8, D.18690
	andl	$1, %eax	#, D.18690
	testb	%al, %al	# D.18690
	jne	.L102	#,
	.loc 1 2050 0
	movq	-8(%rbp), %rax	# decl, tmp144
	movzbl	16(%rax), %eax	# decl_8->common.code, D.18690
	cmpb	$30, %al	#, D.18690
	je	.L103	#,
	.loc 1 2050 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# decl, tmp145
	movzbl	49(%rax), %eax	# *decl_8, D.18690
	andl	$4, %eax	#, D.18690
	testb	%al, %al	# D.18690
	jne	.L102	#,
.L103:
	.loc 1 2054 0 is_stmt 1
	movq	-8(%rbp), %rax	# decl, tmp146
	movq	72(%rax), %rax	# decl_8->decl.name, D.18691
	movzbl	18(%rax), %eax	# *_52, D.18690
	andl	$1, %eax	#, D.18690
	testb	%al, %al	# D.18690
	jne	.L102	#,
	.loc 1 2055 0
	movq	-8(%rbp), %rax	# decl, tmp147
	movl	$.LC560, %esi	#,
	movq	%rax, %rdi	# tmp147,
	movl	$0, %eax	#,
	call	warning_with_decl	#
.L102:
	.loc 1 2057 0
	movl	$43, %edi	#,
	call	timevar_push	#
	.loc 1 2058 0
	movq	debug_hooks(%rip), %rax	# debug_hooks, debug_hooks.33
	movq	128(%rax), %rax	# debug_hooks.33_55->global_decl, D.18692
	movq	-8(%rbp), %rdx	# decl, tmp148
	movq	%rdx, %rdi	# tmp148,
	call	*%rax	# D.18692
	.loc 1 2059 0
	movl	$43, %edi	#,
	call	timevar_pop	#
	.loc 1 2004 0
	addl	$1, -12(%rbp)	#, i
.L92:
	.loc 1 2004 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# i, tmp149
	cmpl	-28(%rbp), %eax	# len, tmp149
	jl	.L104	#,
	.loc 1 2061 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	check_global_declarations, .-check_global_declarations
	.globl	push_srcloc
	.type	push_srcloc, @function
push_srcloc:
.LFB22:
	.loc 1 2071 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# file, file
	movl	%esi, -28(%rbp)	# line, line
	.loc 1 2074 0
	movq	input_file_stack(%rip), %rax	# input_file_stack, input_file_stack.34
	testq	%rax, %rax	# input_file_stack.34
	je	.L106	#,
	.loc 1 2076 0
	movq	input_file_stack(%rip), %rax	# input_file_stack, input_file_stack.35
	movq	input_filename(%rip), %rdx	# input_filename, input_filename.36
	movq	%rdx, (%rax)	# input_filename.36, input_file_stack.35_2->name
	.loc 1 2077 0
	movq	input_file_stack(%rip), %rax	# input_file_stack, input_file_stack.37
	movl	lineno(%rip), %edx	# lineno, lineno.38
	movl	%edx, 16(%rax)	# lineno.38, input_file_stack.37_4->line
.L106:
	.loc 1 2080 0
	movl	$24, %edi	#,
	call	xmalloc	#
	movq	%rax, -8(%rbp)	# tmp69, fs
	.loc 1 2081 0
	movq	-24(%rbp), %rax	# file, tmp70
	movq	%rax, input_filename(%rip)	# tmp70, input_filename
	movq	input_filename(%rip), %rdx	# input_filename, input_filename.39
	movq	-8(%rbp), %rax	# fs, tmp71
	movq	%rdx, (%rax)	# input_filename.39, fs_6->name
	.loc 1 2082 0
	movl	-28(%rbp), %eax	# line, tmp72
	movl	%eax, lineno(%rip)	# tmp72, lineno
	movl	lineno(%rip), %edx	# lineno, lineno.40
	movq	-8(%rbp), %rax	# fs, tmp73
	movl	%edx, 16(%rax)	# lineno.40, fs_6->line
	.loc 1 2083 0
	movq	-8(%rbp), %rax	# fs, tmp74
	movl	$0, 20(%rax)	#, fs_6->indent_level
	.loc 1 2084 0
	movq	input_file_stack(%rip), %rdx	# input_file_stack, input_file_stack.41
	movq	-8(%rbp), %rax	# fs, tmp75
	movq	%rdx, 8(%rax)	# input_file_stack.41, fs_6->next
	.loc 1 2085 0
	movq	-8(%rbp), %rax	# fs, tmp76
	movq	%rax, input_file_stack(%rip)	# tmp76, input_file_stack
	.loc 1 2086 0
	movl	input_file_stack_tick(%rip), %eax	# input_file_stack_tick, input_file_stack_tick.42
	addl	$1, %eax	#, input_file_stack_tick.43
	movl	%eax, input_file_stack_tick(%rip)	# input_file_stack_tick.43, input_file_stack_tick
	.loc 1 2087 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	push_srcloc, .-push_srcloc
	.globl	pop_srcloc
	.type	pop_srcloc, @function
pop_srcloc:
.LFB23:
	.loc 1 2095 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 2098 0
	movq	input_file_stack(%rip), %rax	# input_file_stack, tmp67
	movq	%rax, -8(%rbp)	# tmp67, fs
	.loc 1 2099 0
	movq	-8(%rbp), %rax	# fs, tmp68
	movq	8(%rax), %rax	# fs_1->next, input_file_stack.44
	movq	%rax, input_file_stack(%rip)	# input_file_stack.44, input_file_stack
	.loc 1 2100 0
	movq	-8(%rbp), %rax	# fs, tmp69
	movq	%rax, %rdi	# tmp69,
	call	free	#
	.loc 1 2101 0
	movl	input_file_stack_tick(%rip), %eax	# input_file_stack_tick, input_file_stack_tick.45
	addl	$1, %eax	#, input_file_stack_tick.46
	movl	%eax, input_file_stack_tick(%rip)	# input_file_stack_tick.46, input_file_stack_tick
	.loc 1 2103 0
	movq	input_file_stack(%rip), %rax	# input_file_stack, input_file_stack.47
	testq	%rax, %rax	# input_file_stack.47
	jne	.L108	#,
	.loc 1 2104 0
	movl	$__FUNCTION__.15558, %edx	#,
	movl	$2104, %esi	#,
	movl	$.LC549, %edi	#,
	call	fancy_abort	#
.L108:
	.loc 1 2105 0
	movq	input_file_stack(%rip), %rax	# input_file_stack, input_file_stack.48
	movq	(%rax), %rax	# input_file_stack.48_6->name, input_filename.49
	movq	%rax, input_filename(%rip)	# input_filename.49, input_filename
	.loc 1 2106 0
	movq	input_file_stack(%rip), %rax	# input_file_stack, input_file_stack.50
	movl	16(%rax), %eax	# input_file_stack.50_8->line, lineno.51
	movl	%eax, lineno(%rip)	# lineno.51, lineno
	.loc 1 2107 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	pop_srcloc, .-pop_srcloc
	.section	.rodata
.LC561:
	.string	"\t.ident\t"
.LC562:
	.string	"%s\"GCC: (GNU) %s\"\n"
	.text
	.type	compile_file, @function
compile_file:
.LFB24:
	.loc 1 2114 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	.loc 1 2119 0
	movq	main_input_filename(%rip), %rax	# main_input_filename, main_input_filename.52
	movq	%rax, %rdi	# main_input_filename.52,
	call	init_final	#
	.loc 1 2120 0
	movq	dump_base_name(%rip), %rax	# dump_base_name, dump_base_name.53
	movq	%rax, %rdi	# dump_base_name.53,
	call	init_branch_prob	#
	.loc 1 2122 0
	movl	$9, %edi	#,
	call	timevar_push	#
	.loc 1 2126 0
	call	yyparse	#
	.loc 1 2130 0
	movq	lang_hooks+56(%rip), %rax	# lang_hooks.clear_binding_stack, D.18696
	call	*%rax	# D.18696
	.loc 1 2135 0
	movl	$9, %edi	#,
	call	timevar_pop	#
	.loc 1 2137 0
	movl	flag_syntax_only(%rip), %eax	# flag_syntax_only, flag_syntax_only.54
	testl	%eax, %eax	# flag_syntax_only.54
	je	.L110	#,
	.loc 1 2138 0
	jmp	.L109	#
.L110:
	.loc 1 2140 0
	call	getdecls	#
	movq	%rax, -16(%rbp)	# tmp85, globals
.LBB4:
	.loc 1 2147 0
	movq	-16(%rbp), %rax	# globals, tmp86
	movq	%rax, %rdi	# tmp86,
	call	list_length	#
	movl	%eax, -28(%rbp)	# tmp87, len
	.loc 1 2148 0
	movl	-28(%rbp), %eax	# len, tmp88
	cltq
	salq	$3, %rax	#, D.18697
	movq	%rax, %rdi	# D.18697,
	call	xmalloc	#
	movq	%rax, -8(%rbp)	# tmp89, vec
	.loc 1 2155 0
	movl	$0, -32(%rbp)	#, i
	movq	-16(%rbp), %rax	# globals, tmp90
	movq	%rax, -24(%rbp)	# tmp90, decl
	jmp	.L112	#
.L113:
	.loc 1 2156 0 discriminator 2
	movl	-32(%rbp), %eax	# i, tmp91
	movl	-28(%rbp), %edx	# len, tmp92
	subl	%eax, %edx	# tmp91, D.18698
	movl	%edx, %eax	# D.18698, D.18698
	cltq
	salq	$3, %rax	#, D.18697
	leaq	-8(%rax), %rdx	#, D.18699
	movq	-8(%rbp), %rax	# vec, tmp93
	addq	%rax, %rdx	# tmp93, D.18700
	movq	-24(%rbp), %rax	# decl, tmp94
	movq	%rax, (%rdx)	# tmp94, *_18
	.loc 1 2155 0 discriminator 2
	addl	$1, -32(%rbp)	#, i
	movq	-24(%rbp), %rax	# decl, tmp95
	movq	(%rax), %rax	# decl_2->common.chain, tmp96
	movq	%rax, -24(%rbp)	# tmp96, decl
.L112:
	.loc 1 2155 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# i, tmp97
	cmpl	-28(%rbp), %eax	# len, tmp97
	jl	.L113	#,
	.loc 1 2158 0 is_stmt 1
	movl	-28(%rbp), %edx	# len, tmp98
	movq	-8(%rbp), %rax	# vec, tmp99
	movl	%edx, %esi	# tmp98,
	movq	%rax, %rdi	# tmp99,
	call	wrapup_global_declarations	#
	.loc 1 2167 0
	call	output_func_start_profiler	#
	.loc 1 2169 0
	movl	-28(%rbp), %edx	# len, tmp100
	movq	-8(%rbp), %rax	# vec, tmp101
	movl	%edx, %esi	# tmp100,
	movq	%rax, %rdi	# tmp101,
	call	check_global_declarations	#
	.loc 1 2172 0
	movq	-8(%rbp), %rax	# vec, tmp102
	movq	%rax, %rdi	# tmp102,
	call	free	#
.LBE4:
	.loc 1 2177 0
	call	weak_finish	#
	.loc 1 2180 0
	movl	$43, %edi	#,
	call	timevar_push	#
	.loc 1 2183 0
	call	dwarf2out_do_frame	#
	testl	%eax, %eax	# D.18698
	je	.L114	#,
	.loc 1 2184 0
	call	dwarf2out_frame_finish	#
.L114:
	.loc 1 2187 0
	movq	debug_hooks(%rip), %rax	# debug_hooks, debug_hooks.55
	movq	8(%rax), %rax	# debug_hooks.55_22->finish, D.18701
	movq	main_input_filename(%rip), %rdx	# main_input_filename, main_input_filename.56
	movq	%rdx, %rdi	# main_input_filename.56,
	call	*%rax	# D.18701
	.loc 1 2188 0
	movl	$43, %edi	#,
	call	timevar_pop	#
	.loc 1 2192 0
	call	dw2_output_indirect_constants	#
	.loc 1 2194 0
	movq	dump_base_name(%rip), %rax	# dump_base_name, dump_base_name.57
	movq	%rax, %rdi	# dump_base_name.57,
	call	end_final	#
	.loc 1 2196 0
	movl	profile_arc_flag(%rip), %eax	# profile_arc_flag, profile_arc_flag.58
	testl	%eax, %eax	# profile_arc_flag.58
	jne	.L115	#,
	.loc 1 2196 0 is_stmt 0 discriminator 1
	movl	flag_test_coverage(%rip), %eax	# flag_test_coverage, flag_test_coverage.59
	testl	%eax, %eax	# flag_test_coverage.59
	jne	.L115	#,
	movl	flag_branch_probabilities(%rip), %eax	# flag_branch_probabilities, flag_branch_probabilities.60
	testl	%eax, %eax	# flag_branch_probabilities.60
	je	.L116	#,
.L115:
	.loc 1 2198 0 is_stmt 1
	movl	$2, %edi	#,
	call	timevar_push	#
	.loc 1 2199 0
	movl	$0, %esi	#,
	movl	$14, %edi	#,
	call	open_dump_file	#
	.loc 1 2201 0
	call	end_branch_prob	#
	.loc 1 2203 0
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	$14, %edi	#,
	call	close_dump_file	#
	.loc 1 2204 0
	movl	$2, %edi	#,
	call	timevar_pop	#
.L116:
	.loc 1 2208 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.61
	movq	%rax, %rdi	# asm_out_file.61,
	call	ix86_asm_file_end	#
	.loc 1 2215 0
	movl	flag_no_ident(%rip), %eax	# flag_no_ident, flag_no_ident.62
	testl	%eax, %eax	# flag_no_ident.62
	jne	.L117	#,
	.loc 1 2216 0
	movq	version_string(%rip), %rdx	# version_string, version_string.63
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.64
	movq	%rdx, %rcx	# version_string.63,
	movl	$.LC561, %edx	#,
	movl	$.LC562, %esi	#,
	movq	%rax, %rdi	# asm_out_file.64,
	movl	$0, %eax	#,
	call	fprintf	#
.L117:
	.loc 1 2220 0
	movl	optimize(%rip), %eax	# optimize, optimize.65
	testl	%eax, %eax	# optimize.65
	jle	.L109	#,
	.loc 1 2220 0 is_stmt 0 discriminator 1
	movl	$0, %esi	#,
	movl	$16, %edi	#,
	call	open_dump_file	#
	testl	%eax, %eax	# D.18698
	je	.L109	#,
	.loc 1 2222 0 is_stmt 1
	movl	$2, %edi	#,
	call	timevar_push	#
	.loc 1 2223 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.66
	movq	%rax, %rdi	# rtl_dump_file.66,
	call	dump_combine_total_stats	#
	.loc 1 2224 0
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	$16, %edi	#,
	call	close_dump_file	#
	.loc 1 2225 0
	movl	$2, %edi	#,
	call	timevar_pop	#
.L109:
	.loc 1 2227 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	compile_file, .-compile_file
	.section	.rodata
.LC563:
	.string	"alias"
.LC564:
	.string	"\t.size\t"
.LC565:
	.string	"%ld"
	.align 8
.LC566:
	.string	"invalid register name `%s' for register variable"
	.text
	.globl	rest_of_decl_compilation
	.type	rest_of_decl_compilation, @function
rest_of_decl_compilation:
.LFB25:
	.loc 1 2248 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# decl, decl
	movq	%rsi, -32(%rbp)	# asmspec, asmspec
	movl	%edx, -36(%rbp)	# top_level, top_level
	movl	%ecx, -40(%rbp)	# at_end, at_end
.LBB5:
	.loc 1 2261 0
	movq	-24(%rbp), %rax	# decl, tmp91
	movq	136(%rax), %rax	# decl_2(D)->decl.attributes, D.18704
	movq	%rax, %rsi	# D.18704,
	movl	$.LC563, %edi	#,
	call	lookup_attribute	#
	movq	%rax, -16(%rbp)	# tmp92, alias
	.loc 1 2262 0
	cmpq	$0, -16(%rbp)	#, alias
	je	.L119	#,
	.loc 1 2264 0
	movq	-16(%rbp), %rax	# alias, tmp93
	movq	32(%rax), %rax	# alias_4->list.value, D.18704
	movq	32(%rax), %rax	# _5->list.value, tmp94
	movq	%rax, -16(%rbp)	# tmp94, alias
	.loc 1 2265 0
	movq	-16(%rbp), %rax	# alias, tmp95
	movq	40(%rax), %rax	# alias_6->string.pointer, D.18705
	movq	%rax, %rdi	# D.18705,
	call	get_identifier	#
	movq	%rax, -16(%rbp)	# tmp96, alias
	.loc 1 2266 0
	movq	-16(%rbp), %rdx	# alias, tmp97
	movq	-24(%rbp), %rax	# decl, tmp98
	movq	%rdx, %rsi	# tmp97,
	movq	%rax, %rdi	# tmp98,
	call	assemble_alias	#
.L119:
.LBE5:
	.loc 1 2272 0
	movq	-24(%rbp), %rax	# decl, tmp99
	movzbl	18(%rax), %eax	# *decl_2(D), D.18706
	andl	$4, %eax	#, D.18706
	testb	%al, %al	# D.18706
	jne	.L120	#,
	.loc 1 2272 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# decl, tmp100
	movzbl	49(%rax), %eax	# *decl_2(D), D.18706
	andl	$1, %eax	#, D.18706
	testb	%al, %al	# D.18706
	jne	.L120	#,
	.loc 1 2273 0 is_stmt 1
	movq	-24(%rbp), %rax	# decl, tmp101
	movzbl	16(%rax), %eax	# decl_2(D)->common.code, D.18706
	cmpb	$30, %al	#, D.18706
	jne	.L121	#,
.L120:
	.loc 1 2275 0
	movl	$11, %edi	#,
	call	timevar_push	#
	.loc 1 2276 0
	cmpq	$0, -32(%rbp)	#, asmspec
	je	.L122	#,
	.loc 1 2277 0
	movq	-32(%rbp), %rdx	# asmspec, tmp102
	movq	-24(%rbp), %rax	# decl, tmp103
	movq	%rdx, %rsi	# tmp102,
	movq	%rax, %rdi	# tmp103,
	call	make_decl_rtl	#
.L122:
	.loc 1 2281 0
	cmpl	$0, -40(%rbp)	#, at_end
	jne	.L123	#,
	.loc 1 2281 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# decl, tmp104
	movzbl	50(%rax), %eax	# *decl_2(D), D.18706
	andl	$4, %eax	#, D.18706
	testb	%al, %al	# D.18706
	jne	.L124	#,
.L123:
	.loc 1 2282 0 is_stmt 1
	movl	-40(%rbp), %edx	# at_end, tmp105
	movl	-36(%rbp), %esi	# top_level, tmp106
	movq	-24(%rbp), %rax	# decl, tmp107
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp107,
	call	assemble_variable	#
.L124:
	.loc 1 2283 0
	movq	last_assemble_variable_decl(%rip), %rax	# last_assemble_variable_decl, last_assemble_variable_decl.67
	cmpq	%rax, -24(%rbp)	# last_assemble_variable_decl.67, decl
	jne	.L125	#,
.LBB6:
	.loc 1 2285 0
	movq	-24(%rbp), %rax	# decl, tmp108
	movq	144(%rax), %rax	# decl_2(D)->decl.rtl, D.18708
	testq	%rax, %rax	# D.18708
	je	.L126	#,
	.loc 1 2285 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# decl, tmp109
	movq	144(%rax), %rax	# decl_2(D)->decl.rtl, iftmp.68
	jmp	.L127	#
.L126:
	.loc 1 2285 0 discriminator 2
	movq	-24(%rbp), %rax	# decl, tmp110
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp110,
	call	make_decl_rtl	#
	movq	-24(%rbp), %rax	# decl, tmp111
	movq	144(%rax), %rax	# decl_2(D)->decl.rtl, iftmp.68
.L127:
	.loc 1 2285 0 discriminator 3
	movq	8(%rax), %rax	# iftmp.68_1->fld[0].rtx, D.18708
	movq	8(%rax), %rax	# _29->fld[0].rtstr, tmp112
	movq	%rax, -8(%rbp)	# tmp112, name
	movl	flag_inhibit_size_directive(%rip), %eax	# flag_inhibit_size_directive, flag_inhibit_size_directive.69
	testl	%eax, %eax	# flag_inhibit_size_directive.69
	jne	.L125	#,
	.loc 1 2285 0 discriminator 1
	movq	-24(%rbp), %rax	# decl, tmp113
	movq	40(%rax), %rax	# decl_2(D)->decl.size, D.18704
	testq	%rax, %rax	# D.18704
	je	.L125	#,
	cmpl	$0, -40(%rbp)	#, at_end
	jne	.L125	#,
	cmpl	$0, -36(%rbp)	#, top_level
	je	.L125	#,
	movq	-24(%rbp), %rax	# decl, tmp114
	movq	104(%rax), %rdx	# decl_2(D)->decl.initial, D.18704
	movq	global_trees(%rip), %rax	# global_trees, D.18704
	cmpq	%rax, %rdx	# D.18704, D.18704
	jne	.L125	#,
	movl	size_directive_output(%rip), %eax	# size_directive_output, size_directive_output.70
	testl	%eax, %eax	# size_directive_output.70
	jne	.L125	#,
	movl	$1, size_directive_output(%rip)	#, size_directive_output
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.71
	movq	%rax, %rcx	# asm_out_file.71,
	movl	$7, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC564, %edi	#,
	call	fwrite	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.72
	movq	-8(%rbp), %rdx	# name, tmp115
	movq	%rdx, %rsi	# tmp115,
	movq	%rax, %rdi	# asm_out_file.72,
	call	assemble_name	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.73
	movq	%rax, %rsi	# asm_out_file.73,
	movl	$44, %edi	#,
	call	_IO_putc	#
	movq	-24(%rbp), %rax	# decl, tmp116
	movq	8(%rax), %rax	# decl_2(D)->common.type, D.18704
	movq	%rax, %rdi	# D.18704,
	call	int_size_in_bytes	#
	movq	%rax, %rdx	#, D.18709
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.74
	movl	$.LC565, %esi	#,
	movq	%rax, %rdi	# asm_out_file.74,
	movl	$0, %eax	#,
	call	fprintf	#
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.75
	movq	%rax, %rsi	# asm_out_file.75,
	movl	$10, %edi	#,
	call	fputc	#
.L125:
.LBE6:
	.loc 1 2288 0 is_stmt 1
	movl	$11, %edi	#,
	call	timevar_pop	#
	jmp	.L118	#
.L121:
	.loc 1 2290 0
	movq	-24(%rbp), %rax	# decl, tmp117
	movzbl	49(%rax), %eax	# *decl_2(D), D.18706
	andl	$4, %eax	#, D.18706
	testb	%al, %al	# D.18706
	je	.L129	#,
	.loc 1 2290 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, asmspec
	je	.L129	#,
	.loc 1 2292 0 is_stmt 1
	movq	-32(%rbp), %rax	# asmspec, tmp118
	movq	%rax, %rdi	# tmp118,
	call	decode_reg_name	#
	testl	%eax, %eax	# D.18707
	js	.L130	#,
	.loc 1 2294 0
	movq	-24(%rbp), %rax	# decl, tmp119
	movq	$0, 144(%rax)	#, decl_2(D)->decl.rtl
	.loc 1 2295 0
	movq	-32(%rbp), %rdx	# asmspec, tmp120
	movq	-24(%rbp), %rax	# decl, tmp121
	movq	%rdx, %rsi	# tmp120,
	movq	%rax, %rdi	# tmp121,
	call	make_decl_rtl	#
	jmp	.L131	#
.L130:
	.loc 1 2299 0
	movq	-32(%rbp), %rax	# asmspec, tmp122
	movq	%rax, %rsi	# tmp122,
	movl	$.LC566, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 2300 0
	movq	-24(%rbp), %rax	# decl, tmp123
	movzbl	49(%rax), %edx	#, tmp126
	andl	$-5, %edx	#, tmp127
	movb	%dl, 49(%rax)	# tmp127,
	.loc 1 2301 0
	cmpl	$0, -36(%rbp)	#, top_level
	jne	.L131	#,
	.loc 1 2302 0
	movq	-24(%rbp), %rax	# decl, tmp128
	movq	%rax, %rdi	# tmp128,
	call	expand_decl	#
	.loc 1 2292 0
	jmp	.L118	#
.L131:
	jmp	.L118	#
.L129:
	.loc 1 2306 0
	movl	write_symbols(%rip), %eax	# write_symbols, write_symbols.76
	cmpl	$1, %eax	#, write_symbols.76
	je	.L132	#,
	.loc 1 2306 0 is_stmt 0 discriminator 1
	movl	write_symbols(%rip), %eax	# write_symbols, write_symbols.77
	cmpl	$5, %eax	#, write_symbols.77
	jne	.L118	#,
.L132:
	.loc 1 2307 0 is_stmt 1
	movq	-24(%rbp), %rax	# decl, tmp129
	movzbl	16(%rax), %eax	# decl_2(D)->common.code, D.18706
	cmpb	$33, %al	#, D.18706
	jne	.L118	#,
	.loc 1 2309 0
	movl	$43, %edi	#,
	call	timevar_push	#
	.loc 1 2310 0
	movq	-24(%rbp), %rax	# decl, tmp130
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp130,
	call	dbxout_symbol	#
	.loc 1 2311 0
	movl	$43, %edi	#,
	call	timevar_pop	#
.L118:
	.loc 1 2323 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	rest_of_decl_compilation, .-rest_of_decl_compilation
	.globl	rest_of_type_compilation
	.type	rest_of_type_compilation, @function
rest_of_type_compilation:
.LFB26:
	.loc 1 2336 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# type, type
	movl	%esi, -12(%rbp)	# toplev, toplev
	.loc 1 2337 0
	movl	$43, %edi	#,
	call	timevar_push	#
	.loc 1 2339 0
	movl	write_symbols(%rip), %eax	# write_symbols, write_symbols.78
	cmpl	$1, %eax	#, write_symbols.78
	je	.L134	#,
	.loc 1 2339 0 is_stmt 0 discriminator 1
	movl	write_symbols(%rip), %eax	# write_symbols, write_symbols.79
	cmpl	$5, %eax	#, write_symbols.79
	jne	.L135	#,
.L134:
	.loc 1 2340 0 is_stmt 1
	cmpl	$0, -12(%rbp)	#, toplev
	sete	%al	#, D.18714
	movzbl	%al, %edx	# D.18714, D.18715
	movq	-8(%rbp), %rax	# type, tmp67
	movq	(%rax), %rax	# type_6(D)->common.chain, D.18716
	movl	%edx, %esi	# D.18715,
	movq	%rax, %rdi	# D.18716,
	call	dbxout_symbol	#
.L135:
	.loc 1 2347 0
	movl	write_symbols(%rip), %eax	# write_symbols, write_symbols.80
	cmpl	$4, %eax	#, write_symbols.80
	je	.L136	#,
	.loc 1 2348 0
	movl	write_symbols(%rip), %eax	# write_symbols, write_symbols.81
	cmpl	$7, %eax	#, write_symbols.81
	jne	.L137	#,
.L136:
	.loc 1 2349 0
	cmpl	$0, -12(%rbp)	#, toplev
	je	.L137	#,
	.loc 1 2350 0
	movq	-8(%rbp), %rax	# type, tmp68
	movq	(%rax), %rax	# type_6(D)->common.chain, D.18716
	movq	%rax, %rdi	# D.18716,
	call	dwarf2out_decl	#
.L137:
	.loc 1 2352 0
	movl	$43, %edi	#,
	call	timevar_pop	#
	.loc 1 2353 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	rest_of_type_compilation, .-rest_of_type_compilation
	.section	.rodata
.LC567:
	.string	";; (integrable)\n\n"
	.align 8
.LC568:
	.string	"crossjump disabled: %d > 1000 basic blocks and %d >= 20 edges/basic block"
	.text
	.globl	rest_of_compilation
	.type	rest_of_compilation, @function
rest_of_compilation:
.LFB27:
	.loc 1 2364 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$184, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -184(%rbp)	# decl, decl
	.loc 1 2367 0
	movl	$0, -168(%rbp)	#, failure
	.loc 1 2372 0
	movl	$44, %edi	#,
	call	timevar_push	#
	.loc 1 2376 0
	movl	$0, generating_concat_p(%rip)	#, generating_concat_p
	.loc 1 2380 0
	movl	optimize(%rip), %eax	# optimize, optimize.82
	testl	%eax, %eax	# optimize.82
	sete	%al	#, D.18717
	movzbl	%al, %eax	# D.18717, cse_not_expected.83
	movl	%eax, cse_not_expected(%rip)	# cse_not_expected.83, cse_not_expected
	.loc 1 2384 0
	movq	cfun(%rip), %rax	# cfun, cfun.84
	movzbl	426(%rax), %eax	# *cfun.84_26, D.18718
	andl	$4, %eax	#, D.18718
	testb	%al, %al	# D.18718
	jne	.L139	#,
	.loc 1 2385 0
	call	identify_blocks	#
.L139:
	.loc 1 2389 0
	movq	cfun(%rip), %rax	# cfun, cfun.85
	movzbl	426(%rax), %eax	# *cfun.85_29, D.18718
	andl	$4, %eax	#, D.18718
	testb	%al, %al	# D.18718
	je	.L140	#,
	.loc 1 2390 0
	call	reorder_blocks	#
.L140:
	.loc 1 2392 0
	call	init_flow	#
	.loc 1 2397 0
	movq	-184(%rbp), %rax	# decl, tmp361
	movq	160(%rax), %rax	# decl_32(D)->decl.u2.f, D.18719
	testq	%rax, %rax	# D.18719
	jne	.L141	#,
.LBB7:
	.loc 1 2399 0
	movl	$0, -156(%rbp)	#, inlinable
	.loc 1 2407 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.86
	movq	80(%rax), %rax	# current_function_decl.86_35->decl.context, tmp362
	movq	%rax, -120(%rbp)	# tmp362, parent
	jmp	.L142	#
.L145:
	.loc 1 2410 0
	movq	-120(%rbp), %rax	# parent, tmp363
	movzbl	16(%rax), %eax	# parent_10->common.code, D.18718
	cmpb	$30, %al	#, D.18718
	jne	.L143	#,
	.loc 1 2411 0
	movq	-120(%rbp), %rax	# parent, tmp364
	movzbl	49(%rax), %eax	# *parent_10, D.18718
	andl	$8, %eax	#, D.18718
	testb	%al, %al	# D.18718
	je	.L143	#,
	.loc 1 2411 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# parent, tmp365
	movzbl	49(%rax), %eax	# *parent_10, D.18718
	andl	$1, %eax	#, D.18718
	testb	%al, %al	# D.18718
	je	.L143	#,
	.loc 1 2413 0 is_stmt 1
	movq	-184(%rbp), %rax	# decl, tmp366
	movq	$0, 104(%rax)	#, decl_32(D)->decl.initial
	.loc 1 2414 0
	jmp	.L144	#
.L143:
	.loc 1 2409 0
	movq	-120(%rbp), %rax	# parent, tmp367
	movq	%rax, %rdi	# tmp367,
	call	get_containing_scope	#
	movq	%rax, -120(%rbp)	# tmp368, parent
.L142:
	.loc 1 2407 0 discriminator 1
	cmpq	$0, -120(%rbp)	#, parent
	jne	.L145	#,
	.loc 1 2418 0
	movq	-184(%rbp), %rax	# decl, tmp369
	movzbl	49(%rax), %eax	# *decl_32(D), D.18718
	andl	$8, %eax	#, D.18718
	testb	%al, %al	# D.18718
	je	.L146	#,
	.loc 1 2418 0 is_stmt 0 discriminator 1
	movl	flag_no_inline(%rip), %eax	# flag_no_inline, flag_no_inline.87
	testl	%eax, %eax	# flag_no_inline.87
	je	.L147	#,
.L146:
	.loc 1 2419 0 is_stmt 1
	movl	flag_inline_functions(%rip), %eax	# flag_inline_functions, flag_inline_functions.88
	testl	%eax, %eax	# flag_inline_functions.88
	je	.L148	#,
.L147:
	.loc 1 2421 0
	movl	$12, %edi	#,
	call	timevar_push	#
	.loc 1 2422 0
	movq	-184(%rbp), %rax	# decl, tmp370
	movq	%rax, %rdi	# tmp370,
	call	function_cannot_inline_p	#
	movq	%rax, -104(%rbp)	# tmp371, lose
	.loc 1 2423 0
	movl	$12, %edi	#,
	call	timevar_pop	#
	.loc 1 2424 0
	cmpq	$0, -104(%rbp)	#, lose
	jne	.L149	#,
	.loc 1 2424 0 is_stmt 0 discriminator 1
	movl	optimize(%rip), %eax	# optimize, optimize.89
	testl	%eax, %eax	# optimize.89
	jne	.L150	#,
.L149:
	.loc 1 2426 0 is_stmt 1
	movl	warn_inline(%rip), %eax	# warn_inline, warn_inline.90
	testl	%eax, %eax	# warn_inline.90
	je	.L151	#,
	.loc 1 2426 0 is_stmt 0 discriminator 1
	movq	-184(%rbp), %rax	# decl, tmp372
	movzbl	49(%rax), %eax	# *decl_32(D), D.18718
	andl	$8, %eax	#, D.18718
	testb	%al, %al	# D.18718
	je	.L151	#,
	.loc 1 2427 0 is_stmt 1
	movq	-104(%rbp), %rdx	# lose, tmp373
	movq	-184(%rbp), %rax	# decl, tmp374
	movq	%rdx, %rsi	# tmp373,
	movq	%rax, %rdi	# tmp374,
	movl	$0, %eax	#,
	call	warning_with_decl	#
.L151:
	.loc 1 2428 0
	movq	-184(%rbp), %rax	# decl, tmp375
	movq	$0, 112(%rax)	#, decl_32(D)->decl.abstract_origin
	.loc 1 2432 0
	movq	-184(%rbp), %rax	# decl, tmp376
	movzbl	49(%rax), %eax	# *decl_32(D), D.18718
	andl	$1, %eax	#, D.18718
	testb	%al, %al	# D.18718
	je	.L152	#,
	.loc 1 2434 0
	movq	-184(%rbp), %rax	# decl, tmp377
	movq	$0, 104(%rax)	#, decl_32(D)->decl.initial
	.loc 1 2435 0
	jmp	.L144	#
.L152:
	.loc 1 2432 0 discriminator 1
	jmp	.L148	#
.L150:
	.loc 1 2443 0
	movq	-184(%rbp), %rax	# decl, tmp378
	movzbl	49(%rax), %edx	#, tmp381
	orl	$8, %edx	#, tmp382
	movb	%dl, 49(%rax)	# tmp382,
	movq	-184(%rbp), %rax	# decl, tmp383
	movzbl	49(%rax), %eax	# *decl_32(D), tmp386
	shrb	$3, %al	#, D.18720
	andl	$1, %eax	#, D.18720
	movzbl	%al, %eax	# D.18720, tmp387
	movl	%eax, -156(%rbp)	# tmp387, inlinable
.L148:
	.loc 1 2446 0
	call	get_insns	#
	movq	%rax, -128(%rbp)	# tmp388, insns
	.loc 1 2450 0
	movq	-184(%rbp), %rax	# decl, tmp389
	movq	%rax, %rsi	# tmp389,
	movl	$0, %edi	#,
	call	open_dump_file	#
	testl	%eax, %eax	# D.18721
	je	.L153	#,
	.loc 1 2452 0
	movq	-184(%rbp), %rax	# decl, tmp390
	movq	160(%rax), %rax	# decl_32(D)->decl.u2.f, D.18719
	testq	%rax, %rax	# D.18719
	je	.L154	#,
	.loc 1 2453 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.91
	movq	%rax, %rcx	# rtl_dump_file.91,
	movl	$17, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC567, %edi	#,
	call	fwrite	#
.L154:
	.loc 1 2454 0
	movq	-128(%rbp), %rax	# insns, tmp391
	movq	%rax, %rdx	# tmp391,
	movl	$print_rtl, %esi	#,
	movl	$0, %edi	#,
	call	close_dump_file	#
.L153:
	.loc 1 2460 0
	call	convert_from_eh_region_ranges	#
	.loc 1 2468 0
	cmpl	$0, -156(%rbp)	#, inlinable
	jne	.L155	#,
	.loc 1 2469 0
	movq	-184(%rbp), %rax	# decl, tmp392
	movzbl	49(%rax), %eax	# *decl_32(D), D.18718
	andl	$8, %eax	#, D.18718
	testb	%al, %al	# D.18718
	je	.L156	#,
	.loc 1 2470 0
	movq	-184(%rbp), %rax	# decl, tmp393
	movzbl	18(%rax), %eax	# *decl_32(D), D.18718
	andl	$8, %eax	#, D.18718
	testb	%al, %al	# D.18718
	jne	.L157	#,
	.loc 1 2470 0 is_stmt 0 discriminator 1
	movq	-184(%rbp), %rax	# decl, tmp394
	movzbl	17(%rax), %eax	# *decl_32(D), D.18718
	andl	$4, %eax	#, D.18718
	testb	%al, %al	# D.18718
	jne	.L157	#,
	.loc 1 2471 0 is_stmt 1
	movq	-184(%rbp), %rax	# decl, tmp395
	movq	120(%rax), %rax	# decl_32(D)->decl.assembler_name, D.18722
	testq	%rax, %rax	# D.18722
	jne	.L158	#,
	.loc 1 2471 0 is_stmt 0 discriminator 1
	movq	lang_set_decl_assembler_name(%rip), %rax	# lang_set_decl_assembler_name, lang_set_decl_assembler_name.92
	movq	-184(%rbp), %rdx	# decl, tmp396
	movq	%rdx, %rdi	# tmp396,
	call	*%rax	# lang_set_decl_assembler_name.92
.L158:
	.loc 1 2471 0 discriminator 2
	movq	-184(%rbp), %rax	# decl, tmp397
	movq	120(%rax), %rax	# decl_32(D)->decl.assembler_name, D.18722
	movzbl	18(%rax), %eax	# *_68, D.18718
	andl	$4, %eax	#, D.18718
	testb	%al, %al	# D.18718
	jne	.L157	#,
	.loc 1 2472 0 is_stmt 1
	movl	flag_keep_inline_functions(%rip), %eax	# flag_keep_inline_functions, flag_keep_inline_functions.93
	testl	%eax, %eax	# flag_keep_inline_functions.93
	je	.L155	#,
.L157:
	.loc 1 2473 0
	movq	-184(%rbp), %rax	# decl, tmp398
	movzbl	49(%rax), %eax	# *decl_32(D), D.18718
	andl	$1, %eax	#, D.18718
	testb	%al, %al	# D.18718
	je	.L156	#,
.L155:
	.loc 1 2474 0
	movq	-184(%rbp), %rax	# decl, tmp399
	movzbl	50(%rax), %edx	#, tmp402
	orl	$4, %edx	#, tmp403
	movb	%dl, 50(%rax)	# tmp403,
.L156:
	.loc 1 2476 0
	movq	-184(%rbp), %rax	# decl, tmp404
	movzbl	49(%rax), %eax	# *decl_32(D), D.18718
	andl	$8, %eax	#, D.18718
	testb	%al, %al	# D.18718
	je	.L159	#,
	.loc 1 2482 0
	movq	debug_hooks(%rip), %rax	# debug_hooks, debug_hooks.94
	movq	136(%rax), %rax	# debug_hooks.94_76->deferred_inline_function, D.18723
	movq	-184(%rbp), %rdx	# decl, tmp405
	movq	%rdx, %rdi	# tmp405,
	call	*%rax	# D.18723
.L159:
	.loc 1 2484 0
	movq	-184(%rbp), %rax	# decl, tmp406
	movzbl	50(%rax), %eax	# *decl_32(D), D.18718
	andl	$4, %eax	#, D.18718
	testb	%al, %al	# D.18718
	je	.L160	#,
	.loc 1 2490 0
	movl	warn_return_type(%rip), %eax	# warn_return_type, warn_return_type.95
	testl	%eax, %eax	# warn_return_type.95
	je	.L161	#,
.LBB8:
	.loc 1 2492 0
	movl	optimize(%rip), %eax	# optimize, tmp407
	movl	%eax, -148(%rbp)	# tmp407, saved_optimize
	.loc 1 2494 0
	movl	$0, optimize(%rip)	#, optimize
	.loc 1 2495 0
	movq	-128(%rbp), %rax	# insns, tmp408
	movq	%rax, %rdi	# tmp408,
	call	rebuild_jump_labels	#
	.loc 1 2496 0
	call	find_exception_handler_labels	#
	.loc 1 2497 0
	movq	rtl_dump_file(%rip), %rbx	# rtl_dump_file, rtl_dump_file.96
	call	max_reg_num	#
	movl	%eax, %ecx	#, D.18721
	movq	-128(%rbp), %rax	# insns, tmp409
	movq	%rbx, %rdx	# rtl_dump_file.96,
	movl	%ecx, %esi	# D.18721,
	movq	%rax, %rdi	# tmp409,
	call	find_basic_blocks	#
	.loc 1 2498 0
	movl	$24, %edi	#,
	call	cleanup_cfg	#
	.loc 1 2499 0
	movl	-148(%rbp), %eax	# saved_optimize, tmp410
	movl	%eax, optimize(%rip)	# tmp410, optimize
	.loc 1 2502 0
	call	free_bb_for_insn	#
.L161:
.LBE8:
	.loc 1 2505 0
	call	nothrow_function_p	#
	movzbl	%al, %eax	# D.18717, current_function_nothrow.97
	movl	%eax, current_function_nothrow(%rip)	# current_function_nothrow.97, current_function_nothrow
	.loc 1 2506 0
	movl	current_function_nothrow(%rip), %eax	# current_function_nothrow, current_function_nothrow.98
	testl	%eax, %eax	# current_function_nothrow.98
	je	.L162	#,
	.loc 1 2509 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.99
	movzbl	18(%rax), %edx	#, tmp413
	orl	$2, %edx	#, tmp414
	movb	%dl, 18(%rax)	# tmp414,
.L162:
	.loc 1 2511 0
	movl	$12, %edi	#,
	call	timevar_push	#
	.loc 1 2512 0
	movq	-184(%rbp), %rax	# decl, tmp415
	movq	%rax, %rdi	# tmp415,
	call	save_for_inline	#
	.loc 1 2513 0
	movl	$12, %edi	#,
	call	timevar_pop	#
	.loc 1 2514 0
	movq	-184(%rbp), %rax	# decl, tmp416
	movq	160(%rax), %rax	# decl_32(D)->decl.u2.f, D.18719
	movl	-156(%rbp), %edx	# inlinable, tmp417
	movl	%edx, 352(%rax)	# tmp417, _88->inlinable
	.loc 1 2515 0
	jmp	.L144	#
.L160:
	.loc 1 2521 0
	movq	-184(%rbp), %rax	# decl, tmp418
	movzbl	49(%rax), %eax	# *decl_32(D), D.18718
	andl	$1, %eax	#, D.18718
	testb	%al, %al	# D.18718
	je	.L141	#,
	.loc 1 2522 0
	jmp	.L144	#
.L141:
.LBE7:
.LBB9:
	.loc 1 2529 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.100
	movq	80(%rax), %rax	# current_function_decl.100_91->decl.context, tmp419
	movq	%rax, -112(%rbp)	# tmp419, parent
	jmp	.L163	#
.L166:
	.loc 1 2532 0
	movq	-112(%rbp), %rax	# parent, tmp420
	movzbl	16(%rax), %eax	# parent_11->common.code, D.18718
	cmpb	$30, %al	#, D.18718
	jne	.L164	#,
	.loc 1 2533 0
	movq	-112(%rbp), %rax	# parent, tmp421
	movq	120(%rax), %rax	# parent_11->decl.assembler_name, D.18722
	testq	%rax, %rax	# D.18722
	jne	.L165	#,
	.loc 1 2533 0 is_stmt 0 discriminator 1
	movq	lang_set_decl_assembler_name(%rip), %rax	# lang_set_decl_assembler_name, lang_set_decl_assembler_name.101
	movq	-112(%rbp), %rdx	# parent, tmp422
	movq	%rdx, %rdi	# tmp422,
	call	*%rax	# lang_set_decl_assembler_name.101
.L165:
	.loc 1 2533 0 discriminator 2
	movq	-112(%rbp), %rax	# parent, tmp423
	movq	120(%rax), %rax	# parent_11->decl.assembler_name, D.18722
	movzbl	18(%rax), %edx	#, tmp426
	orl	$4, %edx	#, tmp427
	movb	%dl, 18(%rax)	# tmp427,
.L164:
	.loc 1 2531 0 is_stmt 1
	movq	-112(%rbp), %rax	# parent, tmp428
	movq	%rax, %rdi	# tmp428,
	call	get_containing_scope	#
	movq	%rax, -112(%rbp)	# tmp429, parent
.L163:
	.loc 1 2529 0 discriminator 1
	cmpq	$0, -112(%rbp)	#, parent
	jne	.L166	#,
.LBE9:
	.loc 1 2539 0
	movq	-184(%rbp), %rax	# decl, tmp430
	movzbl	49(%rax), %eax	# *decl_32(D), D.18718
	andl	$8, %eax	#, D.18718
	testb	%al, %al	# D.18718
	je	.L167	#,
	.loc 1 2540 0
	movq	debug_hooks(%rip), %rax	# debug_hooks, debug_hooks.102
	movq	144(%rax), %rax	# debug_hooks.102_100->outlining_inline_function, D.18723
	movq	-184(%rbp), %rdx	# decl, tmp431
	movq	%rdx, %rdi	# tmp431,
	call	*%rax	# D.18723
.L167:
	.loc 1 2545 0
	call	remove_unnecessary_notes	#
	.loc 1 2546 0
	call	reorder_blocks	#
	.loc 1 2548 0
	call	ggc_collect	#
	.loc 1 2551 0
	call	init_function_for_compilation	#
	.loc 1 2553 0
	movq	-184(%rbp), %rax	# decl, tmp432
	movzbl	50(%rax), %eax	# *decl_32(D), D.18718
	andl	$4, %eax	#, D.18718
	testb	%al, %al	# D.18718
	jne	.L168	#,
	.loc 1 2554 0
	movq	-184(%rbp), %rax	# decl, tmp433
	movzbl	17(%rax), %edx	#, tmp436
	orl	$64, %edx	#, tmp437
	movb	%dl, 17(%rax)	# tmp437,
.L168:
	.loc 1 2562 0
	movl	$0, rtx_equal_function_value_matters(%rip)	#, rtx_equal_function_value_matters
	.loc 1 2563 0
	call	get_insns	#
	movq	%rax, %rdi	# D.18724,
	call	purge_hard_subreg_sets	#
	.loc 1 2568 0
	movl	rtl_dump_and_exit(%rip), %eax	# rtl_dump_and_exit, rtl_dump_and_exit.103
	testl	%eax, %eax	# rtl_dump_and_exit.103
	jne	.L169	#,
	.loc 1 2568 0 is_stmt 0 discriminator 2
	movl	flag_syntax_only(%rip), %eax	# flag_syntax_only, flag_syntax_only.104
	testl	%eax, %eax	# flag_syntax_only.104
	je	.L170	#,
.L169:
	.loc 1 2568 0 discriminator 1
	movl	warn_return_type(%rip), %eax	# warn_return_type, warn_return_type.105
	testl	%eax, %eax	# warn_return_type.105
	je	.L144	#,
.L170:
	.loc 1 2569 0 is_stmt 1
	movq	global_dc(%rip), %rax	# global_dc, global_dc.106
	movl	60(%rax), %eax	# MEM[(struct output_buffer *)global_dc.106_108].state.diagnostic_count, D.18721
	testl	%eax, %eax	# D.18721
	jne	.L144	#,
	.loc 1 2569 0 is_stmt 0 discriminator 1
	movq	global_dc(%rip), %rax	# global_dc, global_dc.107
	movl	56(%rax), %eax	# MEM[(struct output_buffer *)global_dc.107_110].state.diagnostic_count, D.18721
	testl	%eax, %eax	# D.18721
	jne	.L144	#,
	.loc 1 2574 0 is_stmt 1
	movl	flag_optimize_sibling_calls(%rip), %eax	# flag_optimize_sibling_calls, flag_optimize_sibling_calls.108
	testl	%eax, %eax	# flag_optimize_sibling_calls.108
	je	.L171	#,
	.loc 1 2576 0
	movl	$13, %edi	#,
	call	timevar_push	#
	.loc 1 2577 0
	movq	-184(%rbp), %rax	# decl, tmp438
	movq	%rax, %rsi	# tmp438,
	movl	$1, %edi	#,
	call	open_dump_file	#
	.loc 1 2579 0
	call	optimize_sibling_and_tail_recursive_calls	#
	.loc 1 2581 0
	call	get_insns	#
	movq	%rax, %rdx	# D.18724,
	movl	$print_rtl, %esi	#,
	movl	$1, %edi	#,
	call	close_dump_file	#
	.loc 1 2582 0
	movl	$13, %edi	#,
	call	timevar_pop	#
.L171:
	.loc 1 2586 0
	call	find_exception_handler_labels	#
	.loc 1 2587 0
	movl	$0, %edi	#,
	call	doing_eh	#
	testl	%eax, %eax	# D.18721
	je	.L172	#,
	.loc 1 2589 0
	movl	$13, %edi	#,
	call	timevar_push	#
	.loc 1 2590 0
	movq	-184(%rbp), %rax	# decl, tmp439
	movq	%rax, %rsi	# tmp439,
	movl	$2, %edi	#,
	call	open_dump_file	#
	.loc 1 2592 0
	call	finish_eh_generation	#
	.loc 1 2594 0
	call	get_insns	#
	movq	%rax, %rdx	# D.18724,
	movl	$print_rtl, %esi	#,
	movl	$2, %edi	#,
	call	close_dump_file	#
	.loc 1 2595 0
	movl	$13, %edi	#,
	call	timevar_pop	#
.L172:
	.loc 1 2600 0
	call	emit_initial_value_sets	#
	.loc 1 2607 0
	movl	flag_pic(%rip), %eax	# flag_pic, flag_pic.109
	testl	%eax, %eax	# flag_pic.109
	je	.L173	#,
	.loc 1 2608 0
	movq	cfun(%rip), %rdx	# cfun, cfun.110
	movq	cfun(%rip), %rax	# cfun, cfun.111
	movzbl	426(%rax), %eax	# *cfun.111_118, tmp442
	shrb	$5, %al	#, D.18720
	andl	$1, %eax	#, D.18720
	movl	%eax, %ecx	# D.18720, D.18718
	movq	cfun(%rip), %rax	# cfun, cfun.112
	movzbl	425(%rax), %eax	# *cfun.112_121, tmp445
	shrb	$6, %al	#, D.18720
	andl	$1, %eax	#, D.18720
	orl	%ecx, %eax	# D.18718, D.18718
	andl	$1, %eax	#, D.18720
	andl	$1, %eax	#, tmp447
	sall	$5, %eax	#, tmp448
	movl	%eax, %ecx	# tmp448, tmp448
	movzbl	426(%rdx), %eax	#, tmp449
	andl	$-33, %eax	#, tmp450
	orl	%ecx, %eax	# tmp448, tmp451
	movb	%al, 426(%rdx)	# tmp451,
.L173:
	.loc 1 2611 0
	call	get_insns	#
	movq	%rax, -128(%rbp)	# tmp452, insns
	.loc 1 2614 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.113
	movq	-128(%rbp), %rdx	# insns, tmp453
	movq	%rdx, %rsi	# tmp453,
	movq	%rax, %rdi	# current_function_decl.113,
	call	unshare_all_rtl	#
	.loc 1 2623 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.114
	movq	-128(%rbp), %rdx	# insns, tmp454
	movq	%rdx, %rsi	# tmp454,
	movq	%rax, %rdi	# current_function_decl.114,
	call	instantiate_virtual_regs	#
	.loc 1 2625 0
	movq	-184(%rbp), %rax	# decl, tmp455
	movq	%rax, %rsi	# tmp455,
	movl	$3, %edi	#,
	call	open_dump_file	#
	.loc 1 2631 0
	movl	$13, %edi	#,
	call	timevar_push	#
	.loc 1 2634 0
	call	expected_value_to_br_prob	#
	.loc 1 2636 0
	call	max_reg_num	#
	movl	%eax, %ecx	# D.18721, D.18725
	movq	-128(%rbp), %rax	# insns, tmp456
	movl	$0, %edx	#,
	movl	%ecx, %esi	# D.18725,
	movq	%rax, %rdi	# tmp456,
	call	reg_scan	#
	.loc 1 2637 0
	movq	-128(%rbp), %rax	# insns, tmp457
	movq	%rax, %rdi	# tmp457,
	call	rebuild_jump_labels	#
	.loc 1 2638 0
	movq	rtl_dump_file(%rip), %rbx	# rtl_dump_file, rtl_dump_file.115
	call	max_reg_num	#
	movl	%eax, %ecx	#, D.18721
	movq	-128(%rbp), %rax	# insns, tmp458
	movq	%rbx, %rdx	# rtl_dump_file.115,
	movl	%ecx, %esi	# D.18721,
	movq	%rax, %rdi	# tmp458,
	call	find_basic_blocks	#
	.loc 1 2639 0
	movl	optimize(%rip), %eax	# optimize, optimize.117
	testl	%eax, %eax	# optimize.117
	je	.L174	#,
	.loc 1 2639 0 is_stmt 0 discriminator 1
	movl	$17, %eax	#, iftmp.116
	jmp	.L175	#
.L174:
	.loc 1 2639 0 discriminator 2
	movl	$16, %eax	#, iftmp.116
.L175:
	.loc 1 2639 0 discriminator 3
	movl	%eax, %edi	# iftmp.116,
	call	cleanup_cfg	#
	.loc 1 2642 0 is_stmt 1 discriminator 3
	call	free_bb_for_insn	#
	.loc 1 2643 0 discriminator 3
	movq	-128(%rbp), %rax	# insns, tmp459
	movq	%rax, %rdi	# tmp459,
	call	copy_loop_headers	#
	.loc 1 2644 0 discriminator 3
	movq	-128(%rbp), %rax	# insns, tmp460
	movq	%rax, %rdi	# tmp460,
	call	purge_line_number_notes	#
	.loc 1 2646 0 discriminator 3
	movl	$13, %edi	#,
	call	timevar_pop	#
	.loc 1 2649 0 discriminator 3
	movl	rtl_dump_and_exit(%rip), %eax	# rtl_dump_and_exit, rtl_dump_and_exit.118
	testl	%eax, %eax	# rtl_dump_and_exit.118
	jne	.L176	#,
	.loc 1 2649 0 is_stmt 0 discriminator 1
	movl	flag_syntax_only(%rip), %eax	# flag_syntax_only, flag_syntax_only.119
	testl	%eax, %eax	# flag_syntax_only.119
	jne	.L176	#,
	movq	-184(%rbp), %rax	# decl, tmp461
	movzbl	50(%rax), %eax	# *decl_32(D), D.18718
	andl	$4, %eax	#, D.18718
	testb	%al, %al	# D.18718
	je	.L177	#,
.L176:
	.loc 1 2651 0 is_stmt 1
	movq	-128(%rbp), %rax	# insns, tmp462
	movq	%rax, %rdx	# tmp462,
	movl	$print_rtl, %esi	#,
	movl	$3, %edi	#,
	call	close_dump_file	#
	.loc 1 2652 0
	jmp	.L144	#
.L177:
	.loc 1 2658 0
	movl	optimize(%rip), %eax	# optimize, optimize.120
	testl	%eax, %eax	# optimize.120
	jle	.L178	#,
	.loc 1 2658 0 is_stmt 0 discriminator 1
	movl	flag_ssa(%rip), %eax	# flag_ssa, flag_ssa.121
	testl	%eax, %eax	# flag_ssa.121
	je	.L178	#,
	.loc 1 2662 0 is_stmt 1
	movl	$38, %edi	#,
	call	timevar_push	#
	.loc 1 2663 0
	movq	-184(%rbp), %rax	# decl, tmp463
	movq	%rax, %rsi	# tmp463,
	movl	$4, %edi	#,
	call	open_dump_file	#
	.loc 1 2665 0
	movq	rtl_dump_file(%rip), %rbx	# rtl_dump_file, rtl_dump_file.122
	call	max_reg_num	#
	movl	%eax, %ecx	#, D.18721
	movq	-128(%rbp), %rax	# insns, tmp464
	movq	%rbx, %rdx	# rtl_dump_file.122,
	movl	%ecx, %esi	# D.18721,
	movq	%rax, %rdi	# tmp464,
	call	find_basic_blocks	#
	.loc 1 2666 0
	movl	$17, %edi	#,
	call	cleanup_cfg	#
	.loc 1 2667 0
	call	convert_to_ssa	#
	.loc 1 2669 0
	movq	-128(%rbp), %rax	# insns, tmp465
	movq	%rax, %rdx	# tmp465,
	movl	$print_rtl_with_bb, %esi	#,
	movl	$4, %edi	#,
	call	close_dump_file	#
	.loc 1 2670 0
	movl	$38, %edi	#,
	call	timevar_pop	#
	.loc 1 2673 0
	movl	flag_ssa_ccp(%rip), %eax	# flag_ssa_ccp, flag_ssa_ccp.123
	testl	%eax, %eax	# flag_ssa_ccp.123
	je	.L179	#,
	.loc 1 2675 0
	movl	$39, %edi	#,
	call	timevar_push	#
	.loc 1 2676 0
	movq	-184(%rbp), %rax	# decl, tmp466
	movq	%rax, %rsi	# tmp466,
	movl	$5, %edi	#,
	call	open_dump_file	#
	.loc 1 2678 0
	call	ssa_const_prop	#
	.loc 1 2680 0
	call	get_insns	#
	movq	%rax, %rdx	# D.18724,
	movl	$print_rtl_with_bb, %esi	#,
	movl	$5, %edi	#,
	call	close_dump_file	#
	.loc 1 2681 0
	movl	$39, %edi	#,
	call	timevar_pop	#
.L179:
	.loc 1 2693 0
	movl	flag_ssa_dce(%rip), %eax	# flag_ssa_dce, flag_ssa_dce.124
	testl	%eax, %eax	# flag_ssa_dce.124
	je	.L180	#,
	.loc 1 2697 0
	movl	$40, %edi	#,
	call	timevar_push	#
	.loc 1 2698 0
	movq	-184(%rbp), %rax	# decl, tmp467
	movq	%rax, %rsi	# tmp467,
	movl	$6, %edi	#,
	call	open_dump_file	#
	.loc 1 2700 0
	call	get_insns	#
	movq	%rax, -128(%rbp)	# tmp468, insns
	.loc 1 2701 0
	call	ssa_eliminate_dead_code	#
	.loc 1 2703 0
	movq	-128(%rbp), %rax	# insns, tmp469
	movq	%rax, %rdx	# tmp469,
	movl	$print_rtl_with_bb, %esi	#,
	movl	$6, %edi	#,
	call	close_dump_file	#
	.loc 1 2704 0
	movl	$40, %edi	#,
	call	timevar_pop	#
.L180:
	.loc 1 2709 0
	movl	$41, %edi	#,
	call	timevar_push	#
	.loc 1 2710 0
	movq	-184(%rbp), %rax	# decl, tmp470
	movq	%rax, %rsi	# tmp470,
	movl	$7, %edi	#,
	call	open_dump_file	#
	.loc 1 2712 0
	call	convert_from_ssa	#
	.loc 1 2714 0
	call	max_reg_num	#
	movl	%eax, %ecx	# D.18721, D.18725
	movq	-128(%rbp), %rax	# insns, tmp471
	movl	$1, %edx	#,
	movl	%ecx, %esi	# D.18725,
	movq	%rax, %rdi	# tmp471,
	call	reg_scan	#
	.loc 1 2716 0
	movq	-128(%rbp), %rax	# insns, tmp472
	movq	%rax, %rdx	# tmp472,
	movl	$print_rtl_with_bb, %esi	#,
	movl	$7, %edi	#,
	call	close_dump_file	#
	.loc 1 2717 0
	movl	$41, %edi	#,
	call	timevar_pop	#
	.loc 1 2719 0
	call	ggc_collect	#
	.loc 1 2721 0
	call	free_bb_for_insn	#
.L178:
	.loc 1 2724 0
	movl	$13, %edi	#,
	call	timevar_push	#
	.loc 1 2726 0
	movl	optimize(%rip), %eax	# optimize, optimize.125
	testl	%eax, %eax	# optimize.125
	jle	.L181	#,
	.loc 1 2728 0
	movq	rtl_dump_file(%rip), %rbx	# rtl_dump_file, rtl_dump_file.126
	call	max_reg_num	#
	movl	%eax, %ecx	#, D.18721
	movq	-128(%rbp), %rax	# insns, tmp473
	movq	%rbx, %rdx	# rtl_dump_file.126,
	movl	%ecx, %esi	# D.18721,
	movq	%rax, %rdi	# tmp473,
	call	find_basic_blocks	#
	.loc 1 2730 0
	movl	flag_thread_jumps(%rip), %eax	# flag_thread_jumps, flag_thread_jumps.128
	.loc 1 2729 0
	testl	%eax, %eax	# flag_thread_jumps.128
	je	.L182	#,
	.loc 1 2729 0 is_stmt 0 discriminator 1
	movl	$81, %eax	#, iftmp.127
	jmp	.L183	#
.L182:
	.loc 1 2729 0 discriminator 2
	movl	$17, %eax	#, iftmp.127
.L183:
	.loc 1 2729 0 discriminator 3
	movl	%eax, %edi	# iftmp.127,
	call	cleanup_cfg	#
	.loc 1 2736 0 is_stmt 1 discriminator 3
	movl	$21, %edi	#,
	call	timevar_push	#
	.loc 1 2737 0 discriminator 3
	movl	$0, %edi	#,
	call	if_convert	#
	.loc 1 2738 0 discriminator 3
	movl	$21, %edi	#,
	call	timevar_pop	#
	.loc 1 2741 0 discriminator 3
	call	free_bb_for_insn	#
	.loc 1 2743 0 discriminator 3
	movl	flag_delete_null_pointer_checks(%rip), %eax	# flag_delete_null_pointer_checks, flag_delete_null_pointer_checks.129
	testl	%eax, %eax	# flag_delete_null_pointer_checks.129
	je	.L181	#,
	.loc 1 2744 0
	movq	-128(%rbp), %rax	# insns, tmp474
	movq	%rax, %rdi	# tmp474,
	call	delete_null_pointer_checks	#
.L181:
	.loc 1 2752 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.130
	movq	%rax, %rdi	# rtl_dump_file.130,
	call	renumber_insns	#
	.loc 1 2753 0
	movl	$13, %edi	#,
	call	timevar_pop	#
	.loc 1 2755 0
	movq	-128(%rbp), %rax	# insns, tmp475
	movq	%rax, %rdx	# tmp475,
	movl	$print_rtl, %esi	#,
	movl	$3, %edi	#,
	call	close_dump_file	#
	.loc 1 2757 0
	call	ggc_collect	#
	.loc 1 2764 0
	movl	optimize(%rip), %eax	# optimize, optimize.131
	testl	%eax, %eax	# optimize.131
	jle	.L184	#,
	.loc 1 2766 0
	movq	-184(%rbp), %rax	# decl, tmp476
	movq	%rax, %rsi	# tmp476,
	movl	$8, %edi	#,
	call	open_dump_file	#
	.loc 1 2767 0
	movl	$14, %edi	#,
	call	timevar_push	#
	.loc 1 2769 0
	call	max_reg_num	#
	movl	%eax, %ecx	# D.18721, D.18725
	movq	-128(%rbp), %rax	# insns, tmp477
	movl	$1, %edx	#,
	movl	%ecx, %esi	# D.18725,
	movq	%rax, %rdi	# tmp477,
	call	reg_scan	#
	.loc 1 2771 0
	movq	rtl_dump_file(%rip), %rbx	# rtl_dump_file, rtl_dump_file.132
	call	max_reg_num	#
	movl	%eax, %esi	#, D.18721
	movq	-128(%rbp), %rax	# insns, tmp478
	movq	%rbx, %rcx	# rtl_dump_file.132,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp478,
	call	cse_main	#
	movl	%eax, -172(%rbp)	# tmp479, tem
	.loc 1 2775 0
	movl	flag_rerun_cse_after_loop(%rip), %eax	# flag_rerun_cse_after_loop, flag_rerun_cse_after_loop.134
	testl	%eax, %eax	# flag_rerun_cse_after_loop.134
	jne	.L185	#,
	.loc 1 2775 0 is_stmt 0 discriminator 1
	movl	flag_gcse(%rip), %eax	# flag_gcse, flag_gcse.135
	testl	%eax, %eax	# flag_gcse.135
	jne	.L185	#,
	.loc 1 2775 0 discriminator 3
	movl	$1, %eax	#, iftmp.133
	jmp	.L186	#
.L185:
	.loc 1 2775 0 discriminator 2
	movl	$0, %eax	#, iftmp.133
.L186:
	.loc 1 2775 0 discriminator 4
	movl	%eax, cse_not_expected(%rip)	# iftmp.133, cse_not_expected
	.loc 1 2777 0 is_stmt 1 discriminator 4
	cmpl	$0, -172(%rbp)	#, tem
	jne	.L187	#,
	.loc 1 2777 0 is_stmt 0 discriminator 1
	movl	optimize(%rip), %eax	# optimize, optimize.136
	cmpl	$1, %eax	#, optimize.136
	jle	.L188	#,
.L187:
	.loc 1 2779 0 is_stmt 1
	movl	$13, %edi	#,
	call	timevar_push	#
	.loc 1 2780 0
	movq	-128(%rbp), %rax	# insns, tmp480
	movq	%rax, %rdi	# tmp480,
	call	rebuild_jump_labels	#
	.loc 1 2781 0
	movq	rtl_dump_file(%rip), %rbx	# rtl_dump_file, rtl_dump_file.137
	call	max_reg_num	#
	movl	%eax, %ecx	#, D.18721
	movq	-128(%rbp), %rax	# insns, tmp481
	movq	%rbx, %rdx	# rtl_dump_file.137,
	movl	%ecx, %esi	# D.18721,
	movq	%rax, %rdi	# tmp481,
	call	find_basic_blocks	#
	.loc 1 2782 0
	movl	$17, %edi	#,
	call	cleanup_cfg	#
	.loc 1 2783 0
	movl	$13, %edi	#,
	call	timevar_pop	#
	.loc 1 2785 0
	call	free_bb_for_insn	#
.L188:
	.loc 1 2790 0
	call	max_reg_num	#
	movl	%eax, %ecx	#, D.18721
	movq	-128(%rbp), %rax	# insns, tmp482
	movl	$0, %edx	#,
	movl	%ecx, %esi	# D.18721,
	movq	%rax, %rdi	# tmp482,
	call	delete_trivially_dead_insns	#
	.loc 1 2793 0
	movl	flag_delete_null_pointer_checks(%rip), %eax	# flag_delete_null_pointer_checks, flag_delete_null_pointer_checks.138
	testl	%eax, %eax	# flag_delete_null_pointer_checks.138
	jne	.L189	#,
	.loc 1 2793 0 is_stmt 0 discriminator 1
	movl	flag_thread_jumps(%rip), %eax	# flag_thread_jumps, flag_thread_jumps.139
	testl	%eax, %eax	# flag_thread_jumps.139
	je	.L190	#,
.L189:
	.loc 1 2795 0 is_stmt 1
	movl	$13, %edi	#,
	call	timevar_push	#
	.loc 1 2796 0
	movq	rtl_dump_file(%rip), %rbx	# rtl_dump_file, rtl_dump_file.140
	call	max_reg_num	#
	movl	%eax, %ecx	#, D.18721
	movq	-128(%rbp), %rax	# insns, tmp483
	movq	%rbx, %rdx	# rtl_dump_file.140,
	movl	%ecx, %esi	# D.18721,
	movq	%rax, %rdi	# tmp483,
	call	find_basic_blocks	#
	.loc 1 2799 0
	movl	flag_thread_jumps(%rip), %eax	# flag_thread_jumps, flag_thread_jumps.142
	.loc 1 2798 0
	testl	%eax, %eax	# flag_thread_jumps.142
	je	.L191	#,
	.loc 1 2798 0 is_stmt 0 discriminator 1
	movl	$81, %eax	#, iftmp.141
	jmp	.L192	#
.L191:
	.loc 1 2798 0 discriminator 2
	movl	$17, %eax	#, iftmp.141
.L192:
	.loc 1 2798 0 discriminator 3
	movl	%eax, %edi	# iftmp.141,
	call	cleanup_cfg	#
	.loc 1 2801 0 is_stmt 1 discriminator 3
	movl	flag_delete_null_pointer_checks(%rip), %eax	# flag_delete_null_pointer_checks, flag_delete_null_pointer_checks.143
	testl	%eax, %eax	# flag_delete_null_pointer_checks.143
	je	.L193	#,
	.loc 1 2802 0
	movq	-128(%rbp), %rax	# insns, tmp484
	movq	%rax, %rdi	# tmp484,
	call	delete_null_pointer_checks	#
.L193:
	.loc 1 2804 0
	call	free_bb_for_insn	#
	.loc 1 2805 0
	movl	$13, %edi	#,
	call	timevar_pop	#
.L190:
	.loc 1 2810 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.144
	movq	%rax, %rdi	# rtl_dump_file.144,
	call	renumber_insns	#
	.loc 1 2812 0
	movl	$14, %edi	#,
	call	timevar_pop	#
	.loc 1 2813 0
	movq	-128(%rbp), %rax	# insns, tmp485
	movq	%rax, %rdx	# tmp485,
	movl	$print_rtl, %esi	#,
	movl	$8, %edi	#,
	call	close_dump_file	#
.L184:
	.loc 1 2816 0
	movq	-184(%rbp), %rax	# decl, tmp486
	movq	%rax, %rsi	# tmp486,
	movl	$9, %edi	#,
	call	open_dump_file	#
	.loc 1 2818 0
	movq	-128(%rbp), %rax	# insns, tmp487
	movq	%rax, %rdi	# tmp487,
	call	purge_addressof	#
	.loc 1 2819 0
	call	max_reg_num	#
	movl	%eax, %ecx	# D.18721, D.18725
	movq	-128(%rbp), %rax	# insns, tmp488
	movl	$1, %edx	#,
	movl	%ecx, %esi	# D.18725,
	movq	%rax, %rdi	# tmp488,
	call	reg_scan	#
	.loc 1 2821 0
	movq	-128(%rbp), %rax	# insns, tmp489
	movq	%rax, %rdx	# tmp489,
	movl	$print_rtl, %esi	#,
	movl	$9, %edi	#,
	call	close_dump_file	#
	.loc 1 2823 0
	call	ggc_collect	#
	.loc 1 2827 0
	movl	optimize(%rip), %eax	# optimize, optimize.145
	testl	%eax, %eax	# optimize.145
	jle	.L194	#,
	.loc 1 2827 0 is_stmt 0 discriminator 1
	movl	flag_gcse(%rip), %eax	# flag_gcse, flag_gcse.146
	testl	%eax, %eax	# flag_gcse.146
	je	.L194	#,
.LBB10:
	.loc 1 2830 0 is_stmt 1
	movl	$0, -152(%rbp)	#, tem2
	.loc 1 2832 0
	movl	$15, %edi	#,
	call	timevar_push	#
	.loc 1 2833 0
	movq	-184(%rbp), %rax	# decl, tmp490
	movq	%rax, %rsi	# tmp490,
	movl	$10, %edi	#,
	call	open_dump_file	#
	.loc 1 2835 0
	movq	rtl_dump_file(%rip), %rbx	# rtl_dump_file, rtl_dump_file.147
	call	max_reg_num	#
	movl	%eax, %ecx	#, D.18721
	movq	-128(%rbp), %rax	# insns, tmp491
	movq	%rbx, %rdx	# rtl_dump_file.147,
	movl	%ecx, %esi	# D.18721,
	movq	%rax, %rdi	# tmp491,
	call	find_basic_blocks	#
	.loc 1 2836 0
	movl	$17, %edi	#,
	call	cleanup_cfg	#
	.loc 1 2837 0
	movq	rtl_dump_file(%rip), %rdx	# rtl_dump_file, rtl_dump_file.148
	movq	-128(%rbp), %rax	# insns, tmp492
	movq	%rdx, %rsi	# rtl_dump_file.148,
	movq	%rax, %rdi	# tmp492,
	call	gcse_main	#
	movl	%eax, -172(%rbp)	# tmp493, tem
	.loc 1 2838 0
	movq	-128(%rbp), %rax	# insns, tmp494
	movq	%rax, %rdi	# tmp494,
	call	rebuild_jump_labels	#
	.loc 1 2840 0
	movl	flag_cse_skip_blocks(%rip), %eax	# flag_cse_skip_blocks, tmp495
	movl	%eax, -144(%rbp)	# tmp495, save_csb
	.loc 1 2841 0
	movl	flag_cse_follow_jumps(%rip), %eax	# flag_cse_follow_jumps, tmp496
	movl	%eax, -140(%rbp)	# tmp496, save_cfj
	.loc 1 2842 0
	movl	$0, flag_cse_follow_jumps(%rip)	#, flag_cse_follow_jumps
	movl	flag_cse_follow_jumps(%rip), %eax	# flag_cse_follow_jumps, flag_cse_follow_jumps.149
	movl	%eax, flag_cse_skip_blocks(%rip)	# flag_cse_follow_jumps.149, flag_cse_skip_blocks
	.loc 1 2845 0
	call	free_bb_for_insn	#
	.loc 1 2848 0
	movl	flag_expensive_optimizations(%rip), %eax	# flag_expensive_optimizations, flag_expensive_optimizations.150
	testl	%eax, %eax	# flag_expensive_optimizations.150
	je	.L195	#,
	.loc 1 2850 0
	movl	$14, %edi	#,
	call	timevar_push	#
	.loc 1 2851 0
	call	max_reg_num	#
	movl	%eax, %ecx	# D.18721, D.18725
	movq	-128(%rbp), %rax	# insns, tmp497
	movl	$1, %edx	#,
	movl	%ecx, %esi	# D.18725,
	movq	%rax, %rdi	# tmp497,
	call	reg_scan	#
	.loc 1 2852 0
	movq	rtl_dump_file(%rip), %rbx	# rtl_dump_file, rtl_dump_file.151
	call	max_reg_num	#
	movl	%eax, %esi	#, D.18721
	movq	-128(%rbp), %rax	# insns, tmp498
	movq	%rbx, %rcx	# rtl_dump_file.151,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp498,
	call	cse_main	#
	movl	%eax, -152(%rbp)	# tmp499, tem2
	.loc 1 2853 0
	movl	$14, %edi	#,
	call	timevar_pop	#
	.loc 1 2854 0
	movl	flag_rerun_cse_after_loop(%rip), %eax	# flag_rerun_cse_after_loop, flag_rerun_cse_after_loop.152
	testl	%eax, %eax	# flag_rerun_cse_after_loop.152
	sete	%al	#, D.18717
	movzbl	%al, %eax	# D.18717, cse_not_expected.153
	movl	%eax, cse_not_expected(%rip)	# cse_not_expected.153, cse_not_expected
	.loc 1 2859 0
	jmp	.L196	#
.L195:
	jmp	.L196	#
.L197:
	.loc 1 2861 0
	movl	$0, -152(%rbp)	#, tem2
	movl	-152(%rbp), %eax	# tem2, tmp500
	movl	%eax, -172(%rbp)	# tmp500, tem
	.loc 1 2862 0
	movl	$13, %edi	#,
	call	timevar_push	#
	.loc 1 2863 0
	movq	-128(%rbp), %rax	# insns, tmp501
	movq	%rax, %rdi	# tmp501,
	call	rebuild_jump_labels	#
	.loc 1 2864 0
	call	max_reg_num	#
	movl	%eax, %ecx	#, D.18721
	movq	-128(%rbp), %rax	# insns, tmp502
	movl	$0, %edx	#,
	movl	%ecx, %esi	# D.18721,
	movq	%rax, %rdi	# tmp502,
	call	delete_trivially_dead_insns	#
	.loc 1 2865 0
	movq	rtl_dump_file(%rip), %rbx	# rtl_dump_file, rtl_dump_file.154
	call	max_reg_num	#
	movl	%eax, %ecx	#, D.18721
	movq	-128(%rbp), %rax	# insns, tmp503
	movq	%rbx, %rdx	# rtl_dump_file.154,
	movl	%ecx, %esi	# D.18721,
	movq	%rax, %rdi	# tmp503,
	call	find_basic_blocks	#
	.loc 1 2866 0
	movl	$17, %edi	#,
	call	cleanup_cfg	#
	.loc 1 2868 0
	call	free_bb_for_insn	#
	.loc 1 2869 0
	movl	$13, %edi	#,
	call	timevar_pop	#
	.loc 1 2871 0
	movl	flag_expensive_optimizations(%rip), %eax	# flag_expensive_optimizations, flag_expensive_optimizations.155
	testl	%eax, %eax	# flag_expensive_optimizations.155
	je	.L196	#,
	.loc 1 2873 0
	movl	$14, %edi	#,
	call	timevar_push	#
	.loc 1 2874 0
	call	max_reg_num	#
	movl	%eax, %ecx	# D.18721, D.18725
	movq	-128(%rbp), %rax	# insns, tmp504
	movl	$1, %edx	#,
	movl	%ecx, %esi	# D.18725,
	movq	%rax, %rdi	# tmp504,
	call	reg_scan	#
	.loc 1 2875 0
	movq	rtl_dump_file(%rip), %rbx	# rtl_dump_file, rtl_dump_file.156
	call	max_reg_num	#
	movl	%eax, %esi	#, D.18721
	movq	-128(%rbp), %rax	# insns, tmp505
	movq	%rbx, %rcx	# rtl_dump_file.156,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp505,
	call	cse_main	#
	movl	%eax, -152(%rbp)	# tmp506, tem2
	.loc 1 2876 0
	movl	$14, %edi	#,
	call	timevar_pop	#
.L196:
	.loc 1 2859 0 discriminator 1
	cmpl	$0, -172(%rbp)	#, tem
	jne	.L197	#,
	.loc 1 2859 0 is_stmt 0 discriminator 2
	cmpl	$0, -152(%rbp)	#, tem2
	jne	.L197	#,
	.loc 1 2880 0 is_stmt 1
	movq	-128(%rbp), %rax	# insns, tmp507
	movq	%rax, %rdx	# tmp507,
	movl	$print_rtl, %esi	#,
	movl	$10, %edi	#,
	call	close_dump_file	#
	.loc 1 2881 0
	movl	$15, %edi	#,
	call	timevar_pop	#
	.loc 1 2883 0
	call	ggc_collect	#
	.loc 1 2884 0
	movl	-144(%rbp), %eax	# save_csb, tmp508
	movl	%eax, flag_cse_skip_blocks(%rip)	# tmp508, flag_cse_skip_blocks
	.loc 1 2885 0
	movl	-140(%rbp), %eax	# save_cfj, tmp509
	movl	%eax, flag_cse_follow_jumps(%rip)	# tmp509, flag_cse_follow_jumps
.L194:
.LBE10:
	.loc 1 2890 0
	movl	optimize(%rip), %eax	# optimize, optimize.157
	testl	%eax, %eax	# optimize.157
	jle	.L198	#,
	.loc 1 2892 0
	movl	$16, %edi	#,
	call	timevar_push	#
	.loc 1 2893 0
	movq	-184(%rbp), %rax	# decl, tmp510
	movq	%rax, %rsi	# tmp510,
	movl	$11, %edi	#,
	call	open_dump_file	#
	.loc 1 2894 0
	call	free_bb_for_insn	#
	.loc 1 2896 0
	movl	flag_rerun_loop_opt(%rip), %eax	# flag_rerun_loop_opt, flag_rerun_loop_opt.158
	testl	%eax, %eax	# flag_rerun_loop_opt.158
	je	.L199	#,
	.loc 1 2898 0
	call	cleanup_barriers	#
	.loc 1 2901 0
	movq	rtl_dump_file(%rip), %rcx	# rtl_dump_file, rtl_dump_file.159
	movq	-128(%rbp), %rax	# insns, tmp511
	movl	$8, %edx	#,
	movq	%rcx, %rsi	# rtl_dump_file.159,
	movq	%rax, %rdi	# tmp511,
	call	loop_optimize	#
	.loc 1 2907 0
	call	max_reg_num	#
	movl	%eax, %ecx	#, D.18721
	movq	-128(%rbp), %rax	# insns, tmp512
	movl	$0, %edx	#,
	movl	%ecx, %esi	# D.18721,
	movq	%rax, %rdi	# tmp512,
	call	delete_trivially_dead_insns	#
	.loc 1 2911 0
	call	max_reg_num	#
	movl	%eax, %ecx	# D.18721, D.18725
	movq	-128(%rbp), %rax	# insns, tmp513
	movl	$1, %edx	#,
	movl	%ecx, %esi	# D.18725,
	movq	%rax, %rdi	# tmp513,
	call	reg_scan	#
.L199:
	.loc 1 2913 0
	call	cleanup_barriers	#
	.loc 1 2915 0
	movl	flag_unroll_loops(%rip), %eax	# flag_unroll_loops, flag_unroll_loops.161
	testl	%eax, %eax	# flag_unroll_loops.161
	je	.L200	#,
	.loc 1 2915 0 is_stmt 0 discriminator 1
	movl	$3, %edx	#, iftmp.160
	jmp	.L201	#
.L200:
	.loc 1 2915 0 discriminator 2
	movl	$2, %edx	#, iftmp.160
.L201:
	.loc 1 2916 0 is_stmt 1
	movl	flag_prefetch_loop_arrays(%rip), %eax	# flag_prefetch_loop_arrays, flag_prefetch_loop_arrays.163
	testl	%eax, %eax	# flag_prefetch_loop_arrays.163
	je	.L202	#,
	.loc 1 2916 0 is_stmt 0 discriminator 1
	movl	$4, %eax	#, iftmp.162
	jmp	.L203	#
.L202:
	.loc 1 2916 0 discriminator 2
	movl	$0, %eax	#, iftmp.162
.L203:
	.loc 1 2914 0 is_stmt 1
	orl	%eax, %edx	# iftmp.162, D.18721
	movq	rtl_dump_file(%rip), %rcx	# rtl_dump_file, rtl_dump_file.164
	movq	-128(%rbp), %rax	# insns, tmp514
	movq	%rcx, %rsi	# rtl_dump_file.164,
	movq	%rax, %rdi	# tmp514,
	call	loop_optimize	#
	.loc 1 2918 0
	movq	-128(%rbp), %rax	# insns, tmp515
	movq	%rax, %rdx	# tmp515,
	movl	$print_rtl, %esi	#,
	movl	$11, %edi	#,
	call	close_dump_file	#
	.loc 1 2919 0
	movl	$16, %edi	#,
	call	timevar_pop	#
	.loc 1 2921 0
	call	ggc_collect	#
.L198:
	.loc 1 2924 0
	movl	optimize(%rip), %eax	# optimize, optimize.165
	testl	%eax, %eax	# optimize.165
	jle	.L204	#,
	.loc 1 2926 0
	movl	$17, %edi	#,
	call	timevar_push	#
	.loc 1 2927 0
	movq	-184(%rbp), %rax	# decl, tmp516
	movq	%rax, %rsi	# tmp516,
	movl	$12, %edi	#,
	call	open_dump_file	#
	.loc 1 2929 0
	movl	flag_rerun_cse_after_loop(%rip), %eax	# flag_rerun_cse_after_loop, flag_rerun_cse_after_loop.166
	testl	%eax, %eax	# flag_rerun_cse_after_loop.166
	je	.L205	#,
	.loc 1 2936 0
	movl	$13, %edi	#,
	call	timevar_push	#
	.loc 1 2942 0
	call	max_reg_num	#
	movl	%eax, %ecx	#, D.18721
	movq	-128(%rbp), %rax	# insns, tmp517
	movl	$0, %edx	#,
	movl	%ecx, %esi	# D.18721,
	movq	%rax, %rdi	# tmp517,
	call	delete_trivially_dead_insns	#
	.loc 1 2944 0
	call	max_reg_num	#
	movl	%eax, %ecx	# D.18721, D.18725
	movq	-128(%rbp), %rax	# insns, tmp518
	movl	$0, %edx	#,
	movl	%ecx, %esi	# D.18725,
	movq	%rax, %rdi	# tmp518,
	call	reg_scan	#
	.loc 1 2946 0
	movl	$21, %edi	#,
	call	timevar_push	#
	.loc 1 2948 0
	movq	rtl_dump_file(%rip), %rbx	# rtl_dump_file, rtl_dump_file.167
	call	max_reg_num	#
	movl	%eax, %ecx	#, D.18721
	movq	-128(%rbp), %rax	# insns, tmp519
	movq	%rbx, %rdx	# rtl_dump_file.167,
	movl	%ecx, %esi	# D.18721,
	movq	%rax, %rdi	# tmp519,
	call	find_basic_blocks	#
	.loc 1 2949 0
	movl	$1, %edi	#,
	call	cleanup_cfg	#
	.loc 1 2950 0
	movl	$0, %edi	#,
	call	if_convert	#
	.loc 1 2952 0
	movl	$21, %edi	#,
	call	timevar_pop	#
	.loc 1 2954 0
	movl	$13, %edi	#,
	call	timevar_pop	#
	.loc 1 2957 0
	call	free_bb_for_insn	#
	.loc 1 2958 0
	call	max_reg_num	#
	movl	%eax, %ecx	# D.18721, D.18725
	movq	-128(%rbp), %rax	# insns, tmp520
	movl	$0, %edx	#,
	movl	%ecx, %esi	# D.18725,
	movq	%rax, %rdi	# tmp520,
	call	reg_scan	#
	.loc 1 2959 0
	movq	rtl_dump_file(%rip), %rbx	# rtl_dump_file, rtl_dump_file.168
	call	max_reg_num	#
	movl	%eax, %esi	#, D.18721
	movq	-128(%rbp), %rax	# insns, tmp521
	movq	%rbx, %rcx	# rtl_dump_file.168,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp521,
	call	cse_main	#
	movl	%eax, -172(%rbp)	# tmp522, tem
	.loc 1 2961 0
	cmpl	$0, -172(%rbp)	#, tem
	je	.L205	#,
	.loc 1 2963 0
	movl	$13, %edi	#,
	call	timevar_push	#
	.loc 1 2964 0
	movq	-128(%rbp), %rax	# insns, tmp523
	movq	%rax, %rdi	# tmp523,
	call	rebuild_jump_labels	#
	.loc 1 2965 0
	movq	rtl_dump_file(%rip), %rbx	# rtl_dump_file, rtl_dump_file.169
	call	max_reg_num	#
	movl	%eax, %ecx	#, D.18721
	movq	-128(%rbp), %rax	# insns, tmp524
	movq	%rbx, %rdx	# rtl_dump_file.169,
	movl	%ecx, %esi	# D.18721,
	movq	%rax, %rdi	# tmp524,
	call	find_basic_blocks	#
	.loc 1 2966 0
	movl	$1, %edi	#,
	call	cleanup_cfg	#
	.loc 1 2968 0
	call	free_bb_for_insn	#
	.loc 1 2969 0
	movl	$13, %edi	#,
	call	timevar_pop	#
.L205:
	.loc 1 2973 0
	movq	-128(%rbp), %rax	# insns, tmp525
	movq	%rax, %rdx	# tmp525,
	movl	$print_rtl, %esi	#,
	movl	$12, %edi	#,
	call	close_dump_file	#
	.loc 1 2974 0
	movl	$17, %edi	#,
	call	timevar_pop	#
	.loc 1 2976 0
	call	ggc_collect	#
.L204:
	.loc 1 2979 0
	movl	$1, cse_not_expected(%rip)	#, cse_not_expected
	.loc 1 2981 0
	call	regclass_init	#
	.loc 1 2986 0
	movl	$19, %edi	#,
	call	timevar_push	#
	.loc 1 2987 0
	movq	-184(%rbp), %rax	# decl, tmp526
	movq	%rax, %rsi	# tmp526,
	movl	$13, %edi	#,
	call	open_dump_file	#
	.loc 1 2989 0
	movq	rtl_dump_file(%rip), %rbx	# rtl_dump_file, rtl_dump_file.170
	call	max_reg_num	#
	movl	%eax, %ecx	#, D.18721
	movq	-128(%rbp), %rax	# insns, tmp527
	movq	%rbx, %rdx	# rtl_dump_file.170,
	movl	%ecx, %esi	# D.18721,
	movq	%rax, %rdi	# tmp527,
	call	find_basic_blocks	#
	.loc 1 2990 0
	movl	optimize(%rip), %eax	# optimize, optimize.171
	testl	%eax, %eax	# optimize.171
	setne	%al	#, D.18717
	movzbl	%al, %edx	# D.18717, D.18721
	.loc 1 2991 0
	movl	flag_thread_jumps(%rip), %eax	# flag_thread_jumps, flag_thread_jumps.173
	testl	%eax, %eax	# flag_thread_jumps.173
	je	.L206	#,
	.loc 1 2991 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.172
	jmp	.L207	#
.L206:
	.loc 1 2991 0 discriminator 2
	movl	$0, %eax	#, iftmp.172
.L207:
	.loc 1 2990 0 is_stmt 1
	orl	%edx, %eax	# D.18721, D.18721
	movl	%eax, %edi	# D.18721,
	call	cleanup_cfg	#
	.loc 1 2992 0
	call	check_function_return_warnings	#
	.loc 1 3001 0
	call	mark_constant_function	#
	.loc 1 3003 0
	movq	-128(%rbp), %rax	# insns, tmp528
	movq	%rax, %rdx	# tmp528,
	movl	$print_rtl_with_bb, %esi	#,
	movl	$13, %edi	#,
	call	close_dump_file	#
	.loc 1 3005 0
	movl	profile_arc_flag(%rip), %eax	# profile_arc_flag, profile_arc_flag.174
	testl	%eax, %eax	# profile_arc_flag.174
	jne	.L208	#,
	.loc 1 3005 0 is_stmt 0 discriminator 1
	movl	flag_test_coverage(%rip), %eax	# flag_test_coverage, flag_test_coverage.175
	testl	%eax, %eax	# flag_test_coverage.175
	jne	.L208	#,
	movl	flag_branch_probabilities(%rip), %eax	# flag_branch_probabilities, flag_branch_probabilities.176
	testl	%eax, %eax	# flag_branch_probabilities.176
	je	.L209	#,
.L208:
	.loc 1 3007 0 is_stmt 1
	movl	$18, %edi	#,
	call	timevar_push	#
	.loc 1 3008 0
	movq	-184(%rbp), %rax	# decl, tmp529
	movq	%rax, %rsi	# tmp529,
	movl	$14, %edi	#,
	call	open_dump_file	#
	.loc 1 3010 0
	call	branch_prob	#
	.loc 1 3012 0
	movq	-128(%rbp), %rax	# insns, tmp530
	movq	%rax, %rdx	# tmp530,
	movl	$print_rtl_with_bb, %esi	#,
	movl	$14, %edi	#,
	call	close_dump_file	#
	.loc 1 3013 0
	movl	$18, %edi	#,
	call	timevar_pop	#
.L209:
	.loc 1 3016 0
	movq	-184(%rbp), %rax	# decl, tmp531
	movq	%rax, %rsi	# tmp531,
	movl	$15, %edi	#,
	call	open_dump_file	#
	.loc 1 3017 0
	movl	optimize(%rip), %eax	# optimize, optimize.177
	testl	%eax, %eax	# optimize.177
	je	.L210	#,
.LBB11:
	.loc 1 3023 0
	leaq	-80(%rbp), %rax	#, tmp532
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp532,
	call	flow_loops_find	#
	.loc 1 3026 0
	movl	flag_guess_branch_prob(%rip), %eax	# flag_guess_branch_prob, flag_guess_branch_prob.178
	testl	%eax, %eax	# flag_guess_branch_prob.178
	je	.L211	#,
	.loc 1 3027 0
	leaq	-80(%rbp), %rax	#, tmp533
	movq	%rax, %rdi	# tmp533,
	call	estimate_probability	#
.L211:
	.loc 1 3029 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.179
	testq	%rax, %rax	# rtl_dump_file.179
	je	.L212	#,
	.loc 1 3030 0
	movq	rtl_dump_file(%rip), %rsi	# rtl_dump_file, rtl_dump_file.180
	leaq	-80(%rbp), %rax	#, tmp534
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp534,
	call	flow_loops_dump	#
.L212:
	.loc 1 3032 0
	leaq	-80(%rbp), %rax	#, tmp535
	movq	%rax, %rdi	# tmp535,
	call	flow_loops_free	#
.L210:
.LBE11:
	.loc 1 3034 0
	movq	rtl_dump_file(%rip), %rcx	# rtl_dump_file, rtl_dump_file.181
	movq	-128(%rbp), %rax	# insns, tmp536
	movl	$127, %edx	#,
	movq	%rcx, %rsi	# rtl_dump_file.181,
	movq	%rax, %rdi	# tmp536,
	call	life_analysis	#
	.loc 1 3035 0
	movl	$19, %edi	#,
	call	timevar_pop	#
	.loc 1 3037 0
	movl	$1, no_new_pseudos(%rip)	#, no_new_pseudos
	.loc 1 3039 0
	movl	warn_uninitialized(%rip), %eax	# warn_uninitialized, warn_uninitialized.182
	testl	%eax, %eax	# warn_uninitialized.182
	jne	.L213	#,
	.loc 1 3039 0 is_stmt 0 discriminator 1
	movl	extra_warnings(%rip), %eax	# extra_warnings, extra_warnings.183
	testl	%eax, %eax	# extra_warnings.183
	je	.L214	#,
.L213:
	.loc 1 3041 0 is_stmt 1
	movq	-184(%rbp), %rax	# decl, tmp537
	movq	104(%rax), %rax	# decl_32(D)->decl.initial, D.18722
	movq	%rax, %rdi	# D.18722,
	call	uninitialized_vars_warning	#
	.loc 1 3042 0
	movl	extra_warnings(%rip), %eax	# extra_warnings, extra_warnings.184
	testl	%eax, %eax	# extra_warnings.184
	je	.L214	#,
	.loc 1 3043 0
	call	setjmp_args_warning	#
.L214:
	.loc 1 3046 0
	movl	optimize(%rip), %eax	# optimize, optimize.185
	testl	%eax, %eax	# optimize.185
	je	.L215	#,
	.loc 1 3048 0
	call	initialize_uninitialized_subregs	#
	testl	%eax, %eax	# D.18721
	je	.L215	#,
	.loc 1 3051 0
	call	get_insns	#
	movq	%rax, -128(%rbp)	# tmp538, insns
	.loc 1 3052 0
	movq	rtl_dump_file(%rip), %rcx	# rtl_dump_file, rtl_dump_file.186
	movq	-128(%rbp), %rax	# insns, tmp539
	movl	$7, %edx	#,
	movq	%rcx, %rsi	# rtl_dump_file.186,
	movq	%rax, %rdi	# tmp539,
	call	life_analysis	#
.L215:
	.loc 1 3057 0
	movq	-128(%rbp), %rax	# insns, tmp540
	movq	%rax, %rdx	# tmp540,
	movl	$print_rtl_with_bb, %esi	#,
	movl	$15, %edi	#,
	call	close_dump_file	#
	.loc 1 3059 0
	call	ggc_collect	#
	.loc 1 3063 0
	movl	optimize(%rip), %eax	# optimize, optimize.187
	testl	%eax, %eax	# optimize.187
	jle	.L216	#,
.LBB12:
	.loc 1 3065 0
	movl	$0, -136(%rbp)	#, rebuild_jump_labels_after_combine
	.loc 1 3067 0
	movl	$20, %edi	#,
	call	timevar_push	#
	.loc 1 3068 0
	movq	-184(%rbp), %rax	# decl, tmp541
	movq	%rax, %rsi	# tmp541,
	movl	$16, %edi	#,
	call	open_dump_file	#
	.loc 1 3071 0
	call	max_reg_num	#
	movl	%eax, %edx	# D.18721, D.18725
	movq	-128(%rbp), %rax	# insns, tmp542
	movl	%edx, %esi	# D.18725,
	movq	%rax, %rdi	# tmp542,
	call	combine_instructions	#
	movl	%eax, -136(%rbp)	# tmp543, rebuild_jump_labels_after_combine
	.loc 1 3075 0
	movl	$1, %edi	#,
	call	purge_all_dead_edges	#
	movzbl	%al, %eax	# D.18717, D.18721
	orl	%eax, -136(%rbp)	# D.18721, rebuild_jump_labels_after_combine
	.loc 1 3080 0
	cmpl	$0, -136(%rbp)	#, rebuild_jump_labels_after_combine
	je	.L217	#,
	.loc 1 3082 0
	movl	$13, %edi	#,
	call	timevar_push	#
	.loc 1 3083 0
	movq	-128(%rbp), %rax	# insns, tmp544
	movq	%rax, %rdi	# tmp544,
	call	rebuild_jump_labels	#
	.loc 1 3084 0
	movl	$13, %edi	#,
	call	timevar_pop	#
	.loc 1 3086 0
	movl	$33, %edi	#,
	call	cleanup_cfg	#
.L217:
	.loc 1 3089 0
	movq	-128(%rbp), %rax	# insns, tmp545
	movq	%rax, %rdx	# tmp545,
	movl	$print_rtl_with_bb, %esi	#,
	movl	$16, %edi	#,
	call	close_dump_file	#
	.loc 1 3090 0
	movl	$20, %edi	#,
	call	timevar_pop	#
	.loc 1 3092 0
	call	ggc_collect	#
.L216:
.LBE12:
	.loc 1 3097 0
	movl	optimize(%rip), %eax	# optimize, optimize.188
	testl	%eax, %eax	# optimize.188
	jle	.L218	#,
	.loc 1 3099 0
	movl	$21, %edi	#,
	call	timevar_push	#
	.loc 1 3100 0
	movq	-184(%rbp), %rax	# decl, tmp546
	movq	%rax, %rsi	# tmp546,
	movl	$17, %edi	#,
	call	open_dump_file	#
	.loc 1 3102 0
	movl	$0, no_new_pseudos(%rip)	#, no_new_pseudos
	.loc 1 3103 0
	movl	$1, %edi	#,
	call	if_convert	#
	.loc 1 3104 0
	movl	$1, no_new_pseudos(%rip)	#, no_new_pseudos
	.loc 1 3106 0
	movq	-128(%rbp), %rax	# insns, tmp547
	movq	%rax, %rdx	# tmp547,
	movl	$print_rtl_with_bb, %esi	#,
	movl	$17, %edi	#,
	call	close_dump_file	#
	.loc 1 3107 0
	movl	$21, %edi	#,
	call	timevar_pop	#
.L218:
	.loc 1 3112 0
	movl	optimize(%rip), %eax	# optimize, optimize.189
	testl	%eax, %eax	# optimize.189
	jle	.L219	#,
	.loc 1 3112 0 is_stmt 0 discriminator 1
	movl	flag_regmove(%rip), %eax	# flag_regmove, flag_regmove.190
	testl	%eax, %eax	# flag_regmove.190
	jne	.L220	#,
	movl	flag_expensive_optimizations(%rip), %eax	# flag_expensive_optimizations, flag_expensive_optimizations.191
	testl	%eax, %eax	# flag_expensive_optimizations.191
	je	.L219	#,
.L220:
	.loc 1 3114 0 is_stmt 1
	movl	$22, %edi	#,
	call	timevar_push	#
	.loc 1 3115 0
	movq	-184(%rbp), %rax	# decl, tmp548
	movq	%rax, %rsi	# tmp548,
	movl	$18, %edi	#,
	call	open_dump_file	#
	.loc 1 3117 0
	movq	rtl_dump_file(%rip), %rbx	# rtl_dump_file, rtl_dump_file.192
	call	max_reg_num	#
	movl	%eax, %ecx	#, D.18721
	movq	-128(%rbp), %rax	# insns, tmp549
	movq	%rbx, %rdx	# rtl_dump_file.192,
	movl	%ecx, %esi	# D.18721,
	movq	%rax, %rdi	# tmp549,
	call	regmove_optimize	#
	.loc 1 3119 0
	movq	-128(%rbp), %rax	# insns, tmp550
	movq	%rax, %rdx	# tmp550,
	movl	$print_rtl_with_bb, %esi	#,
	movl	$18, %edi	#,
	call	close_dump_file	#
	.loc 1 3120 0
	movl	$22, %edi	#,
	call	timevar_pop	#
	.loc 1 3122 0
	call	ggc_collect	#
.L219:
	.loc 1 3127 0
	movl	$1, %edi	#,
	call	split_all_insns	#
	.loc 1 3131 0
	movl	$0, -164(%rbp)	#, register_life_up_to_date
	.loc 1 3134 0
	movl	$23, %edi	#,
	call	timevar_push	#
	.loc 1 3136 0
	movl	$0, no_new_pseudos(%rip)	#, no_new_pseudos
	.loc 1 3137 0
	movl	$0, %edi	#,
	call	optimize_mode_switching	#
	testl	%eax, %eax	# D.18721
	je	.L221	#,
	.loc 1 3142 0
	movl	$1, -164(%rbp)	#, register_life_up_to_date
.L221:
	.loc 1 3144 0
	movl	$1, no_new_pseudos(%rip)	#, no_new_pseudos
	.loc 1 3146 0
	movl	$23, %edi	#,
	call	timevar_pop	#
	.loc 1 3149 0
	movl	$24, %edi	#,
	call	timevar_push	#
	.loc 1 3155 0
	movl	optimize(%rip), %eax	# optimize, optimize.193
	testl	%eax, %eax	# optimize.193
	jle	.L222	#,
	.loc 1 3155 0 is_stmt 0 discriminator 1
	movl	flag_schedule_insns(%rip), %eax	# flag_schedule_insns, flag_schedule_insns.194
	testl	%eax, %eax	# flag_schedule_insns.194
	je	.L222	#,
	.loc 1 3157 0 is_stmt 1
	movq	-184(%rbp), %rax	# decl, tmp551
	movq	%rax, %rsi	# tmp551,
	movl	$19, %edi	#,
	call	open_dump_file	#
	.loc 1 3162 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.195
	movq	%rax, %rdi	# rtl_dump_file.195,
	call	schedule_insns	#
	.loc 1 3164 0
	movq	-128(%rbp), %rax	# insns, tmp552
	movq	%rax, %rdx	# tmp552,
	movl	$print_rtl_with_bb, %esi	#,
	movl	$19, %edi	#,
	call	close_dump_file	#
	.loc 1 3168 0
	movl	$1, -164(%rbp)	#, register_life_up_to_date
.L222:
	.loc 1 3171 0
	movl	$24, %edi	#,
	call	timevar_pop	#
	.loc 1 3173 0
	call	ggc_collect	#
	.loc 1 3178 0
	call	leaf_function_p	#
	movl	%eax, current_function_is_leaf(%rip)	# current_function_is_leaf.196, current_function_is_leaf
	.loc 1 3180 0
	movl	$25, %edi	#,
	call	timevar_push	#
	.loc 1 3181 0
	movq	-184(%rbp), %rax	# decl, tmp553
	movq	%rax, %rsi	# tmp553,
	movl	$20, %edi	#,
	call	open_dump_file	#
	.loc 1 3188 0
	cmpl	$0, -164(%rbp)	#, register_life_up_to_date
	jne	.L223	#,
	.loc 1 3189 0
	movl	optimize_size(%rip), %eax	# optimize_size, optimize_size.197
	testl	%eax, %eax	# optimize_size.197
	sete	%al	#, D.18717
	movzbl	%al, %edx	# D.18717, D.18721
	movq	-128(%rbp), %rax	# insns, tmp554
	movl	%edx, %esi	# D.18721,
	movq	%rax, %rdi	# tmp554,
	call	recompute_reg_usage	#
.L223:
	.loc 1 3192 0
	movl	max_regno(%rip), %eax	# max_regno, max_regno.198
	cltq
	movl	$1, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.18726,
	call	allocate_reg_info	#
	.loc 1 3195 0
	movl	max_regno(%rip), %eax	# max_regno, max_regno.199
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.18726,
	call	xcalloc	#
	movq	%rax, reg_equiv_memory_loc(%rip)	# reg_equiv_memory_loc.200, reg_equiv_memory_loc
	.loc 1 3197 0
	movq	reg_equiv_memory_loc(%rip), %rax	# reg_equiv_memory_loc, reg_equiv_memory_loc.201
	movq	%rax, %rdi	# reg_equiv_memory_loc.201,
	call	allocate_initial_values	#
	.loc 1 3199 0
	movq	rtl_dump_file(%rip), %rbx	# rtl_dump_file, rtl_dump_file.202
	call	max_reg_num	#
	movl	%eax, %ecx	#, D.18721
	movq	-128(%rbp), %rax	# insns, tmp556
	movq	%rbx, %rdx	# rtl_dump_file.202,
	movl	%ecx, %esi	# D.18721,
	movq	%rax, %rdi	# tmp556,
	call	regclass	#
	.loc 1 3200 0
	call	local_alloc	#
	movl	%eax, -132(%rbp)	# tmp557, rebuild_label_notes_after_reload
	.loc 1 3202 0
	movl	$25, %edi	#,
	call	timevar_pop	#
	.loc 1 3204 0
	movzbl	dump_file+330(%rip), %eax	# dump_file[20].enabled, D.18727
	testb	%al, %al	# D.18727
	je	.L224	#,
	.loc 1 3206 0
	movl	$2, %edi	#,
	call	timevar_push	#
	.loc 1 3208 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.203
	movq	%rax, %rdi	# rtl_dump_file.203,
	call	dump_flow_info	#
	.loc 1 3209 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.204
	movq	%rax, %rdi	# rtl_dump_file.204,
	call	dump_local_alloc	#
	.loc 1 3211 0
	movq	-128(%rbp), %rax	# insns, tmp558
	movq	%rax, %rdx	# tmp558,
	movl	$print_rtl_with_bb, %esi	#,
	movl	$20, %edi	#,
	call	close_dump_file	#
	.loc 1 3212 0
	movl	$2, %edi	#,
	call	timevar_pop	#
.L224:
	.loc 1 3215 0
	call	ggc_collect	#
	.loc 1 3217 0
	movl	$26, %edi	#,
	call	timevar_push	#
	.loc 1 3218 0
	movq	-184(%rbp), %rax	# decl, tmp559
	movq	%rax, %rsi	# tmp559,
	movl	$21, %edi	#,
	call	open_dump_file	#
	.loc 1 3223 0
	movl	optimize(%rip), %eax	# optimize, optimize.205
	testl	%eax, %eax	# optimize.205
	je	.L225	#,
	.loc 1 3224 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.206
	movq	%rax, %rdi	# rtl_dump_file.206,
	call	global_alloc	#
	movl	%eax, -168(%rbp)	# tmp560, failure
	jmp	.L226	#
.L225:
	.loc 1 3227 0
	movq	-128(%rbp), %rax	# insns, tmp561
	movq	%rax, %rdi	# tmp561,
	call	build_insn_chain	#
	.loc 1 3228 0
	movq	-128(%rbp), %rax	# insns, tmp562
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp562,
	call	reload	#
	movl	%eax, -168(%rbp)	# tmp563, failure
.L226:
	.loc 1 3231 0
	movl	$26, %edi	#,
	call	timevar_pop	#
	.loc 1 3233 0
	movzbl	dump_file+346(%rip), %eax	# dump_file[21].enabled, D.18727
	testb	%al, %al	# D.18727
	je	.L227	#,
	.loc 1 3235 0
	movl	$2, %edi	#,
	call	timevar_push	#
	.loc 1 3237 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.207
	movq	%rax, %rdi	# rtl_dump_file.207,
	call	dump_global_regs	#
	.loc 1 3239 0
	movq	-128(%rbp), %rax	# insns, tmp564
	movq	%rax, %rdx	# tmp564,
	movl	$print_rtl_with_bb, %esi	#,
	movl	$21, %edi	#,
	call	close_dump_file	#
	.loc 1 3240 0
	movl	$2, %edi	#,
	call	timevar_pop	#
.L227:
	.loc 1 3243 0
	cmpl	$0, -168(%rbp)	#, failure
	je	.L228	#,
	.loc 1 3244 0
	jmp	.L144	#
.L228:
	.loc 1 3246 0
	call	ggc_collect	#
	.loc 1 3248 0
	movq	-184(%rbp), %rax	# decl, tmp565
	movq	%rax, %rsi	# tmp565,
	movl	$22, %edi	#,
	call	open_dump_file	#
	.loc 1 3251 0
	movl	optimize(%rip), %eax	# optimize, optimize.208
	testl	%eax, %eax	# optimize.208
	jle	.L229	#,
	.loc 1 3253 0
	movl	$27, %edi	#,
	call	timevar_push	#
	.loc 1 3254 0
	movq	-128(%rbp), %rax	# insns, tmp566
	movq	%rax, %rdi	# tmp566,
	call	reload_cse_regs	#
	.loc 1 3255 0
	movl	$27, %edi	#,
	call	timevar_pop	#
.L229:
	.loc 1 3261 0
	cmpl	$0, -132(%rbp)	#, rebuild_label_notes_after_reload
	je	.L230	#,
	.loc 1 3263 0
	movl	$13, %edi	#,
	call	timevar_push	#
	.loc 1 3265 0
	movq	-128(%rbp), %rax	# insns, tmp567
	movq	%rax, %rdi	# tmp567,
	call	rebuild_jump_labels	#
	.loc 1 3267 0
	movl	$13, %edi	#,
	call	timevar_pop	#
.L230:
	.loc 1 3270 0
	movq	-128(%rbp), %rax	# insns, tmp568
	movq	%rax, %rdx	# tmp568,
	movl	$print_rtl_with_bb, %esi	#,
	movl	$22, %edi	#,
	call	close_dump_file	#
	.loc 1 3273 0
	movl	$28, %edi	#,
	call	timevar_push	#
	.loc 1 3274 0
	movq	-184(%rbp), %rax	# decl, tmp569
	movq	%rax, %rsi	# tmp569,
	movl	$23, %edi	#,
	call	open_dump_file	#
	.loc 1 3281 0
	movl	optimize(%rip), %eax	# optimize, optimize.209
	testl	%eax, %eax	# optimize.209
	jle	.L231	#,
	.loc 1 3282 0
	movl	$0, %edi	#,
	call	split_all_insns	#
.L231:
	.loc 1 3284 0
	movl	optimize(%rip), %eax	# optimize, optimize.210
	testl	%eax, %eax	# optimize.210
	setne	%al	#, D.18717
	movzbl	%al, %eax	# D.18717, D.18721
	movl	%eax, %edi	# D.18721,
	call	cleanup_cfg	#
	.loc 1 3290 0
	movq	-128(%rbp), %rax	# insns, tmp570
	movq	%rax, %rdi	# tmp570,
	call	thread_prologue_and_epilogue_insns	#
	.loc 1 3295 0
	movl	$2, -160(%rbp)	#, cleanup_crossjump
	.loc 1 3296 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.211
	cmpl	$1000, %eax	#, n_basic_blocks.211
	jle	.L232	#,
	.loc 1 3296 0 is_stmt 0 discriminator 1
	movl	n_edges(%rip), %eax	# n_edges, n_edges.212
	movl	n_basic_blocks(%rip), %ebx	# n_basic_blocks, n_basic_blocks.213
	cltd
	idivl	%ebx	# n_basic_blocks.213
	cmpl	$19, %eax	#, D.18721
	jle	.L232	#,
	.loc 1 3298 0 is_stmt 1
	movl	optimize(%rip), %eax	# optimize, optimize.214
	testl	%eax, %eax	# optimize.214
	je	.L233	#,
	.loc 1 3298 0 is_stmt 0 discriminator 1
	movl	warn_disabled_optimization(%rip), %eax	# warn_disabled_optimization, warn_disabled_optimization.215
	testl	%eax, %eax	# warn_disabled_optimization.215
	je	.L233	#,
	.loc 1 3299 0 is_stmt 1
	movl	n_edges(%rip), %eax	# n_edges, n_edges.216
	movl	n_basic_blocks(%rip), %ebx	# n_basic_blocks, n_basic_blocks.217
	cltd
	idivl	%ebx	# n_basic_blocks.217
	movl	%eax, %edx	# tmp573, D.18721
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.218
	movl	%eax, %esi	# n_basic_blocks.218,
	movl	$.LC568, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L233:
	.loc 1 3301 0
	movl	$0, -160(%rbp)	#, cleanup_crossjump
.L232:
	.loc 1 3304 0
	movl	optimize(%rip), %eax	# optimize, optimize.219
	testl	%eax, %eax	# optimize.219
	je	.L234	#,
	.loc 1 3306 0
	movl	-160(%rbp), %eax	# cleanup_crossjump, tmp575
	orl	$1, %eax	#, D.18721
	movl	%eax, %edi	# D.18721,
	call	cleanup_cfg	#
	.loc 1 3307 0
	movq	rtl_dump_file(%rip), %rcx	# rtl_dump_file, rtl_dump_file.220
	movq	-128(%rbp), %rax	# insns, tmp576
	movl	$127, %edx	#,
	movq	%rcx, %rsi	# rtl_dump_file.220,
	movq	%rax, %rdi	# tmp576,
	call	life_analysis	#
	.loc 1 3316 0
	call	combine_stack_adjustments	#
	.loc 1 3318 0
	call	ggc_collect	#
.L234:
	.loc 1 3321 0
	movl	$1, flow2_completed(%rip)	#, flow2_completed
	.loc 1 3323 0
	movq	-128(%rbp), %rax	# insns, tmp577
	movq	%rax, %rdx	# tmp577,
	movl	$print_rtl_with_bb, %esi	#,
	movl	$23, %edi	#,
	call	close_dump_file	#
	.loc 1 3324 0
	movl	$28, %edi	#,
	call	timevar_pop	#
	.loc 1 3327 0
	movl	optimize(%rip), %eax	# optimize, optimize.221
	testl	%eax, %eax	# optimize.221
	jle	.L235	#,
	.loc 1 3327 0 is_stmt 0 discriminator 1
	movl	flag_peephole2(%rip), %eax	# flag_peephole2, flag_peephole2.222
	testl	%eax, %eax	# flag_peephole2.222
	je	.L235	#,
	.loc 1 3329 0 is_stmt 1
	movl	$30, %edi	#,
	call	timevar_push	#
	.loc 1 3330 0
	movq	-184(%rbp), %rax	# decl, tmp578
	movq	%rax, %rsi	# tmp578,
	movl	$24, %edi	#,
	call	open_dump_file	#
	.loc 1 3332 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.223
	movq	%rax, %rdi	# rtl_dump_file.223,
	call	peephole2_optimize	#
	.loc 1 3334 0
	movq	-128(%rbp), %rax	# insns, tmp579
	movq	%rax, %rdx	# tmp579,
	movl	$print_rtl_with_bb, %esi	#,
	movl	$24, %edi	#,
	call	close_dump_file	#
	.loc 1 3335 0
	movl	$30, %edi	#,
	call	timevar_pop	#
.L235:
	.loc 1 3339 0
	movl	optimize(%rip), %eax	# optimize, optimize.224
	testl	%eax, %eax	# optimize.224
	jle	.L236	#,
	.loc 1 3339 0 is_stmt 0 discriminator 1
	movl	flag_rename_registers(%rip), %eax	# flag_rename_registers, flag_rename_registers.225
	testl	%eax, %eax	# flag_rename_registers.225
	jne	.L237	#,
	movl	flag_cprop_registers(%rip), %eax	# flag_cprop_registers, flag_cprop_registers.226
	testl	%eax, %eax	# flag_cprop_registers.226
	je	.L236	#,
.L237:
	.loc 1 3341 0 is_stmt 1
	movl	$31, %edi	#,
	call	timevar_push	#
	.loc 1 3342 0
	movq	-184(%rbp), %rax	# decl, tmp580
	movq	%rax, %rsi	# tmp580,
	movl	$25, %edi	#,
	call	open_dump_file	#
	.loc 1 3344 0
	movl	flag_rename_registers(%rip), %eax	# flag_rename_registers, flag_rename_registers.227
	testl	%eax, %eax	# flag_rename_registers.227
	je	.L238	#,
	.loc 1 3345 0
	call	regrename_optimize	#
.L238:
	.loc 1 3346 0
	movl	flag_cprop_registers(%rip), %eax	# flag_cprop_registers, flag_cprop_registers.228
	testl	%eax, %eax	# flag_cprop_registers.228
	je	.L239	#,
	.loc 1 3347 0
	call	copyprop_hardreg_forward	#
.L239:
	.loc 1 3349 0
	movq	-128(%rbp), %rax	# insns, tmp581
	movq	%rax, %rdx	# tmp581,
	movl	$print_rtl_with_bb, %esi	#,
	movl	$25, %edi	#,
	call	close_dump_file	#
	.loc 1 3350 0
	movl	$31, %edi	#,
	call	timevar_pop	#
.L236:
	.loc 1 3353 0
	movl	optimize(%rip), %eax	# optimize, optimize.229
	testl	%eax, %eax	# optimize.229
	jle	.L240	#,
	.loc 1 3355 0
	movl	$29, %edi	#,
	call	timevar_push	#
	.loc 1 3356 0
	movq	-184(%rbp), %rax	# decl, tmp582
	movq	%rax, %rsi	# tmp582,
	movl	$26, %edi	#,
	call	open_dump_file	#
	.loc 1 3358 0
	movl	$1, %edi	#,
	call	if_convert	#
	.loc 1 3360 0
	movq	-128(%rbp), %rax	# insns, tmp583
	movq	%rax, %rdx	# tmp583,
	movl	$print_rtl_with_bb, %esi	#,
	movl	$26, %edi	#,
	call	close_dump_file	#
	.loc 1 3361 0
	movl	$29, %edi	#,
	call	timevar_pop	#
.L240:
	.loc 1 3364 0
	movl	optimize(%rip), %eax	# optimize, optimize.230
	testl	%eax, %eax	# optimize.230
	je	.L241	#,
	.loc 1 3365 0
	movl	$1, %edi	#,
	call	split_all_insns	#
.L241:
	.loc 1 3369 0
	movl	optimize(%rip), %eax	# optimize, optimize.231
	testl	%eax, %eax	# optimize.231
	jle	.L242	#,
	.loc 1 3369 0 is_stmt 0 discriminator 1
	movl	flag_schedule_insns_after_reload(%rip), %eax	# flag_schedule_insns_after_reload, flag_schedule_insns_after_reload.232
	testl	%eax, %eax	# flag_schedule_insns_after_reload.232
	je	.L242	#,
	.loc 1 3371 0 is_stmt 1
	movl	$32, %edi	#,
	call	timevar_push	#
	.loc 1 3372 0
	movq	-184(%rbp), %rax	# decl, tmp584
	movq	%rax, %rsi	# tmp584,
	movl	$27, %edi	#,
	call	open_dump_file	#
	.loc 1 3377 0
	movl	$1, %edi	#,
	call	split_all_insns	#
	.loc 1 3379 0
	movq	rtl_dump_file(%rip), %rax	# rtl_dump_file, rtl_dump_file.233
	movq	%rax, %rdi	# rtl_dump_file.233,
	call	schedule_insns	#
	.loc 1 3381 0
	movq	-128(%rbp), %rax	# insns, tmp585
	movq	%rax, %rdx	# tmp585,
	movl	$print_rtl_with_bb, %esi	#,
	movl	$27, %edi	#,
	call	close_dump_file	#
	.loc 1 3382 0
	movl	$32, %edi	#,
	call	timevar_pop	#
	.loc 1 3384 0
	call	ggc_collect	#
.L242:
	.loc 1 3394 0
	movl	$37, %edi	#,
	call	timevar_push	#
	.loc 1 3395 0
	movq	-184(%rbp), %rax	# decl, tmp586
	movq	%rax, %rsi	# tmp586,
	movl	$28, %edi	#,
	call	open_dump_file	#
	.loc 1 3397 0
	movq	rtl_dump_file(%rip), %rdx	# rtl_dump_file, rtl_dump_file.234
	movq	-128(%rbp), %rax	# insns, tmp587
	movq	%rdx, %rsi	# rtl_dump_file.234,
	movq	%rax, %rdi	# tmp587,
	call	reg_to_stack	#
	.loc 1 3399 0
	movq	-128(%rbp), %rax	# insns, tmp588
	movq	%rax, %rdx	# tmp588,
	movl	$print_rtl_with_bb, %esi	#,
	movl	$28, %edi	#,
	call	close_dump_file	#
	.loc 1 3400 0
	movl	$37, %edi	#,
	call	timevar_pop	#
	.loc 1 3402 0
	call	ggc_collect	#
	.loc 1 3404 0
	movl	optimize(%rip), %eax	# optimize, optimize.235
	testl	%eax, %eax	# optimize.235
	jle	.L243	#,
	.loc 1 3406 0
	movl	$35, %edi	#,
	call	timevar_push	#
	.loc 1 3407 0
	movq	-184(%rbp), %rax	# decl, tmp589
	movq	%rax, %rsi	# tmp589,
	movl	$29, %edi	#,
	call	open_dump_file	#
	.loc 1 3414 0
	movl	$5, %edi	#,
	call	cleanup_cfg	#
	.loc 1 3415 0
	movl	flag_reorder_blocks(%rip), %eax	# flag_reorder_blocks, flag_reorder_blocks.236
	testl	%eax, %eax	# flag_reorder_blocks.236
	je	.L244	#,
	.loc 1 3417 0
	call	reorder_basic_blocks	#
	.loc 1 3418 0
	movl	$5, %edi	#,
	call	cleanup_cfg	#
.L244:
	.loc 1 3421 0
	movq	-128(%rbp), %rax	# insns, tmp590
	movq	%rax, %rdx	# tmp590,
	movl	$print_rtl_with_bb, %esi	#,
	movl	$29, %edi	#,
	call	close_dump_file	#
	.loc 1 3422 0
	movl	$35, %edi	#,
	call	timevar_pop	#
.L243:
	.loc 1 3424 0
	call	compute_alignments	#
	.loc 1 3427 0
	call	free_bb_for_insn	#
	.loc 1 3442 0
	movq	-128(%rbp), %rax	# insns, tmp591
	movq	%rax, %rdi	# tmp591,
	call	purge_line_number_notes	#
	.loc 1 3443 0
	call	cleanup_barriers	#
	.loc 1 3469 0
	call	convert_to_eh_region_ranges	#
	.loc 1 3472 0
	movl	$36, %edi	#,
	call	timevar_push	#
	.loc 1 3473 0
	call	get_insns	#
	movq	%rax, %rdi	# D.18724,
	call	shorten_branches	#
	.loc 1 3474 0
	movl	$36, %edi	#,
	call	timevar_pop	#
	.loc 1 3476 0
	call	nothrow_function_p	#
	movzbl	%al, %eax	# D.18717, current_function_nothrow.237
	movl	%eax, current_function_nothrow(%rip)	# current_function_nothrow.237, current_function_nothrow
	.loc 1 3477 0
	movl	current_function_nothrow(%rip), %eax	# current_function_nothrow, current_function_nothrow.238
	testl	%eax, %eax	# current_function_nothrow.238
	je	.L245	#,
	.loc 1 3480 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.239
	movzbl	18(%rax), %edx	#, tmp594
	orl	$2, %edx	#, tmp595
	movb	%dl, 18(%rax)	# tmp595,
.L245:
	.loc 1 3484 0
	movl	$42, %edi	#,
	call	timevar_push	#
.LBB13:
	.loc 1 3492 0
	movq	-184(%rbp), %rax	# decl, tmp596
	movq	144(%rax), %rax	# decl_32(D)->decl.rtl, D.18724
	testq	%rax, %rax	# D.18724
	je	.L246	#,
	.loc 1 3492 0 is_stmt 0 discriminator 1
	movq	-184(%rbp), %rax	# decl, tmp597
	movq	144(%rax), %rax	# decl_32(D)->decl.rtl, iftmp.240
	jmp	.L247	#
.L246:
	.loc 1 3492 0 discriminator 2
	movq	-184(%rbp), %rax	# decl, tmp598
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp598,
	call	make_decl_rtl	#
	movq	-184(%rbp), %rax	# decl, tmp599
	movq	144(%rax), %rax	# decl_32(D)->decl.rtl, iftmp.240
.L247:
	.loc 1 3492 0 discriminator 3
	movq	%rax, -96(%rbp)	# iftmp.240, x
	.loc 1 3493 0 is_stmt 1 discriminator 3
	movq	-96(%rbp), %rax	# x, tmp600
	movzwl	(%rax), %eax	# x_353->code, D.18728
	cmpw	$66, %ax	#, D.18728
	je	.L248	#,
	.loc 1 3494 0
	movl	$__FUNCTION__.15612, %edx	#,
	movl	$3494, %esi	#,
	movl	$.LC549, %edi	#,
	call	fancy_abort	#
.L248:
	.loc 1 3495 0
	movq	-96(%rbp), %rax	# x, tmp601
	movq	8(%rax), %rax	# x_353->fld[0].rtx, tmp602
	movq	%rax, -96(%rbp)	# tmp602, x
	.loc 1 3496 0
	movq	-96(%rbp), %rax	# x, tmp603
	movzwl	(%rax), %eax	# x_355->code, D.18728
	cmpw	$68, %ax	#, D.18728
	je	.L249	#,
	.loc 1 3497 0
	movl	$__FUNCTION__.15612, %edx	#,
	movl	$3497, %esi	#,
	movl	$.LC549, %edi	#,
	call	fancy_abort	#
.L249:
	.loc 1 3498 0
	movq	-96(%rbp), %rax	# x, tmp604
	movq	8(%rax), %rax	# x_355->fld[0].rtstr, tmp605
	movq	%rax, -88(%rbp)	# tmp605, fnname
	.loc 1 3500 0
	movq	-88(%rbp), %rdx	# fnname, tmp606
	movq	-184(%rbp), %rax	# decl, tmp607
	movq	%rdx, %rsi	# tmp606,
	movq	%rax, %rdi	# tmp607,
	call	assemble_start_function	#
	.loc 1 3501 0
	movl	optimize(%rip), %edx	# optimize, optimize.241
	movq	asm_out_file(%rip), %rcx	# asm_out_file, asm_out_file.242
	movq	-128(%rbp), %rax	# insns, tmp608
	movq	%rcx, %rsi	# asm_out_file.242,
	movq	%rax, %rdi	# tmp608,
	call	final_start_function	#
	.loc 1 3502 0
	movl	optimize(%rip), %edx	# optimize, optimize.243
	movq	asm_out_file(%rip), %rsi	# asm_out_file, asm_out_file.244
	movq	-128(%rbp), %rax	# insns, tmp609
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp609,
	call	final	#
	.loc 1 3503 0
	call	final_end_function	#
	.loc 1 3511 0
	movq	-88(%rbp), %rdx	# fnname, tmp610
	movq	-184(%rbp), %rax	# decl, tmp611
	movq	%rdx, %rsi	# tmp610,
	movq	%rax, %rdi	# tmp611,
	call	assemble_end_function	#
	.loc 1 3515 0
	call	output_function_exception_table	#
	.loc 1 3518 0
	movl	quiet_flag(%rip), %eax	# quiet_flag, quiet_flag.245
	testl	%eax, %eax	# quiet_flag.245
	jne	.L250	#,
	.loc 1 3519 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.246
	movq	%rax, %rdi	# asm_out_file.246,
	call	fflush	#
.L250:
	.loc 1 3522 0
	movl	$0, %edi	#,
	call	free_basic_block_vars	#
	.loc 1 3525 0
	call	regset_release_memory	#
.LBE13:
	.loc 1 3527 0
	movl	$42, %edi	#,
	call	timevar_pop	#
	.loc 1 3529 0
	call	ggc_collect	#
	.loc 1 3541 0
	movl	$43, %edi	#,
	call	timevar_push	#
	.loc 1 3542 0
	movq	debug_hooks(%rip), %rax	# debug_hooks, debug_hooks.247
	movq	120(%rax), %rax	# debug_hooks.247_364->function_decl, D.18723
	movq	-184(%rbp), %rdx	# decl, tmp612
	movq	%rdx, %rdi	# tmp612,
	call	*%rax	# D.18723
	.loc 1 3543 0
	movl	$43, %edi	#,
	call	timevar_pop	#
.L144:
	.loc 1 3555 0
	movl	$0, reload_completed(%rip)	#, reload_completed
	.loc 1 3556 0
	movl	$0, flow2_completed(%rip)	#, flow2_completed
	.loc 1 3557 0
	movl	$0, no_new_pseudos(%rip)	#, no_new_pseudos
	.loc 1 3559 0
	movl	$42, %edi	#,
	call	timevar_push	#
	.loc 1 3563 0
	call	init_insn_lengths	#
	.loc 1 3567 0
	call	clear_const_double_mem	#
	.loc 1 3570 0
	call	init_temp_slots	#
	.loc 1 3572 0
	movl	$0, %edi	#,
	call	free_basic_block_vars	#
	.loc 1 3573 0
	call	free_bb_for_insn	#
	.loc 1 3575 0
	movl	$42, %edi	#,
	call	timevar_pop	#
	.loc 1 3586 0
	call	init_recog_no_volatile	#
	.loc 1 3589 0
	movq	cfun(%rip), %rax	# cfun, cfun.248
	movq	%rax, %rdi	# cfun.248,
	call	free_after_parsing	#
	.loc 1 3590 0
	movq	-184(%rbp), %rax	# decl, tmp613
	movzbl	50(%rax), %eax	# *decl_32(D), D.18718
	andl	$4, %eax	#, D.18718
	testb	%al, %al	# D.18718
	jne	.L251	#,
	.loc 1 3592 0
	movq	cfun(%rip), %rax	# cfun, cfun.249
	movq	%rax, %rdi	# cfun.249,
	call	free_after_compilation	#
	.loc 1 3596 0
	movq	-184(%rbp), %rax	# decl, tmp614
	movq	$0, 160(%rax)	#, decl_32(D)->decl.u2.f
.L251:
	.loc 1 3598 0
	movq	$0, cfun(%rip)	#, cfun
	.loc 1 3600 0
	call	ggc_collect	#
	.loc 1 3602 0
	movl	$44, %edi	#,
	call	timevar_pop	#
	.loc 1 3603 0
	addq	$184, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	rest_of_compilation, .-rest_of_compilation
	.section	.rodata
	.align 8
.LC569:
	.string	"  -ffixed-<register>      Mark <register> as being unavailable to the compiler"
	.align 8
.LC570:
	.string	"  -fcall-used-<register>  Mark <register> as being corrupted by function calls"
	.align 8
.LC571:
	.string	"  -fcall-saved-<register> Mark <register> as being preserved across functions"
	.align 8
.LC572:
	.string	"  -finline-limit=<number> Limits the size of inlined functions to <number>"
	.align 8
.LC573:
	.string	"  -fmessage-length=<number> Limits diagnostics messages lengths to <number> characters per line.  0 suppresses line-wrapping"
	.align 8
.LC574:
	.string	"  -fdiagnostics-show-location=[once | every-line] Indicates how often source location information should be emitted, as prefix, at the beginning of diagnostics when line-wrapping"
.LC575:
	.string	"  -f%-21s %s\n"
	.align 8
.LC576:
	.string	"  -O[number]              Set optimization level to [number]"
	.align 8
.LC577:
	.string	"  -Os                     Optimize for space rather than speed"
.LC578:
	.string	"                     "
.LC579:
	.string	"  --param %s=<value>%.*s%s\n"
	.align 8
.LC580:
	.string	"  -pedantic               Issue warnings needed by strict compliance to ISO C"
	.align 8
.LC581:
	.string	"  -pedantic-errors        Like -pedantic except that errors are produced"
	.align 8
.LC582:
	.string	"  -w                      Suppress warnings"
	.align 8
.LC583:
	.string	"  -W                      Enable extra warnings"
.LC584:
	.string	"  -W%-21s %s\n"
	.align 8
.LC585:
	.string	"  -Wunused                Enable unused warnings"
	.align 8
.LC586:
	.string	"  -Wlarger-than-<number>  Warn if an object is larger than <number> bytes"
	.align 8
.LC587:
	.string	"  -p                      Enable function profiling"
	.align 8
.LC588:
	.string	"  -o <file>               Place output into <file> "
	.align 8
.LC589:
	.string	"  -G <number>             Put global and static data smaller than <number>\n                          bytes into a special section (on some targets)"
.LC590:
	.string	"  -g%-21s %s\n"
	.align 8
.LC591:
	.string	"  -aux-info <file>        Emit declaration info into <file>"
	.align 8
.LC592:
	.string	"  -quiet                  Do not display functions compiled or elapsed time"
	.align 8
.LC593:
	.string	"  -version                Display the compiler's version"
	.align 8
.LC594:
	.string	"  -d[letters]             Enable dumps from specific passes of the compiler"
	.align 8
.LC595:
	.string	"  -dumpbase <file>        Base name to be used for dumps from specific passes"
	.align 8
.LC596:
	.string	"  -fsched-verbose=<number> Set the verbosity level of the scheduler"
	.align 8
.LC597:
	.string	"  --help                  Display this information"
.LC598:
	.string	"language"
.LC599:
	.string	"\nLanguage specific options:"
.LC600:
	.string	"  %-23.23s [undocumented]\n"
	.align 8
.LC601:
	.string	"\nThere are undocumented %s specific options as well.\n"
.LC602:
	.string	"\n Options for %s:\n"
.LC603:
	.string	"  %-23.23s %s\n"
	.text
	.type	display_help, @function
display_help:
.LFB28:
	.loc 1 3607 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	.loc 1 3612 0
	movl	$.LC569, %edi	#,
	call	puts	#
	.loc 1 3613 0
	movl	$.LC570, %edi	#,
	call	puts	#
	.loc 1 3614 0
	movl	$.LC571, %edi	#,
	call	puts	#
	.loc 1 3615 0
	movl	$.LC572, %edi	#,
	call	puts	#
	.loc 1 3616 0
	movl	$.LC573, %edi	#,
	call	puts	#
	.loc 1 3617 0
	movl	$.LC574, %edi	#,
	call	puts	#
	.loc 1 3619 0
	movq	$97, -56(%rbp)	#, i
	jmp	.L253	#
.L254:
.LBB14:
	.loc 1 3621 0
	movq	-56(%rbp), %rax	# i, tmp88
	salq	$5, %rax	#, tmp89
	addq	$f_options+16, %rax	#, tmp90
	movq	8(%rax), %rax	# f_options[i_12].description, tmp91
	movq	%rax, -40(%rbp)	# tmp91, description
	.loc 1 3623 0
	cmpq	$0, -40(%rbp)	#, description
	je	.L253	#,
	.loc 1 3623 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# description, tmp92
	movzbl	(%rax), %eax	# *description_13, D.18731
	testb	%al, %al	# D.18731
	je	.L253	#,
	.loc 1 3624 0 is_stmt 1
	movq	-56(%rbp), %rax	# i, tmp93
	salq	$5, %rax	#, tmp94
	addq	$f_options, %rax	#, tmp95
	movq	(%rax), %rax	# f_options[i_12].string, D.18732
	movq	-40(%rbp), %rdx	# description, tmp96
	movq	%rax, %rsi	# D.18732,
	movl	$.LC575, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L253:
.LBE14:
	.loc 1 3619 0 discriminator 1
	movq	-56(%rbp), %rax	# i, i.250
	leaq	-1(%rax), %rdx	#, tmp97
	movq	%rdx, -56(%rbp)	# tmp97, i
	testq	%rax, %rax	# i.250
	jne	.L254	#,
	.loc 1 3628 0
	movl	$.LC576, %edi	#,
	call	puts	#
	.loc 1 3629 0
	movl	$.LC577, %edi	#,
	call	puts	#
	.loc 1 3630 0
	movq	$6, -56(%rbp)	#, i
	jmp	.L255	#
.L256:
.LBB15:
	.loc 1 3632 0
	movq	compiler_params(%rip), %rcx	# compiler_params, compiler_params.251
	movq	-56(%rbp), %rdx	# i, tmp98
	movq	%rdx, %rax	# tmp98, tmp99
	addq	%rax, %rax	# tmp99
	addq	%rdx, %rax	# tmp98, tmp99
	salq	$3, %rax	#, tmp100
	addq	%rcx, %rax	# compiler_params.251, D.18734
	movq	16(%rax), %rax	# _21->help, tmp101
	movq	%rax, -32(%rbp)	# tmp101, description
	.loc 1 3633 0
	movq	compiler_params(%rip), %rcx	# compiler_params, compiler_params.252
	movq	-56(%rbp), %rdx	# i, tmp102
	movq	%rdx, %rax	# tmp102, tmp103
	addq	%rax, %rax	# tmp103
	addq	%rdx, %rax	# tmp102, tmp103
	salq	$3, %rax	#, tmp104
	addq	%rcx, %rax	# compiler_params.252, D.18734
	movq	(%rax), %rax	# _25->option, D.18732
	movq	%rax, %rdi	# D.18732,
	call	strlen	#
	movl	$21, %edx	#, tmp105
	subl	%eax, %edx	# D.18735, D.18735
	movl	%edx, %eax	# D.18735, D.18735
	movl	%eax, -60(%rbp)	# D.18735, length
	.loc 1 3635 0
	cmpq	$0, -32(%rbp)	#, description
	je	.L255	#,
	.loc 1 3635 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# description, tmp106
	movzbl	(%rax), %eax	# *description_22, D.18731
	testb	%al, %al	# D.18731
	je	.L255	#,
	.loc 1 3638 0 is_stmt 1
	movl	$1, %eax	#, tmp107
	cmpl	$0, -60(%rbp)	#, length
	cmovg	-60(%rbp), %eax	# length,, D.18736
	movl	%eax, %esi	# D.18736, D.18736
	.loc 1 3637 0
	movq	compiler_params(%rip), %rcx	# compiler_params, compiler_params.253
	movq	-56(%rbp), %rdx	# i, tmp108
	movq	%rdx, %rax	# tmp108, tmp109
	addq	%rax, %rax	# tmp109
	addq	%rdx, %rax	# tmp108, tmp109
	salq	$3, %rax	#, tmp110
	addq	%rcx, %rax	# compiler_params.253, D.18734
	.loc 1 3636 0
	movq	(%rax), %rax	# _35->option, D.18732
	movq	-32(%rbp), %rdx	# description, tmp111
	movq	%rdx, %r8	# tmp111,
	movl	$.LC578, %ecx	#,
	movl	%esi, %edx	# D.18736,
	movq	%rax, %rsi	# D.18732,
	movl	$.LC579, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L255:
.LBE15:
	.loc 1 3630 0 discriminator 1
	movq	-56(%rbp), %rax	# i, i.254
	leaq	-1(%rax), %rdx	#, tmp112
	movq	%rdx, -56(%rbp)	# tmp112, i
	testq	%rax, %rax	# i.254
	jne	.L256	#,
	.loc 1 3641 0
	movl	$.LC580, %edi	#,
	call	puts	#
	.loc 1 3642 0
	movl	$.LC581, %edi	#,
	call	puts	#
	.loc 1 3643 0
	movl	$.LC582, %edi	#,
	call	puts	#
	.loc 1 3644 0
	movl	$.LC583, %edi	#,
	call	puts	#
	.loc 1 3646 0
	movq	$19, -56(%rbp)	#, i
	jmp	.L257	#
.L258:
.LBB16:
	.loc 1 3648 0
	movq	-56(%rbp), %rax	# i, tmp113
	salq	$5, %rax	#, tmp114
	addq	$W_options+16, %rax	#, tmp115
	movq	8(%rax), %rax	# W_options[i_39].description, tmp116
	movq	%rax, -24(%rbp)	# tmp116, description
	.loc 1 3650 0
	cmpq	$0, -24(%rbp)	#, description
	je	.L257	#,
	.loc 1 3650 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# description, tmp117
	movzbl	(%rax), %eax	# *description_40, D.18731
	testb	%al, %al	# D.18731
	je	.L257	#,
	.loc 1 3651 0 is_stmt 1
	movq	-56(%rbp), %rax	# i, tmp118
	salq	$5, %rax	#, tmp119
	addq	$W_options, %rax	#, tmp120
	movq	(%rax), %rax	# W_options[i_39].string, D.18732
	movq	-24(%rbp), %rdx	# description, tmp121
	movq	%rax, %rsi	# D.18732,
	movl	$.LC584, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L257:
.LBE16:
	.loc 1 3646 0 discriminator 1
	movq	-56(%rbp), %rax	# i, i.255
	leaq	-1(%rax), %rdx	#, tmp122
	movq	%rdx, -56(%rbp)	# tmp122, i
	testq	%rax, %rax	# i.255
	jne	.L258	#,
	.loc 1 3655 0
	movl	$.LC585, %edi	#,
	call	puts	#
	.loc 1 3656 0
	movl	$.LC586, %edi	#,
	call	puts	#
	.loc 1 3657 0
	movl	$.LC587, %edi	#,
	call	puts	#
	.loc 1 3658 0
	movl	$.LC588, %edi	#,
	call	puts	#
	.loc 1 3659 0
	movl	$.LC589, %edi	#,
	call	puts	#
	.loc 1 3663 0
	movq	$6, -56(%rbp)	#, i
	jmp	.L259	#
.L260:
	.loc 1 3665 0
	movq	-56(%rbp), %rdx	# i, tmp123
	movq	%rdx, %rax	# tmp123, tmp124
	addq	%rax, %rax	# tmp124
	addq	%rdx, %rax	# tmp123, tmp124
	salq	$3, %rax	#, tmp125
	addq	$debug_args+16, %rax	#, tmp126
	movq	(%rax), %rax	# debug_args[i_45].description, D.18732
	testq	%rax, %rax	# D.18732
	je	.L259	#,
	.loc 1 3666 0
	movq	-56(%rbp), %rdx	# i, tmp127
	movq	%rdx, %rax	# tmp127, tmp128
	addq	%rax, %rax	# tmp128
	addq	%rdx, %rax	# tmp127, tmp128
	salq	$3, %rax	#, tmp129
	addq	$debug_args+16, %rax	#, tmp130
	movq	(%rax), %rcx	# debug_args[i_45].description, D.18732
	movq	-56(%rbp), %rdx	# i, tmp131
	movq	%rdx, %rax	# tmp131, tmp132
	addq	%rax, %rax	# tmp132
	addq	%rdx, %rax	# tmp131, tmp132
	salq	$3, %rax	#, tmp133
	addq	$debug_args, %rax	#, tmp134
	movq	(%rax), %rax	# debug_args[i_45].arg, D.18732
	movq	%rcx, %rdx	# D.18732,
	movq	%rax, %rsi	# D.18732,
	movl	$.LC590, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L259:
	.loc 1 3663 0 discriminator 1
	movq	-56(%rbp), %rax	# i, i.256
	leaq	-1(%rax), %rdx	#, tmp135
	movq	%rdx, -56(%rbp)	# tmp135, i
	testq	%rax, %rax	# i.256
	jne	.L260	#,
	.loc 1 3670 0
	movl	$.LC591, %edi	#,
	call	puts	#
	.loc 1 3671 0
	movl	$.LC592, %edi	#,
	call	puts	#
	.loc 1 3672 0
	movl	$.LC593, %edi	#,
	call	puts	#
	.loc 1 3673 0
	movl	$.LC594, %edi	#,
	call	puts	#
	.loc 1 3674 0
	movl	$.LC595, %edi	#,
	call	puts	#
	.loc 1 3676 0
	movl	$.LC596, %edi	#,
	call	puts	#
	.loc 1 3678 0
	movl	$.LC597, %edi	#,
	call	puts	#
	.loc 1 3680 0
	movl	$0, -64(%rbp)	#, undoc
	.loc 1 3681 0
	movq	$.LC598, -48(%rbp)	#, lang
	.loc 1 3693 0
	movl	$.LC599, %edi	#,
	call	puts	#
	.loc 1 3695 0
	movq	$0, -56(%rbp)	#, i
	jmp	.L261	#
.L268:
.LBB17:
	.loc 1 3697 0
	movq	-56(%rbp), %rax	# i, tmp136
	salq	$4, %rax	#, tmp137
	addq	$documented_lang_options, %rax	#, tmp138
	movq	8(%rax), %rax	# documented_lang_options[i_7].description, tmp139
	movq	%rax, -16(%rbp)	# tmp139, description
	.loc 1 3698 0
	movq	-56(%rbp), %rax	# i, tmp140
	salq	$4, %rax	#, tmp141
	addq	$documented_lang_options, %rax	#, tmp142
	movq	(%rax), %rax	# documented_lang_options[i_7].option, tmp143
	movq	%rax, -8(%rbp)	# tmp143, option
	.loc 1 3700 0
	cmpq	$0, -16(%rbp)	#, description
	jne	.L262	#,
	.loc 1 3702 0
	movl	$1, -64(%rbp)	#, undoc
	.loc 1 3704 0
	movl	extra_warnings(%rip), %eax	# extra_warnings, extra_warnings.257
	testl	%eax, %eax	# extra_warnings.257
	je	.L264	#,
	.loc 1 3705 0
	movq	-8(%rbp), %rax	# option, tmp144
	movq	%rax, %rsi	# tmp144,
	movl	$.LC600, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	jmp	.L264	#
.L262:
	.loc 1 3707 0
	movq	-16(%rbp), %rax	# description, tmp145
	movzbl	(%rax), %eax	# *description_52, D.18731
	testb	%al, %al	# D.18731
	jne	.L265	#,
	.loc 1 3708 0
	jmp	.L264	#
.L265:
	.loc 1 3709 0
	cmpq	$0, -8(%rbp)	#, option
	jne	.L266	#,
	.loc 1 3711 0
	cmpl	$0, -64(%rbp)	#, undoc
	je	.L267	#,
	.loc 1 3713 0
	movq	-48(%rbp), %rax	# lang, tmp146
	movq	%rax, %rsi	# tmp146,
	movl	$.LC601, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L267:
	.loc 1 3715 0
	movl	$0, -64(%rbp)	#, undoc
	.loc 1 3717 0
	movq	-16(%rbp), %rax	# description, tmp147
	movq	%rax, %rsi	# tmp147,
	movl	$.LC602, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 3719 0
	movq	-16(%rbp), %rax	# description, tmp148
	movq	%rax, -48(%rbp)	# tmp148, lang
	jmp	.L264	#
.L266:
	.loc 1 3722 0
	movq	-16(%rbp), %rdx	# description, tmp149
	movq	-8(%rbp), %rax	# option, tmp150
	movq	%rax, %rsi	# tmp150,
	movl	$.LC603, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L264:
.LBE17:
	.loc 1 3695 0
	addq	$1, -56(%rbp)	#, i
.L261:
	.loc 1 3695 0 is_stmt 0 discriminator 1
	cmpq	$107, -56(%rbp)	#, i
	jbe	.L268	#,
	.loc 1 3726 0 is_stmt 1
	cmpl	$0, -64(%rbp)	#, undoc
	je	.L269	#,
	.loc 1 3727 0
	movq	-48(%rbp), %rax	# lang, tmp151
	movq	%rax, %rsi	# tmp151,
	movl	$.LC601, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L269:
	.loc 1 3730 0
	call	display_target_options	#
	.loc 1 3731 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	display_help, .-display_help
	.section	.rodata
.LC604:
	.string	"\nTarget specific options:"
.LC605:
	.string	"  -m%-23.23s [undocumented]\n"
.LC606:
	.string	"  -m%-23.23s %s\n"
	.align 8
.LC607:
	.string	"\nThere are undocumented target specific options as well."
	.align 8
.LC608:
	.string	"  They exist, but they are not documented."
	.text
	.type	display_target_options, @function
display_target_options:
.LFB29:
	.loc 1 3735 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	.loc 1 3740 0
	movzbl	displayed.15644(%rip), %eax	# displayed, displayed.258
	testb	%al, %al	# displayed.258
	je	.L271	#,
	.loc 1 3741 0
	jmp	.L270	#
.L271:
	.loc 1 3742 0
	movb	$1, displayed.15644(%rip)	#, displayed
.LBB18:
	.loc 1 3750 0
	movl	$0, -36(%rbp)	#, doc
	.loc 1 3752 0
	movl	$0, -44(%rbp)	#, undoc
	.loc 1 3754 0
	movl	$.LC604, %edi	#,
	call	puts	#
	.loc 1 3756 0
	movl	$56, -40(%rbp)	#, i
	jmp	.L273	#
.L278:
.LBB19:
	.loc 1 3758 0
	movl	-40(%rbp), %eax	# i, tmp71
	movslq	%eax, %rdx	# tmp71, tmp70
	movq	%rdx, %rax	# tmp70, tmp72
	addq	%rax, %rax	# tmp72
	addq	%rdx, %rax	# tmp70, tmp72
	salq	$3, %rax	#, tmp73
	addq	$target_switches, %rax	#, tmp74
	movq	(%rax), %rax	# target_switches[i_12].name, tmp75
	movq	%rax, -32(%rbp)	# tmp75, option
	.loc 1 3759 0
	movl	-40(%rbp), %eax	# i, tmp77
	movslq	%eax, %rdx	# tmp77, tmp76
	movq	%rdx, %rax	# tmp76, tmp78
	addq	%rax, %rax	# tmp78
	addq	%rdx, %rax	# tmp76, tmp78
	salq	$3, %rax	#, tmp79
	addq	$target_switches+16, %rax	#, tmp80
	movq	(%rax), %rax	# target_switches[i_12].description, tmp81
	movq	%rax, -24(%rbp)	# tmp81, description
	.loc 1 3761 0
	cmpq	$0, -32(%rbp)	#, option
	je	.L274	#,
	.loc 1 3761 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# option, tmp82
	movzbl	(%rax), %eax	# *option_13, D.18772
	testb	%al, %al	# D.18772
	jne	.L275	#,
.L274:
	.loc 1 3762 0 is_stmt 1
	jmp	.L273	#
.L275:
	.loc 1 3763 0
	cmpq	$0, -24(%rbp)	#, description
	jne	.L276	#,
	.loc 1 3765 0
	movl	$1, -44(%rbp)	#, undoc
	.loc 1 3767 0
	movl	extra_warnings(%rip), %eax	# extra_warnings, extra_warnings.259
	testl	%eax, %eax	# extra_warnings.259
	je	.L273	#,
	.loc 1 3768 0
	movq	-32(%rbp), %rax	# option, tmp83
	movq	%rax, %rsi	# tmp83,
	movl	$.LC605, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	jmp	.L273	#
.L276:
	.loc 1 3770 0
	movq	-24(%rbp), %rax	# description, tmp84
	movzbl	(%rax), %eax	# *description_14, D.18772
	testb	%al, %al	# D.18772
	je	.L273	#,
	.loc 1 3771 0
	movq	-24(%rbp), %rdx	# description, tmp85
	movq	-32(%rbp), %rax	# option, tmp86
	movq	%rax, %rsi	# tmp86,
	movl	$.LC606, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	addl	%eax, -36(%rbp)	# D.18773, doc
.L273:
.LBE19:
	.loc 1 3756 0 discriminator 1
	movl	-40(%rbp), %eax	# i, i.260
	leal	-1(%rax), %edx	#, tmp87
	movl	%edx, -40(%rbp)	# tmp87, i
	testl	%eax, %eax	# i.260
	jne	.L278	#,
	.loc 1 3775 0
	movl	$13, -40(%rbp)	#, i
	jmp	.L279	#
.L284:
.LBB20:
	.loc 1 3777 0
	movl	-40(%rbp), %eax	# i, tmp89
	movslq	%eax, %rdx	# tmp89, tmp88
	movq	%rdx, %rax	# tmp88, tmp90
	addq	%rax, %rax	# tmp90
	addq	%rdx, %rax	# tmp88, tmp90
	salq	$3, %rax	#, tmp91
	addq	$target_options, %rax	#, tmp92
	movq	(%rax), %rax	# target_options[i_23].prefix, tmp93
	movq	%rax, -16(%rbp)	# tmp93, option
	.loc 1 3778 0
	movl	-40(%rbp), %eax	# i, tmp95
	movslq	%eax, %rdx	# tmp95, tmp94
	movq	%rdx, %rax	# tmp94, tmp96
	addq	%rax, %rax	# tmp96
	addq	%rdx, %rax	# tmp94, tmp96
	salq	$3, %rax	#, tmp97
	addq	$target_options+16, %rax	#, tmp98
	movq	(%rax), %rax	# target_options[i_23].description, tmp99
	movq	%rax, -8(%rbp)	# tmp99, description
	.loc 1 3780 0
	cmpq	$0, -16(%rbp)	#, option
	je	.L280	#,
	.loc 1 3780 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# option, tmp100
	movzbl	(%rax), %eax	# *option_24, D.18772
	testb	%al, %al	# D.18772
	jne	.L281	#,
.L280:
	.loc 1 3781 0 is_stmt 1
	jmp	.L279	#
.L281:
	.loc 1 3782 0
	cmpq	$0, -8(%rbp)	#, description
	jne	.L282	#,
	.loc 1 3784 0
	movl	$1, -44(%rbp)	#, undoc
	.loc 1 3786 0
	movl	extra_warnings(%rip), %eax	# extra_warnings, extra_warnings.261
	testl	%eax, %eax	# extra_warnings.261
	je	.L279	#,
	.loc 1 3787 0
	movq	-16(%rbp), %rax	# option, tmp101
	movq	%rax, %rsi	# tmp101,
	movl	$.LC605, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	jmp	.L279	#
.L282:
	.loc 1 3789 0
	movq	-8(%rbp), %rax	# description, tmp102
	movzbl	(%rax), %eax	# *description_25, D.18772
	testb	%al, %al	# D.18772
	je	.L279	#,
	.loc 1 3790 0
	movq	-8(%rbp), %rdx	# description, tmp103
	movq	-16(%rbp), %rax	# option, tmp104
	movq	%rax, %rsi	# tmp104,
	movl	$.LC606, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	addl	%eax, -36(%rbp)	# D.18773, doc
.L279:
.LBE20:
	.loc 1 3775 0 discriminator 1
	movl	-40(%rbp), %eax	# i, i.262
	leal	-1(%rax), %edx	#, tmp105
	movl	%edx, -40(%rbp)	# tmp105, i
	testl	%eax, %eax	# i.262
	jne	.L284	#,
	.loc 1 3793 0
	cmpl	$0, -44(%rbp)	#, undoc
	je	.L270	#,
	.loc 1 3795 0
	cmpl	$0, -36(%rbp)	#, doc
	je	.L285	#,
	.loc 1 3796 0
	movl	$.LC607, %edi	#,
	call	puts	#
	jmp	.L270	#
.L285:
	.loc 1 3798 0
	movl	$.LC608, %edi	#,
	call	puts	#
.L270:
.LBE18:
	.loc 1 3801 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	display_target_options, .-display_target_options
	.section	.rodata
	.align 8
.LC609:
	.string	"unrecognized gcc debugging option: %c"
	.text
	.type	decode_d_option, @function
decode_d_option:
.LFB30:
	.loc 1 3808 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# arg, arg
	.loc 1 3811 0
	jmp	.L287	#
.L304:
	.loc 1 3812 0
	movq	-24(%rbp), %rax	# arg, arg.263
	leaq	1(%rax), %rdx	#, tmp65
	movq	%rdx, -24(%rbp)	# tmp65, arg
	movzbl	(%rax), %eax	# *arg.263_8, D.18779
	movsbl	%al, %eax	# D.18779, tmp66
	movl	%eax, -4(%rbp)	# tmp66, c
	movl	-4(%rbp), %eax	# c, tmp68
	subl	$65, %eax	#, tmp67
	cmpl	$56, %eax	#, tmp67
	ja	.L288	#,
	movl	%eax, %eax	# tmp67, tmp69
	movq	.L290(,%rax,8), %rax	#, tmp70
	jmp	*%rax	# tmp70
	.section	.rodata
	.align 8
	.align 4
.L290:
	.quad	.L289
	.quad	.L288
	.quad	.L288
	.quad	.L305
	.quad	.L288
	.quad	.L288
	.quad	.L288
	.quad	.L288
	.quad	.L305
	.quad	.L288
	.quad	.L288
	.quad	.L288
	.quad	.L288
	.quad	.L288
	.quad	.L288
	.quad	.L292
	.quad	.L288
	.quad	.L288
	.quad	.L288
	.quad	.L288
	.quad	.L288
	.quad	.L288
	.quad	.L288
	.quad	.L288
	.quad	.L288
	.quad	.L288
	.quad	.L288
	.quad	.L288
	.quad	.L288
	.quad	.L288
	.quad	.L288
	.quad	.L288
	.quad	.L293
	.quad	.L288
	.quad	.L288
	.quad	.L288
	.quad	.L288
	.quad	.L288
	.quad	.L288
	.quad	.L288
	.quad	.L288
	.quad	.L288
	.quad	.L288
	.quad	.L288
	.quad	.L288
	.quad	.L288
	.quad	.L288
	.quad	.L294
	.quad	.L288
	.quad	.L288
	.quad	.L288
	.quad	.L288
	.quad	.L288
	.quad	.L295
	.quad	.L288
	.quad	.L296
	.quad	.L297
	.text
.L293:
	.loc 1 3815 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L298	#
.L299:
	.loc 1 3816 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp72
	cltq
	salq	$4, %rax	#, tmp73
	addq	$dump_file, %rax	#, tmp74
	movb	$1, 10(%rax)	#, dump_file[i_2].enabled
	.loc 1 3815 0 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L298:
	.loc 1 3815 0 is_stmt 0 discriminator 1
	cmpl	$31, -12(%rbp)	#, i
	jle	.L299	#,
	.loc 1 3817 0 is_stmt 1
	jmp	.L287	#
.L289:
	.loc 1 3819 0
	movl	$1, flag_debug_asm(%rip)	#, flag_debug_asm
	.loc 1 3820 0
	jmp	.L287	#
.L294:
	.loc 1 3822 0
	movl	$1, flag_print_asm_name(%rip)	#, flag_print_asm_name
	.loc 1 3823 0
	jmp	.L287	#
.L292:
	.loc 1 3825 0
	movl	$1, flag_dump_rtl_in_asm(%rip)	#, flag_dump_rtl_in_asm
	.loc 1 3826 0
	movl	$1, flag_print_asm_name(%rip)	#, flag_print_asm_name
	.loc 1 3827 0
	jmp	.L287	#
.L295:
	.loc 1 3829 0
	movl	$1, graph_dump_format(%rip)	#, graph_dump_format
	.loc 1 3830 0
	jmp	.L287	#
.L296:
	.loc 1 3832 0
	movl	$1, rtl_dump_and_exit(%rip)	#, rtl_dump_and_exit
	.loc 1 3833 0
	jmp	.L287	#
.L297:
	.loc 1 3835 0
	movq	lang_hooks+144(%rip), %rax	# lang_hooks.set_yydebug, D.18780
	movl	$1, %edi	#,
	call	*%rax	# D.18780
	.loc 1 3836 0
	jmp	.L287	#
.L288:
	.loc 1 3842 0
	movl	$0, -8(%rbp)	#, matched
	.loc 1 3843 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L300	#
.L302:
	.loc 1 3844 0
	movl	-12(%rbp), %eax	# i, tmp76
	cltq
	salq	$4, %rax	#, tmp77
	addq	$dump_file, %rax	#, tmp78
	movzbl	8(%rax), %eax	# dump_file[i_3].debug_switch, D.18779
	movsbl	%al, %eax	# D.18779, D.18781
	cmpl	-4(%rbp), %eax	# c, D.18781
	jne	.L301	#,
	.loc 1 3846 0
	movl	-12(%rbp), %eax	# i, tmp80
	cltq
	salq	$4, %rax	#, tmp81
	addq	$dump_file, %rax	#, tmp82
	movb	$1, 10(%rax)	#, dump_file[i_3].enabled
	.loc 1 3847 0
	movl	$1, -8(%rbp)	#, matched
.L301:
	.loc 1 3843 0
	addl	$1, -12(%rbp)	#, i
.L300:
	.loc 1 3843 0 is_stmt 0 discriminator 1
	cmpl	$31, -12(%rbp)	#, i
	jle	.L302	#,
	.loc 1 3850 0 is_stmt 1
	cmpl	$0, -8(%rbp)	#, matched
	jne	.L303	#,
	.loc 1 3851 0
	movl	-4(%rbp), %eax	# c, tmp83
	movl	%eax, %esi	# tmp83,
	movl	$.LC609, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	.loc 1 3852 0
	jmp	.L287	#
.L303:
	jmp	.L287	#
.L305:
	.loc 1 3839 0
	nop
.L287:
	.loc 1 3811 0 discriminator 1
	movq	-24(%rbp), %rax	# arg, tmp84
	movzbl	(%rax), %eax	# *arg_1, D.18779
	testb	%al, %al	# D.18779
	jne	.L304	#,
	.loc 1 3854 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	decode_d_option, .-decode_d_option
	.section	.rodata
.LC610:
	.string	"fast-math"
.LC611:
	.string	"no-fast-math"
.LC612:
	.string	"inline-limit-"
.LC613:
	.string	"inline-limit="
.LC614:
	.string	"sched-verbose="
.LC615:
	.string	"verbose"
.LC616:
	.string	"fixed-"
.LC617:
	.string	"call-used-"
.LC618:
	.string	"call-saved-"
.LC619:
	.string	"align-labels="
.LC620:
	.string	"stack-limit-register="
	.align 8
.LC621:
	.string	"unrecognized register name `%s'"
.LC622:
	.string	"stack-limit-symbol="
.LC623:
	.string	"message-length="
.LC624:
	.string	"diagnostics-show-location="
.LC625:
	.string	"once"
.LC626:
	.string	"every-line"
.LC627:
	.string	"unrecognized option `%s'"
.LC628:
	.string	"no-stack-limit"
.LC629:
	.string	"preprocessed"
	.text
	.type	decode_f_option, @function
decode_f_option:
.LFB31:
	.loc 1 3863 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# arg, arg
	.loc 1 3865 0
	movq	$0, -16(%rbp)	#, option_value
	.loc 1 3868 0
	movl	$97, -28(%rbp)	#, j
	jmp	.L307	#
.L310:
	.loc 1 3870 0
	movl	-28(%rbp), %eax	# j, tmp145
	cltq
	salq	$5, %rax	#, tmp146
	addq	$f_options, %rax	#, tmp147
	movq	(%rax), %rdx	# f_options[j_23].string, D.18784
	movq	-40(%rbp), %rax	# arg, tmp148
	movq	%rdx, %rsi	# D.18784,
	movq	%rax, %rdi	# tmp148,
	call	strcmp	#
	testl	%eax, %eax	# D.18783
	jne	.L308	#,
	.loc 1 3872 0
	movl	-28(%rbp), %eax	# j, tmp150
	cltq
	salq	$5, %rax	#, tmp151
	addq	$f_options, %rax	#, tmp152
	movq	8(%rax), %rax	# f_options[j_23].variable, D.18785
	movl	-28(%rbp), %edx	# j, tmp154
	movslq	%edx, %rdx	# tmp154, tmp153
	salq	$5, %rdx	#, tmp155
	addq	$f_options+16, %rdx	#, tmp156
	movl	(%rdx), %edx	# f_options[j_23].on_value, D.18783
	movl	%edx, (%rax)	# D.18783, *_27
	.loc 1 3873 0
	movl	$1, %eax	#, D.18783
	jmp	.L309	#
.L308:
	.loc 1 3876 0
	movq	-40(%rbp), %rax	# arg, tmp157
	movzbl	(%rax), %eax	# *arg_25(D), D.18786
	cmpb	$110, %al	#, D.18786
	jne	.L307	#,
	.loc 1 3876 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# arg, tmp158
	addq	$1, %rax	#, D.18784
	movzbl	(%rax), %eax	# *_31, D.18786
	cmpb	$111, %al	#, D.18786
	jne	.L307	#,
	movq	-40(%rbp), %rax	# arg, tmp159
	addq	$2, %rax	#, D.18784
	movzbl	(%rax), %eax	# *_33, D.18786
	cmpb	$45, %al	#, D.18786
	jne	.L307	#,
	.loc 1 3877 0 is_stmt 1
	movl	-28(%rbp), %eax	# j, tmp161
	cltq
	salq	$5, %rax	#, tmp162
	addq	$f_options, %rax	#, tmp163
	movq	(%rax), %rax	# f_options[j_23].string, D.18784
	movq	-40(%rbp), %rdx	# arg, tmp164
	addq	$3, %rdx	#, D.18784
	movq	%rax, %rsi	# D.18784,
	movq	%rdx, %rdi	# D.18784,
	call	strcmp	#
	testl	%eax, %eax	# D.18783
	jne	.L307	#,
	.loc 1 3879 0
	movl	-28(%rbp), %eax	# j, tmp166
	cltq
	salq	$5, %rax	#, tmp167
	addq	$f_options, %rax	#, tmp168
	movq	8(%rax), %rax	# f_options[j_23].variable, D.18785
	movl	-28(%rbp), %edx	# j, tmp170
	movslq	%edx, %rdx	# tmp170, tmp169
	salq	$5, %rdx	#, tmp171
	addq	$f_options+16, %rdx	#, tmp172
	movl	(%rdx), %edx	# f_options[j_23].on_value, D.18783
	testl	%edx, %edx	# D.18783
	sete	%dl	#, D.18787
	movzbl	%dl, %edx	# D.18787, D.18783
	movl	%edx, (%rax)	# D.18783, *_38
	.loc 1 3880 0
	movl	$1, %eax	#, D.18783
	jmp	.L309	#
.L307:
	.loc 1 3868 0 discriminator 1
	movl	-28(%rbp), %eax	# j, j.264
	leal	-1(%rax), %edx	#, tmp173
	movl	%edx, -28(%rbp)	# tmp173, j
	testl	%eax, %eax	# j.264
	jne	.L310	#,
	.loc 1 3884 0
	movq	-40(%rbp), %rax	# arg, tmp174
	movl	$.LC610, %esi	#,
	movq	%rax, %rdi	# tmp174,
	call	strcmp	#
	testl	%eax, %eax	# D.18783
	jne	.L311	#,
	.loc 1 3885 0
	call	set_fast_math_flags	#
	jmp	.L312	#
.L311:
	.loc 1 3886 0
	movq	-40(%rbp), %rax	# arg, tmp175
	movl	$.LC611, %esi	#,
	movq	%rax, %rdi	# tmp175,
	call	strcmp	#
	testl	%eax, %eax	# D.18783
	jne	.L313	#,
	.loc 1 3887 0
	call	set_no_fast_math_flags	#
	jmp	.L312	#
.L313:
	.loc 1 3888 0
	movq	-40(%rbp), %rax	# arg, tmp176
	movl	$13, %edx	#,
	movl	$.LC612, %esi	#,
	movq	%rax, %rdi	# tmp176,
	call	strncmp	#
	testl	%eax, %eax	# D.18783
	jne	.L314	#,
	.loc 1 3888 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# arg, tmp177
	addq	$13, %rax	#, iftmp.265
	jmp	.L315	#
.L314:
	.loc 1 3888 0 discriminator 2
	movl	$0, %eax	#, iftmp.265
.L315:
	.loc 1 3888 0 discriminator 3
	movq	%rax, -16(%rbp)	# iftmp.265, option_value
	cmpq	$0, -16(%rbp)	#, option_value
	jne	.L316	#,
	.loc 1 3889 0 is_stmt 1
	movq	-40(%rbp), %rax	# arg, tmp178
	movl	$13, %edx	#,
	movl	$.LC613, %esi	#,
	movq	%rax, %rdi	# tmp178,
	call	strncmp	#
	testl	%eax, %eax	# D.18783
	jne	.L317	#,
	.loc 1 3889 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# arg, tmp179
	addq	$13, %rax	#, iftmp.266
	jmp	.L318	#
.L317:
	.loc 1 3889 0 discriminator 2
	movl	$0, %eax	#, iftmp.266
.L318:
	.loc 1 3889 0 discriminator 3
	movq	%rax, -16(%rbp)	# iftmp.266, option_value
	cmpq	$0, -16(%rbp)	#, option_value
	je	.L319	#,
.L316:
.LBB21:
	.loc 1 3893 0 is_stmt 1
	movq	compiler_params(%rip), %rax	# compiler_params, compiler_params.267
	.loc 1 3892 0
	movl	8(%rax), %edx	# compiler_params.267_139->value, D.18783
	movq	-40(%rbp), %rax	# arg, tmp180
	leaq	-2(%rax), %rcx	#, D.18784
	.loc 1 3891 0
	movq	-16(%rbp), %rax	# option_value, tmp181
	movq	%rcx, %rsi	# D.18784,
	movq	%rax, %rdi	# tmp181,
	call	read_integral_parameter	#
	movl	%eax, -20(%rbp)	# tmp182, val
	.loc 1 3894 0
	movl	-20(%rbp), %eax	# val, tmp183
	movl	%eax, %esi	# tmp183,
	movl	$.LC42, %edi	#,
	call	set_param_value	#
.LBE21:
	.loc 1 3890 0
	jmp	.L312	#
.L319:
	.loc 1 3897 0
	movq	-40(%rbp), %rax	# arg, tmp184
	movl	$14, %edx	#,
	movl	$.LC614, %esi	#,
	movq	%rax, %rdi	# tmp184,
	call	strncmp	#
	testl	%eax, %eax	# D.18783
	jne	.L320	#,
	.loc 1 3897 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# arg, tmp185
	addq	$14, %rax	#, iftmp.268
	jmp	.L321	#
.L320:
	.loc 1 3897 0 discriminator 2
	movl	$0, %eax	#, iftmp.268
.L321:
	.loc 1 3897 0 discriminator 3
	movq	%rax, -16(%rbp)	# iftmp.268, option_value
	cmpq	$0, -16(%rbp)	#, option_value
	je	.L322	#,
	.loc 1 3898 0 is_stmt 1
	movq	-16(%rbp), %rax	# option_value, tmp186
	movq	%rax, %rsi	# tmp186,
	movl	$.LC615, %edi	#,
	call	fix_sched_param	#
	jmp	.L312	#
.L322:
	.loc 1 3900 0
	movq	-40(%rbp), %rax	# arg, tmp187
	movl	$6, %edx	#,
	movl	$.LC616, %esi	#,
	movq	%rax, %rdi	# tmp187,
	call	strncmp	#
	testl	%eax, %eax	# D.18783
	jne	.L323	#,
	.loc 1 3900 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# arg, tmp188
	addq	$6, %rax	#, iftmp.269
	jmp	.L324	#
.L323:
	.loc 1 3900 0 discriminator 2
	movl	$0, %eax	#, iftmp.269
.L324:
	.loc 1 3900 0 discriminator 3
	movq	%rax, -16(%rbp)	# iftmp.269, option_value
	cmpq	$0, -16(%rbp)	#, option_value
	je	.L325	#,
	.loc 1 3901 0 is_stmt 1
	movq	-16(%rbp), %rax	# option_value, tmp189
	movl	$1, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp189,
	call	fix_register	#
	jmp	.L312	#
.L325:
	.loc 1 3902 0
	movq	-40(%rbp), %rax	# arg, tmp190
	movl	$10, %edx	#,
	movl	$.LC617, %esi	#,
	movq	%rax, %rdi	# tmp190,
	call	strncmp	#
	testl	%eax, %eax	# D.18783
	jne	.L326	#,
	.loc 1 3902 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# arg, tmp191
	addq	$10, %rax	#, iftmp.270
	jmp	.L327	#
.L326:
	.loc 1 3902 0 discriminator 2
	movl	$0, %eax	#, iftmp.270
.L327:
	.loc 1 3902 0 discriminator 3
	movq	%rax, -16(%rbp)	# iftmp.270, option_value
	cmpq	$0, -16(%rbp)	#, option_value
	je	.L328	#,
	.loc 1 3903 0 is_stmt 1
	movq	-16(%rbp), %rax	# option_value, tmp192
	movl	$1, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp192,
	call	fix_register	#
	jmp	.L312	#
.L328:
	.loc 1 3904 0
	movq	-40(%rbp), %rax	# arg, tmp193
	movl	$11, %edx	#,
	movl	$.LC618, %esi	#,
	movq	%rax, %rdi	# tmp193,
	call	strncmp	#
	testl	%eax, %eax	# D.18783
	jne	.L329	#,
	.loc 1 3904 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# arg, tmp194
	addq	$11, %rax	#, iftmp.271
	jmp	.L330	#
.L329:
	.loc 1 3904 0 discriminator 2
	movl	$0, %eax	#, iftmp.271
.L330:
	.loc 1 3904 0 discriminator 3
	movq	%rax, -16(%rbp)	# iftmp.271, option_value
	cmpq	$0, -16(%rbp)	#, option_value
	je	.L331	#,
	.loc 1 3905 0 is_stmt 1
	movq	-16(%rbp), %rax	# option_value, tmp195
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp195,
	call	fix_register	#
	jmp	.L312	#
.L331:
	.loc 1 3906 0
	movq	-40(%rbp), %rax	# arg, tmp196
	movl	$12, %edx	#,
	movl	$.LC495, %esi	#,
	movq	%rax, %rdi	# tmp196,
	call	strncmp	#
	testl	%eax, %eax	# D.18783
	jne	.L332	#,
	.loc 1 3906 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# arg, tmp197
	addq	$12, %rax	#, iftmp.272
	jmp	.L333	#
.L332:
	.loc 1 3906 0 discriminator 2
	movl	$0, %eax	#, iftmp.272
.L333:
	.loc 1 3906 0 discriminator 3
	movq	%rax, -16(%rbp)	# iftmp.272, option_value
	cmpq	$0, -16(%rbp)	#, option_value
	je	.L334	#,
	.loc 1 3907 0 is_stmt 1
	movl	align_loops(%rip), %edx	# align_loops, align_loops.273
	movq	-40(%rbp), %rax	# arg, tmp198
	leaq	-2(%rax), %rcx	#, D.18784
	movq	-16(%rbp), %rax	# option_value, tmp199
	movq	%rcx, %rsi	# D.18784,
	movq	%rax, %rdi	# tmp199,
	call	read_integral_parameter	#
	movl	%eax, align_loops(%rip)	# align_loops.274, align_loops
	jmp	.L312	#
.L334:
	.loc 1 3908 0
	movq	-40(%rbp), %rax	# arg, tmp200
	movl	$16, %edx	#,
	movl	$.LC499, %esi	#,
	movq	%rax, %rdi	# tmp200,
	call	strncmp	#
	testl	%eax, %eax	# D.18783
	jne	.L335	#,
	.loc 1 3908 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# arg, tmp201
	addq	$16, %rax	#, iftmp.275
	jmp	.L336	#
.L335:
	.loc 1 3908 0 discriminator 2
	movl	$0, %eax	#, iftmp.275
.L336:
	.loc 1 3908 0 discriminator 3
	movq	%rax, -16(%rbp)	# iftmp.275, option_value
	cmpq	$0, -16(%rbp)	#, option_value
	je	.L337	#,
	.loc 1 3910 0 is_stmt 1
	movl	align_functions(%rip), %edx	# align_functions, align_functions.276
	movq	-40(%rbp), %rax	# arg, tmp202
	leaq	-2(%rax), %rcx	#, D.18784
	movq	-16(%rbp), %rax	# option_value, tmp203
	movq	%rcx, %rsi	# D.18784,
	movq	%rax, %rdi	# tmp203,
	call	read_integral_parameter	#
	movl	%eax, align_functions(%rip)	# align_functions.277, align_functions
	jmp	.L312	#
.L337:
	.loc 1 3911 0
	movq	-40(%rbp), %rax	# arg, tmp204
	movl	$12, %edx	#,
	movl	$.LC497, %esi	#,
	movq	%rax, %rdi	# tmp204,
	call	strncmp	#
	testl	%eax, %eax	# D.18783
	jne	.L338	#,
	.loc 1 3911 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# arg, tmp205
	addq	$12, %rax	#, iftmp.278
	jmp	.L339	#
.L338:
	.loc 1 3911 0 discriminator 2
	movl	$0, %eax	#, iftmp.278
.L339:
	.loc 1 3911 0 discriminator 3
	movq	%rax, -16(%rbp)	# iftmp.278, option_value
	cmpq	$0, -16(%rbp)	#, option_value
	je	.L340	#,
	.loc 1 3912 0 is_stmt 1
	movl	align_jumps(%rip), %edx	# align_jumps, align_jumps.279
	movq	-40(%rbp), %rax	# arg, tmp206
	leaq	-2(%rax), %rcx	#, D.18784
	movq	-16(%rbp), %rax	# option_value, tmp207
	movq	%rcx, %rsi	# D.18784,
	movq	%rax, %rdi	# tmp207,
	call	read_integral_parameter	#
	movl	%eax, align_jumps(%rip)	# align_jumps.280, align_jumps
	jmp	.L312	#
.L340:
	.loc 1 3913 0
	movq	-40(%rbp), %rax	# arg, tmp208
	movl	$13, %edx	#,
	movl	$.LC619, %esi	#,
	movq	%rax, %rdi	# tmp208,
	call	strncmp	#
	testl	%eax, %eax	# D.18783
	jne	.L341	#,
	.loc 1 3913 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# arg, tmp209
	addq	$13, %rax	#, iftmp.281
	jmp	.L342	#
.L341:
	.loc 1 3913 0 discriminator 2
	movl	$0, %eax	#, iftmp.281
.L342:
	.loc 1 3913 0 discriminator 3
	movq	%rax, -16(%rbp)	# iftmp.281, option_value
	cmpq	$0, -16(%rbp)	#, option_value
	je	.L343	#,
	.loc 1 3915 0 is_stmt 1
	movl	align_labels(%rip), %edx	# align_labels, align_labels.282
	movq	-40(%rbp), %rax	# arg, tmp210
	leaq	-2(%rax), %rcx	#, D.18784
	movq	-16(%rbp), %rax	# option_value, tmp211
	movq	%rcx, %rsi	# D.18784,
	movq	%rax, %rdi	# tmp211,
	call	read_integral_parameter	#
	movl	%eax, align_labels(%rip)	# align_labels.283, align_labels
	jmp	.L312	#
.L343:
	.loc 1 3917 0
	movq	-40(%rbp), %rax	# arg, tmp212
	movl	$21, %edx	#,
	movl	$.LC620, %esi	#,
	movq	%rax, %rdi	# tmp212,
	call	strncmp	#
	testl	%eax, %eax	# D.18783
	jne	.L344	#,
	.loc 1 3917 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# arg, tmp213
	addq	$21, %rax	#, iftmp.284
	jmp	.L345	#
.L344:
	.loc 1 3917 0 discriminator 2
	movl	$0, %eax	#, iftmp.284
.L345:
	.loc 1 3917 0 discriminator 3
	movq	%rax, -16(%rbp)	# iftmp.284, option_value
	.loc 1 3916 0 is_stmt 1 discriminator 3
	cmpq	$0, -16(%rbp)	#, option_value
	je	.L346	#,
.LBB22:
	.loc 1 3919 0
	movq	-16(%rbp), %rax	# option_value, tmp214
	movq	%rax, %rdi	# tmp214,
	call	decode_reg_name	#
	movl	%eax, -24(%rbp)	# tmp215, reg
	.loc 1 3920 0
	cmpl	$0, -24(%rbp)	#, reg
	jns	.L347	#,
	.loc 1 3921 0
	movq	-16(%rbp), %rax	# option_value, tmp216
	movq	%rax, %rsi	# tmp216,
	movl	$.LC621, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	jmp	.L312	#
.L347:
	.loc 1 3923 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.286
	andl	$33554432, %eax	#, D.18783
	testl	%eax, %eax	# D.18783
	je	.L349	#,
	.loc 1 3923 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.285
	jmp	.L350	#
.L349:
	.loc 1 3923 0 discriminator 2
	movl	$4, %eax	#, iftmp.285
.L350:
	.loc 1 3923 0 discriminator 3
	movl	-24(%rbp), %edx	# reg, tmp217
	movl	%edx, %esi	# tmp217,
	movl	%eax, %edi	# iftmp.285,
	call	gen_rtx_REG	#
	movq	%rax, stack_limit_rtx(%rip)	# stack_limit_rtx.287, stack_limit_rtx
.LBE22:
	jmp	.L312	#
.L346:
	.loc 1 3926 0 is_stmt 1
	movq	-40(%rbp), %rax	# arg, tmp218
	movl	$19, %edx	#,
	movl	$.LC622, %esi	#,
	movq	%rax, %rdi	# tmp218,
	call	strncmp	#
	testl	%eax, %eax	# D.18783
	jne	.L351	#,
	.loc 1 3926 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# arg, tmp219
	addq	$19, %rax	#, iftmp.288
	jmp	.L352	#
.L351:
	.loc 1 3926 0 discriminator 2
	movl	$0, %eax	#, iftmp.288
.L352:
	.loc 1 3926 0 discriminator 3
	movq	%rax, -16(%rbp)	# iftmp.288, option_value
	.loc 1 3925 0 is_stmt 1 discriminator 3
	cmpq	$0, -16(%rbp)	#, option_value
	je	.L353	#,
.LBB23:
	.loc 1 3929 0
	movq	-16(%rbp), %rax	# option_value, tmp220
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# tmp220,
	call	ggc_alloc_string	#
	movq	%rax, -8(%rbp)	# tmp221, nm
	.loc 1 3930 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.290
	andl	$33554432, %eax	#, D.18783
	testl	%eax, %eax	# D.18783
	je	.L354	#,
	.loc 1 3930 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.289
	jmp	.L355	#
.L354:
	.loc 1 3930 0 discriminator 2
	movl	$4, %eax	#, iftmp.289
.L355:
	.loc 1 3930 0 discriminator 1
	movq	-8(%rbp), %rdx	# nm, tmp222
	movl	%eax, %esi	# iftmp.289,
	movl	$68, %edi	#,
	call	gen_rtx_fmt_s	#
	movq	%rax, stack_limit_rtx(%rip)	# stack_limit_rtx.291, stack_limit_rtx
.LBE23:
	jmp	.L312	#
.L353:
	.loc 1 3933 0 is_stmt 1
	movq	-40(%rbp), %rax	# arg, tmp223
	movl	$15, %edx	#,
	movl	$.LC623, %esi	#,
	movq	%rax, %rdi	# tmp223,
	call	strncmp	#
	testl	%eax, %eax	# D.18783
	jne	.L356	#,
	.loc 1 3933 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# arg, tmp224
	addq	$15, %rax	#, iftmp.292
	jmp	.L357	#
.L356:
	.loc 1 3933 0 discriminator 2
	movl	$0, %eax	#, iftmp.292
.L357:
	.loc 1 3933 0 discriminator 3
	movq	%rax, -16(%rbp)	# iftmp.292, option_value
	.loc 1 3932 0 is_stmt 1 discriminator 3
	cmpq	$0, -16(%rbp)	#, option_value
	je	.L358	#,
	.loc 1 3936 0
	movq	global_dc(%rip), %rax	# global_dc, global_dc.293
	.loc 1 3935 0
	movl	12(%rax), %edx	# MEM[(struct output_buffer *)global_dc.293_121].state.ideal_maximum_length, D.18783
	movq	-40(%rbp), %rax	# arg, tmp225
	leaq	-2(%rax), %rcx	#, D.18784
	movq	-16(%rbp), %rax	# option_value, tmp226
	movq	%rcx, %rsi	# D.18784,
	movq	%rax, %rdi	# tmp226,
	call	read_integral_parameter	#
	movl	%eax, %edx	#, D.18783
	movq	global_dc(%rip), %rax	# global_dc, global_dc.294
	movl	%edx, %esi	# D.18783,
	movq	%rax, %rdi	# D.18788,
	call	output_set_maximum_length	#
	jmp	.L312	#
.L358:
	.loc 1 3938 0
	movq	-40(%rbp), %rax	# arg, tmp227
	movl	$26, %edx	#,
	movl	$.LC624, %esi	#,
	movq	%rax, %rdi	# tmp227,
	call	strncmp	#
	testl	%eax, %eax	# D.18783
	jne	.L359	#,
	.loc 1 3938 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# arg, tmp228
	addq	$26, %rax	#, iftmp.295
	jmp	.L360	#
.L359:
	.loc 1 3938 0 discriminator 2
	movl	$0, %eax	#, iftmp.295
.L360:
	.loc 1 3938 0 discriminator 3
	movq	%rax, -16(%rbp)	# iftmp.295, option_value
	.loc 1 3937 0 is_stmt 1 discriminator 3
	cmpq	$0, -16(%rbp)	#, option_value
	je	.L361	#,
	.loc 1 3940 0
	movq	-16(%rbp), %rax	# option_value, tmp229
	movl	$.LC625, %esi	#,
	movq	%rax, %rdi	# tmp229,
	call	strcmp	#
	testl	%eax, %eax	# D.18783
	jne	.L362	#,
	.loc 1 3941 0
	movq	global_dc(%rip), %rax	# global_dc, global_dc.296
	movl	$0, 24(%rax)	#, MEM[(struct output_buffer *)global_dc.296_132].state.prefixing_rule
	jmp	.L312	#
.L362:
	.loc 1 3942 0
	movq	-16(%rbp), %rax	# option_value, tmp230
	movl	$.LC626, %esi	#,
	movq	%rax, %rdi	# tmp230,
	call	strcmp	#
	testl	%eax, %eax	# D.18783
	jne	.L364	#,
	.loc 1 3943 0
	movq	global_dc(%rip), %rax	# global_dc, global_dc.297
	.loc 1 3944 0
	movl	$2, 24(%rax)	#, MEM[(struct output_buffer *)global_dc.297_134].state.prefixing_rule
	jmp	.L312	#
.L364:
	.loc 1 3946 0
	movq	-40(%rbp), %rax	# arg, tmp231
	subq	$2, %rax	#, D.18784
	movq	%rax, %rsi	# D.18784,
	movl	$.LC627, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	jmp	.L312	#
.L361:
	.loc 1 3948 0
	movq	-40(%rbp), %rax	# arg, tmp232
	movl	$.LC628, %esi	#,
	movq	%rax, %rdi	# tmp232,
	call	strcmp	#
	testl	%eax, %eax	# D.18783
	jne	.L365	#,
	.loc 1 3949 0
	movq	$0, stack_limit_rtx(%rip)	#, stack_limit_rtx
	jmp	.L312	#
.L365:
	.loc 1 3950 0
	movq	-40(%rbp), %rax	# arg, tmp233
	movl	$.LC629, %esi	#,
	movq	%rax, %rdi	# tmp233,
	call	strcmp	#
	testl	%eax, %eax	# D.18783
	je	.L312	#,
	.loc 1 3955 0
	movl	$0, %eax	#, D.18783
	jmp	.L309	#
.L312:
	.loc 1 3957 0
	movl	$1, %eax	#, D.18783
.L309:
	.loc 1 3958 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	decode_f_option, .-decode_f_option
	.section	.rodata
.LC630:
	.string	"id-clash-"
	.align 8
.LC631:
	.string	"-Wid-clash-LEN is no longer supported"
.LC632:
	.string	"larger-than-"
.LC633:
	.string	"unused"
.LC634:
	.string	"no-unused"
	.text
	.type	decode_W_option, @function
decode_W_option:
.LFB32:
	.loc 1 3967 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# arg, arg
	.loc 1 3968 0
	movq	$0, -8(%rbp)	#, option_value
	.loc 1 3973 0
	movl	$19, -12(%rbp)	#, j
	jmp	.L367	#
.L370:
	.loc 1 3975 0
	movl	-12(%rbp), %eax	# j, tmp91
	cltq
	salq	$5, %rax	#, tmp92
	addq	$W_options, %rax	#, tmp93
	movq	(%rax), %rdx	# W_options[j_8].string, D.18810
	movq	-24(%rbp), %rax	# arg, tmp94
	movq	%rdx, %rsi	# D.18810,
	movq	%rax, %rdi	# tmp94,
	call	strcmp	#
	testl	%eax, %eax	# D.18809
	jne	.L368	#,
	.loc 1 3977 0
	movl	-12(%rbp), %eax	# j, tmp96
	cltq
	salq	$5, %rax	#, tmp97
	addq	$W_options, %rax	#, tmp98
	movq	8(%rax), %rax	# W_options[j_8].variable, D.18811
	movl	-12(%rbp), %edx	# j, tmp100
	movslq	%edx, %rdx	# tmp100, tmp99
	salq	$5, %rdx	#, tmp101
	addq	$W_options+16, %rdx	#, tmp102
	movl	(%rdx), %edx	# W_options[j_8].on_value, D.18809
	movl	%edx, (%rax)	# D.18809, *_12
	.loc 1 3978 0
	movl	$1, %eax	#, D.18809
	jmp	.L369	#
.L368:
	.loc 1 3981 0
	movq	-24(%rbp), %rax	# arg, tmp103
	movzbl	(%rax), %eax	# *arg_10(D), D.18812
	cmpb	$110, %al	#, D.18812
	jne	.L367	#,
	.loc 1 3981 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# arg, tmp104
	addq	$1, %rax	#, D.18810
	movzbl	(%rax), %eax	# *_16, D.18812
	cmpb	$111, %al	#, D.18812
	jne	.L367	#,
	movq	-24(%rbp), %rax	# arg, tmp105
	addq	$2, %rax	#, D.18810
	movzbl	(%rax), %eax	# *_18, D.18812
	cmpb	$45, %al	#, D.18812
	jne	.L367	#,
	.loc 1 3982 0 is_stmt 1
	movl	-12(%rbp), %eax	# j, tmp107
	cltq
	salq	$5, %rax	#, tmp108
	addq	$W_options, %rax	#, tmp109
	movq	(%rax), %rax	# W_options[j_8].string, D.18810
	movq	-24(%rbp), %rdx	# arg, tmp110
	addq	$3, %rdx	#, D.18810
	movq	%rax, %rsi	# D.18810,
	movq	%rdx, %rdi	# D.18810,
	call	strcmp	#
	testl	%eax, %eax	# D.18809
	jne	.L367	#,
	.loc 1 3984 0
	movl	-12(%rbp), %eax	# j, tmp112
	cltq
	salq	$5, %rax	#, tmp113
	addq	$W_options, %rax	#, tmp114
	movq	8(%rax), %rax	# W_options[j_8].variable, D.18811
	movl	-12(%rbp), %edx	# j, tmp116
	movslq	%edx, %rdx	# tmp116, tmp115
	salq	$5, %rdx	#, tmp117
	addq	$W_options+16, %rdx	#, tmp118
	movl	(%rdx), %edx	# W_options[j_8].on_value, D.18809
	testl	%edx, %edx	# D.18809
	sete	%dl	#, D.18813
	movzbl	%dl, %edx	# D.18813, D.18809
	movl	%edx, (%rax)	# D.18809, *_23
	.loc 1 3985 0
	movl	$1, %eax	#, D.18809
	jmp	.L369	#
.L367:
	.loc 1 3973 0 discriminator 1
	movl	-12(%rbp), %eax	# j, j.298
	leal	-1(%rax), %edx	#, tmp119
	movl	%edx, -12(%rbp)	# tmp119, j
	testl	%eax, %eax	# j.298
	jne	.L370	#,
	.loc 1 3989 0
	movq	-24(%rbp), %rax	# arg, tmp120
	movl	$9, %edx	#,
	movl	$.LC630, %esi	#,
	movq	%rax, %rdi	# tmp120,
	call	strncmp	#
	testl	%eax, %eax	# D.18809
	jne	.L371	#,
	.loc 1 3989 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# arg, tmp121
	addq	$9, %rax	#, iftmp.299
	jmp	.L372	#
.L371:
	.loc 1 3989 0 discriminator 2
	movl	$0, %eax	#, iftmp.299
.L372:
	.loc 1 3989 0 discriminator 3
	movq	%rax, -8(%rbp)	# iftmp.299, option_value
	cmpq	$0, -8(%rbp)	#, option_value
	je	.L373	#,
	.loc 1 3990 0 is_stmt 1
	movl	$.LC631, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	jmp	.L374	#
.L373:
	.loc 1 3991 0
	movq	-24(%rbp), %rax	# arg, tmp122
	movl	$12, %edx	#,
	movl	$.LC632, %esi	#,
	movq	%rax, %rdi	# tmp122,
	call	strncmp	#
	testl	%eax, %eax	# D.18809
	jne	.L375	#,
	.loc 1 3991 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# arg, tmp123
	addq	$12, %rax	#, iftmp.300
	jmp	.L376	#
.L375:
	.loc 1 3991 0 discriminator 2
	movl	$0, %eax	#, iftmp.300
.L376:
	.loc 1 3991 0 discriminator 3
	movq	%rax, -8(%rbp)	# iftmp.300, option_value
	cmpq	$0, -8(%rbp)	#, option_value
	je	.L377	#,
	.loc 1 3993 0 is_stmt 1
	movq	-24(%rbp), %rax	# arg, tmp124
	leaq	-2(%rax), %rcx	#, D.18810
	movq	-8(%rbp), %rax	# option_value, tmp125
	movl	$-1, %edx	#,
	movq	%rcx, %rsi	# D.18810,
	movq	%rax, %rdi	# tmp125,
	call	read_integral_parameter	#
	cltq
	movq	%rax, larger_than_size(%rip)	# larger_than_size.301, larger_than_size
	.loc 1 3995 0
	movq	larger_than_size(%rip), %rax	# larger_than_size, larger_than_size.302
	cmpq	$-1, %rax	#, larger_than_size.302
	setne	%al	#, D.18813
	movzbl	%al, %eax	# D.18813, warn_larger_than.303
	movl	%eax, warn_larger_than(%rip)	# warn_larger_than.303, warn_larger_than
	jmp	.L374	#
.L377:
	.loc 1 3997 0
	movq	-24(%rbp), %rax	# arg, tmp126
	movl	$.LC633, %esi	#,
	movq	%rax, %rdi	# tmp126,
	call	strcmp	#
	testl	%eax, %eax	# D.18809
	jne	.L378	#,
	.loc 1 3999 0
	movl	$1, %edi	#,
	call	set_Wunused	#
	jmp	.L374	#
.L378:
	.loc 1 4001 0
	movq	-24(%rbp), %rax	# arg, tmp127
	movl	$.LC634, %esi	#,
	movq	%rax, %rdi	# tmp127,
	call	strcmp	#
	testl	%eax, %eax	# D.18809
	jne	.L379	#,
	.loc 1 4003 0
	movl	$0, %edi	#,
	call	set_Wunused	#
	jmp	.L374	#
.L379:
	.loc 1 4006 0
	movl	$0, %eax	#, D.18809
	jmp	.L369	#
.L374:
	.loc 1 4008 0
	movl	$1, %eax	#, D.18809
.L369:
	.loc 1 4009 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	decode_W_option, .-decode_W_option
	.section	.rodata
.LC635:
	.string	"dwarf"
	.align 8
.LC636:
	.string	"use -gdwarf -g%d for DWARF v1, level %d"
.LC637:
	.string	"use -gdwarf-2   for DWARF v2"
	.align 8
.LC638:
	.string	"ignoring option `%s' due to invalid debug level specification"
	.align 8
.LC639:
	.string	"`%s': unknown or unsupported -g option"
	.align 8
.LC640:
	.string	"`%s' ignored, conflicts with `-g%s'"
	.text
	.type	decode_g_option, @function
decode_g_option:
.LFB33:
	.loc 1 4018 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# arg, arg
	.loc 1 4040 0
	movq	$debug_args, da(%rip)	#, da
	jmp	.L381	#
.L400:
.LBB24:
	.loc 1 4042 0
	movq	da(%rip), %rax	# da, da.304
	movq	(%rax), %rax	# da.304_7->arg, D.18820
	movq	%rax, %rdi	# D.18820,
	call	strlen	#
	movl	%eax, -12(%rbp)	# D.18821, da_len
	.loc 1 4044 0
	cmpl	$0, -12(%rbp)	#, da_len
	je	.L382	#,
	.loc 1 4044 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# da_len, tmp124
	movslq	%eax, %rdx	# tmp124, D.18821
	movq	da(%rip), %rax	# da, da.305
	movq	(%rax), %rcx	# da.305_12->arg, D.18820
	movq	-24(%rbp), %rax	# arg, tmp125
	movq	%rcx, %rsi	# D.18820,
	movq	%rax, %rdi	# tmp125,
	call	strncmp	#
	testl	%eax, %eax	# D.18819
	jne	.L383	#,
.L382:
.LBB25:
	.loc 1 4046 0 is_stmt 1
	movq	da(%rip), %rax	# da, da.306
	movl	8(%rax), %eax	# da.306_16->debug_type, tmp126
	movl	%eax, -16(%rbp)	# tmp126, type
	.loc 1 4047 0
	movl	-12(%rbp), %eax	# da_len, tmp127
	movslq	%eax, %rdx	# tmp127, D.18822
	movq	-24(%rbp), %rax	# arg, tmp131
	addq	%rdx, %rax	# D.18822, tmp130
	movq	%rax, -8(%rbp)	# tmp130, p
	.loc 1 4049 0
	movq	-8(%rbp), %rax	# p, tmp132
	movzbl	(%rax), %eax	# *p_19, D.18823
	testb	%al, %al	# D.18823
	je	.L384	#,
	.loc 1 4049 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# p, tmp133
	movzbl	(%rax), %eax	# *p_19, D.18823
	movsbl	%al, %eax	# D.18823, D.18819
	movzbl	%al, %eax	# D.18819, D.18819
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.18824
	movzwl	%ax, %eax	# D.18824, D.18819
	andl	$4, %eax	#, D.18819
	testl	%eax, %eax	# D.18819
	jne	.L384	#,
	.loc 1 4050 0 is_stmt 1
	jmp	.L383	#
.L384:
	.loc 1 4060 0
	movq	-8(%rbp), %rax	# p, tmp135
	movzbl	(%rax), %eax	# *p_19, D.18823
	testb	%al, %al	# D.18823
	je	.L385	#,
	.loc 1 4061 0
	movl	$3, %eax	#, max_debug_level.307
	addl	$1, %eax	#, D.18825
	movl	%eax, %edx	# D.18825, D.18819
	movq	-8(%rbp), %rax	# p, tmp136
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp136,
	call	read_integral_parameter	#
	movl	%eax, level.15704(%rip)	# level.308, level
	jmp	.L386	#
.L385:
	.loc 1 4063 0
	movl	level.15704(%rip), %eax	# level, level.310
	testl	%eax, %eax	# level.310
	je	.L387	#,
	.loc 1 4063 0 is_stmt 0 discriminator 1
	movl	level.15704(%rip), %eax	# level, iftmp.309
	jmp	.L388	#
.L387:
	.loc 1 4063 0 discriminator 2
	movl	$2, %eax	#, iftmp.309
.L388:
	.loc 1 4063 0 discriminator 3
	movl	%eax, level.15704(%rip)	# iftmp.309, level
.L386:
	.loc 1 4065 0 is_stmt 1
	cmpl	$1, -12(%rbp)	#, da_len
	jle	.L389	#,
	.loc 1 4065 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# p, tmp137
	movzbl	(%rax), %eax	# *p_19, D.18823
	testb	%al, %al	# D.18823
	je	.L389	#,
	movl	-12(%rbp), %eax	# da_len, tmp138
	movslq	%eax, %rdx	# tmp138, D.18821
	movq	-24(%rbp), %rax	# arg, tmp139
	movl	$.LC635, %esi	#,
	movq	%rax, %rdi	# tmp139,
	call	strncmp	#
	testl	%eax, %eax	# D.18819
	jne	.L389	#,
	.loc 1 4067 0 is_stmt 1
	movl	level.15704(%rip), %edx	# level, level.311
	movl	level.15704(%rip), %eax	# level, level.312
	movl	%eax, %esi	# level.312,
	movl	$.LC636, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 4069 0
	movl	level.15704(%rip), %eax	# level, level.313
	cmpl	$2, %eax	#, level.313
	jne	.L389	#,
	.loc 1 4070 0
	movl	$.LC637, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.L389:
	.loc 1 4073 0
	movl	level.15704(%rip), %edx	# level, level.314
	movl	$3, %eax	#, max_debug_level.315
	cmpl	%eax, %edx	# max_debug_level.315, level.314
	jbe	.L390	#,
	.loc 1 4075 0
	movq	-24(%rbp), %rax	# arg, tmp140
	subq	$2, %rax	#, D.18820
	movq	%rax, %rsi	# D.18820,
	movl	$.LC638, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	.loc 1 4078 0
	movl	debug_info_level(%rip), %eax	# debug_info_level, debug_info_level.316
	movl	%eax, level.15704(%rip)	# debug_info_level.316, level
.L390:
	.loc 1 4081 0
	cmpl	$0, -16(%rbp)	#, type
	jne	.L391	#,
	.loc 1 4083 0
	movl	$4, -16(%rbp)	#, type
	.loc 1 4085 0
	cmpl	$1, -12(%rbp)	#, da_len
	jle	.L391	#,
	.loc 1 4085 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# da_len, tmp141
	movslq	%eax, %rdx	# tmp141, D.18821
	movq	-24(%rbp), %rax	# arg, tmp142
	movl	$.LC34, %esi	#,
	movq	%rax, %rdi	# tmp142,
	call	strncmp	#
	testl	%eax, %eax	# D.18819
	jne	.L391	#,
	.loc 1 4088 0 is_stmt 1
	movl	$4, -16(%rbp)	#, type
.L391:
	.loc 1 4097 0
	cmpl	$0, -16(%rbp)	#, type
	jne	.L392	#,
	.loc 1 4098 0
	movq	-24(%rbp), %rax	# arg, tmp143
	subq	$2, %rax	#, D.18820
	movq	%rax, %rsi	# D.18820,
	movl	$.LC639, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L392:
	.loc 1 4101 0
	movl	type_explicitly_set_p.15706(%rip), %eax	# type_explicitly_set_p, type_explicitly_set_p.317
	testl	%eax, %eax	# type_explicitly_set_p.317
	je	.L393	#,
	.loc 1 4103 0
	movq	da(%rip), %rax	# da, da.318
	movl	8(%rax), %eax	# da.318_52->debug_type, D.18826
	testl	%eax, %eax	# D.18826
	je	.L393	#,
	.loc 1 4104 0
	movl	selected_debug_type.15705(%rip), %eax	# selected_debug_type, selected_debug_type.319
	cmpl	%eax, -16(%rbp)	# selected_debug_type.319, type
	je	.L393	#,
	.loc 1 4106 0
	movl	selected_debug_type.15705(%rip), %eax	# selected_debug_type, selected_debug_type.320
	.loc 1 4105 0
	cltq
	movq	debug_type_names.15707(,%rax,8), %rax	# debug_type_names, D.18820
	movq	-24(%rbp), %rdx	# arg, tmp145
	leaq	-2(%rdx), %rcx	#, D.18820
	movq	%rax, %rdx	# D.18820,
	movq	%rcx, %rsi	# D.18820,
	movl	$.LC640, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	.loc 1 4127 0
	jmp	.L399	#
.L393:
	.loc 1 4111 0
	movl	type_explicitly_set_p.15706(%rip), %eax	# type_explicitly_set_p, type_explicitly_set_p.322
	testl	%eax, %eax	# type_explicitly_set_p.322
	je	.L395	#,
	.loc 1 4111 0 is_stmt 0 discriminator 1
	movq	da(%rip), %rax	# da, da.323
	movl	8(%rax), %eax	# da.323_60->debug_type, D.18826
	testl	%eax, %eax	# D.18826
	jne	.L395	#,
	jmp	.L396	#
.L395:
	.loc 1 4116 0 is_stmt 1
	movl	-16(%rbp), %eax	# type, tmp146
	movl	%eax, selected_debug_type.15705(%rip)	# tmp146, selected_debug_type
	.loc 1 4117 0
	movq	da(%rip), %rax	# da, da.324
	movl	8(%rax), %eax	# da.324_62->debug_type, D.18826
	testl	%eax, %eax	# D.18826
	setne	%al	#, D.18827
	movzbl	%al, %eax	# D.18827, type_explicitly_set_p.325
	movl	%eax, type_explicitly_set_p.15706(%rip)	# type_explicitly_set_p.325, type_explicitly_set_p
.L396:
	.loc 1 4120 0
	movl	level.15704(%rip), %eax	# level, level.327
	testl	%eax, %eax	# level.327
	je	.L397	#,
	.loc 1 4120 0 is_stmt 0 discriminator 1
	movl	selected_debug_type.15705(%rip), %eax	# selected_debug_type, iftmp.326
	jmp	.L398	#
.L397:
	.loc 1 4120 0 discriminator 2
	movl	$0, %eax	#, iftmp.326
.L398:
	.loc 1 4120 0 discriminator 3
	movl	%eax, write_symbols(%rip)	# iftmp.326, write_symbols
	.loc 1 4123 0 is_stmt 1 discriminator 3
	movq	da(%rip), %rax	# da, da.328
	movl	12(%rax), %eax	# da.328_69->use_extensions_p, use_gnu_debug_info_extensions.329
	movl	%eax, use_gnu_debug_info_extensions(%rip)	# use_gnu_debug_info_extensions.329, use_gnu_debug_info_extensions
	.loc 1 4124 0 discriminator 3
	movl	level.15704(%rip), %eax	# level, level.330
	movl	%eax, debug_info_level(%rip)	# level.330, debug_info_level
	.loc 1 4127 0 discriminator 3
	jmp	.L399	#
.L383:
.LBE25:
.LBE24:
	.loc 1 4040 0
	movq	da(%rip), %rax	# da, da.331
	addq	$24, %rax	#, da.332
	movq	%rax, da(%rip)	# da.332, da
.L381:
	.loc 1 4040 0 is_stmt 0 discriminator 1
	movq	da(%rip), %rax	# da, da.333
	movq	(%rax), %rax	# da.333_5->arg, D.18820
	testq	%rax, %rax	# D.18820
	jne	.L400	#,
.L399:
	.loc 1 4131 0 is_stmt 1
	movq	da(%rip), %rax	# da, da.334
	movq	(%rax), %rax	# da.334_74->arg, D.18820
	testq	%rax, %rax	# D.18820
	jne	.L401	#,
	.loc 1 4132 0
	movl	$0, %eax	#, D.18819
	jmp	.L402	#
.L401:
	.loc 1 4134 0
	movl	$1, %eax	#, D.18819
.L402:
	.loc 1 4135 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	decode_g_option, .-decode_g_option
	.section	.rodata
.LC641:
	.string	"-help"
.LC642:
	.string	"-target-help"
.LC643:
	.string	"-version"
.LC644:
	.string	"-param"
	.align 8
.LC645:
	.string	"-param option missing argument"
.LC646:
	.string	"invalid --param option: %s"
.LC647:
	.string	"invalid parameter value `%s'"
.LC648:
	.string	"dumpbase"
.LC649:
	.string	"pedantic"
.LC650:
	.string	"pedantic-errors"
.LC651:
	.string	"quiet"
.LC652:
	.string	"version"
.LC653:
	.string	"aux-info"
	.text
	.type	independent_decode_option, @function
independent_decode_option:
.LFB34:
	.loc 1 4144 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# argc, argc
	movq	%rsi, -48(%rbp)	# argv, argv
	.loc 1 4145 0
	movq	-48(%rbp), %rax	# argv, tmp112
	movq	(%rax), %rax	# *argv_6(D), tmp113
	movq	%rax, -16(%rbp)	# tmp113, arg
	.loc 1 4147 0
	movq	-16(%rbp), %rax	# arg, tmp114
	movzbl	(%rax), %eax	# *arg_7, D.18835
	cmpb	$45, %al	#, D.18835
	jne	.L404	#,
	.loc 1 4147 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# arg, tmp115
	addq	$1, %rax	#, D.18836
	movzbl	(%rax), %eax	# *_9, D.18835
	testb	%al, %al	# D.18835
	jne	.L405	#,
.L404:
	.loc 1 4149 0 is_stmt 1
	movq	-16(%rbp), %rax	# arg, tmp116
	movzbl	(%rax), %eax	# *arg_7, D.18835
	cmpb	$43, %al	#, D.18835
	jne	.L406	#,
	.loc 1 4150 0
	movl	$0, %eax	#, D.18834
	jmp	.L407	#
.L406:
	.loc 1 4152 0
	movq	-16(%rbp), %rax	# arg, tmp117
	movq	%rax, filename(%rip)	# tmp117, filename
	.loc 1 4154 0
	movl	$1, %eax	#, D.18834
	jmp	.L407	#
.L405:
	.loc 1 4157 0
	addq	$1, -16(%rbp)	#, arg
	.loc 1 4159 0
	movq	-16(%rbp), %rax	# arg, tmp118
	movl	$.LC641, %esi	#,
	movq	%rax, %rdi	# tmp118,
	call	strcmp	#
	testl	%eax, %eax	# D.18837
	jne	.L408	#,
	.loc 1 4161 0
	call	display_help	#
	.loc 1 4162 0
	movl	$1, exit_after_options(%rip)	#, exit_after_options
.L408:
	.loc 1 4165 0
	movq	-16(%rbp), %rax	# arg, tmp119
	movl	$.LC642, %esi	#,
	movq	%rax, %rdi	# tmp119,
	call	strcmp	#
	testl	%eax, %eax	# D.18837
	jne	.L409	#,
	.loc 1 4167 0
	call	display_target_options	#
	.loc 1 4168 0
	movl	$1, exit_after_options(%rip)	#, exit_after_options
.L409:
	.loc 1 4171 0
	movq	-16(%rbp), %rax	# arg, tmp120
	movl	$.LC643, %esi	#,
	movq	%rax, %rdi	# tmp120,
	call	strcmp	#
	testl	%eax, %eax	# D.18837
	jne	.L410	#,
	.loc 1 4173 0
	movq	stderr(%rip), %rax	# stderr, stderr.335
	movl	$.LC32, %esi	#,
	movq	%rax, %rdi	# stderr.335,
	call	print_version	#
	.loc 1 4174 0
	movl	$1, exit_after_options(%rip)	#, exit_after_options
.L410:
	.loc 1 4178 0
	movq	-16(%rbp), %rax	# arg, tmp121
	movl	$.LC644, %esi	#,
	movq	%rax, %rdi	# tmp121,
	call	strcmp	#
	testl	%eax, %eax	# D.18837
	jne	.L411	#,
.LBB26:
	.loc 1 4182 0
	cmpl	$1, -36(%rbp)	#, argc
	jne	.L412	#,
	.loc 1 4184 0
	movl	$.LC645, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 4185 0
	movl	$1, %eax	#, D.18834
	jmp	.L407	#
.L412:
	.loc 1 4189 0
	movq	-48(%rbp), %rax	# argv, tmp122
	movq	8(%rax), %rax	# MEM[(char * *)argv_6(D) + 8B], tmp123
	movq	%rax, -16(%rbp)	# tmp123, arg
	.loc 1 4191 0
	movq	-16(%rbp), %rax	# arg, tmp124
	movl	$61, %esi	#,
	movq	%rax, %rdi	# tmp124,
	call	strchr	#
	movq	%rax, -8(%rbp)	# tmp125, equal
	.loc 1 4192 0
	cmpq	$0, -8(%rbp)	#, equal
	jne	.L413	#,
	.loc 1 4193 0
	movq	-16(%rbp), %rax	# arg, tmp126
	movq	%rax, %rsi	# tmp126,
	movl	$.LC646, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	jmp	.L414	#
.L413:
.LBB27:
	.loc 1 4199 0
	movq	-8(%rbp), %rax	# equal, tmp127
	movb	$0, (%rax)	#, *equal_20
	.loc 1 4201 0
	movq	-8(%rbp), %rax	# equal, tmp128
	addq	$1, %rax	#, D.18838
	movl	$-1, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.18838,
	call	read_integral_parameter	#
	movl	%eax, -20(%rbp)	# tmp129, val
	.loc 1 4202 0
	cmpl	$-1, -20(%rbp)	#, val
	je	.L415	#,
	.loc 1 4203 0
	movl	-20(%rbp), %edx	# val, tmp130
	movq	-16(%rbp), %rax	# arg, tmp131
	movl	%edx, %esi	# tmp130,
	movq	%rax, %rdi	# tmp131,
	call	set_param_value	#
	jmp	.L414	#
.L415:
	.loc 1 4205 0
	movq	-8(%rbp), %rax	# equal, tmp132
	addq	$1, %rax	#, D.18836
	movq	%rax, %rsi	# D.18836,
	movl	$.LC647, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.L414:
.LBE27:
	.loc 1 4208 0
	movl	$2, %eax	#, D.18834
	jmp	.L407	#
.L411:
.LBE26:
	.loc 1 4211 0
	movq	-16(%rbp), %rax	# arg, tmp133
	movzbl	(%rax), %eax	# *arg_11, D.18835
	cmpb	$89, %al	#, D.18835
	jne	.L416	#,
	.loc 1 4212 0
	addq	$1, -16(%rbp)	#, arg
.L416:
	.loc 1 4214 0
	movq	-16(%rbp), %rax	# arg, tmp134
	movzbl	(%rax), %eax	# *arg_1, D.18835
	movsbl	%al, %eax	# D.18835, D.18837
	subl	$71, %eax	#, tmp135
	cmpl	$48, %eax	#, tmp135
	ja	.L417	#,
	movl	%eax, %eax	# tmp135, tmp136
	movq	.L419(,%rax,8), %rax	#, tmp137
	jmp	*%rax	# tmp137
	.section	.rodata
	.align 8
	.align 4
.L419:
	.quad	.L418
	.quad	.L417
	.quad	.L417
	.quad	.L417
	.quad	.L417
	.quad	.L417
	.quad	.L417
	.quad	.L417
	.quad	.L460
	.quad	.L417
	.quad	.L417
	.quad	.L417
	.quad	.L417
	.quad	.L417
	.quad	.L417
	.quad	.L417
	.quad	.L421
	.quad	.L417
	.quad	.L417
	.quad	.L417
	.quad	.L417
	.quad	.L417
	.quad	.L417
	.quad	.L417
	.quad	.L417
	.quad	.L417
	.quad	.L422
	.quad	.L417
	.quad	.L417
	.quad	.L423
	.quad	.L417
	.quad	.L424
	.quad	.L425
	.quad	.L417
	.quad	.L417
	.quad	.L417
	.quad	.L417
	.quad	.L417
	.quad	.L426
	.quad	.L417
	.quad	.L427
	.quad	.L428
	.quad	.L429
	.quad	.L417
	.quad	.L417
	.quad	.L417
	.quad	.L417
	.quad	.L430
	.quad	.L431
	.text
.L417:
	.loc 1 4217 0
	movl	$0, %eax	#, D.18834
	jmp	.L407	#
.L426:
	.loc 1 4224 0
	movq	-16(%rbp), %rax	# arg, tmp138
	addq	$1, %rax	#, D.18838
	movq	%rax, %rdi	# D.18838,
	call	set_target_switch	#
	.loc 1 4225 0
	jmp	.L432	#
.L424:
	.loc 1 4228 0
	movq	-16(%rbp), %rax	# arg, tmp139
	addq	$1, %rax	#, D.18838
	movq	%rax, %rdi	# D.18838,
	call	decode_f_option	#
	jmp	.L407	#
.L425:
	.loc 1 4231 0
	movq	-16(%rbp), %rax	# arg, tmp140
	addq	$1, %rax	#, D.18838
	movq	%rax, %rdi	# D.18838,
	call	decode_g_option	#
	jmp	.L407	#
.L423:
	.loc 1 4234 0
	movq	-16(%rbp), %rax	# arg, tmp141
	movl	$.LC648, %esi	#,
	movq	%rax, %rdi	# tmp141,
	call	strcmp	#
	testl	%eax, %eax	# D.18837
	jne	.L433	#,
	.loc 1 4236 0
	cmpl	$1, -36(%rbp)	#, argc
	jne	.L434	#,
	.loc 1 4237 0
	movl	$0, %eax	#, D.18834
	jmp	.L407	#
.L434:
	.loc 1 4239 0
	movq	-48(%rbp), %rax	# argv, tmp142
	movq	8(%rax), %rax	# MEM[(char * *)argv_6(D) + 8B], dump_base_name.336
	movq	%rax, dump_base_name(%rip)	# dump_base_name.336, dump_base_name
	.loc 1 4240 0
	movl	$2, %eax	#, D.18834
	jmp	.L407	#
.L433:
	.loc 1 4243 0
	movq	-16(%rbp), %rax	# arg, tmp143
	addq	$1, %rax	#, D.18838
	movq	%rax, %rdi	# D.18838,
	call	decode_d_option	#
	.loc 1 4244 0
	jmp	.L432	#
.L428:
	.loc 1 4247 0
	movq	-16(%rbp), %rax	# arg, tmp144
	movl	$.LC649, %esi	#,
	movq	%rax, %rdi	# tmp144,
	call	strcmp	#
	testl	%eax, %eax	# D.18837
	jne	.L435	#,
	.loc 1 4248 0
	movl	$1, pedantic(%rip)	#, pedantic
	jmp	.L436	#
.L435:
	.loc 1 4249 0
	movq	-16(%rbp), %rax	# arg, tmp145
	movl	$.LC650, %esi	#,
	movq	%rax, %rdi	# tmp145,
	call	strcmp	#
	testl	%eax, %eax	# D.18837
	jne	.L437	#,
	.loc 1 4250 0
	movl	$1, pedantic(%rip)	#, pedantic
	movl	pedantic(%rip), %eax	# pedantic, pedantic.337
	movl	%eax, flag_pedantic_errors(%rip)	# pedantic.337, flag_pedantic_errors
	jmp	.L436	#
.L437:
	.loc 1 4251 0
	movq	-16(%rbp), %rax	# arg, tmp146
	addq	$1, %rax	#, D.18836
	movzbl	(%rax), %eax	# *_45, D.18835
	testb	%al, %al	# D.18835
	jne	.L438	#,
	.loc 1 4252 0
	movl	$1, profile_flag(%rip)	#, profile_flag
	jmp	.L436	#
.L438:
	.loc 1 4254 0
	movl	$0, %eax	#, D.18834
	jmp	.L407	#
.L436:
	.loc 1 4255 0
	jmp	.L432	#
.L429:
	.loc 1 4258 0
	movq	-16(%rbp), %rax	# arg, tmp147
	movl	$.LC651, %esi	#,
	movq	%rax, %rdi	# tmp147,
	call	strcmp	#
	testl	%eax, %eax	# D.18837
	jne	.L439	#,
	.loc 1 4259 0
	movl	$1, quiet_flag(%rip)	#, quiet_flag
	.loc 1 4262 0
	jmp	.L432	#
.L439:
	.loc 1 4261 0
	movl	$0, %eax	#, D.18834
	jmp	.L407	#
.L430:
	.loc 1 4265 0
	movq	-16(%rbp), %rax	# arg, tmp148
	movl	$.LC652, %esi	#,
	movq	%rax, %rdi	# tmp148,
	call	strcmp	#
	testl	%eax, %eax	# D.18837
	jne	.L441	#,
	.loc 1 4266 0
	movl	$1, version_flag(%rip)	#, version_flag
	.loc 1 4269 0
	jmp	.L432	#
.L441:
	.loc 1 4268 0
	movl	$0, %eax	#, D.18834
	jmp	.L407	#
.L431:
	.loc 1 4272 0
	movq	-16(%rbp), %rax	# arg, tmp149
	addq	$1, %rax	#, D.18836
	movzbl	(%rax), %eax	# *_52, D.18835
	testb	%al, %al	# D.18835
	jne	.L443	#,
	.loc 1 4273 0
	movl	$1, inhibit_warnings(%rip)	#, inhibit_warnings
	.loc 1 4276 0
	jmp	.L432	#
.L443:
	.loc 1 4275 0
	movl	$0, %eax	#, D.18834
	jmp	.L407	#
.L421:
	.loc 1 4279 0
	movq	-16(%rbp), %rax	# arg, tmp150
	addq	$1, %rax	#, D.18836
	movzbl	(%rax), %eax	# *_55, D.18835
	testb	%al, %al	# D.18835
	jne	.L445	#,
	.loc 1 4281 0
	movl	$1, extra_warnings(%rip)	#, extra_warnings
	.loc 1 4285 0
	movl	warn_uninitialized(%rip), %eax	# warn_uninitialized, warn_uninitialized.338
	cmpl	$1, %eax	#, warn_uninitialized.338
	je	.L447	#,
	.loc 1 4286 0
	movl	$2, warn_uninitialized(%rip)	#, warn_uninitialized
	.loc 1 4290 0
	jmp	.L432	#
.L445:
	.loc 1 4289 0
	movq	-16(%rbp), %rax	# arg, tmp151
	addq	$1, %rax	#, D.18838
	movq	%rax, %rdi	# D.18838,
	call	decode_W_option	#
	jmp	.L407	#
.L447:
	.loc 1 4290 0
	jmp	.L432	#
.L422:
	.loc 1 4293 0
	movq	-16(%rbp), %rax	# arg, tmp152
	movl	$8, %edx	#,
	movl	$.LC653, %esi	#,
	movq	%rax, %rdi	# tmp152,
	call	strncmp	#
	testl	%eax, %eax	# D.18837
	jne	.L448	#,
	.loc 1 4295 0
	movq	-16(%rbp), %rax	# arg, tmp153
	addq	$8, %rax	#, D.18836
	movzbl	(%rax), %eax	# *_62, D.18835
	testb	%al, %al	# D.18835
	jne	.L449	#,
	.loc 1 4297 0
	cmpl	$1, -36(%rbp)	#, argc
	jne	.L450	#,
	.loc 1 4298 0
	movl	$0, %eax	#, D.18834
	jmp	.L407	#
.L450:
	.loc 1 4300 0
	movq	-48(%rbp), %rax	# argv, tmp154
	movq	8(%rax), %rax	# MEM[(char * *)argv_6(D) + 8B], aux_info_file_name.339
	movq	%rax, aux_info_file_name(%rip)	# aux_info_file_name.339, aux_info_file_name
	.loc 1 4301 0
	movl	$1, flag_gen_aux_info(%rip)	#, flag_gen_aux_info
	.loc 1 4302 0
	movl	$2, %eax	#, D.18834
	jmp	.L407	#
.L449:
	.loc 1 4304 0
	movq	-16(%rbp), %rax	# arg, tmp155
	addq	$8, %rax	#, D.18836
	movzbl	(%rax), %eax	# *_67, D.18835
	cmpb	$61, %al	#, D.18835
	jne	.L451	#,
	.loc 1 4306 0
	movq	-16(%rbp), %rax	# arg, tmp156
	addq	$9, %rax	#, aux_info_file_name.340
	movq	%rax, aux_info_file_name(%rip)	# aux_info_file_name.340, aux_info_file_name
	.loc 1 4307 0
	movl	$1, flag_gen_aux_info(%rip)	#, flag_gen_aux_info
	.loc 1 4314 0
	jmp	.L432	#
.L451:
	.loc 1 4310 0
	movl	$0, %eax	#, D.18834
	jmp	.L407	#
.L448:
	.loc 1 4313 0
	movl	$0, %eax	#, D.18834
	jmp	.L407	#
.L427:
	.loc 1 4317 0
	movq	-16(%rbp), %rax	# arg, tmp157
	addq	$1, %rax	#, D.18836
	movzbl	(%rax), %eax	# *_72, D.18835
	testb	%al, %al	# D.18835
	jne	.L453	#,
	.loc 1 4319 0
	cmpl	$1, -36(%rbp)	#, argc
	jne	.L454	#,
	.loc 1 4320 0
	movl	$0, %eax	#, D.18834
	jmp	.L407	#
.L454:
	.loc 1 4322 0
	movq	-48(%rbp), %rax	# argv, tmp158
	movq	8(%rax), %rax	# MEM[(char * *)argv_6(D) + 8B], asm_file_name.341
	movq	%rax, asm_file_name(%rip)	# asm_file_name.341, asm_file_name
	.loc 1 4323 0
	movl	$2, %eax	#, D.18834
	jmp	.L407	#
.L453:
	.loc 1 4325 0
	movl	$0, %eax	#, D.18834
	jmp	.L407	#
.L418:
.LBB28:
	.loc 1 4332 0
	movq	-16(%rbp), %rax	# arg, tmp159
	addq	$1, %rax	#, D.18836
	movzbl	(%rax), %eax	# *_78, D.18835
	testb	%al, %al	# D.18835
	jne	.L455	#,
	.loc 1 4334 0
	cmpl	$1, -36(%rbp)	#, argc
	jne	.L456	#,
	.loc 1 4335 0
	movl	$0, %eax	#, D.18834
	jmp	.L407	#
.L456:
	.loc 1 4337 0
	movq	-48(%rbp), %rax	# argv, tmp160
	addq	$8, %rax	#, D.18839
	movq	(%rax), %rax	# *_81, D.18836
	movl	$-1, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.18836,
	call	read_integral_parameter	#
	movl	%eax, -28(%rbp)	# tmp161, g_switch_val
	.loc 1 4338 0
	movl	$2, -24(%rbp)	#, return_val
	jmp	.L457	#
.L455:
	.loc 1 4342 0
	movq	-16(%rbp), %rax	# arg, tmp162
	addq	$1, %rax	#, D.18838
	movl	$-1, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.18838,
	call	read_integral_parameter	#
	movl	%eax, -28(%rbp)	# tmp163, g_switch_val
	.loc 1 4343 0
	movl	$1, -24(%rbp)	#, return_val
.L457:
	.loc 1 4346 0
	cmpl	$-1, -28(%rbp)	#, g_switch_val
	jne	.L458	#,
	.loc 1 4347 0
	movl	$0, -24(%rbp)	#, return_val
	jmp	.L459	#
.L458:
	.loc 1 4350 0
	movl	$1, g_switch_set(%rip)	#, g_switch_set
	.loc 1 4351 0
	movl	-28(%rbp), %eax	# g_switch_val, tmp164
	movl	%eax, g_switch_value(%rip)	# tmp164, g_switch_value
.L459:
	.loc 1 4354 0
	movl	-24(%rbp), %eax	# return_val, D.18834
	jmp	.L407	#
.L460:
.LBE28:
	.loc 1 4221 0
	nop
.L432:
	.loc 1 4358 0
	movl	$1, %eax	#, D.18834
.L407:
	.loc 1 4359 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	independent_decode_option, .-independent_decode_option
	.type	set_target_switch, @function
set_target_switch:
.LFB35:
	.loc 1 4367 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# name, name
	.loc 1 4369 0
	movl	$0, -16(%rbp)	#, valid_target_option
	.loc 1 4371 0
	movq	$0, -8(%rbp)	#, j
	jmp	.L462	#
.L466:
	.loc 1 4372 0
	movq	-8(%rbp), %rdx	# j, tmp77
	movq	%rdx, %rax	# tmp77, tmp78
	addq	%rax, %rax	# tmp78
	addq	%rdx, %rax	# tmp77, tmp78
	salq	$3, %rax	#, tmp79
	addq	$target_switches, %rax	#, tmp80
	movq	(%rax), %rax	# target_switches[j_1].name, D.18853
	movq	-24(%rbp), %rdx	# name, tmp81
	movq	%rdx, %rsi	# tmp81,
	movq	%rax, %rdi	# D.18853,
	call	strcmp	#
	testl	%eax, %eax	# D.18854
	jne	.L463	#,
	.loc 1 4374 0
	movq	-8(%rbp), %rdx	# j, tmp82
	movq	%rdx, %rax	# tmp82, tmp83
	addq	%rax, %rax	# tmp83
	addq	%rdx, %rax	# tmp82, tmp83
	salq	$3, %rax	#, tmp84
	addq	$target_switches, %rax	#, tmp85
	movl	8(%rax), %eax	# target_switches[j_1].value, D.18854
	testl	%eax, %eax	# D.18854
	jns	.L464	#,
	.loc 1 4375 0
	movq	-8(%rbp), %rdx	# j, tmp86
	movq	%rdx, %rax	# tmp86, tmp87
	addq	%rax, %rax	# tmp87
	addq	%rdx, %rax	# tmp86, tmp87
	salq	$3, %rax	#, tmp88
	addq	$target_switches, %rax	#, tmp89
	movl	8(%rax), %eax	# target_switches[j_1].value, D.18854
	leal	-1(%rax), %edx	#, D.18854
	movl	target_flags(%rip), %eax	# target_flags, target_flags.342
	andl	%edx, %eax	# D.18854, target_flags.343
	movl	%eax, target_flags(%rip)	# target_flags.343, target_flags
	jmp	.L465	#
.L464:
	.loc 1 4377 0
	movq	-8(%rbp), %rdx	# j, tmp90
	movq	%rdx, %rax	# tmp90, tmp91
	addq	%rax, %rax	# tmp91
	addq	%rdx, %rax	# tmp90, tmp91
	salq	$3, %rax	#, tmp92
	addq	$target_switches, %rax	#, tmp93
	movl	8(%rax), %edx	# target_switches[j_1].value, D.18854
	movl	target_flags(%rip), %eax	# target_flags, target_flags.344
	orl	%edx, %eax	# D.18854, target_flags.345
	movl	%eax, target_flags(%rip)	# target_flags.345, target_flags
.L465:
	.loc 1 4378 0
	movl	$1, -16(%rbp)	#, valid_target_option
.L463:
	.loc 1 4371 0
	addq	$1, -8(%rbp)	#, j
.L462:
	.loc 1 4371 0 is_stmt 0 discriminator 1
	cmpq	$55, -8(%rbp)	#, j
	jbe	.L466	#,
	.loc 1 4382 0 is_stmt 1
	cmpl	$0, -16(%rbp)	#, valid_target_option
	jne	.L467	#,
	.loc 1 4383 0
	movq	$0, -8(%rbp)	#, j
	jmp	.L468	#
.L470:
.LBB29:
	.loc 1 4385 0
	movq	-8(%rbp), %rdx	# j, tmp94
	movq	%rdx, %rax	# tmp94, tmp95
	addq	%rax, %rax	# tmp95
	addq	%rdx, %rax	# tmp94, tmp95
	salq	$3, %rax	#, tmp96
	addq	$target_options, %rax	#, tmp97
	movq	(%rax), %rax	# target_options[j_2].prefix, D.18853
	movq	%rax, %rdi	# D.18853,
	call	strlen	#
	movl	%eax, -12(%rbp)	# D.18855, len
	.loc 1 4386 0
	movl	-12(%rbp), %eax	# len, tmp98
	movslq	%eax, %rsi	# tmp98, D.18855
	movq	-8(%rbp), %rdx	# j, tmp99
	movq	%rdx, %rax	# tmp99, tmp100
	addq	%rax, %rax	# tmp100
	addq	%rdx, %rax	# tmp99, tmp100
	salq	$3, %rax	#, tmp101
	addq	$target_options, %rax	#, tmp102
	movq	(%rax), %rax	# target_options[j_2].prefix, D.18853
	movq	-24(%rbp), %rcx	# name, tmp103
	movq	%rsi, %rdx	# D.18855,
	movq	%rcx, %rsi	# tmp103,
	movq	%rax, %rdi	# D.18853,
	call	strncmp	#
	testl	%eax, %eax	# D.18854
	jne	.L469	#,
	.loc 1 4388 0
	movq	-8(%rbp), %rdx	# j, tmp104
	movq	%rdx, %rax	# tmp104, tmp105
	addq	%rax, %rax	# tmp105
	addq	%rdx, %rax	# tmp104, tmp105
	salq	$3, %rax	#, tmp106
	addq	$target_options, %rax	#, tmp107
	movq	8(%rax), %rax	# target_options[j_2].variable, D.18856
	movl	-12(%rbp), %edx	# len, tmp108
	movslq	%edx, %rcx	# tmp108, D.18857
	movq	-24(%rbp), %rdx	# name, tmp109
	addq	%rcx, %rdx	# D.18857, D.18853
	movq	%rdx, (%rax)	# D.18853, *_30
	.loc 1 4389 0
	movl	$1, -16(%rbp)	#, valid_target_option
.L469:
.LBE29:
	.loc 1 4383 0
	addq	$1, -8(%rbp)	#, j
.L468:
	.loc 1 4383 0 is_stmt 0 discriminator 1
	cmpq	$12, -8(%rbp)	#, j
	jbe	.L470	#,
.L467:
	.loc 1 4394 0 is_stmt 1
	cmpl	$0, -16(%rbp)	#, valid_target_option
	jne	.L461	#,
	.loc 1 4395 0
	movq	-24(%rbp), %rax	# name, tmp110
	movq	%rax, %rsi	# tmp110,
	movl	$.LC548, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.L461:
	.loc 1 4396 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	set_target_switch, .-set_target_switch
	.section	.rodata
.LC654:
	.string	" "
	.align 8
.LC655:
	.string	"%s%s%s version %s (%s)\n%s\tcompiled by GNU C version %s.\n"
.LC656:
	.string	"4.8.1"
.LC657:
	.string	"x86-64"
	.text
	.type	print_version, @function
print_version:
.LFB36:
	.loc 1 4406 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -8(%rbp)	# file, file
	movq	%rsi, -16(%rbp)	# indent, indent
	.loc 1 4412 0
	movq	version_string(%rip), %r8	# version_string, version_string.346
	movq	lang_hooks(%rip), %rsi	# lang_hooks.name, D.18858
	.loc 1 4418 0
	movq	-16(%rbp), %rax	# indent, tmp63
	movzbl	(%rax), %eax	# *indent_4(D), D.18859
	.loc 1 4412 0
	testb	%al, %al	# D.18859
	je	.L473	#,
	.loc 1 4412 0 is_stmt 0 discriminator 1
	movl	$.LC654, %eax	#, iftmp.347
	jmp	.L474	#
.L473:
	.loc 1 4412 0 discriminator 2
	movl	$.LC32, %eax	#, iftmp.347
.L474:
	.loc 1 4412 0 discriminator 3
	movq	-16(%rbp), %rdx	# indent, tmp64
	movq	-8(%rbp), %rdi	# file, tmp65
	movq	$.LC656, 16(%rsp)	#,
	movq	-16(%rbp), %rcx	# indent, tmp66
	movq	%rcx, 8(%rsp)	# tmp66,
	movq	$.LC657, (%rsp)	#,
	movq	%r8, %r9	# version_string.346,
	movq	%rsi, %r8	# D.18858,
	movq	%rax, %rcx	# iftmp.347,
	movl	$.LC655, %esi	#,
	movl	$0, %eax	#,
	call	fnotice	#
	.loc 1 4421 0 is_stmt 1 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	print_version, .-print_version
	.section	.rodata
.LC658:
	.string	"%s%s%s"
	.text
	.type	print_single_switch, @function
print_single_switch:
.LFB37:
	.loc 1 4432 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# file, file
	movl	%esi, -44(%rbp)	# pos, pos
	movl	%edx, -48(%rbp)	# max, max
	movq	%rcx, -56(%rbp)	# indent, indent
	movq	%r8, -64(%rbp)	# sep, sep
	movq	%r9, -72(%rbp)	# term, term
	.loc 1 4435 0
	movq	-64(%rbp), %rax	# sep, tmp71
	movq	%rax, %rdi	# tmp71,
	call	strlen	#
	movl	%eax, %ebx	# D.18864, D.18865
	movq	16(%rbp), %rdi	# type,
	call	strlen	#
	addl	%eax, %ebx	# D.18865, D.18865
	movq	24(%rbp), %rax	# name, tmp72
	movq	%rax, %rdi	# tmp72,
	call	strlen	#
	addl	%ebx, %eax	# D.18865, D.18865
	movl	%eax, -20(%rbp)	# D.18865, len
	.loc 1 4437 0
	cmpl	$0, -44(%rbp)	#, pos
	je	.L476	#,
	.loc 1 4438 0
	movl	-20(%rbp), %eax	# len, tmp73
	movl	-44(%rbp), %edx	# pos, tmp74
	addl	%edx, %eax	# tmp74, D.18866
	cmpl	-48(%rbp), %eax	# max, D.18866
	jle	.L476	#,
	.loc 1 4440 0
	movq	-40(%rbp), %rdx	# file, tmp75
	movq	-72(%rbp), %rax	# term, tmp76
	movq	%rdx, %rsi	# tmp75,
	movq	%rax, %rdi	# tmp76,
	call	fputs	#
	.loc 1 4441 0
	movl	$0, -44(%rbp)	#, pos
.L476:
	.loc 1 4443 0
	cmpl	$0, -44(%rbp)	#, pos
	jne	.L477	#,
	.loc 1 4445 0
	movq	-40(%rbp), %rdx	# file, tmp77
	movq	-56(%rbp), %rax	# indent, tmp78
	movq	%rdx, %rsi	# tmp77,
	movq	%rax, %rdi	# tmp78,
	call	fputs	#
	.loc 1 4446 0
	movq	-56(%rbp), %rax	# indent, tmp79
	movq	%rax, %rdi	# tmp79,
	call	strlen	#
	movl	%eax, -44(%rbp)	# D.18864, pos
.L477:
	.loc 1 4448 0
	movq	24(%rbp), %rcx	# name, tmp80
	movq	-64(%rbp), %rdx	# sep, tmp81
	movq	-40(%rbp), %rax	# file, tmp82
	movq	%rcx, %r8	# tmp80,
	movq	16(%rbp), %rcx	# type,
	movl	$.LC658, %esi	#,
	movq	%rax, %rdi	# tmp82,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 4449 0
	movl	-20(%rbp), %eax	# len, tmp83
	addl	%eax, -44(%rbp)	# tmp83, pos
	.loc 1 4450 0
	movl	-44(%rbp), %eax	# pos, D.18866
	.loc 1 4451 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	print_single_switch, .-print_single_switch
	.section	.rodata
.LC659:
	.string	"options passed: "
.LC660:
	.string	"-o"
.LC661:
	.string	"-quiet"
.LC662:
	.string	"options enabled: "
.LC663:
	.string	"-f"
.LC664:
	.string	"-m"
.LC665:
	.string	"-m%s"
	.text
	.type	print_switch_values, @function
print_switch_values:
.LFB38:
	.loc 1 4463 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$352, %rsp	#,
	movq	%rdi, -296(%rbp)	# file, file
	movl	%esi, -300(%rbp)	# pos, pos
	movl	%edx, -304(%rbp)	# max, max
	movq	%rcx, -312(%rbp)	# indent, indent
	movq	%r8, -320(%rbp)	# sep, sep
	movq	%r9, -328(%rbp)	# term, term
	.loc 1 4463 0
	movq	%fs:40, %rax	#, tmp193
	movq	%rax, -8(%rbp)	# tmp193, D.18875
	xorl	%eax, %eax	# tmp193
	.loc 1 4469 0
	movq	-312(%rbp), %rax	# indent, tmp96
	movzbl	(%rax), %eax	# *indent_17(D), D.18868
	testb	%al, %al	# D.18868
	je	.L480	#,
	.loc 1 4469 0 is_stmt 0 discriminator 1
	movl	$.LC654, %eax	#, iftmp.348
	jmp	.L481	#
.L480:
	.loc 1 4469 0 discriminator 2
	movl	$.LC32, %eax	#, iftmp.348
.L481:
	.loc 1 4469 0 discriminator 3
	movq	-328(%rbp), %r8	# term, tmp97
	movq	-312(%rbp), %rcx	# indent, tmp98
	movl	-304(%rbp), %edx	# max, tmp99
	movl	-300(%rbp), %esi	# pos, tmp100
	movq	-296(%rbp), %rdi	# file, tmp101
	movq	$.LC32, 8(%rsp)	#,
	movq	$.LC659, (%rsp)	#,
	movq	%r8, %r9	# tmp97,
	movq	%rax, %r8	# iftmp.348,
	call	print_single_switch	#
	movl	%eax, -300(%rbp)	# tmp102, pos
	.loc 1 4472 0 is_stmt 1 discriminator 3
	movq	save_argv(%rip), %rax	# save_argv, save_argv.349
	addq	$8, %rax	#, tmp103
	movq	%rax, -280(%rbp)	# tmp103, p
	jmp	.L482	#
.L489:
	.loc 1 4473 0
	movq	-280(%rbp), %rax	# p, tmp104
	movq	(%rax), %rax	# *p_14, D.18869
	movzbl	(%rax), %eax	# *_29, D.18868
	cmpb	$45, %al	#, D.18868
	jne	.L483	#,
	.loc 1 4476 0
	movq	-280(%rbp), %rax	# p, tmp105
	movq	(%rax), %rax	# *p_14, D.18869
	movl	$.LC660, %esi	#,
	movq	%rax, %rdi	# D.18869,
	call	strcmp	#
	testl	%eax, %eax	# D.18870
	jne	.L484	#,
	.loc 1 4478 0
	movq	-280(%rbp), %rax	# p, tmp106
	addq	$8, %rax	#, D.18871
	movq	(%rax), %rax	# *_33, D.18869
	testq	%rax, %rax	# D.18869
	je	.L485	#,
	.loc 1 4479 0
	addq	$8, -280(%rbp)	#, p
	.loc 1 4480 0
	jmp	.L483	#
.L485:
	jmp	.L483	#
.L484:
	.loc 1 4482 0
	movq	-280(%rbp), %rax	# p, tmp107
	movq	(%rax), %rax	# *p_14, D.18869
	movl	$.LC661, %esi	#,
	movq	%rax, %rdi	# D.18869,
	call	strcmp	#
	testl	%eax, %eax	# D.18870
	jne	.L486	#,
	.loc 1 4483 0
	jmp	.L483	#
.L486:
	.loc 1 4484 0
	movq	-280(%rbp), %rax	# p, tmp108
	movq	(%rax), %rax	# *p_14, D.18869
	movl	$.LC643, %esi	#,
	movq	%rax, %rdi	# D.18869,
	call	strcmp	#
	testl	%eax, %eax	# D.18870
	jne	.L487	#,
	.loc 1 4485 0
	jmp	.L483	#
.L487:
	.loc 1 4486 0
	movq	-280(%rbp), %rax	# p, tmp109
	movq	(%rax), %rax	# *p_14, D.18869
	addq	$1, %rax	#, D.18869
	movzbl	(%rax), %eax	# *_41, D.18868
	cmpb	$100, %al	#, D.18868
	jne	.L488	#,
	.loc 1 4487 0
	jmp	.L483	#
.L488:
	.loc 1 4489 0
	movq	-280(%rbp), %rax	# p, tmp110
	movq	(%rax), %rdi	# *p_14, D.18869
	movq	-328(%rbp), %r9	# term, tmp111
	movq	-320(%rbp), %r8	# sep, tmp112
	movq	-312(%rbp), %rcx	# indent, tmp113
	movl	-304(%rbp), %edx	# max, tmp114
	movl	-300(%rbp), %esi	# pos, tmp115
	movq	-296(%rbp), %rax	# file, tmp116
	movq	$.LC32, 8(%rsp)	#,
	movq	%rdi, (%rsp)	# D.18869,
	movq	%rax, %rdi	# tmp116,
	call	print_single_switch	#
	movl	%eax, -300(%rbp)	# tmp117, pos
.L483:
	.loc 1 4472 0
	addq	$8, -280(%rbp)	#, p
.L482:
	.loc 1 4472 0 is_stmt 0 discriminator 1
	movq	-280(%rbp), %rax	# p, tmp118
	movq	(%rax), %rax	# *p_14, D.18869
	testq	%rax, %rax	# D.18869
	jne	.L489	#,
	.loc 1 4491 0 is_stmt 1
	cmpl	$0, -300(%rbp)	#, pos
	jle	.L490	#,
	.loc 1 4492 0
	movq	-296(%rbp), %rdx	# file, tmp119
	movq	-328(%rbp), %rax	# term, tmp120
	movq	%rdx, %rsi	# tmp119,
	movq	%rax, %rdi	# tmp120,
	call	fputs	#
.L490:
	.loc 1 4498 0
	movq	-312(%rbp), %rax	# indent, tmp121
	movzbl	(%rax), %eax	# *indent_17(D), D.18868
	testb	%al, %al	# D.18868
	je	.L491	#,
	.loc 1 4498 0 is_stmt 0 discriminator 1
	movl	$.LC654, %eax	#, iftmp.350
	jmp	.L492	#
.L491:
	.loc 1 4498 0 discriminator 2
	movl	$.LC32, %eax	#, iftmp.350
.L492:
	.loc 1 4498 0 discriminator 3
	movq	-328(%rbp), %rsi	# term, tmp122
	movq	-312(%rbp), %rcx	# indent, tmp123
	movl	-304(%rbp), %edx	# max, tmp124
	movq	-296(%rbp), %rdi	# file, tmp125
	movq	$.LC32, 8(%rsp)	#,
	movq	$.LC662, (%rsp)	#,
	movq	%rsi, %r9	# tmp122,
	movq	%rax, %r8	# iftmp.350,
	movl	$0, %esi	#,
	call	print_single_switch	#
	movl	%eax, -300(%rbp)	# tmp126, pos
	.loc 1 4501 0 is_stmt 1 discriminator 3
	movq	$0, -288(%rbp)	#, j
	jmp	.L493	#
.L495:
	.loc 1 4502 0
	movq	-288(%rbp), %rax	# j, tmp127
	salq	$5, %rax	#, tmp128
	addq	$f_options, %rax	#, tmp129
	movq	8(%rax), %rax	# f_options[j_9].variable, D.18872
	movl	(%rax), %edx	# *_52, D.18870
	movq	-288(%rbp), %rax	# j, tmp130
	salq	$5, %rax	#, tmp131
	addq	$f_options+16, %rax	#, tmp132
	movl	(%rax), %eax	# f_options[j_9].on_value, D.18870
	cmpl	%eax, %edx	# D.18870, D.18870
	jne	.L494	#,
	.loc 1 4503 0
	movq	-288(%rbp), %rax	# j, tmp133
	salq	$5, %rax	#, tmp134
	addq	$f_options, %rax	#, tmp135
	movq	(%rax), %rdi	# f_options[j_9].string, D.18873
	movq	-328(%rbp), %r9	# term, tmp136
	movq	-320(%rbp), %r8	# sep, tmp137
	movq	-312(%rbp), %rcx	# indent, tmp138
	movl	-304(%rbp), %edx	# max, tmp139
	movl	-300(%rbp), %esi	# pos, tmp140
	movq	-296(%rbp), %rax	# file, tmp141
	movq	%rdi, 8(%rsp)	# D.18873,
	movq	$.LC663, (%rsp)	#,
	movq	%rax, %rdi	# tmp141,
	call	print_single_switch	#
	movl	%eax, -300(%rbp)	# tmp142, pos
.L494:
	.loc 1 4501 0
	addq	$1, -288(%rbp)	#, j
.L493:
	.loc 1 4501 0 is_stmt 0 discriminator 1
	cmpq	$96, -288(%rbp)	#, j
	jbe	.L495	#,
	.loc 1 4508 0 is_stmt 1
	movq	$0, -288(%rbp)	#, j
	jmp	.L496	#
.L498:
	.loc 1 4509 0
	movq	-288(%rbp), %rdx	# j, tmp143
	movq	%rdx, %rax	# tmp143, tmp144
	addq	%rax, %rax	# tmp144
	addq	%rdx, %rax	# tmp143, tmp144
	salq	$3, %rax	#, tmp145
	addq	$target_switches, %rax	#, tmp146
	movq	(%rax), %rax	# target_switches[j_10].name, D.18873
	movzbl	(%rax), %eax	# *_59, D.18868
	testb	%al, %al	# D.18868
	je	.L497	#,
	.loc 1 4510 0
	movq	-288(%rbp), %rdx	# j, tmp147
	movq	%rdx, %rax	# tmp147, tmp148
	addq	%rax, %rax	# tmp148
	addq	%rdx, %rax	# tmp147, tmp148
	salq	$3, %rax	#, tmp149
	addq	$target_switches, %rax	#, tmp150
	movl	8(%rax), %eax	# target_switches[j_10].value, D.18870
	testl	%eax, %eax	# D.18870
	jle	.L497	#,
	.loc 1 4511 0
	movq	-288(%rbp), %rdx	# j, tmp151
	movq	%rdx, %rax	# tmp151, tmp152
	addq	%rax, %rax	# tmp152
	addq	%rdx, %rax	# tmp151, tmp152
	salq	$3, %rax	#, tmp153
	addq	$target_switches, %rax	#, tmp154
	movl	8(%rax), %edx	# target_switches[j_10].value, D.18870
	movl	target_flags(%rip), %eax	# target_flags, target_flags.351
	movl	%edx, %ecx	# D.18870, D.18870
	andl	%eax, %ecx	# target_flags.351, D.18870
	.loc 1 4512 0
	movq	-288(%rbp), %rdx	# j, tmp155
	movq	%rdx, %rax	# tmp155, tmp156
	addq	%rax, %rax	# tmp156
	addq	%rdx, %rax	# tmp155, tmp156
	salq	$3, %rax	#, tmp157
	addq	$target_switches, %rax	#, tmp158
	movl	8(%rax), %eax	# target_switches[j_10].value, D.18870
	.loc 1 4511 0
	cmpl	%eax, %ecx	# D.18870, D.18870
	jne	.L497	#,
	.loc 1 4514 0
	movq	-288(%rbp), %rdx	# j, tmp159
	movq	%rdx, %rax	# tmp159, tmp160
	addq	%rax, %rax	# tmp160
	addq	%rdx, %rax	# tmp159, tmp160
	salq	$3, %rax	#, tmp161
	addq	$target_switches, %rax	#, tmp162
	movq	(%rax), %rdi	# target_switches[j_10].name, D.18873
	movq	-328(%rbp), %r9	# term, tmp163
	movq	-320(%rbp), %r8	# sep, tmp164
	movq	-312(%rbp), %rcx	# indent, tmp165
	movl	-304(%rbp), %edx	# max, tmp166
	movl	-300(%rbp), %esi	# pos, tmp167
	movq	-296(%rbp), %rax	# file, tmp168
	movq	%rdi, 8(%rsp)	# D.18873,
	movq	$.LC664, (%rsp)	#,
	movq	%rax, %rdi	# tmp168,
	call	print_single_switch	#
	movl	%eax, -300(%rbp)	# tmp169, pos
.L497:
	.loc 1 4508 0
	addq	$1, -288(%rbp)	#, j
.L496:
	.loc 1 4508 0 is_stmt 0 discriminator 1
	cmpq	$55, -288(%rbp)	#, j
	jbe	.L498	#,
	.loc 1 4519 0 is_stmt 1
	movq	$0, -288(%rbp)	#, j
	jmp	.L499	#
.L501:
	.loc 1 4520 0
	movq	-288(%rbp), %rdx	# j, tmp170
	movq	%rdx, %rax	# tmp170, tmp171
	addq	%rax, %rax	# tmp171
	addq	%rdx, %rax	# tmp170, tmp171
	salq	$3, %rax	#, tmp172
	addq	$target_options, %rax	#, tmp173
	movq	8(%rax), %rax	# target_options[j_11].variable, D.18874
	movq	(%rax), %rax	# *_70, D.18873
	testq	%rax, %rax	# D.18873
	je	.L500	#,
.LBB30:
	.loc 1 4523 0
	movq	-288(%rbp), %rdx	# j, tmp174
	movq	%rdx, %rax	# tmp174, tmp175
	addq	%rax, %rax	# tmp175
	addq	%rdx, %rax	# tmp174, tmp175
	salq	$3, %rax	#, tmp176
	addq	$target_options, %rax	#, tmp177
	movq	(%rax), %rdx	# target_options[j_11].prefix, D.18873
	leaq	-272(%rbp), %rax	#, tmp178
	movl	$.LC665, %esi	#,
	movq	%rax, %rdi	# tmp178,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 1 4525 0
	movq	-288(%rbp), %rdx	# j, tmp179
	movq	%rdx, %rax	# tmp179, tmp180
	addq	%rax, %rax	# tmp180
	addq	%rdx, %rax	# tmp179, tmp180
	salq	$3, %rax	#, tmp181
	addq	$target_options, %rax	#, tmp182
	movq	8(%rax), %rax	# target_options[j_11].variable, D.18874
	.loc 1 4524 0
	movq	(%rax), %rdi	# *_73, D.18873
	movq	-328(%rbp), %r9	# term, tmp183
	movq	-320(%rbp), %r8	# sep, tmp184
	movq	-312(%rbp), %rcx	# indent, tmp185
	movl	-304(%rbp), %edx	# max, tmp186
	movl	-300(%rbp), %esi	# pos, tmp187
	movq	-296(%rbp), %rax	# file, tmp188
	movq	%rdi, 8(%rsp)	# D.18873,
	leaq	-272(%rbp), %rdi	#, tmp189
	movq	%rdi, (%rsp)	# tmp189,
	movq	%rax, %rdi	# tmp188,
	call	print_single_switch	#
	movl	%eax, -300(%rbp)	# tmp190, pos
.L500:
.LBE30:
	.loc 1 4519 0
	addq	$1, -288(%rbp)	#, j
.L499:
	.loc 1 4519 0 is_stmt 0 discriminator 1
	cmpq	$12, -288(%rbp)	#, j
	jbe	.L501	#,
	.loc 1 4529 0 is_stmt 1
	movq	-296(%rbp), %rdx	# file, tmp191
	movq	-328(%rbp), %rax	# term, tmp192
	movq	%rdx, %rsi	# tmp191,
	movq	%rax, %rdi	# tmp192,
	call	fputs	#
	.loc 1 4530 0
	movq	-8(%rbp), %rax	# D.18875, tmp194
	xorq	%fs:40, %rax	#, tmp194
	je	.L502	#,
	call	__stack_chk_fail	#
.L502:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	print_switch_values, .-print_switch_values
	.section	.rodata
.LC666:
	.string	"-"
.LC667:
	.string	"can't open %s for writing"
.LC668:
	.string	"\t.intel_syntax\n"
.LC669:
	.string	"#"
.LC670:
	.string	"\n"
	.text
	.type	init_asm_output, @function
init_asm_output:
.LFB39:
	.loc 1 4539 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# name, name
	.loc 1 4540 0
	cmpq	$0, -24(%rbp)	#, name
	jne	.L504	#,
	.loc 1 4540 0 is_stmt 0 discriminator 1
	movq	asm_file_name(%rip), %rax	# asm_file_name, asm_file_name.352
	testq	%rax, %rax	# asm_file_name.352
	jne	.L504	#,
	.loc 1 4541 0 is_stmt 1
	movq	stdout(%rip), %rax	# stdout, stdout.353
	movq	%rax, asm_out_file(%rip)	# stdout.353, asm_out_file
	jmp	.L505	#
.L504:
	.loc 1 4544 0
	movq	asm_file_name(%rip), %rax	# asm_file_name, asm_file_name.354
	testq	%rax, %rax	# asm_file_name.354
	jne	.L506	#,
.LBB31:
	.loc 1 4546 0
	movq	dump_base_name(%rip), %rax	# dump_base_name, dump_base_name.355
	movq	%rax, %rdi	# dump_base_name.355,
	call	strlen	#
	movl	%eax, -12(%rbp)	# D.18883, len
	.loc 1 4547 0
	movl	-12(%rbp), %eax	# len, tmp87
	addl	$6, %eax	#, D.18884
	cltq
	movq	%rax, %rdi	# D.18883,
	call	xmalloc	#
	movq	%rax, -8(%rbp)	# tmp88, dumpname
	.loc 1 4548 0
	movl	-12(%rbp), %eax	# len, tmp89
	addl	$1, %eax	#, D.18884
	movslq	%eax, %rdx	# D.18884, D.18883
	movq	dump_base_name(%rip), %rcx	# dump_base_name, dump_base_name.356
	movq	-8(%rbp), %rax	# dumpname, tmp90
	movq	%rcx, %rsi	# dump_base_name.356,
	movq	%rax, %rdi	# tmp90,
	call	memcpy	#
	.loc 1 4549 0
	movl	-12(%rbp), %edx	# len, tmp91
	movq	-8(%rbp), %rax	# dumpname, tmp92
	movl	%edx, %esi	# tmp91,
	movq	%rax, %rdi	# tmp92,
	call	strip_off_ending	#
	.loc 1 4550 0
	movq	-8(%rbp), %rax	# dumpname, tmp93
	movq	$-1, %rcx	#, tmp97
	movq	%rax, %rdx	# tmp93, tmp96
	movl	$0, %eax	#, tmp98
	movq	%rdx, %rdi	# tmp96, tmp96
	repnz scasb
	movq	%rcx, %rax	# tmp94, tmp94
	notq	%rax	# tmp95
	leaq	-1(%rax), %rdx	#, D.18883
	movq	-8(%rbp), %rax	# dumpname, tmp99
	addq	%rdx, %rax	# D.18883, D.18885
	movw	$29486, (%rax)	#, MEM[(void *)_15]
	movb	$0, 2(%rax)	#, MEM[(void *)_15]
	.loc 1 4551 0
	movq	-8(%rbp), %rax	# dumpname, tmp100
	movq	%rax, asm_file_name(%rip)	# tmp100, asm_file_name
.L506:
.LBE31:
	.loc 1 4553 0
	movq	asm_file_name(%rip), %rax	# asm_file_name, asm_file_name.357
	movl	$.LC666, %esi	#,
	movq	%rax, %rdi	# asm_file_name.357,
	call	strcmp	#
	testl	%eax, %eax	# D.18884
	jne	.L507	#,
	.loc 1 4554 0
	movq	stdout(%rip), %rax	# stdout, stdout.358
	movq	%rax, asm_out_file(%rip)	# stdout.358, asm_out_file
	jmp	.L508	#
.L507:
	.loc 1 4556 0
	movq	asm_file_name(%rip), %rax	# asm_file_name, asm_file_name.359
	movl	$.LC554, %esi	#,
	movq	%rax, %rdi	# asm_file_name.359,
	call	fopen	#
	movq	%rax, asm_out_file(%rip)	# asm_out_file.360, asm_out_file
.L508:
	.loc 1 4557 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.361
	testq	%rax, %rax	# asm_out_file.361
	jne	.L505	#,
	.loc 1 4558 0
	movq	asm_file_name(%rip), %rax	# asm_file_name, asm_file_name.362
	movq	%rax, %rsi	# asm_file_name.362,
	movl	$.LC667, %edi	#,
	movl	$0, %eax	#,
	call	fatal_io_error	#
.L505:
	.loc 1 4566 0
	movl	flag_syntax_only(%rip), %eax	# flag_syntax_only, flag_syntax_only.363
	testl	%eax, %eax	# flag_syntax_only.363
	jne	.L503	#,
	.loc 1 4569 0
	movq	main_input_filename(%rip), %rdx	# main_input_filename, main_input_filename.364
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.365
	movq	%rdx, %rsi	# main_input_filename.364,
	movq	%rax, %rdi	# asm_out_file.365,
	call	output_file_directive	#
	movl	ix86_asm_dialect(%rip), %eax	# ix86_asm_dialect, ix86_asm_dialect.366
	cmpl	$1, %eax	#, ix86_asm_dialect.366
	jne	.L510	#,
	.loc 1 4569 0 is_stmt 0 discriminator 1
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.367
	movq	%rax, %rcx	# asm_out_file.367,
	movl	$15, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC668, %edi	#,
	call	fwrite	#
.L510:
	.loc 1 4573 0 is_stmt 1
	movl	flag_verbose_asm(%rip), %eax	# flag_verbose_asm, flag_verbose_asm.368
	testl	%eax, %eax	# flag_verbose_asm.368
	je	.L503	#,
	.loc 1 4576 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.369
	movl	$.LC669, %esi	#,
	movq	%rax, %rdi	# asm_out_file.369,
	call	print_version	#
	.loc 1 4577 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.370
	movl	$.LC670, %r9d	#,
	movl	$.LC654, %r8d	#,
	movl	$.LC669, %ecx	#,
	movl	$75, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# asm_out_file.370,
	call	print_switch_values	#
	.loc 1 4581 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.371
	movq	%rax, %rsi	# asm_out_file.371,
	movl	$10, %edi	#,
	call	fputc	#
.L503:
	.loc 1 4585 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	init_asm_output, .-init_asm_output
	.type	general_init, @function
general_init:
.LFB40:
	.loc 1 4593 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# argv0, argv0
	.loc 1 4596 0
	movq	-24(%rbp), %rax	# argv0, tmp64
	movq	%rax, %rdi	# tmp64,
	call	strlen	#
	movq	-24(%rbp), %rdx	# argv0, tmp68
	addq	%rdx, %rax	# tmp68, tmp67
	movq	%rax, -8(%rbp)	# tmp67, p
	.loc 1 4597 0
	jmp	.L512	#
.L514:
	.loc 1 4598 0
	subq	$1, -8(%rbp)	#, p
.L512:
	.loc 1 4597 0 discriminator 1
	movq	-8(%rbp), %rax	# p, tmp69
	cmpq	-24(%rbp), %rax	# argv0, tmp69
	je	.L513	#,
	.loc 1 4597 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# p, tmp70
	subq	$1, %rax	#, D.18892
	movzbl	(%rax), %eax	# *_5, D.18893
	cmpb	$47, %al	#, D.18893
	jne	.L514	#,
.L513:
	.loc 1 4599 0 is_stmt 1
	movq	-8(%rbp), %rax	# p, tmp71
	movq	%rax, progname(%rip)	# tmp71, progname
	.loc 1 4601 0
	movq	progname(%rip), %rax	# progname, progname.372
	movq	%rax, %rdi	# progname.372,
	call	xmalloc_set_program_name	#
	.loc 1 4607 0
	movl	$float_signal, %esi	#,
	movl	$8, %edi	#,
	call	signal	#
	.loc 1 4611 0
	movl	$crash_signal, %esi	#,
	movl	$11, %edi	#,
	call	signal	#
	.loc 1 4614 0
	movl	$crash_signal, %esi	#,
	movl	$4, %edi	#,
	call	signal	#
	.loc 1 4617 0
	movl	$crash_signal, %esi	#,
	movl	$7, %edi	#,
	call	signal	#
	.loc 1 4620 0
	movl	$crash_signal, %esi	#,
	movl	$6, %edi	#,
	call	signal	#
	.loc 1 4628 0
	movq	global_dc(%rip), %rax	# global_dc, global_dc.373
	movq	%rax, %rdi	# global_dc.373,
	call	diagnostic_initialize	#
	.loc 1 4629 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	general_init, .-general_init
	.section	.rodata
.LC671:
	.string	"-O"
	.align 8
.LC672:
	.string	"ignoring command line option '%s'"
	.align 8
.LC673:
	.string	"(it is valid for %s but not the selected language)"
	.align 8
.LC674:
	.string	"-Wuninitialized is not supported without -O"
	.text
	.type	parse_options_and_default_flags, @function
parse_options_and_default_flags:
.LFB41:
	.loc 1 4639 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -52(%rbp)	# argc, argc
	movq	%rsi, -64(%rbp)	# argv, argv
	.loc 1 4643 0
	movl	-52(%rbp), %eax	# argc, tmp141
	movl	%eax, save_argc(%rip)	# tmp141, save_argc
	.loc 1 4644 0
	movq	-64(%rbp), %rax	# argv, tmp142
	movq	%rax, save_argv(%rip)	# tmp142, save_argv
	.loc 1 4647 0
	call	init_reg_sets	#
	.loc 1 4650 0
	movl	$6, %esi	#,
	movl	$lang_independent_params, %edi	#,
	call	add_params	#
	.loc 1 4653 0
	movq	lang_hooks+16(%rip), %rax	# lang_hooks.init_options, D.18894
	call	*%rax	# D.18894
	.loc 1 4657 0
	movl	$1, -44(%rbp)	#, i
	jmp	.L516	#
.L520:
	.loc 1 4659 0
	movl	-44(%rbp), %eax	# i, tmp143
	cltq
	leaq	0(,%rax,8), %rdx	#, D.18895
	movq	-64(%rbp), %rax	# argv, tmp144
	addq	%rdx, %rax	# D.18895, D.18896
	movq	(%rax), %rax	# *_14, D.18897
	movl	$.LC671, %esi	#,
	movq	%rax, %rdi	# D.18897,
	call	strcmp	#
	testl	%eax, %eax	# D.18898
	jne	.L517	#,
	.loc 1 4661 0
	movl	$1, optimize(%rip)	#, optimize
	.loc 1 4662 0
	movl	$0, optimize_size(%rip)	#, optimize_size
	jmp	.L518	#
.L517:
	.loc 1 4664 0
	movl	-44(%rbp), %eax	# i, tmp145
	cltq
	leaq	0(,%rax,8), %rdx	#, D.18895
	movq	-64(%rbp), %rax	# argv, tmp146
	addq	%rdx, %rax	# D.18895, D.18896
	movq	(%rax), %rax	# *_19, D.18897
	movzbl	(%rax), %eax	# *_20, D.18899
	cmpb	$45, %al	#, D.18899
	jne	.L518	#,
	.loc 1 4664 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp147
	cltq
	leaq	0(,%rax,8), %rdx	#, D.18895
	movq	-64(%rbp), %rax	# argv, tmp148
	addq	%rdx, %rax	# D.18895, D.18896
	movq	(%rax), %rax	# *_24, D.18897
	addq	$1, %rax	#, D.18897
	movzbl	(%rax), %eax	# *_26, D.18899
	cmpb	$79, %al	#, D.18899
	jne	.L518	#,
.LBB32:
	.loc 1 4667 0 is_stmt 1
	movl	-44(%rbp), %eax	# i, tmp149
	cltq
	leaq	0(,%rax,8), %rdx	#, D.18895
	movq	-64(%rbp), %rax	# argv, tmp150
	addq	%rdx, %rax	# D.18895, D.18896
	movq	(%rax), %rax	# *_30, D.18897
	addq	$2, %rax	#, tmp151
	movq	%rax, -16(%rbp)	# tmp151, p
	.loc 1 4669 0
	movq	-16(%rbp), %rax	# p, tmp152
	movzbl	(%rax), %eax	# *p_32, D.18899
	cmpb	$115, %al	#, D.18899
	jne	.L519	#,
	.loc 1 4669 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# p, tmp153
	addq	$1, %rax	#, D.18897
	movzbl	(%rax), %eax	# *_34, D.18899
	testb	%al, %al	# D.18899
	jne	.L519	#,
	.loc 1 4671 0 is_stmt 1
	movl	$1, optimize_size(%rip)	#, optimize_size
	.loc 1 4674 0
	movl	$2, optimize(%rip)	#, optimize
	jmp	.L518	#
.L519:
.LBB33:
	.loc 1 4678 0
	movq	-16(%rbp), %rax	# p, tmp154
	leaq	-2(%rax), %rcx	#, D.18900
	movq	-16(%rbp), %rax	# p, tmp155
	movl	$-1, %edx	#,
	movq	%rcx, %rsi	# D.18900,
	movq	%rax, %rdi	# tmp155,
	call	read_integral_parameter	#
	movl	%eax, -28(%rbp)	# tmp156, optimize_val
	.loc 1 4679 0
	cmpl	$-1, -28(%rbp)	#, optimize_val
	je	.L518	#,
	.loc 1 4681 0
	movl	-28(%rbp), %eax	# optimize_val, tmp157
	movl	%eax, optimize(%rip)	# tmp157, optimize
	.loc 1 4682 0
	movl	$0, optimize_size(%rip)	#, optimize_size
.L518:
.LBE33:
.LBE32:
	.loc 1 4657 0
	addl	$1, -44(%rbp)	#, i
.L516:
	.loc 1 4657 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp158
	cmpl	-52(%rbp), %eax	# argc, tmp158
	jl	.L520	#,
	.loc 1 4688 0 is_stmt 1
	movl	optimize(%rip), %eax	# optimize, optimize.374
	testl	%eax, %eax	# optimize.374
	jne	.L521	#,
	.loc 1 4690 0
	movl	$0, flag_merge_constants(%rip)	#, flag_merge_constants
.L521:
	.loc 1 4693 0
	movl	optimize(%rip), %eax	# optimize, optimize.375
	testl	%eax, %eax	# optimize.375
	jle	.L522	#,
	.loc 1 4695 0
	movl	$1, flag_defer_pop(%rip)	#, flag_defer_pop
	.loc 1 4696 0
	movl	$1, flag_thread_jumps(%rip)	#, flag_thread_jumps
	.loc 1 4703 0
	movl	$1, flag_guess_branch_prob(%rip)	#, flag_guess_branch_prob
	.loc 1 4704 0
	movl	$1, flag_cprop_registers(%rip)	#, flag_cprop_registers
.L522:
	.loc 1 4707 0
	movl	optimize(%rip), %eax	# optimize, optimize.376
	cmpl	$1, %eax	#, optimize.376
	jle	.L523	#,
	.loc 1 4709 0
	movl	$1, flag_optimize_sibling_calls(%rip)	#, flag_optimize_sibling_calls
	.loc 1 4710 0
	movl	$1, flag_cse_follow_jumps(%rip)	#, flag_cse_follow_jumps
	.loc 1 4711 0
	movl	$1, flag_cse_skip_blocks(%rip)	#, flag_cse_skip_blocks
	.loc 1 4712 0
	movl	$1, flag_gcse(%rip)	#, flag_gcse
	.loc 1 4713 0
	movl	$1, flag_expensive_optimizations(%rip)	#, flag_expensive_optimizations
	.loc 1 4714 0
	movl	$1, flag_strength_reduce(%rip)	#, flag_strength_reduce
	.loc 1 4715 0
	movl	$1, flag_rerun_cse_after_loop(%rip)	#, flag_rerun_cse_after_loop
	.loc 1 4716 0
	movl	$1, flag_rerun_loop_opt(%rip)	#, flag_rerun_loop_opt
	.loc 1 4717 0
	movl	$1, flag_caller_saves(%rip)	#, flag_caller_saves
	.loc 1 4718 0
	movl	$1, flag_force_mem(%rip)	#, flag_force_mem
	.loc 1 4719 0
	movl	$1, flag_peephole2(%rip)	#, flag_peephole2
	.loc 1 4721 0
	movl	$1, flag_schedule_insns(%rip)	#, flag_schedule_insns
	.loc 1 4722 0
	movl	$1, flag_schedule_insns_after_reload(%rip)	#, flag_schedule_insns_after_reload
	.loc 1 4724 0
	movl	$1, flag_regmove(%rip)	#, flag_regmove
	.loc 1 4725 0
	movl	$1, flag_strict_aliasing(%rip)	#, flag_strict_aliasing
	.loc 1 4726 0
	movl	$1, flag_delete_null_pointer_checks(%rip)	#, flag_delete_null_pointer_checks
	.loc 1 4727 0
	movl	$1, flag_reorder_blocks(%rip)	#, flag_reorder_blocks
.L523:
	.loc 1 4730 0
	movl	optimize(%rip), %eax	# optimize, optimize.377
	cmpl	$2, %eax	#, optimize.377
	jle	.L524	#,
	.loc 1 4732 0
	movl	$1, flag_inline_functions(%rip)	#, flag_inline_functions
	.loc 1 4733 0
	movl	$1, flag_rename_registers(%rip)	#, flag_rename_registers
.L524:
	.loc 1 4736 0
	movl	optimize(%rip), %eax	# optimize, optimize.378
	cmpl	$1, %eax	#, optimize.378
	jle	.L525	#,
	.loc 1 4736 0 is_stmt 0 discriminator 1
	movl	optimize_size(%rip), %eax	# optimize_size, optimize_size.379
	testl	%eax, %eax	# optimize_size.379
	je	.L526	#,
.L525:
	.loc 1 4738 0 is_stmt 1
	movl	$1, align_loops(%rip)	#, align_loops
	.loc 1 4739 0
	movl	$1, align_jumps(%rip)	#, align_jumps
	.loc 1 4740 0
	movl	$1, align_labels(%rip)	#, align_labels
	.loc 1 4741 0
	movl	$1, align_functions(%rip)	#, align_functions
.L526:
	.loc 1 4745 0
	movl	$1, flag_signed_char(%rip)	#, flag_signed_char
	.loc 1 4753 0
	movl	$0, target_flags(%rip)	#, target_flags
	.loc 1 4754 0
	movl	$.LC32, %edi	#,
	call	set_target_switch	#
	.loc 1 4764 0
	movl	optimize_size(%rip), %edx	# optimize_size, optimize_size.380
	movl	optimize(%rip), %eax	# optimize, optimize.381
	movl	%edx, %esi	# optimize_size.380,
	movl	%eax, %edi	# optimize.381,
	call	optimization_options	#
	.loc 1 4768 0
	movl	$1, -44(%rbp)	#, i
	jmp	.L527	#
.L541:
.LBB34:
	.loc 1 4774 0
	movq	lang_hooks+24(%rip), %rax	# lang_hooks.decode_option, D.18901
	movl	-44(%rbp), %edx	# i, tmp159
	movslq	%edx, %rdx	# tmp159, D.18895
	leaq	0(,%rdx,8), %rcx	#, D.18895
	movq	-64(%rbp), %rdx	# argv, tmp160
	addq	%rdx, %rcx	# tmp160, D.18896
	movl	-44(%rbp), %edx	# i, tmp161
	movl	-52(%rbp), %esi	# argc, tmp162
	subl	%edx, %esi	# tmp161, D.18898
	movl	%esi, %edx	# D.18898, D.18898
	movq	%rcx, %rsi	# D.18896,
	movl	%edx, %edi	# D.18898,
	call	*%rax	# D.18901
	movl	%eax, -40(%rbp)	# tmp163, lang_processed
	.loc 1 4776 0
	cmpl	$0, -40(%rbp)	#, lang_processed
	js	.L528	#,
	.loc 1 4780 0
	movl	-44(%rbp), %eax	# i, tmp164
	cltq
	leaq	0(,%rax,8), %rdx	#, D.18895
	movq	-64(%rbp), %rax	# argv, tmp165
	addq	%rax, %rdx	# tmp165, D.18896
	movl	-44(%rbp), %eax	# i, tmp166
	movl	-52(%rbp), %ecx	# argc, tmp167
	subl	%eax, %ecx	# tmp166, D.18898
	movl	%ecx, %eax	# D.18898, D.18898
	movq	%rdx, %rsi	# D.18896,
	movl	%eax, %edi	# D.18898,
	call	independent_decode_option	#
	movl	%eax, -36(%rbp)	# D.18902, indep_processed
	jmp	.L529	#
.L528:
	.loc 1 4783 0
	negl	-40(%rbp)	# lang_processed
	.loc 1 4784 0
	movl	$0, -36(%rbp)	#, indep_processed
.L529:
	.loc 1 4787 0
	cmpl	$0, -40(%rbp)	#, lang_processed
	jne	.L530	#,
	.loc 1 4787 0 is_stmt 0 discriminator 1
	cmpl	$0, -36(%rbp)	#, indep_processed
	je	.L531	#,
.L530:
	.loc 1 4788 0 is_stmt 1
	movl	-40(%rbp), %eax	# lang_processed, tmp168
	cmpl	%eax, -36(%rbp)	# tmp168, indep_processed
	cmovge	-36(%rbp), %eax	# indep_processed,, D.18898
	addl	%eax, -44(%rbp)	# D.18898, i
	jmp	.L527	#
.L531:
.LBB35:
	.loc 1 4791 0
	movq	$0, -8(%rbp)	#, option
	.loc 1 4792 0
	movq	$0, -24(%rbp)	#, lang
	.loc 1 4802 0
	movl	$0, -32(%rbp)	#, j
	jmp	.L532	#
.L536:
	.loc 1 4804 0
	movl	-32(%rbp), %eax	# j, tmp169
	salq	$4, %rax	#, tmp170
	addq	$documented_lang_options, %rax	#, tmp171
	movq	(%rax), %rax	# documented_lang_options[j_7].option, tmp172
	movq	%rax, -8(%rbp)	# tmp172, option
	.loc 1 4806 0
	cmpq	$0, -8(%rbp)	#, option
	jne	.L533	#,
	.loc 1 4807 0
	movl	-32(%rbp), %eax	# j, tmp173
	salq	$4, %rax	#, tmp174
	addq	$documented_lang_options, %rax	#, tmp175
	movq	8(%rax), %rax	# documented_lang_options[j_7].description, tmp176
	movq	%rax, -24(%rbp)	# tmp176, lang
	jmp	.L534	#
.L533:
	.loc 1 4808 0
	movq	-8(%rbp), %rax	# option, tmp177
	movq	%rax, %rdi	# tmp177,
	call	strlen	#
	movq	%rax, %rdx	#, D.18895
	movl	-44(%rbp), %eax	# i, tmp178
	cltq
	leaq	0(,%rax,8), %rcx	#, D.18895
	movq	-64(%rbp), %rax	# argv, tmp179
	addq	%rcx, %rax	# D.18895, D.18896
	movq	(%rax), %rax	# *_70, D.18897
	movq	-8(%rbp), %rcx	# option, tmp180
	movq	%rcx, %rsi	# tmp180,
	movq	%rax, %rdi	# D.18897,
	call	strncmp	#
	testl	%eax, %eax	# D.18898
	jne	.L534	#,
	.loc 1 4809 0
	jmp	.L535	#
.L534:
	.loc 1 4802 0
	addl	$1, -32(%rbp)	#, j
.L532:
	.loc 1 4802 0 is_stmt 0 discriminator 1
	cmpl	$107, -32(%rbp)	#, j
	jbe	.L536	#,
.L535:
	.loc 1 4812 0 is_stmt 1
	cmpl	$108, -32(%rbp)	#, j
	je	.L537	#,
	.loc 1 4814 0
	movl	extra_warnings(%rip), %eax	# extra_warnings, extra_warnings.382
	testl	%eax, %eax	# extra_warnings.382
	je	.L539	#,
	.loc 1 4816 0
	movl	-44(%rbp), %eax	# i, tmp181
	cltq
	leaq	0(,%rax,8), %rdx	#, D.18895
	movq	-64(%rbp), %rax	# argv, tmp182
	addq	%rdx, %rax	# D.18895, D.18896
	movq	(%rax), %rax	# *_77, D.18897
	movq	%rax, %rsi	# D.18897,
	movl	$.LC672, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	.loc 1 4817 0
	cmpq	$0, -24(%rbp)	#, lang
	je	.L539	#,
	.loc 1 4819 0
	movq	-24(%rbp), %rax	# lang, tmp183
	movq	%rax, %rsi	# tmp183,
	movl	$.LC673, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	jmp	.L539	#
.L537:
	.loc 1 4823 0
	movl	-44(%rbp), %eax	# i, tmp184
	cltq
	leaq	0(,%rax,8), %rdx	#, D.18895
	movq	-64(%rbp), %rax	# argv, tmp185
	addq	%rdx, %rax	# D.18895, D.18896
	movq	(%rax), %rax	# *_81, D.18897
	movzbl	(%rax), %eax	# *_82, D.18899
	cmpb	$45, %al	#, D.18899
	jne	.L540	#,
	.loc 1 4823 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp186
	cltq
	leaq	0(,%rax,8), %rdx	#, D.18895
	movq	-64(%rbp), %rax	# argv, tmp187
	addq	%rdx, %rax	# D.18895, D.18896
	movq	(%rax), %rax	# *_86, D.18897
	addq	$1, %rax	#, D.18897
	movzbl	(%rax), %eax	# *_88, D.18899
	cmpb	$103, %al	#, D.18899
	jne	.L540	#,
	.loc 1 4824 0 is_stmt 1
	movl	-44(%rbp), %eax	# i, tmp188
	cltq
	leaq	0(,%rax,8), %rdx	#, D.18895
	movq	-64(%rbp), %rax	# argv, tmp189
	addq	%rdx, %rax	# D.18895, D.18896
	movq	(%rax), %rax	# *_92, D.18897
	addq	$2, %rax	#, D.18897
	movq	%rax, %rsi	# D.18897,
	movl	$.LC639, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	jmp	.L539	#
.L540:
	.loc 1 4826 0
	movl	-44(%rbp), %eax	# i, tmp190
	cltq
	leaq	0(,%rax,8), %rdx	#, D.18895
	movq	-64(%rbp), %rax	# argv, tmp191
	addq	%rdx, %rax	# D.18895, D.18896
	movq	(%rax), %rax	# *_97, D.18897
	movq	%rax, %rsi	# D.18897,
	movl	$.LC627, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.L539:
	.loc 1 4828 0
	addl	$1, -44(%rbp)	#, i
.L527:
.LBE35:
.LBE34:
	.loc 1 4768 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp192
	cmpl	-52(%rbp), %eax	# argc, tmp192
	jl	.L541	#,
	.loc 1 4832 0
	movl	flag_no_inline(%rip), %eax	# flag_no_inline, flag_no_inline.383
	cmpl	$2, %eax	#, flag_no_inline.383
	jne	.L542	#,
	.loc 1 4833 0
	movl	$0, flag_no_inline(%rip)	#, flag_no_inline
	jmp	.L543	#
.L542:
	.loc 1 4835 0
	movl	flag_no_inline(%rip), %eax	# flag_no_inline, flag_no_inline.384
	movl	%eax, flag_really_no_inline(%rip)	# flag_no_inline.384, flag_really_no_inline
.L543:
	.loc 1 4842 0
	movl	optimize(%rip), %eax	# optimize, optimize.385
	testl	%eax, %eax	# optimize.385
	jne	.L544	#,
	.loc 1 4846 0
	movl	$1, flag_no_inline(%rip)	#, flag_no_inline
	.loc 1 4847 0
	movl	$0, warn_inline(%rip)	#, warn_inline
	.loc 1 4852 0
	movl	warn_uninitialized(%rip), %eax	# warn_uninitialized, warn_uninitialized.386
	cmpl	$1, %eax	#, warn_uninitialized.386
	jne	.L544	#,
	.loc 1 4853 0
	movl	$.LC674, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L544:
	.loc 1 4856 0
	movl	flag_really_no_inline(%rip), %eax	# flag_really_no_inline, flag_really_no_inline.387
	cmpl	$2, %eax	#, flag_really_no_inline.387
	jne	.L545	#,
	.loc 1 4857 0
	movl	flag_no_inline(%rip), %eax	# flag_no_inline, flag_no_inline.388
	movl	%eax, flag_really_no_inline(%rip)	# flag_no_inline.388, flag_really_no_inline
.L545:
	.loc 1 4861 0
	movq	lang_hooks+32(%rip), %rax	# lang_hooks.post_options, D.18894
	call	*%rax	# D.18894
	.loc 1 4862 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	parse_options_and_default_flags, .-parse_options_and_default_flags
	.section	.rodata
	.align 8
.LC675:
	.string	"this target machine does not have delayed branches"
	.align 8
.LC676:
	.string	"profiling does not work without a frame pointer"
.LC677:
	.string	"_"
.LC678:
	.string	"no-"
	.align 8
.LC679:
	.string	"-f%sleading-underscore not supported on this target machine"
	.align 8
.LC680:
	.string	"-ffunction-sections not supported for this target"
	.align 8
.LC681:
	.string	"-fdata-sections not supported for this target"
	.align 8
.LC682:
	.string	"-ffunction-sections disabled; it makes profiling impossible"
	.align 8
.LC683:
	.string	"-fprefetch-loop-arrays not supported for this target (try -march switches)"
	.align 8
.LC684:
	.string	"-fprefetch-loop-arrays is not supported with -Os"
	.text
	.type	process_options, @function
process_options:
.LFB42:
	.loc 1 4867 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4870 0
	call	override_options	#
	.loc 1 4875 0
	movl	align_loops(%rip), %eax	# align_loops, align_loops.389
	testl	%eax, %eax	# align_loops.389
	jg	.L547	#,
	.loc 1 4875 0 is_stmt 0 discriminator 1
	movl	$1, align_loops(%rip)	#, align_loops
.L547:
	.loc 1 4876 0 is_stmt 1
	movl	align_loops_max_skip(%rip), %edx	# align_loops_max_skip, align_loops_max_skip.390
	movl	align_loops(%rip), %eax	# align_loops, align_loops.391
	cmpl	%eax, %edx	# align_loops.391, align_loops_max_skip.390
	jg	.L548	#,
	.loc 1 4876 0 is_stmt 0 discriminator 1
	movl	align_loops(%rip), %eax	# align_loops, align_loops.392
	testl	%eax, %eax	# align_loops.392
	jne	.L549	#,
.L548:
	.loc 1 4877 0 is_stmt 1
	movl	align_loops(%rip), %eax	# align_loops, align_loops.393
	subl	$1, %eax	#, align_loops_max_skip.394
	movl	%eax, align_loops_max_skip(%rip)	# align_loops_max_skip.394, align_loops_max_skip
.L549:
	.loc 1 4878 0
	movl	align_loops(%rip), %eax	# align_loops, align_loops.395
	addl	%eax, %eax	# D.18907
	subl	$1, %eax	#, D.18907
	cltq
	movq	%rax, %rdi	# D.18908,
	call	floor_log2_wide	#
	movl	%eax, align_loops_log(%rip)	# align_loops_log.396, align_loops_log
	.loc 1 4879 0
	movl	align_jumps(%rip), %eax	# align_jumps, align_jumps.397
	testl	%eax, %eax	# align_jumps.397
	jg	.L550	#,
	.loc 1 4879 0 is_stmt 0 discriminator 1
	movl	$1, align_jumps(%rip)	#, align_jumps
.L550:
	.loc 1 4880 0 is_stmt 1
	movl	align_jumps_max_skip(%rip), %edx	# align_jumps_max_skip, align_jumps_max_skip.398
	movl	align_jumps(%rip), %eax	# align_jumps, align_jumps.399
	cmpl	%eax, %edx	# align_jumps.399, align_jumps_max_skip.398
	jg	.L551	#,
	.loc 1 4880 0 is_stmt 0 discriminator 1
	movl	align_jumps(%rip), %eax	# align_jumps, align_jumps.400
	testl	%eax, %eax	# align_jumps.400
	jne	.L552	#,
.L551:
	.loc 1 4881 0 is_stmt 1
	movl	align_jumps(%rip), %eax	# align_jumps, align_jumps.401
	subl	$1, %eax	#, align_jumps_max_skip.402
	movl	%eax, align_jumps_max_skip(%rip)	# align_jumps_max_skip.402, align_jumps_max_skip
.L552:
	.loc 1 4882 0
	movl	align_jumps(%rip), %eax	# align_jumps, align_jumps.403
	addl	%eax, %eax	# D.18907
	subl	$1, %eax	#, D.18907
	cltq
	movq	%rax, %rdi	# D.18908,
	call	floor_log2_wide	#
	movl	%eax, align_jumps_log(%rip)	# align_jumps_log.404, align_jumps_log
	.loc 1 4883 0
	movl	align_labels(%rip), %eax	# align_labels, align_labels.405
	testl	%eax, %eax	# align_labels.405
	jg	.L553	#,
	.loc 1 4883 0 is_stmt 0 discriminator 1
	movl	$1, align_labels(%rip)	#, align_labels
.L553:
	.loc 1 4884 0 is_stmt 1
	movl	align_labels(%rip), %eax	# align_labels, align_labels.406
	addl	%eax, %eax	# D.18907
	subl	$1, %eax	#, D.18907
	cltq
	movq	%rax, %rdi	# D.18908,
	call	floor_log2_wide	#
	movl	%eax, align_labels_log(%rip)	# align_labels_log.407, align_labels_log
	.loc 1 4885 0
	movl	align_labels_max_skip(%rip), %edx	# align_labels_max_skip, align_labels_max_skip.408
	movl	align_labels(%rip), %eax	# align_labels, align_labels.409
	cmpl	%eax, %edx	# align_labels.409, align_labels_max_skip.408
	jg	.L554	#,
	.loc 1 4885 0 is_stmt 0 discriminator 1
	movl	align_labels(%rip), %eax	# align_labels, align_labels.410
	testl	%eax, %eax	# align_labels.410
	jne	.L555	#,
.L554:
	.loc 1 4886 0 is_stmt 1
	movl	align_labels(%rip), %eax	# align_labels, align_labels.411
	subl	$1, %eax	#, align_labels_max_skip.412
	movl	%eax, align_labels_max_skip(%rip)	# align_labels_max_skip.412, align_labels_max_skip
.L555:
	.loc 1 4887 0
	movl	align_functions(%rip), %eax	# align_functions, align_functions.413
	testl	%eax, %eax	# align_functions.413
	jg	.L556	#,
	.loc 1 4887 0 is_stmt 0 discriminator 1
	movl	$1, align_functions(%rip)	#, align_functions
.L556:
	.loc 1 4888 0 is_stmt 1
	movl	align_functions(%rip), %eax	# align_functions, align_functions.414
	addl	%eax, %eax	# D.18907
	subl	$1, %eax	#, D.18907
	cltq
	movq	%rax, %rdi	# D.18908,
	call	floor_log2_wide	#
	movl	%eax, align_functions_log(%rip)	# align_functions_log.415, align_functions_log
	.loc 1 4892 0
	movl	flag_unroll_all_loops(%rip), %eax	# flag_unroll_all_loops, flag_unroll_all_loops.416
	testl	%eax, %eax	# flag_unroll_all_loops.416
	je	.L557	#,
	.loc 1 4893 0
	movl	$1, flag_unroll_loops(%rip)	#, flag_unroll_loops
.L557:
	.loc 1 4898 0
	movl	flag_unroll_loops(%rip), %eax	# flag_unroll_loops, flag_unroll_loops.417
	testl	%eax, %eax	# flag_unroll_loops.417
	je	.L558	#,
	.loc 1 4900 0
	movl	$1, flag_strength_reduce(%rip)	#, flag_strength_reduce
	.loc 1 4901 0
	movl	$1, flag_rerun_cse_after_loop(%rip)	#, flag_rerun_cse_after_loop
.L558:
	.loc 1 4904 0
	movl	flag_non_call_exceptions(%rip), %eax	# flag_non_call_exceptions, flag_non_call_exceptions.418
	testl	%eax, %eax	# flag_non_call_exceptions.418
	je	.L559	#,
	.loc 1 4905 0
	movl	$1, flag_asynchronous_unwind_tables(%rip)	#, flag_asynchronous_unwind_tables
.L559:
	.loc 1 4906 0
	movl	flag_asynchronous_unwind_tables(%rip), %eax	# flag_asynchronous_unwind_tables, flag_asynchronous_unwind_tables.419
	testl	%eax, %eax	# flag_asynchronous_unwind_tables.419
	je	.L560	#,
	.loc 1 4907 0
	movl	$1, flag_unwind_tables(%rip)	#, flag_unwind_tables
.L560:
	.loc 1 4915 0
	movl	flag_delayed_branch(%rip), %eax	# flag_delayed_branch, flag_delayed_branch.420
	testl	%eax, %eax	# flag_delayed_branch.420
	je	.L561	#,
	.loc 1 4916 0
	movl	$.LC675, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L561:
	.loc 1 4922 0
	movl	profile_flag(%rip), %eax	# profile_flag, profile_flag.421
	.loc 1 4921 0
	testl	%eax, %eax	# profile_flag.421
	je	.L562	#,
	.loc 1 4923 0
	movl	flag_omit_frame_pointer(%rip), %eax	# flag_omit_frame_pointer, flag_omit_frame_pointer.422
	testl	%eax, %eax	# flag_omit_frame_pointer.422
	je	.L562	#,
	.loc 1 4925 0
	movl	$.LC676, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 4926 0
	movl	$0, flag_omit_frame_pointer(%rip)	#, flag_omit_frame_pointer
.L562:
	.loc 1 4929 0
	movq	$.LC32, user_label_prefix(%rip)	#, user_label_prefix
	.loc 1 4930 0
	movl	flag_leading_underscore(%rip), %eax	# flag_leading_underscore, flag_leading_underscore.423
	cmpl	$-1, %eax	#, flag_leading_underscore.423
	je	.L563	#,
	.loc 1 4934 0
	movq	user_label_prefix(%rip), %rax	# user_label_prefix, user_label_prefix.424
	movzbl	(%rax), %eax	# *user_label_prefix.424_50, D.18909
	testb	%al, %al	# D.18909
	je	.L564	#,
	.loc 1 4935 0 discriminator 1
	movq	user_label_prefix(%rip), %rax	# user_label_prefix, user_label_prefix.425
	movzbl	(%rax), %eax	# *user_label_prefix.425_52, D.18909
	.loc 1 4934 0 discriminator 1
	cmpb	$95, %al	#, D.18909
	jne	.L565	#,
	.loc 1 4935 0
	movq	user_label_prefix(%rip), %rax	# user_label_prefix, user_label_prefix.426
	addq	$1, %rax	#, D.18910
	movzbl	(%rax), %eax	# *_55, D.18909
	testb	%al, %al	# D.18909
	jne	.L565	#,
.L564:
	.loc 1 4937 0
	movl	flag_leading_underscore(%rip), %eax	# flag_leading_underscore, flag_leading_underscore.428
	testl	%eax, %eax	# flag_leading_underscore.428
	je	.L566	#,
	.loc 1 4937 0 is_stmt 0 discriminator 1
	movl	$.LC677, %eax	#, iftmp.427
	jmp	.L567	#
.L566:
	.loc 1 4937 0 discriminator 2
	movl	$.LC32, %eax	#, iftmp.427
.L567:
	.loc 1 4937 0 discriminator 3
	movq	%rax, user_label_prefix(%rip)	# iftmp.427, user_label_prefix
	jmp	.L563	#
.L565:
	.loc 1 4941 0 is_stmt 1
	movl	flag_leading_underscore(%rip), %eax	# flag_leading_underscore, flag_leading_underscore.430
	.loc 1 4940 0
	testl	%eax, %eax	# flag_leading_underscore.430
	je	.L568	#,
	.loc 1 4940 0 is_stmt 0 discriminator 1
	movl	$.LC32, %eax	#, iftmp.429
	jmp	.L569	#
.L568:
	.loc 1 4940 0 discriminator 2
	movl	$.LC678, %eax	#, iftmp.429
.L569:
	.loc 1 4940 0 discriminator 3
	movq	%rax, %rsi	# iftmp.429,
	movl	$.LC679, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L563:
	.loc 1 4946 0 is_stmt 1
	movl	version_flag(%rip), %eax	# version_flag, version_flag.431
	testl	%eax, %eax	# version_flag.431
	je	.L570	#,
	.loc 1 4948 0
	movq	stderr(%rip), %rax	# stderr, stderr.432
	movl	$.LC32, %esi	#,
	movq	%rax, %rdi	# stderr.432,
	call	print_version	#
	.loc 1 4949 0
	movl	quiet_flag(%rip), %eax	# quiet_flag, quiet_flag.433
	testl	%eax, %eax	# quiet_flag.433
	jne	.L570	#,
	.loc 1 4950 0
	movq	stderr(%rip), %rax	# stderr, stderr.434
	movl	$.LC670, %r9d	#,
	movl	$.LC654, %r8d	#,
	movl	$.LC32, %ecx	#,
	movl	$75, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# stderr.434,
	call	print_switch_values	#
.L570:
	.loc 1 4953 0
	movl	quiet_flag(%rip), %eax	# quiet_flag, quiet_flag.435
	testl	%eax, %eax	# quiet_flag.435
	jne	.L571	#,
	.loc 1 4954 0
	movl	$1, time_report(%rip)	#, time_report
.L571:
	.loc 1 4956 0
	movl	flag_syntax_only(%rip), %eax	# flag_syntax_only, flag_syntax_only.436
	testl	%eax, %eax	# flag_syntax_only.436
	je	.L572	#,
	.loc 1 4958 0
	movl	$0, write_symbols(%rip)	#, write_symbols
	.loc 1 4959 0
	movl	$0, profile_flag(%rip)	#, profile_flag
.L572:
	.loc 1 4965 0
	movl	write_symbols(%rip), %eax	# write_symbols, write_symbols.437
	cmpl	$1, %eax	#, write_symbols.437
	jne	.L573	#,
	.loc 1 4966 0
	movq	$dbx_debug_hooks, debug_hooks(%rip)	#, debug_hooks
.L573:
	.loc 1 4981 0
	movl	write_symbols(%rip), %eax	# write_symbols, write_symbols.438
	cmpl	$4, %eax	#, write_symbols.438
	jne	.L574	#,
	.loc 1 4982 0
	movq	$dwarf2_debug_hooks, debug_hooks(%rip)	#, debug_hooks
.L574:
	.loc 1 4992 0
	movl	flag_gen_aux_info(%rip), %eax	# flag_gen_aux_info, flag_gen_aux_info.439
	testl	%eax, %eax	# flag_gen_aux_info.439
	je	.L575	#,
	.loc 1 4994 0
	movq	aux_info_file_name(%rip), %rax	# aux_info_file_name, aux_info_file_name.440
	movl	$.LC554, %esi	#,
	movq	%rax, %rdi	# aux_info_file_name.440,
	call	fopen	#
	movq	%rax, aux_info_file(%rip)	# aux_info_file.441, aux_info_file
	.loc 1 4995 0
	movq	aux_info_file(%rip), %rax	# aux_info_file, aux_info_file.442
	testq	%rax, %rax	# aux_info_file.442
	jne	.L575	#,
	.loc 1 4996 0
	movq	aux_info_file_name(%rip), %rax	# aux_info_file_name, aux_info_file_name.443
	movq	%rax, %rsi	# aux_info_file_name.443,
	movl	$.LC556, %edi	#,
	movl	$0, %eax	#,
	call	fatal_io_error	#
.L575:
	.loc 1 4999 0
	movzbl	targetm+328(%rip), %eax	# targetm.have_named_sections, D.18911
	xorl	$1, %eax	#, D.18911
	testb	%al, %al	# D.18911
	je	.L576	#,
	.loc 1 5001 0
	movl	flag_function_sections(%rip), %eax	# flag_function_sections, flag_function_sections.444
	testl	%eax, %eax	# flag_function_sections.444
	je	.L577	#,
	.loc 1 5003 0
	movl	$.LC680, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	.loc 1 5004 0
	movl	$0, flag_function_sections(%rip)	#, flag_function_sections
.L577:
	.loc 1 5006 0
	movl	flag_data_sections(%rip), %eax	# flag_data_sections, flag_data_sections.445
	testl	%eax, %eax	# flag_data_sections.445
	je	.L576	#,
	.loc 1 5008 0
	movl	$.LC681, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	.loc 1 5009 0
	movl	$0, flag_data_sections(%rip)	#, flag_data_sections
.L576:
	.loc 1 5013 0
	movl	flag_function_sections(%rip), %eax	# flag_function_sections, flag_function_sections.446
	testl	%eax, %eax	# flag_function_sections.446
	je	.L578	#,
	.loc 1 5013 0 is_stmt 0 discriminator 1
	movl	profile_flag(%rip), %eax	# profile_flag, profile_flag.447
	testl	%eax, %eax	# profile_flag.447
	je	.L578	#,
	.loc 1 5015 0 is_stmt 1
	movl	$.LC682, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	.loc 1 5016 0
	movl	$0, flag_function_sections(%rip)	#, flag_function_sections
.L578:
	.loc 1 5026 0
	movl	flag_prefetch_loop_arrays(%rip), %eax	# flag_prefetch_loop_arrays, flag_prefetch_loop_arrays.448
	testl	%eax, %eax	# flag_prefetch_loop_arrays.448
	je	.L579	#,
	.loc 1 5026 0 is_stmt 0 discriminator 1
	movl	x86_prefetch_sse(%rip), %eax	# x86_prefetch_sse, x86_prefetch_sse.449
	testl	%eax, %eax	# x86_prefetch_sse.449
	jne	.L579	#,
	movl	target_flags(%rip), %eax	# target_flags, target_flags.450
	andl	$1048576, %eax	#, D.18907
	testl	%eax, %eax	# D.18907
	jne	.L579	#,
	.loc 1 5028 0 is_stmt 1
	movl	$.LC683, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	.loc 1 5029 0
	movl	$0, flag_prefetch_loop_arrays(%rip)	#, flag_prefetch_loop_arrays
.L579:
	.loc 1 5035 0
	movl	flag_prefetch_loop_arrays(%rip), %eax	# flag_prefetch_loop_arrays, flag_prefetch_loop_arrays.451
	testl	%eax, %eax	# flag_prefetch_loop_arrays.451
	je	.L546	#,
	.loc 1 5035 0 is_stmt 0 discriminator 1
	movl	optimize_size(%rip), %eax	# optimize_size, optimize_size.452
	testl	%eax, %eax	# optimize_size.452
	je	.L546	#,
	.loc 1 5037 0 is_stmt 1
	movl	$.LC684, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	.loc 1 5038 0
	movl	$0, flag_prefetch_loop_arrays(%rip)	#, flag_prefetch_loop_arrays
.L546:
	.loc 1 5045 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	process_options, .-process_options
	.type	lang_independent_init, @function
lang_independent_init:
.LFB43:
	.loc 1 5051 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 5052 0
	movq	$decl_name, decl_printable_name(%rip)	#, decl_printable_name
	.loc 1 5053 0
	movq	$do_abort, lang_expand_expr(%rip)	#, lang_expand_expr
	.loc 1 5057 0
	movq	lang_hooks+8(%rip), %rax	# lang_hooks.identifier_size, D.18922
	.loc 1 5058 0
	subq	$17, %rax	#, D.18922
	shrq	$3, %rax	#, D.18922
	.loc 1 5057 0
	movl	%eax, tree_code_length+4(%rip)	# D.18923, tree_code_length
	.loc 1 5061 0
	call	init_ggc	#
	.loc 1 5062 0
	movl	$1, %esi	#,
	movl	$stack_limit_rtx, %edi	#,
	call	ggc_add_rtx_root	#
	.loc 1 5063 0
	movl	$1, %esi	#,
	movl	$current_function_decl, %edi	#,
	call	ggc_add_tree_root	#
	.loc 1 5064 0
	movl	$1, %esi	#,
	movl	$current_function_func_begin_label, %edi	#,
	call	ggc_add_tree_root	#
	.loc 1 5066 0
	call	init_stringpool	#
	.loc 1 5067 0
	call	init_obstacks	#
	.loc 1 5069 0
	movl	debug_info_level(%rip), %eax	# debug_info_level, debug_info_level.454
	cmpl	$2, %eax	#, debug_info_level.454
	je	.L582	#,
	.loc 1 5070 0
	movl	debug_info_level(%rip), %eax	# debug_info_level, debug_info_level.455
	cmpl	$3, %eax	#, debug_info_level.455
	je	.L582	#,
	.loc 1 5075 0
	movl	flag_test_coverage(%rip), %eax	# flag_test_coverage, flag_test_coverage.456
	testl	%eax, %eax	# flag_test_coverage.456
	jne	.L582	#,
	.loc 1 5076 0
	movl	warn_notreached(%rip), %eax	# warn_notreached, warn_notreached.457
	.loc 1 5069 0
	testl	%eax, %eax	# warn_notreached.457
	je	.L583	#,
.L582:
	.loc 1 5069 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.453
	jmp	.L584	#
.L583:
	.loc 1 5069 0 discriminator 2
	movl	$0, %eax	#, iftmp.453
.L584:
	.loc 1 5069 0 discriminator 3
	movl	%eax, %edi	# iftmp.453,
	call	init_emit_once	#
	.loc 1 5077 0 is_stmt 1 discriminator 3
	call	init_regs	#
	.loc 1 5078 0 discriminator 3
	call	init_alias_once	#
	.loc 1 5079 0 discriminator 3
	call	init_stmt	#
	.loc 1 5080 0 discriminator 3
	call	init_loop	#
	.loc 1 5081 0 discriminator 3
	call	init_reload	#
	.loc 1 5082 0 discriminator 3
	call	init_function_once	#
	.loc 1 5083 0 discriminator 3
	call	init_stor_layout_once	#
	.loc 1 5084 0 discriminator 3
	call	init_varasm_once	#
	.loc 1 5085 0 discriminator 3
	call	init_EXPR_INSN_LIST_cache	#
	.loc 1 5089 0 discriminator 3
	call	init_dummy_function_start	#
	.loc 1 5090 0 discriminator 3
	call	init_expmed	#
	.loc 1 5091 0 discriminator 3
	call	init_expr_once	#
	.loc 1 5092 0 discriminator 3
	movl	flag_caller_saves(%rip), %eax	# flag_caller_saves, flag_caller_saves.458
	testl	%eax, %eax	# flag_caller_saves.458
	je	.L585	#,
	.loc 1 5093 0
	call	init_caller_save	#
.L585:
	.loc 1 5094 0
	call	expand_dummy_function_end	#
	.loc 1 5095 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	lang_independent_init, .-lang_independent_init
	.section	.rodata
.LC685:
	.string	"gccdump"
	.text
	.type	lang_dependent_init, @function
lang_dependent_init:
.LFB44:
	.loc 1 5101 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# name, name
	.loc 1 5102 0
	movq	dump_base_name(%rip), %rax	# dump_base_name, dump_base_name.459
	testq	%rax, %rax	# dump_base_name.459
	jne	.L587	#,
	.loc 1 5103 0
	cmpq	$0, -8(%rbp)	#, name
	je	.L588	#,
	.loc 1 5103 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# name, iftmp.460
	jmp	.L589	#
.L588:
	.loc 1 5103 0 discriminator 2
	movl	$.LC685, %eax	#, iftmp.460
.L589:
	.loc 1 5103 0 discriminator 3
	movq	%rax, dump_base_name(%rip)	# iftmp.460, dump_base_name
.L587:
	.loc 1 5109 0 is_stmt 1
	movq	lang_hooks+40(%rip), %rax	# lang_hooks.init, D.18925
	movq	-8(%rbp), %rdx	# name, tmp69
	movq	%rdx, %rdi	# tmp69,
	call	*%rax	# D.18925
	movq	%rax, -8(%rbp)	# tmp70, name
	.loc 1 5110 0
	cmpq	$0, -8(%rbp)	#, name
	jne	.L590	#,
	.loc 1 5111 0
	movl	$0, %eax	#, D.18924
	jmp	.L591	#
.L590:
	.loc 1 5114 0
	movq	-8(%rbp), %rax	# name, tmp71
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# tmp71,
	call	ggc_alloc_string	#
	movq	%rax, -8(%rbp)	# tmp72, name
	.loc 1 5115 0
	movq	-8(%rbp), %rax	# name, tmp73
	movq	%rax, input_filename(%rip)	# tmp73, input_filename
	movq	input_filename(%rip), %rax	# input_filename, input_filename.461
	movq	%rax, main_input_filename(%rip)	# input_filename.461, main_input_filename
	.loc 1 5116 0
	movq	-8(%rbp), %rax	# name, tmp74
	movq	%rax, %rdi	# tmp74,
	call	init_asm_output	#
	.loc 1 5120 0
	call	init_eh	#
	.loc 1 5121 0
	call	init_optabs	#
	.loc 1 5124 0
	movq	input_filename(%rip), %rax	# input_filename, input_filename.462
	movl	$0, %esi	#,
	movq	%rax, %rdi	# input_filename.462,
	call	push_srcloc	#
	.loc 1 5128 0
	movl	$43, %edi	#,
	call	timevar_push	#
	.loc 1 5131 0
	call	dwarf2out_do_frame	#
	testl	%eax, %eax	# D.18924
	je	.L592	#,
	.loc 1 5132 0
	call	dwarf2out_frame_init	#
.L592:
	.loc 1 5137 0
	movq	debug_hooks(%rip), %rax	# debug_hooks, debug_hooks.463
	movq	(%rax), %rax	# debug_hooks.463_14->init, D.18926
	movq	-8(%rbp), %rdx	# name, tmp75
	movq	%rdx, %rdi	# tmp75,
	call	*%rax	# D.18926
	.loc 1 5139 0
	movl	$43, %edi	#,
	call	timevar_pop	#
	.loc 1 5141 0
	movl	$1, %eax	#, D.18924
.L591:
	.loc 1 5142 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	lang_dependent_init, .-lang_dependent_init
	.section	.rodata
.LC686:
	.string	"error writing to %s"
.LC687:
	.string	"error closing %s"
	.text
	.type	finalize, @function
finalize:
.LFB45:
	.loc 1 5148 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	.loc 1 5148 0
	movq	%fs:40, %rax	#, tmp96
	movq	%rax, -8(%rbp)	# tmp96, D.18932
	xorl	%eax, %eax	# tmp96
	.loc 1 5150 0
	movl	flag_gen_aux_info(%rip), %eax	# flag_gen_aux_info, flag_gen_aux_info.464
	testl	%eax, %eax	# flag_gen_aux_info.464
	je	.L594	#,
	.loc 1 5152 0
	movq	aux_info_file(%rip), %rax	# aux_info_file, aux_info_file.465
	movq	%rax, %rdi	# aux_info_file.465,
	call	fclose	#
	.loc 1 5153 0
	movq	global_dc(%rip), %rax	# global_dc, global_dc.466
	movl	60(%rax), %eax	# MEM[(struct output_buffer *)global_dc.466_4].state.diagnostic_count, D.18928
	testl	%eax, %eax	# D.18928
	je	.L594	#,
	.loc 1 5154 0
	movq	aux_info_file_name(%rip), %rax	# aux_info_file_name, aux_info_file_name.467
	movq	%rax, %rdi	# aux_info_file_name.467,
	call	unlink	#
.L594:
	.loc 1 5161 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.468
	testq	%rax, %rax	# asm_out_file.468
	je	.L595	#,
	.loc 1 5163 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.469
	movq	%rax, %rdi	# asm_out_file.469,
	call	ferror	#
	testl	%eax, %eax	# D.18928
	je	.L596	#,
	.loc 1 5164 0
	movq	asm_file_name(%rip), %rax	# asm_file_name, asm_file_name.470
	movq	%rax, %rsi	# asm_file_name.470,
	movl	$.LC686, %edi	#,
	movl	$0, %eax	#,
	call	fatal_io_error	#
.L596:
	.loc 1 5165 0
	movq	asm_out_file(%rip), %rax	# asm_out_file, asm_out_file.471
	movq	%rax, %rdi	# asm_out_file.471,
	call	fclose	#
	testl	%eax, %eax	# D.18928
	je	.L595	#,
	.loc 1 5166 0
	movq	asm_file_name(%rip), %rax	# asm_file_name, asm_file_name.472
	movq	%rax, %rsi	# asm_file_name.472,
	movl	$.LC687, %edi	#,
	movl	$0, %eax	#,
	call	fatal_io_error	#
.L595:
	.loc 1 5170 0
	movl	graph_dump_format(%rip), %eax	# graph_dump_format, graph_dump_format.473
	testl	%eax, %eax	# graph_dump_format.473
	je	.L597	#,
.LBB36:
	.loc 1 5174 0
	movl	$0, -44(%rbp)	#, i
	jmp	.L598	#
.L600:
	.loc 1 5175 0
	movl	-44(%rbp), %eax	# i, tmp79
	cltq
	salq	$4, %rax	#, tmp80
	addq	$dump_file, %rax	#, tmp81
	movzbl	11(%rax), %eax	# dump_file[i_1].initialized, D.18929
	testb	%al, %al	# D.18929
	je	.L599	#,
	.loc 1 5175 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp83
	cltq
	salq	$4, %rax	#, tmp84
	addq	$dump_file, %rax	#, tmp85
	movzbl	9(%rax), %eax	# dump_file[i_1].graph_dump_p, D.18929
	testb	%al, %al	# D.18929
	je	.L599	#,
.LBB37:
	.loc 1 5180 0 is_stmt 1
	movl	-44(%rbp), %edx	# i, tmp86
	leaq	-32(%rbp), %rax	#, tmp87
	movl	$.LC553, %esi	#,
	movq	%rax, %rdi	# tmp87,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 1 5181 0
	movl	-44(%rbp), %eax	# i, tmp89
	cltq
	salq	$4, %rax	#, tmp90
	addq	$dump_file, %rax	#, tmp91
	movq	(%rax), %rcx	# dump_file[i_1].extension, D.18930
	leaq	-32(%rbp), %rax	#, tmp92
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.18930,
	movq	%rax, %rdi	# tmp92,
	movl	$0, %eax	#,
	call	concat	#
	movq	%rax, -40(%rbp)	# tmp93, suffix
	.loc 1 5182 0
	movq	dump_base_name(%rip), %rax	# dump_base_name, dump_base_name.474
	movq	-40(%rbp), %rdx	# suffix, tmp94
	movq	%rdx, %rsi	# tmp94,
	movq	%rax, %rdi	# dump_base_name.474,
	call	finish_graph_dump_file	#
	.loc 1 5183 0
	movq	-40(%rbp), %rax	# suffix, tmp95
	movq	%rax, %rdi	# tmp95,
	call	free	#
.L599:
.LBE37:
	.loc 1 5174 0
	addl	$1, -44(%rbp)	#, i
.L598:
	.loc 1 5174 0 is_stmt 0 discriminator 1
	cmpl	$31, -44(%rbp)	#, i
	jle	.L600	#,
.L597:
.LBE36:
	.loc 1 5187 0 is_stmt 1
	movl	mem_report(%rip), %eax	# mem_report, mem_report.475
	testl	%eax, %eax	# mem_report.475
	je	.L601	#,
	.loc 1 5189 0
	call	ggc_print_statistics	#
	.loc 1 5190 0
	call	stringpool_statistics	#
	.loc 1 5191 0
	call	dump_tree_statistics	#
.L601:
	.loc 1 5195 0
	call	free_reg_info	#
	.loc 1 5198 0
	movq	lang_hooks+48(%rip), %rax	# lang_hooks.finish, D.18931
	call	*%rax	# D.18931
	.loc 1 5199 0
	movq	-8(%rbp), %rax	# D.18932, tmp97
	xorq	%fs:40, %rax	#, tmp97
	je	.L602	#,
	call	__stack_chk_fail	#
.L602:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	finalize, .-finalize
	.type	do_compile, @function
do_compile:
.LFB46:
	.loc 1 5204 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 5206 0
	call	process_options	#
	.loc 1 5217 0
	call	lang_independent_init	#
	.loc 1 5220 0
	movq	filename(%rip), %rax	# filename, filename.476
	movq	%rax, %rdi	# filename.476,
	call	lang_dependent_init	#
	testl	%eax, %eax	# D.18935
	je	.L604	#,
	.loc 1 5221 0
	call	compile_file	#
.L604:
	.loc 1 5223 0
	call	finalize	#
	.loc 1 5230 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	do_compile, .-do_compile
	.globl	toplev_main
	.type	toplev_main, @function
toplev_main:
.LFB47:
	.loc 1 5243 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# argc, argc
	movq	%rsi, -16(%rbp)	# argv, argv
	.loc 1 5244 0
	call	hex_init	#
	.loc 1 5247 0
	movq	-16(%rbp), %rax	# argv, tmp69
	movq	(%rax), %rax	# *argv_2(D), D.18937
	movq	%rax, %rdi	# D.18937,
	call	general_init	#
	.loc 1 5251 0
	movq	-16(%rbp), %rdx	# argv, tmp70
	movl	-4(%rbp), %eax	# argc, tmp71
	movq	%rdx, %rsi	# tmp70,
	movl	%eax, %edi	# tmp71,
	call	parse_options_and_default_flags	#
	.loc 1 5254 0
	movq	global_dc(%rip), %rax	# global_dc, global_dc.477
	movl	60(%rax), %eax	# MEM[(struct output_buffer *)global_dc.477_5].state.diagnostic_count, D.18936
	testl	%eax, %eax	# D.18936
	jne	.L606	#,
	.loc 1 5254 0 is_stmt 0 discriminator 1
	movl	exit_after_options(%rip), %eax	# exit_after_options, exit_after_options.478
	testl	%eax, %eax	# exit_after_options.478
	jne	.L606	#,
	.loc 1 5255 0 is_stmt 1
	call	do_compile	#
.L606:
	.loc 1 5257 0
	movq	global_dc(%rip), %rax	# global_dc, global_dc.479
	movl	60(%rax), %eax	# MEM[(struct output_buffer *)global_dc.479_8].state.diagnostic_count, D.18936
	testl	%eax, %eax	# D.18936
	jne	.L607	#,
	.loc 1 5257 0 is_stmt 0 discriminator 1
	movq	global_dc(%rip), %rax	# global_dc, global_dc.480
	movl	56(%rax), %eax	# MEM[(struct output_buffer *)global_dc.480_10].state.diagnostic_count, D.18936
	testl	%eax, %eax	# D.18936
	je	.L608	#,
.L607:
	.loc 1 5258 0 is_stmt 1
	movl	$1, %eax	#, D.18936
	jmp	.L609	#
.L608:
	.loc 1 5260 0
	movl	$0, %eax	#, D.18936
.L609:
	.loc 1 5261 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	toplev_main, .-toplev_main
	.section	.rodata
	.type	__FUNCTION__.15445, @object
	.size	__FUNCTION__.15445, 9
__FUNCTION__.15445:
	.string	"do_abort"
	.type	__FUNCTION__.15449, @object
	.size	__FUNCTION__.15449, 6
__FUNCTION__.15449:
	.string	"botch"
	.type	__FUNCTION__.15558, @object
	.size	__FUNCTION__.15558, 11
__FUNCTION__.15558:
	.string	"pop_srcloc"
	.align 16
	.type	__FUNCTION__.15612, @object
	.size	__FUNCTION__.15612, 20
__FUNCTION__.15612:
	.string	"rest_of_compilation"
	.local	displayed.15644
	.comm	displayed.15644,1,1
	.local	level.15704
	.comm	level.15704,4,4
	.local	type_explicitly_set_p.15706
	.comm	type_explicitly_set_p.15706,4,4
	.local	selected_debug_type.15705
	.comm	selected_debug_type.15705,4,4
.LC688:
	.string	"none"
.LC689:
	.string	"coff"
.LC690:
	.string	"dwarf-1"
.LC691:
	.string	"xcoff"
.LC692:
	.string	"vms"
	.align 32
	.type	debug_type_names.15707, @object
	.size	debug_type_names.15707, 56
debug_type_names.15707:
	.quad	.LC688
	.quad	.LC36
	.quad	.LC689
	.quad	.LC690
	.quad	.LC40
	.quad	.LC691
	.quad	.LC692
	.align 4
	.type	max_debug_level.15708, @object
	.size	max_debug_level.15708, 4
max_debug_level.15708:
	.long	3
	.text
.Letext0:
	.file 2 "rtl.h"
	.file 3 "config.h"
	.file 4 "tree.h"
	.file 5 "i386.h"
	.file 6 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stdarg.h"
	.file 7 "<built-in>"
	.file 8 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 10 "/usr/include/stdio.h"
	.file 11 "/usr/include/libio.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/sigset.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/setjmp.h"
	.file 14 "/usr/include/setjmp.h"
	.file 15 "input.h"
	.file 16 "machmode.h"
	.file 17 "real.h"
	.file 18 "obstack.h"
	.file 19 "hashtable.h"
	.file 20 "function.h"
	.file 21 "bitmap.h"
	.file 22 "basic-block.h"
	.file 23 "flags.h"
	.file 24 "expr.h"
	.file 25 "sbitmap.h"
	.file 26 "./safe-ctype.h"
	.file 27 "timevar.h"
	.file 28 "diagnostic.h"
	.file 29 "params.h"
	.file 30 "debug.h"
	.file 31 "target.h"
	.file 32 "langhooks.h"
	.file 33 "version.h"
	.file 34 "output.h"
	.file 35 "regs.h"
	.file 36 "reload.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x6738
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1661
	.byte	0x1
	.long	.LASF1662
	.long	.LASF1663
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
	.long	0x382
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF1
	.byte	0x2
	.byte	0x80
	.long	0x382
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF2
	.byte	0x2
	.byte	0x87
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	.LASF3
	.byte	0x2
	.byte	0x8a
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	.LASF4
	.byte	0x2
	.byte	0x95
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	.LASF5
	.byte	0x2
	.byte	0x9d
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF6
	.byte	0x2
	.byte	0xaf
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF7
	.byte	0x2
	.byte	0xb6
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF8
	.byte	0x2
	.byte	0xbb
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0xc4
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x6
	.string	"fld"
	.byte	0x2
	.byte	0xc9
	.long	0x294d
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
	.long	0x295d
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
	.long	.LASF913
	.byte	0xd0
	.byte	0x4
	.value	0x744
	.long	0x1de
	.uleb128 0xa
	.long	.LASF16
	.byte	0x4
	.value	0x746
	.long	0xf8a
	.uleb128 0xa
	.long	.LASF17
	.byte	0x4
	.value	0x747
	.long	0x114a
	.uleb128 0xa
	.long	.LASF18
	.byte	0x4
	.value	0x748
	.long	0x11ad
	.uleb128 0xa
	.long	.LASF19
	.byte	0x4
	.value	0x749
	.long	0x1266
	.uleb128 0xa
	.long	.LASF20
	.byte	0x4
	.value	0x74a
	.long	0x11e2
	.uleb128 0xa
	.long	.LASF21
	.byte	0x4
	.value	0x74b
	.long	0x1224
	.uleb128 0xa
	.long	.LASF22
	.byte	0x4
	.value	0x74c
	.long	0x13e4
	.uleb128 0xa
	.long	.LASF23
	.byte	0x4
	.value	0x74d
	.long	0x1c9d
	.uleb128 0xa
	.long	.LASF24
	.byte	0x4
	.value	0x74e
	.long	0x1573
	.uleb128 0xa
	.long	.LASF25
	.byte	0x4
	.value	0x74f
	.long	0x140b
	.uleb128 0xb
	.string	"vec"
	.byte	0x4
	.value	0x750
	.long	0x1440
	.uleb128 0xb
	.string	"exp"
	.byte	0x4
	.value	0x751
	.long	0x1483
	.uleb128 0xa
	.long	.LASF26
	.byte	0x4
	.value	0x752
	.long	0x14b8
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
	.long	.LASF63
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
	.uleb128 0xf
	.long	.LASF64
	.byte	0x4
	.byte	0x5
	.value	0xc23
	.long	0x32a
	.uleb128 0x10
	.long	.LASF65
	.sleb128 0
	.uleb128 0x10
	.long	.LASF66
	.sleb128 1
	.byte	0
	.uleb128 0x7
	.long	.LASF67
	.byte	0x6
	.byte	0x28
	.long	0x335
	.uleb128 0x14
	.long	0x345
	.long	0x345
	.uleb128 0x15
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF68
	.byte	0x18
	.byte	0x7
	.byte	0
	.long	0x382
	.uleb128 0x8
	.long	.LASF69
	.byte	0x7
	.byte	0
	.long	0x382
	.byte	0
	.uleb128 0x8
	.long	.LASF70
	.byte	0x7
	.byte	0
	.long	0x382
	.byte	0x4
	.uleb128 0x8
	.long	.LASF71
	.byte	0x7
	.byte	0
	.long	0x389
	.byte	0x8
	.uleb128 0x8
	.long	.LASF72
	.byte	0x7
	.byte	0
	.long	0x389
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.long	.LASF73
	.uleb128 0x16
	.byte	0x8
	.uleb128 0x7
	.long	.LASF74
	.byte	0x6
	.byte	0x62
	.long	0x32a
	.uleb128 0xe
	.byte	0x8
	.byte	0x5
	.long	.LASF75
	.uleb128 0x7
	.long	.LASF76
	.byte	0x8
	.byte	0xd4
	.long	0x3a8
	.uleb128 0xe
	.byte	0x8
	.byte	0x7
	.long	.LASF77
	.uleb128 0xe
	.byte	0x1
	.byte	0x8
	.long	.LASF78
	.uleb128 0xe
	.byte	0x2
	.byte	0x7
	.long	.LASF79
	.uleb128 0xe
	.byte	0x1
	.byte	0x6
	.long	.LASF80
	.uleb128 0xe
	.byte	0x2
	.byte	0x5
	.long	.LASF81
	.uleb128 0x7
	.long	.LASF82
	.byte	0x9
	.byte	0x8c
	.long	0x396
	.uleb128 0x7
	.long	.LASF83
	.byte	0x9
	.byte	0x8d
	.long	0x396
	.uleb128 0x3
	.byte	0x8
	.long	0x3e7
	.uleb128 0xe
	.byte	0x1
	.byte	0x6
	.long	.LASF84
	.uleb128 0x7
	.long	.LASF85
	.byte	0xa
	.byte	0x30
	.long	0x3f9
	.uleb128 0x4
	.long	.LASF86
	.byte	0xd8
	.byte	0xb
	.byte	0xf6
	.long	0x57a
	.uleb128 0x8
	.long	.LASF87
	.byte	0xb
	.byte	0xf7
	.long	0x1e3
	.byte	0
	.uleb128 0x8
	.long	.LASF88
	.byte	0xb
	.byte	0xfc
	.long	0x3e1
	.byte	0x8
	.uleb128 0x8
	.long	.LASF89
	.byte	0xb
	.byte	0xfd
	.long	0x3e1
	.byte	0x10
	.uleb128 0x8
	.long	.LASF90
	.byte	0xb
	.byte	0xfe
	.long	0x3e1
	.byte	0x18
	.uleb128 0x8
	.long	.LASF91
	.byte	0xb
	.byte	0xff
	.long	0x3e1
	.byte	0x20
	.uleb128 0x12
	.long	.LASF92
	.byte	0xb
	.value	0x100
	.long	0x3e1
	.byte	0x28
	.uleb128 0x12
	.long	.LASF93
	.byte	0xb
	.value	0x101
	.long	0x3e1
	.byte	0x30
	.uleb128 0x12
	.long	.LASF94
	.byte	0xb
	.value	0x102
	.long	0x3e1
	.byte	0x38
	.uleb128 0x12
	.long	.LASF95
	.byte	0xb
	.value	0x103
	.long	0x3e1
	.byte	0x40
	.uleb128 0x12
	.long	.LASF96
	.byte	0xb
	.value	0x105
	.long	0x3e1
	.byte	0x48
	.uleb128 0x12
	.long	.LASF97
	.byte	0xb
	.value	0x106
	.long	0x3e1
	.byte	0x50
	.uleb128 0x12
	.long	.LASF98
	.byte	0xb
	.value	0x107
	.long	0x3e1
	.byte	0x58
	.uleb128 0x12
	.long	.LASF99
	.byte	0xb
	.value	0x109
	.long	0x5c2
	.byte	0x60
	.uleb128 0x12
	.long	.LASF100
	.byte	0xb
	.value	0x10b
	.long	0x5c8
	.byte	0x68
	.uleb128 0x12
	.long	.LASF101
	.byte	0xb
	.value	0x10d
	.long	0x1e3
	.byte	0x70
	.uleb128 0x12
	.long	.LASF102
	.byte	0xb
	.value	0x111
	.long	0x1e3
	.byte	0x74
	.uleb128 0x12
	.long	.LASF103
	.byte	0xb
	.value	0x113
	.long	0x3cb
	.byte	0x78
	.uleb128 0x12
	.long	.LASF104
	.byte	0xb
	.value	0x117
	.long	0x3b6
	.byte	0x80
	.uleb128 0x12
	.long	.LASF105
	.byte	0xb
	.value	0x118
	.long	0x3bd
	.byte	0x82
	.uleb128 0x12
	.long	.LASF106
	.byte	0xb
	.value	0x119
	.long	0x5ce
	.byte	0x83
	.uleb128 0x12
	.long	.LASF107
	.byte	0xb
	.value	0x11d
	.long	0x5de
	.byte	0x88
	.uleb128 0x12
	.long	.LASF108
	.byte	0xb
	.value	0x126
	.long	0x3d6
	.byte	0x90
	.uleb128 0x12
	.long	.LASF109
	.byte	0xb
	.value	0x12f
	.long	0x389
	.byte	0x98
	.uleb128 0x12
	.long	.LASF110
	.byte	0xb
	.value	0x130
	.long	0x389
	.byte	0xa0
	.uleb128 0x12
	.long	.LASF111
	.byte	0xb
	.value	0x131
	.long	0x389
	.byte	0xa8
	.uleb128 0x12
	.long	.LASF112
	.byte	0xb
	.value	0x132
	.long	0x389
	.byte	0xb0
	.uleb128 0x12
	.long	.LASF113
	.byte	0xb
	.value	0x133
	.long	0x39d
	.byte	0xb8
	.uleb128 0x12
	.long	.LASF114
	.byte	0xb
	.value	0x135
	.long	0x1e3
	.byte	0xc0
	.uleb128 0x12
	.long	.LASF115
	.byte	0xb
	.value	0x137
	.long	0x5e4
	.byte	0xc4
	.byte	0
	.uleb128 0x14
	.long	0x3e7
	.long	0x58a
	.uleb128 0x15
	.long	0x1ea
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.long	.LASF1664
	.byte	0xb
	.byte	0x9b
	.uleb128 0x4
	.long	.LASF116
	.byte	0x18
	.byte	0xb
	.byte	0xa1
	.long	0x5c2
	.uleb128 0x8
	.long	.LASF117
	.byte	0xb
	.byte	0xa2
	.long	0x5c2
	.byte	0
	.uleb128 0x8
	.long	.LASF118
	.byte	0xb
	.byte	0xa3
	.long	0x5c8
	.byte	0x8
	.uleb128 0x8
	.long	.LASF119
	.byte	0xb
	.byte	0xa7
	.long	0x1e3
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x591
	.uleb128 0x3
	.byte	0x8
	.long	0x3f9
	.uleb128 0x14
	.long	0x3e7
	.long	0x5de
	.uleb128 0x15
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x58a
	.uleb128 0x14
	.long	0x3e7
	.long	0x5f4
	.uleb128 0x15
	.long	0x1ea
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x5fa
	.uleb128 0xc
	.long	0x3e7
	.uleb128 0x18
	.byte	0x4
	.byte	0x1a
	.byte	0x2c
	.long	0x680
	.uleb128 0x10
	.long	.LASF120
	.sleb128 1
	.uleb128 0x10
	.long	.LASF121
	.sleb128 2
	.uleb128 0x10
	.long	.LASF122
	.sleb128 4
	.uleb128 0x10
	.long	.LASF123
	.sleb128 8
	.uleb128 0x10
	.long	.LASF124
	.sleb128 16
	.uleb128 0x10
	.long	.LASF125
	.sleb128 32
	.uleb128 0x10
	.long	.LASF126
	.sleb128 64
	.uleb128 0x10
	.long	.LASF127
	.sleb128 128
	.uleb128 0x10
	.long	.LASF128
	.sleb128 256
	.uleb128 0x10
	.long	.LASF129
	.sleb128 512
	.uleb128 0x10
	.long	.LASF130
	.sleb128 1024
	.uleb128 0x10
	.long	.LASF131
	.sleb128 2048
	.uleb128 0x10
	.long	.LASF132
	.sleb128 136
	.uleb128 0x10
	.long	.LASF133
	.sleb128 140
	.uleb128 0x10
	.long	.LASF134
	.sleb128 516
	.uleb128 0x10
	.long	.LASF135
	.sleb128 172
	.uleb128 0x10
	.long	.LASF136
	.sleb128 3072
	.uleb128 0x10
	.long	.LASF137
	.sleb128 3088
	.byte	0
	.uleb128 0x19
	.byte	0x80
	.byte	0xc
	.byte	0x1c
	.long	0x695
	.uleb128 0x8
	.long	.LASF138
	.byte	0xc
	.byte	0x1e
	.long	0x695
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x3a8
	.long	0x6a5
	.uleb128 0x15
	.long	0x1ea
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.long	.LASF139
	.byte	0xc
	.byte	0x1f
	.long	0x680
	.uleb128 0xe
	.byte	0x8
	.byte	0x7
	.long	.LASF140
	.uleb128 0xe
	.byte	0x8
	.byte	0x5
	.long	.LASF141
	.uleb128 0x3
	.byte	0x8
	.long	0x1e3
	.uleb128 0x3
	.byte	0x8
	.long	0x6ca
	.uleb128 0x1a
	.long	0x6d5
	.uleb128 0x1b
	.long	0x1e3
	.byte	0
	.uleb128 0x1c
	.uleb128 0x3
	.byte	0x8
	.long	0x6d5
	.uleb128 0x7
	.long	.LASF142
	.byte	0xd
	.byte	0x1f
	.long	0x6e7
	.uleb128 0x14
	.long	0x396
	.long	0x6f7
	.uleb128 0x15
	.long	0x1ea
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.long	.LASF143
	.byte	0xc8
	.byte	0xe
	.byte	0x22
	.long	0x728
	.uleb128 0x8
	.long	.LASF144
	.byte	0xe
	.byte	0x28
	.long	0x6dc
	.byte	0
	.uleb128 0x8
	.long	.LASF145
	.byte	0xe
	.byte	0x29
	.long	0x1e3
	.byte	0x40
	.uleb128 0x8
	.long	.LASF146
	.byte	0xe
	.byte	0x2a
	.long	0x6a5
	.byte	0x48
	.byte	0
	.uleb128 0x7
	.long	.LASF147
	.byte	0xe
	.byte	0x30
	.long	0x733
	.uleb128 0x14
	.long	0x6f7
	.long	0x743
	.uleb128 0x15
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF148
	.byte	0x18
	.byte	0xf
	.byte	0x22
	.long	0x780
	.uleb128 0x8
	.long	.LASF149
	.byte	0xf
	.byte	0x24
	.long	0x5f4
	.byte	0
	.uleb128 0x8
	.long	.LASF150
	.byte	0xf
	.byte	0x25
	.long	0x780
	.byte	0x8
	.uleb128 0x8
	.long	.LASF151
	.byte	0xf
	.byte	0x26
	.long	0x1e3
	.byte	0x10
	.uleb128 0x8
	.long	.LASF152
	.byte	0xf
	.byte	0x27
	.long	0x1e3
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x743
	.uleb128 0x1d
	.long	.LASF153
	.byte	0x4
	.byte	0x10
	.byte	0x1d
	.long	0x8fb
	.uleb128 0x10
	.long	.LASF154
	.sleb128 0
	.uleb128 0x10
	.long	.LASF155
	.sleb128 1
	.uleb128 0x10
	.long	.LASF156
	.sleb128 2
	.uleb128 0x10
	.long	.LASF157
	.sleb128 3
	.uleb128 0x10
	.long	.LASF158
	.sleb128 4
	.uleb128 0x10
	.long	.LASF159
	.sleb128 5
	.uleb128 0x10
	.long	.LASF160
	.sleb128 6
	.uleb128 0x10
	.long	.LASF161
	.sleb128 7
	.uleb128 0x10
	.long	.LASF162
	.sleb128 8
	.uleb128 0x10
	.long	.LASF163
	.sleb128 9
	.uleb128 0x10
	.long	.LASF164
	.sleb128 10
	.uleb128 0x10
	.long	.LASF165
	.sleb128 11
	.uleb128 0x10
	.long	.LASF166
	.sleb128 12
	.uleb128 0x10
	.long	.LASF167
	.sleb128 13
	.uleb128 0x10
	.long	.LASF168
	.sleb128 14
	.uleb128 0x10
	.long	.LASF169
	.sleb128 15
	.uleb128 0x10
	.long	.LASF170
	.sleb128 16
	.uleb128 0x10
	.long	.LASF171
	.sleb128 17
	.uleb128 0x10
	.long	.LASF172
	.sleb128 18
	.uleb128 0x10
	.long	.LASF173
	.sleb128 19
	.uleb128 0x10
	.long	.LASF174
	.sleb128 20
	.uleb128 0x10
	.long	.LASF175
	.sleb128 21
	.uleb128 0x10
	.long	.LASF176
	.sleb128 22
	.uleb128 0x10
	.long	.LASF177
	.sleb128 23
	.uleb128 0x10
	.long	.LASF178
	.sleb128 24
	.uleb128 0x10
	.long	.LASF179
	.sleb128 25
	.uleb128 0x10
	.long	.LASF180
	.sleb128 26
	.uleb128 0x10
	.long	.LASF181
	.sleb128 27
	.uleb128 0x10
	.long	.LASF182
	.sleb128 28
	.uleb128 0x10
	.long	.LASF183
	.sleb128 29
	.uleb128 0x10
	.long	.LASF184
	.sleb128 30
	.uleb128 0x10
	.long	.LASF185
	.sleb128 31
	.uleb128 0x10
	.long	.LASF186
	.sleb128 32
	.uleb128 0x10
	.long	.LASF187
	.sleb128 33
	.uleb128 0x10
	.long	.LASF188
	.sleb128 34
	.uleb128 0x10
	.long	.LASF189
	.sleb128 35
	.uleb128 0x10
	.long	.LASF190
	.sleb128 36
	.uleb128 0x10
	.long	.LASF191
	.sleb128 37
	.uleb128 0x10
	.long	.LASF192
	.sleb128 38
	.uleb128 0x10
	.long	.LASF193
	.sleb128 39
	.uleb128 0x10
	.long	.LASF194
	.sleb128 40
	.uleb128 0x10
	.long	.LASF195
	.sleb128 41
	.uleb128 0x10
	.long	.LASF196
	.sleb128 42
	.uleb128 0x10
	.long	.LASF197
	.sleb128 43
	.uleb128 0x10
	.long	.LASF198
	.sleb128 44
	.uleb128 0x10
	.long	.LASF199
	.sleb128 45
	.uleb128 0x10
	.long	.LASF200
	.sleb128 46
	.uleb128 0x10
	.long	.LASF201
	.sleb128 47
	.uleb128 0x10
	.long	.LASF202
	.sleb128 48
	.uleb128 0x10
	.long	.LASF203
	.sleb128 49
	.uleb128 0x10
	.long	.LASF204
	.sleb128 50
	.uleb128 0x10
	.long	.LASF205
	.sleb128 51
	.uleb128 0x10
	.long	.LASF206
	.sleb128 52
	.uleb128 0x10
	.long	.LASF207
	.sleb128 53
	.uleb128 0x10
	.long	.LASF208
	.sleb128 54
	.uleb128 0x10
	.long	.LASF209
	.sleb128 55
	.uleb128 0x10
	.long	.LASF210
	.sleb128 56
	.uleb128 0x10
	.long	.LASF211
	.sleb128 57
	.uleb128 0x10
	.long	.LASF212
	.sleb128 58
	.uleb128 0x10
	.long	.LASF213
	.sleb128 59
	.byte	0
	.uleb128 0x1d
	.long	.LASF214
	.byte	0x4
	.byte	0x10
	.byte	0x2c
	.long	0x944
	.uleb128 0x10
	.long	.LASF215
	.sleb128 0
	.uleb128 0x10
	.long	.LASF216
	.sleb128 1
	.uleb128 0x10
	.long	.LASF217
	.sleb128 2
	.uleb128 0x10
	.long	.LASF218
	.sleb128 3
	.uleb128 0x10
	.long	.LASF219
	.sleb128 4
	.uleb128 0x10
	.long	.LASF220
	.sleb128 5
	.uleb128 0x10
	.long	.LASF221
	.sleb128 6
	.uleb128 0x10
	.long	.LASF222
	.sleb128 7
	.uleb128 0x10
	.long	.LASF223
	.sleb128 8
	.uleb128 0x10
	.long	.LASF224
	.sleb128 9
	.byte	0
	.uleb128 0x1d
	.long	.LASF225
	.byte	0x4
	.byte	0x4
	.byte	0x1d
	.long	0xd1d
	.uleb128 0x10
	.long	.LASF226
	.sleb128 0
	.uleb128 0x10
	.long	.LASF227
	.sleb128 1
	.uleb128 0x10
	.long	.LASF228
	.sleb128 2
	.uleb128 0x10
	.long	.LASF229
	.sleb128 3
	.uleb128 0x10
	.long	.LASF230
	.sleb128 4
	.uleb128 0x10
	.long	.LASF231
	.sleb128 5
	.uleb128 0x10
	.long	.LASF232
	.sleb128 6
	.uleb128 0x10
	.long	.LASF233
	.sleb128 7
	.uleb128 0x10
	.long	.LASF234
	.sleb128 8
	.uleb128 0x10
	.long	.LASF235
	.sleb128 9
	.uleb128 0x10
	.long	.LASF236
	.sleb128 10
	.uleb128 0x10
	.long	.LASF237
	.sleb128 11
	.uleb128 0x10
	.long	.LASF238
	.sleb128 12
	.uleb128 0x10
	.long	.LASF239
	.sleb128 13
	.uleb128 0x10
	.long	.LASF240
	.sleb128 14
	.uleb128 0x10
	.long	.LASF241
	.sleb128 15
	.uleb128 0x10
	.long	.LASF242
	.sleb128 16
	.uleb128 0x10
	.long	.LASF243
	.sleb128 17
	.uleb128 0x10
	.long	.LASF244
	.sleb128 18
	.uleb128 0x10
	.long	.LASF245
	.sleb128 19
	.uleb128 0x10
	.long	.LASF246
	.sleb128 20
	.uleb128 0x10
	.long	.LASF247
	.sleb128 21
	.uleb128 0x10
	.long	.LASF248
	.sleb128 22
	.uleb128 0x10
	.long	.LASF249
	.sleb128 23
	.uleb128 0x10
	.long	.LASF250
	.sleb128 24
	.uleb128 0x10
	.long	.LASF251
	.sleb128 25
	.uleb128 0x10
	.long	.LASF252
	.sleb128 26
	.uleb128 0x10
	.long	.LASF253
	.sleb128 27
	.uleb128 0x10
	.long	.LASF254
	.sleb128 28
	.uleb128 0x10
	.long	.LASF255
	.sleb128 29
	.uleb128 0x10
	.long	.LASF256
	.sleb128 30
	.uleb128 0x10
	.long	.LASF257
	.sleb128 31
	.uleb128 0x10
	.long	.LASF258
	.sleb128 32
	.uleb128 0x10
	.long	.LASF259
	.sleb128 33
	.uleb128 0x10
	.long	.LASF260
	.sleb128 34
	.uleb128 0x10
	.long	.LASF261
	.sleb128 35
	.uleb128 0x10
	.long	.LASF262
	.sleb128 36
	.uleb128 0x10
	.long	.LASF263
	.sleb128 37
	.uleb128 0x10
	.long	.LASF264
	.sleb128 38
	.uleb128 0x10
	.long	.LASF265
	.sleb128 39
	.uleb128 0x10
	.long	.LASF266
	.sleb128 40
	.uleb128 0x10
	.long	.LASF267
	.sleb128 41
	.uleb128 0x10
	.long	.LASF268
	.sleb128 42
	.uleb128 0x10
	.long	.LASF269
	.sleb128 43
	.uleb128 0x10
	.long	.LASF270
	.sleb128 44
	.uleb128 0x10
	.long	.LASF271
	.sleb128 45
	.uleb128 0x10
	.long	.LASF272
	.sleb128 46
	.uleb128 0x10
	.long	.LASF273
	.sleb128 47
	.uleb128 0x10
	.long	.LASF274
	.sleb128 48
	.uleb128 0x10
	.long	.LASF275
	.sleb128 49
	.uleb128 0x10
	.long	.LASF276
	.sleb128 50
	.uleb128 0x10
	.long	.LASF277
	.sleb128 51
	.uleb128 0x10
	.long	.LASF278
	.sleb128 52
	.uleb128 0x10
	.long	.LASF279
	.sleb128 53
	.uleb128 0x10
	.long	.LASF280
	.sleb128 54
	.uleb128 0x10
	.long	.LASF281
	.sleb128 55
	.uleb128 0x10
	.long	.LASF282
	.sleb128 56
	.uleb128 0x10
	.long	.LASF283
	.sleb128 57
	.uleb128 0x10
	.long	.LASF284
	.sleb128 58
	.uleb128 0x10
	.long	.LASF285
	.sleb128 59
	.uleb128 0x10
	.long	.LASF286
	.sleb128 60
	.uleb128 0x10
	.long	.LASF287
	.sleb128 61
	.uleb128 0x10
	.long	.LASF288
	.sleb128 62
	.uleb128 0x10
	.long	.LASF289
	.sleb128 63
	.uleb128 0x10
	.long	.LASF290
	.sleb128 64
	.uleb128 0x10
	.long	.LASF291
	.sleb128 65
	.uleb128 0x10
	.long	.LASF292
	.sleb128 66
	.uleb128 0x10
	.long	.LASF293
	.sleb128 67
	.uleb128 0x10
	.long	.LASF294
	.sleb128 68
	.uleb128 0x10
	.long	.LASF295
	.sleb128 69
	.uleb128 0x10
	.long	.LASF296
	.sleb128 70
	.uleb128 0x10
	.long	.LASF297
	.sleb128 71
	.uleb128 0x10
	.long	.LASF298
	.sleb128 72
	.uleb128 0x10
	.long	.LASF299
	.sleb128 73
	.uleb128 0x10
	.long	.LASF300
	.sleb128 74
	.uleb128 0x10
	.long	.LASF301
	.sleb128 75
	.uleb128 0x10
	.long	.LASF302
	.sleb128 76
	.uleb128 0x10
	.long	.LASF303
	.sleb128 77
	.uleb128 0x10
	.long	.LASF304
	.sleb128 78
	.uleb128 0x10
	.long	.LASF305
	.sleb128 79
	.uleb128 0x10
	.long	.LASF306
	.sleb128 80
	.uleb128 0x10
	.long	.LASF307
	.sleb128 81
	.uleb128 0x10
	.long	.LASF308
	.sleb128 82
	.uleb128 0x10
	.long	.LASF309
	.sleb128 83
	.uleb128 0x10
	.long	.LASF310
	.sleb128 84
	.uleb128 0x10
	.long	.LASF311
	.sleb128 85
	.uleb128 0x10
	.long	.LASF312
	.sleb128 86
	.uleb128 0x10
	.long	.LASF313
	.sleb128 87
	.uleb128 0x10
	.long	.LASF314
	.sleb128 88
	.uleb128 0x10
	.long	.LASF315
	.sleb128 89
	.uleb128 0x10
	.long	.LASF316
	.sleb128 90
	.uleb128 0x10
	.long	.LASF317
	.sleb128 91
	.uleb128 0x10
	.long	.LASF318
	.sleb128 92
	.uleb128 0x10
	.long	.LASF319
	.sleb128 93
	.uleb128 0x10
	.long	.LASF320
	.sleb128 94
	.uleb128 0x10
	.long	.LASF321
	.sleb128 95
	.uleb128 0x10
	.long	.LASF322
	.sleb128 96
	.uleb128 0x10
	.long	.LASF323
	.sleb128 97
	.uleb128 0x10
	.long	.LASF324
	.sleb128 98
	.uleb128 0x10
	.long	.LASF325
	.sleb128 99
	.uleb128 0x10
	.long	.LASF326
	.sleb128 100
	.uleb128 0x10
	.long	.LASF327
	.sleb128 101
	.uleb128 0x10
	.long	.LASF328
	.sleb128 102
	.uleb128 0x10
	.long	.LASF329
	.sleb128 103
	.uleb128 0x10
	.long	.LASF330
	.sleb128 104
	.uleb128 0x10
	.long	.LASF331
	.sleb128 105
	.uleb128 0x10
	.long	.LASF332
	.sleb128 106
	.uleb128 0x10
	.long	.LASF333
	.sleb128 107
	.uleb128 0x10
	.long	.LASF334
	.sleb128 108
	.uleb128 0x10
	.long	.LASF335
	.sleb128 109
	.uleb128 0x10
	.long	.LASF336
	.sleb128 110
	.uleb128 0x10
	.long	.LASF337
	.sleb128 111
	.uleb128 0x10
	.long	.LASF338
	.sleb128 112
	.uleb128 0x10
	.long	.LASF339
	.sleb128 113
	.uleb128 0x10
	.long	.LASF340
	.sleb128 114
	.uleb128 0x10
	.long	.LASF341
	.sleb128 115
	.uleb128 0x10
	.long	.LASF342
	.sleb128 116
	.uleb128 0x10
	.long	.LASF343
	.sleb128 117
	.uleb128 0x10
	.long	.LASF344
	.sleb128 118
	.uleb128 0x10
	.long	.LASF345
	.sleb128 119
	.uleb128 0x10
	.long	.LASF346
	.sleb128 120
	.uleb128 0x10
	.long	.LASF347
	.sleb128 121
	.uleb128 0x10
	.long	.LASF348
	.sleb128 122
	.uleb128 0x10
	.long	.LASF349
	.sleb128 123
	.uleb128 0x10
	.long	.LASF350
	.sleb128 124
	.uleb128 0x10
	.long	.LASF351
	.sleb128 125
	.uleb128 0x10
	.long	.LASF352
	.sleb128 126
	.uleb128 0x10
	.long	.LASF353
	.sleb128 127
	.uleb128 0x10
	.long	.LASF354
	.sleb128 128
	.uleb128 0x10
	.long	.LASF355
	.sleb128 129
	.uleb128 0x10
	.long	.LASF356
	.sleb128 130
	.uleb128 0x10
	.long	.LASF357
	.sleb128 131
	.uleb128 0x10
	.long	.LASF358
	.sleb128 132
	.uleb128 0x10
	.long	.LASF359
	.sleb128 133
	.uleb128 0x10
	.long	.LASF360
	.sleb128 134
	.uleb128 0x10
	.long	.LASF361
	.sleb128 135
	.uleb128 0x10
	.long	.LASF362
	.sleb128 136
	.uleb128 0x10
	.long	.LASF363
	.sleb128 137
	.uleb128 0x10
	.long	.LASF364
	.sleb128 138
	.uleb128 0x10
	.long	.LASF365
	.sleb128 139
	.uleb128 0x10
	.long	.LASF366
	.sleb128 140
	.uleb128 0x10
	.long	.LASF367
	.sleb128 141
	.uleb128 0x10
	.long	.LASF368
	.sleb128 142
	.uleb128 0x10
	.long	.LASF369
	.sleb128 143
	.uleb128 0x10
	.long	.LASF370
	.sleb128 144
	.uleb128 0x10
	.long	.LASF371
	.sleb128 145
	.uleb128 0x10
	.long	.LASF372
	.sleb128 146
	.uleb128 0x10
	.long	.LASF373
	.sleb128 147
	.byte	0
	.uleb128 0x1d
	.long	.LASF374
	.byte	0x4
	.byte	0x4
	.byte	0x54
	.long	0xf8a
	.uleb128 0x10
	.long	.LASF375
	.sleb128 0
	.uleb128 0x10
	.long	.LASF376
	.sleb128 1
	.uleb128 0x10
	.long	.LASF377
	.sleb128 2
	.uleb128 0x10
	.long	.LASF378
	.sleb128 3
	.uleb128 0x10
	.long	.LASF379
	.sleb128 4
	.uleb128 0x10
	.long	.LASF380
	.sleb128 5
	.uleb128 0x10
	.long	.LASF381
	.sleb128 6
	.uleb128 0x10
	.long	.LASF382
	.sleb128 7
	.uleb128 0x10
	.long	.LASF383
	.sleb128 8
	.uleb128 0x10
	.long	.LASF384
	.sleb128 9
	.uleb128 0x10
	.long	.LASF385
	.sleb128 10
	.uleb128 0x10
	.long	.LASF386
	.sleb128 11
	.uleb128 0x10
	.long	.LASF387
	.sleb128 12
	.uleb128 0x10
	.long	.LASF388
	.sleb128 13
	.uleb128 0x10
	.long	.LASF389
	.sleb128 14
	.uleb128 0x10
	.long	.LASF390
	.sleb128 15
	.uleb128 0x10
	.long	.LASF391
	.sleb128 16
	.uleb128 0x10
	.long	.LASF392
	.sleb128 17
	.uleb128 0x10
	.long	.LASF393
	.sleb128 18
	.uleb128 0x10
	.long	.LASF394
	.sleb128 19
	.uleb128 0x10
	.long	.LASF395
	.sleb128 20
	.uleb128 0x10
	.long	.LASF396
	.sleb128 21
	.uleb128 0x10
	.long	.LASF397
	.sleb128 22
	.uleb128 0x10
	.long	.LASF398
	.sleb128 23
	.uleb128 0x10
	.long	.LASF399
	.sleb128 24
	.uleb128 0x10
	.long	.LASF400
	.sleb128 25
	.uleb128 0x10
	.long	.LASF401
	.sleb128 26
	.uleb128 0x10
	.long	.LASF402
	.sleb128 27
	.uleb128 0x10
	.long	.LASF403
	.sleb128 28
	.uleb128 0x10
	.long	.LASF404
	.sleb128 29
	.uleb128 0x10
	.long	.LASF405
	.sleb128 30
	.uleb128 0x10
	.long	.LASF406
	.sleb128 31
	.uleb128 0x10
	.long	.LASF407
	.sleb128 32
	.uleb128 0x10
	.long	.LASF408
	.sleb128 33
	.uleb128 0x10
	.long	.LASF409
	.sleb128 34
	.uleb128 0x10
	.long	.LASF410
	.sleb128 35
	.uleb128 0x10
	.long	.LASF411
	.sleb128 36
	.uleb128 0x10
	.long	.LASF412
	.sleb128 37
	.uleb128 0x10
	.long	.LASF413
	.sleb128 38
	.uleb128 0x10
	.long	.LASF414
	.sleb128 39
	.uleb128 0x10
	.long	.LASF415
	.sleb128 40
	.uleb128 0x10
	.long	.LASF416
	.sleb128 41
	.uleb128 0x10
	.long	.LASF417
	.sleb128 42
	.uleb128 0x10
	.long	.LASF418
	.sleb128 43
	.uleb128 0x10
	.long	.LASF419
	.sleb128 44
	.uleb128 0x10
	.long	.LASF420
	.sleb128 45
	.uleb128 0x10
	.long	.LASF421
	.sleb128 46
	.uleb128 0x10
	.long	.LASF422
	.sleb128 47
	.uleb128 0x10
	.long	.LASF423
	.sleb128 48
	.uleb128 0x10
	.long	.LASF424
	.sleb128 49
	.uleb128 0x10
	.long	.LASF425
	.sleb128 50
	.uleb128 0x10
	.long	.LASF426
	.sleb128 51
	.uleb128 0x10
	.long	.LASF427
	.sleb128 52
	.uleb128 0x10
	.long	.LASF428
	.sleb128 53
	.uleb128 0x10
	.long	.LASF429
	.sleb128 54
	.uleb128 0x10
	.long	.LASF430
	.sleb128 55
	.uleb128 0x10
	.long	.LASF431
	.sleb128 56
	.uleb128 0x10
	.long	.LASF432
	.sleb128 57
	.uleb128 0x10
	.long	.LASF433
	.sleb128 58
	.uleb128 0x10
	.long	.LASF434
	.sleb128 59
	.uleb128 0x10
	.long	.LASF435
	.sleb128 60
	.uleb128 0x10
	.long	.LASF436
	.sleb128 61
	.uleb128 0x10
	.long	.LASF437
	.sleb128 62
	.uleb128 0x10
	.long	.LASF438
	.sleb128 63
	.uleb128 0x10
	.long	.LASF439
	.sleb128 64
	.uleb128 0x10
	.long	.LASF440
	.sleb128 65
	.uleb128 0x10
	.long	.LASF441
	.sleb128 66
	.uleb128 0x10
	.long	.LASF442
	.sleb128 67
	.uleb128 0x10
	.long	.LASF443
	.sleb128 68
	.uleb128 0x10
	.long	.LASF444
	.sleb128 69
	.uleb128 0x10
	.long	.LASF445
	.sleb128 70
	.uleb128 0x10
	.long	.LASF446
	.sleb128 71
	.uleb128 0x10
	.long	.LASF447
	.sleb128 72
	.uleb128 0x10
	.long	.LASF448
	.sleb128 73
	.uleb128 0x10
	.long	.LASF449
	.sleb128 74
	.uleb128 0x10
	.long	.LASF450
	.sleb128 75
	.uleb128 0x10
	.long	.LASF451
	.sleb128 76
	.uleb128 0x10
	.long	.LASF452
	.sleb128 77
	.uleb128 0x10
	.long	.LASF453
	.sleb128 78
	.uleb128 0x10
	.long	.LASF454
	.sleb128 79
	.uleb128 0x10
	.long	.LASF455
	.sleb128 80
	.uleb128 0x10
	.long	.LASF456
	.sleb128 81
	.uleb128 0x10
	.long	.LASF457
	.sleb128 82
	.uleb128 0x10
	.long	.LASF458
	.sleb128 83
	.uleb128 0x10
	.long	.LASF459
	.sleb128 84
	.uleb128 0x10
	.long	.LASF460
	.sleb128 85
	.uleb128 0x10
	.long	.LASF461
	.sleb128 86
	.uleb128 0x10
	.long	.LASF462
	.sleb128 87
	.uleb128 0x10
	.long	.LASF463
	.sleb128 88
	.uleb128 0x10
	.long	.LASF464
	.sleb128 89
	.uleb128 0x10
	.long	.LASF465
	.sleb128 90
	.uleb128 0x10
	.long	.LASF466
	.sleb128 91
	.uleb128 0x10
	.long	.LASF467
	.sleb128 92
	.uleb128 0x10
	.long	.LASF468
	.sleb128 93
	.uleb128 0x10
	.long	.LASF469
	.sleb128 94
	.uleb128 0x10
	.long	.LASF470
	.sleb128 95
	.byte	0
	.uleb128 0x4
	.long	.LASF471
	.byte	0x18
	.byte	0x4
	.byte	0x79
	.long	0x1126
	.uleb128 0x8
	.long	.LASF472
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
	.long	0x382
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x10
	.uleb128 0x5
	.long	.LASF473
	.byte	0x4
	.byte	0x80
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x10
	.uleb128 0x5
	.long	.LASF474
	.byte	0x4
	.byte	0x81
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x10
	.uleb128 0x5
	.long	.LASF475
	.byte	0x4
	.byte	0x82
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x10
	.uleb128 0x5
	.long	.LASF476
	.byte	0x4
	.byte	0x83
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x10
	.uleb128 0x5
	.long	.LASF477
	.byte	0x4
	.byte	0x84
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x10
	.uleb128 0x5
	.long	.LASF478
	.byte	0x4
	.byte	0x85
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x10
	.uleb128 0x5
	.long	.LASF479
	.byte	0x4
	.byte	0x86
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x10
	.uleb128 0x5
	.long	.LASF480
	.byte	0x4
	.byte	0x87
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x10
	.uleb128 0x5
	.long	.LASF481
	.byte	0x4
	.byte	0x89
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x10
	.uleb128 0x5
	.long	.LASF482
	.byte	0x4
	.byte	0x8a
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x10
	.uleb128 0x5
	.long	.LASF483
	.byte	0x4
	.byte	0x8b
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x10
	.uleb128 0x5
	.long	.LASF484
	.byte	0x4
	.byte	0x8c
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x10
	.uleb128 0x5
	.long	.LASF485
	.byte	0x4
	.byte	0x8d
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x10
	.uleb128 0x5
	.long	.LASF486
	.byte	0x4
	.byte	0x8e
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x10
	.uleb128 0x5
	.long	.LASF487
	.byte	0x4
	.byte	0x8f
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x10
	.uleb128 0x5
	.long	.LASF488
	.byte	0x4
	.byte	0x90
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x10
	.uleb128 0x5
	.long	.LASF489
	.byte	0x4
	.byte	0x92
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x10
	.uleb128 0x5
	.long	.LASF490
	.byte	0x4
	.byte	0x93
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x10
	.uleb128 0x5
	.long	.LASF491
	.byte	0x4
	.byte	0x94
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x10
	.uleb128 0x5
	.long	.LASF492
	.byte	0x4
	.byte	0x95
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x10
	.uleb128 0x5
	.long	.LASF493
	.byte	0x4
	.byte	0x96
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x10
	.uleb128 0x5
	.long	.LASF494
	.byte	0x4
	.byte	0x97
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x5
	.long	.LASF495
	.byte	0x4
	.byte	0x98
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x10
	.uleb128 0x5
	.long	.LASF496
	.byte	0x4
	.byte	0x99
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x10
	.byte	0
	.uleb128 0x1e
	.byte	0x10
	.byte	0x4
	.value	0x2c9
	.long	0x114a
	.uleb128 0x1f
	.string	"low"
	.byte	0x4
	.value	0x2ca
	.long	0x3a8
	.byte	0
	.uleb128 0x12
	.long	.LASF497
	.byte	0x4
	.value	0x2cb
	.long	0x396
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.long	.LASF498
	.byte	0x30
	.byte	0x4
	.value	0x2c1
	.long	0x117f
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x2c3
	.long	0xf8a
	.byte	0
	.uleb128 0x1f
	.string	"rtl"
	.byte	0x4
	.value	0x2c4
	.long	0x2d
	.byte	0x18
	.uleb128 0x12
	.long	.LASF17
	.byte	0x4
	.value	0x2cc
	.long	0x1126
	.byte	0x20
	.byte	0
	.uleb128 0x19
	.byte	0x18
	.byte	0x11
	.byte	0x6b
	.long	0x1192
	.uleb128 0x6
	.string	"r"
	.byte	0x11
	.byte	0x6c
	.long	0x1192
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x396
	.long	0x11a2
	.uleb128 0x15
	.long	0x1ea
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF499
	.byte	0x11
	.byte	0x6d
	.long	0x117f
	.uleb128 0x11
	.long	.LASF500
	.byte	0x38
	.byte	0x4
	.value	0x2de
	.long	0x11e2
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x2e0
	.long	0xf8a
	.byte	0
	.uleb128 0x1f
	.string	"rtl"
	.byte	0x4
	.value	0x2e1
	.long	0x2d
	.byte	0x18
	.uleb128 0x12
	.long	.LASF18
	.byte	0x4
	.value	0x2e2
	.long	0x11a2
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.long	.LASF501
	.byte	0x30
	.byte	0x4
	.value	0x2e9
	.long	0x1224
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x2eb
	.long	0xf8a
	.byte	0
	.uleb128 0x1f
	.string	"rtl"
	.byte	0x4
	.value	0x2ec
	.long	0x2d
	.byte	0x18
	.uleb128 0x12
	.long	.LASF502
	.byte	0x4
	.value	0x2ed
	.long	0x1e3
	.byte	0x20
	.uleb128 0x12
	.long	.LASF503
	.byte	0x4
	.value	0x2ee
	.long	0x5f4
	.byte	0x28
	.byte	0
	.uleb128 0x11
	.long	.LASF504
	.byte	0x30
	.byte	0x4
	.value	0x2f5
	.long	0x1266
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x2f7
	.long	0xf8a
	.byte	0
	.uleb128 0x1f
	.string	"rtl"
	.byte	0x4
	.value	0x2f8
	.long	0x2d
	.byte	0x18
	.uleb128 0x12
	.long	.LASF505
	.byte	0x4
	.value	0x2f9
	.long	0x123
	.byte	0x20
	.uleb128 0x12
	.long	.LASF506
	.byte	0x4
	.value	0x2fa
	.long	0x123
	.byte	0x28
	.byte	0
	.uleb128 0x11
	.long	.LASF507
	.byte	0x28
	.byte	0x4
	.value	0x300
	.long	0x129b
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x302
	.long	0xf8a
	.byte	0
	.uleb128 0x1f
	.string	"rtl"
	.byte	0x4
	.value	0x303
	.long	0x2d
	.byte	0x18
	.uleb128 0x12
	.long	.LASF508
	.byte	0x4
	.value	0x304
	.long	0x123
	.byte	0x20
	.byte	0
	.uleb128 0x4
	.long	.LASF509
	.byte	0x18
	.byte	0x12
	.byte	0xa1
	.long	0x12cc
	.uleb128 0x8
	.long	.LASF510
	.byte	0x12
	.byte	0xa3
	.long	0x3e1
	.byte	0
	.uleb128 0x8
	.long	.LASF511
	.byte	0x12
	.byte	0xa4
	.long	0x12cc
	.byte	0x8
	.uleb128 0x8
	.long	.LASF512
	.byte	0x12
	.byte	0xa5
	.long	0x57a
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x129b
	.uleb128 0x4
	.long	.LASF513
	.byte	0x58
	.byte	0x12
	.byte	0xa8
	.long	0x1384
	.uleb128 0x8
	.long	.LASF514
	.byte	0x12
	.byte	0xaa
	.long	0x396
	.byte	0
	.uleb128 0x8
	.long	.LASF515
	.byte	0x12
	.byte	0xab
	.long	0x12cc
	.byte	0x8
	.uleb128 0x8
	.long	.LASF516
	.byte	0x12
	.byte	0xac
	.long	0x3e1
	.byte	0x10
	.uleb128 0x8
	.long	.LASF517
	.byte	0x12
	.byte	0xad
	.long	0x3e1
	.byte	0x18
	.uleb128 0x8
	.long	.LASF518
	.byte	0x12
	.byte	0xae
	.long	0x3e1
	.byte	0x20
	.uleb128 0x8
	.long	.LASF519
	.byte	0x12
	.byte	0xaf
	.long	0x396
	.byte	0x28
	.uleb128 0x8
	.long	.LASF520
	.byte	0x12
	.byte	0xb0
	.long	0x1e3
	.byte	0x30
	.uleb128 0x8
	.long	.LASF521
	.byte	0x12
	.byte	0xb5
	.long	0x1398
	.byte	0x38
	.uleb128 0x8
	.long	.LASF522
	.byte	0x12
	.byte	0xb6
	.long	0x13ae
	.byte	0x40
	.uleb128 0x8
	.long	.LASF523
	.byte	0x12
	.byte	0xb7
	.long	0x389
	.byte	0x48
	.uleb128 0x5
	.long	.LASF524
	.byte	0x12
	.byte	0xbd
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x50
	.uleb128 0x5
	.long	.LASF525
	.byte	0x12
	.byte	0xbe
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x50
	.uleb128 0x5
	.long	.LASF526
	.byte	0x12
	.byte	0xc2
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x50
	.byte	0
	.uleb128 0x20
	.long	0x12cc
	.long	0x1398
	.uleb128 0x1b
	.long	0x389
	.uleb128 0x1b
	.long	0x396
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1384
	.uleb128 0x1a
	.long	0x13ae
	.uleb128 0x1b
	.long	0x389
	.uleb128 0x1b
	.long	0x12cc
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x139e
	.uleb128 0x4
	.long	.LASF527
	.byte	0x10
	.byte	0x13
	.byte	0x1a
	.long	0x13d9
	.uleb128 0x6
	.string	"len"
	.byte	0x13
	.byte	0x1c
	.long	0x382
	.byte	0
	.uleb128 0x6
	.string	"str"
	.byte	0x13
	.byte	0x1d
	.long	0x13d9
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x13df
	.uleb128 0xc
	.long	0x3af
	.uleb128 0x11
	.long	.LASF528
	.byte	0x28
	.byte	0x4
	.value	0x317
	.long	0x140b
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x319
	.long	0xf8a
	.byte	0
	.uleb128 0x1f
	.string	"id"
	.byte	0x4
	.value	0x31a
	.long	0x13b4
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.long	.LASF529
	.byte	0x28
	.byte	0x4
	.value	0x321
	.long	0x1440
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x323
	.long	0xf8a
	.byte	0
	.uleb128 0x12
	.long	.LASF530
	.byte	0x4
	.value	0x324
	.long	0x123
	.byte	0x18
	.uleb128 0x12
	.long	.LASF531
	.byte	0x4
	.value	0x325
	.long	0x123
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.long	.LASF532
	.byte	0x28
	.byte	0x4
	.value	0x32e
	.long	0x1473
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x330
	.long	0xf8a
	.byte	0
	.uleb128 0x12
	.long	.LASF502
	.byte	0x4
	.value	0x331
	.long	0x1e3
	.byte	0x18
	.uleb128 0x1f
	.string	"a"
	.byte	0x4
	.value	0x332
	.long	0x1473
	.byte	0x20
	.byte	0
	.uleb128 0x14
	.long	0x123
	.long	0x1483
	.uleb128 0x15
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	.LASF533
	.byte	0x28
	.byte	0x4
	.value	0x36f
	.long	0x14b8
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x371
	.long	0xf8a
	.byte	0
	.uleb128 0x12
	.long	.LASF534
	.byte	0x4
	.value	0x372
	.long	0x1e3
	.byte	0x18
	.uleb128 0x12
	.long	.LASF535
	.byte	0x4
	.value	0x373
	.long	0x1473
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.long	.LASF536
	.byte	0x50
	.byte	0x4
	.value	0x3a3
	.long	0x1551
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x3a5
	.long	0xf8a
	.byte	0
	.uleb128 0x21
	.long	.LASF537
	.byte	0x4
	.value	0x3a7
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x18
	.uleb128 0x21
	.long	.LASF538
	.byte	0x4
	.value	0x3a8
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x18
	.uleb128 0x21
	.long	.LASF539
	.byte	0x4
	.value	0x3a9
	.long	0x382
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x18
	.uleb128 0x12
	.long	.LASF540
	.byte	0x4
	.value	0x3ab
	.long	0x123
	.byte	0x20
	.uleb128 0x12
	.long	.LASF541
	.byte	0x4
	.value	0x3ac
	.long	0x123
	.byte	0x28
	.uleb128 0x12
	.long	.LASF542
	.byte	0x4
	.value	0x3ad
	.long	0x123
	.byte	0x30
	.uleb128 0x12
	.long	.LASF543
	.byte	0x4
	.value	0x3ae
	.long	0x123
	.byte	0x38
	.uleb128 0x12
	.long	.LASF544
	.byte	0x4
	.value	0x3af
	.long	0x123
	.byte	0x40
	.uleb128 0x12
	.long	.LASF545
	.byte	0x4
	.value	0x3b0
	.long	0x123
	.byte	0x48
	.byte	0
	.uleb128 0x22
	.byte	0x8
	.byte	0x4
	.value	0x4d8
	.long	0x1573
	.uleb128 0xa
	.long	.LASF546
	.byte	0x4
	.value	0x4d8
	.long	0x1e3
	.uleb128 0xa
	.long	.LASF503
	.byte	0x4
	.value	0x4d8
	.long	0x3e1
	.byte	0
	.uleb128 0x11
	.long	.LASF547
	.byte	0xa8
	.byte	0x4
	.value	0x4b8
	.long	0x1788
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x4ba
	.long	0xf8a
	.byte	0
	.uleb128 0x12
	.long	.LASF548
	.byte	0x4
	.value	0x4bb
	.long	0x123
	.byte	0x18
	.uleb128 0x12
	.long	.LASF549
	.byte	0x4
	.value	0x4bc
	.long	0x123
	.byte	0x20
	.uleb128 0x12
	.long	.LASF550
	.byte	0x4
	.value	0x4bd
	.long	0x123
	.byte	0x28
	.uleb128 0x12
	.long	.LASF551
	.byte	0x4
	.value	0x4be
	.long	0x123
	.byte	0x30
	.uleb128 0x1f
	.string	"uid"
	.byte	0x4
	.value	0x4bf
	.long	0x382
	.byte	0x38
	.uleb128 0x21
	.long	.LASF552
	.byte	0x4
	.value	0x4c1
	.long	0x382
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF1
	.byte	0x4
	.value	0x4c2
	.long	0x382
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF553
	.byte	0x4
	.value	0x4c4
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF554
	.byte	0x4
	.value	0x4c5
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF555
	.byte	0x4
	.value	0x4c6
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF556
	.byte	0x4
	.value	0x4c7
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF557
	.byte	0x4
	.value	0x4c8
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF558
	.byte	0x4
	.value	0x4c9
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF559
	.byte	0x4
	.value	0x4ca
	.long	0x382
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF489
	.byte	0x4
	.value	0x4cc
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF490
	.byte	0x4
	.value	0x4cd
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF491
	.byte	0x4
	.value	0x4ce
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF492
	.byte	0x4
	.value	0x4cf
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF493
	.byte	0x4
	.value	0x4d0
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF494
	.byte	0x4
	.value	0x4d1
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF495
	.byte	0x4
	.value	0x4d2
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x3c
	.uleb128 0x21
	.long	.LASF560
	.byte	0x4
	.value	0x4d3
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x3c
	.uleb128 0x12
	.long	.LASF561
	.byte	0x4
	.value	0x4d5
	.long	0x382
	.byte	0x40
	.uleb128 0x12
	.long	.LASF562
	.byte	0x4
	.value	0x4d6
	.long	0x123
	.byte	0x48
	.uleb128 0x12
	.long	.LASF563
	.byte	0x4
	.value	0x4d7
	.long	0x123
	.byte	0x50
	.uleb128 0x12
	.long	.LASF564
	.byte	0x4
	.value	0x4d8
	.long	0x1551
	.byte	0x58
	.uleb128 0x12
	.long	.LASF149
	.byte	0x4
	.value	0x4d9
	.long	0x123
	.byte	0x60
	.uleb128 0x12
	.long	.LASF565
	.byte	0x4
	.value	0x4da
	.long	0x123
	.byte	0x68
	.uleb128 0x12
	.long	.LASF566
	.byte	0x4
	.value	0x4db
	.long	0x123
	.byte	0x70
	.uleb128 0x12
	.long	.LASF567
	.byte	0x4
	.value	0x4dc
	.long	0x123
	.byte	0x78
	.uleb128 0x12
	.long	.LASF568
	.byte	0x4
	.value	0x4dd
	.long	0x123
	.byte	0x80
	.uleb128 0x12
	.long	.LASF569
	.byte	0x4
	.value	0x4de
	.long	0x123
	.byte	0x88
	.uleb128 0x12
	.long	.LASF570
	.byte	0x4
	.value	0x4df
	.long	0x123
	.byte	0x90
	.uleb128 0x12
	.long	.LASF571
	.byte	0x4
	.value	0x4e0
	.long	0x396
	.byte	0x98
	.uleb128 0x12
	.long	.LASF572
	.byte	0x4
	.value	0x4e2
	.long	0x178d
	.byte	0xa0
	.byte	0
	.uleb128 0x23
	.long	.LASF690
	.uleb128 0x3
	.byte	0x8
	.long	0x1788
	.uleb128 0x1e
	.byte	0x4
	.byte	0x4
	.value	0x717
	.long	0x17bd
	.uleb128 0x21
	.long	.LASF561
	.byte	0x4
	.value	0x717
	.long	0x382
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0x21
	.long	.LASF573
	.byte	0x4
	.value	0x717
	.long	0x382
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x8
	.byte	0x4
	.value	0x70e
	.long	0x17e5
	.uleb128 0xb
	.string	"f"
	.byte	0x4
	.value	0x711
	.long	0xd1d
	.uleb128 0xb
	.string	"i"
	.byte	0x4
	.value	0x714
	.long	0x396
	.uleb128 0xb
	.string	"a"
	.byte	0x4
	.value	0x717
	.long	0x1793
	.byte	0
	.uleb128 0x22
	.byte	0x8
	.byte	0x4
	.value	0x72c
	.long	0x1817
	.uleb128 0xb
	.string	"f"
	.byte	0x4
	.value	0x72d
	.long	0x1c97
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
	.uleb128 0x24
	.long	.LASF574
	.value	0x1b0
	.byte	0x14
	.byte	0xae
	.long	0x1c97
	.uleb128 0x6
	.string	"eh"
	.byte	0x14
	.byte	0xb0
	.long	0x2ca4
	.byte	0
	.uleb128 0x8
	.long	.LASF575
	.byte	0x14
	.byte	0xb1
	.long	0x2caf
	.byte	0x8
	.uleb128 0x8
	.long	.LASF576
	.byte	0x14
	.byte	0xb2
	.long	0x2cb5
	.byte	0x10
	.uleb128 0x8
	.long	.LASF577
	.byte	0x14
	.byte	0xb3
	.long	0x2cbb
	.byte	0x18
	.uleb128 0x8
	.long	.LASF578
	.byte	0x14
	.byte	0xb4
	.long	0x2cc6
	.byte	0x20
	.uleb128 0x8
	.long	.LASF149
	.byte	0x14
	.byte	0xb9
	.long	0x5f4
	.byte	0x28
	.uleb128 0x8
	.long	.LASF23
	.byte	0x14
	.byte	0xbc
	.long	0x123
	.byte	0x30
	.uleb128 0x8
	.long	.LASF579
	.byte	0x14
	.byte	0xbf
	.long	0x1c97
	.byte	0x38
	.uleb128 0x8
	.long	.LASF580
	.byte	0x14
	.byte	0xc4
	.long	0x1e3
	.byte	0x40
	.uleb128 0x8
	.long	.LASF581
	.byte	0x14
	.byte	0xc9
	.long	0x1e3
	.byte	0x44
	.uleb128 0x8
	.long	.LASF582
	.byte	0x14
	.byte	0xce
	.long	0x1e3
	.byte	0x48
	.uleb128 0x8
	.long	.LASF583
	.byte	0x14
	.byte	0xd2
	.long	0x1e3
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF584
	.byte	0x14
	.byte	0xd6
	.long	0x2d
	.byte	0x50
	.uleb128 0x8
	.long	.LASF585
	.byte	0x14
	.byte	0xda
	.long	0x304
	.byte	0x58
	.uleb128 0x8
	.long	.LASF586
	.byte	0x14
	.byte	0xe0
	.long	0x2d
	.byte	0x78
	.uleb128 0x8
	.long	.LASF587
	.byte	0x14
	.byte	0xe3
	.long	0x2d
	.byte	0x80
	.uleb128 0x8
	.long	.LASF588
	.byte	0x14
	.byte	0xe7
	.long	0x5f4
	.byte	0x88
	.uleb128 0x8
	.long	.LASF589
	.byte	0x14
	.byte	0xeb
	.long	0x2cd1
	.byte	0x90
	.uleb128 0x8
	.long	.LASF590
	.byte	0x14
	.byte	0xee
	.long	0x1e3
	.byte	0x98
	.uleb128 0x8
	.long	.LASF591
	.byte	0x14
	.byte	0xf3
	.long	0x123
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF592
	.byte	0x14
	.byte	0xf9
	.long	0x2d
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF593
	.byte	0x14
	.byte	0xfd
	.long	0x2d
	.byte	0xb0
	.uleb128 0x12
	.long	.LASF594
	.byte	0x14
	.value	0x102
	.long	0x2d
	.byte	0xb8
	.uleb128 0x12
	.long	.LASF595
	.byte	0x14
	.value	0x108
	.long	0x2d
	.byte	0xc0
	.uleb128 0x12
	.long	.LASF596
	.byte	0x14
	.value	0x10d
	.long	0x2d
	.byte	0xc8
	.uleb128 0x12
	.long	.LASF597
	.byte	0x14
	.value	0x111
	.long	0x2d
	.byte	0xd0
	.uleb128 0x12
	.long	.LASF598
	.byte	0x14
	.value	0x115
	.long	0x2d
	.byte	0xd8
	.uleb128 0x12
	.long	.LASF599
	.byte	0x14
	.value	0x118
	.long	0x123
	.byte	0xe0
	.uleb128 0x12
	.long	.LASF600
	.byte	0x14
	.value	0x11c
	.long	0x2d
	.byte	0xe8
	.uleb128 0x12
	.long	.LASF601
	.byte	0x14
	.value	0x11f
	.long	0x2d
	.byte	0xf0
	.uleb128 0x12
	.long	.LASF602
	.byte	0x14
	.value	0x125
	.long	0x2d
	.byte	0xf8
	.uleb128 0x25
	.long	.LASF603
	.byte	0x14
	.value	0x12a
	.long	0x2d
	.value	0x100
	.uleb128 0x25
	.long	.LASF604
	.byte	0x14
	.value	0x12f
	.long	0x396
	.value	0x108
	.uleb128 0x25
	.long	.LASF605
	.byte	0x14
	.value	0x134
	.long	0x123
	.value	0x110
	.uleb128 0x25
	.long	.LASF606
	.byte	0x14
	.value	0x13d
	.long	0x123
	.value	0x118
	.uleb128 0x25
	.long	.LASF607
	.byte	0x14
	.value	0x140
	.long	0x2d
	.value	0x120
	.uleb128 0x25
	.long	.LASF608
	.byte	0x14
	.value	0x144
	.long	0x2d
	.value	0x128
	.uleb128 0x25
	.long	.LASF609
	.byte	0x14
	.value	0x148
	.long	0x382
	.value	0x130
	.uleb128 0x25
	.long	.LASF610
	.byte	0x14
	.value	0x14e
	.long	0x2a1c
	.value	0x138
	.uleb128 0x25
	.long	.LASF611
	.byte	0x14
	.value	0x151
	.long	0x2cdc
	.value	0x140
	.uleb128 0x25
	.long	.LASF612
	.byte	0x14
	.value	0x154
	.long	0x1e3
	.value	0x148
	.uleb128 0x25
	.long	.LASF613
	.byte	0x14
	.value	0x157
	.long	0x1e3
	.value	0x14c
	.uleb128 0x25
	.long	.LASF614
	.byte	0x14
	.value	0x15d
	.long	0x1e3
	.value	0x150
	.uleb128 0x25
	.long	.LASF615
	.byte	0x14
	.value	0x161
	.long	0x2b46
	.value	0x158
	.uleb128 0x25
	.long	.LASF616
	.byte	0x14
	.value	0x164
	.long	0x1e3
	.value	0x160
	.uleb128 0x25
	.long	.LASF617
	.byte	0x14
	.value	0x165
	.long	0x1e3
	.value	0x164
	.uleb128 0x25
	.long	.LASF618
	.byte	0x14
	.value	0x167
	.long	0x389
	.value	0x168
	.uleb128 0x25
	.long	.LASF619
	.byte	0x14
	.value	0x168
	.long	0x123
	.value	0x170
	.uleb128 0x25
	.long	.LASF620
	.byte	0x14
	.value	0x16b
	.long	0x2d
	.value	0x178
	.uleb128 0x25
	.long	.LASF621
	.byte	0x14
	.value	0x16d
	.long	0x1e3
	.value	0x180
	.uleb128 0x25
	.long	.LASF622
	.byte	0x14
	.value	0x170
	.long	0x1e3
	.value	0x184
	.uleb128 0x25
	.long	.LASF623
	.byte	0x14
	.value	0x175
	.long	0x2ce7
	.value	0x188
	.uleb128 0x25
	.long	.LASF624
	.byte	0x14
	.value	0x177
	.long	0x1e3
	.value	0x190
	.uleb128 0x25
	.long	.LASF625
	.byte	0x14
	.value	0x179
	.long	0x1e3
	.value	0x194
	.uleb128 0x25
	.long	.LASF626
	.byte	0x14
	.value	0x17c
	.long	0x2cf2
	.value	0x198
	.uleb128 0x25
	.long	.LASF627
	.byte	0x14
	.value	0x182
	.long	0x2d
	.value	0x1a0
	.uleb128 0x26
	.long	.LASF628
	.byte	0x14
	.value	0x188
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF629
	.byte	0x14
	.value	0x18c
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF630
	.byte	0x14
	.value	0x18f
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF631
	.byte	0x14
	.value	0x192
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF632
	.byte	0x14
	.value	0x195
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF633
	.byte	0x14
	.value	0x198
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF634
	.byte	0x14
	.value	0x19c
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF635
	.byte	0x14
	.value	0x19f
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF636
	.byte	0x14
	.value	0x1a3
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF637
	.byte	0x14
	.value	0x1a7
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF638
	.byte	0x14
	.value	0x1aa
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF639
	.byte	0x14
	.value	0x1ad
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF640
	.byte	0x14
	.value	0x1b2
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF641
	.byte	0x14
	.value	0x1b6
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF642
	.byte	0x14
	.value	0x1b9
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF643
	.byte	0x14
	.value	0x1bd
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF644
	.byte	0x14
	.value	0x1c1
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF645
	.byte	0x14
	.value	0x1c5
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF646
	.byte	0x14
	.value	0x1cb
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF647
	.byte	0x14
	.value	0x1d4
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF648
	.byte	0x14
	.value	0x1d7
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF649
	.byte	0x14
	.value	0x1da
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF650
	.byte	0x14
	.value	0x1dd
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.value	0x1a8
	.uleb128 0x26
	.long	.LASF651
	.byte	0x14
	.value	0x1e0
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.value	0x1a8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1817
	.uleb128 0x11
	.long	.LASF652
	.byte	0xd0
	.byte	0x4
	.value	0x6dc
	.long	0x2021
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x6de
	.long	0xf8a
	.byte	0
	.uleb128 0x12
	.long	.LASF653
	.byte	0x4
	.value	0x6df
	.long	0x5f4
	.byte	0x18
	.uleb128 0x12
	.long	.LASF654
	.byte	0x4
	.value	0x6e0
	.long	0x1e3
	.byte	0x20
	.uleb128 0x1f
	.string	"uid"
	.byte	0x4
	.value	0x6e1
	.long	0x382
	.byte	0x24
	.uleb128 0x12
	.long	.LASF549
	.byte	0x4
	.value	0x6e2
	.long	0x123
	.byte	0x28
	.uleb128 0x21
	.long	.LASF1
	.byte	0x4
	.value	0x6e3
	.long	0x382
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x30
	.uleb128 0x21
	.long	.LASF655
	.byte	0x4
	.value	0x6e5
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x30
	.uleb128 0x21
	.long	.LASF656
	.byte	0x4
	.value	0x6e6
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x30
	.uleb128 0x21
	.long	.LASF657
	.byte	0x4
	.value	0x6e7
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x30
	.uleb128 0x21
	.long	.LASF658
	.byte	0x4
	.value	0x6e8
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x30
	.uleb128 0x21
	.long	.LASF659
	.byte	0x4
	.value	0x6e9
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x30
	.uleb128 0x21
	.long	.LASF660
	.byte	0x4
	.value	0x6ea
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x30
	.uleb128 0x21
	.long	.LASF661
	.byte	0x4
	.value	0x6eb
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x30
	.uleb128 0x21
	.long	.LASF538
	.byte	0x4
	.value	0x6ec
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x30
	.uleb128 0x21
	.long	.LASF662
	.byte	0x4
	.value	0x6ee
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x30
	.uleb128 0x21
	.long	.LASF663
	.byte	0x4
	.value	0x6ef
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x30
	.uleb128 0x21
	.long	.LASF664
	.byte	0x4
	.value	0x6f0
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x30
	.uleb128 0x21
	.long	.LASF665
	.byte	0x4
	.value	0x6f1
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x30
	.uleb128 0x21
	.long	.LASF666
	.byte	0x4
	.value	0x6f2
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x30
	.uleb128 0x21
	.long	.LASF667
	.byte	0x4
	.value	0x6f3
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x30
	.uleb128 0x21
	.long	.LASF668
	.byte	0x4
	.value	0x6f4
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x30
	.uleb128 0x21
	.long	.LASF669
	.byte	0x4
	.value	0x6f5
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x30
	.uleb128 0x21
	.long	.LASF670
	.byte	0x4
	.value	0x6f7
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x30
	.uleb128 0x21
	.long	.LASF671
	.byte	0x4
	.value	0x6f8
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x30
	.uleb128 0x21
	.long	.LASF672
	.byte	0x4
	.value	0x6f9
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x30
	.uleb128 0x21
	.long	.LASF673
	.byte	0x4
	.value	0x6fa
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x30
	.uleb128 0x21
	.long	.LASF674
	.byte	0x4
	.value	0x6fb
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x30
	.uleb128 0x21
	.long	.LASF675
	.byte	0x4
	.value	0x6fc
	.long	0x382
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x30
	.uleb128 0x21
	.long	.LASF676
	.byte	0x4
	.value	0x6fd
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x30
	.uleb128 0x21
	.long	.LASF559
	.byte	0x4
	.value	0x6ff
	.long	0x382
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x34
	.uleb128 0x21
	.long	.LASF677
	.byte	0x4
	.value	0x700
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x34
	.uleb128 0x21
	.long	.LASF560
	.byte	0x4
	.value	0x701
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x34
	.uleb128 0x21
	.long	.LASF678
	.byte	0x4
	.value	0x702
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x34
	.uleb128 0x21
	.long	.LASF489
	.byte	0x4
	.value	0x705
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x34
	.uleb128 0x21
	.long	.LASF490
	.byte	0x4
	.value	0x706
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x34
	.uleb128 0x21
	.long	.LASF491
	.byte	0x4
	.value	0x707
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x34
	.uleb128 0x21
	.long	.LASF492
	.byte	0x4
	.value	0x708
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x34
	.uleb128 0x21
	.long	.LASF493
	.byte	0x4
	.value	0x709
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x34
	.uleb128 0x21
	.long	.LASF494
	.byte	0x4
	.value	0x70a
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x34
	.uleb128 0x21
	.long	.LASF495
	.byte	0x4
	.value	0x70b
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x34
	.uleb128 0x21
	.long	.LASF679
	.byte	0x4
	.value	0x70c
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x34
	.uleb128 0x1f
	.string	"u1"
	.byte	0x4
	.value	0x718
	.long	0x17bd
	.byte	0x38
	.uleb128 0x12
	.long	.LASF550
	.byte	0x4
	.value	0x71a
	.long	0x123
	.byte	0x40
	.uleb128 0x12
	.long	.LASF149
	.byte	0x4
	.value	0x71b
	.long	0x123
	.byte	0x48
	.uleb128 0x12
	.long	.LASF570
	.byte	0x4
	.value	0x71c
	.long	0x123
	.byte	0x50
	.uleb128 0x12
	.long	.LASF680
	.byte	0x4
	.value	0x71d
	.long	0x123
	.byte	0x58
	.uleb128 0x12
	.long	.LASF681
	.byte	0x4
	.value	0x71e
	.long	0x123
	.byte	0x60
	.uleb128 0x12
	.long	.LASF682
	.byte	0x4
	.value	0x71f
	.long	0x123
	.byte	0x68
	.uleb128 0x12
	.long	.LASF543
	.byte	0x4
	.value	0x720
	.long	0x123
	.byte	0x70
	.uleb128 0x12
	.long	.LASF683
	.byte	0x4
	.value	0x721
	.long	0x123
	.byte	0x78
	.uleb128 0x12
	.long	.LASF684
	.byte	0x4
	.value	0x722
	.long	0x123
	.byte	0x80
	.uleb128 0x12
	.long	.LASF551
	.byte	0x4
	.value	0x723
	.long	0x123
	.byte	0x88
	.uleb128 0x1f
	.string	"rtl"
	.byte	0x4
	.value	0x724
	.long	0x2d
	.byte	0x90
	.uleb128 0x12
	.long	.LASF685
	.byte	0x4
	.value	0x725
	.long	0x2d
	.byte	0x98
	.uleb128 0x1f
	.string	"u2"
	.byte	0x4
	.value	0x731
	.long	0x17e5
	.byte	0xa0
	.uleb128 0x12
	.long	.LASF686
	.byte	0x4
	.value	0x734
	.long	0x123
	.byte	0xa8
	.uleb128 0x12
	.long	.LASF687
	.byte	0x4
	.value	0x738
	.long	0x123
	.byte	0xb0
	.uleb128 0x12
	.long	.LASF688
	.byte	0x4
	.value	0x73a
	.long	0x123
	.byte	0xb8
	.uleb128 0x12
	.long	.LASF689
	.byte	0x4
	.value	0x73b
	.long	0x396
	.byte	0xc0
	.uleb128 0x12
	.long	.LASF572
	.byte	0x4
	.value	0x73d
	.long	0x2026
	.byte	0xc8
	.byte	0
	.uleb128 0x23
	.long	.LASF691
	.uleb128 0x3
	.byte	0x8
	.long	0x2021
	.uleb128 0xf
	.long	.LASF692
	.byte	0x4
	.byte	0x4
	.value	0x757
	.long	0x2172
	.uleb128 0x10
	.long	.LASF693
	.sleb128 0
	.uleb128 0x10
	.long	.LASF694
	.sleb128 1
	.uleb128 0x10
	.long	.LASF695
	.sleb128 2
	.uleb128 0x10
	.long	.LASF696
	.sleb128 3
	.uleb128 0x10
	.long	.LASF697
	.sleb128 4
	.uleb128 0x10
	.long	.LASF698
	.sleb128 5
	.uleb128 0x10
	.long	.LASF699
	.sleb128 6
	.uleb128 0x10
	.long	.LASF700
	.sleb128 7
	.uleb128 0x10
	.long	.LASF701
	.sleb128 8
	.uleb128 0x10
	.long	.LASF702
	.sleb128 9
	.uleb128 0x10
	.long	.LASF703
	.sleb128 10
	.uleb128 0x10
	.long	.LASF704
	.sleb128 11
	.uleb128 0x10
	.long	.LASF705
	.sleb128 12
	.uleb128 0x10
	.long	.LASF706
	.sleb128 13
	.uleb128 0x10
	.long	.LASF707
	.sleb128 14
	.uleb128 0x10
	.long	.LASF708
	.sleb128 15
	.uleb128 0x10
	.long	.LASF709
	.sleb128 16
	.uleb128 0x10
	.long	.LASF710
	.sleb128 17
	.uleb128 0x10
	.long	.LASF711
	.sleb128 18
	.uleb128 0x10
	.long	.LASF712
	.sleb128 19
	.uleb128 0x10
	.long	.LASF713
	.sleb128 20
	.uleb128 0x10
	.long	.LASF714
	.sleb128 21
	.uleb128 0x10
	.long	.LASF715
	.sleb128 22
	.uleb128 0x10
	.long	.LASF716
	.sleb128 23
	.uleb128 0x10
	.long	.LASF717
	.sleb128 24
	.uleb128 0x10
	.long	.LASF718
	.sleb128 25
	.uleb128 0x10
	.long	.LASF719
	.sleb128 26
	.uleb128 0x10
	.long	.LASF720
	.sleb128 27
	.uleb128 0x10
	.long	.LASF721
	.sleb128 28
	.uleb128 0x10
	.long	.LASF722
	.sleb128 29
	.uleb128 0x10
	.long	.LASF723
	.sleb128 30
	.uleb128 0x10
	.long	.LASF724
	.sleb128 31
	.uleb128 0x10
	.long	.LASF725
	.sleb128 32
	.uleb128 0x10
	.long	.LASF726
	.sleb128 33
	.uleb128 0x10
	.long	.LASF727
	.sleb128 34
	.uleb128 0x10
	.long	.LASF728
	.sleb128 35
	.uleb128 0x10
	.long	.LASF729
	.sleb128 36
	.uleb128 0x10
	.long	.LASF730
	.sleb128 37
	.uleb128 0x10
	.long	.LASF731
	.sleb128 38
	.uleb128 0x10
	.long	.LASF732
	.sleb128 39
	.uleb128 0x10
	.long	.LASF733
	.sleb128 40
	.uleb128 0x10
	.long	.LASF734
	.sleb128 41
	.uleb128 0x10
	.long	.LASF735
	.sleb128 42
	.uleb128 0x10
	.long	.LASF736
	.sleb128 43
	.uleb128 0x10
	.long	.LASF737
	.sleb128 44
	.uleb128 0x10
	.long	.LASF738
	.sleb128 45
	.uleb128 0x10
	.long	.LASF739
	.sleb128 46
	.uleb128 0x10
	.long	.LASF740
	.sleb128 47
	.uleb128 0x10
	.long	.LASF741
	.sleb128 48
	.uleb128 0x10
	.long	.LASF742
	.sleb128 49
	.uleb128 0x10
	.long	.LASF743
	.sleb128 50
	.uleb128 0x10
	.long	.LASF744
	.sleb128 51
	.byte	0
	.uleb128 0xf
	.long	.LASF745
	.byte	0x4
	.byte	0x4
	.value	0x7e4
	.long	0x21c8
	.uleb128 0x10
	.long	.LASF746
	.sleb128 0
	.uleb128 0x10
	.long	.LASF747
	.sleb128 1
	.uleb128 0x10
	.long	.LASF748
	.sleb128 2
	.uleb128 0x10
	.long	.LASF749
	.sleb128 3
	.uleb128 0x10
	.long	.LASF750
	.sleb128 4
	.uleb128 0x10
	.long	.LASF751
	.sleb128 5
	.uleb128 0x10
	.long	.LASF752
	.sleb128 6
	.uleb128 0x10
	.long	.LASF753
	.sleb128 7
	.uleb128 0x10
	.long	.LASF754
	.sleb128 8
	.uleb128 0x10
	.long	.LASF755
	.sleb128 9
	.uleb128 0x10
	.long	.LASF756
	.sleb128 10
	.uleb128 0x10
	.long	.LASF757
	.sleb128 11
	.byte	0
	.uleb128 0x11
	.long	.LASF758
	.byte	0x20
	.byte	0x4
	.value	0x885
	.long	0x2231
	.uleb128 0x12
	.long	.LASF149
	.byte	0x4
	.value	0x889
	.long	0x2231
	.byte	0
	.uleb128 0x12
	.long	.LASF759
	.byte	0x4
	.value	0x88b
	.long	0x1de
	.byte	0x8
	.uleb128 0x12
	.long	.LASF760
	.byte	0x4
	.value	0x88e
	.long	0x1de
	.byte	0xc
	.uleb128 0x12
	.long	.LASF761
	.byte	0x4
	.value	0x896
	.long	0x2236
	.byte	0x10
	.uleb128 0x12
	.long	.LASF762
	.byte	0x4
	.value	0x899
	.long	0x2236
	.byte	0x11
	.uleb128 0x12
	.long	.LASF763
	.byte	0x4
	.value	0x89e
	.long	0x2236
	.byte	0x12
	.uleb128 0x12
	.long	.LASF764
	.byte	0x4
	.value	0x8ad
	.long	0x2271
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.long	0x5f4
	.uleb128 0xc
	.long	0x223b
	.uleb128 0xe
	.byte	0x1
	.byte	0x2
	.long	.LASF765
	.uleb128 0x20
	.long	0x123
	.long	0x2265
	.uleb128 0x1b
	.long	0x2265
	.uleb128 0x1b
	.long	0x123
	.uleb128 0x1b
	.long	0x123
	.uleb128 0x1b
	.long	0x1e3
	.uleb128 0x1b
	.long	0x226b
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x123
	.uleb128 0x3
	.byte	0x8
	.long	0x223b
	.uleb128 0xc
	.long	0x2276
	.uleb128 0x3
	.byte	0x8
	.long	0x2242
	.uleb128 0xf
	.long	.LASF766
	.byte	0x4
	.byte	0x4
	.value	0x972
	.long	0x22b4
	.uleb128 0x10
	.long	.LASF767
	.sleb128 0
	.uleb128 0x10
	.long	.LASF768
	.sleb128 1
	.uleb128 0x10
	.long	.LASF769
	.sleb128 2
	.uleb128 0x10
	.long	.LASF770
	.sleb128 3
	.uleb128 0x10
	.long	.LASF771
	.sleb128 4
	.uleb128 0x10
	.long	.LASF772
	.sleb128 5
	.uleb128 0x10
	.long	.LASF773
	.sleb128 6
	.byte	0
	.uleb128 0x1d
	.long	.LASF774
	.byte	0x4
	.byte	0x2
	.byte	0x29
	.long	0x26b0
	.uleb128 0x10
	.long	.LASF775
	.sleb128 0
	.uleb128 0x27
	.string	"NIL"
	.sleb128 1
	.uleb128 0x10
	.long	.LASF776
	.sleb128 2
	.uleb128 0x10
	.long	.LASF777
	.sleb128 3
	.uleb128 0x10
	.long	.LASF778
	.sleb128 4
	.uleb128 0x10
	.long	.LASF779
	.sleb128 5
	.uleb128 0x10
	.long	.LASF780
	.sleb128 6
	.uleb128 0x10
	.long	.LASF781
	.sleb128 7
	.uleb128 0x10
	.long	.LASF782
	.sleb128 8
	.uleb128 0x10
	.long	.LASF783
	.sleb128 9
	.uleb128 0x10
	.long	.LASF784
	.sleb128 10
	.uleb128 0x10
	.long	.LASF785
	.sleb128 11
	.uleb128 0x10
	.long	.LASF786
	.sleb128 12
	.uleb128 0x10
	.long	.LASF787
	.sleb128 13
	.uleb128 0x10
	.long	.LASF788
	.sleb128 14
	.uleb128 0x10
	.long	.LASF789
	.sleb128 15
	.uleb128 0x10
	.long	.LASF790
	.sleb128 16
	.uleb128 0x10
	.long	.LASF791
	.sleb128 17
	.uleb128 0x10
	.long	.LASF792
	.sleb128 18
	.uleb128 0x10
	.long	.LASF793
	.sleb128 19
	.uleb128 0x10
	.long	.LASF794
	.sleb128 20
	.uleb128 0x10
	.long	.LASF795
	.sleb128 21
	.uleb128 0x10
	.long	.LASF796
	.sleb128 22
	.uleb128 0x10
	.long	.LASF797
	.sleb128 23
	.uleb128 0x10
	.long	.LASF798
	.sleb128 24
	.uleb128 0x10
	.long	.LASF799
	.sleb128 25
	.uleb128 0x10
	.long	.LASF800
	.sleb128 26
	.uleb128 0x10
	.long	.LASF801
	.sleb128 27
	.uleb128 0x10
	.long	.LASF802
	.sleb128 28
	.uleb128 0x10
	.long	.LASF803
	.sleb128 29
	.uleb128 0x10
	.long	.LASF804
	.sleb128 30
	.uleb128 0x10
	.long	.LASF805
	.sleb128 31
	.uleb128 0x10
	.long	.LASF806
	.sleb128 32
	.uleb128 0x10
	.long	.LASF807
	.sleb128 33
	.uleb128 0x10
	.long	.LASF808
	.sleb128 34
	.uleb128 0x10
	.long	.LASF809
	.sleb128 35
	.uleb128 0x10
	.long	.LASF810
	.sleb128 36
	.uleb128 0x10
	.long	.LASF811
	.sleb128 37
	.uleb128 0x10
	.long	.LASF812
	.sleb128 38
	.uleb128 0x10
	.long	.LASF813
	.sleb128 39
	.uleb128 0x10
	.long	.LASF814
	.sleb128 40
	.uleb128 0x10
	.long	.LASF815
	.sleb128 41
	.uleb128 0x10
	.long	.LASF816
	.sleb128 42
	.uleb128 0x10
	.long	.LASF817
	.sleb128 43
	.uleb128 0x10
	.long	.LASF818
	.sleb128 44
	.uleb128 0x10
	.long	.LASF819
	.sleb128 45
	.uleb128 0x10
	.long	.LASF820
	.sleb128 46
	.uleb128 0x27
	.string	"SET"
	.sleb128 47
	.uleb128 0x27
	.string	"USE"
	.sleb128 48
	.uleb128 0x10
	.long	.LASF821
	.sleb128 49
	.uleb128 0x10
	.long	.LASF822
	.sleb128 50
	.uleb128 0x10
	.long	.LASF823
	.sleb128 51
	.uleb128 0x10
	.long	.LASF824
	.sleb128 52
	.uleb128 0x10
	.long	.LASF825
	.sleb128 53
	.uleb128 0x10
	.long	.LASF826
	.sleb128 54
	.uleb128 0x10
	.long	.LASF827
	.sleb128 55
	.uleb128 0x10
	.long	.LASF828
	.sleb128 56
	.uleb128 0x10
	.long	.LASF829
	.sleb128 57
	.uleb128 0x10
	.long	.LASF830
	.sleb128 58
	.uleb128 0x27
	.string	"PC"
	.sleb128 59
	.uleb128 0x10
	.long	.LASF831
	.sleb128 60
	.uleb128 0x27
	.string	"REG"
	.sleb128 61
	.uleb128 0x10
	.long	.LASF832
	.sleb128 62
	.uleb128 0x10
	.long	.LASF833
	.sleb128 63
	.uleb128 0x10
	.long	.LASF834
	.sleb128 64
	.uleb128 0x10
	.long	.LASF835
	.sleb128 65
	.uleb128 0x27
	.string	"MEM"
	.sleb128 66
	.uleb128 0x10
	.long	.LASF836
	.sleb128 67
	.uleb128 0x10
	.long	.LASF837
	.sleb128 68
	.uleb128 0x27
	.string	"CC0"
	.sleb128 69
	.uleb128 0x10
	.long	.LASF838
	.sleb128 70
	.uleb128 0x10
	.long	.LASF839
	.sleb128 71
	.uleb128 0x10
	.long	.LASF840
	.sleb128 72
	.uleb128 0x10
	.long	.LASF841
	.sleb128 73
	.uleb128 0x10
	.long	.LASF842
	.sleb128 74
	.uleb128 0x10
	.long	.LASF843
	.sleb128 75
	.uleb128 0x10
	.long	.LASF844
	.sleb128 76
	.uleb128 0x27
	.string	"NEG"
	.sleb128 77
	.uleb128 0x10
	.long	.LASF845
	.sleb128 78
	.uleb128 0x27
	.string	"DIV"
	.sleb128 79
	.uleb128 0x27
	.string	"MOD"
	.sleb128 80
	.uleb128 0x10
	.long	.LASF846
	.sleb128 81
	.uleb128 0x10
	.long	.LASF847
	.sleb128 82
	.uleb128 0x27
	.string	"AND"
	.sleb128 83
	.uleb128 0x27
	.string	"IOR"
	.sleb128 84
	.uleb128 0x27
	.string	"XOR"
	.sleb128 85
	.uleb128 0x27
	.string	"NOT"
	.sleb128 86
	.uleb128 0x10
	.long	.LASF848
	.sleb128 87
	.uleb128 0x10
	.long	.LASF849
	.sleb128 88
	.uleb128 0x10
	.long	.LASF850
	.sleb128 89
	.uleb128 0x10
	.long	.LASF851
	.sleb128 90
	.uleb128 0x10
	.long	.LASF852
	.sleb128 91
	.uleb128 0x10
	.long	.LASF853
	.sleb128 92
	.uleb128 0x10
	.long	.LASF854
	.sleb128 93
	.uleb128 0x10
	.long	.LASF855
	.sleb128 94
	.uleb128 0x10
	.long	.LASF856
	.sleb128 95
	.uleb128 0x10
	.long	.LASF857
	.sleb128 96
	.uleb128 0x10
	.long	.LASF858
	.sleb128 97
	.uleb128 0x10
	.long	.LASF859
	.sleb128 98
	.uleb128 0x10
	.long	.LASF860
	.sleb128 99
	.uleb128 0x10
	.long	.LASF861
	.sleb128 100
	.uleb128 0x10
	.long	.LASF862
	.sleb128 101
	.uleb128 0x27
	.string	"NE"
	.sleb128 102
	.uleb128 0x27
	.string	"EQ"
	.sleb128 103
	.uleb128 0x27
	.string	"GE"
	.sleb128 104
	.uleb128 0x27
	.string	"GT"
	.sleb128 105
	.uleb128 0x27
	.string	"LE"
	.sleb128 106
	.uleb128 0x27
	.string	"LT"
	.sleb128 107
	.uleb128 0x27
	.string	"GEU"
	.sleb128 108
	.uleb128 0x27
	.string	"GTU"
	.sleb128 109
	.uleb128 0x27
	.string	"LEU"
	.sleb128 110
	.uleb128 0x27
	.string	"LTU"
	.sleb128 111
	.uleb128 0x10
	.long	.LASF863
	.sleb128 112
	.uleb128 0x10
	.long	.LASF864
	.sleb128 113
	.uleb128 0x10
	.long	.LASF865
	.sleb128 114
	.uleb128 0x10
	.long	.LASF866
	.sleb128 115
	.uleb128 0x10
	.long	.LASF867
	.sleb128 116
	.uleb128 0x10
	.long	.LASF868
	.sleb128 117
	.uleb128 0x10
	.long	.LASF869
	.sleb128 118
	.uleb128 0x10
	.long	.LASF870
	.sleb128 119
	.uleb128 0x10
	.long	.LASF871
	.sleb128 120
	.uleb128 0x10
	.long	.LASF872
	.sleb128 121
	.uleb128 0x10
	.long	.LASF873
	.sleb128 122
	.uleb128 0x10
	.long	.LASF874
	.sleb128 123
	.uleb128 0x10
	.long	.LASF875
	.sleb128 124
	.uleb128 0x10
	.long	.LASF876
	.sleb128 125
	.uleb128 0x27
	.string	"FIX"
	.sleb128 126
	.uleb128 0x10
	.long	.LASF877
	.sleb128 127
	.uleb128 0x10
	.long	.LASF878
	.sleb128 128
	.uleb128 0x27
	.string	"ABS"
	.sleb128 129
	.uleb128 0x10
	.long	.LASF879
	.sleb128 130
	.uleb128 0x27
	.string	"FFS"
	.sleb128 131
	.uleb128 0x10
	.long	.LASF880
	.sleb128 132
	.uleb128 0x10
	.long	.LASF881
	.sleb128 133
	.uleb128 0x10
	.long	.LASF882
	.sleb128 134
	.uleb128 0x10
	.long	.LASF883
	.sleb128 135
	.uleb128 0x10
	.long	.LASF884
	.sleb128 136
	.uleb128 0x10
	.long	.LASF885
	.sleb128 137
	.uleb128 0x10
	.long	.LASF886
	.sleb128 138
	.uleb128 0x10
	.long	.LASF887
	.sleb128 139
	.uleb128 0x10
	.long	.LASF888
	.sleb128 140
	.uleb128 0x10
	.long	.LASF889
	.sleb128 141
	.uleb128 0x10
	.long	.LASF890
	.sleb128 142
	.uleb128 0x10
	.long	.LASF891
	.sleb128 143
	.uleb128 0x10
	.long	.LASF892
	.sleb128 144
	.uleb128 0x10
	.long	.LASF893
	.sleb128 145
	.uleb128 0x10
	.long	.LASF894
	.sleb128 146
	.uleb128 0x10
	.long	.LASF895
	.sleb128 147
	.uleb128 0x10
	.long	.LASF896
	.sleb128 148
	.uleb128 0x10
	.long	.LASF897
	.sleb128 149
	.uleb128 0x10
	.long	.LASF898
	.sleb128 150
	.uleb128 0x10
	.long	.LASF899
	.sleb128 151
	.uleb128 0x27
	.string	"PHI"
	.sleb128 152
	.uleb128 0x10
	.long	.LASF900
	.sleb128 153
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.byte	0x2
	.byte	0x44
	.long	0x2731
	.uleb128 0x5
	.long	.LASF901
	.byte	0x2
	.byte	0x47
	.long	0x382
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF902
	.byte	0x2
	.byte	0x49
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF903
	.byte	0x2
	.byte	0x4a
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.long	.LASF904
	.byte	0x2
	.byte	0x4c
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	.LASF905
	.byte	0x2
	.byte	0x4e
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF906
	.byte	0x2
	.byte	0x50
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF907
	.byte	0x2
	.byte	0x53
	.long	0x382
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	.LASF908
	.byte	0x2
	.byte	0x55
	.long	0x382
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF909
	.byte	0x2
	.byte	0x56
	.long	0x26b0
	.uleb128 0x19
	.byte	0x28
	.byte	0x2
	.byte	0x5c
	.long	0x2781
	.uleb128 0x8
	.long	.LASF910
	.byte	0x2
	.byte	0x5e
	.long	0x396
	.byte	0
	.uleb128 0x8
	.long	.LASF576
	.byte	0x2
	.byte	0x5f
	.long	0x123
	.byte	0x8
	.uleb128 0x8
	.long	.LASF911
	.byte	0x2
	.byte	0x60
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF549
	.byte	0x2
	.byte	0x61
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF561
	.byte	0x2
	.byte	0x62
	.long	0x382
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF912
	.byte	0x2
	.byte	0x63
	.long	0x273c
	.uleb128 0x28
	.long	.LASF914
	.byte	0x8
	.byte	0x2
	.byte	0x67
	.long	0x2827
	.uleb128 0x29
	.long	.LASF915
	.byte	0x2
	.byte	0x69
	.long	0x396
	.uleb128 0x29
	.long	.LASF916
	.byte	0x2
	.byte	0x6a
	.long	0x1e3
	.uleb128 0x29
	.long	.LASF917
	.byte	0x2
	.byte	0x6b
	.long	0x382
	.uleb128 0x29
	.long	.LASF918
	.byte	0x2
	.byte	0x6c
	.long	0x5f4
	.uleb128 0x2a
	.string	"rtx"
	.byte	0x2
	.byte	0x6d
	.long	0x2d
	.uleb128 0x29
	.long	.LASF10
	.byte	0x2
	.byte	0x6e
	.long	0xed
	.uleb128 0x29
	.long	.LASF919
	.byte	0x2
	.byte	0x6f
	.long	0x786
	.uleb128 0x29
	.long	.LASF920
	.byte	0x2
	.byte	0x70
	.long	0x2731
	.uleb128 0x29
	.long	.LASF921
	.byte	0x2
	.byte	0x71
	.long	0x282c
	.uleb128 0x29
	.long	.LASF922
	.byte	0x2
	.byte	0x72
	.long	0x2863
	.uleb128 0x29
	.long	.LASF923
	.byte	0x2
	.byte	0x73
	.long	0x123
	.uleb128 0x2a
	.string	"bb"
	.byte	0x2
	.byte	0x74
	.long	0x2936
	.uleb128 0x29
	.long	.LASF924
	.byte	0x2
	.byte	0x75
	.long	0x293c
	.byte	0
	.uleb128 0x23
	.long	.LASF925
	.uleb128 0x3
	.byte	0x8
	.long	0x2827
	.uleb128 0x4
	.long	.LASF926
	.byte	0x18
	.byte	0x15
	.byte	0x34
	.long	0x2863
	.uleb128 0x8
	.long	.LASF927
	.byte	0x15
	.byte	0x35
	.long	0x2d81
	.byte	0
	.uleb128 0x8
	.long	.LASF928
	.byte	0x15
	.byte	0x36
	.long	0x2d81
	.byte	0x8
	.uleb128 0x8
	.long	.LASF929
	.byte	0x15
	.byte	0x37
	.long	0x382
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2832
	.uleb128 0x4
	.long	.LASF930
	.byte	0x70
	.byte	0x16
	.byte	0xae
	.long	0x2936
	.uleb128 0x8
	.long	.LASF931
	.byte	0x16
	.byte	0xb0
	.long	0x2d
	.byte	0
	.uleb128 0x6
	.string	"end"
	.byte	0x16
	.byte	0xb0
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF932
	.byte	0x16
	.byte	0xb3
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF933
	.byte	0x16
	.byte	0xb4
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF934
	.byte	0x16
	.byte	0xb7
	.long	0x2e75
	.byte	0x20
	.uleb128 0x8
	.long	.LASF935
	.byte	0x16
	.byte	0xb7
	.long	0x2e75
	.byte	0x28
	.uleb128 0x8
	.long	.LASF936
	.byte	0x16
	.byte	0xbc
	.long	0x2de0
	.byte	0x30
	.uleb128 0x8
	.long	.LASF937
	.byte	0x16
	.byte	0xc0
	.long	0x2de0
	.byte	0x38
	.uleb128 0x8
	.long	.LASF938
	.byte	0x16
	.byte	0xc6
	.long	0x2de0
	.byte	0x40
	.uleb128 0x8
	.long	.LASF939
	.byte	0x16
	.byte	0xc8
	.long	0x2de0
	.byte	0x48
	.uleb128 0x6
	.string	"aux"
	.byte	0x16
	.byte	0xcb
	.long	0x389
	.byte	0x50
	.uleb128 0x8
	.long	.LASF940
	.byte	0x16
	.byte	0xce
	.long	0x1e3
	.byte	0x58
	.uleb128 0x8
	.long	.LASF941
	.byte	0x16
	.byte	0xd1
	.long	0x1e3
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF942
	.byte	0x16
	.byte	0xd4
	.long	0x2deb
	.byte	0x60
	.uleb128 0x8
	.long	.LASF943
	.byte	0x16
	.byte	0xd7
	.long	0x1e3
	.byte	0x68
	.uleb128 0x8
	.long	.LASF944
	.byte	0x16
	.byte	0xda
	.long	0x1e3
	.byte	0x6c
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2869
	.uleb128 0x3
	.byte	0x8
	.long	0x2781
	.uleb128 0x7
	.long	.LASF945
	.byte	0x2
	.byte	0x76
	.long	0x278c
	.uleb128 0x14
	.long	0x2942
	.long	0x295d
	.uleb128 0x15
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x2d
	.long	0x296d
	.uleb128 0x15
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LASF946
	.byte	0x4
	.byte	0x2
	.value	0x297
	.long	0x2a1c
	.uleb128 0x10
	.long	.LASF947
	.sleb128 -100
	.uleb128 0x10
	.long	.LASF948
	.sleb128 -99
	.uleb128 0x10
	.long	.LASF949
	.sleb128 -98
	.uleb128 0x10
	.long	.LASF950
	.sleb128 -97
	.uleb128 0x10
	.long	.LASF951
	.sleb128 -96
	.uleb128 0x10
	.long	.LASF952
	.sleb128 -95
	.uleb128 0x10
	.long	.LASF953
	.sleb128 -94
	.uleb128 0x10
	.long	.LASF954
	.sleb128 -93
	.uleb128 0x10
	.long	.LASF955
	.sleb128 -92
	.uleb128 0x10
	.long	.LASF956
	.sleb128 -91
	.uleb128 0x10
	.long	.LASF957
	.sleb128 -90
	.uleb128 0x10
	.long	.LASF958
	.sleb128 -89
	.uleb128 0x10
	.long	.LASF959
	.sleb128 -88
	.uleb128 0x10
	.long	.LASF960
	.sleb128 -87
	.uleb128 0x10
	.long	.LASF961
	.sleb128 -86
	.uleb128 0x10
	.long	.LASF962
	.sleb128 -85
	.uleb128 0x10
	.long	.LASF963
	.sleb128 -84
	.uleb128 0x10
	.long	.LASF964
	.sleb128 -83
	.uleb128 0x10
	.long	.LASF965
	.sleb128 -82
	.uleb128 0x10
	.long	.LASF966
	.sleb128 -81
	.uleb128 0x10
	.long	.LASF967
	.sleb128 -80
	.uleb128 0x10
	.long	.LASF968
	.sleb128 -79
	.uleb128 0x10
	.long	.LASF969
	.sleb128 -78
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d
	.uleb128 0xf
	.long	.LASF970
	.byte	0x4
	.byte	0x2
	.value	0x630
	.long	0x2a78
	.uleb128 0x10
	.long	.LASF971
	.sleb128 0
	.uleb128 0x10
	.long	.LASF972
	.sleb128 1
	.uleb128 0x10
	.long	.LASF973
	.sleb128 2
	.uleb128 0x10
	.long	.LASF974
	.sleb128 3
	.uleb128 0x10
	.long	.LASF975
	.sleb128 4
	.uleb128 0x10
	.long	.LASF976
	.sleb128 5
	.uleb128 0x10
	.long	.LASF977
	.sleb128 6
	.uleb128 0x10
	.long	.LASF978
	.sleb128 7
	.uleb128 0x10
	.long	.LASF979
	.sleb128 8
	.uleb128 0x10
	.long	.LASF980
	.sleb128 9
	.uleb128 0x10
	.long	.LASF981
	.sleb128 10
	.uleb128 0x10
	.long	.LASF982
	.sleb128 11
	.byte	0
	.uleb128 0x1d
	.long	.LASF983
	.byte	0x4
	.byte	0x17
	.byte	0x1c
	.long	0x2ab5
	.uleb128 0x10
	.long	.LASF984
	.sleb128 0
	.uleb128 0x10
	.long	.LASF985
	.sleb128 1
	.uleb128 0x10
	.long	.LASF986
	.sleb128 2
	.uleb128 0x10
	.long	.LASF987
	.sleb128 3
	.uleb128 0x10
	.long	.LASF988
	.sleb128 4
	.uleb128 0x10
	.long	.LASF989
	.sleb128 5
	.uleb128 0x10
	.long	.LASF990
	.sleb128 6
	.uleb128 0x10
	.long	.LASF991
	.sleb128 7
	.byte	0
	.uleb128 0x1d
	.long	.LASF992
	.byte	0x4
	.byte	0x17
	.byte	0x2c
	.long	0x2ada
	.uleb128 0x10
	.long	.LASF993
	.sleb128 0
	.uleb128 0x10
	.long	.LASF994
	.sleb128 1
	.uleb128 0x10
	.long	.LASF995
	.sleb128 2
	.uleb128 0x10
	.long	.LASF996
	.sleb128 3
	.byte	0
	.uleb128 0xf
	.long	.LASF997
	.byte	0x4
	.byte	0x17
	.value	0x263
	.long	0x2af4
	.uleb128 0x10
	.long	.LASF998
	.sleb128 0
	.uleb128 0x27
	.string	"vcg"
	.sleb128 1
	.byte	0
	.uleb128 0x14
	.long	0x3a8
	.long	0x2b04
	.uleb128 0x15
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x382
	.uleb128 0x4
	.long	.LASF999
	.byte	0x18
	.byte	0x14
	.byte	0x16
	.long	0x2b46
	.uleb128 0x8
	.long	.LASF1000
	.byte	0x14
	.byte	0x18
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF1001
	.byte	0x14
	.byte	0x19
	.long	0x786
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1002
	.byte	0x14
	.byte	0x1a
	.long	0x1e3
	.byte	0xc
	.uleb128 0x8
	.long	.LASF150
	.byte	0x14
	.byte	0x1b
	.long	0x2b46
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2b09
	.uleb128 0x4
	.long	.LASF1003
	.byte	0x20
	.byte	0x14
	.byte	0x23
	.long	0x2b89
	.uleb128 0x8
	.long	.LASF927
	.byte	0x14
	.byte	0x26
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF1004
	.byte	0x14
	.byte	0x26
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1005
	.byte	0x14
	.byte	0x27
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF150
	.byte	0x14
	.byte	0x28
	.long	0x2b89
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2b4c
	.uleb128 0x4
	.long	.LASF1006
	.byte	0x58
	.byte	0x14
	.byte	0x35
	.long	0x2c38
	.uleb128 0x8
	.long	.LASF1007
	.byte	0x14
	.byte	0x39
	.long	0x1e3
	.byte	0
	.uleb128 0x8
	.long	.LASF1008
	.byte	0x14
	.byte	0x3c
	.long	0x1e3
	.byte	0x4
	.uleb128 0x8
	.long	.LASF1009
	.byte	0x14
	.byte	0x43
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1010
	.byte	0x14
	.byte	0x44
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1005
	.byte	0x14
	.byte	0x49
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1003
	.byte	0x14
	.byte	0x4f
	.long	0x2b89
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1011
	.byte	0x14
	.byte	0x53
	.long	0x1e3
	.byte	0x28
	.uleb128 0x8
	.long	.LASF1012
	.byte	0x14
	.byte	0x57
	.long	0x1e3
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF1013
	.byte	0x14
	.byte	0x58
	.long	0x5f4
	.byte	0x30
	.uleb128 0x8
	.long	.LASF1014
	.byte	0x14
	.byte	0x5e
	.long	0x1e3
	.byte	0x38
	.uleb128 0x8
	.long	.LASF1015
	.byte	0x14
	.byte	0x63
	.long	0x2c38
	.byte	0x40
	.uleb128 0x8
	.long	.LASF1016
	.byte	0x14
	.byte	0x67
	.long	0x2265
	.byte	0x48
	.uleb128 0x8
	.long	.LASF1017
	.byte	0x14
	.byte	0x6b
	.long	0x2a1c
	.byte	0x50
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3af
	.uleb128 0x4
	.long	.LASF1018
	.byte	0x30
	.byte	0x14
	.byte	0x77
	.long	0x2c9f
	.uleb128 0x8
	.long	.LASF1019
	.byte	0x14
	.byte	0x7b
	.long	0x1e3
	.byte	0
	.uleb128 0x8
	.long	.LASF1020
	.byte	0x14
	.byte	0x8c
	.long	0x1e3
	.byte	0x4
	.uleb128 0x8
	.long	.LASF1021
	.byte	0x14
	.byte	0x92
	.long	0x1e3
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1022
	.byte	0x14
	.byte	0x97
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1023
	.byte	0x14
	.byte	0x9a
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1024
	.byte	0x14
	.byte	0x9d
	.long	0x2d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1025
	.byte	0x14
	.byte	0xa0
	.long	0x2d
	.byte	0x28
	.byte	0
	.uleb128 0x23
	.long	.LASF1026
	.uleb128 0x3
	.byte	0x8
	.long	0x2c9f
	.uleb128 0x23
	.long	.LASF1027
	.uleb128 0x3
	.byte	0x8
	.long	0x2caa
	.uleb128 0x3
	.byte	0x8
	.long	0x2c3e
	.uleb128 0x3
	.byte	0x8
	.long	0x2b8f
	.uleb128 0x23
	.long	.LASF1028
	.uleb128 0x3
	.byte	0x8
	.long	0x2cc1
	.uleb128 0x23
	.long	.LASF1029
	.uleb128 0x3
	.byte	0x8
	.long	0x2ccc
	.uleb128 0x23
	.long	.LASF1030
	.uleb128 0x3
	.byte	0x8
	.long	0x2cd7
	.uleb128 0x23
	.long	.LASF1031
	.uleb128 0x3
	.byte	0x8
	.long	0x2ce2
	.uleb128 0x23
	.long	.LASF1032
	.uleb128 0x3
	.byte	0x8
	.long	0x2ced
	.uleb128 0x1d
	.long	.LASF1033
	.byte	0x4
	.byte	0x18
	.byte	0x34
	.long	0x2d23
	.uleb128 0x10
	.long	.LASF1034
	.sleb128 0
	.uleb128 0x10
	.long	.LASF1035
	.sleb128 1
	.uleb128 0x10
	.long	.LASF1036
	.sleb128 2
	.uleb128 0x10
	.long	.LASF1037
	.sleb128 3
	.uleb128 0x10
	.long	.LASF1038
	.sleb128 4
	.byte	0
	.uleb128 0x4
	.long	.LASF1039
	.byte	0x28
	.byte	0x15
	.byte	0x2b
	.long	0x2d60
	.uleb128 0x8
	.long	.LASF150
	.byte	0x15
	.byte	0x2d
	.long	0x2d60
	.byte	0
	.uleb128 0x8
	.long	.LASF511
	.byte	0x15
	.byte	0x2e
	.long	0x2d60
	.byte	0x8
	.uleb128 0x8
	.long	.LASF929
	.byte	0x15
	.byte	0x2f
	.long	0x382
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1040
	.byte	0x15
	.byte	0x30
	.long	0x2d66
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d23
	.uleb128 0x14
	.long	0x3a8
	.long	0x2d76
	.uleb128 0x15
	.long	0x1ea
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF1041
	.byte	0x15
	.byte	0x31
	.long	0x2d23
	.uleb128 0x3
	.byte	0x8
	.long	0x2d76
	.uleb128 0x7
	.long	.LASF1042
	.byte	0x15
	.byte	0x39
	.long	0x2863
	.uleb128 0x4
	.long	.LASF1043
	.byte	0x18
	.byte	0x19
	.byte	0x1f
	.long	0x2dcf
	.uleb128 0x8
	.long	.LASF1044
	.byte	0x19
	.byte	0x21
	.long	0x382
	.byte	0
	.uleb128 0x8
	.long	.LASF549
	.byte	0x19
	.byte	0x22
	.long	0x382
	.byte	0x4
	.uleb128 0x8
	.long	.LASF1045
	.byte	0x19
	.byte	0x23
	.long	0x382
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1046
	.byte	0x19
	.byte	0x24
	.long	0x2af4
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	.LASF1047
	.byte	0x19
	.byte	0x25
	.long	0x2dda
	.uleb128 0x3
	.byte	0x8
	.long	0x2d92
	.uleb128 0x7
	.long	.LASF1048
	.byte	0x16
	.byte	0x21
	.long	0x2d87
	.uleb128 0x7
	.long	.LASF1049
	.byte	0x16
	.byte	0x74
	.long	0x396
	.uleb128 0x4
	.long	.LASF1050
	.byte	0x40
	.byte	0x16
	.byte	0x77
	.long	0x2e6f
	.uleb128 0x8
	.long	.LASF1051
	.byte	0x16
	.byte	0x79
	.long	0x2e6f
	.byte	0
	.uleb128 0x8
	.long	.LASF1052
	.byte	0x16
	.byte	0x79
	.long	0x2e6f
	.byte	0x8
	.uleb128 0x6
	.string	"src"
	.byte	0x16
	.byte	0x7c
	.long	0x2936
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1053
	.byte	0x16
	.byte	0x7c
	.long	0x2936
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1054
	.byte	0x16
	.byte	0x7f
	.long	0x2d
	.byte	0x20
	.uleb128 0x6
	.string	"aux"
	.byte	0x16
	.byte	0x82
	.long	0x389
	.byte	0x28
	.uleb128 0x8
	.long	.LASF944
	.byte	0x16
	.byte	0x84
	.long	0x1e3
	.byte	0x30
	.uleb128 0x8
	.long	.LASF1055
	.byte	0x16
	.byte	0x85
	.long	0x1e3
	.byte	0x34
	.uleb128 0x8
	.long	.LASF942
	.byte	0x16
	.byte	0x86
	.long	0x2deb
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2df6
	.uleb128 0x7
	.long	.LASF1056
	.byte	0x16
	.byte	0x88
	.long	0x2e6f
	.uleb128 0x7
	.long	.LASF1057
	.byte	0x16
	.byte	0xdb
	.long	0x2936
	.uleb128 0x11
	.long	.LASF1058
	.byte	0xf8
	.byte	0x16
	.value	0x148
	.long	0x3046
	.uleb128 0x1f
	.string	"num"
	.byte	0x16
	.value	0x14b
	.long	0x1e3
	.byte	0
	.uleb128 0x12
	.long	.LASF1059
	.byte	0x16
	.value	0x14e
	.long	0x2e80
	.byte	0x8
	.uleb128 0x12
	.long	.LASF1060
	.byte	0x16
	.value	0x151
	.long	0x2e80
	.byte	0x10
	.uleb128 0x12
	.long	.LASF1061
	.byte	0x16
	.value	0x154
	.long	0x2e80
	.byte	0x18
	.uleb128 0x12
	.long	.LASF1062
	.byte	0x16
	.value	0x159
	.long	0x3046
	.byte	0x20
	.uleb128 0x12
	.long	.LASF1063
	.byte	0x16
	.value	0x15c
	.long	0x1e3
	.byte	0x28
	.uleb128 0x12
	.long	.LASF927
	.byte	0x16
	.value	0x160
	.long	0x2e80
	.byte	0x30
	.uleb128 0x12
	.long	.LASF1004
	.byte	0x16
	.value	0x164
	.long	0x2e80
	.byte	0x38
	.uleb128 0x12
	.long	.LASF1064
	.byte	0x16
	.value	0x167
	.long	0x2dcf
	.byte	0x40
	.uleb128 0x12
	.long	.LASF1065
	.byte	0x16
	.value	0x16a
	.long	0x1e3
	.byte	0x48
	.uleb128 0x12
	.long	.LASF1066
	.byte	0x16
	.value	0x16d
	.long	0x3046
	.byte	0x50
	.uleb128 0x12
	.long	.LASF1067
	.byte	0x16
	.value	0x170
	.long	0x1e3
	.byte	0x58
	.uleb128 0x12
	.long	.LASF1068
	.byte	0x16
	.value	0x173
	.long	0x3046
	.byte	0x60
	.uleb128 0x12
	.long	.LASF1069
	.byte	0x16
	.value	0x176
	.long	0x1e3
	.byte	0x68
	.uleb128 0x12
	.long	.LASF1070
	.byte	0x16
	.value	0x179
	.long	0x2dcf
	.byte	0x70
	.uleb128 0x12
	.long	.LASF1071
	.byte	0x16
	.value	0x17c
	.long	0x1e3
	.byte	0x78
	.uleb128 0x12
	.long	.LASF1072
	.byte	0x16
	.value	0x180
	.long	0x1e3
	.byte	0x7c
	.uleb128 0x12
	.long	.LASF579
	.byte	0x16
	.value	0x183
	.long	0x304c
	.byte	0x80
	.uleb128 0x12
	.long	.LASF1073
	.byte	0x16
	.value	0x186
	.long	0x304c
	.byte	0x88
	.uleb128 0x12
	.long	.LASF150
	.byte	0x16
	.value	0x189
	.long	0x304c
	.byte	0x90
	.uleb128 0x12
	.long	.LASF1074
	.byte	0x16
	.value	0x18c
	.long	0x1e3
	.byte	0x98
	.uleb128 0x12
	.long	.LASF1075
	.byte	0x16
	.value	0x18f
	.long	0x1e3
	.byte	0x9c
	.uleb128 0x1f
	.string	"aux"
	.byte	0x16
	.value	0x192
	.long	0x389
	.byte	0xa0
	.uleb128 0x12
	.long	.LASF1076
	.byte	0x16
	.value	0x198
	.long	0x2d
	.byte	0xa8
	.uleb128 0x12
	.long	.LASF1077
	.byte	0x16
	.value	0x19c
	.long	0x2d
	.byte	0xb0
	.uleb128 0x12
	.long	.LASF1078
	.byte	0x16
	.value	0x19f
	.long	0x2d
	.byte	0xb8
	.uleb128 0x12
	.long	.LASF1079
	.byte	0x16
	.value	0x1a2
	.long	0x2d
	.byte	0xc0
	.uleb128 0x1f
	.string	"end"
	.byte	0x16
	.value	0x1a5
	.long	0x2d
	.byte	0xc8
	.uleb128 0x1f
	.string	"top"
	.byte	0x16
	.value	0x1a9
	.long	0x2d
	.byte	0xd0
	.uleb128 0x12
	.long	.LASF1080
	.byte	0x16
	.value	0x1ac
	.long	0x2d
	.byte	0xd8
	.uleb128 0x12
	.long	.LASF1081
	.byte	0x16
	.value	0x1af
	.long	0x2d
	.byte	0xe0
	.uleb128 0x12
	.long	.LASF1082
	.byte	0x16
	.value	0x1ba
	.long	0x2d
	.byte	0xe8
	.uleb128 0x12
	.long	.LASF1083
	.byte	0x16
	.value	0x1be
	.long	0x1e3
	.byte	0xf0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2e75
	.uleb128 0x3
	.byte	0x8
	.long	0x2e8b
	.uleb128 0x2b
	.string	"cfg"
	.byte	0x18
	.byte	0x16
	.value	0x1d3
	.long	0x3087
	.uleb128 0x1f
	.string	"dom"
	.byte	0x16
	.value	0x1d6
	.long	0x3087
	.byte	0
	.uleb128 0x12
	.long	.LASF1084
	.byte	0x16
	.value	0x1d9
	.long	0x6be
	.byte	0x8
	.uleb128 0x12
	.long	.LASF1085
	.byte	0x16
	.value	0x1dd
	.long	0x6be
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2dcf
	.uleb128 0x11
	.long	.LASF1086
	.byte	0x38
	.byte	0x16
	.value	0x1c3
	.long	0x30e9
	.uleb128 0x1f
	.string	"num"
	.byte	0x16
	.value	0x1c6
	.long	0x1e3
	.byte	0
	.uleb128 0x12
	.long	.LASF1087
	.byte	0x16
	.value	0x1c9
	.long	0x1e3
	.byte	0x4
	.uleb128 0x12
	.long	.LASF1088
	.byte	0x16
	.value	0x1cd
	.long	0x304c
	.byte	0x8
	.uleb128 0x12
	.long	.LASF1089
	.byte	0x16
	.value	0x1d0
	.long	0x304c
	.byte	0x10
	.uleb128 0x1f
	.string	"cfg"
	.byte	0x16
	.value	0x1de
	.long	0x3052
	.byte	0x18
	.uleb128 0x12
	.long	.LASF1090
	.byte	0x16
	.value	0x1e1
	.long	0x2dcf
	.byte	0x30
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.long	.LASF1091
	.uleb128 0x18
	.byte	0x4
	.byte	0x1b
	.byte	0x48
	.long	0x320d
	.uleb128 0x10
	.long	.LASF1092
	.sleb128 0
	.uleb128 0x10
	.long	.LASF1093
	.sleb128 1
	.uleb128 0x10
	.long	.LASF1094
	.sleb128 2
	.uleb128 0x10
	.long	.LASF1095
	.sleb128 3
	.uleb128 0x10
	.long	.LASF1096
	.sleb128 4
	.uleb128 0x10
	.long	.LASF1097
	.sleb128 5
	.uleb128 0x10
	.long	.LASF1098
	.sleb128 6
	.uleb128 0x10
	.long	.LASF1099
	.sleb128 7
	.uleb128 0x10
	.long	.LASF1100
	.sleb128 8
	.uleb128 0x10
	.long	.LASF1101
	.sleb128 9
	.uleb128 0x10
	.long	.LASF1102
	.sleb128 10
	.uleb128 0x10
	.long	.LASF1103
	.sleb128 11
	.uleb128 0x10
	.long	.LASF1104
	.sleb128 12
	.uleb128 0x10
	.long	.LASF1105
	.sleb128 13
	.uleb128 0x10
	.long	.LASF1106
	.sleb128 14
	.uleb128 0x10
	.long	.LASF1107
	.sleb128 15
	.uleb128 0x10
	.long	.LASF1108
	.sleb128 16
	.uleb128 0x10
	.long	.LASF1109
	.sleb128 17
	.uleb128 0x10
	.long	.LASF1110
	.sleb128 18
	.uleb128 0x10
	.long	.LASF1111
	.sleb128 19
	.uleb128 0x10
	.long	.LASF1112
	.sleb128 20
	.uleb128 0x10
	.long	.LASF1113
	.sleb128 21
	.uleb128 0x10
	.long	.LASF1114
	.sleb128 22
	.uleb128 0x10
	.long	.LASF1115
	.sleb128 23
	.uleb128 0x10
	.long	.LASF1116
	.sleb128 24
	.uleb128 0x10
	.long	.LASF1117
	.sleb128 25
	.uleb128 0x10
	.long	.LASF1118
	.sleb128 26
	.uleb128 0x10
	.long	.LASF1119
	.sleb128 27
	.uleb128 0x10
	.long	.LASF1120
	.sleb128 28
	.uleb128 0x10
	.long	.LASF1121
	.sleb128 29
	.uleb128 0x10
	.long	.LASF1122
	.sleb128 30
	.uleb128 0x10
	.long	.LASF1123
	.sleb128 31
	.uleb128 0x10
	.long	.LASF1124
	.sleb128 32
	.uleb128 0x10
	.long	.LASF1125
	.sleb128 33
	.uleb128 0x10
	.long	.LASF1126
	.sleb128 34
	.uleb128 0x10
	.long	.LASF1127
	.sleb128 35
	.uleb128 0x10
	.long	.LASF1128
	.sleb128 36
	.uleb128 0x10
	.long	.LASF1129
	.sleb128 37
	.uleb128 0x10
	.long	.LASF1130
	.sleb128 38
	.uleb128 0x10
	.long	.LASF1131
	.sleb128 39
	.uleb128 0x10
	.long	.LASF1132
	.sleb128 40
	.uleb128 0x10
	.long	.LASF1133
	.sleb128 41
	.uleb128 0x10
	.long	.LASF1134
	.sleb128 42
	.uleb128 0x10
	.long	.LASF1135
	.sleb128 43
	.uleb128 0x10
	.long	.LASF1136
	.sleb128 44
	.uleb128 0x10
	.long	.LASF1137
	.sleb128 45
	.byte	0
	.uleb128 0x7
	.long	.LASF1138
	.byte	0x1c
	.byte	0x1c
	.long	0x3218
	.uleb128 0x24
	.long	.LASF1138
	.value	0x140
	.byte	0x1c
	.byte	0x63
	.long	0x326f
	.uleb128 0x8
	.long	.LASF1139
	.byte	0x1c
	.byte	0x69
	.long	0x3434
	.byte	0
	.uleb128 0x8
	.long	.LASF1140
	.byte	0x1c
	.byte	0x6c
	.long	0x343f
	.byte	0x50
	.uleb128 0x8
	.long	.LASF513
	.byte	0x1c
	.byte	0x6f
	.long	0x12d2
	.byte	0x58
	.uleb128 0x8
	.long	.LASF1141
	.byte	0x1c
	.byte	0x72
	.long	0x1e3
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF1142
	.byte	0x1c
	.byte	0x76
	.long	0x3445
	.byte	0xb4
	.uleb128 0x2c
	.long	.LASF1143
	.byte	0x1c
	.byte	0x82
	.long	0x337d
	.value	0x138
	.byte	0
	.uleb128 0x7
	.long	.LASF1144
	.byte	0x1c
	.byte	0x1d
	.long	0x327a
	.uleb128 0x24
	.long	.LASF1144
	.value	0x178
	.byte	0x1c
	.byte	0xa2
	.long	0x32fc
	.uleb128 0x8
	.long	.LASF1145
	.byte	0x1c
	.byte	0xa7
	.long	0x320d
	.byte	0
	.uleb128 0x2c
	.long	.LASF1146
	.byte	0x1c
	.byte	0xaa
	.long	0x5f4
	.value	0x140
	.uleb128 0x2c
	.long	.LASF1147
	.byte	0x1c
	.byte	0xae
	.long	0x341e
	.value	0x148
	.uleb128 0x2c
	.long	.LASF1148
	.byte	0x1c
	.byte	0xb1
	.long	0x5f4
	.value	0x150
	.uleb128 0x2c
	.long	.LASF151
	.byte	0x1c
	.byte	0xb4
	.long	0x1e3
	.value	0x158
	.uleb128 0x2c
	.long	.LASF1149
	.byte	0x1c
	.byte	0xb7
	.long	0x1e3
	.value	0x15c
	.uleb128 0x2c
	.long	.LASF1150
	.byte	0x1c
	.byte	0xc0
	.long	0x32fc
	.value	0x160
	.uleb128 0x2c
	.long	.LASF1151
	.byte	0x1c
	.byte	0xc3
	.long	0x32fc
	.value	0x168
	.uleb128 0x2c
	.long	.LASF1152
	.byte	0x1c
	.byte	0xc6
	.long	0x389
	.value	0x170
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3302
	.uleb128 0x1a
	.long	0x3312
	.uleb128 0x1b
	.long	0x3312
	.uleb128 0x1b
	.long	0x3318
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x320d
	.uleb128 0x3
	.byte	0x8
	.long	0x326f
	.uleb128 0x18
	.byte	0x4
	.byte	0x1c
	.byte	0x23
	.long	0x3357
	.uleb128 0x10
	.long	.LASF1153
	.sleb128 0
	.uleb128 0x10
	.long	.LASF1154
	.sleb128 1
	.uleb128 0x10
	.long	.LASF1155
	.sleb128 2
	.uleb128 0x10
	.long	.LASF1156
	.sleb128 3
	.uleb128 0x10
	.long	.LASF1157
	.sleb128 4
	.uleb128 0x10
	.long	.LASF1158
	.sleb128 5
	.uleb128 0x10
	.long	.LASF1159
	.sleb128 6
	.uleb128 0x10
	.long	.LASF1160
	.sleb128 7
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.byte	0x1c
	.byte	0x32
	.long	0x3372
	.uleb128 0x10
	.long	.LASF1161
	.sleb128 0
	.uleb128 0x10
	.long	.LASF1162
	.sleb128 1
	.uleb128 0x10
	.long	.LASF1163
	.sleb128 2
	.byte	0
	.uleb128 0x7
	.long	.LASF1164
	.byte	0x1c
	.byte	0x36
	.long	0x3357
	.uleb128 0x7
	.long	.LASF1165
	.byte	0x1c
	.byte	0x3b
	.long	0x3388
	.uleb128 0x3
	.byte	0x8
	.long	0x338e
	.uleb128 0x20
	.long	0x1e3
	.long	0x339d
	.uleb128 0x1b
	.long	0x3312
	.byte	0
	.uleb128 0x19
	.byte	0x50
	.byte	0x1c
	.byte	0x3e
	.long	0x341e
	.uleb128 0x8
	.long	.LASF1166
	.byte	0x1c
	.byte	0x41
	.long	0x5f4
	.byte	0
	.uleb128 0x8
	.long	.LASF1167
	.byte	0x1c
	.byte	0x45
	.long	0x1e3
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1168
	.byte	0x1c
	.byte	0x49
	.long	0x1e3
	.byte	0xc
	.uleb128 0x8
	.long	.LASF1169
	.byte	0x1c
	.byte	0x4c
	.long	0x1e3
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1170
	.byte	0x1c
	.byte	0x4f
	.long	0x223b
	.byte	0x14
	.uleb128 0x8
	.long	.LASF1171
	.byte	0x1c
	.byte	0x52
	.long	0x223b
	.byte	0x15
	.uleb128 0x8
	.long	.LASF1172
	.byte	0x1c
	.byte	0x55
	.long	0x3372
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1173
	.byte	0x1c
	.byte	0x59
	.long	0x5f4
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1174
	.byte	0x1c
	.byte	0x5c
	.long	0x341e
	.byte	0x28
	.uleb128 0x8
	.long	.LASF1175
	.byte	0x1c
	.byte	0x5f
	.long	0x3424
	.byte	0x30
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x38b
	.uleb128 0x14
	.long	0x1e3
	.long	0x3434
	.uleb128 0x15
	.long	0x1ea
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.long	.LASF1176
	.byte	0x1c
	.byte	0x60
	.long	0x339d
	.uleb128 0x3
	.byte	0x8
	.long	0x3ee
	.uleb128 0x14
	.long	0x3e7
	.long	0x3455
	.uleb128 0x15
	.long	0x1ea
	.byte	0x7f
	.byte	0
	.uleb128 0x4
	.long	.LASF1177
	.byte	0x18
	.byte	0x1d
	.byte	0x2c
	.long	0x3486
	.uleb128 0x8
	.long	.LASF1178
	.byte	0x1d
	.byte	0x30
	.long	0x2231
	.byte	0
	.uleb128 0x8
	.long	.LASF531
	.byte	0x1d
	.byte	0x32
	.long	0x1e3
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1179
	.byte	0x1d
	.byte	0x34
	.long	0x2231
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	.LASF1177
	.byte	0x1d
	.byte	0x35
	.long	0x3455
	.uleb128 0x1d
	.long	.LASF1180
	.byte	0x4
	.byte	0x1d
	.byte	0x49
	.long	0x34c8
	.uleb128 0x10
	.long	.LASF1181
	.sleb128 0
	.uleb128 0x10
	.long	.LASF1182
	.sleb128 1
	.uleb128 0x10
	.long	.LASF1183
	.sleb128 2
	.uleb128 0x10
	.long	.LASF1184
	.sleb128 3
	.uleb128 0x10
	.long	.LASF1185
	.sleb128 4
	.uleb128 0x10
	.long	.LASF1186
	.sleb128 5
	.uleb128 0x10
	.long	.LASF1187
	.sleb128 6
	.byte	0
	.uleb128 0x4
	.long	.LASF1188
	.byte	0xa0
	.byte	0x1e
	.byte	0x18
	.long	0x35c5
	.uleb128 0x8
	.long	.LASF1189
	.byte	0x1e
	.byte	0x1c
	.long	0x35d0
	.byte	0
	.uleb128 0x8
	.long	.LASF1190
	.byte	0x1e
	.byte	0x1f
	.long	0x35d0
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1191
	.byte	0x1e
	.byte	0x22
	.long	0x35e6
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1192
	.byte	0x1e
	.byte	0x25
	.long	0x35e6
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1193
	.byte	0x1e
	.byte	0x29
	.long	0x35e6
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1194
	.byte	0x1e
	.byte	0x2d
	.long	0x35f7
	.byte	0x28
	.uleb128 0x8
	.long	.LASF1195
	.byte	0x1e
	.byte	0x31
	.long	0x360d
	.byte	0x30
	.uleb128 0x8
	.long	.LASF1196
	.byte	0x1e
	.byte	0x34
	.long	0x360d
	.byte	0x38
	.uleb128 0x8
	.long	.LASF1197
	.byte	0x1e
	.byte	0x3b
	.long	0x3622
	.byte	0x40
	.uleb128 0x8
	.long	.LASF1198
	.byte	0x1e
	.byte	0x3e
	.long	0x35e6
	.byte	0x48
	.uleb128 0x8
	.long	.LASF1199
	.byte	0x1e
	.byte	0x43
	.long	0x35e6
	.byte	0x50
	.uleb128 0x8
	.long	.LASF1200
	.byte	0x1e
	.byte	0x47
	.long	0x35f7
	.byte	0x58
	.uleb128 0x8
	.long	.LASF1201
	.byte	0x1e
	.byte	0x4a
	.long	0x6d6
	.byte	0x60
	.uleb128 0x8
	.long	.LASF1202
	.byte	0x1e
	.byte	0x4d
	.long	0x3633
	.byte	0x68
	.uleb128 0x8
	.long	.LASF1203
	.byte	0x1e
	.byte	0x50
	.long	0x35f7
	.byte	0x70
	.uleb128 0x8
	.long	.LASF1204
	.byte	0x1e
	.byte	0x56
	.long	0x3633
	.byte	0x78
	.uleb128 0x8
	.long	.LASF1205
	.byte	0x1e
	.byte	0x5a
	.long	0x3633
	.byte	0x80
	.uleb128 0x8
	.long	.LASF1206
	.byte	0x1e
	.byte	0x5e
	.long	0x3633
	.byte	0x88
	.uleb128 0x8
	.long	.LASF1207
	.byte	0x1e
	.byte	0x63
	.long	0x3633
	.byte	0x90
	.uleb128 0x8
	.long	.LASF1208
	.byte	0x1e
	.byte	0x67
	.long	0x3644
	.byte	0x98
	.byte	0
	.uleb128 0x1a
	.long	0x35d0
	.uleb128 0x1b
	.long	0x5f4
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x35c5
	.uleb128 0x1a
	.long	0x35e6
	.uleb128 0x1b
	.long	0x382
	.uleb128 0x1b
	.long	0x5f4
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x35d6
	.uleb128 0x1a
	.long	0x35f7
	.uleb128 0x1b
	.long	0x382
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x35ec
	.uleb128 0x1a
	.long	0x360d
	.uleb128 0x1b
	.long	0x382
	.uleb128 0x1b
	.long	0x382
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x35fd
	.uleb128 0x20
	.long	0x223b
	.long	0x3622
	.uleb128 0x1b
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3613
	.uleb128 0x1a
	.long	0x3633
	.uleb128 0x1b
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3628
	.uleb128 0x1a
	.long	0x3644
	.uleb128 0x1b
	.long	0x2d
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3639
	.uleb128 0x4
	.long	.LASF1209
	.byte	0x20
	.byte	0x1f
	.byte	0x39
	.long	0x3683
	.uleb128 0x6
	.string	"hi"
	.byte	0x1f
	.byte	0x3b
	.long	0x5f4
	.byte	0
	.uleb128 0x6
	.string	"si"
	.byte	0x1f
	.byte	0x3c
	.long	0x5f4
	.byte	0x8
	.uleb128 0x6
	.string	"di"
	.byte	0x1f
	.byte	0x3d
	.long	0x5f4
	.byte	0x10
	.uleb128 0x6
	.string	"ti"
	.byte	0x1f
	.byte	0x3e
	.long	0x5f4
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.long	.LASF1210
	.byte	0xa8
	.byte	0x1f
	.byte	0x32
	.long	0x3744
	.uleb128 0x8
	.long	.LASF1211
	.byte	0x1f
	.byte	0x35
	.long	0x5f4
	.byte	0
	.uleb128 0x8
	.long	.LASF1212
	.byte	0x1f
	.byte	0x35
	.long	0x5f4
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1213
	.byte	0x1f
	.byte	0x38
	.long	0x5f4
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1214
	.byte	0x1f
	.byte	0x3f
	.long	0x364a
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1215
	.byte	0x1f
	.byte	0x3f
	.long	0x364a
	.byte	0x38
	.uleb128 0x8
	.long	.LASF1216
	.byte	0x1f
	.byte	0x46
	.long	0x375d
	.byte	0x58
	.uleb128 0x8
	.long	.LASF1217
	.byte	0x1f
	.byte	0x49
	.long	0x3773
	.byte	0x60
	.uleb128 0x8
	.long	.LASF1218
	.byte	0x1f
	.byte	0x4c
	.long	0x3784
	.byte	0x68
	.uleb128 0x8
	.long	.LASF1219
	.byte	0x1f
	.byte	0x4f
	.long	0x3784
	.byte	0x70
	.uleb128 0x8
	.long	.LASF1220
	.byte	0x1f
	.byte	0x52
	.long	0x3773
	.byte	0x78
	.uleb128 0x8
	.long	.LASF1221
	.byte	0x1f
	.byte	0x56
	.long	0x379a
	.byte	0x80
	.uleb128 0x8
	.long	.LASF1222
	.byte	0x1f
	.byte	0x59
	.long	0x6d6
	.byte	0x88
	.uleb128 0x8
	.long	.LASF1223
	.byte	0x1f
	.byte	0x5c
	.long	0x6d6
	.byte	0x90
	.uleb128 0x8
	.long	.LASF1224
	.byte	0x1f
	.byte	0x5f
	.long	0x37b0
	.byte	0x98
	.uleb128 0x8
	.long	.LASF1225
	.byte	0x1f
	.byte	0x62
	.long	0x37b0
	.byte	0xa0
	.byte	0
	.uleb128 0x20
	.long	0x223b
	.long	0x375d
	.uleb128 0x1b
	.long	0x2d
	.uleb128 0x1b
	.long	0x382
	.uleb128 0x1b
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3744
	.uleb128 0x1a
	.long	0x3773
	.uleb128 0x1b
	.long	0x343f
	.uleb128 0x1b
	.long	0x396
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3763
	.uleb128 0x1a
	.long	0x3784
	.uleb128 0x1b
	.long	0x343f
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3779
	.uleb128 0x1a
	.long	0x379a
	.uleb128 0x1b
	.long	0x5f4
	.uleb128 0x1b
	.long	0x382
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x378a
	.uleb128 0x1a
	.long	0x37b0
	.uleb128 0x1b
	.long	0x2d
	.uleb128 0x1b
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x37a0
	.uleb128 0x4
	.long	.LASF1226
	.byte	0x48
	.byte	0x1f
	.byte	0x66
	.long	0x382f
	.uleb128 0x8
	.long	.LASF1227
	.byte	0x1f
	.byte	0x6b
	.long	0x384d
	.byte	0
	.uleb128 0x8
	.long	.LASF1228
	.byte	0x1f
	.byte	0x6f
	.long	0x3867
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1229
	.byte	0x1f
	.byte	0x74
	.long	0x3872
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1230
	.byte	0x1f
	.byte	0x78
	.long	0x3896
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1231
	.byte	0x1f
	.byte	0x7b
	.long	0x38b1
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1232
	.byte	0x1f
	.byte	0x7e
	.long	0x38c7
	.byte	0x28
	.uleb128 0x8
	.long	.LASF1233
	.byte	0x1f
	.byte	0x82
	.long	0x38f0
	.byte	0x30
	.uleb128 0x8
	.long	.LASF1234
	.byte	0x1f
	.byte	0x83
	.long	0x38f0
	.byte	0x38
	.uleb128 0x8
	.long	.LASF1235
	.byte	0x1f
	.byte	0x8a
	.long	0x390a
	.byte	0x40
	.byte	0
	.uleb128 0x20
	.long	0x1e3
	.long	0x384d
	.uleb128 0x1b
	.long	0x2d
	.uleb128 0x1b
	.long	0x2d
	.uleb128 0x1b
	.long	0x2d
	.uleb128 0x1b
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x382f
	.uleb128 0x20
	.long	0x1e3
	.long	0x3867
	.uleb128 0x1b
	.long	0x2d
	.uleb128 0x1b
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3853
	.uleb128 0x2d
	.long	0x1e3
	.uleb128 0x3
	.byte	0x8
	.long	0x386d
	.uleb128 0x20
	.long	0x1e3
	.long	0x3896
	.uleb128 0x1b
	.long	0x343f
	.uleb128 0x1b
	.long	0x1e3
	.uleb128 0x1b
	.long	0x2d
	.uleb128 0x1b
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3878
	.uleb128 0x1a
	.long	0x38b1
	.uleb128 0x1b
	.long	0x343f
	.uleb128 0x1b
	.long	0x1e3
	.uleb128 0x1b
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x389c
	.uleb128 0x1a
	.long	0x38c7
	.uleb128 0x1b
	.long	0x343f
	.uleb128 0x1b
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x38b7
	.uleb128 0x20
	.long	0x1e3
	.long	0x38f0
	.uleb128 0x1b
	.long	0x343f
	.uleb128 0x1b
	.long	0x1e3
	.uleb128 0x1b
	.long	0x2a1c
	.uleb128 0x1b
	.long	0x6be
	.uleb128 0x1b
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x38cd
	.uleb128 0x20
	.long	0x2d
	.long	0x390a
	.uleb128 0x1b
	.long	0x1e3
	.uleb128 0x1b
	.long	0x2d
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x38f6
	.uleb128 0x24
	.long	.LASF1236
	.value	0x158
	.byte	0x1f
	.byte	0x2f
	.long	0x39ea
	.uleb128 0x8
	.long	.LASF1210
	.byte	0x1f
	.byte	0x63
	.long	0x3683
	.byte	0
	.uleb128 0x8
	.long	.LASF1226
	.byte	0x1f
	.byte	0x8b
	.long	0x37b6
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF1237
	.byte	0x1f
	.byte	0x8e
	.long	0x39fe
	.byte	0xf0
	.uleb128 0x8
	.long	.LASF1238
	.byte	0x1f
	.byte	0x91
	.long	0x39fe
	.byte	0xf8
	.uleb128 0x2c
	.long	.LASF1239
	.byte	0x1f
	.byte	0x94
	.long	0x3a04
	.value	0x100
	.uleb128 0x2c
	.long	.LASF1240
	.byte	0x1f
	.byte	0x99
	.long	0x3a23
	.value	0x108
	.uleb128 0x2c
	.long	.LASF1241
	.byte	0x1f
	.byte	0x9c
	.long	0x3633
	.value	0x110
	.uleb128 0x2c
	.long	.LASF1242
	.byte	0x1f
	.byte	0x9f
	.long	0x3a39
	.value	0x118
	.uleb128 0x2c
	.long	.LASF1243
	.byte	0x1f
	.byte	0xa3
	.long	0x3622
	.value	0x120
	.uleb128 0x2c
	.long	.LASF1244
	.byte	0x1f
	.byte	0xa7
	.long	0x3622
	.value	0x128
	.uleb128 0x2c
	.long	.LASF1245
	.byte	0x1f
	.byte	0xaa
	.long	0x6d6
	.value	0x130
	.uleb128 0x2c
	.long	.LASF1246
	.byte	0x1f
	.byte	0xad
	.long	0x3a62
	.value	0x138
	.uleb128 0x2c
	.long	.LASF1247
	.byte	0x1f
	.byte	0xb3
	.long	0x3a81
	.value	0x140
	.uleb128 0x2c
	.long	.LASF1248
	.byte	0x1f
	.byte	0xb6
	.long	0x223b
	.value	0x148
	.uleb128 0x2c
	.long	.LASF1249
	.byte	0x1f
	.byte	0xba
	.long	0x223b
	.value	0x149
	.uleb128 0x2c
	.long	.LASF1250
	.byte	0x1f
	.byte	0xbe
	.long	0x3a8c
	.value	0x150
	.byte	0
	.uleb128 0x20
	.long	0x123
	.long	0x39fe
	.uleb128 0x1b
	.long	0x123
	.uleb128 0x1b
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x39ea
	.uleb128 0x3
	.byte	0x8
	.long	0x3a0a
	.uleb128 0xc
	.long	0x21c8
	.uleb128 0x20
	.long	0x1e3
	.long	0x3a23
	.uleb128 0x1b
	.long	0x123
	.uleb128 0x1b
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3a0f
	.uleb128 0x1a
	.long	0x3a39
	.uleb128 0x1b
	.long	0x123
	.uleb128 0x1b
	.long	0x2265
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3a29
	.uleb128 0x20
	.long	0x2d
	.long	0x3a62
	.uleb128 0x1b
	.long	0x123
	.uleb128 0x1b
	.long	0x2d
	.uleb128 0x1b
	.long	0x2d
	.uleb128 0x1b
	.long	0x786
	.uleb128 0x1b
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3a3f
	.uleb128 0x20
	.long	0x382
	.long	0x3a81
	.uleb128 0x1b
	.long	0x123
	.uleb128 0x1b
	.long	0x5f4
	.uleb128 0x1b
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3a68
	.uleb128 0x2d
	.long	0x223b
	.uleb128 0x3
	.byte	0x8
	.long	0x3a87
	.uleb128 0x7
	.long	.LASF1251
	.byte	0x20
	.byte	0x19
	.long	0x3a9d
	.uleb128 0x3
	.byte	0x8
	.long	0x3aa3
	.uleb128 0x1a
	.long	0x3ab8
	.uleb128 0x1b
	.long	0x343f
	.uleb128 0x1b
	.long	0x123
	.uleb128 0x1b
	.long	0x1e3
	.byte	0
	.uleb128 0x4
	.long	.LASF1252
	.byte	0x58
	.byte	0x20
	.byte	0x1e
	.long	0x3b49
	.uleb128 0x8
	.long	.LASF1253
	.byte	0x20
	.byte	0x20
	.long	0x3b91
	.byte	0
	.uleb128 0x8
	.long	.LASF1254
	.byte	0x20
	.byte	0x25
	.long	0x3ba6
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1255
	.byte	0x20
	.byte	0x26
	.long	0x3bbb
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1256
	.byte	0x20
	.byte	0x27
	.long	0x3bd5
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1257
	.byte	0x20
	.byte	0x29
	.long	0x3bbb
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1258
	.byte	0x20
	.byte	0x2a
	.long	0x3bef
	.byte	0x28
	.uleb128 0x8
	.long	.LASF1259
	.byte	0x20
	.byte	0x2b
	.long	0x3c1d
	.byte	0x30
	.uleb128 0x8
	.long	.LASF1260
	.byte	0x20
	.byte	0x30
	.long	0x3bbb
	.byte	0x38
	.uleb128 0x8
	.long	.LASF1261
	.byte	0x20
	.byte	0x31
	.long	0x3bbb
	.byte	0x40
	.uleb128 0x8
	.long	.LASF1262
	.byte	0x20
	.byte	0x32
	.long	0x3c2e
	.byte	0x48
	.uleb128 0x8
	.long	.LASF1263
	.byte	0x20
	.byte	0x33
	.long	0x3c4d
	.byte	0x50
	.byte	0
	.uleb128 0x20
	.long	0x12e
	.long	0x3b6c
	.uleb128 0x1b
	.long	0x3b6c
	.uleb128 0x1b
	.long	0x6be
	.uleb128 0x1b
	.long	0x3b72
	.uleb128 0x1b
	.long	0x389
	.uleb128 0x1b
	.long	0x389
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x12e
	.uleb128 0x3
	.byte	0x8
	.long	0x3b78
	.uleb128 0x20
	.long	0x12e
	.long	0x3b91
	.uleb128 0x1b
	.long	0x3b6c
	.uleb128 0x1b
	.long	0x6be
	.uleb128 0x1b
	.long	0x389
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3b49
	.uleb128 0x20
	.long	0x1e3
	.long	0x3ba6
	.uleb128 0x1b
	.long	0x3b6c
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3b97
	.uleb128 0x20
	.long	0x1e3
	.long	0x3bbb
	.uleb128 0x1b
	.long	0x12e
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3bac
	.uleb128 0x20
	.long	0x12e
	.long	0x3bd5
	.uleb128 0x1b
	.long	0x389
	.uleb128 0x1b
	.long	0x12e
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3bc1
	.uleb128 0x20
	.long	0x1e3
	.long	0x3bef
	.uleb128 0x1b
	.long	0x12e
	.uleb128 0x1b
	.long	0x12e
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3bdb
	.uleb128 0x20
	.long	0x12e
	.long	0x3c1d
	.uleb128 0x1b
	.long	0x12e
	.uleb128 0x1b
	.long	0x12e
	.uleb128 0x1b
	.long	0x12e
	.uleb128 0x1b
	.long	0x389
	.uleb128 0x1b
	.long	0x6be
	.uleb128 0x1b
	.long	0x389
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3bf5
	.uleb128 0x1a
	.long	0x3c2e
	.uleb128 0x1b
	.long	0x12e
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3c23
	.uleb128 0x20
	.long	0x12e
	.long	0x3c4d
	.uleb128 0x1b
	.long	0x12e
	.uleb128 0x1b
	.long	0x12e
	.uleb128 0x1b
	.long	0x12e
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3c34
	.uleb128 0x4
	.long	.LASF1264
	.byte	0x10
	.byte	0x20
	.byte	0x3a
	.long	0x3c78
	.uleb128 0x8
	.long	.LASF1265
	.byte	0x20
	.byte	0x3e
	.long	0x3c8c
	.byte	0
	.uleb128 0x8
	.long	.LASF1266
	.byte	0x20
	.byte	0x41
	.long	0x3ca1
	.byte	0x8
	.byte	0
	.uleb128 0x20
	.long	0x1e3
	.long	0x3c8c
	.uleb128 0x1b
	.long	0x389
	.uleb128 0x1b
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3c78
	.uleb128 0x20
	.long	0x1e3
	.long	0x3ca1
	.uleb128 0x1b
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3c92
	.uleb128 0x24
	.long	.LASF1267
	.value	0x100
	.byte	0x20
	.byte	0x46
	.long	0x3db1
	.uleb128 0x8
	.long	.LASF149
	.byte	0x20
	.byte	0x49
	.long	0x5f4
	.byte	0
	.uleb128 0x8
	.long	.LASF1268
	.byte	0x20
	.byte	0x4d
	.long	0x39d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1269
	.byte	0x20
	.byte	0x51
	.long	0x6d6
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1270
	.byte	0x20
	.byte	0x5b
	.long	0x3dcb
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1271
	.byte	0x20
	.byte	0x64
	.long	0x6d6
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1189
	.byte	0x20
	.byte	0x6c
	.long	0x3de0
	.byte	0x28
	.uleb128 0x8
	.long	.LASF1190
	.byte	0x20
	.byte	0x6f
	.long	0x6d6
	.byte	0x30
	.uleb128 0x8
	.long	.LASF1272
	.byte	0x20
	.byte	0x72
	.long	0x6d6
	.byte	0x38
	.uleb128 0x8
	.long	.LASF1273
	.byte	0x20
	.byte	0x76
	.long	0x3df5
	.byte	0x40
	.uleb128 0x8
	.long	.LASF1274
	.byte	0x20
	.byte	0x7b
	.long	0x3e0a
	.byte	0x48
	.uleb128 0x8
	.long	.LASF1275
	.byte	0x20
	.byte	0x84
	.long	0x3e24
	.byte	0x50
	.uleb128 0x8
	.long	.LASF1276
	.byte	0x20
	.byte	0x87
	.long	0x3ca1
	.byte	0x58
	.uleb128 0x8
	.long	.LASF1277
	.byte	0x20
	.byte	0x8a
	.long	0x223b
	.byte	0x60
	.uleb128 0x8
	.long	.LASF1278
	.byte	0x20
	.byte	0x8e
	.long	0x6d6
	.byte	0x68
	.uleb128 0x8
	.long	.LASF1279
	.byte	0x20
	.byte	0x92
	.long	0x3a92
	.byte	0x70
	.uleb128 0x8
	.long	.LASF1280
	.byte	0x20
	.byte	0x96
	.long	0x3a92
	.byte	0x78
	.uleb128 0x8
	.long	.LASF1281
	.byte	0x20
	.byte	0x97
	.long	0x3a92
	.byte	0x80
	.uleb128 0x8
	.long	.LASF1282
	.byte	0x20
	.byte	0x98
	.long	0x3a92
	.byte	0x88
	.uleb128 0x8
	.long	.LASF1283
	.byte	0x20
	.byte	0x9d
	.long	0x6c4
	.byte	0x90
	.uleb128 0x8
	.long	.LASF1284
	.byte	0x20
	.byte	0x9f
	.long	0x3ab8
	.byte	0x98
	.uleb128 0x8
	.long	.LASF1285
	.byte	0x20
	.byte	0xa1
	.long	0x3c53
	.byte	0xf0
	.byte	0
	.uleb128 0x20
	.long	0x1e3
	.long	0x3dc5
	.uleb128 0x1b
	.long	0x1e3
	.uleb128 0x1b
	.long	0x3dc5
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3e1
	.uleb128 0x3
	.byte	0x8
	.long	0x3db1
	.uleb128 0x20
	.long	0x5f4
	.long	0x3de0
	.uleb128 0x1b
	.long	0x5f4
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3dd1
	.uleb128 0x20
	.long	0x396
	.long	0x3df5
	.uleb128 0x1b
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3de6
	.uleb128 0x20
	.long	0x123
	.long	0x3e0a
	.uleb128 0x1b
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3dfb
	.uleb128 0x20
	.long	0x1e3
	.long	0x3e24
	.uleb128 0x1b
	.long	0x2d
	.uleb128 0x1b
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3e10
	.uleb128 0x4
	.long	.LASF1286
	.byte	0x10
	.byte	0x1
	.byte	0xbe
	.long	0x3e73
	.uleb128 0x8
	.long	.LASF1287
	.byte	0x1
	.byte	0xc1
	.long	0x2231
	.byte	0
	.uleb128 0x8
	.long	.LASF1288
	.byte	0x1
	.byte	0xc4
	.long	0x5fa
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1289
	.byte	0x1
	.byte	0xc7
	.long	0x5fa
	.byte	0x9
	.uleb128 0x8
	.long	.LASF1290
	.byte	0x1
	.byte	0xca
	.long	0x3e7
	.byte	0xa
	.uleb128 0x8
	.long	.LASF1291
	.byte	0x1
	.byte	0xcd
	.long	0x3e7
	.byte	0xb
	.byte	0
	.uleb128 0x1d
	.long	.LASF1292
	.byte	0x4
	.byte	0x1
	.byte	0xd2
	.long	0x3f46
	.uleb128 0x10
	.long	.LASF1293
	.sleb128 0
	.uleb128 0x10
	.long	.LASF1294
	.sleb128 1
	.uleb128 0x10
	.long	.LASF1295
	.sleb128 2
	.uleb128 0x10
	.long	.LASF1296
	.sleb128 3
	.uleb128 0x10
	.long	.LASF1297
	.sleb128 4
	.uleb128 0x10
	.long	.LASF1298
	.sleb128 5
	.uleb128 0x10
	.long	.LASF1299
	.sleb128 6
	.uleb128 0x10
	.long	.LASF1300
	.sleb128 7
	.uleb128 0x10
	.long	.LASF1301
	.sleb128 8
	.uleb128 0x10
	.long	.LASF1302
	.sleb128 9
	.uleb128 0x10
	.long	.LASF1303
	.sleb128 10
	.uleb128 0x10
	.long	.LASF1304
	.sleb128 11
	.uleb128 0x10
	.long	.LASF1305
	.sleb128 12
	.uleb128 0x10
	.long	.LASF1306
	.sleb128 13
	.uleb128 0x10
	.long	.LASF1307
	.sleb128 14
	.uleb128 0x10
	.long	.LASF1308
	.sleb128 15
	.uleb128 0x10
	.long	.LASF1309
	.sleb128 16
	.uleb128 0x10
	.long	.LASF1310
	.sleb128 17
	.uleb128 0x10
	.long	.LASF1311
	.sleb128 18
	.uleb128 0x10
	.long	.LASF1312
	.sleb128 19
	.uleb128 0x10
	.long	.LASF1313
	.sleb128 20
	.uleb128 0x10
	.long	.LASF1314
	.sleb128 21
	.uleb128 0x10
	.long	.LASF1315
	.sleb128 22
	.uleb128 0x10
	.long	.LASF1316
	.sleb128 23
	.uleb128 0x10
	.long	.LASF1317
	.sleb128 24
	.uleb128 0x10
	.long	.LASF1318
	.sleb128 25
	.uleb128 0x10
	.long	.LASF1319
	.sleb128 26
	.uleb128 0x10
	.long	.LASF1320
	.sleb128 27
	.uleb128 0x10
	.long	.LASF1321
	.sleb128 28
	.uleb128 0x10
	.long	.LASF1322
	.sleb128 29
	.uleb128 0x10
	.long	.LASF1323
	.sleb128 30
	.uleb128 0x10
	.long	.LASF1324
	.sleb128 31
	.uleb128 0x10
	.long	.LASF1325
	.sleb128 32
	.byte	0
	.uleb128 0x13
	.long	.LASF1326
	.byte	0x1
	.value	0x16e
	.long	0x3f52
	.uleb128 0x3
	.byte	0x8
	.long	0x3f58
	.uleb128 0x20
	.long	0x2d
	.long	0x3f76
	.uleb128 0x1b
	.long	0x12e
	.uleb128 0x1b
	.long	0x2d
	.uleb128 0x1b
	.long	0x786
	.uleb128 0x1b
	.long	0x2cf8
	.byte	0
	.uleb128 0x1e
	.byte	0x18
	.byte	0x1
	.value	0x375
	.long	0x3fb4
	.uleb128 0x1f
	.string	"arg"
	.byte	0x1
	.value	0x377
	.long	0x2231
	.byte	0
	.uleb128 0x12
	.long	.LASF1327
	.byte	0x1
	.value	0x37a
	.long	0x3fb4
	.byte	0x8
	.uleb128 0x12
	.long	.LASF1328
	.byte	0x1
	.value	0x37b
	.long	0x1de
	.byte	0xc
	.uleb128 0x12
	.long	.LASF1329
	.byte	0x1
	.value	0x37c
	.long	0x2231
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.long	0x2a78
	.uleb128 0x1e
	.byte	0x20
	.byte	0x1
	.value	0x39c
	.long	0x3ff7
	.uleb128 0x12
	.long	.LASF20
	.byte	0x1
	.value	0x39e
	.long	0x2231
	.byte	0
	.uleb128 0x12
	.long	.LASF1330
	.byte	0x1
	.value	0x39f
	.long	0x3ff7
	.byte	0x8
	.uleb128 0x12
	.long	.LASF1331
	.byte	0x1
	.value	0x3a0
	.long	0x1de
	.byte	0x10
	.uleb128 0x12
	.long	.LASF1329
	.byte	0x1
	.value	0x3a1
	.long	0x2231
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.long	0x6be
	.uleb128 0x13
	.long	.LASF1332
	.byte	0x1
	.value	0x3a3
	.long	0x3fb9
	.uleb128 0x11
	.long	.LASF1333
	.byte	0x10
	.byte	0x1
	.value	0x487
	.long	0x4030
	.uleb128 0x12
	.long	.LASF1178
	.byte	0x1
	.value	0x489
	.long	0x2231
	.byte	0
	.uleb128 0x12
	.long	.LASF1329
	.byte	0x1
	.value	0x48a
	.long	0x2231
	.byte	0x8
	.byte	0
	.uleb128 0x1e
	.byte	0x18
	.byte	0x1
	.value	0x541
	.long	0x4061
	.uleb128 0x12
	.long	.LASF149
	.byte	0x1
	.value	0x543
	.long	0x2231
	.byte	0
	.uleb128 0x12
	.long	.LASF531
	.byte	0x1
	.value	0x544
	.long	0x1de
	.byte	0x8
	.uleb128 0x12
	.long	.LASF1329
	.byte	0x1
	.value	0x545
	.long	0x2231
	.byte	0x10
	.byte	0
	.uleb128 0x1e
	.byte	0x18
	.byte	0x1
	.value	0x54c
	.long	0x4092
	.uleb128 0x12
	.long	.LASF1166
	.byte	0x1
	.value	0x54e
	.long	0x2231
	.byte	0
	.uleb128 0x12
	.long	.LASF1330
	.byte	0x1
	.value	0x54f
	.long	0x4092
	.byte	0x8
	.uleb128 0x12
	.long	.LASF1329
	.byte	0x1
	.value	0x550
	.long	0x2231
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.long	0x4097
	.uleb128 0x3
	.byte	0x8
	.long	0x5f4
	.uleb128 0x2e
	.long	.LASF1340
	.byte	0x1
	.value	0x5dc
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x40cb
	.uleb128 0x2f
	.long	.LASF1336
	.byte	0x1
	.value	0x5dd
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x30
	.long	.LASF1334
	.byte	0x1
	.value	0x5f0
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x30
	.long	.LASF1335
	.byte	0x1
	.value	0x5f8
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x31
	.long	.LASF1344
	.byte	0x1
	.value	0x60d
	.long	0x1e3
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x415c
	.uleb128 0x32
	.string	"p"
	.byte	0x1
	.value	0x60e
	.long	0x5f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF1337
	.byte	0x1
	.value	0x60f
	.long	0x5f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF1338
	.byte	0x1
	.value	0x610
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.long	.LASF1346
	.byte	0x1
	.value	0x612
	.long	0x5f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x34
	.long	.LASF1359
	.byte	0x1
	.value	0x62a
	.long	0x5f4
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x419d
	.uleb128 0x2f
	.long	.LASF23
	.byte	0x1
	.value	0x62b
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF1339
	.byte	0x1
	.value	0x62c
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x35
	.long	.LASF1341
	.byte	0x1
	.value	0x636
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x41cf
	.uleb128 0x36
	.long	.LASF1343
	.long	0x41df
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.15445
	.byte	0
	.uleb128 0x14
	.long	0x3e7
	.long	0x41df
	.uleb128 0x15
	.long	0x1ea
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	0x41cf
	.uleb128 0x35
	.long	.LASF1342
	.byte	0x1
	.value	0x63f
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x4223
	.uleb128 0x32
	.string	"s"
	.byte	0x1
	.value	0x640
	.long	0x5f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.long	.LASF1343
	.long	0x4233
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.15449
	.byte	0
	.uleb128 0x14
	.long	0x3e7
	.long	0x4233
	.uleb128 0x15
	.long	0x1ea
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.long	0x4223
	.uleb128 0x37
	.long	.LASF1345
	.byte	0x1
	.value	0x64b
	.long	0x1e3
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x4277
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0x64c
	.long	0x3a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.string	"log"
	.byte	0x1
	.value	0x64e
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x37
	.long	.LASF1347
	.byte	0x1
	.value	0x65d
	.long	0x1e3
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x42b6
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.value	0x65e
	.long	0x3a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.string	"log"
	.byte	0x1
	.value	0x660
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x39
	.long	.LASF1349
	.byte	0x1
	.value	0x66e
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x42e4
	.uleb128 0x2f
	.long	.LASF1348
	.byte	0x1
	.value	0x670
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x39
	.long	.LASF1350
	.byte	0x1
	.value	0x680
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x4312
	.uleb128 0x2f
	.long	.LASF764
	.byte	0x1
	.value	0x681
	.long	0x4312
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x6f7
	.uleb128 0x31
	.long	.LASF1351
	.byte	0x1
	.value	0x696
	.long	0x1e3
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x436a
	.uleb128 0x32
	.string	"fn"
	.byte	0x1
	.value	0x697
	.long	0x4375
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2f
	.long	.LASF1352
	.byte	0x1
	.value	0x698
	.long	0x389
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x38
	.string	"buf"
	.byte	0x1
	.value	0x69a
	.long	0x728
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0x1a
	.long	0x4375
	.uleb128 0x1b
	.long	0x389
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x436a
	.uleb128 0x39
	.long	.LASF1353
	.byte	0x1
	.value	0x6ae
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x43a9
	.uleb128 0x2f
	.long	.LASF1348
	.byte	0x1
	.value	0x6af
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2e
	.long	.LASF1354
	.byte	0x1
	.value	0x6be
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x43f3
	.uleb128 0x2f
	.long	.LASF149
	.byte	0x1
	.value	0x6bf
	.long	0x3e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.string	"len"
	.byte	0x1
	.value	0x6c0
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.value	0x6c2
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x35
	.long	.LASF1355
	.byte	0x1
	.value	0x6d0
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x443d
	.uleb128 0x2f
	.long	.LASF1356
	.byte	0x1
	.value	0x6d1
	.long	0x343f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF20
	.byte	0x1
	.value	0x6d2
	.long	0x5f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.string	"c"
	.byte	0x1
	.value	0x6d7
	.long	0x3e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x35
	.long	.LASF1357
	.byte	0x1
	.value	0x6ec
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x4497
	.uleb128 0x2f
	.long	.LASF1356
	.byte	0x1
	.value	0x6ed
	.long	0x343f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF1358
	.byte	0x1
	.value	0x6ee
	.long	0x5f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.string	"len"
	.byte	0x1
	.value	0x6f0
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"na"
	.byte	0x1
	.value	0x6f1
	.long	0x5f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3a
	.long	.LASF1360
	.byte	0x1
	.value	0x70b
	.long	0x1e3
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x4509
	.uleb128 0x2f
	.long	.LASF940
	.byte	0x1
	.value	0x70c
	.long	0x3e73
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2f
	.long	.LASF23
	.byte	0x1
	.value	0x70d
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x33
	.long	.LASF1361
	.byte	0x1
	.value	0x70f
	.long	0x3e1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.long	.LASF1362
	.byte	0x1
	.value	0x710
	.long	0x5f4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x38
	.string	"seq"
	.byte	0x1
	.value	0x711
	.long	0x4509
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x14
	.long	0x3e7
	.long	0x4519
	.uleb128 0x15
	.long	0x1ea
	.byte	0xf
	.byte	0
	.uleb128 0x39
	.long	.LASF1363
	.byte	0x1
	.value	0x740
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x4598
	.uleb128 0x2f
	.long	.LASF940
	.byte	0x1
	.value	0x741
	.long	0x3e73
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2f
	.long	.LASF1364
	.byte	0x1
	.value	0x742
	.long	0x45a8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF1054
	.byte	0x1
	.value	0x743
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x3b
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x38
	.string	"seq"
	.byte	0x1
	.value	0x74d
	.long	0x4509
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.long	.LASF1365
	.byte	0x1
	.value	0x74e
	.long	0x3e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x45a8
	.uleb128 0x1b
	.long	0x343f
	.uleb128 0x1b
	.long	0x2d
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x4598
	.uleb128 0x31
	.long	.LASF1366
	.byte	0x1
	.value	0x766
	.long	0x1e3
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x464a
	.uleb128 0x32
	.string	"vec"
	.byte	0x1
	.value	0x767
	.long	0x2265
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.string	"len"
	.byte	0x1
	.value	0x768
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.long	.LASF23
	.byte	0x1
	.value	0x76a
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.value	0x76b
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.long	.LASF1367
	.byte	0x1
	.value	0x76c
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LASF1368
	.byte	0x1
	.value	0x76d
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3b
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x33
	.long	.LASF1369
	.byte	0x1
	.value	0x7a3
	.long	0x223b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1370
	.byte	0x1
	.value	0x7cd
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x46a3
	.uleb128 0x32
	.string	"vec"
	.byte	0x1
	.value	0x7ce
	.long	0x2265
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.string	"len"
	.byte	0x1
	.value	0x7cf
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.long	.LASF23
	.byte	0x1
	.value	0x7d1
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.value	0x7d2
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x35
	.long	.LASF1371
	.byte	0x1
	.value	0x814
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x46ee
	.uleb128 0x2f
	.long	.LASF1148
	.byte	0x1
	.value	0x815
	.long	0x5f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF151
	.byte	0x1
	.value	0x816
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x38
	.string	"fs"
	.byte	0x1
	.value	0x818
	.long	0x780
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.long	.LASF1372
	.byte	0x1
	.value	0x82e
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x472e
	.uleb128 0x38
	.string	"fs"
	.byte	0x1
	.value	0x830
	.long	0x780
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.long	.LASF1343
	.long	0x473e
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.15558
	.byte	0
	.uleb128 0x14
	.long	0x3e7
	.long	0x473e
	.uleb128 0x15
	.long	0x1ea
	.byte	0xa
	.byte	0
	.uleb128 0xc
	.long	0x472e
	.uleb128 0x39
	.long	.LASF1373
	.byte	0x1
	.value	0x841
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x47bd
	.uleb128 0x33
	.long	.LASF1374
	.byte	0x1
	.value	0x843
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3b
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x38
	.string	"len"
	.byte	0x1
	.value	0x863
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x38
	.string	"vec"
	.byte	0x1
	.value	0x864
	.long	0x2265
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.value	0x865
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.long	.LASF23
	.byte	0x1
	.value	0x866
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1375
	.byte	0x1
	.value	0x8c3
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x485e
	.uleb128 0x2f
	.long	.LASF23
	.byte	0x1
	.value	0x8c4
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF1376
	.byte	0x1
	.value	0x8c5
	.long	0x5f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF1377
	.byte	0x1
	.value	0x8c6
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2f
	.long	.LASF1378
	.byte	0x1
	.value	0x8c7
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3c
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x483c
	.uleb128 0x33
	.long	.LASF910
	.byte	0x1
	.value	0x8d4
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x3b
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x33
	.long	.LASF149
	.byte	0x1
	.value	0x8ed
	.long	0x5f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF1379
	.byte	0x1
	.value	0x918
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x489b
	.uleb128 0x2f
	.long	.LASF24
	.byte	0x1
	.value	0x91a
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF1380
	.byte	0x1
	.value	0x91b
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x35
	.long	.LASF1381
	.byte	0x1
	.value	0x93a
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a9d
	.uleb128 0x2f
	.long	.LASF23
	.byte	0x1
	.value	0x93b
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x33
	.long	.LASF1054
	.byte	0x1
	.value	0x93d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x38
	.string	"tem"
	.byte	0x1
	.value	0x93e
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x33
	.long	.LASF1382
	.byte	0x1
	.value	0x93f
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x33
	.long	.LASF1383
	.byte	0x1
	.value	0x940
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x33
	.long	.LASF1384
	.byte	0x1
	.value	0x941
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x33
	.long	.LASF1385
	.byte	0x1
	.value	0x942
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x3d
	.long	.LASF1665
	.byte	0x1
	.value	0xdd9
	.quad	.L144
	.uleb128 0x36
	.long	.LASF1343
	.long	0x4a9d
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.15612
	.uleb128 0x3c
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0x49b4
	.uleb128 0x33
	.long	.LASF616
	.byte	0x1
	.value	0x95f
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x33
	.long	.LASF1386
	.byte	0x1
	.value	0x960
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x33
	.long	.LASF1387
	.byte	0x1
	.value	0x961
	.long	0x5f4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x3b
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x33
	.long	.LASF1388
	.byte	0x1
	.value	0x9bc
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.byte	0
	.byte	0
	.uleb128 0x3c
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0x49da
	.uleb128 0x33
	.long	.LASF1386
	.byte	0x1
	.value	0x9e0
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0x3c
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x4a20
	.uleb128 0x33
	.long	.LASF1389
	.byte	0x1
	.value	0xb0d
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x33
	.long	.LASF1390
	.byte	0x1
	.value	0xb0d
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x33
	.long	.LASF1391
	.byte	0x1
	.value	0xb0e
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0x3c
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0x4a46
	.uleb128 0x33
	.long	.LASF1086
	.byte	0x1
	.value	0xbcb
	.long	0x308d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x3c
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0x4a6c
	.uleb128 0x33
	.long	.LASF1392
	.byte	0x1
	.value	0xbf9
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.uleb128 0x3b
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x38
	.string	"x"
	.byte	0x1
	.value	0xd9e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x33
	.long	.LASF1393
	.byte	0x1
	.value	0xd9f
	.long	0x5f4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x5e4
	.uleb128 0x39
	.long	.LASF1394
	.byte	0x1
	.value	0xe16
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b9d
	.uleb128 0x33
	.long	.LASF1395
	.byte	0x1
	.value	0xe18
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.value	0xe19
	.long	0x3a8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.long	.LASF1396
	.byte	0x1
	.value	0xe1a
	.long	0x5f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3c
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.long	0x4b12
	.uleb128 0x33
	.long	.LASF1329
	.byte	0x1
	.value	0xe25
	.long	0x5f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x3c
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.long	0x4b47
	.uleb128 0x33
	.long	.LASF1329
	.byte	0x1
	.value	0xe30
	.long	0x5f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.long	.LASF502
	.byte	0x1
	.value	0xe31
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x3c
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0x4b6c
	.uleb128 0x33
	.long	.LASF1329
	.byte	0x1
	.value	0xe40
	.long	0x5f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x3b
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x33
	.long	.LASF1329
	.byte	0x1
	.value	0xe71
	.long	0x5f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LASF1178
	.byte	0x1
	.value	0xe72
	.long	0x5f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	.LASF1397
	.byte	0x1
	.value	0xe96
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x4c73
	.uleb128 0x33
	.long	.LASF1395
	.byte	0x1
	.value	0xe98
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.value	0xe98
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.long	.LASF1398
	.byte	0x1
	.value	0xe99
	.long	0x223b
	.uleb128 0x9
	.byte	0x3
	.quad	displayed.15644
	.uleb128 0x3b
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x38
	.string	"doc"
	.byte	0x1
	.value	0xea6
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3c
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.long	0x4c41
	.uleb128 0x33
	.long	.LASF1178
	.byte	0x1
	.value	0xeae
	.long	0x5f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.long	.LASF1329
	.byte	0x1
	.value	0xeaf
	.long	0x5f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x3b
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x33
	.long	.LASF1178
	.byte	0x1
	.value	0xec1
	.long	0x5f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LASF1329
	.byte	0x1
	.value	0xec2
	.long	0x5f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	.LASF1399
	.byte	0x1
	.value	0xede
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x4cca
	.uleb128 0x32
	.string	"arg"
	.byte	0x1
	.value	0xedf
	.long	0x5f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.value	0xee1
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.string	"c"
	.byte	0x1
	.value	0xee1
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.long	.LASF1400
	.byte	0x1
	.value	0xee1
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3a
	.long	.LASF1401
	.byte	0x1
	.value	0xf15
	.long	0x1e3
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x4d82
	.uleb128 0x32
	.string	"arg"
	.byte	0x1
	.value	0xf16
	.long	0x5f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x38
	.string	"j"
	.byte	0x1
	.value	0xf18
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.long	.LASF1402
	.byte	0x1
	.value	0xf19
	.long	0x5f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3c
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.long	0x4d3c
	.uleb128 0x38
	.string	"val"
	.byte	0x1
	.value	0xf33
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x3c
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.long	0x4d61
	.uleb128 0x38
	.string	"reg"
	.byte	0x1
	.value	0xf4f
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x3b
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x38
	.string	"nm"
	.byte	0x1
	.value	0xf58
	.long	0x5f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	.LASF1403
	.byte	0x1
	.value	0xf7d
	.long	0x1e3
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x4dd0
	.uleb128 0x32
	.string	"arg"
	.byte	0x1
	.value	0xf7e
	.long	0x5f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.long	.LASF1402
	.byte	0x1
	.value	0xf80
	.long	0x5f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.string	"j"
	.byte	0x1
	.value	0xf81
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x3a
	.long	.LASF1404
	.byte	0x1
	.value	0xfb0
	.long	0x1e3
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ebf
	.uleb128 0x32
	.string	"arg"
	.byte	0x1
	.value	0xfb1
	.long	0x5f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.long	.LASF1072
	.byte	0x1
	.value	0xfb3
	.long	0x382
	.uleb128 0x9
	.byte	0x3
	.quad	level.15704
	.uleb128 0x33
	.long	.LASF1405
	.byte	0x1
	.value	0xfb9
	.long	0x2a78
	.uleb128 0x9
	.byte	0x3
	.quad	selected_debug_type.15705
	.uleb128 0x33
	.long	.LASF1406
	.byte	0x1
	.value	0xfbd
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	type_explicitly_set_p.15706
	.uleb128 0x33
	.long	.LASF1407
	.byte	0x1
	.value	0xfbf
	.long	0x4ecf
	.uleb128 0x9
	.byte	0x3
	.quad	debug_type_names.15707
	.uleb128 0x33
	.long	.LASF1408
	.byte	0x1
	.value	0xfc5
	.long	0x2b04
	.uleb128 0x9
	.byte	0x3
	.quad	max_debug_level.15708
	.uleb128 0x3b
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x33
	.long	.LASF1409
	.byte	0x1
	.value	0xfca
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3b
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x33
	.long	.LASF24
	.byte	0x1
	.value	0xfce
	.long	0x2a78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x38
	.string	"p"
	.byte	0x1
	.value	0xfcf
	.long	0x5f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x5f4
	.long	0x4ecf
	.uleb128 0x15
	.long	0x1ea
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.long	0x4ebf
	.uleb128 0x3a
	.long	.LASF1410
	.byte	0x1
	.value	0x102d
	.long	0x382
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x4f9a
	.uleb128 0x2f
	.long	.LASF1411
	.byte	0x1
	.value	0x102e
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2f
	.long	.LASF1412
	.byte	0x1
	.value	0x102f
	.long	0x3dc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x38
	.string	"arg"
	.byte	0x1
	.value	0x1031
	.long	0x3e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3c
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.long	0x4f69
	.uleb128 0x33
	.long	.LASF1413
	.byte	0x1
	.value	0x1054
	.long	0x3e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3b
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x38
	.string	"val"
	.byte	0x1
	.value	0x1064
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x3b
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x33
	.long	.LASF1414
	.byte	0x1
	.value	0x10e9
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.long	.LASF1415
	.byte	0x1
	.value	0x10ea
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	.LASF1416
	.byte	0x1
	.value	0x110d
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x5005
	.uleb128 0x2f
	.long	.LASF149
	.byte	0x1
	.value	0x110e
	.long	0x5f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.string	"j"
	.byte	0x1
	.value	0x1110
	.long	0x39d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LASF1417
	.byte	0x1
	.value	0x1111
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3b
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x38
	.string	"len"
	.byte	0x1
	.value	0x1121
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	.LASF1418
	.byte	0x1
	.value	0x1133
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x5042
	.uleb128 0x2f
	.long	.LASF1148
	.byte	0x1
	.value	0x1134
	.long	0x343f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF1419
	.byte	0x1
	.value	0x1135
	.long	0x5f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x3a
	.long	.LASF1420
	.byte	0x1
	.value	0x114c
	.long	0x1e3
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x50ef
	.uleb128 0x2f
	.long	.LASF1148
	.byte	0x1
	.value	0x114d
	.long	0x343f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.string	"pos"
	.byte	0x1
	.value	0x114e
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x32
	.string	"max"
	.byte	0x1
	.value	0x114e
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF1419
	.byte	0x1
	.value	0x114f
	.long	0x5f4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x32
	.string	"sep"
	.byte	0x1
	.value	0x114f
	.long	0x5f4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF1421
	.byte	0x1
	.value	0x114f
	.long	0x5f4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LASF24
	.byte	0x1
	.value	0x114f
	.long	0x5f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF149
	.byte	0x1
	.value	0x114f
	.long	0x5f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.string	"len"
	.byte	0x1
	.value	0x1153
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x39
	.long	.LASF1422
	.byte	0x1
	.value	0x116b
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x51ac
	.uleb128 0x2f
	.long	.LASF1148
	.byte	0x1
	.value	0x116c
	.long	0x343f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x32
	.string	"pos"
	.byte	0x1
	.value	0x116d
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -316
	.uleb128 0x32
	.string	"max"
	.byte	0x1
	.value	0x116d
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x2f
	.long	.LASF1419
	.byte	0x1
	.value	0x116e
	.long	0x5f4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x32
	.string	"sep"
	.byte	0x1
	.value	0x116e
	.long	0x5f4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x2f
	.long	.LASF1421
	.byte	0x1
	.value	0x116e
	.long	0x5f4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x38
	.string	"j"
	.byte	0x1
	.value	0x1170
	.long	0x39d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x38
	.string	"p"
	.byte	0x1
	.value	0x1171
	.long	0x3dc5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x3b
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.uleb128 0x33
	.long	.LASF1166
	.byte	0x1
	.value	0x11aa
	.long	0x51ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x3e7
	.long	0x51bc
	.uleb128 0x15
	.long	0x1ea
	.byte	0xff
	.byte	0
	.uleb128 0x39
	.long	.LASF1423
	.byte	0x1
	.value	0x11b9
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x521a
	.uleb128 0x2f
	.long	.LASF149
	.byte	0x1
	.value	0x11ba
	.long	0x5f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.uleb128 0x38
	.string	"len"
	.byte	0x1
	.value	0x11c2
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF1424
	.byte	0x1
	.value	0x11c3
	.long	0x3e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	.LASF1425
	.byte	0x1
	.value	0x11ef
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x5255
	.uleb128 0x2f
	.long	.LASF1426
	.byte	0x1
	.value	0x11f0
	.long	0x3e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.string	"p"
	.byte	0x1
	.value	0x11f2
	.long	0x3e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x39
	.long	.LASF1427
	.byte	0x1
	.value	0x121c
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x5352
	.uleb128 0x2f
	.long	.LASF1411
	.byte	0x1
	.value	0x121d
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2f
	.long	.LASF1412
	.byte	0x1
	.value	0x121e
	.long	0x3dc5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.value	0x1220
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3c
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.long	0x52e4
	.uleb128 0x38
	.string	"p"
	.byte	0x1
	.value	0x123b
	.long	0x3e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3b
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.uleb128 0x33
	.long	.LASF1428
	.byte	0x1
	.value	0x1246
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x3b
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.uleb128 0x33
	.long	.LASF1429
	.byte	0x1
	.value	0x12a2
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.long	.LASF1430
	.byte	0x1
	.value	0x12a3
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3b
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.uleb128 0x33
	.long	.LASF1178
	.byte	0x1
	.value	0x12b7
	.long	0x5f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LASF1396
	.byte	0x1
	.value	0x12b8
	.long	0x5f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.string	"j"
	.byte	0x1
	.value	0x12b9
	.long	0x382
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.long	.LASF1431
	.byte	0x1
	.value	0x1302
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3e
	.long	.LASF1432
	.byte	0x1
	.value	0x13ba
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3a
	.long	.LASF1433
	.byte	0x1
	.value	0x13eb
	.long	0x1e3
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x53b8
	.uleb128 0x2f
	.long	.LASF149
	.byte	0x1
	.value	0x13ec
	.long	0x5f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x39
	.long	.LASF1434
	.byte	0x1
	.value	0x141b
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x5426
	.uleb128 0x3b
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.value	0x1434
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3b
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.uleb128 0x38
	.string	"seq"
	.byte	0x1
	.value	0x1439
	.long	0x4509
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.long	.LASF1365
	.byte	0x1
	.value	0x143a
	.long	0x3e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.long	.LASF1435
	.byte	0x1
	.value	0x1453
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x31
	.long	.LASF1436
	.byte	0x1
	.value	0x1478
	.long	0x1e3
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x5481
	.uleb128 0x2f
	.long	.LASF1411
	.byte	0x1
	.value	0x1479
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LASF1412
	.byte	0x1
	.value	0x147a
	.long	0x3dc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x14
	.long	0x3e2a
	.long	0x5491
	.uleb128 0x15
	.long	0x1ea
	.byte	0x1f
	.byte	0
	.uleb128 0x33
	.long	.LASF1437
	.byte	0x1
	.value	0x100
	.long	0x5481
	.uleb128 0x9
	.byte	0x3
	.quad	dump_file
	.uleb128 0x33
	.long	.LASF1438
	.byte	0x1
	.value	0x12c
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	version_flag
	.uleb128 0x33
	.long	.LASF653
	.byte	0x1
	.value	0x12d
	.long	0x3e1
	.uleb128 0x9
	.byte	0x3
	.quad	filename
	.uleb128 0x33
	.long	.LASF1439
	.byte	0x1
	.value	0x158
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	exit_after_options
	.uleb128 0x33
	.long	.LASF1440
	.byte	0x1
	.value	0x267
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_gcse
	.uleb128 0x33
	.long	.LASF1441
	.byte	0x1
	.value	0x26c
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_delete_null_pointer_checks
	.uleb128 0x33
	.long	.LASF1442
	.byte	0x1
	.value	0x27d
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_rerun_cse_after_loop
	.uleb128 0x33
	.long	.LASF1443
	.byte	0x1
	.value	0x2a2
	.long	0x3e1
	.uleb128 0x9
	.byte	0x3
	.quad	aux_info_file_name
	.uleb128 0x38
	.string	"da"
	.byte	0x1
	.value	0x37d
	.long	0x5556
	.uleb128 0x9
	.byte	0x3
	.quad	da
	.uleb128 0x3
	.byte	0x8
	.long	0x555c
	.uleb128 0xc
	.long	0x3f76
	.uleb128 0x14
	.long	0x3f76
	.long	0x5571
	.uleb128 0x15
	.long	0x1ea
	.byte	0x5
	.byte	0
	.uleb128 0x33
	.long	.LASF1444
	.byte	0x1
	.value	0x37e
	.long	0x5587
	.uleb128 0x9
	.byte	0x3
	.quad	debug_args
	.uleb128 0xc
	.long	0x5561
	.uleb128 0x14
	.long	0x3486
	.long	0x559c
	.uleb128 0x15
	.long	0x1ea
	.byte	0x6
	.byte	0
	.uleb128 0x33
	.long	.LASF1445
	.byte	0x1
	.value	0x3ad
	.long	0x55b2
	.uleb128 0x9
	.byte	0x3
	.quad	lang_independent_params
	.uleb128 0xc
	.long	0x558c
	.uleb128 0x14
	.long	0x3ffc
	.long	0x55c7
	.uleb128 0x15
	.long	0x1ea
	.byte	0x60
	.byte	0
	.uleb128 0x33
	.long	.LASF1446
	.byte	0x1
	.value	0x3c0
	.long	0x55dd
	.uleb128 0x9
	.byte	0x3
	.quad	f_options
	.uleb128 0xc
	.long	0x55b7
	.uleb128 0x14
	.long	0x4008
	.long	0x55f2
	.uleb128 0x15
	.long	0x1ea
	.byte	0x6b
	.byte	0
	.uleb128 0x33
	.long	.LASF1447
	.byte	0x1
	.value	0x48c
	.long	0x5608
	.uleb128 0x9
	.byte	0x3
	.quad	documented_lang_options
	.uleb128 0xc
	.long	0x55e2
	.uleb128 0x14
	.long	0x4030
	.long	0x561d
	.uleb128 0x15
	.long	0x1ea
	.byte	0x37
	.byte	0
	.uleb128 0x33
	.long	.LASF1448
	.byte	0x1
	.value	0x547
	.long	0x5633
	.uleb128 0x9
	.byte	0x3
	.quad	target_switches
	.uleb128 0xc
	.long	0x560d
	.uleb128 0x14
	.long	0x4061
	.long	0x5648
	.uleb128 0x15
	.long	0x1ea
	.byte	0xc
	.byte	0
	.uleb128 0x33
	.long	.LASF1449
	.byte	0x1
	.value	0x552
	.long	0x565e
	.uleb128 0x9
	.byte	0x3
	.quad	target_options
	.uleb128 0xc
	.long	0x5638
	.uleb128 0x14
	.long	0x3ffc
	.long	0x5673
	.uleb128 0x15
	.long	0x1ea
	.byte	0x12
	.byte	0
	.uleb128 0x33
	.long	.LASF1450
	.byte	0x1
	.value	0x5b1
	.long	0x5689
	.uleb128 0x9
	.byte	0x3
	.quad	W_options
	.uleb128 0xc
	.long	0x5663
	.uleb128 0x33
	.long	.LASF1451
	.byte	0x1
	.value	0x667
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	float_handler_set
	.uleb128 0x3f
	.long	.LASF1452
	.byte	0x1
	.byte	0xb6
	.long	0x1e3
	.uleb128 0x3f
	.long	.LASF1453
	.byte	0x5
	.byte	0xe2
	.long	0x1e3
	.uleb128 0x40
	.long	.LASF1454
	.byte	0x5
	.value	0xc21
	.long	0x5f4
	.uleb128 0x40
	.long	.LASF1455
	.byte	0x5
	.value	0xc21
	.long	0x5f4
	.uleb128 0x40
	.long	.LASF1456
	.byte	0x5
	.value	0xc27
	.long	0x5f4
	.uleb128 0x40
	.long	.LASF1457
	.byte	0x5
	.value	0xc28
	.long	0x310
	.uleb128 0x40
	.long	.LASF1458
	.byte	0x5
	.value	0xc2a
	.long	0x5f4
	.uleb128 0x40
	.long	.LASF1459
	.byte	0x5
	.value	0xc2e
	.long	0x5f4
	.uleb128 0x40
	.long	.LASF1460
	.byte	0x5
	.value	0xc2f
	.long	0x5f4
	.uleb128 0x40
	.long	.LASF1461
	.byte	0x5
	.value	0xc30
	.long	0x5f4
	.uleb128 0x40
	.long	.LASF1462
	.byte	0x5
	.value	0xc31
	.long	0x5f4
	.uleb128 0x40
	.long	.LASF1463
	.byte	0x5
	.value	0xc32
	.long	0x5f4
	.uleb128 0x40
	.long	.LASF1464
	.byte	0x5
	.value	0xc33
	.long	0x5f4
	.uleb128 0x40
	.long	.LASF1465
	.byte	0x5
	.value	0xc34
	.long	0x5f4
	.uleb128 0x40
	.long	.LASF1466
	.byte	0x5
	.value	0xc35
	.long	0x5f4
	.uleb128 0x40
	.long	.LASF1467
	.byte	0x5
	.value	0xc36
	.long	0x5f4
	.uleb128 0x3f
	.long	.LASF1468
	.byte	0xa
	.byte	0xa9
	.long	0x5c8
	.uleb128 0x3f
	.long	.LASF1469
	.byte	0xa
	.byte	0xaa
	.long	0x5c8
	.uleb128 0x14
	.long	0x3b6
	.long	0x5788
	.uleb128 0x15
	.long	0x1ea
	.byte	0xff
	.byte	0
	.uleb128 0x3f
	.long	.LASF1470
	.byte	0x1a
	.byte	0x48
	.long	0x5793
	.uleb128 0xc
	.long	0x5778
	.uleb128 0x41
	.long	.LASF1471
	.byte	0x1
	.byte	0x93
	.long	0x5f4
	.uleb128 0x9
	.byte	0x3
	.quad	input_filename
	.uleb128 0x41
	.long	.LASF1472
	.byte	0x1
	.byte	0x99
	.long	0x5f4
	.uleb128 0x9
	.byte	0x3
	.quad	main_input_filename
	.uleb128 0x41
	.long	.LASF1473
	.byte	0x1
	.byte	0x9d
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	lineno
	.uleb128 0x41
	.long	.LASF1474
	.byte	0x1
	.byte	0xa4
	.long	0x780
	.uleb128 0x9
	.byte	0x3
	.quad	input_file_stack
	.uleb128 0x41
	.long	.LASF1475
	.byte	0x1
	.byte	0xa7
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	input_file_stack_tick
	.uleb128 0x3f
	.long	.LASF1476
	.byte	0x21
	.byte	0x3
	.long	0x2231
	.uleb128 0x14
	.long	0x1e3
	.long	0x581c
	.uleb128 0x15
	.long	0x1ea
	.byte	0xff
	.byte	0
	.uleb128 0x3f
	.long	.LASF1477
	.byte	0x4
	.byte	0x3c
	.long	0x580c
	.uleb128 0x14
	.long	0x123
	.long	0x5837
	.uleb128 0x15
	.long	0x1ea
	.byte	0x32
	.byte	0
	.uleb128 0x40
	.long	.LASF1478
	.byte	0x4
	.value	0x79b
	.long	0x5827
	.uleb128 0x42
	.long	.LASF1479
	.byte	0x1
	.value	0x15c
	.long	0x123
	.uleb128 0x9
	.byte	0x3
	.quad	current_function_decl
	.uleb128 0x42
	.long	.LASF1480
	.byte	0x1
	.value	0x160
	.long	0x123
	.uleb128 0x9
	.byte	0x3
	.quad	current_function_func_begin_label
	.uleb128 0x20
	.long	0x5f4
	.long	0x5883
	.uleb128 0x1b
	.long	0x123
	.uleb128 0x1b
	.long	0x1e3
	.byte	0
	.uleb128 0x42
	.long	.LASF1481
	.byte	0x1
	.value	0x16a
	.long	0x5899
	.uleb128 0x9
	.byte	0x3
	.quad	decl_printable_name
	.uleb128 0x3
	.byte	0x8
	.long	0x586f
	.uleb128 0x42
	.long	.LASF1482
	.byte	0x1
	.value	0x177
	.long	0x3633
	.uleb128 0x9
	.byte	0x3
	.quad	incomplete_decl_finalize_hook
	.uleb128 0x40
	.long	.LASF1483
	.byte	0x4
	.value	0xb5b
	.long	0x3633
	.uleb128 0x40
	.long	.LASF1484
	.byte	0x2
	.value	0x4bb
	.long	0x1e3
	.uleb128 0x40
	.long	.LASF1485
	.byte	0x2
	.value	0x4be
	.long	0x1e3
	.uleb128 0x40
	.long	.LASF1486
	.byte	0x2
	.value	0x6cd
	.long	0x1e3
	.uleb128 0x40
	.long	.LASF1487
	.byte	0x2
	.value	0x6d2
	.long	0x1e3
	.uleb128 0x40
	.long	.LASF1488
	.byte	0x2
	.value	0x6df
	.long	0x1e3
	.uleb128 0x41
	.long	.LASF1489
	.byte	0x1
	.byte	0xa0
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	no_new_pseudos
	.uleb128 0x42
	.long	.LASF1490
	.byte	0x1
	.value	0x32b
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	stack_limit_rtx
	.uleb128 0x42
	.long	.LASF1491
	.byte	0x1
	.value	0x13b
	.long	0x2a78
	.uleb128 0x9
	.byte	0x3
	.quad	write_symbols
	.uleb128 0x42
	.long	.LASF992
	.byte	0x1
	.value	0x13f
	.long	0x2ab5
	.uleb128 0x9
	.byte	0x3
	.quad	debug_info_level
	.uleb128 0x42
	.long	.LASF1492
	.byte	0x1
	.value	0x145
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	use_gnu_debug_info_extensions
	.uleb128 0x42
	.long	.LASF1493
	.byte	0x1
	.value	0x14e
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	optimize
	.uleb128 0x42
	.long	.LASF1494
	.byte	0x1
	.value	0x155
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	optimize_size
	.uleb128 0x42
	.long	.LASF1495
	.byte	0x1
	.value	0x1a2
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	quiet_flag
	.uleb128 0x42
	.long	.LASF1496
	.byte	0x1
	.value	0x1a6
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	time_report
	.uleb128 0x42
	.long	.LASF1497
	.byte	0x1
	.value	0x1ab
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	mem_report
	.uleb128 0x42
	.long	.LASF1498
	.byte	0x1
	.value	0x559
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	inhibit_warnings
	.uleb128 0x42
	.long	.LASF1499
	.byte	0x1
	.value	0x55d
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_system_headers
	.uleb128 0x42
	.long	.LASF1500
	.byte	0x1
	.value	0x561
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	extra_warnings
	.uleb128 0x42
	.long	.LASF1501
	.byte	0x1
	.value	0x569
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_unused_function
	.uleb128 0x42
	.long	.LASF1502
	.byte	0x1
	.value	0x56a
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_unused_label
	.uleb128 0x42
	.long	.LASF1503
	.byte	0x1
	.value	0x56b
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_unused_parameter
	.uleb128 0x42
	.long	.LASF1504
	.byte	0x1
	.value	0x56c
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_unused_variable
	.uleb128 0x42
	.long	.LASF1505
	.byte	0x1
	.value	0x56d
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_unused_value
	.uleb128 0x42
	.long	.LASF1506
	.byte	0x1
	.value	0x571
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_notreached
	.uleb128 0x42
	.long	.LASF1507
	.byte	0x1
	.value	0x593
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_inline
	.uleb128 0x42
	.long	.LASF1508
	.byte	0x1
	.value	0x575
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_uninitialized
	.uleb128 0x42
	.long	.LASF1509
	.byte	0x1
	.value	0x579
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_shadow
	.uleb128 0x42
	.long	.LASF1510
	.byte	0x1
	.value	0x57d
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_switch
	.uleb128 0x42
	.long	.LASF1511
	.byte	0x1
	.value	0x582
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_return_type
	.uleb128 0x42
	.long	.LASF1512
	.byte	0x1
	.value	0x5a8
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_missing_noreturn
	.uleb128 0x42
	.long	.LASF1513
	.byte	0x1
	.value	0x588
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_cast_align
	.uleb128 0x42
	.long	.LASF1514
	.byte	0x1
	.value	0x58e
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_larger_than
	.uleb128 0x42
	.long	.LASF1515
	.byte	0x1
	.value	0x58f
	.long	0x396
	.uleb128 0x9
	.byte	0x3
	.quad	larger_than_size
	.uleb128 0x42
	.long	.LASF1516
	.byte	0x1
	.value	0x598
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_aggregate_return
	.uleb128 0x42
	.long	.LASF1517
	.byte	0x1
	.value	0x59c
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_packed
	.uleb128 0x42
	.long	.LASF1518
	.byte	0x1
	.value	0x5a0
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_padded
	.uleb128 0x42
	.long	.LASF1519
	.byte	0x1
	.value	0x5a4
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_disabled_optimization
	.uleb128 0x42
	.long	.LASF1520
	.byte	0x1
	.value	0x5ad
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_deprecated_decl
	.uleb128 0x42
	.long	.LASF1521
	.byte	0x1
	.value	0x17f
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	profile_flag
	.uleb128 0x42
	.long	.LASF1522
	.byte	0x1
	.value	0x183
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	profile_arc_flag
	.uleb128 0x42
	.long	.LASF1523
	.byte	0x1
	.value	0x187
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_test_coverage
	.uleb128 0x42
	.long	.LASF1524
	.byte	0x1
	.value	0x18b
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_branch_probabilities
	.uleb128 0x42
	.long	.LASF1525
	.byte	0x1
	.value	0x18f
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_reorder_blocks
	.uleb128 0x42
	.long	.LASF1526
	.byte	0x1
	.value	0x193
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_rename_registers
	.uleb128 0x42
	.long	.LASF1527
	.byte	0x1
	.value	0x199
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	pedantic
	.uleb128 0x42
	.long	.LASF1528
	.byte	0x1
	.value	0x19e
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	in_system_header
	.uleb128 0x42
	.long	.LASF1529
	.byte	0x1
	.value	0x12b
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_print_asm_name
	.uleb128 0x42
	.long	.LASF1530
	.byte	0x1
	.value	0x1b6
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_signed_char
	.uleb128 0x42
	.long	.LASF1531
	.byte	0x1
	.value	0x1ba
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_short_enums
	.uleb128 0x42
	.long	.LASF1532
	.byte	0x1
	.value	0x1c3
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_caller_saves
	.uleb128 0x42
	.long	.LASF1533
	.byte	0x1
	.value	0x1d1
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_pcc_struct_return
	.uleb128 0x42
	.long	.LASF1534
	.byte	0x1
	.value	0x1d6
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_force_mem
	.uleb128 0x42
	.long	.LASF1535
	.byte	0x1
	.value	0x1db
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_force_addr
	.uleb128 0x42
	.long	.LASF1536
	.byte	0x1
	.value	0x1e0
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_defer_pop
	.uleb128 0x42
	.long	.LASF1537
	.byte	0x1
	.value	0x1e5
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_float_store
	.uleb128 0x42
	.long	.LASF1538
	.byte	0x1
	.value	0x1fb
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_strength_reduce
	.uleb128 0x42
	.long	.LASF1539
	.byte	0x1
	.value	0x202
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_unroll_loops
	.uleb128 0x42
	.long	.LASF1540
	.byte	0x1
	.value	0x207
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_unroll_all_loops
	.uleb128 0x42
	.long	.LASF1541
	.byte	0x1
	.value	0x210
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_move_all_movables
	.uleb128 0x42
	.long	.LASF1542
	.byte	0x1
	.value	0x20b
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_prefetch_loop_arrays
	.uleb128 0x42
	.long	.LASF1543
	.byte	0x1
	.value	0x215
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_reduce_all_givs
	.uleb128 0x42
	.long	.LASF1544
	.byte	0x1
	.value	0x1ea
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_cse_follow_jumps
	.uleb128 0x42
	.long	.LASF1545
	.byte	0x1
	.value	0x1ee
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_cse_skip_blocks
	.uleb128 0x42
	.long	.LASF1546
	.byte	0x1
	.value	0x1f2
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_expensive_optimizations
	.uleb128 0x42
	.long	.LASF1547
	.byte	0x1
	.value	0x21f
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_writable_strings
	.uleb128 0x42
	.long	.LASF1548
	.byte	0x1
	.value	0x225
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_no_function_cse
	.uleb128 0x42
	.long	.LASF1549
	.byte	0x1
	.value	0x22a
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_omit_frame_pointer
	.uleb128 0x42
	.long	.LASF1550
	.byte	0x1
	.value	0x237
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_no_peephole
	.uleb128 0x42
	.long	.LASF1551
	.byte	0x1
	.value	0x257
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_volatile
	.uleb128 0x42
	.long	.LASF1552
	.byte	0x1
	.value	0x25b
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_volatile_global
	.uleb128 0x42
	.long	.LASF1553
	.byte	0x1
	.value	0x25f
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_volatile_static
	.uleb128 0x42
	.long	.LASF1554
	.byte	0x1
	.value	0x23b
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_optimize_sibling_calls
	.uleb128 0x42
	.long	.LASF1555
	.byte	0x1
	.value	0x240
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_errno_math
	.uleb128 0x42
	.long	.LASF1556
	.byte	0x1
	.value	0x247
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_unsafe_math_optimizations
	.uleb128 0x42
	.long	.LASF1557
	.byte	0x1
	.value	0x24d
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_trapping_math
	.uleb128 0x42
	.long	.LASF1558
	.byte	0x1
	.value	0x253
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_complex_divide_method
	.uleb128 0x42
	.long	.LASF1559
	.byte	0x1
	.value	0x281
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_rerun_loop_opt
	.uleb128 0x42
	.long	.LASF1560
	.byte	0x1
	.value	0x286
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_inline_functions
	.uleb128 0x42
	.long	.LASF1561
	.byte	0x1
	.value	0x28c
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_keep_inline_functions
	.uleb128 0x42
	.long	.LASF1562
	.byte	0x1
	.value	0x290
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_no_inline
	.uleb128 0x42
	.long	.LASF1563
	.byte	0x1
	.value	0x295
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_really_no_inline
	.uleb128 0x42
	.long	.LASF1564
	.byte	0x1
	.value	0x263
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_syntax_only
	.uleb128 0x42
	.long	.LASF1565
	.byte	0x1
	.value	0x29e
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_gen_aux_info
	.uleb128 0x42
	.long	.LASF1566
	.byte	0x1
	.value	0x2a6
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_shared_data
	.uleb128 0x42
	.long	.LASF1567
	.byte	0x1
	.value	0x2d5
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_schedule_insns
	.uleb128 0x42
	.long	.LASF1568
	.byte	0x1
	.value	0x2d6
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_schedule_insns_after_reload
	.uleb128 0x42
	.long	.LASF1569
	.byte	0x1
	.value	0x2e2
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_schedule_interblock
	.uleb128 0x42
	.long	.LASF1570
	.byte	0x1
	.value	0x2e3
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_schedule_speculative
	.uleb128 0x42
	.long	.LASF1571
	.byte	0x1
	.value	0x2e4
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_schedule_speculative_load
	.uleb128 0x42
	.long	.LASF1572
	.byte	0x1
	.value	0x2e5
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_schedule_speculative_load_dangerous
	.uleb128 0x42
	.long	.LASF1573
	.byte	0x1
	.value	0x2eb
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_branch_on_count_reg
	.uleb128 0x42
	.long	.LASF1574
	.byte	0x1
	.value	0x2e7
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_single_precision_constant
	.uleb128 0x42
	.long	.LASF1575
	.byte	0x1
	.value	0x2aa
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_delayed_branch
	.uleb128 0x40
	.long	.LASF1576
	.byte	0x17
	.value	0x1b8
	.long	0x1e3
	.uleb128 0x42
	.long	.LASF1577
	.byte	0x1
	.value	0x2c9
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_pretend_float
	.uleb128 0x42
	.long	.LASF1578
	.byte	0x1
	.value	0x2ce
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_pedantic_errors
	.uleb128 0x42
	.long	.LASF1579
	.byte	0x1
	.value	0x2b1
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_pic
	.uleb128 0x42
	.long	.LASF1580
	.byte	0x1
	.value	0x2b6
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_exceptions
	.uleb128 0x42
	.long	.LASF1581
	.byte	0x1
	.value	0x2ba
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_unwind_tables
	.uleb128 0x42
	.long	.LASF1582
	.byte	0x1
	.value	0x2be
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_asynchronous_unwind_tables
	.uleb128 0x42
	.long	.LASF1583
	.byte	0x1
	.value	0x2c3
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_no_common
	.uleb128 0x42
	.long	.LASF1584
	.byte	0x1
	.value	0x2f1
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_inhibit_size_directive
	.uleb128 0x42
	.long	.LASF1585
	.byte	0x1
	.value	0x22f
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_function_sections
	.uleb128 0x42
	.long	.LASF1586
	.byte	0x1
	.value	0x233
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_data_sections
	.uleb128 0x42
	.long	.LASF1587
	.byte	0x1
	.value	0x2fa
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_verbose_asm
	.uleb128 0x42
	.long	.LASF1588
	.byte	0x1
	.value	0x303
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_debug_asm
	.uleb128 0x42
	.long	.LASF1589
	.byte	0x1
	.value	0x307
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_dump_rtl_in_asm
	.uleb128 0x42
	.long	.LASF1590
	.byte	0x1
	.value	0x30f
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_gnu_linker
	.uleb128 0x42
	.long	.LASF1591
	.byte	0x1
	.value	0x31e
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_pack_struct
	.uleb128 0x42
	.long	.LASF1592
	.byte	0x1
	.value	0x333
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_argument_noalias
	.uleb128 0x42
	.long	.LASF1593
	.byte	0x1
	.value	0x339
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_strict_aliasing
	.uleb128 0x42
	.long	.LASF1594
	.byte	0x1
	.value	0x322
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_stack_check
	.uleb128 0x42
	.long	.LASF1595
	.byte	0x1
	.value	0x21a
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_regmove
	.uleb128 0x42
	.long	.LASF1596
	.byte	0x1
	.value	0x33c
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_instrument_function_entry_exit
	.uleb128 0x42
	.long	.LASF1597
	.byte	0x1
	.value	0x345
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_peephole2
	.uleb128 0x42
	.long	.LASF1598
	.byte	0x1
	.value	0x348
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_guess_branch_prob
	.uleb128 0x42
	.long	.LASF1599
	.byte	0x1
	.value	0x34f
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_bounded_pointers
	.uleb128 0x42
	.long	.LASF1600
	.byte	0x1
	.value	0x357
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_bounds_check
	.uleb128 0x42
	.long	.LASF1601
	.byte	0x1
	.value	0x35c
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_merge_constants
	.uleb128 0x42
	.long	.LASF1602
	.byte	0x1
	.value	0x361
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_renumber_insns
	.uleb128 0x42
	.long	.LASF1603
	.byte	0x1
	.value	0x3a5
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_trapv
	.uleb128 0x42
	.long	.LASF1604
	.byte	0x1
	.value	0x135
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	g_switch_value
	.uleb128 0x42
	.long	.LASF1605
	.byte	0x1
	.value	0x136
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	g_switch_set
	.uleb128 0x42
	.long	.LASF1606
	.byte	0x1
	.value	0x368
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	align_loops
	.uleb128 0x42
	.long	.LASF1607
	.byte	0x1
	.value	0x369
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	align_loops_log
	.uleb128 0x42
	.long	.LASF1608
	.byte	0x1
	.value	0x36a
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	align_loops_max_skip
	.uleb128 0x42
	.long	.LASF1609
	.byte	0x1
	.value	0x36b
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	align_jumps
	.uleb128 0x42
	.long	.LASF1610
	.byte	0x1
	.value	0x36c
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	align_jumps_log
	.uleb128 0x42
	.long	.LASF1611
	.byte	0x1
	.value	0x36d
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	align_jumps_max_skip
	.uleb128 0x42
	.long	.LASF1612
	.byte	0x1
	.value	0x36e
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	align_labels
	.uleb128 0x42
	.long	.LASF1613
	.byte	0x1
	.value	0x36f
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	align_labels_log
	.uleb128 0x42
	.long	.LASF1614
	.byte	0x1
	.value	0x370
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	align_labels_max_skip
	.uleb128 0x42
	.long	.LASF1615
	.byte	0x1
	.value	0x371
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	align_functions
	.uleb128 0x42
	.long	.LASF1616
	.byte	0x1
	.value	0x372
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	align_functions_log
	.uleb128 0x42
	.long	.LASF1617
	.byte	0x1
	.value	0x12e
	.long	0x2ada
	.uleb128 0x9
	.byte	0x3
	.quad	graph_dump_format
	.uleb128 0x42
	.long	.LASF1618
	.byte	0x1
	.value	0x342
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_no_ident
	.uleb128 0x42
	.long	.LASF1619
	.byte	0x1
	.value	0x272
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_gcse_lm
	.uleb128 0x42
	.long	.LASF1620
	.byte	0x1
	.value	0x278
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_gcse_sm
	.uleb128 0x42
	.long	.LASF1621
	.byte	0x1
	.value	0x17b
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_eliminate_dwarf2_dups
	.uleb128 0x42
	.long	.LASF1622
	.byte	0x1
	.value	0x1af
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_detailed_statistics
	.uleb128 0x40
	.long	.LASF1623
	.byte	0x17
	.value	0x282
	.long	0x1e3
	.uleb128 0x42
	.long	.LASF1624
	.byte	0x1
	.value	0x603
	.long	0x343f
	.uleb128 0x9
	.byte	0x3
	.quad	asm_out_file
	.uleb128 0x40
	.long	.LASF1625
	.byte	0x22
	.value	0x1b5
	.long	0x1e3
	.uleb128 0x40
	.long	.LASF1626
	.byte	0x22
	.value	0x1ba
	.long	0x1e3
	.uleb128 0x42
	.long	.LASF1627
	.byte	0x1
	.value	0x605
	.long	0x343f
	.uleb128 0x9
	.byte	0x3
	.quad	rtl_dump_file
	.uleb128 0x42
	.long	.LASF1628
	.byte	0x1
	.value	0x3ab
	.long	0x5f4
	.uleb128 0x9
	.byte	0x3
	.quad	user_label_prefix
	.uleb128 0x40
	.long	.LASF1629
	.byte	0x14
	.value	0x1e4
	.long	0x1c97
	.uleb128 0x41
	.long	.LASF1630
	.byte	0x1
	.byte	0x8a
	.long	0x5f4
	.uleb128 0x9
	.byte	0x3
	.quad	progname
	.uleb128 0x41
	.long	.LASF1631
	.byte	0x1
	.byte	0xab
	.long	0x5f4
	.uleb128 0x9
	.byte	0x3
	.quad	dump_base_name
	.uleb128 0x42
	.long	.LASF1632
	.byte	0x1
	.value	0x172
	.long	0x3f52
	.uleb128 0x9
	.byte	0x3
	.quad	lang_expand_expr
	.uleb128 0x3f
	.long	.LASF1633
	.byte	0x16
	.byte	0xe4
	.long	0x1e3
	.uleb128 0x3f
	.long	.LASF1634
	.byte	0x16
	.byte	0xe8
	.long	0x1e3
	.uleb128 0x3f
	.long	.LASF1635
	.byte	0x23
	.byte	0x2a
	.long	0x1e3
	.uleb128 0x3f
	.long	.LASF1636
	.byte	0x1c
	.byte	0xf4
	.long	0x3318
	.uleb128 0x3f
	.long	.LASF1637
	.byte	0x1d
	.byte	0x3a
	.long	0x6575
	.uleb128 0x3
	.byte	0x8
	.long	0x3486
	.uleb128 0x3f
	.long	.LASF1638
	.byte	0x24
	.byte	0xa8
	.long	0x2a1c
	.uleb128 0x41
	.long	.LASF1639
	.byte	0x1
	.byte	0xba
	.long	0x659b
	.uleb128 0x9
	.byte	0x3
	.quad	debug_hooks
	.uleb128 0x3
	.byte	0x8
	.long	0x34c8
	.uleb128 0x3f
	.long	.LASF1640
	.byte	0x1e
	.byte	0x7f
	.long	0x34c8
	.uleb128 0x3f
	.long	.LASF1641
	.byte	0x1e
	.byte	0x80
	.long	0x34c8
	.uleb128 0x3f
	.long	.LASF1642
	.byte	0x1e
	.byte	0x84
	.long	0x34c8
	.uleb128 0x3f
	.long	.LASF1643
	.byte	0x1f
	.byte	0xc1
	.long	0x3910
	.uleb128 0x3f
	.long	.LASF1267
	.byte	0x20
	.byte	0xa8
	.long	0x65d8
	.uleb128 0xc
	.long	0x3ca7
	.uleb128 0x3f
	.long	.LASF1644
	.byte	0x1
	.byte	0x62
	.long	0x1e3
	.uleb128 0x3f
	.long	.LASF1645
	.byte	0x1
	.byte	0x63
	.long	0x123
	.uleb128 0x41
	.long	.LASF1646
	.byte	0x1
	.byte	0x8d
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	save_argc
	.uleb128 0x41
	.long	.LASF1647
	.byte	0x1
	.byte	0x8e
	.long	0x3dc5
	.uleb128 0x9
	.byte	0x3
	.quad	save_argv
	.uleb128 0x42
	.long	.LASF1648
	.byte	0x1
	.value	0x12a
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	rtl_dump_and_exit
	.uleb128 0x42
	.long	.LASF1649
	.byte	0x1
	.value	0x132
	.long	0x3e1
	.uleb128 0x9
	.byte	0x3
	.quad	asm_file_name
	.uleb128 0x42
	.long	.LASF1650
	.byte	0x1
	.value	0x194
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_cprop_registers
	.uleb128 0x42
	.long	.LASF1651
	.byte	0x1
	.value	0x1f7
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_thread_jumps
	.uleb128 0x42
	.long	.LASF1652
	.byte	0x1
	.value	0x29a
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_keep_static_consts
	.uleb128 0x42
	.long	.LASF1653
	.byte	0x1
	.value	0x313
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_ssa
	.uleb128 0x42
	.long	.LASF1654
	.byte	0x1
	.value	0x316
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_ssa_ccp
	.uleb128 0x42
	.long	.LASF1655
	.byte	0x1
	.value	0x31b
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_ssa_dce
	.uleb128 0x42
	.long	.LASF1656
	.byte	0x1
	.value	0x3a8
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_leading_underscore
	.uleb128 0x42
	.long	.LASF1657
	.byte	0x1
	.value	0x565
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warnings_are_errors
	.uleb128 0x42
	.long	.LASF1658
	.byte	0x1
	.value	0x604
	.long	0x343f
	.uleb128 0x9
	.byte	0x3
	.quad	aux_info_file
	.uleb128 0x42
	.long	.LASF1659
	.byte	0x1
	.value	0x668
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	float_handled
	.uleb128 0x42
	.long	.LASF1660
	.byte	0x1
	.value	0x669
	.long	0x728
	.uleb128 0x9
	.byte	0x3
	.quad	float_handler
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x13
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2f
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
	.uleb128 0x34
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
	.uleb128 0x38
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
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
.LASF141:
	.string	"long long int"
.LASF735:
	.string	"TI_V16SF_TYPE"
.LASF618:
	.string	"original_arg_vector"
.LASF154:
	.string	"VOIDmode"
.LASF151:
	.string	"line"
.LASF410:
	.string	"BUILT_IN_STRCSPN"
.LASF896:
	.string	"SS_MINUS"
.LASF1170:
	.string	"emitted_prefix_p"
.LASF937:
	.string	"cond_local_set"
.LASF1592:
	.string	"flag_argument_noalias"
.LASF1290:
	.string	"enabled"
.LASF673:
	.string	"malloc_flag"
.LASF311:
	.string	"RROTATE_EXPR"
.LASF1395:
	.string	"undoc"
.LASF885:
	.string	"RANGE_REG"
.LASF227:
	.string	"IDENTIFIER_NODE"
.LASF1082:
	.string	"exit_labels"
.LASF1216:
	.string	"integer"
.LASF505:
	.string	"real"
.LASF109:
	.string	"__pad1"
.LASF110:
	.string	"__pad2"
.LASF111:
	.string	"__pad3"
.LASF112:
	.string	"__pad4"
.LASF113:
	.string	"__pad5"
.LASF480:
	.string	"unused_0"
.LASF496:
	.string	"unused_1"
.LASF1303:
	.string	"DFI_gcse"
.LASF77:
	.string	"long unsigned int"
.LASF1456:
	.string	"ix86_asm_string"
.LASF1399:
	.string	"decode_d_option"
.LASF1518:
	.string	"warn_padded"
.LASF316:
	.string	"BIT_NOT_EXPR"
.LASF509:
	.string	"_obstack_chunk"
.LASF924:
	.string	"rtmem"
.LASF401:
	.string	"BUILT_IN_STRNCAT"
.LASF737:
	.string	"TI_V8HI_TYPE"
.LASF1133:
	.string	"TV_FROM_SSA"
.LASF518:
	.string	"chunk_limit"
.LASF841:
	.string	"COND"
.LASF842:
	.string	"COMPARE"
.LASF1565:
	.string	"flag_gen_aux_info"
.LASF57:
	.string	"regno"
.LASF922:
	.string	"rtbit"
.LASF207:
	.string	"CCGCmode"
.LASF312:
	.string	"BIT_IOR_EXPR"
.LASF906:
	.string	"max_after_base"
.LASF1103:
	.string	"TV_VARCONST"
.LASF1081:
	.string	"sink"
.LASF350:
	.string	"FDESC_EXPR"
.LASF1559:
	.string	"flag_rerun_loop_opt"
.LASF1429:
	.string	"lang_processed"
.LASF293:
	.string	"CEIL_MOD_EXPR"
.LASF699:
	.string	"TI_UINTQI_TYPE"
.LASF661:
	.string	"ignored_flag"
.LASF1578:
	.string	"flag_pedantic_errors"
.LASF1350:
	.string	"set_float_handler"
.LASF895:
	.string	"US_PLUS"
.LASF798:
	.string	"SEQUENCE"
.LASF1165:
	.string	"printer_fn"
.LASF684:
	.string	"section_name"
.LASF814:
	.string	"ASM_INPUT"
.LASF643:
	.string	"limit_stack"
.LASF1034:
	.string	"EXPAND_NORMAL"
.LASF1601:
	.string	"flag_merge_constants"
.LASF318:
	.string	"TRUTH_ORIF_EXPR"
.LASF836:
	.string	"LABEL_REF"
.LASF1014:
	.string	"regno_pointer_align_length"
.LASF1300:
	.string	"DFI_ussa"
.LASF134:
	.string	"_sch_isidnum"
.LASF332:
	.string	"UNLE_EXPR"
.LASF1603:
	.string	"flag_trapv"
.LASF1219:
	.string	"function_begin_epilogue"
.LASF177:
	.string	"XCmode"
.LASF582:
	.string	"pretend_args_size"
.LASF305:
	.string	"MAX_EXPR"
.LASF1085:
	.string	"rc_order"
.LASF1398:
	.string	"displayed"
.LASF25:
	.string	"list"
.LASF432:
	.string	"BUILT_IN_RETURN"
.LASF408:
	.string	"BUILT_IN_STRPBRK"
.LASF734:
	.string	"TI_V4SF_TYPE"
.LASF1653:
	.string	"flag_ssa"
.LASF1489:
	.string	"no_new_pseudos"
.LASF1065:
	.string	"num_nodes"
.LASF529:
	.string	"tree_list"
.LASF149:
	.string	"name"
.LASF346:
	.string	"RTL_EXPR"
.LASF575:
	.string	"stmt"
.LASF216:
	.string	"MODE_INT"
.LASF174:
	.string	"HCmode"
.LASF1503:
	.string	"warn_unused_parameter"
.LASF1525:
	.string	"flag_reorder_blocks"
.LASF364:
	.string	"GOTO_EXPR"
.LASF1348:
	.string	"signo"
.LASF1481:
	.string	"decl_printable_name"
.LASF294:
	.string	"FLOOR_MOD_EXPR"
.LASF1260:
	.string	"anon_aggr_type_p"
.LASF1161:
	.string	"DIAGNOSTICS_SHOW_PREFIX_ONCE"
.LASF201:
	.string	"V4DFmode"
.LASF413:
	.string	"BUILT_IN_SQRT"
.LASF681:
	.string	"result"
.LASF285:
	.string	"PLUS_EXPR"
.LASF1497:
	.string	"mem_report"
.LASF708:
	.string	"TI_SIZE_ZERO"
.LASF997:
	.string	"graph_dump_types"
.LASF1231:
	.string	"md_init"
.LASF766:
	.string	"size_type_kind"
.LASF830:
	.string	"CONST"
.LASF1445:
	.string	"lang_independent_params"
.LASF209:
	.string	"CCNOmode"
.LASF943:
	.string	"frequency"
.LASF982:
	.string	"GR_MAX"
.LASF50:
	.string	"INT_SSE_REGS"
.LASF953:
	.string	"NOTE_INSN_LOOP_CONT"
.LASF240:
	.string	"OFFSET_TYPE"
.LASF878:
	.string	"UNSIGNED_FIX"
.LASF1322:
	.string	"DFI_bbro"
.LASF791:
	.string	"DEFINE_PEEPHOLE2"
.LASF324:
	.string	"LE_EXPR"
.LASF1349:
	.string	"float_signal"
.LASF802:
	.string	"SET_ATTR"
.LASF1217:
	.string	"function_prologue"
.LASF966:
	.string	"NOTE_INSN_LIVE"
.LASF578:
	.string	"varasm"
.LASF1358:
	.string	"input_name"
.LASF1467:
	.string	"ix86_branch_cost_string"
.LASF1478:
	.string	"global_trees"
.LASF513:
	.string	"obstack"
.LASF1163:
	.string	"DIAGNOSTICS_SHOW_PREFIX_EVERY_LINE"
.LASF147:
	.string	"jmp_buf"
.LASF497:
	.string	"high"
.LASF68:
	.string	"__va_list_tag"
.LASF1143:
	.string	"format_decoder"
.LASF259:
	.string	"TYPE_DECL"
.LASF128:
	.string	"_sch_isxdigit"
.LASF442:
	.string	"BUILT_IN_FWRITE"
.LASF1596:
	.string	"flag_instrument_function_entry_exit"
.LASF663:
	.string	"common_flag"
.LASF595:
	.string	"x_cleanup_label"
.LASF249:
	.string	"FUNCTION_TYPE"
.LASF1028:
	.string	"varasm_status"
.LASF372:
	.string	"EXC_PTR_EXPR"
.LASF322:
	.string	"TRUTH_NOT_EXPR"
.LASF1380:
	.string	"toplev"
.LASF1651:
	.string	"flag_thread_jumps"
.LASF229:
	.string	"TREE_VEC"
.LASF44:
	.string	"SSE_REGS"
.LASF1271:
	.string	"post_options"
.LASF1568:
	.string	"flag_schedule_insns_after_reload"
.LASF489:
	.string	"lang_flag_0"
.LASF490:
	.string	"lang_flag_1"
.LASF491:
	.string	"lang_flag_2"
.LASF492:
	.string	"lang_flag_3"
.LASF493:
	.string	"lang_flag_4"
.LASF494:
	.string	"lang_flag_5"
.LASF495:
	.string	"lang_flag_6"
.LASF679:
	.string	"lang_flag_7"
.LASF1367:
	.string	"reconsider"
.LASF1150:
	.string	"begin_diagnostic"
.LASF1422:
	.string	"print_switch_values"
.LASF1084:
	.string	"dfs_order"
.LASF1208:
	.string	"label"
.LASF1254:
	.string	"cannot_inline_tree_fn"
.LASF184:
	.string	"COImode"
.LASF743:
	.string	"TI_MAIN_IDENTIFIER"
.LASF1324:
	.string	"DFI_dbr"
.LASF503:
	.string	"pointer"
.LASF152:
	.string	"indent_level"
.LASF215:
	.string	"MODE_RANDOM"
.LASF559:
	.string	"pointer_depth"
.LASF1356:
	.string	"asm_file"
.LASF1614:
	.string	"align_labels_max_skip"
.LASF662:
	.string	"in_system_header_flag"
.LASF1362:
	.string	"open_arg"
.LASF275:
	.string	"INIT_EXPR"
.LASF1529:
	.string	"flag_print_asm_name"
.LASF596:
	.string	"x_return_label"
.LASF155:
	.string	"BImode"
.LASF630:
	.string	"returns_pointer"
.LASF1447:
	.string	"documented_lang_options"
.LASF880:
	.string	"SIGN_EXTRACT"
.LASF1098:
	.string	"TV_LIFE_UPDATE"
.LASF752:
	.string	"itk_unsigned_int"
.LASF345:
	.string	"UNSAVE_EXPR"
.LASF669:
	.string	"weak_flag"
.LASF1623:
	.string	"flag_non_call_exceptions"
.LASF66:
	.string	"ASM_INTEL"
.LASF827:
	.string	"CONST_DOUBLE"
.LASF1635:
	.string	"max_regno"
.LASF1419:
	.string	"indent"
.LASF1140:
	.string	"stream"
.LASF306:
	.string	"ABS_EXPR"
.LASF357:
	.string	"POSTDECREMENT_EXPR"
.LASF62:
	.string	"CUMULATIVE_ARGS"
.LASF776:
	.string	"INCLUDE"
.LASF1053:
	.string	"dest"
.LASF823:
	.string	"RETURN"
.LASF218:
	.string	"MODE_PARTIAL_INT"
.LASF1388:
	.string	"saved_optimize"
.LASF1451:
	.string	"float_handler_set"
.LASF1256:
	.string	"add_pending_fn_decls"
.LASF438:
	.string	"BUILT_IN_PUTS"
.LASF1121:
	.string	"TV_IFCVT2"
.LASF837:
	.string	"SYMBOL_REF"
.LASF1318:
	.string	"DFI_rnreg"
.LASF460:
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
.LASF730:
	.string	"TI_UV4HI_TYPE"
.LASF1361:
	.string	"dump_name"
.LASF1025:
	.string	"x_pending_chain"
.LASF1498:
	.string	"inhibit_warnings"
.LASF742:
	.string	"TI_V16QI_TYPE"
.LASF268:
	.string	"BUFFER_REF"
.LASF47:
	.string	"FP_SECOND_SSE_REGS"
.LASF605:
	.string	"x_context_display"
.LASF317:
	.string	"TRUTH_ANDIF_EXPR"
.LASF705:
	.string	"TI_INTEGER_ONE"
.LASF409:
	.string	"BUILT_IN_STRSPN"
.LASF579:
	.string	"outer"
.LASF971:
	.string	"GR_PC"
.LASF1372:
	.string	"pop_srcloc"
.LASF1580:
	.string	"flag_exceptions"
.LASF393:
	.string	"BUILT_IN_BCMP"
.LASF1471:
	.string	"input_filename"
.LASF1017:
	.string	"x_regno_reg_rtx"
.LASF549:
	.string	"size"
.LASF377:
	.string	"BUILT_IN_LABS"
.LASF577:
	.string	"emit"
.LASF1493:
	.string	"optimize"
.LASF336:
	.string	"IN_EXPR"
.LASF1417:
	.string	"valid_target_option"
.LASF362:
	.string	"GOTO_SUBROUTINE_EXPR"
.LASF1292:
	.string	"dump_file_index"
.LASF927:
	.string	"first"
.LASF1166:
	.string	"prefix"
.LASF828:
	.string	"CONST_VECTOR"
.LASF307:
	.string	"FFS_EXPR"
.LASF484:
	.string	"public_flag"
.LASF781:
	.string	"MATCH_DUP"
.LASF764:
	.string	"handler"
.LASF463:
	.string	"BUILT_IN_EH_RETURN"
.LASF952:
	.string	"NOTE_INSN_LOOP_END"
.LASF3:
	.string	"call"
.LASF222:
	.string	"MODE_VECTOR_INT"
.LASF984:
	.string	"NO_DEBUG"
.LASF1630:
	.string	"progname"
.LASF2:
	.string	"jump"
.LASF1366:
	.string	"wrapup_global_declarations"
.LASF722:
	.string	"TI_CONST_PTR_TYPE"
.LASF315:
	.string	"BIT_ANDTC_EXPR"
.LASF115:
	.string	"_unused2"
.LASF514:
	.string	"chunk_size"
.LASF983:
	.string	"debug_info_type"
.LASF1176:
	.string	"output_state"
.LASF76:
	.string	"size_t"
.LASF403:
	.string	"BUILT_IN_STRNCPY"
.LASF1032:
	.string	"language_function"
.LASF702:
	.string	"TI_UINTDI_TYPE"
.LASF313:
	.string	"BIT_XOR_EXPR"
.LASF469:
	.string	"BUILT_IN_EXPECT"
.LASF912:
	.string	"mem_attrs"
.LASF881:
	.string	"ZERO_EXTRACT"
.LASF264:
	.string	"NAMESPACE_DECL"
.LASF333:
	.string	"UNGT_EXPR"
.LASF1104:
	.string	"TV_INTEGRATION"
.LASF1393:
	.string	"fnname"
.LASF1460:
	.string	"ix86_arch_string"
.LASF1127:
	.string	"TV_REORDER_BLOCKS"
.LASF1255:
	.string	"disregard_inline_limits"
.LASF161:
	.string	"OImode"
.LASF557:
	.string	"packed_flag"
.LASF1232:
	.string	"md_finish"
.LASF407:
	.string	"BUILT_IN_STRSTR"
.LASF1023:
	.string	"x_apply_args_value"
.LASF29:
	.string	"AREG"
.LASF280:
	.string	"METHOD_CALL_EXPR"
.LASF632:
	.string	"calls_setjmp"
.LASF591:
	.string	"x_nonlocal_labels"
.LASF770:
	.string	"BITSIZETYPE"
.LASF1476:
	.string	"version_string"
.LASF1010:
	.string	"x_last_insn"
.LASF114:
	.string	"_mode"
.LASF693:
	.string	"TI_ERROR_MARK"
.LASF1225:
	.string	"destructor"
.LASF1211:
	.string	"open_paren"
.LASF682:
	.string	"initial"
.LASF1044:
	.string	"n_bits"
.LASF49:
	.string	"FLOAT_INT_REGS"
.LASF1141:
	.string	"line_length"
.LASF1194:
	.string	"end_source_file"
.LASF1477:
	.string	"tree_code_length"
.LASF1475:
	.string	"input_file_stack_tick"
.LASF1643:
	.string	"targetm"
.LASF629:
	.string	"returns_pcc_struct"
.LASF426:
	.string	"BUILT_IN_CONSTANT_P"
.LASF698:
	.string	"TI_INTTI_TYPE"
.LASF230:
	.string	"BLOCK"
.LASF1182:
	.string	"PARAM_MAX_DELAY_SLOT_INSN_SEARCH"
.LASF1240:
	.string	"comp_type_attributes"
.LASF1245:
	.string	"init_builtins"
.LASF228:
	.string	"TREE_LIST"
.LASF470:
	.string	"END_BUILTINS"
.LASF325:
	.string	"GT_EXPR"
.LASF886:
	.string	"RANGE_VAR"
.LASF774:
	.string	"rtx_code"
.LASF295:
	.string	"ROUND_MOD_EXPR"
.LASF252:
	.string	"REAL_CST"
.LASF968:
	.string	"NOTE_INSN_EXPECTED_VALUE"
.LASF382:
	.string	"BUILT_IN_IMAXABS"
.LASF1618:
	.string	"flag_no_ident"
.LASF1183:
	.string	"PARAM_MAX_DELAY_SLOT_LIVE_SEARCH"
.LASF221:
	.string	"MODE_COMPLEX_FLOAT"
.LASF870:
	.string	"LTGT"
.LASF571:
	.string	"alias_set"
.LASF1056:
	.string	"edge"
.LASF1229:
	.string	"issue_rate"
.LASF727:
	.string	"TI_UV4SI_TYPE"
.LASF261:
	.string	"PARM_DECL"
.LASF640:
	.string	"is_thunk"
.LASF1616:
	.string	"align_functions_log"
.LASF544:
	.string	"fragment_origin"
.LASF355:
	.string	"PREDECREMENT_EXPR"
.LASF196:
	.string	"V8DImode"
.LASF1273:
	.string	"get_alias_set"
.LASF1500:
	.string	"extra_warnings"
.LASF288:
	.string	"TRUNC_DIV_EXPR"
.LASF1193:
	.string	"start_source_file"
.LASF1469:
	.string	"stderr"
.LASF590:
	.string	"x_function_call_count"
.LASF435:
	.string	"BUILT_IN_TRAP"
.LASF1159:
	.string	"DK_NOTE"
.LASF1605:
	.string	"g_switch_set"
.LASF1195:
	.string	"begin_block"
.LASF932:
	.string	"head_tree"
.LASF129:
	.string	"_sch_isidst"
.LASF1296:
	.string	"DFI_jump"
.LASF46:
	.string	"FP_TOP_SSE_REGS"
.LASF1535:
	.string	"flag_force_addr"
.LASF1334:
	.string	"set_fast_math_flags"
.LASF753:
	.string	"itk_long"
.LASF360:
	.string	"TRY_CATCH_EXPR"
.LASF258:
	.string	"CONST_DECL"
.LASF354:
	.string	"IMAGPART_EXPR"
.LASF148:
	.string	"file_stack"
.LASF1074:
	.string	"shared"
.LASF125:
	.string	"_sch_ispunct"
.LASF406:
	.string	"BUILT_IN_STRLEN"
.LASF833:
	.string	"SUBREG"
.LASF1212:
	.string	"close_paren"
.LASF40:
	.string	"GENERAL_REGS"
.LASF191:
	.string	"V4SImode"
.LASF321:
	.string	"TRUTH_XOR_EXPR"
.LASF226:
	.string	"ERROR_MARK"
.LASF415:
	.string	"BUILT_IN_COS"
.LASF1230:
	.string	"variable_issue"
.LASF1549:
	.string	"flag_omit_frame_pointer"
.LASF458:
	.string	"BUILT_IN_DWARF_CFA"
.LASF105:
	.string	"_vtable_offset"
.LASF838:
	.string	"ADDRESSOF"
.LASF894:
	.string	"SS_PLUS"
.LASF473:
	.string	"side_effects_flag"
.LASF1289:
	.string	"graph_dump_p"
.LASF1325:
	.string	"DFI_MAX"
.LASF1116:
	.string	"TV_SCHED"
.LASF1564:
	.string	"flag_syntax_only"
.LASF1206:
	.string	"deferred_inline_function"
.LASF366:
	.string	"EXIT_EXPR"
.LASF576:
	.string	"expr"
.LASF1184:
	.string	"PARAM_MAX_PENDING_LIST_LENGTH"
.LASF1638:
	.string	"reg_equiv_memory_loc"
.LASF123:
	.string	"_sch_islower"
.LASF728:
	.string	"TI_UV8HI_TYPE"
.LASF1031:
	.string	"machine_function"
.LASF749:
	.string	"itk_short"
.LASF569:
	.string	"binfo"
.LASF1075:
	.string	"invalid"
.LASF61:
	.string	"maybe_vaarg"
.LASF241:
	.string	"REFERENCE_TYPE"
.LASF956:
	.string	"NOTE_INSN_FUNCTION_END"
.LASF551:
	.string	"attributes"
.LASF1100:
	.string	"TV_LEX"
.LASF858:
	.string	"PRE_INC"
.LASF1413:
	.string	"equal"
.LASF1076:
	.string	"vtop"
.LASF1199:
	.string	"begin_prologue"
.LASF164:
	.string	"PSImode"
.LASF1661:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF1009:
	.string	"x_first_insn"
.LASF1186:
	.string	"PARAM_MAX_GCSE_PASSES"
.LASF861:
	.string	"PRE_MODIFY"
.LASF1113:
	.string	"TV_IFCVT"
.LASF199:
	.string	"V2DFmode"
.LASF1416:
	.string	"set_target_switch"
.LASF1514:
	.string	"warn_larger_than"
.LASF1246:
	.string	"expand_builtin"
.LASF1078:
	.string	"cont_dominator"
.LASF193:
	.string	"V8QImode"
.LASF400:
	.string	"BUILT_IN_STRCAT"
.LASF451:
	.string	"BUILT_IN_ISGREATER"
.LASF510:
	.string	"limit"
.LASF1536:
	.string	"flag_defer_pop"
.LASF1173:
	.string	"cursor"
.LASF1484:
	.string	"rtx_equal_function_value_matters"
.LASF654:
	.string	"linenum"
.LASF1454:
	.string	"ix86_debug_arg_string"
.LASF304:
	.string	"MIN_EXPR"
.LASF1648:
	.string	"rtl_dump_and_exit"
.LASF871:
	.string	"SIGN_EXTEND"
.LASF1192:
	.string	"undef"
.LASF900:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF1551:
	.string	"flag_volatile"
.LASF395:
	.string	"BUILT_IN_INDEX"
.LASF234:
	.string	"COMPLEX_TYPE"
.LASF1191:
	.string	"define"
.LASF686:
	.string	"saved_tree"
.LASF726:
	.string	"TI_UV4SF_TYPE"
.LASF197:
	.string	"V16QImode"
.LASF1144:
	.string	"diagnostic_context"
.LASF16:
	.string	"common"
.LASF1122:
	.string	"TV_PEEPHOLE2"
.LASF145:
	.string	"__mask_was_saved"
.LASF1321:
	.string	"DFI_stack"
.LASF1284:
	.string	"tree_inlining"
.LASF1379:
	.string	"rest_of_type_compilation"
.LASF887:
	.string	"RANGE_LIVE"
.LASF282:
	.string	"CLEANUP_POINT_EXPR"
.LASF1147:
	.string	"args_ptr"
.LASF1175:
	.string	"diagnostic_count"
.LASF87:
	.string	"_flags"
.LASF1291:
	.string	"initialized"
.LASF807:
	.string	"JUMP_INSN"
.LASF821:
	.string	"CLOBBER"
.LASF528:
	.string	"tree_identifier"
.LASF696:
	.string	"TI_INTSI_TYPE"
.LASF1624:
	.string	"asm_out_file"
.LASF970:
	.string	"global_rtl_index"
.LASF1632:
	.string	"lang_expand_expr"
.LASF1575:
	.string	"flag_delayed_branch"
.LASF691:
	.string	"lang_decl"
.LASF1072:
	.string	"level"
.LASF572:
	.string	"lang_specific"
.LASF172:
	.string	"TFmode"
.LASF399:
	.string	"BUILT_IN_MEMSET"
.LASF1586:
	.string	"flag_data_sections"
.LASF97:
	.string	"_IO_backup_base"
.LASF143:
	.string	"__jmp_buf_tag"
.LASF53:
	.string	"LIM_REG_CLASSES"
.LASF1443:
	.string	"aux_info_file_name"
.LASF785:
	.string	"MATCH_PAR_DUP"
.LASF504:
	.string	"tree_complex"
.LASF170:
	.string	"DFmode"
.LASF939:
	.string	"global_live_at_end"
.LASF5:
	.string	"volatil"
.LASF1005:
	.string	"sequence_rtl_expr"
.LASF1033:
	.string	"expand_modifier"
.LASF431:
	.string	"BUILT_IN_APPLY"
.LASF223:
	.string	"MODE_VECTOR_FLOAT"
.LASF1060:
	.string	"latch"
.LASF1364:
	.string	"func"
.LASF1128:
	.string	"TV_SHORTEN_BRANCH"
.LASF1425:
	.string	"general_init"
.LASF1201:
	.string	"end_epilogue"
.LASF1604:
	.string	"g_switch_value"
.LASF882:
	.string	"HIGH"
.LASF638:
	.string	"contains_functions"
.LASF1279:
	.string	"print_xnode"
.LASF320:
	.string	"TRUTH_OR_EXPR"
.LASF1244:
	.string	"ms_bitfield_layout_p"
.LASF475:
	.string	"addressable_flag"
.LASF246:
	.string	"RECORD_TYPE"
.LASF536:
	.string	"tree_block"
.LASF622:
	.string	"profile_label_no"
.LASF1048:
	.string	"regset"
.LASF1508:
	.string	"warn_uninitialized"
.LASF1328:
	.string	"use_extensions_p"
.LASF986:
	.string	"SDB_DEBUG"
.LASF89:
	.string	"_IO_read_end"
.LASF1589:
	.string	"flag_dump_rtl_in_asm"
.LASF921:
	.string	"rt_cselib"
.LASF456:
	.string	"BUILT_IN_ISUNORDERED"
.LASF455:
	.string	"BUILT_IN_ISLESSGREATER"
.LASF553:
	.string	"string_flag"
.LASF671:
	.string	"no_instrument_function_entry_exit"
.LASF19:
	.string	"vector"
.LASF759:
	.string	"min_length"
.LASF787:
	.string	"DEFINE_INSN"
.LASF33:
	.string	"SIREG"
.LASF1392:
	.string	"rebuild_jump_labels_after_combine"
.LASF411:
	.string	"BUILT_IN_STRCHR"
.LASF96:
	.string	"_IO_save_base"
.LASF901:
	.string	"min_align"
.LASF1258:
	.string	"auto_var_in_fn_p"
.LASF1519:
	.string	"warn_disabled_optimization"
.LASF1003:
	.string	"sequence_stack"
.LASF1617:
	.string	"graph_dump_format"
.LASF433:
	.string	"BUILT_IN_SETJMP"
.LASF1309:
	.string	"DFI_combine"
.LASF740:
	.string	"TI_V2SI_TYPE"
.LASF1336:
	.string	"setting"
.LASF1095:
	.string	"TV_CFG"
.LASF1428:
	.string	"optimize_val"
.LASF1600:
	.string	"flag_bounds_check"
.LASF1052:
	.string	"succ_next"
.LASF1645:
	.string	"last_assemble_variable_decl"
.LASF905:
	.string	"min_after_base"
.LASF786:
	.string	"MATCH_INSN"
.LASF1323:
	.string	"DFI_mach"
.LASF93:
	.string	"_IO_write_end"
.LASF1094:
	.string	"TV_DUMP"
.LASF653:
	.string	"filename"
.LASF1058:
	.string	"loop"
.LASF38:
	.string	"INDEX_REGS"
.LASF844:
	.string	"MINUS"
.LASF1543:
	.string	"flag_reduce_all_givs"
.LASF1264:
	.string	"lang_hooks_for_tree_dump"
.LASF574:
	.string	"function"
.LASF919:
	.string	"rttype"
.LASF1015:
	.string	"regno_pointer_align"
.LASF1435:
	.string	"do_compile"
.LASF1365:
	.string	"suffix"
.LASF930:
	.string	"basic_block_def"
.LASF542:
	.string	"supercontext"
.LASF670:
	.string	"non_addr_const_p"
.LASF368:
	.string	"LABELED_BLOCK_EXPR"
.LASF863:
	.string	"UNORDERED"
.LASF30:
	.string	"DREG"
.LASF94:
	.string	"_IO_buf_base"
.LASF1548:
	.string	"flag_no_function_cse"
.LASF338:
	.string	"CARD_EXPR"
.LASF1550:
	.string	"flag_no_peephole"
.LASF1532:
	.string	"flag_caller_saves"
.LASF1119:
	.string	"TV_RELOAD_CSE_REGS"
.LASF1340:
	.string	"set_Wunused"
.LASF108:
	.string	"_offset"
.LASF1280:
	.string	"print_decl"
.LASF1359:
	.string	"decl_name"
.LASF1022:
	.string	"x_saveregs_value"
.LASF270:
	.string	"ARRAY_RANGE_REF"
.LASF217:
	.string	"MODE_FLOAT"
.LASF676:
	.string	"pure_flag"
.LASF555:
	.string	"needs_constructing_flag"
.LASF1314:
	.string	"DFI_greg"
.LASF623:
	.string	"machine"
.LASF1597:
	.string	"flag_peephole2"
.LASF166:
	.string	"QFmode"
.LASF1168:
	.string	"ideal_maximum_length"
.LASF273:
	.string	"COMPOUND_EXPR"
.LASF54:
	.string	"ix86_args"
.LASF854:
	.string	"SMAX"
.LASF1382:
	.string	"failure"
.LASF1579:
	.string	"flag_pic"
.LASF1266:
	.string	"type_quals"
.LASF1316:
	.string	"DFI_flow2"
.LASF650:
	.string	"uses_eh_lsda"
.LASF665:
	.string	"transparent_union"
.LASF279:
	.string	"CALL_EXPR"
.LASF450:
	.string	"BUILT_IN_FPRINTF_UNLOCKED"
.LASF988:
	.string	"DWARF2_DEBUG"
.LASF1152:
	.string	"x_data"
.LASF310:
	.string	"LROTATE_EXPR"
.LASF284:
	.string	"WITH_RECORD_EXPR"
.LASF1317:
	.string	"DFI_peephole2"
.LASF404:
	.string	"BUILT_IN_STRCMP"
.LASF1164:
	.string	"diagnostic_prefixing_rule_t"
.LASF864:
	.string	"ORDERED"
.LASF1480:
	.string	"current_function_func_begin_label"
.LASF820:
	.string	"PREFETCH"
.LASF150:
	.string	"next"
.LASF1387:
	.string	"lose"
.LASF1636:
	.string	"global_dc"
.LASF822:
	.string	"CALL"
.LASF462:
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
.LASF181:
	.string	"CSImode"
.LASF1581:
	.string	"flag_unwind_tables"
.LASF1162:
	.string	"DIAGNOSTICS_SHOW_PREFIX_NEVER"
.LASF1126:
	.string	"TV_DBR_SCHED"
.LASF865:
	.string	"UNEQ"
.LASF1262:
	.string	"end_inlining"
.LASF996:
	.string	"DINFO_LEVEL_VERBOSE"
.LASF6:
	.string	"in_struct"
.LASF116:
	.string	"_IO_marker"
.LASF1177:
	.string	"param_info"
.LASF771:
	.string	"SBITSIZETYPE"
.LASF1299:
	.string	"DFI_ssa_dce"
.LASF298:
	.string	"FIX_TRUNC_EXPR"
.LASF568:
	.string	"main_variant"
.LASF434:
	.string	"BUILT_IN_LONGJMP"
.LASF1385:
	.string	"cleanup_crossjump"
.LASF1220:
	.string	"function_epilogue"
.LASF1386:
	.string	"parent"
.LASF1488:
	.string	"cse_not_expected"
.LASF1665:
	.string	"exit_rest_of_compilation"
.LASF808:
	.string	"CALL_INSN"
.LASF1641:
	.string	"dbx_debug_hooks"
.LASF1654:
	.string	"flag_ssa_ccp"
.LASF1304:
	.string	"DFI_loop"
.LASF1540:
	.string	"flag_unroll_all_loops"
.LASF1607:
	.string	"align_loops_log"
.LASF402:
	.string	"BUILT_IN_STRCPY"
.LASF666:
	.string	"static_ctor_flag"
.LASF1610:
	.string	"align_jumps_log"
.LASF1407:
	.string	"debug_type_names"
.LASF751:
	.string	"itk_int"
.LASF867:
	.string	"UNGT"
.LASF13:
	.string	"num_elem"
.LASF1261:
	.string	"start_inlining"
.LASF340:
	.string	"CONVERT_EXPR"
.LASF899:
	.string	"US_TRUNCATE"
.LASF1434:
	.string	"finalize"
.LASF1011:
	.string	"x_cur_insn_uid"
.LASF810:
	.string	"CODE_LABEL"
.LASF1233:
	.string	"reorder"
.LASF1664:
	.string	"_IO_lock_t"
.LASF254:
	.string	"VECTOR_CST"
.LASF88:
	.string	"_IO_read_ptr"
.LASF1251:
	.string	"lang_print_tree_hook"
.LASF1426:
	.string	"argv0"
.LASF920:
	.string	"rt_addr_diff_vec_flags"
.LASF1268:
	.string	"identifier_size"
.LASF788:
	.string	"DEFINE_PEEPHOLE"
.LASF1537:
	.string	"flag_float_store"
.LASF448:
	.string	"BUILT_IN_FPUTS_UNLOCKED"
.LASF1433:
	.string	"lang_dependent_init"
.LASF825:
	.string	"RESX"
.LASF962:
	.string	"NOTE_INSN_EH_REGION_END"
.LASF1375:
	.string	"rest_of_decl_compilation"
.LASF102:
	.string	"_flags2"
.LASF1394:
	.string	"display_help"
.LASF187:
	.string	"V2SImode"
.LASF543:
	.string	"abstract_origin"
.LASF850:
	.string	"ASHIFTRT"
.LASF804:
	.string	"EQ_ATTR"
.LASF1560:
	.string	"flag_inline_functions"
.LASF674:
	.string	"no_limit_stack"
.LASF214:
	.string	"mode_class"
.LASF1538:
	.string	"flag_strength_reduce"
.LASF593:
	.string	"x_nonlocal_goto_handler_labels"
.LASF561:
	.string	"align"
.LASF967:
	.string	"NOTE_INSN_BASIC_BLOCK"
.LASF1039:
	.string	"bitmap_element_def"
.LASF839:
	.string	"QUEUED"
.LASF1441:
	.string	"flag_delete_null_pointer_checks"
.LASF801:
	.string	"ATTR"
.LASF1369:
	.string	"needed"
.LASF352:
	.string	"CONJ_EXPR"
.LASF262:
	.string	"RESULT_DECL"
.LASF59:
	.string	"sse_nregs"
.LASF586:
	.string	"return_rtx"
.LASF1099:
	.string	"TV_CPP"
.LASF1572:
	.string	"flag_schedule_speculative_load_dangerous"
.LASF92:
	.string	"_IO_write_ptr"
.LASF592:
	.string	"x_nonlocal_goto_handler_slots"
.LASF1354:
	.string	"strip_off_ending"
.LASF1390:
	.string	"save_cfj"
.LASF1658:
	.string	"aux_info_file"
.LASF1530:
	.string	"flag_signed_char"
.LASF1210:
	.string	"asm_out"
.LASF923:
	.string	"rttree"
.LASF335:
	.string	"UNEQ_EXPR"
.LASF286:
	.string	"MINUS_EXPR"
.LASF1277:
	.string	"honor_readonly"
.LASF309:
	.string	"RSHIFT_EXPR"
.LASF153:
	.string	"machine_mode"
.LASF853:
	.string	"SMIN"
.LASF1377:
	.string	"top_level"
.LASF124:
	.string	"_sch_isprint"
.LASF339:
	.string	"RANGE_EXPR"
.LASF1663:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF238:
	.string	"CHAR_TYPE"
.LASF287:
	.string	"MULT_EXPR"
.LASF248:
	.string	"QUAL_UNION_TYPE"
.LASF299:
	.string	"FIX_CEIL_EXPR"
.LASF1051:
	.string	"pred_next"
.LASF337:
	.string	"SET_LE_EXPR"
.LASF422:
	.string	"BUILT_IN_SAVEREGS"
.LASF851:
	.string	"LSHIFTRT"
.LASF1466:
	.string	"ix86_preferred_stack_boundary_string"
.LASF868:
	.string	"UNLE"
.LASF999:
	.string	"var_refs_queue"
.LASF1000:
	.string	"modified"
.LASF1507:
	.string	"warn_inline"
.LASF1644:
	.string	"size_directive_output"
.LASF202:
	.string	"V8SFmode"
.LASF1347:
	.string	"floor_log2_wide"
.LASF1130:
	.string	"TV_TO_SSA"
.LASF361:
	.string	"TRY_FINALLY_EXPR"
.LASF1619:
	.string	"flag_gcse_lm"
.LASF940:
	.string	"index"
.LASF20:
	.string	"string"
.LASF1106:
	.string	"TV_CSE"
.LASF251:
	.string	"INTEGER_CST"
.LASF1569:
	.string	"flag_schedule_interblock"
.LASF8:
	.string	"integrated"
.LASF204:
	.string	"V16SFmode"
.LASF1038:
	.string	"EXPAND_WRITE"
.LASF521:
	.string	"chunkfun"
.LASF534:
	.string	"complexity"
.LASF158:
	.string	"SImode"
.LASF327:
	.string	"EQ_EXPR"
.LASF631:
	.string	"needs_context"
.LASF21:
	.string	"complex"
.LASF938:
	.string	"global_live_at_start"
.LASF607:
	.string	"x_parm_birth_insn"
.LASF1620:
	.string	"flag_gcse_sm"
.LASF1112:
	.string	"TV_COMBINE"
.LASF857:
	.string	"PRE_DEC"
.LASF499:
	.string	"realvaluetype"
.LASF1571:
	.string	"flag_schedule_speculative_load"
.LASF260:
	.string	"VAR_DECL"
.LASF658:
	.string	"inline_flag"
.LASF430:
	.string	"BUILT_IN_APPLY_ARGS"
.LASF1577:
	.string	"flag_pretend_float"
.LASF793:
	.string	"DEFINE_EXPAND"
.LASF1576:
	.string	"flag_dump_unnumbered"
.LASF812:
	.string	"COND_EXEC"
.LASF606:
	.string	"x_trampoline_list"
.LASF647:
	.string	"x_dont_save_pending_sizes_p"
.LASF602:
	.string	"x_arg_pointer_save_area"
.LASF183:
	.string	"CTImode"
.LASF1097:
	.string	"TV_LIFE"
.LASF1621:
	.string	"flag_eliminate_dwarf2_dups"
.LASF359:
	.string	"VA_ARG_EXPR"
.LASF1109:
	.string	"TV_CSE2"
.LASF1397:
	.string	"display_target_options"
.LASF566:
	.string	"maxval"
.LASF1102:
	.string	"TV_EXPAND"
.LASF951:
	.string	"NOTE_INSN_LOOP_BEG"
.LASF146:
	.string	"__saved_mask"
.LASF914:
	.string	"rtunion_def"
.LASF1534:
	.string	"flag_force_mem"
.LASF1353:
	.string	"crash_signal"
.LASF1043:
	.string	"simple_bitmap_def"
.LASF694:
	.string	"TI_INTQI_TYPE"
.LASF960:
	.string	"NOTE_INSN_FUNCTION_BEG"
.LASF1257:
	.string	"tree_chain_matters_p"
.LASF276:
	.string	"TARGET_EXPR"
.LASF194:
	.string	"V8HImode"
.LASF1483:
	.string	"lang_set_decl_assembler_name"
.LASF383:
	.string	"BUILT_IN_CONJ"
.LASF245:
	.string	"SET_TYPE"
.LASF1069:
	.string	"num_exits"
.LASF803:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF1608:
	.string	"align_loops_max_skip"
.LASF918:
	.string	"rtstr"
.LASF107:
	.string	"_lock"
.LASF206:
	.string	"CCmode"
.LASF1573:
	.string	"flag_branch_on_count_reg"
.LASF758:
	.string	"attribute_spec"
.LASF466:
	.string	"BUILT_IN_STDARG_START"
.LASF266:
	.string	"BIT_FIELD_REF"
.LASF516:
	.string	"object_base"
.LASF908:
	.string	"scale"
.LASF1524:
	.string	"flag_branch_probabilities"
.LASF1408:
	.string	"max_debug_level"
.LASF910:
	.string	"alias"
.LASF1283:
	.string	"set_yydebug"
.LASF1227:
	.string	"adjust_cost"
.LASF392:
	.string	"BUILT_IN_BZERO"
.LASF558:
	.string	"restrict_flag"
.LASF648:
	.string	"uses_const_pool"
.LASF729:
	.string	"TI_UV8QI_TYPE"
.LASF1187:
	.string	"LAST_PARAM"
.LASF1557:
	.string	"flag_trapping_math"
.LASF1090:
	.string	"shared_headers"
.LASF1272:
	.string	"clear_binding_stack"
.LASF1297:
	.string	"DFI_ssa"
.LASF980:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF208:
	.string	"CCGOCmode"
.LASF599:
	.string	"x_rtl_expr_chain"
.LASF1012:
	.string	"x_last_linenum"
.LASF1026:
	.string	"eh_status"
.LASF1647:
	.string	"save_argv"
.LASF633:
	.string	"calls_longjmp"
.LASF95:
	.string	"_IO_buf_end"
.LASF1492:
	.string	"use_gnu_debug_info_extensions"
.LASF560:
	.string	"user_align"
.LASF1403:
	.string	"decode_W_option"
.LASF379:
	.string	"BUILT_IN_FABSF"
.LASF79:
	.string	"short unsigned int"
.LASF1062:
	.string	"pre_header_edges"
.LASF380:
	.string	"BUILT_IN_FABSL"
.LASF1067:
	.string	"num_entries"
.LASF278:
	.string	"BIND_EXPR"
.LASF1345:
	.string	"exact_log2_wide"
.LASF137:
	.string	"_sch_isbasic"
.LASF1473:
	.string	"lineno"
.LASF213:
	.string	"MAX_MACHINE_MODE"
.LASF991:
	.string	"VMS_AND_DWARF2_DEBUG"
.LASF794:
	.string	"DEFINE_DELAY"
.LASF1204:
	.string	"function_decl"
.LASF893:
	.string	"VEC_DUPLICATE"
.LASF1442:
	.string	"flag_rerun_cse_after_loop"
.LASF90:
	.string	"_IO_read_base"
.LASF639:
	.string	"has_computed_jump"
.LASF342:
	.string	"NON_LVALUE_EXPR"
.LASF739:
	.string	"TI_V4HI_TYPE"
.LASF1020:
	.string	"x_inhibit_defer_pop"
.LASF954:
	.string	"NOTE_INSN_LOOP_VTOP"
.LASF476:
	.string	"volatile_flag"
.LASF418:
	.string	"BUILT_IN_COSF"
.LASF421:
	.string	"BUILT_IN_COSL"
.LASF690:
	.string	"lang_type"
.LASF334:
	.string	"UNGE_EXPR"
.LASF1584:
	.string	"flag_inhibit_size_directive"
.LASF1384:
	.string	"register_life_up_to_date"
.LASF1114:
	.string	"TV_REGMOVE"
.LASF443:
	.string	"BUILT_IN_FPRINTF"
.LASF685:
	.string	"live_range_rtl"
.LASF780:
	.string	"MATCH_SCRATCH"
.LASF1590:
	.string	"flag_gnu_linker"
.LASF488:
	.string	"deprecated_flag"
.LASF546:
	.string	"address"
.LASF425:
	.string	"BUILT_IN_ARGS_INFO"
.LASF498:
	.string	"tree_int_cst"
.LASF1105:
	.string	"TV_JUMP"
.LASF660:
	.string	"virtual_flag"
.LASF1027:
	.string	"stmt_status"
.LASF175:
	.string	"SCmode"
.LASF257:
	.string	"LABEL_DECL"
.LASF1633:
	.string	"n_basic_blocks"
.LASF1637:
	.string	"compiler_params"
.LASF1333:
	.string	"lang_opt"
.LASF127:
	.string	"_sch_isupper"
.LASF845:
	.string	"MULT"
.LASF485:
	.string	"private_flag"
.LASF1243:
	.string	"function_attribute_inlinable_p"
.LASF106:
	.string	"_shortbuf"
.LASF118:
	.string	"_sbuf"
.LASF1662:
	.string	"toplev.c"
.LASF1016:
	.string	"regno_decl"
.LASF500:
	.string	"tree_real_cst"
.LASF326:
	.string	"GE_EXPR"
.LASF973:
	.string	"GR_STACK_POINTER"
.LASF723:
	.string	"TI_PTRDIFF_TYPE"
.LASF799:
	.string	"ADDRESS"
.LASF888:
	.string	"CONSTANT_P_RTX"
.LASF51:
	.string	"FLOAT_INT_SSE_REGS"
.LASF972:
	.string	"GR_CC0"
.LASF37:
	.string	"NON_Q_REGS"
.LASF594:
	.string	"x_nonlocal_goto_stack_level"
.LASF1091:
	.string	"float"
.LASF741:
	.string	"TI_V2SF_TYPE"
.LASF1463:
	.string	"ix86_align_loops_string"
.LASF78:
	.string	"unsigned char"
.LASF1547:
	.string	"flag_writable_strings"
.LASF1146:
	.string	"message"
.LASF564:
	.string	"symtab"
.LASF235:
	.string	"VECTOR_TYPE"
.LASF756:
	.string	"itk_unsigned_long_long"
.LASF1502:
	.string	"warn_unused_label"
.LASF824:
	.string	"TRAP_IF"
.LASF608:
	.string	"x_last_parm_insn"
.LASF454:
	.string	"BUILT_IN_ISLESSEQUAL"
.LASF1226:
	.string	"sched"
.LASF550:
	.string	"size_unit"
.LASF1640:
	.string	"do_nothing_debug_hooks"
.LASF277:
	.string	"COND_EXPR"
.LASF36:
	.string	"Q_REGS"
.LASF171:
	.string	"XFmode"
.LASF119:
	.string	"_pos"
.LASF1185:
	.string	"PARAM_MAX_GCSE_MEMORY"
.LASF253:
	.string	"COMPLEX_CST"
.LASF1136:
	.string	"TV_REST_OF_COMPILATION"
.LASF929:
	.string	"indx"
.LASF520:
	.string	"alignment_mask"
.LASF829:
	.string	"CONST_STRING"
.LASF1253:
	.string	"walk_subtrees"
.LASF256:
	.string	"FUNCTION_DECL"
.LASF167:
	.string	"HFmode"
.LASF1135:
	.string	"TV_SYMOUT"
.LASF935:
	.string	"succ"
.LASF866:
	.string	"UNGE"
.LASF765:
	.string	"_Bool"
.LASF941:
	.string	"loop_depth"
.LASF1625:
	.string	"current_function_is_leaf"
.LASF482:
	.string	"nothrow_flag"
.LASF990:
	.string	"VMS_DEBUG"
.LASF1239:
	.string	"attribute_table"
.LASF958:
	.string	"NOTE_INSN_EPILOGUE_BEG"
.LASF297:
	.string	"EXACT_DIV_EXPR"
.LASF192:
	.string	"V4DImode"
.LASF292:
	.string	"TRUNC_MOD_EXPR"
.LASF815:
	.string	"ASM_OPERANDS"
.LASF1513:
	.string	"warn_cast_align"
.LASF1587:
	.string	"flag_verbose_asm"
.LASF1221:
	.string	"named_section"
.LASF634:
	.string	"calls_alloca"
.LASF1218:
	.string	"function_end_prologue"
.LASF465:
	.string	"BUILT_IN_VARARGS_START"
.LASF1006:
	.string	"emit_status"
.LASF934:
	.string	"pred"
.LASF508:
	.string	"elements"
.LASF1602:
	.string	"flag_renumber_insns"
.LASF330:
	.string	"ORDERED_EXPR"
.LASF1237:
	.string	"merge_decl_attributes"
.LASF24:
	.string	"type"
.LASF1092:
	.string	"TV_TOTAL"
.LASF975:
	.string	"GR_HARD_FRAME_POINTER"
.LASF82:
	.string	"__off_t"
.LASF697:
	.string	"TI_INTDI_TYPE"
.LASF120:
	.string	"_sch_isblank"
.LASF478:
	.string	"unsigned_flag"
.LASF1215:
	.string	"unaligned_op"
.LASF1329:
	.string	"description"
.LASF1013:
	.string	"x_last_filename"
.LASF1132:
	.string	"TV_SSA_DCE"
.LASF1391:
	.string	"tem2"
.LASF308:
	.string	"LSHIFT_EXPR"
.LASF314:
	.string	"BIT_AND_EXPR"
.LASF547:
	.string	"tree_type"
.LASF205:
	.string	"BLKmode"
.LASF597:
	.string	"x_save_expr_regs"
.LASF165:
	.string	"PDImode"
.LASF657:
	.string	"regdecl_flag"
.LASF267:
	.string	"INDIRECT_REF"
.LASF626:
	.string	"language"
.LASF14:
	.string	"elem"
.LASF444:
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
.LASF1327:
	.string	"debug_type"
.LASF710:
	.string	"TI_BITSIZE_ZERO"
.LASF1370:
	.string	"check_global_declarations"
.LASF1055:
	.string	"probability"
.LASF519:
	.string	"temp"
.LASF1294:
	.string	"DFI_sibling"
.LASF1125:
	.string	"TV_MACH_DEP"
.LASF1634:
	.string	"n_edges"
.LASF1189:
	.string	"init"
.LASF748:
	.string	"itk_unsigned_char"
.LASF35:
	.string	"AD_REGS"
.LASF472:
	.string	"chain"
.LASF132:
	.string	"_sch_isalpha"
.LASF603:
	.string	"x_clobber_return_insn"
.LASF1415:
	.string	"return_val"
.LASF1520:
	.string	"warn_deprecated_decl"
.LASF515:
	.string	"chunk"
.LASF1376:
	.string	"asmspec"
.LASF1149:
	.string	"warn"
.LASF384:
	.string	"BUILT_IN_CONJF"
.LASF790:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF385:
	.string	"BUILT_IN_CONJL"
.LASF398:
	.string	"BUILT_IN_MEMCMP"
.LASF769:
	.string	"USIZETYPE"
.LASF1612:
	.string	"align_labels"
.LASF1205:
	.string	"global_decl"
.LASF1068:
	.string	"exit_edges"
.LASF635:
	.string	"calls_eh_return"
.LASF897:
	.string	"US_MINUS"
.LASF457:
	.string	"BUILT_IN_UNWIND_INIT"
.LASF483:
	.string	"static_flag"
.LASF70:
	.string	"fp_offset"
.LASF1615:
	.string	"align_functions"
.LASF1446:
	.string	"f_options"
.LASF531:
	.string	"value"
.LASF133:
	.string	"_sch_isalnum"
.LASF117:
	.string	"_next"
.LASF612:
	.string	"x_temp_slot_level"
.LASF1657:
	.string	"warnings_are_errors"
.LASF349:
	.string	"ENTRY_VALUE_EXPR"
.LASF1482:
	.string	"incomplete_decl_finalize_hook"
.LASF1381:
	.string	"rest_of_compilation"
.LASF1459:
	.string	"ix86_cpu_string"
.LASF587:
	.string	"internal_arg_pointer"
.LASF1464:
	.string	"ix86_align_jumps_string"
.LASF600:
	.string	"x_tail_recursion_label"
.LASF763:
	.string	"function_type_required"
.LASF1401:
	.string	"decode_f_option"
.LASF329:
	.string	"UNORDERED_EXPR"
.LASF1468:
	.string	"stdout"
.LASF625:
	.string	"preferred_stack_boundary"
.LASF637:
	.string	"has_nonlocal_goto"
.LASF1306:
	.string	"DFI_cfg"
.LASF121:
	.string	"_sch_iscntrl"
.LASF39:
	.string	"LEGACY_REGS"
.LASF1087:
	.string	"levels"
.LASF707:
	.string	"TI_NULL_POINTER"
.LASF1585:
	.string	"flag_function_sections"
.LASF239:
	.string	"POINTER_TYPE"
.LASF387:
	.string	"BUILT_IN_CREALF"
.LASF189:
	.string	"V4QImode"
.LASF1521:
	.string	"profile_flag"
.LASF750:
	.string	"itk_unsigned_short"
.LASF388:
	.string	"BUILT_IN_CREALL"
.LASF1490:
	.string	"stack_limit_rtx"
.LASF1049:
	.string	"gcov_type"
.LASF397:
	.string	"BUILT_IN_MEMCPY"
.LASF1207:
	.string	"outlining_inline_function"
.LASF965:
	.string	"NOTE_INSN_RANGE_END"
.LASF917:
	.string	"rtuint"
.LASF589:
	.string	"hard_reg_initial_vals"
.LASF859:
	.string	"POST_DEC"
.LASF942:
	.string	"count"
.LASF778:
	.string	"INSN_LIST"
.LASF977:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF1523:
	.string	"flag_test_coverage"
.LASF1558:
	.string	"flag_complex_divide_method"
.LASF1421:
	.string	"term"
.LASF250:
	.string	"LANG_TYPE"
.LASF1169:
	.string	"indent_skip"
.LASF709:
	.string	"TI_SIZE_ONE"
.LASF1389:
	.string	"save_csb"
.LASF541:
	.string	"subblocks"
.LASF724:
	.string	"TI_VA_LIST_TYPE"
.LASF581:
	.string	"args_size"
.LASF31:
	.string	"CREG"
.LASF103:
	.string	"_old_offset"
.LASF1269:
	.string	"init_options"
.LASF957:
	.string	"NOTE_INSN_PROLOGUE_END"
.LASF526:
	.string	"alloc_failed"
.LASF1383:
	.string	"rebuild_label_notes_after_reload"
.LASF659:
	.string	"bit_field_flag"
.LASF738:
	.string	"TI_V8QI_TYPE"
.LASF1594:
	.string	"flag_stack_check"
.LASF1439:
	.string	"exit_after_options"
.LASF628:
	.string	"returns_struct"
.LASF517:
	.string	"next_free"
.LASF390:
	.string	"BUILT_IN_CIMAGF"
.LASF869:
	.string	"UNLT"
.LASF244:
	.string	"ARRAY_TYPE"
.LASF319:
	.string	"TRUTH_AND_EXPR"
.LASF656:
	.string	"nonlocal_flag"
.LASF162:
	.string	"PQImode"
.LASF695:
	.string	"TI_INTHI_TYPE"
.LASF548:
	.string	"values"
.LASF1307:
	.string	"DFI_bp"
.LASF1566:
	.string	"flag_shared_data"
.LASF1567:
	.string	"flag_schedule_insns"
.LASF719:
	.string	"TI_LONG_DOUBLE_TYPE"
.LASF15:
	.string	"tree"
.LASF1188:
	.string	"gcc_debug_hooks"
.LASF56:
	.string	"nregs"
.LASF1214:
	.string	"aligned_op"
.LASF1326:
	.string	"lang_expand_expr_t"
.LASF883:
	.string	"LO_SUM"
.LASF795:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF1453:
	.string	"x86_prefetch_sse"
.LASF512:
	.string	"contents"
.LASF556:
	.string	"transparent_union_flag"
.LASF1544:
	.string	"flag_cse_follow_jumps"
.LASF1287:
	.string	"extension"
.LASF1310:
	.string	"DFI_ce"
.LASF1046:
	.string	"elms"
.LASF1241:
	.string	"set_default_type_attributes"
.LASF98:
	.string	"_IO_save_end"
.LASF563:
	.string	"reference_to"
.LASF1650:
	.string	"flag_cprop_registers"
.LASF874:
	.string	"FLOAT_EXTEND"
.LASF1373:
	.string	"compile_file"
.LASF1487:
	.string	"reload_completed"
.LASF236:
	.string	"ENUMERAL_TYPE"
.LASF775:
	.string	"UNKNOWN"
.LASF1659:
	.string	"float_handled"
.LASF212:
	.string	"CCFPUmode"
.LASF1599:
	.string	"flag_bounded_pointers"
.LASF269:
	.string	"ARRAY_REF"
.LASF1660:
	.string	"float_handler"
.LASF1089:
	.string	"tree_root"
.LASF1479:
	.string	"current_function_decl"
.LASF389:
	.string	"BUILT_IN_CIMAG"
.LASF1368:
	.string	"output_something"
.LASF718:
	.string	"TI_DOUBLE_TYPE"
.LASF1396:
	.string	"lang"
.LASF1198:
	.string	"source_line"
.LASF1465:
	.string	"ix86_align_funcs_string"
.LASF17:
	.string	"int_cst"
.LASF341:
	.string	"NOP_EXPR"
.LASF554:
	.string	"no_force_blk_flag"
.LASF1059:
	.string	"header"
.LASF969:
	.string	"NOTE_INSN_MAX"
.LASF731:
	.string	"TI_UV2SI_TYPE"
.LASF1461:
	.string	"ix86_fpmath_string"
.LASF757:
	.string	"itk_none"
.LASF1295:
	.string	"DFI_eh"
.LASF274:
	.string	"MODIFY_EXPR"
.LASF1319:
	.string	"DFI_ce2"
.LASF247:
	.string	"UNION_TYPE"
.LASF468:
	.string	"BUILT_IN_VA_COPY"
.LASF616:
	.string	"inlinable"
.LASF713:
	.string	"TI_COMPLEX_INTEGER_TYPE"
.LASF271:
	.string	"VTABLE_REF"
.LASF552:
	.string	"precision"
.LASF135:
	.string	"_sch_isgraph"
.LASF1259:
	.string	"copy_res_decl_for_inlining"
.LASF601:
	.string	"x_tail_recursion_reentry"
.LASF959:
	.string	"NOTE_INSN_DELETED_LABEL"
.LASF1346:
	.string	"endp"
.LASF1374:
	.string	"globals"
.LASF479:
	.string	"asm_written_flag"
.LASF303:
	.string	"NEGATE_EXPR"
.LASF296:
	.string	"RDIV_EXPR"
.LASF417:
	.string	"BUILT_IN_SINF"
.LASF1107:
	.string	"TV_GCSE"
.LASF420:
	.string	"BUILT_IN_SINL"
.LASF365:
	.string	"RETURN_EXPR"
.LASF621:
	.string	"inl_max_label_num"
.LASF1249:
	.string	"have_ctors_dtors"
.LASF667:
	.string	"static_dtor_flag"
.LASF819:
	.string	"ADDR_DIFF_VEC"
.LASF1505:
	.string	"warn_unused_value"
.LASF835:
	.string	"CONCAT"
.LASF913:
	.string	"tree_node"
.LASF440:
	.string	"BUILT_IN_FPUTC"
.LASF619:
	.string	"original_decl_initial"
.LASF747:
	.string	"itk_signed_char"
.LASF441:
	.string	"BUILT_IN_FPUTS"
.LASF879:
	.string	"SQRT"
.LASF429:
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
.LASF1646:
	.string	"save_argc"
.LASF1341:
	.string	"do_abort"
.LASF182:
	.string	"CDImode"
.LASF668:
	.string	"artificial_flag"
.LASF9:
	.string	"frame_related"
.LASF1120:
	.string	"TV_FLOW2"
.LASF745:
	.string	"integer_type_kind"
.LASF1542:
	.string	"flag_prefetch_loop_arrays"
.LASF717:
	.string	"TI_FLOAT_TYPE"
.LASF1531:
	.string	"flag_short_enums"
.LASF375:
	.string	"BUILT_IN_ALLOCA"
.LASF848:
	.string	"ASHIFT"
.LASF255:
	.string	"STRING_CST"
.LASF1004:
	.string	"last"
.LASF81:
	.string	"short int"
.LASF1652:
	.string	"flag_keep_static_consts"
.LASF832:
	.string	"SCRATCH"
.LASF1036:
	.string	"EXPAND_CONST_ADDRESS"
.LASF875:
	.string	"FLOAT_TRUNCATE"
.LASF1196:
	.string	"end_block"
.LASF672:
	.string	"comdat_flag"
.LASF219:
	.string	"MODE_CC"
.LASF1436:
	.string	"toplev_main"
.LASF1265:
	.string	"dump_tree"
.LASF950:
	.string	"NOTE_INSN_BLOCK_END"
.LASF1148:
	.string	"file"
.LASF1506:
	.string	"warn_notreached"
.LASF1301:
	.string	"DFI_cse"
.LASF370:
	.string	"EXPR_WITH_FILE_LOCATION"
.LASF1247:
	.string	"section_type_flags"
.LASF374:
	.string	"built_in_function"
.LASF680:
	.string	"arguments"
.LASF99:
	.string	"_markers"
.LASF915:
	.string	"rtwint"
.LASF610:
	.string	"x_parm_reg_stack_loc"
.LASF101:
	.string	"_fileno"
.LASF1088:
	.string	"array"
.LASF22:
	.string	"identifier"
.LASF1588:
	.string	"flag_debug_asm"
.LASF1351:
	.string	"do_float_handler"
.LASF1142:
	.string	"digit_buffer"
.LASF1224:
	.string	"constructor"
.LASF1510:
	.string	"warn_switch"
.LASF1137:
	.string	"TIMEVAR_LAST"
.LASF188:
	.string	"V2DImode"
.LASF732:
	.string	"TI_UV2SF_TYPE"
.LASF1050:
	.string	"edge_def"
.LASF1371:
	.string	"push_srcloc"
.LASF604:
	.string	"x_frame_offset"
.LASF530:
	.string	"purpose"
.LASF1332:
	.string	"lang_independent_options"
.LASF449:
	.string	"BUILT_IN_FWRITE_UNLOCKED"
.LASF1054:
	.string	"insns"
.LASF289:
	.string	"CEIL_DIV_EXPR"
.LASF533:
	.string	"tree_exp"
.LASF720:
	.string	"TI_VOID_TYPE"
.LASF1598:
	.string	"flag_guess_branch_prob"
.LASF1124:
	.string	"TV_SCHED2"
.LASF538:
	.string	"abstract_flag"
.LASF1086:
	.string	"loops"
.LASF884:
	.string	"RANGE_INFO"
.LASF75:
	.string	"long int"
.LASF849:
	.string	"ROTATE"
.LASF439:
	.string	"BUILT_IN_PRINTF"
.LASF994:
	.string	"DINFO_LEVEL_TERSE"
.LASF644:
	.string	"varargs"
.LASF535:
	.string	"operands"
.LASF716:
	.string	"TI_COMPLEX_LONG_DOUBLE_TYPE"
.LASF386:
	.string	"BUILT_IN_CREAL"
.LASF809:
	.string	"BARRIER"
.LASF1096:
	.string	"TV_CLEANUP_CFG"
.LASF1079:
	.string	"start"
.LASF58:
	.string	"sse_words"
.LASF1563:
	.string	"flag_really_no_inline"
.LASF481:
	.string	"used_flag"
.LASF290:
	.string	"FLOOR_DIV_EXPR"
.LASF1275:
	.string	"safe_from_p"
.LASF947:
	.string	"NOTE_INSN_BIAS"
.LASF1409:
	.string	"da_len"
.LASF1458:
	.string	"ix86_cmodel_string"
.LASF1138:
	.string	"output_buffer"
.LASF464:
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
.LASF211:
	.string	"CCFPmode"
.LASF834:
	.string	"STRICT_LOW_PART"
.LASF179:
	.string	"CQImode"
.LASF1504:
	.string	"warn_unused_variable"
.LASF1035:
	.string	"EXPAND_SUM"
.LASF981:
	.string	"GR_VIRTUAL_CFA"
.LASF65:
	.string	"ASM_ATT"
.LASF646:
	.string	"x_whole_function_mode_p"
.LASF664:
	.string	"defer_output"
.LASF160:
	.string	"TImode"
.LASF363:
	.string	"LABEL_EXPR"
.LASF416:
	.string	"BUILT_IN_SQRTF"
.LASF1139:
	.string	"state"
.LASF419:
	.string	"BUILT_IN_SQRTL"
.LASF1526:
	.string	"flag_rename_registers"
.LASF928:
	.string	"current"
.LASF1400:
	.string	"matched"
.LASF1512:
	.string	"warn_missing_noreturn"
.LASF1263:
	.string	"convert_parm_for_inlining"
.LASF91:
	.string	"_IO_write_base"
.LASF159:
	.string	"DImode"
.LASF1485:
	.string	"generating_concat_p"
.LASF331:
	.string	"UNLT_EXPR"
.LASF41:
	.string	"FP_TOP_REG"
.LASF1570:
	.string	"flag_schedule_speculative"
.LASF890:
	.string	"VEC_MERGE"
.LASF889:
	.string	"CALL_PLACEHOLDER"
.LASF1402:
	.string	"option_value"
.LASF733:
	.string	"TI_UV16QI_TYPE"
.LASF1424:
	.string	"dumpname"
.LASF1236:
	.string	"gcc_target"
.LASF27:
	.string	"sizetype"
.LASF437:
	.string	"BUILT_IN_PUTCHAR"
.LASF584:
	.string	"arg_offset_rtx"
.LASF744:
	.string	"TI_MAX"
.LASF985:
	.string	"DBX_DEBUG"
.LASF200:
	.string	"V4SFmode"
.LASF1555:
	.string	"flag_errno_math"
.LASF1228:
	.string	"adjust_priority"
.LASF789:
	.string	"DEFINE_SPLIT"
.LASF933:
	.string	"end_tree"
.LASF459:
	.string	"BUILT_IN_DWARF_FP_REGNUM"
.LASF1437:
	.string	"dump_file"
.LASF768:
	.string	"SSIZETYPE"
.LASF43:
	.string	"FLOAT_REGS"
.LASF511:
	.string	"prev"
.LASF1213:
	.string	"byte_op"
.LASF1242:
	.string	"insert_attributes"
.LASF1315:
	.string	"DFI_postreload"
.LASF852:
	.string	"ROTATERT"
.LASF818:
	.string	"ADDR_VEC"
.LASF0:
	.string	"code"
.LASF263:
	.string	"FIELD_DECL"
.LASF225:
	.string	"tree_code"
.LASF1357:
	.string	"output_file_directive"
.LASF323:
	.string	"LT_EXPR"
.LASF898:
	.string	"SS_TRUNCATE"
.LASF185:
	.string	"V2QImode"
.LASF583:
	.string	"outgoing_args_size"
.LASF1267:
	.string	"lang_hooks"
.LASF12:
	.string	"rtvec_def"
.LASF447:
	.string	"BUILT_IN_FPUTC_UNLOCKED"
.LASF1339:
	.string	"verbosity"
.LASF525:
	.string	"maybe_empty_object"
.LASF715:
	.string	"TI_COMPLEX_DOUBLE_TYPE"
.LASF1418:
	.string	"print_version"
.LASF1494:
	.string	"optimize_size"
.LASF1047:
	.string	"sbitmap"
.LASF570:
	.string	"context"
.LASF613:
	.string	"x_var_temp_slot_level"
.LASF611:
	.string	"x_temp_slots"
.LASF1554:
	.string	"flag_optimize_sibling_calls"
.LASF1591:
	.string	"flag_pack_struct"
.LASF1288:
	.string	"debug_switch"
.LASF903:
	.string	"min_after_vec"
.LASF104:
	.string	"_cur_column"
.LASF856:
	.string	"UMAX"
.LASF711:
	.string	"TI_BITSIZE_ONE"
.LASF642:
	.string	"profile"
.LASF1235:
	.string	"cycle_display"
.LASF1528:
	.string	"in_system_header"
.LASF651:
	.string	"arg_pointer_save_area_init"
.LASF527:
	.string	"ht_identifier"
.LASF641:
	.string	"instrument_entry_exit"
.LASF1278:
	.string	"print_statistics"
.LASF1252:
	.string	"lang_hooks_for_tree_inlining"
.LASF779:
	.string	"MATCH_OPERAND"
.LASF876:
	.string	"FLOAT"
.LASF620:
	.string	"inl_last_parm_insn"
.LASF11:
	.string	"rtx_def"
.LASF190:
	.string	"V4HImode"
.LASF627:
	.string	"epilogue_delay_list"
.LASF1110:
	.string	"TV_BRANCH_PROB"
.LASF1171:
	.string	"need_newline_p"
.LASF394:
	.string	"BUILT_IN_FFS"
.LASF782:
	.string	"MATCH_OPERATOR"
.LASF760:
	.string	"max_length"
.LASF139:
	.string	"__sigset_t"
.LASF1134:
	.string	"TV_FINAL"
.LASF1108:
	.string	"TV_LOOP"
.LASF703:
	.string	"TI_UINTTI_TYPE"
.LASF911:
	.string	"offset"
.LASF1440:
	.string	"flag_gcse"
.LASF1595:
	.string	"flag_regmove"
.LASF692:
	.string	"tree_index"
.LASF746:
	.string	"itk_char"
.LASF1545:
	.string	"flag_cse_skip_blocks"
.LASF902:
	.string	"base_after_vec"
.LASF843:
	.string	"PLUS"
.LASF1021:
	.string	"x_stack_pointer_delta"
.LASF156:
	.string	"QImode"
.LASF545:
	.string	"fragment_chain"
.LASF67:
	.string	"__gnuc_va_list"
.LASF467:
	.string	"BUILT_IN_VA_END"
.LASF1180:
	.string	"compiler_param"
.LASF714:
	.string	"TI_COMPLEX_FLOAT_TYPE"
.LASF948:
	.string	"NOTE_INSN_DELETED"
.LASF1431:
	.string	"process_options"
.LASF784:
	.string	"MATCH_OP_DUP"
.LASF371:
	.string	"SWITCH_EXPR"
.LASF755:
	.string	"itk_long_long"
.LASF83:
	.string	"__off64_t"
.LASF1611:
	.string	"align_jumps_max_skip"
.LASF522:
	.string	"freefun"
.LASF1342:
	.string	"botch"
.LASF1024:
	.string	"x_forced_labels"
.LASF461:
	.string	"BUILT_IN_FROB_RETURN_ADDR"
.LASF163:
	.string	"PHImode"
.LASF178:
	.string	"TCmode"
.LASF80:
	.string	"signed char"
.LASF617:
	.string	"no_debugging_symbols"
.LASF142:
	.string	"__jmp_buf"
.LASF1331:
	.string	"on_value"
.LASF1298:
	.string	"DFI_ssa_ccp"
.LASF678:
	.string	"uninlinable"
.LASF233:
	.string	"REAL_TYPE"
.LASF48:
	.string	"FLOAT_SSE_REGS"
.LASF203:
	.string	"V8DFmode"
.LASF1522:
	.string	"profile_arc_flag"
.LASF176:
	.string	"DCmode"
.LASF797:
	.string	"DEFINE_COND_EXEC"
.LASF168:
	.string	"TQFmode"
.LASF224:
	.string	"MAX_MODE_CLASS"
.LASF1639:
	.string	"debug_hooks"
.LASF60:
	.string	"sse_regno"
.LASF537:
	.string	"handler_block_flag"
.LASF1123:
	.string	"TV_RENAME_REGISTERS"
.LASF436:
	.string	"BUILT_IN_PREFETCH"
.LASF486:
	.string	"protected_flag"
.LASF1546:
	.string	"flag_expensive_optimizations"
.LASF4:
	.string	"unchanging"
.LASF344:
	.string	"SAVE_EXPR"
.LASF907:
	.string	"offset_unsigned"
.LASF1083:
	.string	"exit_count"
.LASF1338:
	.string	"defval"
.LASF700:
	.string	"TI_UINTHI_TYPE"
.LASF1157:
	.string	"DK_WARNING"
.LASF636:
	.string	"has_nonlocal_label"
.LASF471:
	.string	"tree_common"
.LASF272:
	.string	"CONSTRUCTOR"
.LASF712:
	.string	"TI_BITSIZE_UNIT"
.LASF1115:
	.string	"TV_MODE_SWITCH"
.LASF1129:
	.string	"TV_REG_STACK"
.LASF378:
	.string	"BUILT_IN_FABS"
.LASF1190:
	.string	"finish"
.LASF1223:
	.string	"eh_frame_section"
.LASF300:
	.string	"FIX_FLOOR_EXPR"
.LASF946:
	.string	"insn_note"
.LASF1562:
	.string	"flag_no_inline"
.LASF131:
	.string	"_sch_isnvsp"
.LASF998:
	.string	"no_graph"
.LASF976:
	.string	"GR_ARG_POINTER"
.LASF1282:
	.string	"print_identifier"
.LASF1080:
	.string	"scan_start"
.LASF1111:
	.string	"TV_FLOW"
.LASF1622:
	.string	"flag_detailed_statistics"
.LASF777:
	.string	"EXPR_LIST"
.LASF855:
	.string	"UMIN"
.LASF524:
	.string	"use_extra_arg"
.LASF136:
	.string	"_sch_iscppsp"
.LASF1077:
	.string	"cont"
.LASF1285:
	.string	"tree_dump"
.LASF423:
	.string	"BUILT_IN_CLASSIFY_TYPE"
.LASF806:
	.string	"INSN"
.LASF367:
	.string	"LOOP_EXPR"
.LASF1452:
	.string	"target_flags"
.LASF1553:
	.string	"flag_volatile_static"
.LASF931:
	.string	"head"
.LASF761:
	.string	"decl_required"
.LASF291:
	.string	"ROUND_DIV_EXPR"
.LASF677:
	.string	"non_addressable"
.LASF800:
	.string	"DEFINE_ATTR"
.LASF540:
	.string	"vars"
.LASF1642:
	.string	"dwarf2_debug_hooks"
.LASF1063:
	.string	"num_pre_header_edges"
.LASF140:
	.string	"long long unsigned int"
.LASF1423:
	.string	"init_asm_output"
.LASF1582:
	.string	"flag_asynchronous_unwind_tables"
.LASF1410:
	.string	"independent_decode_option"
.LASF1472:
	.string	"main_input_filename"
.LASF281:
	.string	"WITH_CLEANUP_EXPR"
.LASF831:
	.string	"VALUE"
.LASF762:
	.string	"type_required"
.LASF477:
	.string	"readonly_flag"
.LASF1001:
	.string	"promoted_mode"
.LASF1343:
	.string	"__FUNCTION__"
.LASF220:
	.string	"MODE_COMPLEX_INT"
.LASF1404:
	.string	"decode_g_option"
.LASF862:
	.string	"POST_MODIFY"
.LASF424:
	.string	"BUILT_IN_NEXT_ARG"
.LASF1628:
	.string	"user_label_prefix"
.LASF1495:
	.string	"quiet_flag"
.LASF892:
	.string	"VEC_CONCAT"
.LASF63:
	.string	"reg_class"
.LASF74:
	.string	"va_list"
.LASF1174:
	.string	"format_args"
.LASF1420:
	.string	"print_single_switch"
.LASF1002:
	.string	"unsignedp"
.LASF507:
	.string	"tree_vector"
.LASF993:
	.string	"DINFO_LEVEL_NONE"
.LASF539:
	.string	"block_num"
.LASF1462:
	.string	"ix86_regparm_string"
.LASF532:
	.string	"tree_vec"
.LASF675:
	.string	"built_in_class"
.LASF877:
	.string	"UNSIGNED_FLOAT"
.LASF1057:
	.string	"basic_block"
.LASF1172:
	.string	"prefixing_rule"
.LASF1071:
	.string	"depth"
.LASF506:
	.string	"imag"
.LASF173:
	.string	"QCmode"
.LASF195:
	.string	"V8SImode"
.LASF1117:
	.string	"TV_LOCAL_ALLOC"
.LASF405:
	.string	"BUILT_IN_STRNCMP"
.LASF816:
	.string	"UNSPEC"
.LASF978:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF1158:
	.string	"DK_ANACHRONISM"
.LASF301:
	.string	"FIX_ROUND_EXPR"
.LASF964:
	.string	"NOTE_INSN_RANGE_BEG"
.LASF1153:
	.string	"DK_FATAL"
.LASF701:
	.string	"TI_UINTSI_TYPE"
.LASF1286:
	.string	"dump_file_info"
.LASF860:
	.string	"POST_INC"
.LASF1411:
	.string	"argc"
.LASF840:
	.string	"IF_THEN_ELSE"
.LASF28:
	.string	"NO_REGS"
.LASF237:
	.string	"BOOLEAN_TYPE"
.LASF381:
	.string	"BUILT_IN_LLABS"
.LASF1040:
	.string	"bits"
.LASF1019:
	.string	"x_pending_stack_adjust"
.LASF1609:
	.string	"align_jumps"
.LASF1154:
	.string	"DK_ICE"
.LASF1412:
	.string	"argv"
.LASF796:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF1160:
	.string	"DK_LAST_DIAGNOSTIC_KIND"
.LASF944:
	.string	"flags"
.LASF847:
	.string	"UMOD"
.LASF7:
	.string	"used"
.LASF1066:
	.string	"entry_edges"
.LASF1030:
	.string	"temp_slot"
.LASF85:
	.string	"FILE"
.LASF32:
	.string	"BREG"
.LASF1007:
	.string	"x_reg_rtx_no"
.LASF45:
	.string	"MMX_REGS"
.LASF427:
	.string	"BUILT_IN_FRAME_ADDRESS"
.LASF369:
	.string	"EXIT_BLOCK_EXPR"
.LASF1222:
	.string	"exception_section"
.LASF1312:
	.string	"DFI_sched"
.LASF1073:
	.string	"inner"
.LASF1281:
	.string	"print_type"
.LASF1627:
	.string	"rtl_dump_file"
.LASF302:
	.string	"FLOAT_EXPR"
.LASF84:
	.string	"char"
.LASF243:
	.string	"FILE_TYPE"
.LASF1491:
	.string	"write_symbols"
.LASF453:
	.string	"BUILT_IN_ISLESS"
.LASF1037:
	.string	"EXPAND_INITIALIZER"
.LASF1064:
	.string	"nodes"
.LASF995:
	.string	"DINFO_LEVEL_NORMAL"
.LASF347:
	.string	"ADDR_EXPR"
.LASF144:
	.string	"__jmpbuf"
.LASF1593:
	.string	"flag_strict_aliasing"
.LASF1496:
	.string	"time_report"
.LASF846:
	.string	"UDIV"
.LASF348:
	.string	"REFERENCE_EXPR"
.LASF446:
	.string	"BUILT_IN_PRINTF_UNLOCKED"
.LASF26:
	.string	"block"
.LASF624:
	.string	"stack_alignment_needed"
.LASF328:
	.string	"NE_EXPR"
.LASF1337:
	.string	"pname"
.LASF1360:
	.string	"open_dump_file"
.LASF615:
	.string	"fixup_var_refs_queue"
.LASF1486:
	.string	"flow2_completed"
.LASF1655:
	.string	"flag_ssa_dce"
.LASF1626:
	.string	"current_function_nothrow"
.LASF180:
	.string	"CHImode"
.LASF1474:
	.string	"input_file_stack"
.LASF130:
	.string	"_sch_isvsp"
.LASF1515:
	.string	"larger_than_size"
.LASF265:
	.string	"COMPONENT_REF"
.LASF232:
	.string	"INTEGER_TYPE"
.LASF649:
	.string	"uses_pic_offset_table"
.LASF391:
	.string	"BUILT_IN_CIMAGL"
.LASF689:
	.string	"pointer_alias_set"
.LASF1202:
	.string	"begin_function"
.LASF358:
	.string	"POSTINCREMENT_EXPR"
.LASF916:
	.string	"rtint"
.LASF283:
	.string	"PLACEHOLDER_EXPR"
.LASF1145:
	.string	"buffer"
.LASF1197:
	.string	"ignore_block"
.LASF1101:
	.string	"TV_PARSE"
.LASF1293:
	.string	"DFI_rtl"
.LASF1118:
	.string	"TV_GLOBAL_ALLOC"
.LASF198:
	.string	"V2SFmode"
.LASF1270:
	.string	"decode_option"
.LASF706:
	.string	"TI_INTEGER_MINUS_ONE"
.LASF1649:
	.string	"asm_file_name"
.LASF138:
	.string	"__val"
.LASF1574:
	.string	"flag_single_precision_constant"
.LASF989:
	.string	"XCOFF_DEBUG"
.LASF1448:
	.string	"target_switches"
.LASF945:
	.string	"rtunion"
.LASF1414:
	.string	"g_switch_val"
.LASF351:
	.string	"COMPLEX_EXPR"
.LASF1070:
	.string	"exits_doms"
.LASF925:
	.string	"cselib_val_struct"
.LASF1313:
	.string	"DFI_lreg"
.LASF1238:
	.string	"merge_type_attributes"
.LASF936:
	.string	"local_set"
.LASF52:
	.string	"ALL_REGS"
.LASF42:
	.string	"FP_SECOND_REG"
.LASF1344:
	.string	"read_integral_parameter"
.LASF1234:
	.string	"reorder2"
.LASF1352:
	.string	"data"
.LASF1311:
	.string	"DFI_regmove"
.LASF1450:
	.string	"W_options"
.LASF979:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF721:
	.string	"TI_PTR_TYPE"
.LASF414:
	.string	"BUILT_IN_SIN"
.LASF904:
	.string	"max_after_vec"
.LASF1355:
	.string	"output_quoted_string"
.LASF1042:
	.string	"bitmap"
.LASF1179:
	.string	"help"
.LASF1455:
	.string	"ix86_debug_addr_string"
.LASF1093:
	.string	"TV_GC"
.LASF1151:
	.string	"end_diagnostic"
.LASF100:
	.string	"_chain"
.LASF343:
	.string	"VIEW_CONVERT_EXPR"
.LASF1405:
	.string	"selected_debug_type"
.LASF55:
	.string	"words"
.LASF396:
	.string	"BUILT_IN_RINDEX"
.LASF1250:
	.string	"cannot_modify_jumps_p"
.LASF614:
	.string	"x_target_temp_slot_level"
.LASF1:
	.string	"mode"
.LASF1274:
	.string	"expand_constant"
.LASF1470:
	.string	"_sch_istable"
.LASF562:
	.string	"pointer_to"
.LASF961:
	.string	"NOTE_INSN_EH_REGION_BEG"
.LASF523:
	.string	"extra_arg"
.LASF926:
	.string	"bitmap_head_def"
.LASF1541:
	.string	"flag_move_all_movables"
.LASF122:
	.string	"_sch_isdigit"
.LASF71:
	.string	"overflow_arg_area"
.LASF72:
	.string	"reg_save_area"
.LASF126:
	.string	"_sch_isspace"
.LASF1561:
	.string	"flag_keep_inline_functions"
.LASF1378:
	.string	"at_end"
.LASF1427:
	.string	"parse_options_and_default_flags"
.LASF1203:
	.string	"end_function"
.LASF1181:
	.string	"PARAM_MAX_INLINE_INSNS"
.LASF186:
	.string	"V2HImode"
.LASF974:
	.string	"GR_FRAME_POINTER"
.LASF1008:
	.string	"x_first_label_num"
.LASF826:
	.string	"CONST_INT"
.LASF1432:
	.string	"lang_independent_init"
.LASF353:
	.string	"REALPART_EXPR"
.LASF169:
	.string	"SFmode"
.LASF805:
	.string	"ATTR_FLAG"
.LASF1363:
	.string	"close_dump_file"
.LASF1527:
	.string	"pedantic"
.LASF1499:
	.string	"warn_system_headers"
.LASF1516:
	.string	"warn_aggregate_return"
.LASF1156:
	.string	"DK_ERROR"
.LASF813:
	.string	"PARALLEL"
.LASF18:
	.string	"real_cst"
.LASF64:
	.string	"asm_dialect"
.LASF588:
	.string	"cannot_inline"
.LASF1629:
	.string	"cfun"
.LASF873:
	.string	"TRUNCATE"
.LASF992:
	.string	"debug_info_level"
.LASF10:
	.string	"rtvec"
.LASF683:
	.string	"assembler_name"
.LASF987:
	.string	"DWARF_DEBUG"
.LASF412:
	.string	"BUILT_IN_STRRCHR"
.LASF580:
	.string	"pops_args"
.LASF567:
	.string	"next_variant"
.LASF1517:
	.string	"warn_packed"
.LASF1501:
	.string	"warn_unused_function"
.LASF1533:
	.string	"flag_pcc_struct_return"
.LASF688:
	.string	"vindex"
.LASF725:
	.string	"TI_VOID_LIST_NODE"
.LASF817:
	.string	"UNSPEC_VOLATILE"
.LASF767:
	.string	"SIZETYPE"
.LASF210:
	.string	"CCZmode"
.LASF949:
	.string	"NOTE_INSN_BLOCK_BEG"
.LASF487:
	.string	"bounded_flag"
.LASF1509:
	.string	"warn_shadow"
.LASF1631:
	.string	"dump_base_name"
.LASF754:
	.string	"itk_unsigned_long"
.LASF86:
	.string	"_IO_FILE"
.LASF1613:
	.string	"align_labels_log"
.LASF1606:
	.string	"align_loops"
.LASF1209:
	.string	"asm_int_op"
.LASF598:
	.string	"x_stack_slot_list"
.LASF1029:
	.string	"initial_value_struct"
.LASF1511:
	.string	"warn_return_type"
.LASF1330:
	.string	"variable"
.LASF772:
	.string	"UBITSIZETYPE"
.LASF573:
	.string	"off_align"
.LASF609:
	.string	"x_max_parm_reg"
.LASF687:
	.string	"inlined_fns"
.LASF69:
	.string	"gp_offset"
.LASF501:
	.string	"tree_string"
.LASF1276:
	.string	"staticp"
.LASF445:
	.string	"BUILT_IN_PUTS_UNLOCKED"
.LASF1438:
	.string	"version_flag"
.LASF1155:
	.string	"DK_SORRY"
.LASF1248:
	.string	"have_named_sections"
.LASF1457:
	.string	"ix86_asm_dialect"
.LASF23:
	.string	"decl"
.LASF655:
	.string	"external_flag"
.LASF157:
	.string	"HImode"
.LASF1430:
	.string	"indep_processed"
.LASF1167:
	.string	"maximum_length"
.LASF652:
	.string	"tree_decl"
.LASF356:
	.string	"PREINCREMENT_EXPR"
.LASF811:
	.string	"NOTE"
.LASF891:
	.string	"VEC_SELECT"
.LASF34:
	.string	"DIREG"
.LASF565:
	.string	"minval"
.LASF1449:
	.string	"target_options"
.LASF1178:
	.string	"option"
.LASF704:
	.string	"TI_INTEGER_ZERO"
.LASF1444:
	.string	"debug_args"
.LASF502:
	.string	"length"
.LASF1583:
	.string	"flag_no_common"
.LASF585:
	.string	"args_info"
.LASF736:
	.string	"TI_V4SI_TYPE"
.LASF452:
	.string	"BUILT_IN_ISGREATEREQUAL"
.LASF1556:
	.string	"flag_unsafe_math_optimizations"
.LASF1305:
	.string	"DFI_cse2"
.LASF645:
	.string	"stdarg"
.LASF1552:
	.string	"flag_volatile_global"
.LASF1061:
	.string	"pre_header"
.LASF1041:
	.string	"bitmap_element"
.LASF1308:
	.string	"DFI_life"
.LASF1335:
	.string	"set_no_fast_math_flags"
.LASF872:
	.string	"ZERO_EXTEND"
.LASF783:
	.string	"MATCH_PARALLEL"
.LASF242:
	.string	"METHOD_TYPE"
.LASF1656:
	.string	"flag_leading_underscore"
.LASF792:
	.string	"DEFINE_COMBINE"
.LASF1131:
	.string	"TV_SSA_CCP"
.LASF1320:
	.string	"DFI_sched2"
.LASF474:
	.string	"constant_flag"
.LASF1406:
	.string	"type_explicitly_set_p"
.LASF1539:
	.string	"flag_unroll_loops"
.LASF428:
	.string	"BUILT_IN_RETURN_ADDRESS"
.LASF1302:
	.string	"DFI_addressof"
.LASF231:
	.string	"VOID_TYPE"
.LASF1045:
	.string	"bytes"
.LASF73:
	.string	"unsigned int"
.LASF955:
	.string	"NOTE_INSN_LOOP_END_TOP_COND"
.LASF1018:
	.string	"expr_status"
.LASF773:
	.string	"TYPE_KIND_LAST"
.LASF373:
	.string	"LAST_AND_UNUSED_TREE_CODE"
.LASF1200:
	.string	"end_prologue"
.LASF376:
	.string	"BUILT_IN_ABS"
.LASF909:
	.string	"addr_diff_vec_flags"
.LASF963:
	.string	"NOTE_INSN_REPEATED_LINE_NUMBER"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
