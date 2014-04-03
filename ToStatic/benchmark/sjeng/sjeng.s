	.file	"sjeng.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 sjeng.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	divider
	.data
	.align 32
	.type	divider, @object
	.size	divider, 50
divider:
	.string	"-------------------------------------------------"
	.globl	dummy
	.bss
	.align 16
	.type	dummy, @object
	.size	dummy, 24
dummy:
	.zero	24
	.comm	board,576,32
	.comm	moved,576,32
	.comm	ep_square,4,4
	.comm	white_to_move,4,4
	.comm	comp_color,4,4
	.comm	wking_loc,4,4
	.comm	bking_loc,4,4
	.comm	white_castled,4,4
	.comm	black_castled,4,4
	.comm	result,4,4
	.comm	ply,4,4
	.comm	pv_length,1200,32
	.comm	pieces,248,32
	.comm	squares,576,32
	.comm	num_pieces,4,4
	.comm	i_depth,4,4
	.comm	fifty,4,4
	.comm	piece_count,4,4
	.comm	nodes,4,4
	.comm	raw_nodes,4,4
	.comm	qnodes,4,4
	.comm	killer_scores,1200,32
	.comm	killer_scores2,1200,32
	.comm	killer_scores3,1200,32
	.comm	moves_to_tc,4,4
	.comm	min_per_game,4,4
	.comm	sec_per_game,4,4
	.comm	inc,4,4
	.comm	time_left,4,4
	.comm	opp_time,4,4
	.comm	time_cushion,4,4
	.comm	time_for_move,4,4
	.comm	cur_score,4,4
	.comm	history_h,82944,32
	.comm	hash_history,2400,32
	.comm	move_number,4,4
	.comm	captures,4,4
	.comm	searching_pv,4,4
	.comm	post,4,4
	.comm	time_exit,4,4
	.comm	time_failure,4,4
	.comm	xb_mode,4,4
	.comm	maxdepth,4,4
	.comm	phase,4,4
	.comm	root_to_move,4,4
	.comm	my_rating,4,4
	.comm	opp_rating,4,4
	.comm	setcode,30,16
	.comm	pv,2160000,32
	.comm	killer1,7200,32
	.comm	killer2,7200,32
	.comm	killer3,7200,32
	.comm	path_x,4800,32
	.comm	path,7200,32
	.comm	start_time,8,8
	.comm	is_promoted,248,32
	.comm	NTries,4,4
	.comm	NCuts,4,4
	.comm	TExt,4,4
	.comm	PVS,4,4
	.comm	FULL,4,4
	.comm	PVSF,4,4
	.comm	ext_check,4,4
	.comm	is_pondering,4,4
	.comm	allow_pondering,4,4
	.comm	is_analyzing,4,4
	.comm	bookidx,4,4
	.comm	Variant,4,4
	.comm	Giveaway,4,4
	.comm	my_partner,256,32
	.comm	have_partner,4,4
	.comm	must_sit,4,4
	.comm	go_fast,4,4
	.comm	fixed_time,4,4
	.comm	book_ply,4,4
	.comm	use_book,4,4
	.comm	opening_history,256,32
	.section	.rodata
.LC0:
	.string	"SPEC Workload"
.LC2:
	.string	"\nNodes: %i (%0.2f%% qnodes)\n"
	.align 8
.LC4:
	.string	"ECacheProbes : %u   ECacheHits : %u   HitRate : %f%%\n"
	.align 8
.LC5:
	.string	"TTStores : %u TTProbes : %u   TTHits : %u   HitRate : %f%%\n"
	.align 8
.LC6:
	.string	"NTries : %u  NCuts : %u  CutRate : %f%%  TExt: %u\n"
	.align 8
.LC7:
	.string	"Check extensions: %u  Razor drops : %u  Razor Material : %u\n"
.LC8:
	.string	"Move ordering : %f%%\n"
	.align 8
.LC9:
	.string	"Material score: %d   Eval : %d  MaxPosDiff: %d  White hand: %d  Black hand : %d\n"
.LC10:
	.string	"Hash : %X  HoldHash : %X\n"
.LC11:
	.string	"move %s\n"
.LC12:
	.string	"\n%s\n"
.LC13:
	.string	"0-1 {Black Mates}"
.LC14:
	.string	"1-0 {White Mates}"
.LC15:
	.string	"1/2-1/2 {Fifty move rule}"
.LC16:
	.string	"1/2-1/2 {3 fold repetition}"
.LC17:
	.string	"1/2-1/2 {Draw}"
.LC18:
	.string	"Sjeng: "
.LC19:
	.string	"Illegal move: %s\n"
.LC20:
	.string	"setboard"
.LC21:
	.string	"quit"
.LC22:
	.string	"exit"
.LC23:
	.string	"diagram"
.LC24:
	.string	"d"
.LC25:
	.string	"perft"
.LC26:
	.string	"%d"
.LC27:
	.string	"Raw nodes for depth %d: %i\n"
.LC29:
	.string	"Time : %.2f\n"
.LC30:
	.string	"new"
	.align 8
.LC31:
	.string	"tellics set 1 Sjeng SPEC 1.0 (SPEC/%s)\n"
.LC32:
	.string	"xboard"
.LC33:
	.string	"tellics set f5 1=1"
.LC34:
	.string	"nodes"
	.align 8
.LC35:
	.string	"Number of nodes: %i (%0.2f%% qnodes)\n"
.LC36:
	.string	"post"
.LC37:
	.string	"nopost"
.LC38:
	.string	"random"
.LC39:
	.string	"hard"
.LC40:
	.string	"easy"
.LC41:
	.string	"?"
.LC42:
	.string	"white"
.LC43:
	.string	"black"
.LC44:
	.string	"force"
.LC45:
	.string	"eval"
.LC46:
	.string	"Eval: %d\n"
.LC47:
	.string	"go"
.LC48:
	.string	"time"
.LC49:
	.string	"%i"
.LC50:
	.string	"otim"
.LC51:
	.string	"level"
.LC52:
	.string	"%i %i:%i %i"
.LC53:
	.string	"%i %i %i"
.LC54:
	.string	"rating"
.LC55:
	.string	"%i %i"
.LC56:
	.string	"holding"
.LC57:
	.string	"variant"
.LC58:
	.string	"normal"
.LC59:
	.string	"crazyhouse"
.LC60:
	.string	"bughouse"
.LC61:
	.string	"suicide"
.LC62:
	.string	"giveaway"
.LC63:
	.string	"losers"
.LC64:
	.string	"analyze"
.LC65:
	.string	"undo"
.LC66:
	.string	"Move number : %d\n"
.LC67:
	.string	"remove"
.LC68:
	.string	"edit"
.LC69:
	.string	"."
.LC70:
	.string	"c"
.LC71:
	.string	"#"
.LC72:
	.string	"partner"
.LC73:
	.string	"$partner"
.LC74:
	.string	"ptell"
.LC75:
	.string	"test"
.LC76:
	.string	"st"
.LC77:
	.string	"result"
.LC78:
	.string	"prove"
.LC79:
	.string	"\nMax time to search (s): "
.LC80:
	.string	"ping"
.LC81:
	.string	"pong %d\n"
.LC82:
	.string	"fritz"
.LC83:
	.string	"reset"
.LC84:
	.string	"sd"
.LC85:
	.string	"New max depth set to: %d\n"
.LC86:
	.string	"auto"
.LC87:
	.string	"protover"
	.align 8
.LC88:
	.string	"feature ping=0 setboard=1 playother=0 san=0 usermove=0 time=1"
	.align 8
.LC89:
	.string	"feature draw=0 sigint=0 sigterm=0 reuse=1 analyze=0"
	.align 8
.LC90:
	.string	"feature myname=\"Sjeng SPEC 1.0\""
	.align 8
.LC91:
	.string	"feature variants=\"normal,bughouse,crazyhouse,suicide,giveaway,losers\""
	.align 8
.LC92:
	.string	"feature colors=1 ics=0 name=0 pause=0 done=1"
.LC93:
	.string	"accepted"
.LC94:
	.string	"rejected"
	.align 8
.LC95:
	.string	"Interface does not support a required feature...expect trouble."
.LC96:
	.string	"help"
.LC97:
	.string	"\n%s\n\n"
	.align 8
.LC98:
	.string	"diagram/d:       toggle diagram display"
	.align 8
.LC99:
	.string	"exit/quit:       terminate Sjeng"
	.align 8
.LC100:
	.string	"go:              make Sjeng play the side to move"
	.align 8
.LC101:
	.string	"new:             start a new game"
	.align 8
.LC102:
	.string	"level <x>:       the xboard style command to set time"
	.align 8
.LC103:
	.string	"  <x> should be in the form: <a> <b> <c> where:"
	.align 8
.LC104:
	.string	"  a -> moves to TC (0 if using an ICS style TC)"
.LC105:
	.string	"  b -> minutes per game"
.LC106:
	.string	"  c -> increment in seconds"
	.align 8
.LC107:
	.string	"nodes:           outputs the number of nodes searched"
	.align 8
.LC108:
	.string	"perft <x>:       compute raw nodes to depth x"
	.align 8
.LC109:
	.string	"post:            toggles thinking output"
	.align 8
.LC110:
	.string	"xboard:          put Sjeng into xboard mode"
	.align 8
.LC111:
	.string	"test:            run an EPD testsuite"
	.align 8
.LC112:
	.string	"speed:           test movegen and evaluation speed"
	.align 8
.LC113:
	.string	"proof:           try to prove or disprove the current pos"
	.align 8
.LC114:
	.string	"sd <x>:          limit thinking to depth x"
	.align 8
.LC115:
	.string	"st <x>:          limit thinking to x centiseconds"
	.align 8
.LC116:
	.string	"setboard <FEN>:  set board to a specified FEN string"
	.align 8
.LC117:
	.string	"undo:            back up a half move"
	.align 8
.LC118:
	.string	"remove:          back up a full move"
	.align 8
.LC119:
	.string	"force:           disable computer moving"
	.align 8
.LC120:
	.string	"auto:            computer plays both sides"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.file 1 "sjeng.c"
	.loc 1 75 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$24984, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edi, -24932(%rbp)	# argc, argc
	movq	%rsi, -24944(%rbp)	# argv, argv
	.loc 1 75 0
	movq	%fs:40, %rax	#, tmp702
	movq	%rax, -40(%rbp)	# tmp702, D.4660
	xorl	%eax, %eax	# tmp702
	.loc 1 80 0
	movl	$4, -24928(%rbp)	#, depth
	.loc 1 90 0
	call	read_rcfile	#
	.loc 1 91 0
	call	initialize_zobrist	#
	.loc 1 93 0
	movl	$2, Variant(%rip)	#, Variant
	.loc 1 96 0
	movq	std_material(%rip), %rax	# MEM[(char * {ref-all})&std_material], tmp398
	movq	%rax, material(%rip)	# tmp398, MEM[(char * {ref-all})&material]
	movq	std_material+8(%rip), %rax	# MEM[(char * {ref-all})&std_material], tmp399
	movq	%rax, material+8(%rip)	# tmp399, MEM[(char * {ref-all})&material]
	movq	std_material+16(%rip), %rax	# MEM[(char * {ref-all})&std_material], tmp400
	movq	%rax, material+16(%rip)	# tmp400, MEM[(char * {ref-all})&material]
	movq	std_material+24(%rip), %rax	# MEM[(char * {ref-all})&std_material], tmp401
	movq	%rax, material+24(%rip)	# tmp401, MEM[(char * {ref-all})&material]
	movq	std_material+32(%rip), %rax	# MEM[(char * {ref-all})&std_material], tmp402
	movq	%rax, material+32(%rip)	# tmp402, MEM[(char * {ref-all})&material]
	movq	std_material+40(%rip), %rax	# MEM[(char * {ref-all})&std_material], tmp403
	movq	%rax, material+40(%rip)	# tmp403, MEM[(char * {ref-all})&material]
	movq	std_material+48(%rip), %rax	# MEM[(char * {ref-all})&std_material], tmp404
	movq	%rax, material+48(%rip)	# tmp404, MEM[(char * {ref-all})&material]
	.loc 1 99 0
	call	init_game	#
	.loc 1 101 0
	call	initialize_hash	#
	.loc 1 102 0
	call	clear_tt	#
	.loc 1 103 0
	call	reset_ecache	#
	.loc 1 105 0
	movl	$0, ECacheProbes(%rip)	#, ECacheProbes
	.loc 1 106 0
	movl	$0, ECacheHits(%rip)	#, ECacheHits
	.loc 1 107 0
	movl	$0, TTProbes(%rip)	#, TTProbes
	.loc 1 108 0
	movl	$0, TTStores(%rip)	#, TTStores
	.loc 1 109 0
	movl	$0, TTHits(%rip)	#, TTHits
	.loc 1 110 0
	movl	$0, bookidx(%rip)	#, bookidx
	.loc 1 111 0
	movl	$0, total_moves(%rip)	#, total_moves
	.loc 1 112 0
	movl	$0, ply(%rip)	#, ply
	.loc 1 113 0
	movl	$0, -24904(%rbp)	#, braindeadinterface
	.loc 1 114 0
	movl	$40, moves_to_tc(%rip)	#, moves_to_tc
	.loc 1 115 0
	movl	$5, min_per_game(%rip)	#, min_per_game
	.loc 1 116 0
	movl	$30000, time_left(%rip)	#, time_left
	.loc 1 117 0
	movl	$2000, opp_rating(%rip)	#, opp_rating
	movl	opp_rating(%rip), %eax	# opp_rating, opp_rating.0
	movl	%eax, my_rating(%rip)	# opp_rating.0, my_rating
	.loc 1 118 0
	movl	$40, maxdepth(%rip)	#, maxdepth
	.loc 1 119 0
	movl	$200, maxposdiff(%rip)	#, maxposdiff
	.loc 1 120 0
	movl	$1, must_go(%rip)	#, must_go
	.loc 1 121 0
	movl	$1, tradefreely(%rip)	#, tradefreely
	.loc 1 122 0
	movl	$0, -24900(%rbp)	#, automode
	.loc 1 124 0
	movl	$0, xb_mode(%rip)	#, xb_mode
	.loc 1 125 0
	movl	$0, -24916(%rbp)	#, force_mode
	.loc 1 126 0
	movl	$0, comp_color(%rip)	#, comp_color
	.loc 1 127 0
	movl	$0, -24908(%rbp)	#, edit_color
	.loc 1 128 0
	movl	$1, -24924(%rbp)	#, show_board
	.loc 1 129 0
	movl	$0, is_pondering(%rip)	#, is_pondering
	.loc 1 130 0
	movl	$1, allow_pondering(%rip)	#, allow_pondering
	.loc 1 131 0
	movl	$0, is_analyzing(%rip)	#, is_analyzing
	.loc 1 132 0
	movl	$0, -24912(%rbp)	#, is_edit_mode
	.loc 1 133 0
	movl	$0, have_partner(%rip)	#, have_partner
	.loc 1 134 0
	movl	$0, must_sit(%rip)	#, must_sit
	.loc 1 135 0
	movl	$0, go_fast(%rip)	#, go_fast
	.loc 1 136 0
	movl	$0, fixed_time(%rip)	#, fixed_time
	.loc 1 137 0
	movl	$0, phase(%rip)	#, phase
	.loc 1 138 0
	movl	$0, root_to_move(%rip)	#, root_to_move
	.loc 1 139 0
	movl	$0, kibitzed(%rip)	#, kibitzed
	.loc 1 141 0
	movl	$0, move_number(%rip)	#, move_number
	.loc 1 142 0
	leaq	-15216(%rbp), %rax	#, tmp405
	movl	$14400, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp405,
	call	memset	#
	.loc 1 143 0
	leaq	-24816(%rbp), %rax	#, tmp406
	movl	$9600, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp406,
	call	memset	#
	.loc 1 145 0
	movl	move_number(%rip), %eax	# move_number, move_number.1
	movl	hash(%rip), %edx	# hash, hash.2
	cltq
	movl	%edx, hash_history(,%rax,4)	# hash.2, hash_history
	.loc 1 147 0
	movq	stdout(%rip), %rax	# stdout, stdout.3
	movl	$0, %esi	#,
	movq	%rax, %rdi	# stdout.3,
	call	setbuf	#
	.loc 1 148 0
	movq	stdin(%rip), %rax	# stdin, stdin.4
	movl	$0, %esi	#,
	movq	%rax, %rdi	# stdin.4,
	call	setbuf	#
	.loc 1 149 0
	call	start_up	#
	.loc 1 152 0
	cmpl	$2, -24932(%rbp)	#, argc
	jne	.L2	#,
	.loc 1 154 0
	movl	$.LC0, %edi	#,
	call	puts	#
	.loc 1 155 0
	movq	-24944(%rbp), %rax	# argv, tmp408
	addq	$8, %rax	#, D.4643
	movq	(%rax), %rax	# *_29, D.4644
	movq	%rax, %rdi	# D.4644,
	call	run_autotest	#
.L2:
	.loc 1 162 0
	cmpl	$0, -24912(%rbp)	#, is_edit_mode
	jne	.L3	#,
	.loc 1 162 0 is_stmt 0 discriminator 1
	movl	comp_color(%rip), %edx	# comp_color, comp_color.5
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.6
	cmpl	%eax, %edx	# white_to_move.6, comp_color.5
	je	.L4	#,
	cmpl	$0, -24900(%rbp)	#, automode
	je	.L3	#,
.L4:
	.loc 1 163 0 is_stmt 1
	cmpl	$0, -24916(%rbp)	#, force_mode
	jne	.L3	#,
	.loc 1 163 0 is_stmt 0 discriminator 1
	movl	must_sit(%rip), %eax	# must_sit, must_sit.7
	testl	%eax, %eax	# must_sit.7
	jne	.L3	#,
	movl	result(%rip), %eax	# result, result.8
	testl	%eax, %eax	# result.8
	jne	.L3	#,
	.loc 1 166 0 is_stmt 1
	movl	$0, is_pondering(%rip)	#, is_pondering
	.loc 1 168 0
	leaq	-24976(%rbp), %rax	#, tmp409
	movq	%rax, %rdi	# tmp409,
	call	think	#
	movq	-24976(%rbp), %rax	#, tmp410
	movq	%rax, -24848(%rbp)	# tmp410, comp_move
	movq	-24968(%rbp), %rax	#, tmp411
	movq	%rax, -24840(%rbp)	# tmp411, comp_move
	movq	-24960(%rbp), %rax	#, tmp412
	movq	%rax, -24832(%rbp)	# tmp412, comp_move
	.loc 1 170 0
	movl	$0, ply(%rip)	#, ply
	.loc 1 173 0
	movl	must_sit(%rip), %eax	# must_sit, must_sit.9
	testl	%eax, %eax	# must_sit.9
	je	.L5	#,
	.loc 1 173 0 is_stmt 0 discriminator 1
	movl	must_go(%rip), %eax	# must_go, must_go.10
	testl	%eax, %eax	# must_go.10
	je	.L3	#,
.L5:
	.loc 1 177 0 is_stmt 1
	movl	Variant(%rip), %eax	# Variant, Variant.11
	.loc 1 176 0
	cmpl	$4, %eax	#, Variant.11
	je	.L6	#,
	.loc 1 177 0
	movl	Variant(%rip), %eax	# Variant, Variant.12
	cmpl	$3, %eax	#, Variant.12
	jne	.L7	#,
.L6:
	.loc 1 179 0
	movl	result(%rip), %eax	# result, result.13
	.loc 1 178 0
	cmpl	$2, %eax	#, result.13
	je	.L7	#,
	.loc 1 179 0
	movl	result(%rip), %eax	# result, result.14
	cmpl	$3, %eax	#, result.14
	jne	.L8	#,
.L7:
	.loc 1 181 0
	movl	Variant(%rip), %eax	# Variant, Variant.15
	.loc 1 180 0
	cmpl	$2, %eax	#, Variant.15
	je	.L9	#,
	.loc 1 181 0
	movl	Variant(%rip), %eax	# Variant, Variant.16
	testl	%eax, %eax	# Variant.16
	je	.L9	#,
	.loc 1 181 0 is_stmt 0 discriminator 1
	movl	Variant(%rip), %eax	# Variant, Variant.17
	cmpl	$1, %eax	#, Variant.17
	jne	.L10	#,
.L9:
	.loc 1 182 0 is_stmt 1
	movl	comp_color(%rip), %eax	# comp_color, comp_color.18
	cmpl	$1, %eax	#, comp_color.18
	jne	.L11	#,
	.loc 1 182 0 is_stmt 0 discriminator 1
	movl	result(%rip), %eax	# result, result.19
	cmpl	$2, %eax	#, result.19
	jne	.L8	#,
.L11:
	.loc 1 184 0 is_stmt 1
	movl	comp_color(%rip), %eax	# comp_color, comp_color.20
	.loc 1 183 0
	testl	%eax, %eax	# comp_color.20
	jne	.L10	#,
	.loc 1 184 0
	movl	result(%rip), %eax	# result, result.21
	cmpl	$3, %eax	#, result.21
	je	.L10	#,
.L8:
	.loc 1 186 0
	movl	result(%rip), %eax	# result, result.22
	cmpl	$1, %eax	#, result.22
	je	.L10	#,
	.loc 1 187 0
	movl	result(%rip), %eax	# result, result.23
	cmpl	$4, %eax	#, result.23
	je	.L10	#,
	.loc 1 188 0
	movl	result(%rip), %eax	# result, result.24
	cmpl	$5, %eax	#, result.24
	je	.L10	#,
	.loc 1 191 0
	leaq	-560(%rbp), %rax	#, tmp413
	movq	-24848(%rbp), %rdx	# comp_move, tmp414
	movq	%rdx, (%rsp)	# tmp414,
	movq	-24840(%rbp), %rdx	# comp_move, tmp415
	movq	%rdx, 8(%rsp)	# tmp415,
	movq	-24832(%rbp), %rdx	# comp_move, tmp416
	movq	%rdx, 16(%rsp)	# tmp416,
	movq	%rax, %rdi	# tmp413,
	call	comp_to_coord	#
	.loc 1 193 0
	movl	move_number(%rip), %eax	# move_number, move_number.25
	movl	hash(%rip), %edx	# hash, hash.26
	cltq
	movl	%edx, hash_history(,%rax,4)	# hash.26, hash_history
	.loc 1 195 0
	movl	move_number(%rip), %eax	# move_number, move_number.27
	movslq	%eax, %rdx	# move_number.27, tmp418
	movq	%rdx, %rax	# tmp418, tmp419
	addq	%rax, %rax	# tmp419
	addq	%rdx, %rax	# tmp418, tmp419
	salq	$3, %rax	#, tmp420
	leaq	-32(%rbp), %rbx	#, tmp703
	addq	%rbx, %rax	# tmp703, tmp421
	subq	$15184, %rax	#, tmp422
	movq	-24848(%rbp), %rdx	# comp_move, tmp423
	movq	%rdx, (%rax)	# tmp423, game_history
	movq	-24840(%rbp), %rdx	# comp_move, tmp424
	movq	%rdx, 8(%rax)	# tmp424, game_history
	movq	-24832(%rbp), %rdx	# comp_move, tmp425
	movq	%rdx, 16(%rax)	# tmp425, game_history
	.loc 1 196 0
	leaq	-24848(%rbp), %rax	#, tmp426
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp426,
	call	make	#
	.loc 1 199 0
	movl	move_number(%rip), %eax	# move_number, move_number.28
	leal	1(%rax), %edx	#, move_number.30
	movl	%edx, move_number(%rip)	# move_number.30, move_number
	cltq
	salq	$4, %rax	#, tmp428
	leaq	-32(%rbp), %rbx	#, tmp704
	addq	%rbx, %rax	# tmp704, tmp429
	leaq	-24784(%rax), %rcx	#, tmp430
	movq	path_x(%rip), %rax	# path_x, tmp431
	movq	path_x+8(%rip), %rdx	# path_x,
	movq	%rax, (%rcx)	# tmp431, game_history_x
	movq	%rdx, 8(%rcx)	#, game_history_x
	.loc 1 201 0
	movl	$0, userealholdings(%rip)	#, userealholdings
	.loc 1 202 0
	movl	must_go(%rip), %eax	# must_go, must_go.31
	subl	$1, %eax	#, must_go.32
	movl	%eax, must_go(%rip)	# must_go.32, must_go
	.loc 1 205 0
	call	is_draw	#
	testl	%eax, %eax	# D.4645
	je	.L12	#,
	.loc 1 206 0
	movl	$5, result(%rip)	#, result
	jmp	.L13	#
.L12:
	.loc 1 208 0
	movl	fifty(%rip), %eax	# fifty, fifty.33
	cmpl	$100, %eax	#, fifty.33
	jle	.L13	#,
	.loc 1 209 0
	movl	$4, result(%rip)	#, result
.L13:
	.loc 1 212 0
	movl	root_to_move(%rip), %eax	# root_to_move, root_to_move.34
	xorl	$1, %eax	#, root_to_move.35
	movl	%eax, root_to_move(%rip)	# root_to_move.35, root_to_move
	.loc 1 214 0
	call	reset_piece_square	#
	.loc 1 216 0
	movl	book_ply(%rip), %eax	# book_ply, book_ply.36
	cmpl	$39, %eax	#, book_ply.36
	jg	.L14	#,
	.loc 1 217 0
	movl	book_ply(%rip), %eax	# book_ply, book_ply.37
	testl	%eax, %eax	# book_ply.37
	jne	.L15	#,
	.loc 1 218 0
	leaq	-560(%rbp), %rax	#, tmp432
	movq	%rax, %rsi	# tmp432,
	movl	$opening_history, %edi	#,
	call	strcpy	#
	jmp	.L14	#
.L15:
	.loc 1 221 0
	leaq	-560(%rbp), %rax	#, tmp433
	movq	%rax, %rsi	# tmp433,
	movl	$opening_history, %edi	#,
	call	strcat	#
.L14:
	.loc 1 225 0
	movl	book_ply(%rip), %eax	# book_ply, book_ply.38
	addl	$1, %eax	#, book_ply.39
	movl	%eax, book_ply(%rip)	# book_ply.39, book_ply
	.loc 1 228 0
	movl	qnodes(%rip), %eax	# qnodes, qnodes.40
	cvtsi2ss	%eax, %xmm0	# qnodes.40, D.4646
	movl	nodes(%rip), %eax	# nodes, nodes.41
	cvtsi2ss	%eax, %xmm1	# nodes.41, D.4646
	divss	%xmm1, %xmm0	# D.4646, D.4646
	movss	.LC1(%rip), %xmm1	#, tmp434
	mulss	%xmm1, %xmm0	# tmp434, D.4646
	.loc 1 227 0
	unpcklps	%xmm0, %xmm0	# D.4646, D.4646
	cvtps2pd	%xmm0, %xmm0	# D.4646, D.4647
	movl	nodes(%rip), %eax	# nodes, nodes.42
	movl	%eax, %esi	# nodes.42,
	movl	$.LC2, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
	.loc 1 232 0
	movl	ECacheHits(%rip), %eax	# ECacheHits, ECacheHits.43
	movl	%eax, %eax	# ECacheHits.43, tmp435
	testq	%rax, %rax	# tmp435
	js	.L16	#,
	cvtsi2ssq	%rax, %xmm0	# tmp435, D.4646
	jmp	.L17	#
.L16:
	movq	%rax, %rdx	# tmp435, tmp437
	shrq	%rdx	# tmp437
	andl	$1, %eax	#, tmp438
	orq	%rax, %rdx	# tmp438, tmp437
	cvtsi2ssq	%rdx, %xmm0	# tmp437, tmp436
	addss	%xmm0, %xmm0	# tmp436, D.4646
.L17:
	movl	ECacheProbes(%rip), %eax	# ECacheProbes, ECacheProbes.44
	movl	%eax, %eax	# ECacheProbes.44, tmp439
	testq	%rax, %rax	# tmp439
	js	.L18	#,
	cvtsi2ssq	%rax, %xmm1	# tmp439, D.4646
	jmp	.L19	#
.L18:
	movq	%rax, %rdx	# tmp439, tmp441
	shrq	%rdx	# tmp441
	andl	$1, %eax	#, tmp442
	orq	%rax, %rdx	# tmp442, tmp441
	cvtsi2ssq	%rdx, %xmm1	# tmp441, tmp440
	addss	%xmm1, %xmm1	# tmp440, D.4646
.L19:
	movss	.LC3(%rip), %xmm2	#, tmp443
	addss	%xmm2, %xmm1	# tmp443, D.4646
	divss	%xmm1, %xmm0	# D.4646, D.4646
	movss	.LC1(%rip), %xmm1	#, tmp444
	mulss	%xmm1, %xmm0	# tmp444, D.4646
	.loc 1 230 0
	unpcklps	%xmm0, %xmm0	# D.4646, D.4646
	cvtps2pd	%xmm0, %xmm0	# D.4646, D.4647
	movl	ECacheHits(%rip), %edx	# ECacheHits, ECacheHits.45
	movl	ECacheProbes(%rip), %eax	# ECacheProbes, ECacheProbes.46
	movl	%eax, %esi	# ECacheProbes.46,
	movl	$.LC4, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
	.loc 1 236 0
	movl	TTHits(%rip), %eax	# TTHits, TTHits.47
	movl	%eax, %eax	# TTHits.47, tmp445
	testq	%rax, %rax	# tmp445
	js	.L20	#,
	cvtsi2ssq	%rax, %xmm0	# tmp445, D.4646
	jmp	.L21	#
.L20:
	movq	%rax, %rdx	# tmp445, tmp447
	shrq	%rdx	# tmp447
	andl	$1, %eax	#, tmp448
	orq	%rax, %rdx	# tmp448, tmp447
	cvtsi2ssq	%rdx, %xmm0	# tmp447, tmp446
	addss	%xmm0, %xmm0	# tmp446, D.4646
.L21:
	movl	TTProbes(%rip), %eax	# TTProbes, TTProbes.48
	movl	%eax, %eax	# TTProbes.48, tmp449
	testq	%rax, %rax	# tmp449
	js	.L22	#,
	cvtsi2ssq	%rax, %xmm1	# tmp449, D.4646
	jmp	.L23	#
.L22:
	movq	%rax, %rdx	# tmp449, tmp451
	shrq	%rdx	# tmp451
	andl	$1, %eax	#, tmp452
	orq	%rax, %rdx	# tmp452, tmp451
	cvtsi2ssq	%rdx, %xmm1	# tmp451, tmp450
	addss	%xmm1, %xmm1	# tmp450, D.4646
.L23:
	movss	.LC3(%rip), %xmm2	#, tmp453
	addss	%xmm2, %xmm1	# tmp453, D.4646
	divss	%xmm1, %xmm0	# D.4646, D.4646
	movss	.LC1(%rip), %xmm1	#, tmp454
	mulss	%xmm1, %xmm0	# tmp454, D.4646
	.loc 1 234 0
	unpcklps	%xmm0, %xmm0	# D.4646, D.4646
	cvtps2pd	%xmm0, %xmm0	# D.4646, D.4647
	movl	TTHits(%rip), %ecx	# TTHits, TTHits.49
	movl	TTProbes(%rip), %edx	# TTProbes, TTProbes.50
	movl	TTStores(%rip), %eax	# TTStores, TTStores.51
	movl	%eax, %esi	# TTStores.51,
	movl	$.LC5, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
	.loc 1 238 0
	movl	TExt(%rip), %ecx	# TExt, TExt.52
	.loc 1 239 0
	movl	NCuts(%rip), %eax	# NCuts, NCuts.53
	movl	%eax, %eax	# NCuts.53, tmp455
	testq	%rax, %rax	# tmp455
	js	.L24	#,
	cvtsi2ssq	%rax, %xmm0	# tmp455, D.4646
	jmp	.L25	#
.L24:
	movq	%rax, %rdx	# tmp455, tmp457
	shrq	%rdx	# tmp457
	andl	$1, %eax	#, tmp458
	orq	%rax, %rdx	# tmp458, tmp457
	cvtsi2ssq	%rdx, %xmm0	# tmp457, tmp456
	addss	%xmm0, %xmm0	# tmp456, D.4646
.L25:
	movss	.LC1(%rip), %xmm1	#, tmp459
	mulss	%xmm0, %xmm1	# D.4646, D.4646
	movl	NTries(%rip), %eax	# NTries, NTries.54
	movl	%eax, %eax	# NTries.54, tmp460
	testq	%rax, %rax	# tmp460
	js	.L26	#,
	cvtsi2ssq	%rax, %xmm0	# tmp460, D.4646
	jmp	.L27	#
.L26:
	movq	%rax, %rdx	# tmp460, tmp462
	shrq	%rdx	# tmp462
	andl	$1, %eax	#, tmp463
	orq	%rax, %rdx	# tmp463, tmp462
	cvtsi2ssq	%rdx, %xmm0	# tmp462, tmp461
	addss	%xmm0, %xmm0	# tmp461, D.4646
.L27:
	movss	.LC3(%rip), %xmm2	#, tmp464
	addss	%xmm2, %xmm0	# tmp464, D.4646
	divss	%xmm0, %xmm1	# D.4646, D.4646
	movaps	%xmm1, %xmm0	# D.4646, D.4646
	.loc 1 238 0
	unpcklps	%xmm0, %xmm0	# D.4646, D.4646
	cvtps2pd	%xmm0, %xmm0	# D.4646, D.4647
	movl	NCuts(%rip), %edx	# NCuts, NCuts.55
	movl	NTries(%rip), %eax	# NTries, NTries.56
	movl	%eax, %esi	# NTries.56,
	movl	$.LC6, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
	.loc 1 241 0
	movl	razor_material(%rip), %ecx	# razor_material, razor_material.57
	movl	razor_drop(%rip), %edx	# razor_drop, razor_drop.58
	movl	ext_check(%rip), %eax	# ext_check, ext_check.59
	movl	%eax, %esi	# ext_check.59,
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 243 0
	movl	FHF(%rip), %eax	# FHF, FHF.60
	movl	%eax, %eax	# FHF.60, tmp465
	testq	%rax, %rax	# tmp465
	js	.L28	#,
	cvtsi2ssq	%rax, %xmm0	# tmp465, D.4646
	jmp	.L29	#
.L28:
	movq	%rax, %rdx	# tmp465, tmp467
	shrq	%rdx	# tmp467
	andl	$1, %eax	#, tmp468
	orq	%rax, %rdx	# tmp468, tmp467
	cvtsi2ssq	%rdx, %xmm0	# tmp467, tmp466
	addss	%xmm0, %xmm0	# tmp466, D.4646
.L29:
	movss	.LC1(%rip), %xmm1	#, tmp469
	mulss	%xmm0, %xmm1	# D.4646, D.4646
	movl	FH(%rip), %eax	# FH, FH.61
	addl	$1, %eax	#, D.4648
	movl	%eax, %eax	# D.4648, tmp470
	testq	%rax, %rax	# tmp470
	js	.L30	#,
	cvtsi2ssq	%rax, %xmm0	# tmp470, D.4646
	jmp	.L31	#
.L30:
	movq	%rax, %rdx	# tmp470, tmp472
	shrq	%rdx	# tmp472
	andl	$1, %eax	#, tmp473
	orq	%rax, %rdx	# tmp473, tmp472
	cvtsi2ssq	%rdx, %xmm0	# tmp472, tmp471
	addss	%xmm0, %xmm0	# tmp471, D.4646
.L31:
	divss	%xmm0, %xmm1	# D.4646, D.4646
	movaps	%xmm1, %xmm0	# D.4646, D.4646
	unpcklps	%xmm0, %xmm0	# D.4646, D.4646
	cvtps2pd	%xmm0, %xmm0	# D.4646, D.4647
	movl	$.LC8, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
	.loc 1 245 0
	movl	black_hand_eval(%rip), %r13d	# black_hand_eval, black_hand_eval.62
	movl	white_hand_eval(%rip), %r12d	# white_hand_eval, white_hand_eval.63
	movl	maxposdiff(%rip), %ebx	# maxposdiff, maxposdiff.64
	movl	$1000000, %esi	#,
	movl	$-1000000, %edi	#,
	call	eval	#
	movl	%eax, %edx	#, D.4649
	movl	Material(%rip), %eax	# Material, Material.65
	movl	%r13d, %r9d	# black_hand_eval.62,
	movl	%r12d, %r8d	# white_hand_eval.63,
	movl	%ebx, %ecx	# maxposdiff.64,
	movl	%eax, %esi	# Material.65,
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 248 0
	movl	hold_hash(%rip), %edx	# hold_hash, hold_hash.66
	movl	hash(%rip), %eax	# hash, hash.67
	movl	%eax, %esi	# hash.67,
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 251 0
	movl	result(%rip), %eax	# result, result.68
	testl	%eax, %eax	# result.68
	jne	.L32	#,
	.loc 1 252 0
	movl	xb_mode(%rip), %eax	# xb_mode, xb_mode.69
	testl	%eax, %eax	# xb_mode.69
	je	.L33	#,
	.loc 1 255 0
	movl	-24848(%rbp), %edx	# comp_move.from, D.4649
	movl	dummy(%rip), %eax	# dummy.from, D.4649
	cmpl	%eax, %edx	# D.4649, D.4649
	jne	.L34	#,
	.loc 1 255 0 is_stmt 0 discriminator 1
	movl	-24844(%rbp), %edx	# comp_move.target, D.4649
	movl	dummy+4(%rip), %eax	# dummy.target, D.4649
	cmpl	%eax, %edx	# D.4649, D.4649
	je	.L35	#,
.L34:
	.loc 1 256 0 is_stmt 1
	leaq	-560(%rbp), %rax	#, tmp474
	movq	%rax, %rsi	# tmp474,
	movl	$.LC11, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L35:
	.loc 1 258 0
	movl	Variant(%rip), %eax	# Variant, Variant.70
	cmpl	$1, %eax	#, Variant.70
	jne	.L39	#,
	.loc 1 260 0
	movl	$0, %edi	#,
	call	CheckBadFlow	#
	jmp	.L39	#
.L33:
	.loc 1 264 0
	movl	-24848(%rbp), %edx	# comp_move.from, D.4649
	movl	dummy(%rip), %eax	# dummy.from, D.4649
	cmpl	%eax, %edx	# D.4649, D.4649
	jne	.L38	#,
	.loc 1 264 0 is_stmt 0 discriminator 1
	movl	-24844(%rbp), %edx	# comp_move.target, D.4649
	movl	dummy+4(%rip), %eax	# dummy.target, D.4649
	cmpl	%eax, %edx	# D.4649, D.4649
	je	.L39	#,
.L38:
	.loc 1 265 0 is_stmt 1
	leaq	-560(%rbp), %rax	#, tmp475
	movq	%rax, %rsi	# tmp475,
	movl	$.LC12, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 251 0
	jmp	.L3	#
.L32:
	.loc 1 269 0
	movl	xb_mode(%rip), %eax	# xb_mode, xb_mode.71
	testl	%eax, %eax	# xb_mode.71
	je	.L40	#,
	.loc 1 270 0
	movl	-24848(%rbp), %edx	# comp_move.from, D.4649
	movl	dummy(%rip), %eax	# dummy.from, D.4649
	cmpl	%eax, %edx	# D.4649, D.4649
	jne	.L41	#,
	.loc 1 270 0 is_stmt 0 discriminator 1
	movl	-24844(%rbp), %edx	# comp_move.target, D.4649
	movl	dummy+4(%rip), %eax	# dummy.target, D.4649
	cmpl	%eax, %edx	# D.4649, D.4649
	je	.L43	#,
.L41:
	.loc 1 271 0 is_stmt 1
	leaq	-560(%rbp), %rax	#, tmp476
	movq	%rax, %rsi	# tmp476,
	movl	$.LC11, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	jmp	.L43	#
.L40:
	.loc 1 274 0
	movl	-24848(%rbp), %edx	# comp_move.from, D.4649
	movl	dummy(%rip), %eax	# dummy.from, D.4649
	cmpl	%eax, %edx	# D.4649, D.4649
	jne	.L44	#,
	.loc 1 274 0 is_stmt 0 discriminator 1
	movl	-24844(%rbp), %edx	# comp_move.target, D.4649
	movl	dummy+4(%rip), %eax	# dummy.target, D.4649
	cmpl	%eax, %edx	# D.4649, D.4649
	je	.L43	#,
.L44:
	.loc 1 275 0 is_stmt 1
	leaq	-560(%rbp), %rax	#, tmp477
	movq	%rax, %rsi	# tmp477,
	movl	$.LC12, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L43:
	.loc 1 277 0
	movl	result(%rip), %eax	# result, result.72
	cmpl	$2, %eax	#, result.72
	jne	.L45	#,
	.loc 1 278 0
	movl	$.LC13, %edi	#,
	call	puts	#
	jmp	.L46	#
.L45:
	.loc 1 280 0
	movl	result(%rip), %eax	# result, result.73
	cmpl	$3, %eax	#, result.73
	jne	.L47	#,
	.loc 1 281 0
	movl	$.LC14, %edi	#,
	call	puts	#
	jmp	.L46	#
.L47:
	.loc 1 283 0
	movl	result(%rip), %eax	# result, result.74
	cmpl	$4, %eax	#, result.74
	jne	.L48	#,
	.loc 1 284 0
	movl	$.LC15, %edi	#,
	call	puts	#
	jmp	.L46	#
.L48:
	.loc 1 286 0
	movl	result(%rip), %eax	# result, result.75
	cmpl	$5, %eax	#, result.75
	jne	.L49	#,
	.loc 1 287 0
	movl	$.LC16, %edi	#,
	call	puts	#
	jmp	.L46	#
.L49:
	.loc 1 290 0
	movl	$.LC17, %edi	#,
	call	puts	#
.L46:
	.loc 1 292 0
	movl	$0, -24900(%rbp)	#, automode
	.loc 1 251 0
	jmp	.L3	#
.L39:
	jmp	.L3	#
.L10:
	.loc 1 297 0
	movl	result(%rip), %eax	# result, result.76
	cmpl	$2, %eax	#, result.76
	jne	.L50	#,
	.loc 1 298 0
	movl	$.LC13, %edi	#,
	call	puts	#
	jmp	.L51	#
.L50:
	.loc 1 300 0
	movl	result(%rip), %eax	# result, result.77
	cmpl	$3, %eax	#, result.77
	jne	.L52	#,
	.loc 1 301 0
	movl	$.LC14, %edi	#,
	call	puts	#
	jmp	.L51	#
.L52:
	.loc 1 303 0
	movl	result(%rip), %eax	# result, result.78
	cmpl	$4, %eax	#, result.78
	jne	.L53	#,
	.loc 1 304 0
	movl	$.LC15, %edi	#,
	call	puts	#
	jmp	.L51	#
.L53:
	.loc 1 306 0
	movl	result(%rip), %eax	# result, result.79
	cmpl	$5, %eax	#, result.79
	jne	.L54	#,
	.loc 1 307 0
	movl	$.LC16, %edi	#,
	call	puts	#
	jmp	.L51	#
.L54:
	.loc 1 310 0
	movl	$.LC17, %edi	#,
	call	puts	#
.L51:
	.loc 1 312 0
	movl	$0, -24900(%rbp)	#, automode
.L3:
	.loc 1 318 0
	movl	xb_mode(%rip), %eax	# xb_mode, xb_mode.80
	testl	%eax, %eax	# xb_mode.80
	jne	.L55	#,
	.loc 1 319 0
	movl	-24924(%rbp), %eax	# show_board, show_board.81
	testl	%eax, %eax	# show_board.81
	je	.L56	#,
	.loc 1 320 0
	movl	$10, %edi	#,
	call	putchar	#
	.loc 1 321 0
	movl	comp_color(%rip), %eax	# comp_color, comp_color.82
	movl	$1, %edx	#, tmp478
	subl	%eax, %edx	# comp_color.82, D.4649
	movq	stdout(%rip), %rax	# stdout, stdout.83
	movl	%edx, %esi	# D.4649,
	movq	%rax, %rdi	# stdout.83,
	call	display_board	#
.L56:
	.loc 1 323 0
	cmpl	$0, -24900(%rbp)	#, automode
	jne	.L58	#,
	.loc 1 325 0
	movl	$.LC18, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 326 0
	movq	stdin(%rip), %rdx	# stdin, stdin.84
	leaq	-816(%rbp), %rax	#, tmp479
	movl	$256, %esi	#,
	movq	%rax, %rdi	# tmp479,
	call	rinput	#
	jmp	.L58	#
.L55:
	.loc 1 332 0
	movl	must_sit(%rip), %eax	# must_sit, must_sit.85
	testl	%eax, %eax	# must_sit.85
	jne	.L59	#,
	.loc 1 332 0 is_stmt 0 discriminator 1
	movl	allow_pondering(%rip), %eax	# allow_pondering, allow_pondering.86
	testl	%eax, %eax	# allow_pondering.86
	je	.L60	#,
	cmpl	$0, -24912(%rbp)	#, is_edit_mode
	jne	.L60	#,
	cmpl	$0, -24916(%rbp)	#, force_mode
	jne	.L60	#,
	.loc 1 333 0 is_stmt 1 discriminator 1
	movl	move_number(%rip), %eax	# move_number, move_number.87
	.loc 1 332 0 discriminator 1
	testl	%eax, %eax	# move_number.87
	jne	.L59	#,
.L60:
	.loc 1 333 0
	movl	is_analyzing(%rip), %eax	# is_analyzing, is_analyzing.88
	testl	%eax, %eax	# is_analyzing.88
	je	.L61	#,
.L59:
	.loc 1 333 0 is_stmt 0 discriminator 1
	movl	result(%rip), %eax	# result, result.89
	testl	%eax, %eax	# result.89
	jne	.L61	#,
	cmpl	$0, -24900(%rbp)	#, automode
	jne	.L61	#,
	.loc 1 335 0 is_stmt 1
	movl	$1, is_pondering(%rip)	#, is_pondering
	.loc 1 336 0
	leaq	-24976(%rbp), %rax	#, tmp480
	movq	%rax, %rdi	# tmp480,
	call	think	#
	.loc 1 337 0
	movl	$0, is_pondering(%rip)	#, is_pondering
	.loc 1 339 0
	movl	$0, ply(%rip)	#, ply
.L61:
	.loc 1 341 0
	cmpl	$0, -24900(%rbp)	#, automode
	jne	.L58	#,
	.loc 1 343 0
	movq	stdin(%rip), %rdx	# stdin, stdin.90
	leaq	-816(%rbp), %rax	#, tmp481
	movl	$256, %esi	#,
	movq	%rax, %rdi	# tmp481,
	call	rinput	#
.L58:
	.loc 1 348 0
	cmpl	$0, -24912(%rbp)	#, is_edit_mode
	jne	.L62	#,
	.loc 1 348 0 is_stmt 0 discriminator 1
	leaq	-816(%rbp), %rax	#, tmp482
	movq	%rax, %rdi	# tmp482,
	call	is_move	#
	testl	%eax, %eax	# D.4645
	je	.L62	#,
	.loc 1 349 0 is_stmt 1
	leaq	-24880(%rbp), %rdx	#, tmp483
	leaq	-816(%rbp), %rax	#, tmp484
	movq	%rdx, %rsi	# tmp483,
	movq	%rax, %rdi	# tmp484,
	call	verify_coord	#
	testl	%eax, %eax	# D.4645
	je	.L63	#,
	.loc 1 351 0
	movl	move_number(%rip), %eax	# move_number, move_number.91
	movslq	%eax, %rdx	# move_number.91, tmp485
	movq	%rdx, %rax	# tmp485, tmp486
	addq	%rax, %rax	# tmp486
	addq	%rdx, %rax	# tmp485, tmp486
	salq	$3, %rax	#, tmp487
	leaq	-32(%rbp), %rbx	#, tmp715
	addq	%rbx, %rax	# tmp715, tmp488
	subq	$15184, %rax	#, tmp489
	movq	-24880(%rbp), %rdx	# move, tmp490
	movq	%rdx, (%rax)	# tmp490, game_history
	movq	-24872(%rbp), %rdx	# move, tmp491
	movq	%rdx, 8(%rax)	# tmp491, game_history
	movq	-24864(%rbp), %rdx	# move, tmp492
	movq	%rdx, 16(%rax)	# tmp492, game_history
	.loc 1 352 0
	movl	move_number(%rip), %eax	# move_number, move_number.92
	movl	hash(%rip), %edx	# hash, hash.93
	cltq
	movl	%edx, hash_history(,%rax,4)	# hash.93, hash_history
	.loc 1 354 0
	leaq	-24880(%rbp), %rax	#, tmp494
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp494,
	call	make	#
	.loc 1 355 0
	movl	move_number(%rip), %eax	# move_number, move_number.94
	leal	1(%rax), %edx	#, move_number.96
	movl	%edx, move_number(%rip)	# move_number.96, move_number
	cltq
	salq	$4, %rax	#, tmp496
	leaq	-32(%rbp), %rbx	#, tmp716
	addq	%rbx, %rax	# tmp716, tmp497
	leaq	-24784(%rax), %rcx	#, tmp498
	movq	path_x(%rip), %rax	# path_x, tmp499
	movq	path_x+8(%rip), %rdx	# path_x,
	movq	%rax, (%rcx)	# tmp499, game_history_x
	movq	%rdx, 8(%rcx)	#, game_history_x
	.loc 1 357 0
	call	reset_piece_square	#
	.loc 1 359 0
	movl	root_to_move(%rip), %eax	# root_to_move, root_to_move.97
	xorl	$1, %eax	#, root_to_move.98
	movl	%eax, root_to_move(%rip)	# root_to_move.98, root_to_move
	.loc 1 361 0
	movl	book_ply(%rip), %eax	# book_ply, book_ply.99
	cmpl	$39, %eax	#, book_ply.99
	jg	.L64	#,
	.loc 1 362 0
	movl	book_ply(%rip), %eax	# book_ply, book_ply.100
	testl	%eax, %eax	# book_ply.100
	jne	.L65	#,
	.loc 1 363 0
	leaq	-816(%rbp), %rax	#, tmp500
	movq	%rax, %rsi	# tmp500,
	movl	$opening_history, %edi	#,
	call	strcpy	#
	jmp	.L64	#
.L65:
	.loc 1 366 0
	leaq	-816(%rbp), %rax	#, tmp501
	movq	%rax, %rsi	# tmp501,
	movl	$opening_history, %edi	#,
	call	strcat	#
.L64:
	.loc 1 370 0
	movl	book_ply(%rip), %eax	# book_ply, book_ply.101
	addl	$1, %eax	#, book_ply.102
	movl	%eax, book_ply(%rip)	# book_ply.102, book_ply
	.loc 1 372 0
	movl	-24924(%rbp), %eax	# show_board, show_board.103
	testl	%eax, %eax	# show_board.103
	je	.L67	#,
	.loc 1 373 0
	movl	$10, %edi	#,
	call	putchar	#
	.loc 1 374 0
	movl	comp_color(%rip), %eax	# comp_color, comp_color.104
	movl	$1, %edx	#, tmp502
	subl	%eax, %edx	# comp_color.104, D.4649
	movq	stdout(%rip), %rax	# stdout, stdout.105
	movl	%edx, %esi	# D.4649,
	movq	%rax, %rdi	# stdout.105,
	call	display_board	#
	.loc 1 349 0
	jmp	.L68	#
.L63:
	.loc 1 378 0
	leaq	-816(%rbp), %rax	#, tmp503
	movq	%rax, %rsi	# tmp503,
	movl	$.LC19, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 349 0
	jmp	.L68	#
.L67:
	jmp	.L68	#
.L62:
	.loc 1 385 0
	leaq	-816(%rbp), %rax	#, tmp504
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# tmp504,
	call	strstr	#
	testq	%rax, %rax	# D.4644
	jne	.L69	#,
	.loc 1 386 0
	leaq	-816(%rbp), %rax	#, tmp505
	movq	%rax, -24896(%rbp)	# tmp505, p
	jmp	.L70	#
.L71:
	.loc 1 386 0 is_stmt 0 discriminator 2
	movq	-24896(%rbp), %rax	# p, tmp506
	movzbl	(%rax), %eax	# *p_1, D.4650
	movsbl	%al, %eax	# D.4650, D.4649
	movl	%eax, %edi	# D.4649,
	call	tolower	#
	movl	%eax, %edx	# D.4649, D.4650
	movq	-24896(%rbp), %rax	# p, tmp507
	movb	%dl, (%rax)	# D.4650, *p_1
	addq	$1, -24896(%rbp)	#, p
.L70:
	.loc 1 386 0 discriminator 1
	movq	-24896(%rbp), %rax	# p, tmp508
	movzbl	(%rax), %eax	# *p_1, D.4650
	testb	%al, %al	# D.4650
	jne	.L71	#,
.L69:
	.loc 1 389 0 is_stmt 1
	leaq	-816(%rbp), %rax	#, tmp509
	movl	$.LC21, %esi	#,
	movq	%rax, %rdi	# tmp509,
	call	strcmp	#
	testl	%eax, %eax	# D.4649
	jne	.L72	#,
	.loc 1 390 0
	call	free_hash	#
	.loc 1 391 0
	call	free_ecache	#
	.loc 1 392 0
	movl	$0, %edi	#,
	call	exit	#
.L72:
	.loc 1 394 0
	leaq	-816(%rbp), %rax	#, tmp510
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# tmp510,
	call	strcmp	#
	testl	%eax, %eax	# D.4649
	jne	.L73	#,
	.loc 1 396 0
	movl	is_analyzing(%rip), %eax	# is_analyzing, is_analyzing.106
	testl	%eax, %eax	# is_analyzing.106
	je	.L74	#,
	.loc 1 398 0
	movl	$0, is_analyzing(%rip)	#, is_analyzing
	.loc 1 399 0
	movl	$0, is_pondering(%rip)	#, is_pondering
	.loc 1 400 0
	movl	$0, time_for_move(%rip)	#, time_for_move
	jmp	.L68	#
.L74:
	.loc 1 404 0
	call	free_hash	#
	.loc 1 405 0
	call	free_ecache	#
	.loc 1 406 0
	movl	$0, %edi	#,
	call	exit	#
.L73:
	.loc 1 409 0
	leaq	-816(%rbp), %rax	#, tmp511
	movl	$.LC23, %esi	#,
	movq	%rax, %rdi	# tmp511,
	call	strcmp	#
	testl	%eax, %eax	# D.4649
	je	.L75	#,
	.loc 1 409 0 is_stmt 0 discriminator 1
	leaq	-816(%rbp), %rax	#, tmp512
	movl	$.LC24, %esi	#,
	movq	%rax, %rdi	# tmp512,
	call	strcmp	#
	testl	%eax, %eax	# D.4649
	jne	.L76	#,
.L75:
	.loc 1 410 0 is_stmt 1
	leaq	-24924(%rbp), %rax	#, tmp513
	movq	%rax, %rdi	# tmp513,
	call	toggle_bool	#
	jmp	.L68	#
.L76:
	.loc 1 412 0
	leaq	-816(%rbp), %rax	#, tmp514
	movl	$5, %edx	#,
	movl	$.LC25, %esi	#,
	movq	%rax, %rdi	# tmp514,
	call	strncmp	#
	testl	%eax, %eax	# D.4649
	jne	.L77	#,
	.loc 1 413 0
	leaq	-24928(%rbp), %rax	#, tmp515
	leaq	-816(%rbp), %rdx	#, tmp516
	leaq	6(%rdx), %rcx	#, tmp517
	movq	%rax, %rdx	# tmp515,
	movl	$.LC26, %esi	#,
	movq	%rcx, %rdi	# tmp517,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	.loc 1 414 0
	movl	$0, raw_nodes(%rip)	#, raw_nodes
	.loc 1 415 0
	call	rtime	#
	movq	%rax, -24888(%rbp)	# tmp518, xstart_time
	.loc 1 416 0
	movl	-24928(%rbp), %eax	# depth, depth.107
	movl	%eax, %edi	# depth.107,
	call	perft	#
	.loc 1 417 0
	movl	raw_nodes(%rip), %edx	# raw_nodes, raw_nodes.108
	movl	-24928(%rbp), %eax	# depth, depth.109
	movl	%eax, %esi	# depth.109,
	movl	$.LC27, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 418 0
	call	rtime	#
	movq	-24888(%rbp), %rdx	# xstart_time, tmp519
	movq	%rdx, %rsi	# tmp519,
	movq	%rax, %rdi	# D.4651,
	call	rdifftime	#
	cvtsi2ss	%eax, %xmm0	# D.4649, D.4646
	unpcklps	%xmm0, %xmm0	# D.4646, D.4646
	cvtps2pd	%xmm0, %xmm0	# D.4646, D.4647
	movsd	.LC28(%rip), %xmm1	#, tmp520
	divsd	%xmm1, %xmm0	# tmp520, D.4647
	movl	$.LC29, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
	jmp	.L68	#
.L77:
	.loc 1 420 0
	leaq	-816(%rbp), %rax	#, tmp521
	movl	$.LC30, %esi	#,
	movq	%rax, %rdi	# tmp521,
	call	strcmp	#
	testl	%eax, %eax	# D.4649
	jne	.L78	#,
	.loc 1 422 0
	movl	xb_mode(%rip), %eax	# xb_mode, xb_mode.110
	testl	%eax, %eax	# xb_mode.110
	je	.L79	#,
	.loc 1 424 0
	movl	$setcode, %esi	#,
	movl	$.LC31, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L79:
	.loc 1 427 0
	movl	is_analyzing(%rip), %eax	# is_analyzing, is_analyzing.111
	testl	%eax, %eax	# is_analyzing.111
	jne	.L80	#,
	.loc 1 429 0
	movq	std_material(%rip), %rax	# MEM[(char * {ref-all})&std_material], tmp524
	movq	%rax, material(%rip)	# tmp524, MEM[(char * {ref-all})&material]
	movq	std_material+8(%rip), %rax	# MEM[(char * {ref-all})&std_material], tmp525
	movq	%rax, material+8(%rip)	# tmp525, MEM[(char * {ref-all})&material]
	movq	std_material+16(%rip), %rax	# MEM[(char * {ref-all})&std_material], tmp526
	movq	%rax, material+16(%rip)	# tmp526, MEM[(char * {ref-all})&material]
	movq	std_material+24(%rip), %rax	# MEM[(char * {ref-all})&std_material], tmp527
	movq	%rax, material+24(%rip)	# tmp527, MEM[(char * {ref-all})&material]
	movq	std_material+32(%rip), %rax	# MEM[(char * {ref-all})&std_material], tmp528
	movq	%rax, material+32(%rip)	# tmp528, MEM[(char * {ref-all})&material]
	movq	std_material+40(%rip), %rax	# MEM[(char * {ref-all})&std_material], tmp529
	movq	%rax, material+40(%rip)	# tmp529, MEM[(char * {ref-all})&material]
	movq	std_material+48(%rip), %rax	# MEM[(char * {ref-all})&std_material], tmp530
	movq	%rax, material+48(%rip)	# tmp530, MEM[(char * {ref-all})&material]
	.loc 1 430 0
	movl	$2, Variant(%rip)	#, Variant
	.loc 1 435 0
	call	init_game	#
	.loc 1 436 0
	call	initialize_hash	#
	.loc 1 438 0
	cmpl	$0, -24904(%rbp)	#, braindeadinterface
	jne	.L81	#,
	.loc 1 440 0
	call	clear_tt	#
	.loc 1 441 0
	call	reset_ecache	#
.L81:
	.loc 1 444 0
	movl	$0, -24916(%rbp)	#, force_mode
	.loc 1 445 0
	movl	$0, must_sit(%rip)	#, must_sit
	.loc 1 446 0
	movl	$0, go_fast(%rip)	#, go_fast
	.loc 1 447 0
	movl	$0, piecedead(%rip)	#, piecedead
	.loc 1 448 0
	movl	$0, partnerdead(%rip)	#, partnerdead
	.loc 1 449 0
	movl	$0, kibitzed(%rip)	#, kibitzed
	.loc 1 450 0
	movl	$0, fixed_time(%rip)	#, fixed_time
	.loc 1 452 0
	movl	$0, root_to_move(%rip)	#, root_to_move
	.loc 1 454 0
	movl	$0, comp_color(%rip)	#, comp_color
	.loc 1 455 0
	movl	$0, move_number(%rip)	#, move_number
	.loc 1 456 0
	movl	move_number(%rip), %eax	# move_number, move_number.112
	cltq
	movl	$0, hash_history(,%rax,4)	#, hash_history
	.loc 1 457 0
	movl	$0, bookidx(%rip)	#, bookidx
	.loc 1 458 0
	movl	$2000, opp_rating(%rip)	#, opp_rating
	movl	opp_rating(%rip), %eax	# opp_rating, opp_rating.113
	movl	%eax, my_rating(%rip)	# opp_rating.113, my_rating
	.loc 1 459 0
	movl	$0, must_go(%rip)	#, must_go
	.loc 1 460 0
	movl	$1, tradefreely(%rip)	#, tradefreely
	.loc 1 461 0
	movl	$0, -24900(%rbp)	#, automode
	.loc 1 463 0
	movl	$1, %edi	#,
	call	CheckBadFlow	#
	.loc 1 464 0
	call	ResetHandValue	#
	jmp	.L68	#
.L80:
	.loc 1 468 0
	call	init_game	#
	.loc 1 469 0
	movl	$0, move_number(%rip)	#, move_number
	.loc 1 784 0
	jmp	.L2	#
.L78:
	.loc 1 473 0
	leaq	-816(%rbp), %rax	#, tmp532
	movl	$.LC32, %esi	#,
	movq	%rax, %rdi	# tmp532,
	call	strcmp	#
	testl	%eax, %eax	# D.4649
	jne	.L83	#,
	.loc 1 474 0
	movl	$1, xb_mode(%rip)	#, xb_mode
	.loc 1 475 0
	leaq	-24924(%rbp), %rax	#, tmp533
	movq	%rax, %rdi	# tmp533,
	call	toggle_bool	#
	.loc 1 476 0
	movl	$1, %esi	#,
	movl	$2, %edi	#,
	call	signal	#
	.loc 1 477 0
	movl	$10, %edi	#,
	call	putchar	#
	.loc 1 480 0
	movl	$.LC33, %edi	#,
	call	puts	#
	.loc 1 482 0
	call	BegForPartner	#
	jmp	.L68	#
.L83:
	.loc 1 484 0
	leaq	-816(%rbp), %rax	#, tmp534
	movl	$.LC34, %esi	#,
	movq	%rax, %rdi	# tmp534,
	call	strcmp	#
	testl	%eax, %eax	# D.4649
	jne	.L84	#,
	.loc 1 486 0
	movl	qnodes(%rip), %eax	# qnodes, qnodes.114
	cvtsi2ss	%eax, %xmm0	# qnodes.114, D.4646
	movl	nodes(%rip), %eax	# nodes, nodes.115
	cvtsi2ss	%eax, %xmm1	# nodes.115, D.4646
	divss	%xmm1, %xmm0	# D.4646, D.4646
	movss	.LC1(%rip), %xmm1	#, tmp535
	mulss	%xmm1, %xmm0	# tmp535, D.4646
	.loc 1 485 0
	unpcklps	%xmm0, %xmm0	# D.4646, D.4646
	cvtps2pd	%xmm0, %xmm0	# D.4646, D.4647
	movl	nodes(%rip), %eax	# nodes, nodes.116
	movl	%eax, %esi	# nodes.116,
	movl	$.LC35, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
	jmp	.L68	#
.L84:
	.loc 1 488 0
	leaq	-816(%rbp), %rax	#, tmp536
	movl	$.LC36, %esi	#,
	movq	%rax, %rdi	# tmp536,
	call	strcmp	#
	testl	%eax, %eax	# D.4649
	jne	.L85	#,
	.loc 1 489 0
	movl	$post, %edi	#,
	call	toggle_bool	#
	.loc 1 490 0
	movl	xb_mode(%rip), %eax	# xb_mode, xb_mode.117
	testl	%eax, %eax	# xb_mode.117
	je	.L68	#,
	.loc 1 491 0
	movl	$1, post(%rip)	#, post
	.loc 1 784 0
	jmp	.L2	#
.L85:
	.loc 1 493 0
	leaq	-816(%rbp), %rax	#, tmp537
	movl	$.LC37, %esi	#,
	movq	%rax, %rdi	# tmp537,
	call	strcmp	#
	testl	%eax, %eax	# D.4649
	jne	.L87	#,
	.loc 1 494 0
	movl	$0, post(%rip)	#, post
	jmp	.L68	#
.L87:
	.loc 1 496 0
	leaq	-816(%rbp), %rax	#, tmp538
	movl	$.LC38, %esi	#,
	movq	%rax, %rdi	# tmp538,
	call	strcmp	#
	testl	%eax, %eax	# D.4649
	jne	.L88	#,
	.loc 1 497 0
	jmp	.L68	#
.L88:
	.loc 1 499 0
	leaq	-816(%rbp), %rax	#, tmp539
	movl	$.LC39, %esi	#,
	movq	%rax, %rdi	# tmp539,
	call	strcmp	#
	testl	%eax, %eax	# D.4649
	jne	.L89	#,
	.loc 1 501 0
	movl	$1, allow_pondering(%rip)	#, allow_pondering
	.loc 1 503 0
	jmp	.L68	#
.L89:
	.loc 1 505 0
	leaq	-816(%rbp), %rax	#, tmp540
	movl	$.LC40, %esi	#,
	movq	%rax, %rdi	# tmp540,
	call	strcmp	#
	testl	%eax, %eax	# D.4649
	jne	.L90	#,
	.loc 1 507 0
	movl	$0, allow_pondering(%rip)	#, allow_pondering
	.loc 1 509 0
	jmp	.L68	#
.L90:
	.loc 1 511 0
	leaq	-816(%rbp), %rax	#, tmp541
	movl	$.LC41, %esi	#,
	movq	%rax, %rdi	# tmp541,
	call	strcmp	#
	testl	%eax, %eax	# D.4649
	jne	.L91	#,
	.loc 1 512 0
	jmp	.L68	#
.L91:
	.loc 1 514 0
	leaq	-816(%rbp), %rax	#, tmp542
	movl	$.LC42, %esi	#,
	movq	%rax, %rdi	# tmp542,
	call	strcmp	#
	testl	%eax, %eax	# D.4649
	jne	.L92	#,
	.loc 1 515 0
	movl	$1, white_to_move(%rip)	#, white_to_move
	.loc 1 516 0
	movl	$0, root_to_move(%rip)	#, root_to_move
	.loc 1 517 0
	movl	$0, comp_color(%rip)	#, comp_color
	jmp	.L68	#
.L92:
	.loc 1 519 0
	leaq	-816(%rbp), %rax	#, tmp543
	movl	$.LC43, %esi	#,
	movq	%rax, %rdi	# tmp543,
	call	strcmp	#
	testl	%eax, %eax	# D.4649
	jne	.L93	#,
	.loc 1 520 0
	movl	$0, white_to_move(%rip)	#, white_to_move
	.loc 1 521 0
	movl	$1, root_to_move(%rip)	#, root_to_move
	.loc 1 522 0
	movl	$1, comp_color(%rip)	#, comp_color
	jmp	.L68	#
.L93:
	.loc 1 524 0
	leaq	-816(%rbp), %rax	#, tmp544
	movl	$.LC44, %esi	#,
	movq	%rax, %rdi	# tmp544,
	call	strcmp	#
	testl	%eax, %eax	# D.4649
	jne	.L94	#,
	.loc 1 525 0
	movl	$1, -24916(%rbp)	#, force_mode
	jmp	.L68	#
.L94:
	.loc 1 527 0
	leaq	-816(%rbp), %rax	#, tmp545
	movl	$.LC45, %esi	#,
	movq	%rax, %rdi	# tmp545,
	call	strcmp	#
	testl	%eax, %eax	# D.4649
	jne	.L95	#,
	.loc 1 528 0
	call	check_phase	#
	.loc 1 529 0
	movl	$1000000, %esi	#,
	movl	$-1000000, %edi	#,
	call	eval	#
	movl	%eax, %esi	# D.4649,
	movl	$.LC46, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	jmp	.L68	#
.L95:
	.loc 1 531 0
	leaq	-816(%rbp), %rax	#, tmp546
	movl	$.LC47, %esi	#,
	movq	%rax, %rdi	# tmp546,
	call	strcmp	#
	testl	%eax, %eax	# D.4649
	jne	.L96	#,
	.loc 1 532 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.118
	movl	%eax, comp_color(%rip)	# white_to_move.118, comp_color
	.loc 1 533 0
	movl	$0, -24916(%rbp)	#, force_mode
	jmp	.L68	#
.L96:
	.loc 1 535 0
	leaq	-816(%rbp), %rax	#, tmp547
	movl	$4, %edx	#,
	movl	$.LC48, %esi	#,
	movq	%rax, %rdi	# tmp547,
	call	strncmp	#
	testl	%eax, %eax	# D.4649
	jne	.L97	#,
	.loc 1 536 0
	leaq	-816(%rbp), %rax	#, tmp548
	addq	$5, %rax	#, tmp549
	movl	$time_left, %edx	#,
	movl	$.LC49, %esi	#,
	movq	%rax, %rdi	# tmp549,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	jmp	.L68	#
.L97:
	.loc 1 538 0
	leaq	-816(%rbp), %rax	#, tmp550
	movl	$4, %edx	#,
	movl	$.LC50, %esi	#,
	movq	%rax, %rdi	# tmp550,
	call	strncmp	#
	testl	%eax, %eax	# D.4649
	jne	.L98	#,
	.loc 1 539 0
	leaq	-816(%rbp), %rax	#, tmp551
	addq	$5, %rax	#, tmp552
	movl	$opp_time, %edx	#,
	movl	$.LC49, %esi	#,
	movq	%rax, %rdi	# tmp552,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	jmp	.L68	#
.L98:
	.loc 1 541 0
	leaq	-816(%rbp), %rax	#, tmp553
	movl	$5, %edx	#,
	movl	$.LC51, %esi	#,
	movq	%rax, %rdi	# tmp553,
	call	strncmp	#
	testl	%eax, %eax	# D.4649
	jne	.L99	#,
	.loc 1 542 0
	leaq	-816(%rbp), %rax	#, tmp554
	addq	$6, %rax	#, tmp555
	movl	$58, %esi	#,
	movq	%rax, %rdi	# tmp555,
	call	strchr	#
	testq	%rax, %rax	# D.4644
	je	.L100	#,
	.loc 1 545 0
	leaq	-816(%rbp), %rax	#, tmp556
	addq	$6, %rax	#, tmp557
	movl	$inc, %r9d	#,
	movl	$sec_per_game, %r8d	#,
	movl	$min_per_game, %ecx	#,
	movl	$moves_to_tc, %edx	#,
	movl	$.LC52, %esi	#,
	movq	%rax, %rdi	# tmp557,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	.loc 1 547 0
	movl	min_per_game(%rip), %eax	# min_per_game, min_per_game.119
	imull	$6000, %eax, %edx	#, min_per_game.119, D.4649
	movl	sec_per_game(%rip), %eax	# sec_per_game, sec_per_game.120
	imull	$100, %eax, %eax	#, sec_per_game.120, D.4649
	addl	%edx, %eax	# D.4649, time_left.121
	movl	%eax, time_left(%rip)	# time_left.121, time_left
	.loc 1 548 0
	movl	time_left(%rip), %eax	# time_left, time_left.122
	movl	%eax, opp_time(%rip)	# time_left.122, opp_time
	jmp	.L101	#
.L100:
	.loc 1 553 0
	leaq	-816(%rbp), %rax	#, tmp558
	addq	$6, %rax	#, tmp559
	movl	$inc, %r8d	#,
	movl	$min_per_game, %ecx	#,
	movl	$moves_to_tc, %edx	#,
	movl	$.LC53, %esi	#,
	movq	%rax, %rdi	# tmp559,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	.loc 1 554 0
	movl	min_per_game(%rip), %eax	# min_per_game, min_per_game.123
	imull	$6000, %eax, %eax	#, min_per_game.123, time_left.124
	movl	%eax, time_left(%rip)	# time_left.124, time_left
	.loc 1 555 0
	movl	time_left(%rip), %eax	# time_left, time_left.125
	movl	%eax, opp_time(%rip)	# time_left.125, opp_time
.L101:
	.loc 1 557 0 discriminator 4
	movl	$0, fixed_time(%rip)	#, fixed_time
	.loc 1 558 0 discriminator 4
	movl	$0, time_cushion(%rip)	#, time_cushion
	jmp	.L68	#
.L99:
	.loc 1 560 0
	leaq	-816(%rbp), %rax	#, tmp560
	movl	$6, %edx	#,
	movl	$.LC54, %esi	#,
	movq	%rax, %rdi	# tmp560,
	call	strncmp	#
	testl	%eax, %eax	# D.4649
	jne	.L102	#,
	.loc 1 561 0
	leaq	-816(%rbp), %rax	#, tmp561
	addq	$7, %rax	#, tmp562
	movl	$opp_rating, %ecx	#,
	movl	$my_rating, %edx	#,
	movl	$.LC55, %esi	#,
	movq	%rax, %rdi	# tmp562,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	.loc 1 562 0
	movl	my_rating(%rip), %eax	# my_rating, my_rating.126
	testl	%eax, %eax	# my_rating.126
	jne	.L103	#,
	.loc 1 562 0 is_stmt 0 discriminator 1
	movl	$2000, my_rating(%rip)	#, my_rating
.L103:
	.loc 1 563 0 is_stmt 1
	movl	opp_rating(%rip), %eax	# opp_rating, opp_rating.127
	testl	%eax, %eax	# opp_rating.127
	jne	.L68	#,
	.loc 1 563 0 is_stmt 0 discriminator 1
	movl	$2000, opp_rating(%rip)	#, opp_rating
	.loc 1 784 0 is_stmt 1 discriminator 1
	jmp	.L2	#
.L102:
	.loc 1 565 0
	leaq	-816(%rbp), %rax	#, tmp563
	movl	$7, %edx	#,
	movl	$.LC56, %esi	#,
	movq	%rax, %rdi	# tmp563,
	call	strncmp	#
	testl	%eax, %eax	# D.4649
	jne	.L105	#,
	.loc 1 566 0
	leaq	-816(%rbp), %rax	#, tmp564
	movq	%rax, %rdi	# tmp564,
	call	ProcessHoldings	#
	jmp	.L68	#
.L105:
	.loc 1 568 0
	leaq	-816(%rbp), %rax	#, tmp565
	movl	$7, %edx	#,
	movl	$.LC57, %esi	#,
	movq	%rax, %rdi	# tmp565,
	call	strncmp	#
	testl	%eax, %eax	# D.4649
	jne	.L106	#,
	.loc 1 569 0
	leaq	-816(%rbp), %rax	#, tmp566
	movl	$.LC58, %esi	#,
	movq	%rax, %rdi	# tmp566,
	call	strstr	#
	testq	%rax, %rax	# D.4644
	je	.L107	#,
	.loc 1 571 0
	movl	$2, Variant(%rip)	#, Variant
	.loc 1 572 0
	movq	std_material(%rip), %rax	# MEM[(char * {ref-all})&std_material], tmp569
	movq	%rax, material(%rip)	# tmp569, MEM[(char * {ref-all})&material]
	movq	std_material+8(%rip), %rax	# MEM[(char * {ref-all})&std_material], tmp570
	movq	%rax, material+8(%rip)	# tmp570, MEM[(char * {ref-all})&material]
	movq	std_material+16(%rip), %rax	# MEM[(char * {ref-all})&std_material], tmp571
	movq	%rax, material+16(%rip)	# tmp571, MEM[(char * {ref-all})&material]
	movq	std_material+24(%rip), %rax	# MEM[(char * {ref-all})&std_material], tmp572
	movq	%rax, material+24(%rip)	# tmp572, MEM[(char * {ref-all})&material]
	movq	std_material+32(%rip), %rax	# MEM[(char * {ref-all})&std_material], tmp573
	movq	%rax, material+32(%rip)	# tmp573, MEM[(char * {ref-all})&material]
	movq	std_material+40(%rip), %rax	# MEM[(char * {ref-all})&std_material], tmp574
	movq	%rax, material+40(%rip)	# tmp574, MEM[(char * {ref-all})&material]
	movq	std_material+48(%rip), %rax	# MEM[(char * {ref-all})&std_material], tmp575
	movq	%rax, material+48(%rip)	# tmp575, MEM[(char * {ref-all})&material]
	jmp	.L108	#
.L107:
	.loc 1 574 0
	leaq	-816(%rbp), %rax	#, tmp576
	movl	$.LC59, %esi	#,
	movq	%rax, %rdi	# tmp576,
	call	strstr	#
	testq	%rax, %rax	# D.4644
	je	.L109	#,
	.loc 1 576 0
	movl	$0, Variant(%rip)	#, Variant
	.loc 1 577 0
	movq	zh_material(%rip), %rax	# MEM[(char * {ref-all})&zh_material], tmp579
	movq	%rax, material(%rip)	# tmp579, MEM[(char * {ref-all})&material]
	movq	zh_material+8(%rip), %rax	# MEM[(char * {ref-all})&zh_material], tmp580
	movq	%rax, material+8(%rip)	# tmp580, MEM[(char * {ref-all})&material]
	movq	zh_material+16(%rip), %rax	# MEM[(char * {ref-all})&zh_material], tmp581
	movq	%rax, material+16(%rip)	# tmp581, MEM[(char * {ref-all})&material]
	movq	zh_material+24(%rip), %rax	# MEM[(char * {ref-all})&zh_material], tmp582
	movq	%rax, material+24(%rip)	# tmp582, MEM[(char * {ref-all})&material]
	movq	zh_material+32(%rip), %rax	# MEM[(char * {ref-all})&zh_material], tmp583
	movq	%rax, material+32(%rip)	# tmp583, MEM[(char * {ref-all})&material]
	movq	zh_material+40(%rip), %rax	# MEM[(char * {ref-all})&zh_material], tmp584
	movq	%rax, material+40(%rip)	# tmp584, MEM[(char * {ref-all})&material]
	movq	zh_material+48(%rip), %rax	# MEM[(char * {ref-all})&zh_material], tmp585
	movq	%rax, material+48(%rip)	# tmp585, MEM[(char * {ref-all})&material]
	jmp	.L108	#
.L109:
	.loc 1 579 0
	leaq	-816(%rbp), %rax	#, tmp586
	movl	$.LC60, %esi	#,
	movq	%rax, %rdi	# tmp586,
	call	strstr	#
	testq	%rax, %rax	# D.4644
	je	.L110	#,
	.loc 1 581 0
	movl	$1, Variant(%rip)	#, Variant
	.loc 1 582 0
	movq	zh_material(%rip), %rax	# MEM[(char * {ref-all})&zh_material], tmp589
	movq	%rax, material(%rip)	# tmp589, MEM[(char * {ref-all})&material]
	movq	zh_material+8(%rip), %rax	# MEM[(char * {ref-all})&zh_material], tmp590
	movq	%rax, material+8(%rip)	# tmp590, MEM[(char * {ref-all})&material]
	movq	zh_material+16(%rip), %rax	# MEM[(char * {ref-all})&zh_material], tmp591
	movq	%rax, material+16(%rip)	# tmp591, MEM[(char * {ref-all})&material]
	movq	zh_material+24(%rip), %rax	# MEM[(char * {ref-all})&zh_material], tmp592
	movq	%rax, material+24(%rip)	# tmp592, MEM[(char * {ref-all})&material]
	movq	zh_material+32(%rip), %rax	# MEM[(char * {ref-all})&zh_material], tmp593
	movq	%rax, material+32(%rip)	# tmp593, MEM[(char * {ref-all})&material]
	movq	zh_material+40(%rip), %rax	# MEM[(char * {ref-all})&zh_material], tmp594
	movq	%rax, material+40(%rip)	# tmp594, MEM[(char * {ref-all})&material]
	movq	zh_material+48(%rip), %rax	# MEM[(char * {ref-all})&zh_material], tmp595
	movq	%rax, material+48(%rip)	# tmp595, MEM[(char * {ref-all})&material]
	jmp	.L108	#
.L110:
	.loc 1 584 0
	leaq	-816(%rbp), %rax	#, tmp596
	movl	$.LC61, %esi	#,
	movq	%rax, %rdi	# tmp596,
	call	strstr	#
	testq	%rax, %rax	# D.4644
	je	.L111	#,
	.loc 1 586 0
	movl	$3, Variant(%rip)	#, Variant
	.loc 1 587 0
	movl	$0, Giveaway(%rip)	#, Giveaway
	.loc 1 588 0
	movq	suicide_material(%rip), %rax	# MEM[(char * {ref-all})&suicide_material], tmp599
	movq	%rax, material(%rip)	# tmp599, MEM[(char * {ref-all})&material]
	movq	suicide_material+8(%rip), %rax	# MEM[(char * {ref-all})&suicide_material], tmp600
	movq	%rax, material+8(%rip)	# tmp600, MEM[(char * {ref-all})&material]
	movq	suicide_material+16(%rip), %rax	# MEM[(char * {ref-all})&suicide_material], tmp601
	movq	%rax, material+16(%rip)	# tmp601, MEM[(char * {ref-all})&material]
	movq	suicide_material+24(%rip), %rax	# MEM[(char * {ref-all})&suicide_material], tmp602
	movq	%rax, material+24(%rip)	# tmp602, MEM[(char * {ref-all})&material]
	movq	suicide_material+32(%rip), %rax	# MEM[(char * {ref-all})&suicide_material], tmp603
	movq	%rax, material+32(%rip)	# tmp603, MEM[(char * {ref-all})&material]
	movq	suicide_material+40(%rip), %rax	# MEM[(char * {ref-all})&suicide_material], tmp604
	movq	%rax, material+40(%rip)	# tmp604, MEM[(char * {ref-all})&material]
	movq	suicide_material+48(%rip), %rax	# MEM[(char * {ref-all})&suicide_material], tmp605
	movq	%rax, material+48(%rip)	# tmp605, MEM[(char * {ref-all})&material]
	jmp	.L108	#
.L111:
	.loc 1 590 0
	leaq	-816(%rbp), %rax	#, tmp606
	movl	$.LC62, %esi	#,
	movq	%rax, %rdi	# tmp606,
	call	strstr	#
	testq	%rax, %rax	# D.4644
	je	.L112	#,
	.loc 1 592 0
	movl	$3, Variant(%rip)	#, Variant
	.loc 1 593 0
	movl	$1, Giveaway(%rip)	#, Giveaway
	.loc 1 594 0
	movq	suicide_material(%rip), %rax	# MEM[(char * {ref-all})&suicide_material], tmp609
	movq	%rax, material(%rip)	# tmp609, MEM[(char * {ref-all})&material]
	movq	suicide_material+8(%rip), %rax	# MEM[(char * {ref-all})&suicide_material], tmp610
	movq	%rax, material+8(%rip)	# tmp610, MEM[(char * {ref-all})&material]
	movq	suicide_material+16(%rip), %rax	# MEM[(char * {ref-all})&suicide_material], tmp611
	movq	%rax, material+16(%rip)	# tmp611, MEM[(char * {ref-all})&material]
	movq	suicide_material+24(%rip), %rax	# MEM[(char * {ref-all})&suicide_material], tmp612
	movq	%rax, material+24(%rip)	# tmp612, MEM[(char * {ref-all})&material]
	movq	suicide_material+32(%rip), %rax	# MEM[(char * {ref-all})&suicide_material], tmp613
	movq	%rax, material+32(%rip)	# tmp613, MEM[(char * {ref-all})&material]
	movq	suicide_material+40(%rip), %rax	# MEM[(char * {ref-all})&suicide_material], tmp614
	movq	%rax, material+40(%rip)	# tmp614, MEM[(char * {ref-all})&material]
	movq	suicide_material+48(%rip), %rax	# MEM[(char * {ref-all})&suicide_material], tmp615
	movq	%rax, material+48(%rip)	# tmp615, MEM[(char * {ref-all})&material]
	jmp	.L108	#
.L112:
	.loc 1 596 0
	leaq	-816(%rbp), %rax	#, tmp616
	movl	$.LC63, %esi	#,
	movq	%rax, %rdi	# tmp616,
	call	strstr	#
	testq	%rax, %rax	# D.4644
	je	.L108	#,
	.loc 1 598 0
	movl	$4, Variant(%rip)	#, Variant
	.loc 1 599 0
	movq	losers_material(%rip), %rax	# MEM[(char * {ref-all})&losers_material], tmp619
	movq	%rax, material(%rip)	# tmp619, MEM[(char * {ref-all})&material]
	movq	losers_material+8(%rip), %rax	# MEM[(char * {ref-all})&losers_material], tmp620
	movq	%rax, material+8(%rip)	# tmp620, MEM[(char * {ref-all})&material]
	movq	losers_material+16(%rip), %rax	# MEM[(char * {ref-all})&losers_material], tmp621
	movq	%rax, material+16(%rip)	# tmp621, MEM[(char * {ref-all})&material]
	movq	losers_material+24(%rip), %rax	# MEM[(char * {ref-all})&losers_material], tmp622
	movq	%rax, material+24(%rip)	# tmp622, MEM[(char * {ref-all})&material]
	movq	losers_material+32(%rip), %rax	# MEM[(char * {ref-all})&losers_material], tmp623
	movq	%rax, material+32(%rip)	# tmp623, MEM[(char * {ref-all})&material]
	movq	losers_material+40(%rip), %rax	# MEM[(char * {ref-all})&losers_material], tmp624
	movq	%rax, material+40(%rip)	# tmp624, MEM[(char * {ref-all})&material]
	movq	losers_material+48(%rip), %rax	# MEM[(char * {ref-all})&losers_material], tmp625
	movq	%rax, material+48(%rip)	# tmp625, MEM[(char * {ref-all})&material]
.L108:
	.loc 1 602 0 discriminator 5
	call	initialize_hash	#
	.loc 1 603 0 discriminator 5
	call	clear_tt	#
	.loc 1 604 0 discriminator 5
	call	reset_ecache	#
	jmp	.L68	#
.L106:
	.loc 1 607 0
	leaq	-816(%rbp), %rax	#, tmp626
	movl	$7, %edx	#,
	movl	$.LC64, %esi	#,
	movq	%rax, %rdi	# tmp626,
	call	strncmp	#
	testl	%eax, %eax	# D.4649
	jne	.L113	#,
	.loc 1 608 0
	movl	$1, is_analyzing(%rip)	#, is_analyzing
	.loc 1 609 0
	movl	$1, is_pondering(%rip)	#, is_pondering
	.loc 1 610 0
	leaq	-24976(%rbp), %rax	#, tmp627
	movq	%rax, %rdi	# tmp627,
	call	think	#
	.loc 1 611 0
	movl	$0, ply(%rip)	#, ply
	jmp	.L68	#
.L113:
	.loc 1 613 0
	leaq	-816(%rbp), %rax	#, tmp628
	movl	$4, %edx	#,
	movl	$.LC65, %esi	#,
	movq	%rax, %rdi	# tmp628,
	call	strncmp	#
	testl	%eax, %eax	# D.4649
	jne	.L114	#,
	.loc 1 614 0
	movl	move_number(%rip), %eax	# move_number, move_number.128
	movl	%eax, %esi	# move_number.128,
	movl	$.LC66, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 615 0
	movl	move_number(%rip), %eax	# move_number, move_number.129
	testl	%eax, %eax	# move_number.129
	jle	.L68	#,
	.loc 1 617 0
	movl	move_number(%rip), %eax	# move_number, move_number.130
	subl	$1, %eax	#, move_number.131
	movl	%eax, move_number(%rip)	# move_number.131, move_number
	movl	move_number(%rip), %eax	# move_number, move_number.132
	cltq
	salq	$4, %rax	#, tmp630
	leaq	-32(%rbp), %rbx	#, tmp717
	addq	%rbx, %rax	# tmp717, tmp631
	subq	$24784, %rax	#, tmp632
	movq	8(%rax), %rdx	# game_history_x,
	movq	(%rax), %rax	# game_history_x, tmp633
	movq	%rax, path_x(%rip)	# tmp633, path_x
	movq	%rdx, path_x+8(%rip)	#, path_x
	.loc 1 618 0
	movl	move_number(%rip), %eax	# move_number, move_number.133
	leaq	-15216(%rbp), %rcx	#, tmp634
	movslq	%eax, %rdx	# move_number.133, tmp635
	movq	%rdx, %rax	# tmp635, tmp636
	addq	%rax, %rax	# tmp636
	addq	%rdx, %rax	# tmp635, tmp636
	salq	$3, %rax	#, tmp637
	addq	%rcx, %rax	# tmp634, D.4652
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.4652,
	call	unmake	#
	.loc 1 619 0
	call	reset_piece_square	#
	.loc 1 620 0
	movl	root_to_move(%rip), %eax	# root_to_move, root_to_move.134
	xorl	$1, %eax	#, root_to_move.135
	movl	%eax, root_to_move(%rip)	# root_to_move.135, root_to_move
	.loc 1 784 0
	jmp	.L2	#
.L114:
	.loc 1 623 0
	leaq	-816(%rbp), %rax	#, tmp638
	movl	$5, %edx	#,
	movl	$.LC67, %esi	#,
	movq	%rax, %rdi	# tmp638,
	call	strncmp	#
	testl	%eax, %eax	# D.4649
	jne	.L116	#,
	.loc 1 624 0
	movl	move_number(%rip), %eax	# move_number, move_number.136
	cmpl	$1, %eax	#, move_number.136
	jle	.L68	#,
	.loc 1 626 0
	movl	move_number(%rip), %eax	# move_number, move_number.137
	subl	$1, %eax	#, move_number.138
	movl	%eax, move_number(%rip)	# move_number.138, move_number
	movl	move_number(%rip), %eax	# move_number, move_number.139
	cltq
	salq	$4, %rax	#, tmp640
	leaq	-32(%rbp), %rbx	#, tmp718
	addq	%rbx, %rax	# tmp718, tmp641
	subq	$24784, %rax	#, tmp642
	movq	8(%rax), %rdx	# game_history_x,
	movq	(%rax), %rax	# game_history_x, tmp643
	movq	%rax, path_x(%rip)	# tmp643, path_x
	movq	%rdx, path_x+8(%rip)	#, path_x
	.loc 1 627 0
	movl	move_number(%rip), %eax	# move_number, move_number.140
	leaq	-15216(%rbp), %rcx	#, tmp644
	movslq	%eax, %rdx	# move_number.140, tmp645
	movq	%rdx, %rax	# tmp645, tmp646
	addq	%rax, %rax	# tmp646
	addq	%rdx, %rax	# tmp645, tmp646
	salq	$3, %rax	#, tmp647
	addq	%rcx, %rax	# tmp644, D.4652
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.4652,
	call	unmake	#
	.loc 1 628 0
	call	reset_piece_square	#
	.loc 1 630 0
	movl	move_number(%rip), %eax	# move_number, move_number.141
	subl	$1, %eax	#, move_number.142
	movl	%eax, move_number(%rip)	# move_number.142, move_number
	movl	move_number(%rip), %eax	# move_number, move_number.143
	cltq
	salq	$4, %rax	#, tmp649
	leaq	-32(%rbp), %rbx	#, tmp719
	addq	%rbx, %rax	# tmp719, tmp650
	subq	$24784, %rax	#, tmp651
	movq	8(%rax), %rdx	# game_history_x,
	movq	(%rax), %rax	# game_history_x, tmp652
	movq	%rax, path_x(%rip)	# tmp652, path_x
	movq	%rdx, path_x+8(%rip)	#, path_x
	.loc 1 631 0
	movl	move_number(%rip), %eax	# move_number, move_number.144
	leaq	-15216(%rbp), %rcx	#, tmp653
	movslq	%eax, %rdx	# move_number.144, tmp654
	movq	%rdx, %rax	# tmp654, tmp655
	addq	%rax, %rax	# tmp655
	addq	%rdx, %rax	# tmp654, tmp655
	salq	$3, %rax	#, tmp656
	addq	%rcx, %rax	# tmp653, D.4652
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.4652,
	call	unmake	#
	.loc 1 632 0
	call	reset_piece_square	#
	.loc 1 784 0
	jmp	.L2	#
.L116:
	.loc 1 635 0
	leaq	-816(%rbp), %rax	#, tmp657
	movl	$4, %edx	#,
	movl	$.LC68, %esi	#,
	movq	%rax, %rdi	# tmp657,
	call	strncmp	#
	testl	%eax, %eax	# D.4649
	jne	.L118	#,
	.loc 1 636 0
	movl	$1, -24912(%rbp)	#, is_edit_mode
	.loc 1 637 0
	movl	$0, -24908(%rbp)	#, edit_color
	jmp	.L68	#
.L118:
	.loc 1 639 0
	leaq	-816(%rbp), %rax	#, input.145
	movzbl	(%rax), %edx	# MEM[(const unsigned char * {ref-all})input.145_291], D.4653
	movl	$.LC69, %eax	#, D.4654
	movzbl	(%rax), %eax	# MEM[(const unsigned char * {ref-all})_293], D.4653
	cmpb	%al, %dl	# D.4653, D.4653
	jne	.L119	#,
	.loc 1 639 0 is_stmt 0 discriminator 1
	cmpl	$0, -24912(%rbp)	#, is_edit_mode
	je	.L119	#,
	.loc 1 640 0 is_stmt 1
	movl	$0, -24912(%rbp)	#, is_edit_mode
	.loc 1 641 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.146
	cmpl	$30, %eax	#, wking_loc.146
	jne	.L120	#,
	.loc 1 641 0 is_stmt 0 discriminator 1
	movl	$0, white_castled(%rip)	#, white_castled
.L120:
	.loc 1 642 0 is_stmt 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.147
	cmpl	$114, %eax	#, bking_loc.147
	jne	.L121	#,
	.loc 1 642 0 is_stmt 0 discriminator 1
	movl	$0, black_castled(%rip)	#, black_castled
.L121:
	.loc 1 643 0 is_stmt 1
	movl	$50, book_ply(%rip)	#, book_ply
	.loc 1 644 0
	movl	$0, ep_square(%rip)	#, ep_square
	.loc 1 645 0
	movl	$0, move_number(%rip)	#, move_number
	.loc 1 646 0
	movl	$256, %edx	#,
	movl	$0, %esi	#,
	movl	$opening_history, %edi	#,
	call	memset	#
	.loc 1 647 0
	call	clear_tt	#
	.loc 1 648 0
	call	initialize_hash	#
	.loc 1 649 0
	call	reset_piece_square	#
	jmp	.L68	#
.L119:
	.loc 1 651 0
	cmpl	$0, -24912(%rbp)	#, is_edit_mode
	je	.L122	#,
	.loc 1 651 0 is_stmt 0 discriminator 1
	leaq	-816(%rbp), %rax	#, input.148
	movzbl	(%rax), %edx	# MEM[(const unsigned char * {ref-all})input.148_298], D.4653
	movl	$.LC70, %eax	#, D.4654
	movzbl	(%rax), %eax	# MEM[(const unsigned char * {ref-all})_300], D.4653
	cmpb	%al, %dl	# D.4653, D.4653
	jne	.L122	#,
	.loc 1 652 0 is_stmt 1
	cmpl	$0, -24908(%rbp)	#, edit_color
	jne	.L123	#,
	.loc 1 652 0 is_stmt 0 discriminator 1
	movl	$1, -24908(%rbp)	#, edit_color
	jmp	.L68	#
.L123:
	.loc 1 652 0 discriminator 2
	movl	$0, -24908(%rbp)	#, edit_color
	jmp	.L68	#
.L122:
	.loc 1 654 0 is_stmt 1
	cmpl	$0, -24912(%rbp)	#, is_edit_mode
	je	.L125	#,
	.loc 1 654 0 is_stmt 0 discriminator 1
	leaq	-816(%rbp), %rax	#, input.149
	movzbl	(%rax), %edx	# MEM[(const unsigned char * {ref-all})input.149_304], D.4653
	movl	$.LC71, %eax	#, D.4654
	movzbl	(%rax), %eax	# MEM[(const unsigned char * {ref-all})_306], D.4653
	cmpb	%al, %dl	# D.4653, D.4653
	jne	.L125	#,
	.loc 1 655 0 is_stmt 1
	call	reset_board	#
	.loc 1 656 0
	movl	$0, move_number(%rip)	#, move_number
	jmp	.L68	#
.L125:
	.loc 1 658 0
	cmpl	$0, -24912(%rbp)	#, is_edit_mode
	je	.L126	#,
	.loc 1 659 0
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_308, D.4656
	movzbl	-816(%rbp), %edx	# input, D.4650
	movsbq	%dl, %rdx	# D.4650, D.4657
	addq	%rdx, %rdx	# D.4657
	addq	%rdx, %rax	# D.4657, D.4656
	movzwl	(%rax), %eax	# *_313, D.4658
	movzwl	%ax, %eax	# D.4658, D.4649
	andl	$1024, %eax	#, D.4649
	testl	%eax, %eax	# D.4649
	je	.L126	#,
	.loc 1 660 0
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_317, D.4656
	movzbl	-815(%rbp), %edx	# input, D.4650
	movsbq	%dl, %rdx	# D.4650, D.4657
	addq	%rdx, %rdx	# D.4657
	addq	%rdx, %rax	# D.4657, D.4656
	movzwl	(%rax), %eax	# *_322, D.4658
	movzwl	%ax, %eax	# D.4658, D.4649
	andl	$1024, %eax	#, D.4649
	testl	%eax, %eax	# D.4649
	je	.L126	#,
	.loc 1 661 0
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_326, D.4656
	movzbl	-814(%rbp), %edx	# input, D.4650
	movsbq	%dl, %rdx	# D.4650, D.4657
	addq	%rdx, %rdx	# D.4657
	addq	%rdx, %rax	# D.4657, D.4656
	movzwl	(%rax), %eax	# *_331, D.4658
	movzwl	%ax, %eax	# D.4658, D.4649
	andl	$2048, %eax	#, D.4649
	testl	%eax, %eax	# D.4649
	je	.L126	#,
	.loc 1 662 0
	movzbl	-814(%rbp), %eax	# input, D.4650
	movsbl	%al, %ecx	# D.4650, D.4649
	movzbl	-815(%rbp), %eax	# input, D.4650
	movsbl	%al, %edx	# D.4650, D.4649
	movzbl	-816(%rbp), %eax	# input, D.4650
	movsbl	%al, %esi	# D.4650, D.4649
	movl	-24908(%rbp), %eax	# edit_color, tmp658
	movl	%eax, %edi	# tmp658,
	call	PutPiece	#
	jmp	.L68	#
.L126:
	.loc 1 664 0
	leaq	-816(%rbp), %rax	#, tmp659
	movl	$7, %edx	#,
	movl	$.LC72, %esi	#,
	movq	%rax, %rdi	# tmp659,
	call	strncmp	#
	testl	%eax, %eax	# D.4649
	jne	.L127	#,
	.loc 1 665 0
	leaq	-816(%rbp), %rax	#, tmp660
	addq	$7, %rax	#, tmp661
	movq	%rax, %rdi	# tmp661,
	call	HandlePartner	#
	jmp	.L68	#
.L127:
	.loc 1 667 0
	leaq	-816(%rbp), %rax	#, tmp662
	movl	$8, %edx	#,
	movl	$.LC73, %esi	#,
	movq	%rax, %rdi	# tmp662,
	call	strncmp	#
	testl	%eax, %eax	# D.4649
	jne	.L128	#,
	.loc 1 668 0
	leaq	-816(%rbp), %rax	#, tmp663
	addq	$8, %rax	#, tmp664
	movq	%rax, %rdi	# tmp664,
	call	HandlePartner	#
	jmp	.L68	#
.L128:
	.loc 1 670 0
	leaq	-816(%rbp), %rax	#, tmp665
	movl	$5, %edx	#,
	movl	$.LC74, %esi	#,
	movq	%rax, %rdi	# tmp665,
	call	strncmp	#
	testl	%eax, %eax	# D.4649
	jne	.L129	#,
	.loc 1 671 0
	leaq	-816(%rbp), %rax	#, tmp666
	movq	%rax, %rdi	# tmp666,
	call	HandlePtell	#
	jmp	.L68	#
.L129:
	.loc 1 673 0
	leaq	-816(%rbp), %rax	#, tmp667
	movl	$4, %edx	#,
	movl	$.LC75, %esi	#,
	movq	%rax, %rdi	# tmp667,
	call	strncmp	#
	testl	%eax, %eax	# D.4649
	jne	.L130	#,
	.loc 1 674 0
	call	run_epd_testsuite	#
	jmp	.L68	#
.L130:
	.loc 1 676 0
	leaq	-816(%rbp), %rax	#, tmp668
	movl	$2, %edx	#,
	movl	$.LC76, %esi	#,
	movq	%rax, %rdi	# tmp668,
	call	strncmp	#
	testl	%eax, %eax	# D.4649
	jne	.L131	#,
	.loc 1 677 0
	leaq	-816(%rbp), %rax	#, tmp669
	addq	$3, %rax	#, tmp670
	movl	$fixed_time, %edx	#,
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp670,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	.loc 1 678 0
	movl	fixed_time(%rip), %eax	# fixed_time, fixed_time.150
	imull	$100, %eax, %eax	#, fixed_time.150, fixed_time.151
	movl	%eax, fixed_time(%rip)	# fixed_time.151, fixed_time
	jmp	.L68	#
.L131:
	.loc 1 680 0
	leaq	-816(%rbp), %rax	#, tmp671
	movl	$6, %edx	#,
	movl	$.LC77, %esi	#,
	movq	%rax, %rdi	# tmp671,
	call	strncmp	#
	testl	%eax, %eax	# D.4649
	je	.L68	#,
	.loc 1 682 0
	leaq	-816(%rbp), %rax	#, tmp672
	movl	$5, %edx	#,
	movl	$.LC78, %esi	#,
	movq	%rax, %rdi	# tmp672,
	call	strncmp	#
	testl	%eax, %eax	# D.4649
	jne	.L132	#,
	.loc 1 683 0
	movl	$.LC79, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 684 0
	call	rtime	#
	movq	%rax, start_time(%rip)	# start_time.152, start_time
	.loc 1 685 0
	movq	stdin(%rip), %rdx	# stdin, stdin.153
	leaq	-304(%rbp), %rax	#, tmp673
	movl	$256, %esi	#,
	movq	%rax, %rdi	# tmp673,
	call	rinput	#
	.loc 1 686 0
	leaq	-304(%rbp), %rax	#, tmp674
	movq	%rax, %rdi	# tmp674,
	call	atol	#
	imull	$100, %eax, %eax	#, D.4659, D.4659
	movl	%eax, pn_time(%rip)	# pn_time.154, pn_time
	.loc 1 687 0
	movl	$10, %edi	#,
	call	putchar	#
	.loc 1 688 0
	call	proofnumbersearch	#
	jmp	.L68	#
.L132:
	.loc 1 690 0
	leaq	-816(%rbp), %rax	#, tmp675
	movl	$4, %edx	#,
	movl	$.LC80, %esi	#,
	movq	%rax, %rdi	# tmp675,
	call	strncmp	#
	testl	%eax, %eax	# D.4649
	jne	.L133	#,
	.loc 1 691 0
	leaq	-24920(%rbp), %rax	#, tmp676
	leaq	-816(%rbp), %rdx	#, tmp677
	leaq	5(%rdx), %rcx	#, tmp678
	movq	%rax, %rdx	# tmp676,
	movl	$.LC26, %esi	#,
	movq	%rcx, %rdi	# tmp678,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	.loc 1 692 0
	movl	-24920(%rbp), %eax	# pingnum, pingnum.155
	movl	%eax, %esi	# pingnum.155,
	movl	$.LC81, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	jmp	.L68	#
.L133:
	.loc 1 694 0
	leaq	-816(%rbp), %rax	#, tmp679
	movl	$5, %edx	#,
	movl	$.LC82, %esi	#,
	movq	%rax, %rdi	# tmp679,
	call	strncmp	#
	testl	%eax, %eax	# D.4649
	jne	.L134	#,
	.loc 1 695 0
	movl	$1, -24904(%rbp)	#, braindeadinterface
	jmp	.L68	#
.L134:
	.loc 1 697 0
	leaq	-816(%rbp), %rax	#, tmp680
	movl	$5, %edx	#,
	movl	$.LC83, %esi	#,
	movq	%rax, %rdi	# tmp680,
	call	strncmp	#
	testl	%eax, %eax	# D.4649
	jne	.L135	#,
	.loc 1 699 0
	movq	std_material(%rip), %rax	# MEM[(char * {ref-all})&std_material], tmp683
	movq	%rax, material(%rip)	# tmp683, MEM[(char * {ref-all})&material]
	movq	std_material+8(%rip), %rax	# MEM[(char * {ref-all})&std_material], tmp684
	movq	%rax, material+8(%rip)	# tmp684, MEM[(char * {ref-all})&material]
	movq	std_material+16(%rip), %rax	# MEM[(char * {ref-all})&std_material], tmp685
	movq	%rax, material+16(%rip)	# tmp685, MEM[(char * {ref-all})&material]
	movq	std_material+24(%rip), %rax	# MEM[(char * {ref-all})&std_material], tmp686
	movq	%rax, material+24(%rip)	# tmp686, MEM[(char * {ref-all})&material]
	movq	std_material+32(%rip), %rax	# MEM[(char * {ref-all})&std_material], tmp687
	movq	%rax, material+32(%rip)	# tmp687, MEM[(char * {ref-all})&material]
	movq	std_material+40(%rip), %rax	# MEM[(char * {ref-all})&std_material], tmp688
	movq	%rax, material+40(%rip)	# tmp688, MEM[(char * {ref-all})&material]
	movq	std_material+48(%rip), %rax	# MEM[(char * {ref-all})&std_material], tmp689
	movq	%rax, material+48(%rip)	# tmp689, MEM[(char * {ref-all})&material]
	.loc 1 700 0
	movl	$2, Variant(%rip)	#, Variant
	.loc 1 702 0
	call	init_game	#
	.loc 1 703 0
	call	initialize_hash	#
	.loc 1 705 0
	call	clear_tt	#
	.loc 1 706 0
	call	reset_ecache	#
	.loc 1 708 0
	movl	$0, -24916(%rbp)	#, force_mode
	.loc 1 709 0
	movl	$0, fixed_time(%rip)	#, fixed_time
	.loc 1 711 0
	movl	$0, root_to_move(%rip)	#, root_to_move
	.loc 1 713 0
	movl	$0, comp_color(%rip)	#, comp_color
	.loc 1 714 0
	movl	$0, move_number(%rip)	#, move_number
	.loc 1 715 0
	movl	$0, bookidx(%rip)	#, bookidx
	.loc 1 716 0
	movl	$2000, opp_rating(%rip)	#, opp_rating
	movl	opp_rating(%rip), %eax	# opp_rating, opp_rating.156
	movl	%eax, my_rating(%rip)	# opp_rating.156, my_rating
	jmp	.L68	#
.L135:
	.loc 1 718 0
	leaq	-816(%rbp), %rax	#, tmp690
	movl	$8, %edx	#,
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# tmp690,
	call	strncmp	#
	testl	%eax, %eax	# D.4649
	jne	.L136	#,
	.loc 1 719 0
	leaq	-816(%rbp), %rax	#, tmp691
	addq	$9, %rax	#, tmp692
	movq	%rax, %rdi	# tmp692,
	call	setup_epd_line	#
	jmp	.L68	#
.L136:
	.loc 1 721 0
	leaq	-816(%rbp), %rax	#, input.157
	movzbl	(%rax), %edx	# MEM[(const unsigned char * {ref-all})input.157_364], D.4653
	movl	$.LC69, %eax	#, D.4654
	movzbl	(%rax), %eax	# MEM[(const unsigned char * {ref-all})_366], D.4653
	cmpb	%al, %dl	# D.4653, D.4653
	jne	.L137	#,
	.loc 1 724 0
	jmp	.L68	#
.L137:
	.loc 1 726 0
	leaq	-816(%rbp), %rax	#, tmp693
	movl	$2, %edx	#,
	movl	$.LC84, %esi	#,
	movq	%rax, %rdi	# tmp693,
	call	strncmp	#
	testl	%eax, %eax	# D.4649
	jne	.L138	#,
	.loc 1 727 0
	leaq	-816(%rbp), %rax	#, tmp694
	addq	$3, %rax	#, tmp695
	movl	$maxdepth, %edx	#,
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp695,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	.loc 1 728 0
	movl	maxdepth(%rip), %eax	# maxdepth, maxdepth.158
	movl	%eax, %esi	# maxdepth.158,
	movl	$.LC85, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 729 0
	jmp	.L68	#
.L138:
	.loc 1 731 0
	leaq	-816(%rbp), %rax	#, tmp696
	movl	$4, %edx	#,
	movl	$.LC86, %esi	#,
	movq	%rax, %rdi	# tmp696,
	call	strncmp	#
	testl	%eax, %eax	# D.4649
	jne	.L139	#,
	.loc 1 732 0
	movl	$1, -24900(%rbp)	#, automode
	.loc 1 733 0
	jmp	.L68	#
.L139:
	.loc 1 735 0
	leaq	-816(%rbp), %rax	#, tmp697
	movl	$8, %edx	#,
	movl	$.LC87, %esi	#,
	movq	%rax, %rdi	# tmp697,
	call	strncmp	#
	testl	%eax, %eax	# D.4649
	jne	.L140	#,
	.loc 1 736 0
	movl	$.LC88, %edi	#,
	call	puts	#
	.loc 1 737 0
	movl	$.LC89, %edi	#,
	call	puts	#
	.loc 1 738 0
	movl	$.LC90, %edi	#,
	call	puts	#
	.loc 1 739 0
	movl	$.LC91, %edi	#,
	call	puts	#
	.loc 1 740 0
	movl	$.LC92, %edi	#,
	call	puts	#
	.loc 1 741 0
	movl	$2, xb_mode(%rip)	#, xb_mode
	jmp	.L68	#
.L140:
	.loc 1 743 0
	leaq	-816(%rbp), %rax	#, tmp698
	movl	$8, %edx	#,
	movl	$.LC93, %esi	#,
	movq	%rax, %rdi	# tmp698,
	call	strncmp	#
	testl	%eax, %eax	# D.4649
	je	.L68	#,
	.loc 1 746 0
	leaq	-816(%rbp), %rax	#, tmp699
	movl	$8, %edx	#,
	movl	$.LC94, %esi	#,
	movq	%rax, %rdi	# tmp699,
	call	strncmp	#
	testl	%eax, %eax	# D.4649
	jne	.L141	#,
	.loc 1 747 0
	movl	$.LC95, %edi	#,
	call	puts	#
	jmp	.L68	#
.L141:
	.loc 1 749 0
	leaq	-816(%rbp), %rax	#, tmp700
	movl	$.LC96, %esi	#,
	movq	%rax, %rdi	# tmp700,
	call	strcmp	#
	testl	%eax, %eax	# D.4649
	jne	.L142	#,
	.loc 1 750 0
	movl	$divider, %esi	#,
	movl	$.LC97, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 751 0
	movl	$.LC98, %edi	#,
	call	puts	#
	.loc 1 752 0
	movl	$.LC99, %edi	#,
	call	puts	#
	.loc 1 753 0
	movl	$.LC100, %edi	#,
	call	puts	#
	.loc 1 754 0
	movl	$.LC101, %edi	#,
	call	puts	#
	.loc 1 755 0
	movl	$.LC102, %edi	#,
	call	puts	#
	.loc 1 756 0
	movl	$.LC103, %edi	#,
	call	puts	#
	.loc 1 757 0
	movl	$.LC104, %edi	#,
	call	puts	#
	.loc 1 758 0
	movl	$.LC105, %edi	#,
	call	puts	#
	.loc 1 759 0
	movl	$.LC106, %edi	#,
	call	puts	#
	.loc 1 760 0
	movl	$.LC107, %edi	#,
	call	puts	#
	.loc 1 761 0
	movl	$.LC108, %edi	#,
	call	puts	#
	.loc 1 762 0
	movl	$.LC109, %edi	#,
	call	puts	#
	.loc 1 763 0
	movl	$.LC110, %edi	#,
	call	puts	#
	.loc 1 764 0
	movl	$.LC111, %edi	#,
	call	puts	#
	.loc 1 765 0
	movl	$.LC112, %edi	#,
	call	puts	#
	.loc 1 766 0
	movl	$.LC113, %edi	#,
	call	puts	#
	.loc 1 767 0
	movl	$.LC114, %edi	#,
	call	puts	#
	.loc 1 768 0
	movl	$.LC115, %edi	#,
	call	puts	#
	.loc 1 769 0
	movl	$.LC116, %edi	#,
	call	puts	#
	.loc 1 770 0
	movl	$.LC117, %edi	#,
	call	puts	#
	.loc 1 771 0
	movl	$.LC118, %edi	#,
	call	puts	#
	.loc 1 772 0
	movl	$.LC119, %edi	#,
	call	puts	#
	.loc 1 773 0
	movl	$.LC120, %edi	#,
	call	puts	#
	.loc 1 774 0
	movl	$divider, %esi	#,
	movl	$.LC97, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 776 0
	movl	$0, -24924(%rbp)	#, show_board
	jmp	.L68	#
.L142:
	.loc 1 778 0
	movl	xb_mode(%rip), %eax	# xb_mode, xb_mode.159
	testl	%eax, %eax	# xb_mode.159
	jne	.L68	#,
	.loc 1 779 0
	leaq	-816(%rbp), %rax	#, tmp701
	movq	%rax, %rsi	# tmp701,
	movl	$.LC19, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 784 0
	jmp	.L2	#
.L68:
	jmp	.L2	#
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC1:
	.long	1120403456
	.align 4
.LC3:
	.long	1065353216
	.align 8
.LC28:
	.long	0
	.long	1079574528
	.text
.Letext0:
	.file 2 "sjeng.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/ctype.h"
	.file 5 "/usr/include/signal.h"
	.file 6 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 7 "/usr/include/time.h"
	.file 8 "/usr/include/libio.h"
	.file 9 "/usr/include/stdio.h"
	.file 10 "extvars.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xdf4
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF198
	.byte	0x1
	.long	.LASF199
	.long	.LASF200
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
	.uleb128 0x4
	.long	.LASF27
	.byte	0x5
	.byte	0x55
	.long	0x123
	.uleb128 0x8
	.byte	0x8
	.long	0x129
	.uleb128 0x9
	.long	0x134
	.uleb128 0xa
	.long	0x77
	.byte	0
	.uleb128 0x4
	.long	.LASF28
	.byte	0x6
	.byte	0xd4
	.long	0x62
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF29
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF30
	.uleb128 0x4
	.long	.LASF31
	.byte	0x7
	.byte	0x4b
	.long	0xa2
	.uleb128 0xb
	.long	.LASF61
	.byte	0xd8
	.byte	0x8
	.byte	0xf6
	.long	0x2d9
	.uleb128 0xc
	.long	.LASF32
	.byte	0x8
	.byte	0xf7
	.long	0x77
	.byte	0
	.uleb128 0xc
	.long	.LASF33
	.byte	0x8
	.byte	0xfc
	.long	0xaf
	.byte	0x8
	.uleb128 0xc
	.long	.LASF34
	.byte	0x8
	.byte	0xfd
	.long	0xaf
	.byte	0x10
	.uleb128 0xc
	.long	.LASF35
	.byte	0x8
	.byte	0xfe
	.long	0xaf
	.byte	0x18
	.uleb128 0xc
	.long	.LASF36
	.byte	0x8
	.byte	0xff
	.long	0xaf
	.byte	0x20
	.uleb128 0xd
	.long	.LASF37
	.byte	0x8
	.value	0x100
	.long	0xaf
	.byte	0x28
	.uleb128 0xd
	.long	.LASF38
	.byte	0x8
	.value	0x101
	.long	0xaf
	.byte	0x30
	.uleb128 0xd
	.long	.LASF39
	.byte	0x8
	.value	0x102
	.long	0xaf
	.byte	0x38
	.uleb128 0xd
	.long	.LASF40
	.byte	0x8
	.value	0x103
	.long	0xaf
	.byte	0x40
	.uleb128 0xd
	.long	.LASF41
	.byte	0x8
	.value	0x105
	.long	0xaf
	.byte	0x48
	.uleb128 0xd
	.long	.LASF42
	.byte	0x8
	.value	0x106
	.long	0xaf
	.byte	0x50
	.uleb128 0xd
	.long	.LASF43
	.byte	0x8
	.value	0x107
	.long	0xaf
	.byte	0x58
	.uleb128 0xd
	.long	.LASF44
	.byte	0x8
	.value	0x109
	.long	0x311
	.byte	0x60
	.uleb128 0xd
	.long	.LASF45
	.byte	0x8
	.value	0x10b
	.long	0x317
	.byte	0x68
	.uleb128 0xd
	.long	.LASF46
	.byte	0x8
	.value	0x10d
	.long	0x77
	.byte	0x70
	.uleb128 0xd
	.long	.LASF47
	.byte	0x8
	.value	0x111
	.long	0x77
	.byte	0x74
	.uleb128 0xd
	.long	.LASF48
	.byte	0x8
	.value	0x113
	.long	0x85
	.byte	0x78
	.uleb128 0xd
	.long	.LASF49
	.byte	0x8
	.value	0x117
	.long	0x54
	.byte	0x80
	.uleb128 0xd
	.long	.LASF50
	.byte	0x8
	.value	0x118
	.long	0x69
	.byte	0x82
	.uleb128 0xd
	.long	.LASF51
	.byte	0x8
	.value	0x119
	.long	0x31d
	.byte	0x83
	.uleb128 0xd
	.long	.LASF52
	.byte	0x8
	.value	0x11d
	.long	0x32d
	.byte	0x88
	.uleb128 0xd
	.long	.LASF53
	.byte	0x8
	.value	0x126
	.long	0x90
	.byte	0x90
	.uleb128 0xd
	.long	.LASF54
	.byte	0x8
	.value	0x12f
	.long	0xad
	.byte	0x98
	.uleb128 0xd
	.long	.LASF55
	.byte	0x8
	.value	0x130
	.long	0xad
	.byte	0xa0
	.uleb128 0xd
	.long	.LASF56
	.byte	0x8
	.value	0x131
	.long	0xad
	.byte	0xa8
	.uleb128 0xd
	.long	.LASF57
	.byte	0x8
	.value	0x132
	.long	0xad
	.byte	0xb0
	.uleb128 0xd
	.long	.LASF58
	.byte	0x8
	.value	0x133
	.long	0x134
	.byte	0xb8
	.uleb128 0xd
	.long	.LASF59
	.byte	0x8
	.value	0x135
	.long	0x77
	.byte	0xc0
	.uleb128 0xd
	.long	.LASF60
	.byte	0x8
	.value	0x137
	.long	0x333
	.byte	0xc4
	.byte	0
	.uleb128 0xe
	.long	.LASF201
	.byte	0x8
	.byte	0x9b
	.uleb128 0xb
	.long	.LASF62
	.byte	0x18
	.byte	0x8
	.byte	0xa1
	.long	0x311
	.uleb128 0xc
	.long	.LASF63
	.byte	0x8
	.byte	0xa2
	.long	0x311
	.byte	0
	.uleb128 0xc
	.long	.LASF64
	.byte	0x8
	.byte	0xa3
	.long	0x317
	.byte	0x8
	.uleb128 0xc
	.long	.LASF65
	.byte	0x8
	.byte	0xa7
	.long	0x77
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2e0
	.uleb128 0x8
	.byte	0x8
	.long	0x158
	.uleb128 0xf
	.long	0xb5
	.long	0x32d
	.uleb128 0x10
	.long	0x9b
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2d9
	.uleb128 0xf
	.long	0xb5
	.long	0x343
	.uleb128 0x10
	.long	0x9b
	.byte	0x13
	.byte	0
	.uleb128 0x11
	.byte	0x18
	.byte	0x2
	.byte	0x5f
	.long	0x393
	.uleb128 0xc
	.long	.LASF66
	.byte	0x2
	.byte	0x60
	.long	0x77
	.byte	0
	.uleb128 0xc
	.long	.LASF67
	.byte	0x2
	.byte	0x61
	.long	0x77
	.byte	0x4
	.uleb128 0xc
	.long	.LASF68
	.byte	0x2
	.byte	0x62
	.long	0x77
	.byte	0x8
	.uleb128 0xc
	.long	.LASF69
	.byte	0x2
	.byte	0x63
	.long	0x77
	.byte	0xc
	.uleb128 0xc
	.long	.LASF70
	.byte	0x2
	.byte	0x64
	.long	0x77
	.byte	0x10
	.uleb128 0x12
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
	.long	0x343
	.uleb128 0x11
	.byte	0x10
	.byte	0x2
	.byte	0x68
	.long	0x3d7
	.uleb128 0xc
	.long	.LASF72
	.byte	0x2
	.byte	0x69
	.long	0x77
	.byte	0
	.uleb128 0xc
	.long	.LASF73
	.byte	0x2
	.byte	0x6a
	.long	0x77
	.byte	0x4
	.uleb128 0xc
	.long	.LASF74
	.byte	0x2
	.byte	0x6b
	.long	0x77
	.byte	0x8
	.uleb128 0xc
	.long	.LASF75
	.byte	0x2
	.byte	0x6c
	.long	0x77
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.long	.LASF76
	.byte	0x2
	.byte	0x6d
	.long	0x39e
	.uleb128 0x4
	.long	.LASF77
	.byte	0x2
	.byte	0xa1
	.long	0x14d
	.uleb128 0x13
	.long	.LASF202
	.byte	0x1
	.byte	0x4b
	.long	0x77
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x53a
	.uleb128 0x14
	.long	.LASF78
	.byte	0x1
	.byte	0x4b
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24948
	.uleb128 0x14
	.long	.LASF79
	.byte	0x1
	.byte	0x4b
	.long	0x53a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24960
	.uleb128 0x15
	.long	.LASF80
	.byte	0x1
	.byte	0x4d
	.long	0x540
	.uleb128 0x3
	.byte	0x91
	.sleb128 -832
	.uleb128 0x16
	.string	"p"
	.byte	0x1
	.byte	0x4d
	.long	0xaf
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24912
	.uleb128 0x15
	.long	.LASF81
	.byte	0x1
	.byte	0x4d
	.long	0x540
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x15
	.long	.LASF82
	.byte	0x1
	.byte	0x4e
	.long	0x540
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x15
	.long	.LASF83
	.byte	0x1
	.byte	0x4f
	.long	0x393
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24896
	.uleb128 0x15
	.long	.LASF84
	.byte	0x1
	.byte	0x4f
	.long	0x393
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24864
	.uleb128 0x15
	.long	.LASF85
	.byte	0x1
	.byte	0x50
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24944
	.uleb128 0x15
	.long	.LASF86
	.byte	0x1
	.byte	0x51
	.long	0x42
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24932
	.uleb128 0x15
	.long	.LASF87
	.byte	0x1
	.byte	0x51
	.long	0x42
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24940
	.uleb128 0x15
	.long	.LASF88
	.byte	0x1
	.byte	0x52
	.long	0x550
	.uleb128 0x4
	.byte	0x91
	.sleb128 -15232
	.uleb128 0x15
	.long	.LASF89
	.byte	0x1
	.byte	0x53
	.long	0x561
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24832
	.uleb128 0x15
	.long	.LASF90
	.byte	0x1
	.byte	0x54
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24928
	.uleb128 0x15
	.long	.LASF91
	.byte	0x1
	.byte	0x54
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24924
	.uleb128 0x15
	.long	.LASF92
	.byte	0x1
	.byte	0x55
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24936
	.uleb128 0x15
	.long	.LASF93
	.byte	0x1
	.byte	0x56
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24920
	.uleb128 0x15
	.long	.LASF94
	.byte	0x1
	.byte	0x57
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24916
	.uleb128 0x15
	.long	.LASF95
	.byte	0x1
	.byte	0x58
	.long	0x3e2
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24904
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xaf
	.uleb128 0xf
	.long	0xb5
	.long	0x550
	.uleb128 0x10
	.long	0x9b
	.byte	0xff
	.byte	0
	.uleb128 0xf
	.long	0x393
	.long	0x561
	.uleb128 0x17
	.long	0x9b
	.value	0x257
	.byte	0
	.uleb128 0xf
	.long	0x3d7
	.long	0x572
	.uleb128 0x17
	.long	0x9b
	.value	0x257
	.byte	0
	.uleb128 0x18
	.long	.LASF96
	.byte	0x9
	.byte	0xa8
	.long	0x317
	.uleb128 0x18
	.long	.LASF97
	.byte	0x9
	.byte	0xa9
	.long	0x317
	.uleb128 0xf
	.long	0xb5
	.long	0x598
	.uleb128 0x10
	.long	0x9b
	.byte	0x31
	.byte	0
	.uleb128 0x19
	.long	.LASF98
	.byte	0x1
	.byte	0x10
	.long	0x588
	.uleb128 0x9
	.byte	0x3
	.quad	divider
	.uleb128 0xf
	.long	0x77
	.long	0x5bd
	.uleb128 0x10
	.long	0x9b
	.byte	0x8f
	.byte	0
	.uleb128 0x19
	.long	.LASF99
	.byte	0x1
	.byte	0x13
	.long	0x5ad
	.uleb128 0x9
	.byte	0x3
	.quad	board
	.uleb128 0x19
	.long	.LASF100
	.byte	0x1
	.byte	0x13
	.long	0x5ad
	.uleb128 0x9
	.byte	0x3
	.quad	moved
	.uleb128 0x19
	.long	.LASF101
	.byte	0x1
	.byte	0x13
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	ep_square
	.uleb128 0x19
	.long	.LASF102
	.byte	0x1
	.byte	0x13
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	white_to_move
	.uleb128 0x19
	.long	.LASF103
	.byte	0x1
	.byte	0x13
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	wking_loc
	.uleb128 0x19
	.long	.LASF104
	.byte	0x1
	.byte	0x14
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	bking_loc
	.uleb128 0x19
	.long	.LASF105
	.byte	0x1
	.byte	0x14
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	white_castled
	.uleb128 0x19
	.long	.LASF106
	.byte	0x1
	.byte	0x14
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	black_castled
	.uleb128 0x19
	.long	.LASF107
	.byte	0x1
	.byte	0x14
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	result
	.uleb128 0x1a
	.string	"ply"
	.byte	0x1
	.byte	0x14
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	ply
	.uleb128 0xf
	.long	0x77
	.long	0x6a0
	.uleb128 0x17
	.long	0x9b
	.value	0x12b
	.byte	0
	.uleb128 0x19
	.long	.LASF108
	.byte	0x1
	.byte	0x14
	.long	0x68f
	.uleb128 0x9
	.byte	0x3
	.quad	pv_length
	.uleb128 0x19
	.long	.LASF109
	.byte	0x1
	.byte	0x15
	.long	0x5ad
	.uleb128 0x9
	.byte	0x3
	.quad	squares
	.uleb128 0x19
	.long	.LASF110
	.byte	0x1
	.byte	0x15
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	num_pieces
	.uleb128 0x19
	.long	.LASF111
	.byte	0x1
	.byte	0x15
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	i_depth
	.uleb128 0x19
	.long	.LASF112
	.byte	0x1
	.byte	0x13
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	comp_color
	.uleb128 0x19
	.long	.LASF75
	.byte	0x1
	.byte	0x15
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	fifty
	.uleb128 0x19
	.long	.LASF113
	.byte	0x1
	.byte	0x15
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	piece_count
	.uleb128 0x19
	.long	.LASF114
	.byte	0x1
	.byte	0x17
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	nodes
	.uleb128 0x19
	.long	.LASF115
	.byte	0x1
	.byte	0x17
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	raw_nodes
	.uleb128 0x19
	.long	.LASF116
	.byte	0x1
	.byte	0x17
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	qnodes
	.uleb128 0x19
	.long	.LASF117
	.byte	0x1
	.byte	0x17
	.long	0x68f
	.uleb128 0x9
	.byte	0x3
	.quad	killer_scores
	.uleb128 0x19
	.long	.LASF118
	.byte	0x1
	.byte	0x18
	.long	0x68f
	.uleb128 0x9
	.byte	0x3
	.quad	killer_scores2
	.uleb128 0x19
	.long	.LASF119
	.byte	0x1
	.byte	0x18
	.long	0x68f
	.uleb128 0x9
	.byte	0x3
	.quad	killer_scores3
	.uleb128 0x19
	.long	.LASF120
	.byte	0x1
	.byte	0x18
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	moves_to_tc
	.uleb128 0x19
	.long	.LASF121
	.byte	0x1
	.byte	0x18
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	min_per_game
	.uleb128 0x19
	.long	.LASF122
	.byte	0x1
	.byte	0x19
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	sec_per_game
	.uleb128 0x1a
	.string	"inc"
	.byte	0x1
	.byte	0x19
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	inc
	.uleb128 0x19
	.long	.LASF123
	.byte	0x1
	.byte	0x19
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	time_left
	.uleb128 0x19
	.long	.LASF124
	.byte	0x1
	.byte	0x19
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	opp_time
	.uleb128 0x19
	.long	.LASF125
	.byte	0x1
	.byte	0x19
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	time_cushion
	.uleb128 0x19
	.long	.LASF126
	.byte	0x1
	.byte	0x19
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	time_for_move
	.uleb128 0x19
	.long	.LASF127
	.byte	0x1
	.byte	0x19
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	cur_score
	.uleb128 0xf
	.long	0x5b
	.long	0x884
	.uleb128 0x10
	.long	0x9b
	.byte	0x8f
	.uleb128 0x10
	.long	0x9b
	.byte	0x8f
	.byte	0
	.uleb128 0x19
	.long	.LASF128
	.byte	0x1
	.byte	0x1b
	.long	0x86e
	.uleb128 0x9
	.byte	0x3
	.quad	history_h
	.uleb128 0x19
	.long	.LASF129
	.byte	0x1
	.byte	0x20
	.long	0x42
	.uleb128 0x9
	.byte	0x3
	.quad	captures
	.uleb128 0x19
	.long	.LASF130
	.byte	0x1
	.byte	0x20
	.long	0x42
	.uleb128 0x9
	.byte	0x3
	.quad	searching_pv
	.uleb128 0x19
	.long	.LASF131
	.byte	0x1
	.byte	0x20
	.long	0x42
	.uleb128 0x9
	.byte	0x3
	.quad	post
	.uleb128 0x19
	.long	.LASF132
	.byte	0x1
	.byte	0x20
	.long	0x42
	.uleb128 0x9
	.byte	0x3
	.quad	time_exit
	.uleb128 0x19
	.long	.LASF133
	.byte	0x1
	.byte	0x20
	.long	0x42
	.uleb128 0x9
	.byte	0x3
	.quad	time_failure
	.uleb128 0x19
	.long	.LASF134
	.byte	0x1
	.byte	0x22
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	xb_mode
	.uleb128 0x19
	.long	.LASF135
	.byte	0x1
	.byte	0x22
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	maxdepth
	.uleb128 0xf
	.long	0x393
	.long	0x944
	.uleb128 0x17
	.long	0x9b
	.value	0x12b
	.uleb128 0x17
	.long	0x9b
	.value	0x12b
	.byte	0
	.uleb128 0x1a
	.string	"pv"
	.byte	0x1
	.byte	0x2b
	.long	0x92c
	.uleb128 0x9
	.byte	0x3
	.quad	pv
	.uleb128 0x19
	.long	.LASF136
	.byte	0x1
	.byte	0x11
	.long	0x393
	.uleb128 0x9
	.byte	0x3
	.quad	dummy
	.uleb128 0xf
	.long	0x393
	.long	0x97e
	.uleb128 0x17
	.long	0x9b
	.value	0x12b
	.byte	0
	.uleb128 0x19
	.long	.LASF137
	.byte	0x1
	.byte	0x2b
	.long	0x96d
	.uleb128 0x9
	.byte	0x3
	.quad	killer1
	.uleb128 0x19
	.long	.LASF138
	.byte	0x1
	.byte	0x2b
	.long	0x96d
	.uleb128 0x9
	.byte	0x3
	.quad	killer2
	.uleb128 0x19
	.long	.LASF139
	.byte	0x1
	.byte	0x2c
	.long	0x96d
	.uleb128 0x9
	.byte	0x3
	.quad	killer3
	.uleb128 0xf
	.long	0x3d7
	.long	0x9ce
	.uleb128 0x17
	.long	0x9b
	.value	0x12b
	.byte	0
	.uleb128 0x19
	.long	.LASF140
	.byte	0x1
	.byte	0x2e
	.long	0x9bd
	.uleb128 0x9
	.byte	0x3
	.quad	path_x
	.uleb128 0x19
	.long	.LASF141
	.byte	0x1
	.byte	0x2f
	.long	0x96d
	.uleb128 0x9
	.byte	0x3
	.quad	path
	.uleb128 0x18
	.long	.LASF142
	.byte	0xa
	.byte	0x1e
	.long	0x77
	.uleb128 0x19
	.long	.LASF143
	.byte	0x1
	.byte	0x31
	.long	0x3e2
	.uleb128 0x9
	.byte	0x3
	.quad	start_time
	.uleb128 0x18
	.long	.LASF144
	.byte	0xa
	.byte	0x25
	.long	0x77
	.uleb128 0x18
	.long	.LASF145
	.byte	0xa
	.byte	0x26
	.long	0x77
	.uleb128 0xf
	.long	0x77
	.long	0xa3e
	.uleb128 0x10
	.long	0x9b
	.byte	0x3d
	.byte	0
	.uleb128 0x19
	.long	.LASF146
	.byte	0x1
	.byte	0x15
	.long	0xa2e
	.uleb128 0x9
	.byte	0x3
	.quad	pieces
	.uleb128 0x19
	.long	.LASF147
	.byte	0x1
	.byte	0x33
	.long	0xa2e
	.uleb128 0x9
	.byte	0x3
	.quad	is_promoted
	.uleb128 0x18
	.long	.LASF148
	.byte	0xa
	.byte	0x38
	.long	0x5b
	.uleb128 0x18
	.long	.LASF149
	.byte	0xa
	.byte	0x3a
	.long	0x5b
	.uleb128 0x18
	.long	.LASF150
	.byte	0xa
	.byte	0x3b
	.long	0x5b
	.uleb128 0x18
	.long	.LASF151
	.byte	0xa
	.byte	0x3d
	.long	0x5b
	.uleb128 0x18
	.long	.LASF152
	.byte	0xa
	.byte	0x3e
	.long	0x5b
	.uleb128 0x18
	.long	.LASF153
	.byte	0xa
	.byte	0x3f
	.long	0x5b
	.uleb128 0x18
	.long	.LASF154
	.byte	0xa
	.byte	0x41
	.long	0x5b
	.uleb128 0x19
	.long	.LASF155
	.byte	0x1
	.byte	0x47
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	book_ply
	.uleb128 0x19
	.long	.LASF156
	.byte	0x1
	.byte	0x48
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	use_book
	.uleb128 0x19
	.long	.LASF157
	.byte	0x1
	.byte	0x49
	.long	0x540
	.uleb128 0x9
	.byte	0x3
	.quad	opening_history
	.uleb128 0x19
	.long	.LASF158
	.byte	0x1
	.byte	0x3b
	.long	0x5b
	.uleb128 0x9
	.byte	0x3
	.quad	bookidx
	.uleb128 0x18
	.long	.LASF159
	.byte	0xa
	.byte	0x4a
	.long	0x77
	.uleb128 0xf
	.long	0x77
	.long	0xb24
	.uleb128 0x10
	.long	0x9b
	.byte	0xd
	.byte	0
	.uleb128 0x18
	.long	.LASF160
	.byte	0xa
	.byte	0x4b
	.long	0xb14
	.uleb128 0x18
	.long	.LASF161
	.byte	0xa
	.byte	0x4c
	.long	0xb14
	.uleb128 0x18
	.long	.LASF162
	.byte	0xa
	.byte	0x4d
	.long	0xb14
	.uleb128 0x18
	.long	.LASF163
	.byte	0xa
	.byte	0x4e
	.long	0xb14
	.uleb128 0x18
	.long	.LASF164
	.byte	0xa
	.byte	0x4f
	.long	0xb14
	.uleb128 0x19
	.long	.LASF165
	.byte	0x1
	.byte	0x35
	.long	0x5b
	.uleb128 0x9
	.byte	0x3
	.quad	NTries
	.uleb128 0x19
	.long	.LASF166
	.byte	0x1
	.byte	0x35
	.long	0x5b
	.uleb128 0x9
	.byte	0x3
	.quad	NCuts
	.uleb128 0x19
	.long	.LASF167
	.byte	0x1
	.byte	0x35
	.long	0x5b
	.uleb128 0x9
	.byte	0x3
	.quad	TExt
	.uleb128 0x19
	.long	.LASF168
	.byte	0x1
	.byte	0x39
	.long	0x42
	.uleb128 0x9
	.byte	0x3
	.quad	is_pondering
	.uleb128 0x1b
	.string	"FH"
	.byte	0xa
	.byte	0x57
	.long	0x5b
	.uleb128 0x1b
	.string	"FHF"
	.byte	0xa
	.byte	0x57
	.long	0x5b
	.uleb128 0x1a
	.string	"PVS"
	.byte	0x1
	.byte	0x36
	.long	0x5b
	.uleb128 0x9
	.byte	0x3
	.quad	PVS
	.uleb128 0x19
	.long	.LASF169
	.byte	0x1
	.byte	0x36
	.long	0x5b
	.uleb128 0x9
	.byte	0x3
	.quad	FULL
	.uleb128 0x19
	.long	.LASF170
	.byte	0x1
	.byte	0x36
	.long	0x5b
	.uleb128 0x9
	.byte	0x3
	.quad	PVSF
	.uleb128 0x19
	.long	.LASF171
	.byte	0x1
	.byte	0x37
	.long	0x5b
	.uleb128 0x9
	.byte	0x3
	.quad	ext_check
	.uleb128 0x18
	.long	.LASF172
	.byte	0xa
	.byte	0x59
	.long	0x5b
	.uleb128 0x18
	.long	.LASF173
	.byte	0xa
	.byte	0x59
	.long	0x5b
	.uleb128 0x18
	.long	.LASF174
	.byte	0xa
	.byte	0x5b
	.long	0x5b
	.uleb128 0x19
	.long	.LASF175
	.byte	0x1
	.byte	0x3d
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	Variant
	.uleb128 0x19
	.long	.LASF176
	.byte	0x1
	.byte	0x3e
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	Giveaway
	.uleb128 0x19
	.long	.LASF177
	.byte	0x1
	.byte	0x39
	.long	0x42
	.uleb128 0x9
	.byte	0x3
	.quad	is_analyzing
	.uleb128 0x19
	.long	.LASF178
	.byte	0x1
	.byte	0x40
	.long	0x540
	.uleb128 0x9
	.byte	0x3
	.quad	my_partner
	.uleb128 0x19
	.long	.LASF179
	.byte	0x1
	.byte	0x41
	.long	0x42
	.uleb128 0x9
	.byte	0x3
	.quad	have_partner
	.uleb128 0x19
	.long	.LASF180
	.byte	0x1
	.byte	0x42
	.long	0x42
	.uleb128 0x9
	.byte	0x3
	.quad	must_sit
	.uleb128 0x18
	.long	.LASF181
	.byte	0xa
	.byte	0x6c
	.long	0x77
	.uleb128 0x19
	.long	.LASF182
	.byte	0x1
	.byte	0x43
	.long	0x42
	.uleb128 0x9
	.byte	0x3
	.quad	go_fast
	.uleb128 0x18
	.long	.LASF183
	.byte	0xa
	.byte	0x6e
	.long	0x42
	.uleb128 0x18
	.long	.LASF184
	.byte	0xa
	.byte	0x6f
	.long	0x42
	.uleb128 0x18
	.long	.LASF185
	.byte	0xa
	.byte	0x70
	.long	0x77
	.uleb128 0x19
	.long	.LASF186
	.byte	0x1
	.byte	0x45
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	fixed_time
	.uleb128 0x19
	.long	.LASF187
	.byte	0x1
	.byte	0x24
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	phase
	.uleb128 0x19
	.long	.LASF188
	.byte	0x1
	.byte	0x25
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	root_to_move
	.uleb128 0x18
	.long	.LASF189
	.byte	0xa
	.byte	0x82
	.long	0x77
	.uleb128 0x18
	.long	.LASF190
	.byte	0xa
	.byte	0x85
	.long	0x42
	.uleb128 0x19
	.long	.LASF191
	.byte	0x1
	.byte	0x27
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	my_rating
	.uleb128 0x19
	.long	.LASF192
	.byte	0x1
	.byte	0x27
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	opp_rating
	.uleb128 0x18
	.long	.LASF193
	.byte	0xa
	.byte	0x9c
	.long	0x77
	.uleb128 0x19
	.long	.LASF194
	.byte	0x1
	.byte	0x1e
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	move_number
	.uleb128 0xf
	.long	0x5b
	.long	0xda8
	.uleb128 0x17
	.long	0x9b
	.value	0x257
	.byte	0
	.uleb128 0x19
	.long	.LASF195
	.byte	0x1
	.byte	0x1d
	.long	0xd97
	.uleb128 0x9
	.byte	0x3
	.quad	hash_history
	.uleb128 0xf
	.long	0xb5
	.long	0xdcd
	.uleb128 0x10
	.long	0x9b
	.byte	0x1d
	.byte	0
	.uleb128 0x19
	.long	.LASF196
	.byte	0x1
	.byte	0x29
	.long	0xdbd
	.uleb128 0x9
	.byte	0x3
	.quad	setcode
	.uleb128 0x19
	.long	.LASF197
	.byte	0x1
	.byte	0x39
	.long	0x42
	.uleb128 0x9
	.byte	0x3
	.quad	allow_pondering
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
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
.LASF94:
	.string	"automode"
.LASF182:
	.string	"go_fast"
.LASF116:
	.string	"qnodes"
.LASF51:
	.string	"_shortbuf"
.LASF66:
	.string	"from"
.LASF179:
	.string	"have_partner"
.LASF77:
	.string	"rtime_t"
.LASF201:
	.string	"_IO_lock_t"
.LASF160:
	.string	"material"
.LASF140:
	.string	"path_x"
.LASF80:
	.string	"input"
.LASF187:
	.string	"phase"
.LASF40:
	.string	"_IO_buf_end"
.LASF199:
	.string	"sjeng.c"
.LASF93:
	.string	"braindeadinterface"
.LASF114:
	.string	"nodes"
.LASF194:
	.string	"move_number"
.LASF38:
	.string	"_IO_write_end"
.LASF4:
	.string	"unsigned int"
.LASF156:
	.string	"use_book"
.LASF165:
	.string	"NTries"
.LASF32:
	.string	"_flags"
.LASF196:
	.string	"setcode"
.LASF109:
	.string	"squares"
.LASF44:
	.string	"_markers"
.LASF161:
	.string	"zh_material"
.LASF111:
	.string	"i_depth"
.LASF174:
	.string	"total_moves"
.LASF151:
	.string	"TTProbes"
.LASF144:
	.string	"white_hand_eval"
.LASF75:
	.string	"fifty"
.LASF90:
	.string	"is_edit_mode"
.LASF145:
	.string	"black_hand_eval"
.LASF142:
	.string	"maxposdiff"
.LASF132:
	.string	"time_exit"
.LASF200:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/458.sjeng/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF65:
	.string	"_pos"
.LASF1:
	.string	"TRUE"
.LASF97:
	.string	"stdout"
.LASF43:
	.string	"_IO_save_end"
.LASF134:
	.string	"xb_mode"
.LASF164:
	.string	"losers_material"
.LASF129:
	.string	"captures"
.LASF108:
	.string	"pv_length"
.LASF107:
	.string	"result"
.LASF30:
	.string	"long long unsigned int"
.LASF68:
	.string	"captured"
.LASF95:
	.string	"xstart_time"
.LASF191:
	.string	"my_rating"
.LASF27:
	.string	"__sighandler_t"
.LASF42:
	.string	"_IO_backup_base"
.LASF155:
	.string	"book_ply"
.LASF53:
	.string	"_offset"
.LASF136:
	.string	"dummy"
.LASF189:
	.string	"pn_time"
.LASF16:
	.string	"_ISlower"
.LASF46:
	.string	"_fileno"
.LASF92:
	.string	"pingnum"
.LASF71:
	.string	"move_s"
.LASF168:
	.string	"is_pondering"
.LASF76:
	.string	"move_x"
.LASF104:
	.string	"bking_loc"
.LASF28:
	.string	"size_t"
.LASF83:
	.string	"move"
.LASF81:
	.string	"output"
.LASF19:
	.string	"_ISxdigit"
.LASF103:
	.string	"wking_loc"
.LASF152:
	.string	"TTHits"
.LASF35:
	.string	"_IO_read_base"
.LASF135:
	.string	"maxdepth"
.LASF78:
	.string	"argc"
.LASF170:
	.string	"PVSF"
.LASF96:
	.string	"stdin"
.LASF63:
	.string	"_next"
.LASF141:
	.string	"path"
.LASF147:
	.string	"is_promoted"
.LASF167:
	.string	"TExt"
.LASF126:
	.string	"time_for_move"
.LASF192:
	.string	"opp_rating"
.LASF14:
	.string	"char"
.LASF59:
	.string	"_mode"
.LASF101:
	.string	"ep_square"
.LASF181:
	.string	"must_go"
.LASF62:
	.string	"_IO_marker"
.LASF87:
	.string	"show_board"
.LASF33:
	.string	"_IO_read_ptr"
.LASF89:
	.string	"game_history_x"
.LASF159:
	.string	"Material"
.LASF197:
	.string	"allow_pondering"
.LASF133:
	.string	"time_failure"
.LASF172:
	.string	"razor_drop"
.LASF31:
	.string	"time_t"
.LASF117:
	.string	"killer_scores"
.LASF118:
	.string	"killer_scores2"
.LASF119:
	.string	"killer_scores3"
.LASF120:
	.string	"moves_to_tc"
.LASF86:
	.string	"force_mode"
.LASF36:
	.string	"_IO_write_base"
.LASF130:
	.string	"searching_pv"
.LASF123:
	.string	"time_left"
.LASF29:
	.string	"long long int"
.LASF41:
	.string	"_IO_save_base"
.LASF85:
	.string	"depth"
.LASF24:
	.string	"_IScntrl"
.LASF131:
	.string	"post"
.LASF100:
	.string	"moved"
.LASF67:
	.string	"target"
.LASF18:
	.string	"_ISdigit"
.LASF72:
	.string	"cap_num"
.LASF166:
	.string	"NCuts"
.LASF20:
	.string	"_ISspace"
.LASF143:
	.string	"start_time"
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
.LASF190:
	.string	"kibitzed"
.LASF177:
	.string	"is_analyzing"
.LASF188:
	.string	"root_to_move"
.LASF153:
	.string	"TTStores"
.LASF50:
	.string	"_vtable_offset"
.LASF183:
	.string	"piecedead"
.LASF91:
	.string	"edit_color"
.LASF184:
	.string	"partnerdead"
.LASF79:
	.string	"argv"
.LASF176:
	.string	"Giveaway"
.LASF69:
	.string	"promoted"
.LASF198:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF25:
	.string	"_ISpunct"
.LASF121:
	.string	"min_per_game"
.LASF34:
	.string	"_IO_read_end"
.LASF173:
	.string	"razor_material"
.LASF178:
	.string	"my_partner"
.LASF21:
	.string	"_ISprint"
.LASF7:
	.string	"short int"
.LASF127:
	.string	"cur_score"
.LASF98:
	.string	"divider"
.LASF8:
	.string	"long int"
.LASF158:
	.string	"bookidx"
.LASF148:
	.string	"hash"
.LASF149:
	.string	"ECacheProbes"
.LASF105:
	.string	"white_castled"
.LASF124:
	.string	"opp_time"
.LASF128:
	.string	"history_h"
.LASF185:
	.string	"tradefreely"
.LASF0:
	.string	"FALSE"
.LASF169:
	.string	"FULL"
.LASF186:
	.string	"fixed_time"
.LASF22:
	.string	"_ISgraph"
.LASF82:
	.string	"readbuff"
.LASF70:
	.string	"castled"
.LASF52:
	.string	"_lock"
.LASF12:
	.string	"sizetype"
.LASF175:
	.string	"Variant"
.LASF5:
	.string	"long unsigned int"
.LASF48:
	.string	"_old_offset"
.LASF61:
	.string	"_IO_FILE"
.LASF193:
	.string	"userealholdings"
.LASF17:
	.string	"_ISalpha"
.LASF122:
	.string	"sec_per_game"
.LASF2:
	.string	"unsigned char"
.LASF88:
	.string	"game_history"
.LASF64:
	.string	"_sbuf"
.LASF37:
	.string	"_IO_write_ptr"
.LASF112:
	.string	"comp_color"
.LASF195:
	.string	"hash_history"
.LASF13:
	.string	"__time_t"
.LASF26:
	.string	"_ISalnum"
.LASF180:
	.string	"must_sit"
.LASF99:
	.string	"board"
.LASF113:
	.string	"piece_count"
.LASF10:
	.string	"__off_t"
.LASF23:
	.string	"_ISblank"
.LASF73:
	.string	"was_promoted"
.LASF6:
	.string	"signed char"
.LASF110:
	.string	"num_pieces"
.LASF171:
	.string	"ext_check"
.LASF3:
	.string	"short unsigned int"
.LASF74:
	.string	"epsq"
.LASF150:
	.string	"ECacheHits"
.LASF202:
	.string	"main"
.LASF137:
	.string	"killer1"
.LASF138:
	.string	"killer2"
.LASF139:
	.string	"killer3"
.LASF162:
	.string	"std_material"
.LASF154:
	.string	"hold_hash"
.LASF84:
	.string	"comp_move"
.LASF157:
	.string	"opening_history"
.LASF106:
	.string	"black_castled"
.LASF102:
	.string	"white_to_move"
.LASF45:
	.string	"_chain"
.LASF15:
	.string	"_ISupper"
.LASF163:
	.string	"suicide_material"
.LASF47:
	.string	"_flags2"
.LASF115:
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
.LASF146:
	.string	"pieces"
.LASF125:
	.string	"time_cushion"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
