	.file	"partner.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 partner.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	hand_value
	.data
	.align 32
	.type	hand_value, @object
	.size	hand_value, 52
hand_value:
	.long	0
	.long	100
	.long	-100
	.long	210
	.long	-210
	.long	0
	.long	0
	.long	250
	.long	-250
	.long	450
	.long	-450
	.long	230
	.long	-230
	.globl	std_hand_value
	.align 32
	.type	std_hand_value, @object
	.size	std_hand_value, 52
std_hand_value:
	.long	0
	.long	100
	.long	-100
	.long	210
	.long	-210
	.long	0
	.long	0
	.long	250
	.long	-250
	.long	450
	.long	-450
	.long	230
	.long	-230
	.comm	piecedead,4,4
	.comm	partnerdead,4,4
	.comm	must_go,4,4
	.text
	.globl	ResetHandValue
	.type	ResetHandValue, @function
ResetHandValue:
.LFB2:
	.file 1 "partner.c"
	.loc 1 23 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 24 0
	movq	std_hand_value(%rip), %rax	# MEM[(char * {ref-all})&std_hand_value], tmp61
	movq	%rax, hand_value(%rip)	# tmp61, MEM[(char * {ref-all})&hand_value]
	movq	std_hand_value+8(%rip), %rax	# MEM[(char * {ref-all})&std_hand_value], tmp62
	movq	%rax, hand_value+8(%rip)	# tmp62, MEM[(char * {ref-all})&hand_value]
	movq	std_hand_value+16(%rip), %rax	# MEM[(char * {ref-all})&std_hand_value], tmp63
	movq	%rax, hand_value+16(%rip)	# tmp63, MEM[(char * {ref-all})&hand_value]
	movq	std_hand_value+24(%rip), %rax	# MEM[(char * {ref-all})&std_hand_value], tmp64
	movq	%rax, hand_value+24(%rip)	# tmp64, MEM[(char * {ref-all})&hand_value]
	movq	std_hand_value+32(%rip), %rax	# MEM[(char * {ref-all})&std_hand_value], tmp65
	movq	%rax, hand_value+32(%rip)	# tmp65, MEM[(char * {ref-all})&hand_value]
	movq	std_hand_value+40(%rip), %rax	# MEM[(char * {ref-all})&std_hand_value], tmp66
	movq	%rax, hand_value+40(%rip)	# tmp66, MEM[(char * {ref-all})&hand_value]
	movl	std_hand_value+48(%rip), %eax	# MEM[(char * {ref-all})&std_hand_value], tmp67
	movl	%eax, hand_value+48(%rip)	# tmp67, MEM[(char * {ref-all})&hand_value]
	.loc 1 25 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	ResetHandValue, .-ResetHandValue
	.globl	BegForPartner
	.type	BegForPartner, @function
BegForPartner:
.LFB3:
	.loc 1 28 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 33 0
	nop
	.loc 1 34 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	BegForPartner, .-BegForPartner
	.section	.rodata
	.align 8
.LC0:
	.string	"tellics ptell Hello! I am Sjeng and hope you enjoy playing with me."
	.align 8
.LC1:
	.string	"tellics ptell For help on some commands that I understand, ptell me 'help'"
	.text
	.globl	GreetPartner
	.type	GreetPartner, @function
GreetPartner:
.LFB4:
	.loc 1 37 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 38 0
	movl	$.LC0, %edi	#,
	call	puts	#
	.loc 1 39 0
	movl	$.LC1, %edi	#,
	call	puts	#
	.loc 1 41 0
	nop
	.loc 1 42 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	GreetPartner, .-GreetPartner
	.section	.rodata
.LC2:
	.string	"%s"
.LC3:
	.string	"tellics set f5 bughouse"
.LC4:
	.string	"tellics unseek"
.LC5:
	.string	"tellics set f5 1=1"
	.text
	.globl	HandlePartner
	.type	HandlePartner, @function
HandlePartner:
.LFB5:
	.loc 1 45 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# input, input
	.loc 1 46 0
	movq	-8(%rbp), %rax	# input, tmp62
	movzbl	(%rax), %eax	# *input_1(D), D.4765
	cmpb	$32, %al	#, D.4765
	jne	.L7	#,
	.loc 1 48 0
	movl	have_partner(%rip), %eax	# have_partner, have_partner.1
	testl	%eax, %eax	# have_partner.1
	jne	.L6	#,
	.loc 1 51 0
	movq	-8(%rbp), %rax	# input, tmp63
	addq	$1, %rax	#, D.4766
	movl	$my_partner, %edx	#,
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# D.4766,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	.loc 1 52 0
	movl	$1, have_partner(%rip)	#, have_partner
	.loc 1 53 0
	movl	$0, %eax	#,
	call	GreetPartner	#
	.loc 1 54 0
	movl	$.LC3, %edi	#,
	call	puts	#
	.loc 1 55 0
	movl	$.LC4, %edi	#,
	call	puts	#
	jmp	.L6	#
.L7:
	.loc 1 60 0
	movl	$256, %edx	#,
	movl	$0, %esi	#,
	movl	$my_partner, %edi	#,
	call	memset	#
	.loc 1 61 0
	movl	$0, have_partner(%rip)	#, have_partner
	.loc 1 62 0
	call	BegForPartner	#
	.loc 1 63 0
	movl	$.LC5, %edi	#,
	call	puts	#
.L6:
	.loc 1 65 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	HandlePartner, .-HandlePartner
	.section	.rodata
.LC6:
	.string	"help"
	.align 8
.LC7:
	.string	"tellics ptell Commands that I understand are : sit, go, fast, slow, abort, flag, +/++/+++/-/--/---{p,n,b,r,q,d,h,trades}, x, dead, formula, help."
.LC8:
	.string	"sorry"
	.align 8
.LC9:
	.string	"tellics ptell Sorry, but I'm not playing a bughouse game."
.LC10:
	.string	"sit"
	.align 8
.LC11:
	.string	"tellics ptell Ok, I sit next move. Tell me when to go."
.LC12:
	.string	"go"
.LC13:
	.string	"move"
.LC14:
	.string	"tellics ptell Ok, I'm moving."
.LC15:
	.string	"fast"
.LC16:
	.string	"time"
	.align 8
.LC17:
	.string	"tellics ptell Ok, I'm going FAST!"
.LC18:
	.string	"slow"
	.align 8
.LC19:
	.string	"tellics ptell Ok, moving normally."
.LC20:
	.string	"abort"
	.align 8
.LC21:
	.string	"tellics ptell Requesting abort..."
.LC22:
	.string	"tellics abort"
.LC23:
	.string	"flag"
.LC24:
	.string	"tellics ptell Flagging..."
.LC25:
	.string	"tellics flag"
.LC26:
	.string	"+"
.LC27:
	.string	"trade"
	.align 8
.LC28:
	.string	"tellics ptell Ok, trading is GOOD"
.LC29:
	.string	"+++"
.LC30:
	.string	"++"
.LC31:
	.string	"tellics ptell Ok, Knight %s\n"
.LC32:
	.string	"tellics ptell Ok, Bishop %s\n"
.LC33:
	.string	"tellics ptell Ok, Rook %s\n"
.LC34:
	.string	"tellics ptell Ok, Queen %s\n"
.LC35:
	.string	"tellics ptell Ok, Pawn %s\n"
	.align 8
.LC36:
	.string	"tellics ptell Ok, Diagonal %s\n"
.LC37:
	.string	"tellics ptell Ok, Heavy %s\n"
.LC38:
	.string	"-"
	.align 8
.LC39:
	.string	"tellics ptell Ok, trading is BAD"
.LC40:
	.string	"---"
.LC41:
	.string	"--"
.LC42:
	.string	"x"
.LC43:
	.string	"mate me anymore"
.LC44:
	.string	"never"
.LC45:
	.string	"mind"
.LC46:
	.string	"="
.LC47:
	.string	"ptell me"
	.align 8
.LC48:
	.string	"tellics ptell Ok, reverting to STANDARD piece values!"
.LC49:
	.string	"i'll have to sit...(dead)"
.LC50:
	.string	"dead"
.LC51:
	.string	"i'll have to sit...(piece)"
.LC52:
	.string	"ok"
.LC53:
	.string	"hi"
.LC54:
	.string	"hello"
.LC55:
	.string	"tellics ptell Greetings."
.LC56:
	.string	"formula"
	.align 8
.LC57:
	.string	"tellics ptell Setting formula, if you are still interrupted, complain to my operator."
	.align 8
.LC58:
	.string	"tellics ptell Sorry, but I don't understand that command."
	.text
	.globl	HandlePtell
	.type	HandlePtell, @function
HandlePtell:
.LFB6:
	.loc 1 68 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$136, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)	# input, input
	.loc 1 68 0
	movq	%fs:40, %rax	#, tmp481
	movq	%rax, -24(%rbp)	# tmp481, D.4778
	xorl	%eax, %eax	# tmp481
	.loc 1 69 0
	movl	$0, -116(%rbp)	#, change
	.loc 1 70 0
	movabsq	$3344051564526334825, %rax	#, tmp483
	movq	%rax, -112(%rbp)	# tmp483, howmuch
	movabsq	$7214894564760825390, %rax	#, tmp484
	movq	%rax, -104(%rbp)	# tmp484, howmuch
	movabsq	$8295759635250439273, %rax	#, tmp485
	movq	%rax, -96(%rbp)	# tmp485, howmuch
	movq	$171932001, -88(%rbp)	#, howmuch
	leaq	-80(%rbp), %rsi	#, tmp368
	movl	$0, %eax	#, tmp369
	movl	$6, %edx	#, tmp370
	movq	%rsi, %rdi	# tmp368, tmp368
	movq	%rdx, %rcx	# tmp370, tmp370
	rep stosq
	.loc 1 72 0
	movq	-136(%rbp), %rax	# input, tmp371
	addq	$6, %rax	#, D.4771
	movl	$4, %edx	#,
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strncmp	#
	testl	%eax, %eax	# D.4772
	jne	.L11	#,
	.loc 1 74 0
	movl	$.LC7, %edi	#,
	call	puts	#
	.loc 1 75 0
	jmp	.L10	#
.L11:
	.loc 1 78 0
	movl	Variant(%rip), %eax	# Variant, Variant.2
	cmpl	$1, %eax	#, Variant.2
	je	.L13	#,
	.loc 1 78 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# input, tmp372
	addq	$6, %rax	#, D.4771
	movl	$5, %edx	#,
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strncmp	#
	testl	%eax, %eax	# D.4772
	je	.L13	#,
	.loc 1 80 0 is_stmt 1
	movl	$.LC9, %edi	#,
	call	puts	#
	.loc 1 81 0
	jmp	.L10	#
.L13:
	.loc 1 84 0
	movq	-136(%rbp), %rax	# input, tmp373
	addq	$6, %rax	#, D.4771
	movl	$3, %edx	#,
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strncmp	#
	testl	%eax, %eax	# D.4772
	jne	.L14	#,
	.loc 1 86 0
	movl	$.LC11, %edi	#,
	call	puts	#
	.loc 1 87 0
	movl	$1, must_sit(%rip)	#, must_sit
	.loc 1 88 0
	movl	$0, must_go(%rip)	#, must_go
	jmp	.L15	#
.L14:
	.loc 1 90 0
	movq	-136(%rbp), %rax	# input, tmp374
	addq	$6, %rax	#, D.4771
	movl	$2, %edx	#,
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strncmp	#
	testl	%eax, %eax	# D.4772
	je	.L16	#,
	.loc 1 90 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# input, tmp375
	addq	$6, %rax	#, D.4771
	movl	$4, %edx	#,
	movl	$.LC13, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strncmp	#
	testl	%eax, %eax	# D.4772
	jne	.L17	#,
.L16:
	.loc 1 92 0 is_stmt 1
	movl	$.LC14, %edi	#,
	call	puts	#
	.loc 1 93 0
	movl	$0, must_sit(%rip)	#, must_sit
	.loc 1 94 0
	movl	$4, must_go(%rip)	#, must_go
	jmp	.L15	#
.L17:
	.loc 1 96 0
	movq	-136(%rbp), %rax	# input, tmp376
	addq	$6, %rax	#, D.4771
	movl	$4, %edx	#,
	movl	$.LC15, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strncmp	#
	testl	%eax, %eax	# D.4772
	je	.L18	#,
	.loc 1 96 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# input, tmp377
	addq	$6, %rax	#, D.4771
	movl	$4, %edx	#,
	movl	$.LC16, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strncmp	#
	testl	%eax, %eax	# D.4772
	jne	.L19	#,
.L18:
	.loc 1 98 0 is_stmt 1
	movl	$.LC17, %edi	#,
	call	puts	#
	.loc 1 99 0
	movl	$1, go_fast(%rip)	#, go_fast
	.loc 1 100 0
	movl	$0, must_sit(%rip)	#, must_sit
	jmp	.L15	#
.L19:
	.loc 1 102 0
	movq	-136(%rbp), %rax	# input, tmp378
	addq	$6, %rax	#, D.4771
	movl	$4, %edx	#,
	movl	$.LC18, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strncmp	#
	testl	%eax, %eax	# D.4772
	jne	.L20	#,
	.loc 1 104 0
	movl	$.LC19, %edi	#,
	call	puts	#
	.loc 1 105 0
	movl	$0, go_fast(%rip)	#, go_fast
	.loc 1 106 0
	movl	$0, must_sit(%rip)	#, must_sit
	jmp	.L15	#
.L20:
	.loc 1 108 0
	movq	-136(%rbp), %rax	# input, tmp379
	addq	$6, %rax	#, D.4771
	movl	$5, %edx	#,
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strncmp	#
	testl	%eax, %eax	# D.4772
	jne	.L21	#,
	.loc 1 110 0
	movl	$.LC21, %edi	#,
	call	puts	#
	.loc 1 111 0
	movl	$.LC22, %edi	#,
	call	puts	#
	jmp	.L15	#
.L21:
	.loc 1 113 0
	movq	-136(%rbp), %rax	# input, tmp380
	addq	$6, %rax	#, D.4771
	movl	$4, %edx	#,
	movl	$.LC23, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strncmp	#
	testl	%eax, %eax	# D.4772
	jne	.L22	#,
	.loc 1 115 0
	movl	$.LC24, %edi	#,
	call	puts	#
	.loc 1 116 0
	movl	$.LC25, %edi	#,
	call	puts	#
	jmp	.L15	#
.L22:
	.loc 1 118 0
	movq	-136(%rbp), %rax	# input, tmp381
	addq	$6, %rax	#, D.4773
	movzbl	(%rax), %edx	# *_26, D.4774
	movl	$.LC26, %eax	#, D.4775
	movzbl	(%rax), %eax	# MEM[(const unsigned char * {ref-all})_28], D.4774
	cmpb	%al, %dl	# D.4774, D.4774
	jne	.L23	#,
	.loc 1 121 0
	movq	-136(%rbp), %rax	# input, tmp382
	addq	$6, %rax	#, D.4771
	movl	$.LC27, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strstr	#
	testq	%rax, %rax	# D.4776
	jne	.L24	#,
	.loc 1 123 0
	movq	-136(%rbp), %rax	# input, tmp383
	addq	$6, %rax	#, D.4771
	movl	$110, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strchr	#
	.loc 1 122 0
	testq	%rax, %rax	# D.4776
	jne	.L25	#,
	.loc 1 124 0
	movq	-136(%rbp), %rax	# input, tmp384
	addq	$6, %rax	#, D.4771
	movl	$98, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strchr	#
	.loc 1 123 0
	testq	%rax, %rax	# D.4776
	jne	.L25	#,
	.loc 1 125 0
	movq	-136(%rbp), %rax	# input, tmp385
	addq	$6, %rax	#, D.4771
	movl	$112, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strchr	#
	.loc 1 124 0
	testq	%rax, %rax	# D.4776
	jne	.L25	#,
	.loc 1 126 0
	movq	-136(%rbp), %rax	# input, tmp386
	addq	$6, %rax	#, D.4771
	movl	$114, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strchr	#
	.loc 1 125 0
	testq	%rax, %rax	# D.4776
	jne	.L25	#,
	.loc 1 127 0
	movq	-136(%rbp), %rax	# input, tmp387
	addq	$6, %rax	#, D.4771
	movl	$113, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strchr	#
	.loc 1 126 0
	testq	%rax, %rax	# D.4776
	jne	.L25	#,
	.loc 1 128 0
	movq	-136(%rbp), %rax	# input, tmp388
	addq	$6, %rax	#, D.4771
	movl	$100, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strchr	#
	.loc 1 127 0
	testq	%rax, %rax	# D.4776
	jne	.L25	#,
	.loc 1 129 0
	movq	-136(%rbp), %rax	# input, tmp389
	addq	$6, %rax	#, D.4771
	movl	$104, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strchr	#
	.loc 1 128 0
	testq	%rax, %rax	# D.4776
	jne	.L25	#,
.L24:
	.loc 1 131 0
	movl	comp_color(%rip), %eax	# comp_color, comp_color.3
	cmpl	$1, %eax	#, comp_color.3
	jne	.L26	#,
	.loc 1 133 0
	movl	hand_value+4(%rip), %eax	# hand_value, D.4772
	addl	$25, %eax	#, D.4772
	movl	%eax, hand_value+4(%rip)	# D.4772, hand_value
	.loc 1 134 0
	movl	hand_value+12(%rip), %eax	# hand_value, D.4772
	addl	$50, %eax	#, D.4772
	movl	%eax, hand_value+12(%rip)	# D.4772, hand_value
	.loc 1 135 0
	movl	hand_value+44(%rip), %eax	# hand_value, D.4772
	addl	$50, %eax	#, D.4772
	movl	%eax, hand_value+44(%rip)	# D.4772, hand_value
	.loc 1 136 0
	movl	hand_value+28(%rip), %eax	# hand_value, D.4772
	addl	$50, %eax	#, D.4772
	movl	%eax, hand_value+28(%rip)	# D.4772, hand_value
	.loc 1 137 0
	movl	hand_value+36(%rip), %eax	# hand_value, D.4772
	addl	$100, %eax	#, D.4772
	movl	%eax, hand_value+36(%rip)	# D.4772, hand_value
	jmp	.L27	#
.L26:
	.loc 1 141 0
	movl	hand_value+8(%rip), %eax	# hand_value, D.4772
	subl	$25, %eax	#, D.4772
	movl	%eax, hand_value+8(%rip)	# D.4772, hand_value
	.loc 1 142 0
	movl	hand_value+16(%rip), %eax	# hand_value, D.4772
	subl	$50, %eax	#, D.4772
	movl	%eax, hand_value+16(%rip)	# D.4772, hand_value
	.loc 1 143 0
	movl	hand_value+48(%rip), %eax	# hand_value, D.4772
	subl	$50, %eax	#, D.4772
	movl	%eax, hand_value+48(%rip)	# D.4772, hand_value
	.loc 1 144 0
	movl	hand_value+32(%rip), %eax	# hand_value, D.4772
	subl	$50, %eax	#, D.4772
	movl	%eax, hand_value+32(%rip)	# D.4772, hand_value
	.loc 1 145 0
	movl	hand_value+40(%rip), %eax	# hand_value, D.4772
	subl	$100, %eax	#, D.4772
	movl	%eax, hand_value+40(%rip)	# D.4772, hand_value
.L27:
	.loc 1 147 0
	movl	$.LC28, %edi	#,
	call	puts	#
	jmp	.L28	#
.L25:
	.loc 1 150 0
	movq	-136(%rbp), %rax	# input, tmp390
	addq	$6, %rax	#, D.4771
	movl	$.LC29, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strstr	#
	testq	%rax, %rax	# D.4776
	je	.L29	#,
	.loc 1 152 0
	movl	$50000, -116(%rbp)	#, change
	.loc 1 153 0
	leaq	-112(%rbp), %rax	#, tmp391
	movl	$1702125933, (%rax)	#, MEM[(void *)&howmuch]
	movw	$115, 4(%rax)	#, MEM[(void *)&howmuch]
	jmp	.L28	#
.L29:
	.loc 1 155 0
	movq	-136(%rbp), %rax	# input, tmp392
	addq	$6, %rax	#, D.4771
	movl	$.LC30, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strstr	#
	testq	%rax, %rax	# D.4776
	je	.L30	#,
	.loc 1 157 0
	movl	$1000, -116(%rbp)	#, change
	.loc 1 158 0
	leaq	-112(%rbp), %rax	#, tmp393
	movabsq	$2330984739892130665, %rbx	#, tmp488
	movq	%rbx, (%rax)	# tmp488, MEM[(void *)&howmuch]
	movabsq	$8390250225380323175, %rcx	#, tmp489
	movq	%rcx, 8(%rax)	# tmp489, MEM[(void *)&howmuch]
	movabsq	$2819364886103747685, %rbx	#, tmp490
	movq	%rbx, 16(%rax)	# tmp490, MEM[(void *)&howmuch]
	movabsq	$7813781016549533560, %rcx	#, tmp491
	movq	%rcx, 24(%rax)	# tmp491, MEM[(void *)&howmuch]
	movabsq	$7020393217055029601, %rbx	#, tmp492
	movq	%rbx, 32(%rax)	# tmp492, MEM[(void *)&howmuch]
	movabsq	$2985439470060380268, %rcx	#, tmp493
	movq	%rcx, 40(%rax)	# tmp493, MEM[(void *)&howmuch]
	movb	$0, 48(%rax)	#, MEM[(void *)&howmuch]
	jmp	.L28	#
.L30:
	.loc 1 160 0
	movq	-136(%rbp), %rax	# input, tmp394
	addq	$6, %rax	#, D.4771
	movl	$43, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strchr	#
	testq	%rax, %rax	# D.4776
	je	.L31	#,
	.loc 1 162 0
	movl	$150, -116(%rbp)	#, change
	.loc 1 163 0
	leaq	-112(%rbp), %rax	#, tmp395
	movabsq	$2334113031146992489, %rbx	#, tmp494
	movq	%rbx, (%rax)	# tmp494, MEM[(void *)&howmuch]
	movabsq	$7863404162203283496, %rcx	#, tmp495
	movq	%rcx, 8(%rax)	# tmp495, MEM[(void *)&howmuch]
	movabsq	$8031079389400080485, %rbx	#, tmp496
	movq	%rbx, 16(%rax)	# tmp496, MEM[(void *)&howmuch]
	movabsq	$8029390891345801248, %rcx	#, tmp497
	movq	%rcx, 24(%rax)	# tmp497, MEM[(void *)&howmuch]
	movabsq	$7018685336165379442, %rbx	#, tmp498
	movq	%rbx, 32(%rax)	# tmp498, MEM[(void *)&howmuch]
	movl	$2715241, 40(%rax)	#, MEM[(void *)&howmuch]
	jmp	.L28	#
.L31:
	.loc 1 166 0
	movl	$0, %eax	#, D.4777
	movl	$0, (%rax)	#, *_55
.L28:
	.loc 1 169 0
	movq	-136(%rbp), %rax	# input, tmp396
	addq	$6, %rax	#, D.4771
	movl	$110, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strchr	#
	testq	%rax, %rax	# D.4776
	je	.L32	#,
	.loc 1 171 0
	movl	comp_color(%rip), %eax	# comp_color, comp_color.4
	cmpl	$1, %eax	#, comp_color.4
	jne	.L33	#,
	.loc 1 173 0
	movl	std_hand_value+12(%rip), %edx	# std_hand_value, D.4772
	movl	-116(%rbp), %eax	# change, tmp397
	addl	%edx, %eax	# D.4772, D.4772
	movl	%eax, hand_value+12(%rip)	# D.4772, hand_value
	jmp	.L34	#
.L33:
	.loc 1 176 0
	movl	std_hand_value+16(%rip), %eax	# std_hand_value, D.4772
	subl	-116(%rbp), %eax	# change, D.4772
	movl	%eax, hand_value+16(%rip)	# D.4772, hand_value
.L34:
	.loc 1 178 0
	leaq	-112(%rbp), %rax	#, tmp398
	movq	%rax, %rsi	# tmp398,
	movl	$.LC31, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L32:
	.loc 1 180 0
	movq	-136(%rbp), %rax	# input, tmp399
	addq	$6, %rax	#, D.4771
	movl	$98, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strchr	#
	testq	%rax, %rax	# D.4776
	je	.L35	#,
	.loc 1 182 0
	movl	comp_color(%rip), %eax	# comp_color, comp_color.5
	cmpl	$1, %eax	#, comp_color.5
	jne	.L36	#,
	.loc 1 183 0
	movl	std_hand_value+44(%rip), %edx	# std_hand_value, D.4772
	movl	-116(%rbp), %eax	# change, tmp400
	addl	%edx, %eax	# D.4772, D.4772
	movl	%eax, hand_value+44(%rip)	# D.4772, hand_value
	jmp	.L37	#
.L36:
	.loc 1 185 0
	movl	std_hand_value+48(%rip), %eax	# std_hand_value, D.4772
	subl	-116(%rbp), %eax	# change, D.4772
	movl	%eax, hand_value+48(%rip)	# D.4772, hand_value
.L37:
	.loc 1 188 0
	movl	comp_color(%rip), %eax	# comp_color, comp_color.6
	cmpl	$1, %eax	#, comp_color.6
	jne	.L38	#,
	.loc 1 189 0
	movl	std_hand_value+36(%rip), %edx	# std_hand_value, D.4772
	movl	-116(%rbp), %eax	# change, tmp401
	addl	%edx, %eax	# D.4772, D.4772
	movl	%eax, hand_value+36(%rip)	# D.4772, hand_value
	jmp	.L39	#
.L38:
	.loc 1 191 0
	movl	std_hand_value+40(%rip), %eax	# std_hand_value, D.4772
	subl	-116(%rbp), %eax	# change, D.4772
	movl	%eax, hand_value+40(%rip)	# D.4772, hand_value
.L39:
	.loc 1 193 0
	leaq	-112(%rbp), %rax	#, tmp402
	movq	%rax, %rsi	# tmp402,
	movl	$.LC32, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L35:
	.loc 1 195 0
	movq	-136(%rbp), %rax	# input, tmp403
	addq	$6, %rax	#, D.4771
	movl	$114, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strchr	#
	testq	%rax, %rax	# D.4776
	je	.L40	#,
	.loc 1 197 0
	movl	comp_color(%rip), %eax	# comp_color, comp_color.7
	cmpl	$1, %eax	#, comp_color.7
	jne	.L41	#,
	.loc 1 198 0
	movl	std_hand_value+28(%rip), %edx	# std_hand_value, D.4772
	movl	-116(%rbp), %eax	# change, tmp404
	addl	%edx, %eax	# D.4772, D.4772
	movl	%eax, hand_value+28(%rip)	# D.4772, hand_value
	jmp	.L42	#
.L41:
	.loc 1 200 0
	movl	std_hand_value+32(%rip), %eax	# std_hand_value, D.4772
	subl	-116(%rbp), %eax	# change, D.4772
	movl	%eax, hand_value+32(%rip)	# D.4772, hand_value
.L42:
	.loc 1 203 0
	movl	comp_color(%rip), %eax	# comp_color, comp_color.8
	cmpl	$1, %eax	#, comp_color.8
	jne	.L43	#,
	.loc 1 204 0
	movl	std_hand_value+36(%rip), %edx	# std_hand_value, D.4772
	movl	-116(%rbp), %eax	# change, tmp405
	addl	%edx, %eax	# D.4772, D.4772
	movl	%eax, hand_value+36(%rip)	# D.4772, hand_value
	jmp	.L44	#
.L43:
	.loc 1 206 0
	movl	std_hand_value+40(%rip), %eax	# std_hand_value, D.4772
	subl	-116(%rbp), %eax	# change, D.4772
	movl	%eax, hand_value+40(%rip)	# D.4772, hand_value
.L44:
	.loc 1 208 0
	leaq	-112(%rbp), %rax	#, tmp406
	movq	%rax, %rsi	# tmp406,
	movl	$.LC33, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L40:
	.loc 1 210 0
	movq	-136(%rbp), %rax	# input, tmp407
	addq	$6, %rax	#, D.4771
	movl	$113, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strchr	#
	testq	%rax, %rax	# D.4776
	je	.L45	#,
	.loc 1 212 0
	movl	comp_color(%rip), %eax	# comp_color, comp_color.9
	cmpl	$1, %eax	#, comp_color.9
	jne	.L46	#,
	.loc 1 213 0
	movl	std_hand_value+36(%rip), %edx	# std_hand_value, D.4772
	movl	-116(%rbp), %eax	# change, tmp408
	addl	%edx, %eax	# D.4772, D.4772
	movl	%eax, hand_value+36(%rip)	# D.4772, hand_value
	jmp	.L47	#
.L46:
	.loc 1 215 0
	movl	std_hand_value+40(%rip), %eax	# std_hand_value, D.4772
	subl	-116(%rbp), %eax	# change, D.4772
	movl	%eax, hand_value+40(%rip)	# D.4772, hand_value
.L47:
	.loc 1 217 0
	leaq	-112(%rbp), %rax	#, tmp409
	movq	%rax, %rsi	# tmp409,
	movl	$.LC34, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L45:
	.loc 1 219 0
	movq	-136(%rbp), %rax	# input, tmp410
	addq	$6, %rax	#, D.4771
	movl	$112, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strchr	#
	testq	%rax, %rax	# D.4776
	je	.L48	#,
	.loc 1 221 0
	movl	comp_color(%rip), %eax	# comp_color, comp_color.10
	cmpl	$1, %eax	#, comp_color.10
	jne	.L49	#,
	.loc 1 222 0
	movl	std_hand_value+4(%rip), %edx	# std_hand_value, D.4772
	movl	-116(%rbp), %eax	# change, tmp411
	addl	%edx, %eax	# D.4772, D.4772
	movl	%eax, hand_value+4(%rip)	# D.4772, hand_value
	jmp	.L50	#
.L49:
	.loc 1 224 0
	movl	std_hand_value+8(%rip), %eax	# std_hand_value, D.4772
	subl	-116(%rbp), %eax	# change, D.4772
	movl	%eax, hand_value+8(%rip)	# D.4772, hand_value
.L50:
	.loc 1 227 0
	movl	comp_color(%rip), %eax	# comp_color, comp_color.11
	cmpl	$1, %eax	#, comp_color.11
	jne	.L51	#,
	.loc 1 229 0
	movl	std_hand_value+36(%rip), %edx	# std_hand_value, D.4772
	movl	-116(%rbp), %eax	# change, tmp412
	addl	%edx, %eax	# D.4772, D.4772
	movl	%eax, hand_value+36(%rip)	# D.4772, hand_value
	.loc 1 230 0
	movl	std_hand_value+44(%rip), %edx	# std_hand_value, D.4772
	movl	-116(%rbp), %eax	# change, tmp413
	addl	%edx, %eax	# D.4772, D.4772
	movl	%eax, hand_value+44(%rip)	# D.4772, hand_value
	jmp	.L52	#
.L51:
	.loc 1 234 0
	movl	std_hand_value+40(%rip), %eax	# std_hand_value, D.4772
	subl	-116(%rbp), %eax	# change, D.4772
	movl	%eax, hand_value+40(%rip)	# D.4772, hand_value
	.loc 1 235 0
	movl	std_hand_value+48(%rip), %eax	# std_hand_value, D.4772
	subl	-116(%rbp), %eax	# change, D.4772
	movl	%eax, hand_value+48(%rip)	# D.4772, hand_value
.L52:
	.loc 1 238 0
	leaq	-112(%rbp), %rax	#, tmp414
	movq	%rax, %rsi	# tmp414,
	movl	$.LC35, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L48:
	.loc 1 240 0
	movq	-136(%rbp), %rax	# input, tmp415
	addq	$6, %rax	#, D.4771
	movl	$100, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strchr	#
	testq	%rax, %rax	# D.4776
	je	.L53	#,
	.loc 1 242 0
	movl	comp_color(%rip), %eax	# comp_color, comp_color.12
	cmpl	$1, %eax	#, comp_color.12
	jne	.L54	#,
	.loc 1 244 0
	movl	std_hand_value+4(%rip), %edx	# std_hand_value, D.4772
	movl	-116(%rbp), %eax	# change, tmp416
	addl	%edx, %eax	# D.4772, D.4772
	movl	%eax, hand_value+4(%rip)	# D.4772, hand_value
	.loc 1 245 0
	movl	std_hand_value+44(%rip), %edx	# std_hand_value, D.4772
	movl	-116(%rbp), %eax	# change, tmp417
	addl	%edx, %eax	# D.4772, D.4772
	movl	%eax, hand_value+44(%rip)	# D.4772, hand_value
	.loc 1 246 0
	movl	std_hand_value+36(%rip), %edx	# std_hand_value, D.4772
	movl	-116(%rbp), %eax	# change, tmp418
	addl	%edx, %eax	# D.4772, D.4772
	movl	%eax, hand_value+36(%rip)	# D.4772, hand_value
	jmp	.L55	#
.L54:
	.loc 1 250 0
	movl	std_hand_value+8(%rip), %eax	# std_hand_value, D.4772
	subl	-116(%rbp), %eax	# change, D.4772
	movl	%eax, hand_value+8(%rip)	# D.4772, hand_value
	.loc 1 251 0
	movl	std_hand_value+48(%rip), %eax	# std_hand_value, D.4772
	subl	-116(%rbp), %eax	# change, D.4772
	movl	%eax, hand_value+48(%rip)	# D.4772, hand_value
	.loc 1 252 0
	movl	std_hand_value+40(%rip), %eax	# std_hand_value, D.4772
	subl	-116(%rbp), %eax	# change, D.4772
	movl	%eax, hand_value+40(%rip)	# D.4772, hand_value
.L55:
	.loc 1 255 0
	leaq	-112(%rbp), %rax	#, tmp419
	movq	%rax, %rsi	# tmp419,
	movl	$.LC36, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L53:
	.loc 1 257 0
	movq	-136(%rbp), %rax	# input, tmp420
	addq	$6, %rax	#, D.4771
	movl	$104, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strchr	#
	testq	%rax, %rax	# D.4776
	je	.L15	#,
	.loc 1 259 0
	movl	comp_color(%rip), %eax	# comp_color, comp_color.13
	cmpl	$1, %eax	#, comp_color.13
	jne	.L57	#,
	.loc 1 261 0
	movl	std_hand_value+28(%rip), %edx	# std_hand_value, D.4772
	movl	-116(%rbp), %eax	# change, tmp421
	addl	%edx, %eax	# D.4772, D.4772
	movl	%eax, hand_value+28(%rip)	# D.4772, hand_value
	.loc 1 262 0
	movl	std_hand_value+36(%rip), %edx	# std_hand_value, D.4772
	movl	-116(%rbp), %eax	# change, tmp422
	addl	%edx, %eax	# D.4772, D.4772
	movl	%eax, hand_value+36(%rip)	# D.4772, hand_value
	jmp	.L58	#
.L57:
	.loc 1 266 0
	movl	std_hand_value+32(%rip), %eax	# std_hand_value, D.4772
	subl	-116(%rbp), %eax	# change, D.4772
	movl	%eax, hand_value+32(%rip)	# D.4772, hand_value
	.loc 1 267 0
	movl	std_hand_value+40(%rip), %eax	# std_hand_value, D.4772
	subl	-116(%rbp), %eax	# change, D.4772
	movl	%eax, hand_value+40(%rip)	# D.4772, hand_value
.L58:
	.loc 1 270 0
	leaq	-112(%rbp), %rax	#, tmp423
	movq	%rax, %rsi	# tmp423,
	movl	$.LC37, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 474 0
	jmp	.L10	#
.L23:
	.loc 1 273 0
	movq	-136(%rbp), %rax	# input, tmp424
	addq	$6, %rax	#, D.4773
	movzbl	(%rax), %edx	# *_157, D.4774
	movl	$.LC38, %eax	#, D.4775
	movzbl	(%rax), %eax	# MEM[(const unsigned char * {ref-all})_159], D.4774
	cmpb	%al, %dl	# D.4774, D.4774
	jne	.L59	#,
	.loc 1 276 0
	movq	-136(%rbp), %rax	# input, tmp425
	addq	$6, %rax	#, D.4771
	movl	$.LC27, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strstr	#
	testq	%rax, %rax	# D.4776
	jne	.L60	#,
	.loc 1 278 0
	movq	-136(%rbp), %rax	# input, tmp426
	addq	$6, %rax	#, D.4771
	movl	$110, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strchr	#
	.loc 1 277 0
	testq	%rax, %rax	# D.4776
	jne	.L61	#,
	.loc 1 279 0
	movq	-136(%rbp), %rax	# input, tmp427
	addq	$6, %rax	#, D.4771
	movl	$98, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strchr	#
	.loc 1 278 0
	testq	%rax, %rax	# D.4776
	jne	.L61	#,
	.loc 1 280 0
	movq	-136(%rbp), %rax	# input, tmp428
	addq	$6, %rax	#, D.4771
	movl	$112, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strchr	#
	.loc 1 279 0
	testq	%rax, %rax	# D.4776
	jne	.L61	#,
	.loc 1 281 0
	movq	-136(%rbp), %rax	# input, tmp429
	addq	$6, %rax	#, D.4771
	movl	$114, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strchr	#
	.loc 1 280 0
	testq	%rax, %rax	# D.4776
	jne	.L61	#,
	.loc 1 282 0
	movq	-136(%rbp), %rax	# input, tmp430
	addq	$6, %rax	#, D.4771
	movl	$113, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strchr	#
	.loc 1 281 0
	testq	%rax, %rax	# D.4776
	jne	.L61	#,
	.loc 1 283 0
	movq	-136(%rbp), %rax	# input, tmp431
	addq	$6, %rax	#, D.4771
	movl	$100, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strchr	#
	.loc 1 282 0
	testq	%rax, %rax	# D.4776
	jne	.L61	#,
	.loc 1 284 0
	movq	-136(%rbp), %rax	# input, tmp432
	addq	$6, %rax	#, D.4771
	movl	$104, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strchr	#
	.loc 1 283 0
	testq	%rax, %rax	# D.4776
	jne	.L61	#,
.L60:
	.loc 1 286 0
	movl	comp_color(%rip), %eax	# comp_color, comp_color.14
	cmpl	$1, %eax	#, comp_color.14
	jne	.L62	#,
	.loc 1 288 0
	movl	hand_value+8(%rip), %eax	# hand_value, D.4772
	subl	$20, %eax	#, D.4772
	movl	%eax, hand_value+8(%rip)	# D.4772, hand_value
	.loc 1 289 0
	movl	hand_value+16(%rip), %eax	# hand_value, D.4772
	subl	$50, %eax	#, D.4772
	movl	%eax, hand_value+16(%rip)	# D.4772, hand_value
	.loc 1 290 0
	movl	hand_value+48(%rip), %eax	# hand_value, D.4772
	subl	$50, %eax	#, D.4772
	movl	%eax, hand_value+48(%rip)	# D.4772, hand_value
	.loc 1 291 0
	movl	hand_value+32(%rip), %eax	# hand_value, D.4772
	subl	$50, %eax	#, D.4772
	movl	%eax, hand_value+32(%rip)	# D.4772, hand_value
	.loc 1 292 0
	movl	hand_value+40(%rip), %eax	# hand_value, D.4772
	subl	$100, %eax	#, D.4772
	movl	%eax, hand_value+40(%rip)	# D.4772, hand_value
	jmp	.L63	#
.L62:
	.loc 1 296 0
	movl	hand_value+4(%rip), %eax	# hand_value, D.4772
	addl	$20, %eax	#, D.4772
	movl	%eax, hand_value+4(%rip)	# D.4772, hand_value
	.loc 1 297 0
	movl	hand_value+12(%rip), %eax	# hand_value, D.4772
	addl	$50, %eax	#, D.4772
	movl	%eax, hand_value+12(%rip)	# D.4772, hand_value
	.loc 1 298 0
	movl	hand_value+44(%rip), %eax	# hand_value, D.4772
	addl	$50, %eax	#, D.4772
	movl	%eax, hand_value+44(%rip)	# D.4772, hand_value
	.loc 1 299 0
	movl	hand_value+28(%rip), %eax	# hand_value, D.4772
	addl	$50, %eax	#, D.4772
	movl	%eax, hand_value+28(%rip)	# D.4772, hand_value
	.loc 1 300 0
	movl	hand_value+36(%rip), %eax	# hand_value, D.4772
	addl	$100, %eax	#, D.4772
	movl	%eax, hand_value+36(%rip)	# D.4772, hand_value
.L63:
	.loc 1 302 0
	movl	$.LC39, %edi	#,
	call	puts	#
	jmp	.L64	#
.L61:
	.loc 1 305 0
	movq	-136(%rbp), %rax	# input, tmp433
	addq	$6, %rax	#, D.4771
	movl	$.LC40, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strstr	#
	testq	%rax, %rax	# D.4776
	je	.L65	#,
	.loc 1 307 0
	movl	$50000, -116(%rbp)	#, change
	.loc 1 308 0
	leaq	-112(%rbp), %rax	#, tmp434
	movabsq	$8032487090387444077, %rcx	#, tmp499
	movq	%rcx, (%rax)	# tmp499, MEM[(void *)&howmuch]
	movabsq	$7812731004353257589, %rbx	#, tmp500
	movq	%rbx, 8(%rax)	# tmp500, MEM[(void *)&howmuch]
	movabsq	$2316952642747985184, %rcx	#, tmp501
	movq	%rcx, 16(%rax)	# tmp501, MEM[(void *)&howmuch]
	movabsq	$2338609694524139639, %rbx	#, tmp502
	movq	%rbx, 24(%rax)	# tmp502, MEM[(void *)&howmuch]
	movabsq	$7306930345266409326, %rcx	#, tmp503
	movq	%rcx, 32(%rax)	# tmp503, MEM[(void *)&howmuch]
	movabsq	$2338324182060572786, %rbx	#, tmp504
	movq	%rbx, 40(%rax)	# tmp504, MEM[(void *)&howmuch]
	movl	$695562105, 48(%rax)	#, MEM[(void *)&howmuch]
	movb	$0, 52(%rax)	#, MEM[(void *)&howmuch]
	jmp	.L64	#
.L65:
	.loc 1 310 0
	movq	-136(%rbp), %rax	# input, tmp435
	addq	$6, %rax	#, D.4771
	movl	$.LC41, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strstr	#
	testq	%rax, %rax	# D.4776
	je	.L66	#,
	.loc 1 312 0
	movl	$1000, -116(%rbp)	#, change
	.loc 1 313 0
	leaq	-112(%rbp), %rax	#, tmp436
	movabsq	$2330984739892130665, %rcx	#, tmp505
	movq	%rcx, (%rax)	# tmp505, MEM[(void *)&howmuch]
	movabsq	$7310591412773609826, %rbx	#, tmp506
	movq	%rbx, 8(%rax)	# tmp506, MEM[(void *)&howmuch]
	movabsq	$8657924428637695084, %rcx	#, tmp507
	movq	%rcx, 16(%rax)	# tmp507, MEM[(void *)&howmuch]
	movabsq	$7575175955060564007, %rbx	#, tmp508
	movq	%rbx, 24(%rax)	# tmp508, MEM[(void *)&howmuch]
	movabsq	$2337207817282855028, %rcx	#, tmp509
	movq	%rcx, 32(%rax)	# tmp509, MEM[(void *)&howmuch]
	movabsq	$7070777194824232812, %rbx	#, tmp510
	movq	%rbx, 40(%rax)	# tmp510, MEM[(void *)&howmuch]
	movl	$2712673, 48(%rax)	#, MEM[(void *)&howmuch]
	jmp	.L64	#
.L66:
	.loc 1 315 0
	movq	-136(%rbp), %rax	# input, tmp437
	addq	$6, %rax	#, D.4771
	movl	$45, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strchr	#
	testq	%rax, %rax	# D.4776
	je	.L67	#,
	.loc 1 317 0
	movl	$150, -116(%rbp)	#, change
	.loc 1 318 0
	leaq	-112(%rbp), %rax	#, tmp438
	movabsq	$2891421330192757609, %rcx	#, tmp511
	movq	%rcx, (%rax)	# tmp511, MEM[(void *)&howmuch]
	movabsq	$7308533420339328112, %rbx	#, tmp512
	movq	%rbx, 8(%rax)	# tmp512, MEM[(void *)&howmuch]
	movabsq	$7307221375393474336, %rcx	#, tmp513
	movq	%rcx, 16(%rax)	# tmp513, MEM[(void *)&howmuch]
	movabsq	$2338328219648335982, %rbx	#, tmp514
	movq	%rbx, 24(%rax)	# tmp514, MEM[(void *)&howmuch]
	movabsq	$7306930345266409326, %rcx	#, tmp515
	movq	%rcx, 32(%rax)	# tmp515, MEM[(void *)&howmuch]
	movl	$1633820786, 40(%rax)	#, MEM[(void *)&howmuch]
	movw	$10596, 44(%rax)	#, MEM[(void *)&howmuch]
	movb	$0, 46(%rax)	#, MEM[(void *)&howmuch]
	jmp	.L64	#
.L67:
	.loc 1 321 0
	movl	$0, %eax	#, D.4777
	movl	$0, (%rax)	#, *_186
.L64:
	.loc 1 323 0
	movq	-136(%rbp), %rax	# input, tmp439
	addq	$6, %rax	#, D.4771
	movl	$110, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strchr	#
	testq	%rax, %rax	# D.4776
	je	.L68	#,
	.loc 1 325 0
	movl	comp_color(%rip), %eax	# comp_color, comp_color.15
	cmpl	$1, %eax	#, comp_color.15
	jne	.L69	#,
	.loc 1 326 0
	movl	std_hand_value+16(%rip), %eax	# std_hand_value, D.4772
	subl	-116(%rbp), %eax	# change, D.4772
	movl	%eax, hand_value+16(%rip)	# D.4772, hand_value
	jmp	.L70	#
.L69:
	.loc 1 328 0
	movl	std_hand_value+12(%rip), %edx	# std_hand_value, D.4772
	movl	-116(%rbp), %eax	# change, tmp440
	addl	%edx, %eax	# D.4772, D.4772
	movl	%eax, hand_value+12(%rip)	# D.4772, hand_value
.L70:
	.loc 1 330 0
	leaq	-112(%rbp), %rax	#, tmp441
	movq	%rax, %rsi	# tmp441,
	movl	$.LC31, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L68:
	.loc 1 332 0
	movq	-136(%rbp), %rax	# input, tmp442
	addq	$6, %rax	#, D.4771
	movl	$98, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strchr	#
	testq	%rax, %rax	# D.4776
	je	.L71	#,
	.loc 1 334 0
	movl	comp_color(%rip), %eax	# comp_color, comp_color.16
	cmpl	$1, %eax	#, comp_color.16
	jne	.L72	#,
	.loc 1 335 0
	movl	std_hand_value+48(%rip), %eax	# std_hand_value, D.4772
	subl	-116(%rbp), %eax	# change, D.4772
	movl	%eax, hand_value+48(%rip)	# D.4772, hand_value
	jmp	.L73	#
.L72:
	.loc 1 337 0
	movl	std_hand_value+44(%rip), %edx	# std_hand_value, D.4772
	movl	-116(%rbp), %eax	# change, tmp443
	addl	%edx, %eax	# D.4772, D.4772
	movl	%eax, hand_value+44(%rip)	# D.4772, hand_value
.L73:
	.loc 1 340 0
	movl	comp_color(%rip), %eax	# comp_color, comp_color.17
	cmpl	$1, %eax	#, comp_color.17
	jne	.L74	#,
	.loc 1 341 0
	movl	std_hand_value+40(%rip), %eax	# std_hand_value, D.4772
	subl	-116(%rbp), %eax	# change, D.4772
	movl	%eax, hand_value+40(%rip)	# D.4772, hand_value
	jmp	.L75	#
.L74:
	.loc 1 343 0
	movl	std_hand_value+36(%rip), %edx	# std_hand_value, D.4772
	movl	-116(%rbp), %eax	# change, tmp444
	addl	%edx, %eax	# D.4772, D.4772
	movl	%eax, hand_value+36(%rip)	# D.4772, hand_value
.L75:
	.loc 1 345 0
	leaq	-112(%rbp), %rax	#, tmp445
	movq	%rax, %rsi	# tmp445,
	movl	$.LC32, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L71:
	.loc 1 347 0
	movq	-136(%rbp), %rax	# input, tmp446
	addq	$6, %rax	#, D.4771
	movl	$114, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strchr	#
	testq	%rax, %rax	# D.4776
	je	.L76	#,
	.loc 1 349 0
	movl	comp_color(%rip), %eax	# comp_color, comp_color.18
	cmpl	$1, %eax	#, comp_color.18
	jne	.L77	#,
	.loc 1 350 0
	movl	std_hand_value+32(%rip), %eax	# std_hand_value, D.4772
	subl	-116(%rbp), %eax	# change, D.4772
	movl	%eax, hand_value+32(%rip)	# D.4772, hand_value
	jmp	.L78	#
.L77:
	.loc 1 352 0
	movl	std_hand_value+28(%rip), %edx	# std_hand_value, D.4772
	movl	-116(%rbp), %eax	# change, tmp447
	addl	%edx, %eax	# D.4772, D.4772
	movl	%eax, hand_value+28(%rip)	# D.4772, hand_value
.L78:
	.loc 1 355 0
	movl	comp_color(%rip), %eax	# comp_color, comp_color.19
	cmpl	$1, %eax	#, comp_color.19
	jne	.L79	#,
	.loc 1 356 0
	movl	std_hand_value+40(%rip), %eax	# std_hand_value, D.4772
	subl	-116(%rbp), %eax	# change, D.4772
	movl	%eax, hand_value+40(%rip)	# D.4772, hand_value
	jmp	.L80	#
.L79:
	.loc 1 358 0
	movl	std_hand_value+36(%rip), %edx	# std_hand_value, D.4772
	movl	-116(%rbp), %eax	# change, tmp448
	addl	%edx, %eax	# D.4772, D.4772
	movl	%eax, hand_value+36(%rip)	# D.4772, hand_value
.L80:
	.loc 1 360 0
	leaq	-112(%rbp), %rax	#, tmp449
	movq	%rax, %rsi	# tmp449,
	movl	$.LC33, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L76:
	.loc 1 362 0
	movq	-136(%rbp), %rax	# input, tmp450
	addq	$6, %rax	#, D.4771
	movl	$113, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strchr	#
	testq	%rax, %rax	# D.4776
	je	.L81	#,
	.loc 1 364 0
	movl	comp_color(%rip), %eax	# comp_color, comp_color.20
	cmpl	$1, %eax	#, comp_color.20
	jne	.L82	#,
	.loc 1 365 0
	movl	std_hand_value+40(%rip), %eax	# std_hand_value, D.4772
	subl	-116(%rbp), %eax	# change, D.4772
	movl	%eax, hand_value+40(%rip)	# D.4772, hand_value
	jmp	.L83	#
.L82:
	.loc 1 367 0
	movl	std_hand_value+36(%rip), %edx	# std_hand_value, D.4772
	movl	-116(%rbp), %eax	# change, tmp451
	addl	%edx, %eax	# D.4772, D.4772
	movl	%eax, hand_value+36(%rip)	# D.4772, hand_value
.L83:
	.loc 1 369 0
	leaq	-112(%rbp), %rax	#, tmp452
	movq	%rax, %rsi	# tmp452,
	movl	$.LC34, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L81:
	.loc 1 371 0
	movq	-136(%rbp), %rax	# input, tmp453
	addq	$6, %rax	#, D.4771
	movl	$112, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strchr	#
	testq	%rax, %rax	# D.4776
	je	.L84	#,
	.loc 1 373 0
	movl	comp_color(%rip), %eax	# comp_color, comp_color.21
	cmpl	$1, %eax	#, comp_color.21
	jne	.L85	#,
	.loc 1 374 0
	movl	std_hand_value+8(%rip), %eax	# std_hand_value, D.4772
	subl	-116(%rbp), %eax	# change, D.4772
	movl	%eax, hand_value+8(%rip)	# D.4772, hand_value
	jmp	.L86	#
.L85:
	.loc 1 376 0
	movl	std_hand_value+4(%rip), %edx	# std_hand_value, D.4772
	movl	-116(%rbp), %eax	# change, tmp454
	addl	%edx, %eax	# D.4772, D.4772
	movl	%eax, hand_value+4(%rip)	# D.4772, hand_value
.L86:
	.loc 1 379 0
	movl	comp_color(%rip), %eax	# comp_color, comp_color.22
	cmpl	$1, %eax	#, comp_color.22
	jne	.L87	#,
	.loc 1 381 0
	movl	std_hand_value+40(%rip), %eax	# std_hand_value, D.4772
	subl	-116(%rbp), %eax	# change, D.4772
	movl	%eax, hand_value+40(%rip)	# D.4772, hand_value
	.loc 1 382 0
	movl	std_hand_value+48(%rip), %eax	# std_hand_value, D.4772
	subl	-116(%rbp), %eax	# change, D.4772
	movl	%eax, hand_value+48(%rip)	# D.4772, hand_value
	jmp	.L88	#
.L87:
	.loc 1 386 0
	movl	std_hand_value+36(%rip), %edx	# std_hand_value, D.4772
	movl	-116(%rbp), %eax	# change, tmp455
	addl	%edx, %eax	# D.4772, D.4772
	movl	%eax, hand_value+36(%rip)	# D.4772, hand_value
	.loc 1 387 0
	movl	std_hand_value+44(%rip), %edx	# std_hand_value, D.4772
	movl	-116(%rbp), %eax	# change, tmp456
	addl	%edx, %eax	# D.4772, D.4772
	movl	%eax, hand_value+44(%rip)	# D.4772, hand_value
.L88:
	.loc 1 390 0
	leaq	-112(%rbp), %rax	#, tmp457
	movq	%rax, %rsi	# tmp457,
	movl	$.LC35, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L84:
	.loc 1 392 0
	movq	-136(%rbp), %rax	# input, tmp458
	addq	$6, %rax	#, D.4771
	movl	$100, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strchr	#
	testq	%rax, %rax	# D.4776
	je	.L89	#,
	.loc 1 394 0
	movl	comp_color(%rip), %eax	# comp_color, comp_color.23
	cmpl	$1, %eax	#, comp_color.23
	jne	.L90	#,
	.loc 1 396 0
	movl	std_hand_value+8(%rip), %eax	# std_hand_value, D.4772
	subl	-116(%rbp), %eax	# change, D.4772
	movl	%eax, hand_value+8(%rip)	# D.4772, hand_value
	.loc 1 397 0
	movl	std_hand_value+48(%rip), %eax	# std_hand_value, D.4772
	subl	-116(%rbp), %eax	# change, D.4772
	movl	%eax, hand_value+48(%rip)	# D.4772, hand_value
	.loc 1 398 0
	movl	std_hand_value+40(%rip), %eax	# std_hand_value, D.4772
	subl	-116(%rbp), %eax	# change, D.4772
	movl	%eax, hand_value+40(%rip)	# D.4772, hand_value
	jmp	.L91	#
.L90:
	.loc 1 402 0
	movl	std_hand_value+4(%rip), %edx	# std_hand_value, D.4772
	movl	-116(%rbp), %eax	# change, tmp459
	addl	%edx, %eax	# D.4772, D.4772
	movl	%eax, hand_value+4(%rip)	# D.4772, hand_value
	.loc 1 403 0
	movl	std_hand_value+44(%rip), %edx	# std_hand_value, D.4772
	movl	-116(%rbp), %eax	# change, tmp460
	addl	%edx, %eax	# D.4772, D.4772
	movl	%eax, hand_value+44(%rip)	# D.4772, hand_value
	.loc 1 404 0
	movl	std_hand_value+36(%rip), %edx	# std_hand_value, D.4772
	movl	-116(%rbp), %eax	# change, tmp461
	addl	%edx, %eax	# D.4772, D.4772
	movl	%eax, hand_value+36(%rip)	# D.4772, hand_value
.L91:
	.loc 1 407 0
	leaq	-112(%rbp), %rax	#, tmp462
	movq	%rax, %rsi	# tmp462,
	movl	$.LC36, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L89:
	.loc 1 409 0
	movq	-136(%rbp), %rax	# input, tmp463
	addq	$6, %rax	#, D.4771
	movl	$104, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strchr	#
	testq	%rax, %rax	# D.4776
	je	.L15	#,
	.loc 1 411 0
	movl	comp_color(%rip), %eax	# comp_color, comp_color.24
	cmpl	$1, %eax	#, comp_color.24
	jne	.L93	#,
	.loc 1 413 0
	movl	std_hand_value+32(%rip), %eax	# std_hand_value, D.4772
	subl	-116(%rbp), %eax	# change, D.4772
	movl	%eax, hand_value+32(%rip)	# D.4772, hand_value
	.loc 1 414 0
	movl	std_hand_value+40(%rip), %eax	# std_hand_value, D.4772
	subl	-116(%rbp), %eax	# change, D.4772
	movl	%eax, hand_value+40(%rip)	# D.4772, hand_value
	jmp	.L94	#
.L93:
	.loc 1 418 0
	movl	std_hand_value+28(%rip), %edx	# std_hand_value, D.4772
	movl	-116(%rbp), %eax	# change, tmp464
	addl	%edx, %eax	# D.4772, D.4772
	movl	%eax, hand_value+28(%rip)	# D.4772, hand_value
	.loc 1 419 0
	movl	std_hand_value+36(%rip), %edx	# std_hand_value, D.4772
	movl	-116(%rbp), %eax	# change, tmp465
	addl	%edx, %eax	# D.4772, D.4772
	movl	%eax, hand_value+36(%rip)	# D.4772, hand_value
.L94:
	.loc 1 422 0
	leaq	-112(%rbp), %rax	#, tmp466
	movq	%rax, %rsi	# tmp466,
	movl	$.LC37, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 474 0
	jmp	.L10	#
.L59:
	.loc 1 425 0
	movq	-136(%rbp), %rax	# input, tmp467
	addq	$6, %rax	#, D.4773
	movzbl	(%rax), %edx	# *_288, D.4774
	movl	$.LC42, %eax	#, D.4775
	movzbl	(%rax), %eax	# MEM[(const unsigned char * {ref-all})_290], D.4774
	cmpb	%al, %dl	# D.4774, D.4774
	je	.L95	#,
	.loc 1 426 0
	movq	-136(%rbp), %rax	# input, tmp468
	addq	$6, %rax	#, D.4771
	movl	$.LC43, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strstr	#
	testq	%rax, %rax	# D.4776
	jne	.L95	#,
	.loc 1 427 0
	movq	-136(%rbp), %rax	# input, tmp469
	addq	$6, %rax	#, D.4771
	movl	$.LC44, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strstr	#
	testq	%rax, %rax	# D.4776
	je	.L96	#,
	.loc 1 427 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# input, tmp470
	addq	$6, %rax	#, D.4771
	movl	$.LC45, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strstr	#
	testq	%rax, %rax	# D.4776
	jne	.L95	#,
.L96:
	.loc 1 428 0 is_stmt 1
	movq	-136(%rbp), %rax	# input, tmp471
	addq	$6, %rax	#, D.4773
	movzbl	(%rax), %edx	# *_298, D.4774
	movl	$.LC46, %eax	#, D.4775
	movzbl	(%rax), %eax	# MEM[(const unsigned char * {ref-all})_300], D.4774
	cmpb	%al, %dl	# D.4774, D.4774
	jne	.L97	#,
.L95:
	.loc 1 428 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# input, tmp472
	addq	$6, %rax	#, D.4771
	movl	$.LC47, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strstr	#
	testq	%rax, %rax	# D.4776
	jne	.L97	#,
	.loc 1 430 0 is_stmt 1
	movl	$.LC48, %edi	#,
	call	puts	#
	.loc 1 431 0
	call	ResetHandValue	#
	.loc 1 432 0
	movl	$0, must_sit(%rip)	#, must_sit
	.loc 1 433 0
	movl	$0, partnerdead(%rip)	#, partnerdead
	.loc 1 434 0
	movl	$0, piecedead(%rip)	#, piecedead
	jmp	.L15	#
.L97:
	.loc 1 436 0
	movq	-136(%rbp), %rax	# input, tmp473
	addq	$6, %rax	#, D.4771
	movl	$25, %edx	#,
	movl	$.LC49, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strncmp	#
	testl	%eax, %eax	# D.4772
	je	.L98	#,
	.loc 1 437 0 discriminator 1
	movq	-136(%rbp), %rax	# input, tmp474
	addq	$6, %rax	#, D.4771
	movl	$4, %edx	#,
	movl	$.LC50, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strncmp	#
	.loc 1 436 0 discriminator 1
	testl	%eax, %eax	# D.4772
	jne	.L99	#,
.L98:
	.loc 1 440 0
	movl	$1, go_fast(%rip)	#, go_fast
	.loc 1 441 0
	movl	$0, must_sit(%rip)	#, must_sit
	.loc 1 442 0
	movl	$1, partnerdead(%rip)	#, partnerdead
	jmp	.L15	#
.L99:
	.loc 1 446 0
	movq	-136(%rbp), %rax	# input, tmp475
	addq	$6, %rax	#, D.4771
	movl	$26, %edx	#,
	movl	$.LC51, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strncmp	#
	testl	%eax, %eax	# D.4772
	jne	.L100	#,
	.loc 1 449 0
	movl	$1, go_fast(%rip)	#, go_fast
	.loc 1 450 0
	movl	$0, must_sit(%rip)	#, must_sit
	.loc 1 451 0
	movl	$1, piecedead(%rip)	#, piecedead
	jmp	.L15	#
.L100:
	.loc 1 453 0
	movq	-136(%rbp), %rax	# input, tmp476
	addq	$6, %rax	#, D.4771
	movl	$5, %edx	#,
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strncmp	#
	testl	%eax, %eax	# D.4772
	jne	.L101	#,
	.loc 1 455 0
	jmp	.L10	#
.L101:
	.loc 1 457 0
	movq	-136(%rbp), %rax	# input, tmp477
	addq	$6, %rax	#, D.4771
	movl	$2, %edx	#,
	movl	$.LC52, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strncmp	#
	testl	%eax, %eax	# D.4772
	jne	.L102	#,
	.loc 1 459 0
	jmp	.L10	#
.L102:
	.loc 1 461 0
	movq	-136(%rbp), %rax	# input, tmp478
	addq	$6, %rax	#, D.4771
	movl	$2, %edx	#,
	movl	$.LC53, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strncmp	#
	testl	%eax, %eax	# D.4772
	je	.L103	#,
	.loc 1 461 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# input, tmp479
	addq	$6, %rax	#, D.4771
	movl	$5, %edx	#,
	movl	$.LC54, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strncmp	#
	testl	%eax, %eax	# D.4772
	jne	.L104	#,
.L103:
	.loc 1 463 0 is_stmt 1
	movl	$.LC55, %edi	#,
	call	puts	#
	jmp	.L15	#
.L104:
	.loc 1 465 0
	movq	-136(%rbp), %rax	# input, tmp480
	addq	$6, %rax	#, D.4771
	movl	$.LC56, %esi	#,
	movq	%rax, %rdi	# D.4771,
	call	strstr	#
	testq	%rax, %rax	# D.4776
	je	.L105	#,
	.loc 1 467 0
	movl	$.LC57, %edi	#,
	call	puts	#
	.loc 1 468 0
	movl	$.LC3, %edi	#,
	call	puts	#
	jmp	.L15	#
.L105:
	.loc 1 472 0
	movl	$.LC58, %edi	#,
	call	puts	#
.L15:
	.loc 1 474 0
	nop
.L10:
	.loc 1 475 0
	movq	-24(%rbp), %rax	# D.4778, tmp482
	xorq	%fs:40, %rax	#, tmp482
	je	.L107	#,
	call	__stack_chk_fail	#
.L107:
	addq	$136, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	HandlePtell, .-HandlePtell
	.section	.rodata
	.align 8
.LC59:
	.string	"tellics ptell p doesn't mate me anymore"
	.align 8
.LC60:
	.string	"tellics ptell n doesn't mate me anymore"
	.align 8
.LC61:
	.string	"tellics ptell b doesn't mate me anymore"
	.align 8
.LC62:
	.string	"tellics ptell r doesn't mate me anymore"
	.align 8
.LC63:
	.string	"tellics ptell q doesn't mate me anymore"
.LC64:
	.string	"tellics ptell ---p"
.LC65:
	.string	"tellics ptell ---n"
.LC66:
	.string	"tellics ptell ---b"
.LC67:
	.string	"tellics ptell ---r"
.LC68:
	.string	"tellics ptell ---q"
.LC69:
	.string	"tellics ptell x"
.LC70:
	.string	"tellics ptell go"
	.text
	.globl	CheckBadFlow
	.type	CheckBadFlow, @function
CheckBadFlow:
.LFB7:
	.loc 1 480 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$24672, %rsp	#,
	movl	%edi, -24660(%rbp)	# reset, reset
	.loc 1 485 0
	movl	$0, -24636(%rbp)	#, othermove
	.loc 1 488 0
	movl	$0, -24632(%rbp)	#, pawnmates
	.loc 1 489 0
	movl	$0, -24628(%rbp)	#, knightmates
	.loc 1 490 0
	movl	$0, -24624(%rbp)	#, bishopmates
	.loc 1 491 0
	movl	$0, -24620(%rbp)	#, rookmates
	.loc 1 492 0
	movl	$0, -24616(%rbp)	#, queenmates
	.loc 1 502 0
	movl	$0, -24612(%rbp)	#, pawnwarn
	.loc 1 503 0
	movl	$0, -24608(%rbp)	#, knightwarn
	.loc 1 504 0
	movl	$0, -24604(%rbp)	#, bishopwarn
	.loc 1 505 0
	movl	$0, -24600(%rbp)	#, rookwarn
	.loc 1 506 0
	movl	$0, -24596(%rbp)	#, queenwarn
	.loc 1 508 0
	cmpl	$0, -24660(%rbp)	#, reset
	je	.L109	#,
	.loc 1 510 0
	movl	$0, pawnmated.3912(%rip)	#, pawnmated
	.loc 1 511 0
	movl	$0, knightmated.3913(%rip)	#, knightmated
	.loc 1 512 0
	movl	$0, bishopmated.3914(%rip)	#, bishopmated
	.loc 1 513 0
	movl	$0, rookmated.3915(%rip)	#, rookmated
	.loc 1 514 0
	movl	$0, queenmated.3916(%rip)	#, queenmated
	.loc 1 515 0
	jmp	.L108	#
.L109:
	.loc 1 518 0
	call	in_check	#
	movl	%eax, -24592(%rbp)	# D.4834, ic
	.loc 1 520 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.25
	testl	%eax, %eax	# white_to_move.25
	sete	%al	#, D.4835
	movzbl	%al, %edx	# D.4835, D.4836
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.27
	testl	%eax, %eax	# white_to_move.27
	je	.L111	#,
	.loc 1 520 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.26
	jmp	.L112	#
.L111:
	.loc 1 520 0 discriminator 2
	movl	$2, %eax	#, iftmp.26
.L112:
	.loc 1 520 0 discriminator 3
	cltq
	movslq	%edx, %rdx	# D.4836, tmp192
	salq	$4, %rdx	#, tmp193
	addq	%rdx, %rax	# tmp193, tmp194
	movl	holding(,%rax,4), %eax	# holding, D.4836
	testl	%eax, %eax	# D.4836
	jne	.L113	#,
	.loc 1 523 0 is_stmt 1
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.28
	testl	%eax, %eax	# white_to_move.28
	sete	%al	#, D.4835
	movzbl	%al, %edx	# D.4835, D.4836
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.30
	testl	%eax, %eax	# white_to_move.30
	je	.L114	#,
	.loc 1 523 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.29
	jmp	.L115	#
.L114:
	.loc 1 523 0 discriminator 2
	movl	$2, %eax	#, iftmp.29
.L115:
	.loc 1 523 0 discriminator 3
	movl	%edx, %esi	# D.4836,
	movl	%eax, %edi	# iftmp.29,
	call	DropaddHolding	#
	.loc 1 525 0 is_stmt 1 discriminator 3
	leaq	-24576(%rbp), %rax	#, tmp195
	movq	%rax, %rdi	# tmp195,
	call	gen	#
	.loc 1 526 0 discriminator 3
	movl	numb_moves(%rip), %eax	# numb_moves, tmp196
	movl	%eax, -24588(%rbp)	# tmp196, his_num_moves
	.loc 1 528 0 discriminator 3
	movl	$0, -24640(%rbp)	#, i
	jmp	.L116	#
.L122:
	.loc 1 530 0
	movl	-24640(%rbp), %edx	# i, tmp197
	leaq	-24576(%rbp), %rax	#, tmp198
	movl	%edx, %esi	# tmp197,
	movq	%rax, %rdi	# tmp198,
	call	make	#
	.loc 1 532 0
	movl	-24592(%rbp), %edx	# ic, tmp199
	movl	-24640(%rbp), %ecx	# i, tmp200
	leaq	-24576(%rbp), %rax	#, tmp201
	movl	%ecx, %esi	# tmp200,
	movq	%rax, %rdi	# tmp201,
	call	check_legal	#
	testl	%eax, %eax	# D.4834
	je	.L117	#,
	.loc 1 534 0
	movl	$3, -24632(%rbp)	#, pawnmates
	.loc 1 536 0
	call	in_check	#
	movl	%eax, -24584(%rbp)	# D.4834, icc
	.loc 1 538 0
	leaq	-12288(%rbp), %rax	#, tmp202
	movq	%rax, %rdi	# tmp202,
	call	gen	#
	.loc 1 539 0
	movl	numb_moves(%rip), %eax	# numb_moves, tmp203
	movl	%eax, -24580(%rbp)	# tmp203, our_num_moves
	.loc 1 541 0
	movl	$0, -24644(%rbp)	#, j
	jmp	.L118	#
.L120:
	.loc 1 544 0
	movl	-24644(%rbp), %edx	# j, tmp204
	leaq	-12288(%rbp), %rax	#, tmp205
	movl	%edx, %esi	# tmp204,
	movq	%rax, %rdi	# tmp205,
	call	make	#
	.loc 1 546 0
	movl	-24584(%rbp), %edx	# icc, tmp206
	movl	-24644(%rbp), %ecx	# j, tmp207
	leaq	-12288(%rbp), %rax	#, tmp208
	movl	%ecx, %esi	# tmp207,
	movq	%rax, %rdi	# tmp208,
	call	check_legal	#
	testl	%eax, %eax	# D.4834
	je	.L119	#,
	.loc 1 547 0
	movl	$0, -24632(%rbp)	#, pawnmates
.L119:
	.loc 1 549 0
	movl	-24644(%rbp), %edx	# j, tmp209
	leaq	-12288(%rbp), %rax	#, tmp210
	movl	%edx, %esi	# tmp209,
	movq	%rax, %rdi	# tmp210,
	call	unmake	#
	.loc 1 541 0
	addl	$1, -24644(%rbp)	#, j
.L118:
	.loc 1 541 0 is_stmt 0 discriminator 1
	movl	-24644(%rbp), %eax	# j, tmp211
	cmpl	-24580(%rbp), %eax	# our_num_moves, tmp211
	jge	.L117	#,
	.loc 1 541 0 discriminator 2
	cmpl	$0, -24632(%rbp)	#, pawnmates
	jne	.L120	#,
.L117:
	.loc 1 553 0 is_stmt 1
	movl	-24640(%rbp), %edx	# i, tmp212
	leaq	-24576(%rbp), %rax	#, tmp213
	movl	%edx, %esi	# tmp212,
	movq	%rax, %rdi	# tmp213,
	call	unmake	#
	.loc 1 528 0
	addl	$1, -24640(%rbp)	#, i
.L116:
	.loc 1 528 0 is_stmt 0 discriminator 1
	movl	-24640(%rbp), %eax	# i, tmp214
	cmpl	-24588(%rbp), %eax	# his_num_moves, tmp214
	jge	.L121	#,
	.loc 1 528 0 discriminator 2
	cmpl	$0, -24632(%rbp)	#, pawnmates
	je	.L122	#,
.L121:
	.loc 1 555 0 is_stmt 1
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.31
	testl	%eax, %eax	# white_to_move.31
	sete	%al	#, D.4835
	movzbl	%al, %edx	# D.4835, D.4836
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.33
	testl	%eax, %eax	# white_to_move.33
	je	.L123	#,
	.loc 1 555 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.32
	jmp	.L124	#
.L123:
	.loc 1 555 0 discriminator 2
	movl	$2, %eax	#, iftmp.32
.L124:
	.loc 1 555 0 discriminator 3
	movl	%edx, %esi	# D.4836,
	movl	%eax, %edi	# iftmp.32,
	call	DropremoveHolding	#
.L113:
	.loc 1 558 0 is_stmt 1
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.34
	testl	%eax, %eax	# white_to_move.34
	sete	%al	#, D.4835
	movzbl	%al, %edx	# D.4835, D.4836
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.36
	testl	%eax, %eax	# white_to_move.36
	je	.L125	#,
	.loc 1 558 0 is_stmt 0 discriminator 1
	movl	$3, %eax	#, iftmp.35
	jmp	.L126	#
.L125:
	.loc 1 558 0 discriminator 2
	movl	$4, %eax	#, iftmp.35
.L126:
	.loc 1 558 0 discriminator 3
	cltq
	movslq	%edx, %rdx	# D.4836, tmp216
	salq	$4, %rdx	#, tmp217
	addq	%rdx, %rax	# tmp217, tmp218
	movl	holding(,%rax,4), %eax	# holding, D.4836
	testl	%eax, %eax	# D.4836
	jne	.L127	#,
	.loc 1 561 0 is_stmt 1
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.37
	testl	%eax, %eax	# white_to_move.37
	sete	%al	#, D.4835
	movzbl	%al, %edx	# D.4835, D.4836
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.39
	testl	%eax, %eax	# white_to_move.39
	je	.L128	#,
	.loc 1 561 0 is_stmt 0 discriminator 1
	movl	$3, %eax	#, iftmp.38
	jmp	.L129	#
.L128:
	.loc 1 561 0 discriminator 2
	movl	$4, %eax	#, iftmp.38
.L129:
	.loc 1 561 0 discriminator 3
	movl	%edx, %esi	# D.4836,
	movl	%eax, %edi	# iftmp.38,
	call	DropaddHolding	#
	.loc 1 563 0 is_stmt 1 discriminator 3
	leaq	-24576(%rbp), %rax	#, tmp219
	movq	%rax, %rdi	# tmp219,
	call	gen	#
	.loc 1 564 0 discriminator 3
	movl	numb_moves(%rip), %eax	# numb_moves, tmp220
	movl	%eax, -24588(%rbp)	# tmp220, his_num_moves
	.loc 1 566 0 discriminator 3
	movl	$0, -24640(%rbp)	#, i
	jmp	.L130	#
.L136:
	.loc 1 569 0
	movl	-24640(%rbp), %edx	# i, tmp221
	leaq	-24576(%rbp), %rax	#, tmp222
	movl	%edx, %esi	# tmp221,
	movq	%rax, %rdi	# tmp222,
	call	make	#
	.loc 1 571 0
	movl	-24592(%rbp), %edx	# ic, tmp223
	movl	-24640(%rbp), %ecx	# i, tmp224
	leaq	-24576(%rbp), %rax	#, tmp225
	movl	%ecx, %esi	# tmp224,
	movq	%rax, %rdi	# tmp225,
	call	check_legal	#
	testl	%eax, %eax	# D.4834
	je	.L131	#,
	.loc 1 573 0
	movl	$3, -24628(%rbp)	#, knightmates
	.loc 1 575 0
	call	in_check	#
	movl	%eax, -24584(%rbp)	# D.4834, icc
	.loc 1 577 0
	leaq	-12288(%rbp), %rax	#, tmp226
	movq	%rax, %rdi	# tmp226,
	call	gen	#
	.loc 1 578 0
	movl	numb_moves(%rip), %eax	# numb_moves, tmp227
	movl	%eax, -24580(%rbp)	# tmp227, our_num_moves
	.loc 1 580 0
	movl	$0, -24644(%rbp)	#, j
	jmp	.L132	#
.L134:
	.loc 1 582 0
	movl	-24644(%rbp), %edx	# j, tmp228
	leaq	-12288(%rbp), %rax	#, tmp229
	movl	%edx, %esi	# tmp228,
	movq	%rax, %rdi	# tmp229,
	call	make	#
	.loc 1 584 0
	movl	-24584(%rbp), %edx	# icc, tmp230
	movl	-24644(%rbp), %ecx	# j, tmp231
	leaq	-12288(%rbp), %rax	#, tmp232
	movl	%ecx, %esi	# tmp231,
	movq	%rax, %rdi	# tmp232,
	call	check_legal	#
	testl	%eax, %eax	# D.4834
	je	.L133	#,
	.loc 1 585 0
	movl	$0, -24628(%rbp)	#, knightmates
.L133:
	.loc 1 587 0
	movl	-24644(%rbp), %edx	# j, tmp233
	leaq	-12288(%rbp), %rax	#, tmp234
	movl	%edx, %esi	# tmp233,
	movq	%rax, %rdi	# tmp234,
	call	unmake	#
	.loc 1 580 0
	addl	$1, -24644(%rbp)	#, j
.L132:
	.loc 1 580 0 is_stmt 0 discriminator 1
	movl	-24644(%rbp), %eax	# j, tmp235
	cmpl	-24580(%rbp), %eax	# our_num_moves, tmp235
	jge	.L131	#,
	.loc 1 580 0 discriminator 2
	cmpl	$0, -24628(%rbp)	#, knightmates
	jne	.L134	#,
.L131:
	.loc 1 590 0 is_stmt 1
	movl	-24640(%rbp), %edx	# i, tmp236
	leaq	-24576(%rbp), %rax	#, tmp237
	movl	%edx, %esi	# tmp236,
	movq	%rax, %rdi	# tmp237,
	call	unmake	#
	.loc 1 566 0
	addl	$1, -24640(%rbp)	#, i
.L130:
	.loc 1 566 0 is_stmt 0 discriminator 1
	movl	-24640(%rbp), %eax	# i, tmp238
	cmpl	-24588(%rbp), %eax	# his_num_moves, tmp238
	jge	.L135	#,
	.loc 1 566 0 discriminator 2
	cmpl	$0, -24628(%rbp)	#, knightmates
	je	.L136	#,
.L135:
	.loc 1 592 0 is_stmt 1
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.40
	testl	%eax, %eax	# white_to_move.40
	sete	%al	#, D.4835
	movzbl	%al, %edx	# D.4835, D.4836
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.42
	testl	%eax, %eax	# white_to_move.42
	je	.L137	#,
	.loc 1 592 0 is_stmt 0 discriminator 1
	movl	$3, %eax	#, iftmp.41
	jmp	.L138	#
.L137:
	.loc 1 592 0 discriminator 2
	movl	$4, %eax	#, iftmp.41
.L138:
	.loc 1 592 0 discriminator 3
	movl	%edx, %esi	# D.4836,
	movl	%eax, %edi	# iftmp.41,
	call	DropremoveHolding	#
.L127:
	.loc 1 595 0 is_stmt 1
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.43
	testl	%eax, %eax	# white_to_move.43
	sete	%al	#, D.4835
	movzbl	%al, %edx	# D.4835, D.4836
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.45
	testl	%eax, %eax	# white_to_move.45
	je	.L139	#,
	.loc 1 595 0 is_stmt 0 discriminator 1
	movl	$11, %eax	#, iftmp.44
	jmp	.L140	#
.L139:
	.loc 1 595 0 discriminator 2
	movl	$12, %eax	#, iftmp.44
.L140:
	.loc 1 595 0 discriminator 3
	cltq
	movslq	%edx, %rdx	# D.4836, tmp240
	salq	$4, %rdx	#, tmp241
	addq	%rdx, %rax	# tmp241, tmp242
	movl	holding(,%rax,4), %eax	# holding, D.4836
	testl	%eax, %eax	# D.4836
	jne	.L141	#,
	.loc 1 598 0 is_stmt 1
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.46
	testl	%eax, %eax	# white_to_move.46
	sete	%al	#, D.4835
	movzbl	%al, %edx	# D.4835, D.4836
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.48
	testl	%eax, %eax	# white_to_move.48
	je	.L142	#,
	.loc 1 598 0 is_stmt 0 discriminator 1
	movl	$11, %eax	#, iftmp.47
	jmp	.L143	#
.L142:
	.loc 1 598 0 discriminator 2
	movl	$12, %eax	#, iftmp.47
.L143:
	.loc 1 598 0 discriminator 3
	movl	%edx, %esi	# D.4836,
	movl	%eax, %edi	# iftmp.47,
	call	DropaddHolding	#
	.loc 1 600 0 is_stmt 1 discriminator 3
	leaq	-24576(%rbp), %rax	#, tmp243
	movq	%rax, %rdi	# tmp243,
	call	gen	#
	.loc 1 601 0 discriminator 3
	movl	numb_moves(%rip), %eax	# numb_moves, tmp244
	movl	%eax, -24588(%rbp)	# tmp244, his_num_moves
	.loc 1 603 0 discriminator 3
	movl	$0, -24640(%rbp)	#, i
	jmp	.L144	#
.L150:
	.loc 1 605 0
	movl	-24640(%rbp), %edx	# i, tmp245
	leaq	-24576(%rbp), %rax	#, tmp246
	movl	%edx, %esi	# tmp245,
	movq	%rax, %rdi	# tmp246,
	call	make	#
	.loc 1 607 0
	movl	-24592(%rbp), %edx	# ic, tmp247
	movl	-24640(%rbp), %ecx	# i, tmp248
	leaq	-24576(%rbp), %rax	#, tmp249
	movl	%ecx, %esi	# tmp248,
	movq	%rax, %rdi	# tmp249,
	call	check_legal	#
	testl	%eax, %eax	# D.4834
	je	.L145	#,
	.loc 1 609 0
	movl	$3, -24624(%rbp)	#, bishopmates
	.loc 1 611 0
	call	in_check	#
	movl	%eax, -24584(%rbp)	# D.4834, icc
	.loc 1 613 0
	leaq	-12288(%rbp), %rax	#, tmp250
	movq	%rax, %rdi	# tmp250,
	call	gen	#
	.loc 1 614 0
	movl	numb_moves(%rip), %eax	# numb_moves, tmp251
	movl	%eax, -24580(%rbp)	# tmp251, our_num_moves
	.loc 1 616 0
	movl	$0, -24644(%rbp)	#, j
	jmp	.L146	#
.L148:
	.loc 1 618 0
	movl	-24644(%rbp), %edx	# j, tmp252
	leaq	-12288(%rbp), %rax	#, tmp253
	movl	%edx, %esi	# tmp252,
	movq	%rax, %rdi	# tmp253,
	call	make	#
	.loc 1 620 0
	movl	-24584(%rbp), %edx	# icc, tmp254
	movl	-24644(%rbp), %ecx	# j, tmp255
	leaq	-12288(%rbp), %rax	#, tmp256
	movl	%ecx, %esi	# tmp255,
	movq	%rax, %rdi	# tmp256,
	call	check_legal	#
	testl	%eax, %eax	# D.4834
	je	.L147	#,
	.loc 1 621 0
	movl	$0, -24624(%rbp)	#, bishopmates
.L147:
	.loc 1 623 0
	movl	-24644(%rbp), %edx	# j, tmp257
	leaq	-12288(%rbp), %rax	#, tmp258
	movl	%edx, %esi	# tmp257,
	movq	%rax, %rdi	# tmp258,
	call	unmake	#
	.loc 1 616 0
	addl	$1, -24644(%rbp)	#, j
.L146:
	.loc 1 616 0 is_stmt 0 discriminator 1
	movl	-24644(%rbp), %eax	# j, tmp259
	cmpl	-24580(%rbp), %eax	# our_num_moves, tmp259
	jge	.L145	#,
	.loc 1 616 0 discriminator 2
	cmpl	$0, -24624(%rbp)	#, bishopmates
	jne	.L148	#,
.L145:
	.loc 1 626 0 is_stmt 1
	movl	-24640(%rbp), %edx	# i, tmp260
	leaq	-24576(%rbp), %rax	#, tmp261
	movl	%edx, %esi	# tmp260,
	movq	%rax, %rdi	# tmp261,
	call	unmake	#
	.loc 1 603 0
	addl	$1, -24640(%rbp)	#, i
.L144:
	.loc 1 603 0 is_stmt 0 discriminator 1
	movl	-24640(%rbp), %eax	# i, tmp262
	cmpl	-24588(%rbp), %eax	# his_num_moves, tmp262
	jge	.L149	#,
	.loc 1 603 0 discriminator 2
	cmpl	$0, -24624(%rbp)	#, bishopmates
	je	.L150	#,
.L149:
	.loc 1 628 0 is_stmt 1
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.49
	testl	%eax, %eax	# white_to_move.49
	sete	%al	#, D.4835
	movzbl	%al, %edx	# D.4835, D.4836
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.51
	testl	%eax, %eax	# white_to_move.51
	je	.L151	#,
	.loc 1 628 0 is_stmt 0 discriminator 1
	movl	$11, %eax	#, iftmp.50
	jmp	.L152	#
.L151:
	.loc 1 628 0 discriminator 2
	movl	$12, %eax	#, iftmp.50
.L152:
	.loc 1 628 0 discriminator 3
	movl	%edx, %esi	# D.4836,
	movl	%eax, %edi	# iftmp.50,
	call	DropremoveHolding	#
.L141:
	.loc 1 631 0 is_stmt 1
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.52
	testl	%eax, %eax	# white_to_move.52
	sete	%al	#, D.4835
	movzbl	%al, %edx	# D.4835, D.4836
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.54
	testl	%eax, %eax	# white_to_move.54
	je	.L153	#,
	.loc 1 631 0 is_stmt 0 discriminator 1
	movl	$7, %eax	#, iftmp.53
	jmp	.L154	#
.L153:
	.loc 1 631 0 discriminator 2
	movl	$8, %eax	#, iftmp.53
.L154:
	.loc 1 631 0 discriminator 3
	cltq
	movslq	%edx, %rdx	# D.4836, tmp264
	salq	$4, %rdx	#, tmp265
	addq	%rdx, %rax	# tmp265, tmp266
	movl	holding(,%rax,4), %eax	# holding, D.4836
	testl	%eax, %eax	# D.4836
	jne	.L155	#,
	.loc 1 634 0 is_stmt 1
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.55
	testl	%eax, %eax	# white_to_move.55
	sete	%al	#, D.4835
	movzbl	%al, %edx	# D.4835, D.4836
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.57
	testl	%eax, %eax	# white_to_move.57
	je	.L156	#,
	.loc 1 634 0 is_stmt 0 discriminator 1
	movl	$7, %eax	#, iftmp.56
	jmp	.L157	#
.L156:
	.loc 1 634 0 discriminator 2
	movl	$8, %eax	#, iftmp.56
.L157:
	.loc 1 634 0 discriminator 3
	movl	%edx, %esi	# D.4836,
	movl	%eax, %edi	# iftmp.56,
	call	DropaddHolding	#
	.loc 1 636 0 is_stmt 1 discriminator 3
	leaq	-24576(%rbp), %rax	#, tmp267
	movq	%rax, %rdi	# tmp267,
	call	gen	#
	.loc 1 637 0 discriminator 3
	movl	numb_moves(%rip), %eax	# numb_moves, tmp268
	movl	%eax, -24588(%rbp)	# tmp268, his_num_moves
	.loc 1 639 0 discriminator 3
	movl	$0, -24640(%rbp)	#, i
	jmp	.L158	#
.L164:
	.loc 1 641 0
	movl	-24640(%rbp), %edx	# i, tmp269
	leaq	-24576(%rbp), %rax	#, tmp270
	movl	%edx, %esi	# tmp269,
	movq	%rax, %rdi	# tmp270,
	call	make	#
	.loc 1 643 0
	movl	-24592(%rbp), %edx	# ic, tmp271
	movl	-24640(%rbp), %ecx	# i, tmp272
	leaq	-24576(%rbp), %rax	#, tmp273
	movl	%ecx, %esi	# tmp272,
	movq	%rax, %rdi	# tmp273,
	call	check_legal	#
	testl	%eax, %eax	# D.4834
	je	.L159	#,
	.loc 1 645 0
	movl	$3, -24620(%rbp)	#, rookmates
	.loc 1 647 0
	call	in_check	#
	movl	%eax, -24584(%rbp)	# D.4834, icc
	.loc 1 649 0
	leaq	-12288(%rbp), %rax	#, tmp274
	movq	%rax, %rdi	# tmp274,
	call	gen	#
	.loc 1 650 0
	movl	numb_moves(%rip), %eax	# numb_moves, tmp275
	movl	%eax, -24580(%rbp)	# tmp275, our_num_moves
	.loc 1 652 0
	movl	$0, -24644(%rbp)	#, j
	jmp	.L160	#
.L162:
	.loc 1 654 0
	movl	-24644(%rbp), %edx	# j, tmp276
	leaq	-12288(%rbp), %rax	#, tmp277
	movl	%edx, %esi	# tmp276,
	movq	%rax, %rdi	# tmp277,
	call	make	#
	.loc 1 656 0
	movl	-24584(%rbp), %edx	# icc, tmp278
	movl	-24644(%rbp), %ecx	# j, tmp279
	leaq	-12288(%rbp), %rax	#, tmp280
	movl	%ecx, %esi	# tmp279,
	movq	%rax, %rdi	# tmp280,
	call	check_legal	#
	testl	%eax, %eax	# D.4834
	je	.L161	#,
	.loc 1 657 0
	movl	$0, -24620(%rbp)	#, rookmates
.L161:
	.loc 1 659 0
	movl	-24644(%rbp), %edx	# j, tmp281
	leaq	-12288(%rbp), %rax	#, tmp282
	movl	%edx, %esi	# tmp281,
	movq	%rax, %rdi	# tmp282,
	call	unmake	#
	.loc 1 652 0
	addl	$1, -24644(%rbp)	#, j
.L160:
	.loc 1 652 0 is_stmt 0 discriminator 1
	movl	-24644(%rbp), %eax	# j, tmp283
	cmpl	-24580(%rbp), %eax	# our_num_moves, tmp283
	jge	.L159	#,
	.loc 1 652 0 discriminator 2
	cmpl	$0, -24620(%rbp)	#, rookmates
	jne	.L162	#,
.L159:
	.loc 1 662 0 is_stmt 1
	movl	-24640(%rbp), %edx	# i, tmp284
	leaq	-24576(%rbp), %rax	#, tmp285
	movl	%edx, %esi	# tmp284,
	movq	%rax, %rdi	# tmp285,
	call	unmake	#
	.loc 1 639 0
	addl	$1, -24640(%rbp)	#, i
.L158:
	.loc 1 639 0 is_stmt 0 discriminator 1
	movl	-24640(%rbp), %eax	# i, tmp286
	cmpl	-24588(%rbp), %eax	# his_num_moves, tmp286
	jge	.L163	#,
	.loc 1 639 0 discriminator 2
	cmpl	$0, -24620(%rbp)	#, rookmates
	je	.L164	#,
.L163:
	.loc 1 664 0 is_stmt 1
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.58
	testl	%eax, %eax	# white_to_move.58
	sete	%al	#, D.4835
	movzbl	%al, %edx	# D.4835, D.4836
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.60
	testl	%eax, %eax	# white_to_move.60
	je	.L165	#,
	.loc 1 664 0 is_stmt 0 discriminator 1
	movl	$7, %eax	#, iftmp.59
	jmp	.L166	#
.L165:
	.loc 1 664 0 discriminator 2
	movl	$8, %eax	#, iftmp.59
.L166:
	.loc 1 664 0 discriminator 3
	movl	%edx, %esi	# D.4836,
	movl	%eax, %edi	# iftmp.59,
	call	DropremoveHolding	#
.L155:
	.loc 1 667 0 is_stmt 1
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.61
	testl	%eax, %eax	# white_to_move.61
	sete	%al	#, D.4835
	movzbl	%al, %edx	# D.4835, D.4836
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.63
	testl	%eax, %eax	# white_to_move.63
	je	.L167	#,
	.loc 1 667 0 is_stmt 0 discriminator 1
	movl	$9, %eax	#, iftmp.62
	jmp	.L168	#
.L167:
	.loc 1 667 0 discriminator 2
	movl	$10, %eax	#, iftmp.62
.L168:
	.loc 1 667 0 discriminator 3
	cltq
	movslq	%edx, %rdx	# D.4836, tmp288
	salq	$4, %rdx	#, tmp289
	addq	%rdx, %rax	# tmp289, tmp290
	movl	holding(,%rax,4), %eax	# holding, D.4836
	testl	%eax, %eax	# D.4836
	jne	.L169	#,
	.loc 1 670 0 is_stmt 1
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.64
	testl	%eax, %eax	# white_to_move.64
	sete	%al	#, D.4835
	movzbl	%al, %edx	# D.4835, D.4836
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.66
	testl	%eax, %eax	# white_to_move.66
	je	.L170	#,
	.loc 1 670 0 is_stmt 0 discriminator 1
	movl	$9, %eax	#, iftmp.65
	jmp	.L171	#
.L170:
	.loc 1 670 0 discriminator 2
	movl	$10, %eax	#, iftmp.65
.L171:
	.loc 1 670 0 discriminator 3
	movl	%edx, %esi	# D.4836,
	movl	%eax, %edi	# iftmp.65,
	call	DropaddHolding	#
	.loc 1 672 0 is_stmt 1 discriminator 3
	leaq	-24576(%rbp), %rax	#, tmp291
	movq	%rax, %rdi	# tmp291,
	call	gen	#
	.loc 1 673 0 discriminator 3
	movl	numb_moves(%rip), %eax	# numb_moves, tmp292
	movl	%eax, -24588(%rbp)	# tmp292, his_num_moves
	.loc 1 675 0 discriminator 3
	movl	$0, -24640(%rbp)	#, i
	jmp	.L172	#
.L178:
	.loc 1 677 0
	movl	-24640(%rbp), %edx	# i, tmp293
	leaq	-24576(%rbp), %rax	#, tmp294
	movl	%edx, %esi	# tmp293,
	movq	%rax, %rdi	# tmp294,
	call	make	#
	.loc 1 679 0
	movl	-24592(%rbp), %edx	# ic, tmp295
	movl	-24640(%rbp), %ecx	# i, tmp296
	leaq	-24576(%rbp), %rax	#, tmp297
	movl	%ecx, %esi	# tmp296,
	movq	%rax, %rdi	# tmp297,
	call	check_legal	#
	testl	%eax, %eax	# D.4834
	je	.L173	#,
	.loc 1 681 0
	movl	$3, -24616(%rbp)	#, queenmates
	.loc 1 683 0
	call	in_check	#
	movl	%eax, -24584(%rbp)	# D.4834, icc
	.loc 1 685 0
	leaq	-12288(%rbp), %rax	#, tmp298
	movq	%rax, %rdi	# tmp298,
	call	gen	#
	.loc 1 686 0
	movl	numb_moves(%rip), %eax	# numb_moves, tmp299
	movl	%eax, -24580(%rbp)	# tmp299, our_num_moves
	.loc 1 688 0
	movl	$0, -24644(%rbp)	#, j
	jmp	.L174	#
.L176:
	.loc 1 690 0
	movl	-24644(%rbp), %edx	# j, tmp300
	leaq	-12288(%rbp), %rax	#, tmp301
	movl	%edx, %esi	# tmp300,
	movq	%rax, %rdi	# tmp301,
	call	make	#
	.loc 1 692 0
	movl	-24584(%rbp), %edx	# icc, tmp302
	movl	-24644(%rbp), %ecx	# j, tmp303
	leaq	-12288(%rbp), %rax	#, tmp304
	movl	%ecx, %esi	# tmp303,
	movq	%rax, %rdi	# tmp304,
	call	check_legal	#
	testl	%eax, %eax	# D.4834
	je	.L175	#,
	.loc 1 693 0
	movl	$0, -24616(%rbp)	#, queenmates
.L175:
	.loc 1 695 0
	movl	-24644(%rbp), %edx	# j, tmp305
	leaq	-12288(%rbp), %rax	#, tmp306
	movl	%edx, %esi	# tmp305,
	movq	%rax, %rdi	# tmp306,
	call	unmake	#
	.loc 1 688 0
	addl	$1, -24644(%rbp)	#, j
.L174:
	.loc 1 688 0 is_stmt 0 discriminator 1
	movl	-24644(%rbp), %eax	# j, tmp307
	cmpl	-24580(%rbp), %eax	# our_num_moves, tmp307
	jge	.L173	#,
	.loc 1 688 0 discriminator 2
	cmpl	$0, -24616(%rbp)	#, queenmates
	jne	.L176	#,
.L173:
	.loc 1 698 0 is_stmt 1
	movl	-24640(%rbp), %edx	# i, tmp308
	leaq	-24576(%rbp), %rax	#, tmp309
	movl	%edx, %esi	# tmp308,
	movq	%rax, %rdi	# tmp309,
	call	unmake	#
	.loc 1 675 0
	addl	$1, -24640(%rbp)	#, i
.L172:
	.loc 1 675 0 is_stmt 0 discriminator 1
	movl	-24640(%rbp), %eax	# i, tmp310
	cmpl	-24588(%rbp), %eax	# his_num_moves, tmp310
	jge	.L177	#,
	.loc 1 675 0 discriminator 2
	cmpl	$0, -24616(%rbp)	#, queenmates
	je	.L178	#,
.L177:
	.loc 1 700 0 is_stmt 1
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.67
	testl	%eax, %eax	# white_to_move.67
	sete	%al	#, D.4835
	movzbl	%al, %edx	# D.4835, D.4836
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.69
	testl	%eax, %eax	# white_to_move.69
	je	.L179	#,
	.loc 1 700 0 is_stmt 0 discriminator 1
	movl	$9, %eax	#, iftmp.68
	jmp	.L180	#
.L179:
	.loc 1 700 0 discriminator 2
	movl	$10, %eax	#, iftmp.68
.L180:
	.loc 1 700 0 discriminator 3
	movl	%edx, %esi	# D.4836,
	movl	%eax, %edi	# iftmp.68,
	call	DropremoveHolding	#
.L169:
	.loc 1 706 0 is_stmt 1
	movl	pawnmated.3912(%rip), %eax	# pawnmated, pawnmated.70
	cmpl	%eax, -24632(%rbp)	# pawnmated.70, pawnmates
	je	.L181	#,
	.loc 1 708 0
	cmpl	$3, -24632(%rbp)	#, pawnmates
	jne	.L182	#,
	.loc 1 709 0
	movl	$1, -24612(%rbp)	#, pawnwarn
	jmp	.L181	#
.L182:
	.loc 1 710 0
	cmpl	$0, -24632(%rbp)	#, pawnmates
	jne	.L181	#,
	.loc 1 710 0 is_stmt 0 discriminator 1
	movl	pawnmated.3912(%rip), %eax	# pawnmated, pawnmated.71
	testl	%eax, %eax	# pawnmated.71
	jne	.L181	#,
	.loc 1 712 0 is_stmt 1
	movl	$.LC59, %edi	#,
	call	puts	#
	.loc 1 713 0
	movl	$1, -24636(%rbp)	#, othermove
.L181:
	.loc 1 717 0
	movl	knightmated.3913(%rip), %eax	# knightmated, knightmated.72
	cmpl	%eax, -24628(%rbp)	# knightmated.72, knightmates
	je	.L183	#,
	.loc 1 719 0
	cmpl	$3, -24628(%rbp)	#, knightmates
	jne	.L184	#,
	.loc 1 720 0
	movl	$1, -24608(%rbp)	#, knightwarn
	jmp	.L183	#
.L184:
	.loc 1 721 0
	cmpl	$0, -24628(%rbp)	#, knightmates
	jne	.L183	#,
	.loc 1 721 0 is_stmt 0 discriminator 1
	movl	knightmated.3913(%rip), %eax	# knightmated, knightmated.73
	testl	%eax, %eax	# knightmated.73
	jne	.L183	#,
	.loc 1 723 0 is_stmt 1
	movl	$.LC60, %edi	#,
	call	puts	#
	.loc 1 724 0
	movl	$1, -24636(%rbp)	#, othermove
.L183:
	.loc 1 728 0
	movl	bishopmated.3914(%rip), %eax	# bishopmated, bishopmated.74
	cmpl	%eax, -24624(%rbp)	# bishopmated.74, bishopmates
	je	.L185	#,
	.loc 1 730 0
	cmpl	$3, -24624(%rbp)	#, bishopmates
	jne	.L186	#,
	.loc 1 731 0
	movl	$1, -24604(%rbp)	#, bishopwarn
	jmp	.L185	#
.L186:
	.loc 1 732 0
	cmpl	$0, -24624(%rbp)	#, bishopmates
	jne	.L185	#,
	.loc 1 732 0 is_stmt 0 discriminator 1
	movl	bishopmated.3914(%rip), %eax	# bishopmated, bishopmated.75
	testl	%eax, %eax	# bishopmated.75
	jne	.L185	#,
	.loc 1 734 0 is_stmt 1
	movl	$.LC61, %edi	#,
	call	puts	#
	.loc 1 735 0
	movl	$1, -24636(%rbp)	#, othermove
.L185:
	.loc 1 738 0
	movl	rookmated.3915(%rip), %eax	# rookmated, rookmated.76
	cmpl	%eax, -24620(%rbp)	# rookmated.76, rookmates
	je	.L187	#,
	.loc 1 740 0
	cmpl	$3, -24620(%rbp)	#, rookmates
	jne	.L188	#,
	.loc 1 741 0
	movl	$1, -24600(%rbp)	#, rookwarn
	jmp	.L187	#
.L188:
	.loc 1 742 0
	cmpl	$0, -24620(%rbp)	#, rookmates
	jne	.L187	#,
	.loc 1 742 0 is_stmt 0 discriminator 1
	movl	rookmated.3915(%rip), %eax	# rookmated, rookmated.77
	testl	%eax, %eax	# rookmated.77
	jne	.L187	#,
	.loc 1 744 0 is_stmt 1
	movl	$.LC62, %edi	#,
	call	puts	#
	.loc 1 745 0
	movl	$1, -24636(%rbp)	#, othermove
.L187:
	.loc 1 748 0
	movl	queenmated.3916(%rip), %eax	# queenmated, queenmated.78
	cmpl	%eax, -24616(%rbp)	# queenmated.78, queenmates
	je	.L189	#,
	.loc 1 750 0
	cmpl	$3, -24616(%rbp)	#, queenmates
	jne	.L190	#,
	.loc 1 751 0
	movl	$1, -24596(%rbp)	#, queenwarn
	jmp	.L189	#
.L190:
	.loc 1 752 0
	cmpl	$0, -24616(%rbp)	#, queenmates
	jne	.L189	#,
	.loc 1 752 0 is_stmt 0 discriminator 1
	movl	queenmated.3916(%rip), %eax	# queenmated, queenmated.79
	testl	%eax, %eax	# queenmated.79
	jne	.L189	#,
	.loc 1 754 0 is_stmt 1
	movl	$.LC63, %edi	#,
	call	puts	#
	.loc 1 755 0
	movl	$1, -24636(%rbp)	#, othermove
.L189:
	.loc 1 759 0
	cmpl	$0, -24612(%rbp)	#, pawnwarn
	je	.L191	#,
	.loc 1 760 0
	movl	$.LC64, %edi	#,
	call	puts	#
.L191:
	.loc 1 761 0
	cmpl	$0, -24608(%rbp)	#, knightwarn
	je	.L192	#,
	.loc 1 762 0
	movl	$.LC65, %edi	#,
	call	puts	#
.L192:
	.loc 1 763 0
	cmpl	$0, -24604(%rbp)	#, bishopwarn
	je	.L193	#,
	.loc 1 764 0
	movl	$.LC66, %edi	#,
	call	puts	#
.L193:
	.loc 1 765 0
	cmpl	$0, -24600(%rbp)	#, rookwarn
	je	.L194	#,
	.loc 1 766 0
	movl	$.LC67, %edi	#,
	call	puts	#
.L194:
	.loc 1 767 0
	cmpl	$0, -24596(%rbp)	#, queenwarn
	je	.L195	#,
	.loc 1 768 0
	movl	$.LC68, %edi	#,
	call	puts	#
.L195:
	.loc 1 773 0
	movl	piecedead(%rip), %eax	# piecedead, piecedead.80
	testl	%eax, %eax	# piecedead.80
	je	.L196	#,
	.loc 1 773 0 is_stmt 0 discriminator 1
	cmpl	$0, -24636(%rbp)	#, othermove
	je	.L196	#,
	.loc 1 775 0 is_stmt 1
	movl	$0, piecedead(%rip)	#, piecedead
	.loc 1 776 0
	movl	$.LC69, %edi	#,
	call	puts	#
	.loc 1 777 0
	movl	$.LC70, %edi	#,
	call	puts	#
	.loc 1 778 0
	movl	$0, go_fast(%rip)	#, go_fast
.L196:
	.loc 1 781 0
	cmpl	$0, -24632(%rbp)	#, pawnmates
	je	.L197	#,
	.loc 1 781 0 is_stmt 0 discriminator 1
	movl	-24632(%rbp), %eax	# pawnmates, tmp311
	movl	%eax, pawnmated.3912(%rip)	# tmp311, pawnmated
	jmp	.L198	#
.L197:
	.loc 1 781 0 discriminator 2
	movl	pawnmated.3912(%rip), %eax	# pawnmated, pawnmated.82
	subl	$1, %eax	#, pawnmated.84
	movl	%eax, pawnmated.3912(%rip)	# pawnmated.84, pawnmated
.L198:
	.loc 1 782 0 is_stmt 1
	cmpl	$0, -24624(%rbp)	#, bishopmates
	je	.L199	#,
	.loc 1 782 0 is_stmt 0 discriminator 1
	movl	-24624(%rbp), %eax	# bishopmates, tmp312
	movl	%eax, bishopmated.3914(%rip)	# tmp312, bishopmated
	jmp	.L200	#
.L199:
	.loc 1 782 0 discriminator 2
	movl	bishopmated.3914(%rip), %eax	# bishopmated, bishopmated.86
	subl	$1, %eax	#, bishopmated.88
	movl	%eax, bishopmated.3914(%rip)	# bishopmated.88, bishopmated
.L200:
	.loc 1 783 0 is_stmt 1
	cmpl	$0, -24620(%rbp)	#, rookmates
	je	.L201	#,
	.loc 1 783 0 is_stmt 0 discriminator 1
	movl	-24620(%rbp), %eax	# rookmates, tmp313
	movl	%eax, rookmated.3915(%rip)	# tmp313, rookmated
	jmp	.L202	#
.L201:
	.loc 1 783 0 discriminator 2
	movl	rookmated.3915(%rip), %eax	# rookmated, rookmated.90
	subl	$1, %eax	#, rookmated.92
	movl	%eax, rookmated.3915(%rip)	# rookmated.92, rookmated
.L202:
	.loc 1 784 0 is_stmt 1
	cmpl	$0, -24616(%rbp)	#, queenmates
	je	.L203	#,
	.loc 1 784 0 is_stmt 0 discriminator 1
	movl	-24616(%rbp), %eax	# queenmates, tmp314
	movl	%eax, queenmated.3916(%rip)	# tmp314, queenmated
	jmp	.L204	#
.L203:
	.loc 1 784 0 discriminator 2
	movl	queenmated.3916(%rip), %eax	# queenmated, queenmated.94
	subl	$1, %eax	#, queenmated.96
	movl	%eax, queenmated.3916(%rip)	# queenmated.96, queenmated
.L204:
	.loc 1 785 0 is_stmt 1
	cmpl	$0, -24628(%rbp)	#, knightmates
	je	.L205	#,
	.loc 1 785 0 is_stmt 0 discriminator 1
	movl	-24628(%rbp), %eax	# knightmates, tmp315
	movl	%eax, knightmated.3913(%rip)	# tmp315, knightmated
	jmp	.L206	#
.L205:
	.loc 1 785 0 discriminator 2
	movl	knightmated.3913(%rip), %eax	# knightmated, knightmated.98
	subl	$1, %eax	#, knightmated.100
	movl	%eax, knightmated.3913(%rip)	# knightmated.100, knightmated
.L206:
	.loc 1 787 0 is_stmt 1
	nop
.L108:
	.loc 1 788 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	CheckBadFlow, .-CheckBadFlow
	.local	pawnmated.3912
	.comm	pawnmated.3912,4,4
	.local	knightmated.3913
	.comm	knightmated.3913,4,4
	.local	bishopmated.3914
	.comm	bishopmated.3914,4,4
	.local	rookmated.3915
	.comm	rookmated.3915,4,4
	.local	queenmated.3916
	.comm	queenmated.3916,4,4
.Letext0:
	.file 2 "sjeng.h"
	.file 3 "extvars.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x4cb
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF64
	.byte	0x1
	.long	.LASF65
	.long	.LASF66
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
	.long	.LASF18
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
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x7
	.byte	0x8
	.long	0x92
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF11
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x8
	.byte	0x18
	.byte	0x2
	.byte	0x5f
	.long	0xf7
	.uleb128 0x9
	.long	.LASF13
	.byte	0x2
	.byte	0x60
	.long	0x77
	.byte	0
	.uleb128 0x9
	.long	.LASF14
	.byte	0x2
	.byte	0x61
	.long	0x77
	.byte	0x4
	.uleb128 0x9
	.long	.LASF15
	.byte	0x2
	.byte	0x62
	.long	0x77
	.byte	0x8
	.uleb128 0x9
	.long	.LASF16
	.byte	0x2
	.byte	0x63
	.long	0x77
	.byte	0xc
	.uleb128 0x9
	.long	.LASF17
	.byte	0x2
	.byte	0x64
	.long	0x77
	.byte	0x10
	.uleb128 0xa
	.string	"ep"
	.byte	0x2
	.byte	0x65
	.long	0x77
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.long	.LASF19
	.byte	0x2
	.byte	0x66
	.long	0xa7
	.uleb128 0xb
	.long	.LASF20
	.byte	0x1
	.byte	0x16
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.long	.LASF21
	.byte	0x1
	.byte	0x1b
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.long	.LASF67
	.byte	0x1
	.byte	0x24
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xd
	.long	.LASF22
	.byte	0x1
	.byte	0x2c
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x179
	.uleb128 0xe
	.long	.LASF24
	.byte	0x1
	.byte	0x2c
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.long	.LASF23
	.byte	0x1
	.byte	0x43
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c4
	.uleb128 0xe
	.long	.LASF24
	.byte	0x1
	.byte	0x43
	.long	0x8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0xf
	.long	.LASF25
	.byte	0x1
	.byte	0x45
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0xf
	.long	.LASF26
	.byte	0x1
	.byte	0x46
	.long	0x1c4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0x10
	.long	0x92
	.long	0x1d4
	.uleb128 0x11
	.long	0x85
	.byte	0x4f
	.byte	0
	.uleb128 0x12
	.long	.LASF27
	.byte	0x1
	.value	0x1df
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b0
	.uleb128 0x13
	.long	.LASF28
	.byte	0x1
	.value	0x1df
	.long	0x42
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24676
	.uleb128 0x14
	.long	.LASF29
	.byte	0x1
	.value	0x1e1
	.long	0x3b0
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24592
	.uleb128 0x14
	.long	.LASF30
	.byte	0x1
	.value	0x1e2
	.long	0x3b0
	.uleb128 0x4
	.byte	0x91
	.sleb128 -12304
	.uleb128 0x14
	.long	.LASF31
	.byte	0x1
	.value	0x1e3
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24604
	.uleb128 0x14
	.long	.LASF32
	.byte	0x1
	.value	0x1e3
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24596
	.uleb128 0x15
	.string	"j"
	.byte	0x1
	.value	0x1e3
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24660
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.value	0x1e3
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24656
	.uleb128 0x15
	.string	"ic"
	.byte	0x1
	.value	0x1e3
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24608
	.uleb128 0x15
	.string	"icc"
	.byte	0x1
	.value	0x1e3
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24600
	.uleb128 0x14
	.long	.LASF33
	.byte	0x1
	.value	0x1e5
	.long	0x42
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24652
	.uleb128 0x14
	.long	.LASF34
	.byte	0x1
	.value	0x1e8
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24648
	.uleb128 0x14
	.long	.LASF35
	.byte	0x1
	.value	0x1e9
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24644
	.uleb128 0x14
	.long	.LASF36
	.byte	0x1
	.value	0x1ea
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24640
	.uleb128 0x14
	.long	.LASF37
	.byte	0x1
	.value	0x1eb
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24636
	.uleb128 0x14
	.long	.LASF38
	.byte	0x1
	.value	0x1ec
	.long	0x77
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24632
	.uleb128 0x14
	.long	.LASF39
	.byte	0x1
	.value	0x1ef
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	pawnmated.3912
	.uleb128 0x14
	.long	.LASF40
	.byte	0x1
	.value	0x1f0
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	knightmated.3913
	.uleb128 0x14
	.long	.LASF41
	.byte	0x1
	.value	0x1f1
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	bishopmated.3914
	.uleb128 0x14
	.long	.LASF42
	.byte	0x1
	.value	0x1f2
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	rookmated.3915
	.uleb128 0x14
	.long	.LASF43
	.byte	0x1
	.value	0x1f3
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	queenmated.3916
	.uleb128 0x14
	.long	.LASF44
	.byte	0x1
	.value	0x1f6
	.long	0x42
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24628
	.uleb128 0x14
	.long	.LASF45
	.byte	0x1
	.value	0x1f7
	.long	0x42
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24624
	.uleb128 0x14
	.long	.LASF46
	.byte	0x1
	.value	0x1f8
	.long	0x42
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24620
	.uleb128 0x14
	.long	.LASF47
	.byte	0x1
	.value	0x1f9
	.long	0x42
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24616
	.uleb128 0x14
	.long	.LASF48
	.byte	0x1
	.value	0x1fa
	.long	0x42
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24612
	.byte	0
	.uleb128 0x10
	.long	0xf7
	.long	0x3c1
	.uleb128 0x16
	.long	0x85
	.value	0x1ff
	.byte	0
	.uleb128 0x17
	.long	.LASF49
	.byte	0x3
	.byte	0xc
	.long	0x77
	.uleb128 0x17
	.long	.LASF50
	.byte	0x3
	.byte	0xe
	.long	0x77
	.uleb128 0x17
	.long	.LASF51
	.byte	0x3
	.byte	0x17
	.long	0x77
	.uleb128 0x10
	.long	0x77
	.long	0x3f8
	.uleb128 0x11
	.long	0x85
	.byte	0x1
	.uleb128 0x11
	.long	0x85
	.byte	0xf
	.byte	0
	.uleb128 0x17
	.long	.LASF52
	.byte	0x3
	.byte	0x22
	.long	0x3e2
	.uleb128 0x10
	.long	0x77
	.long	0x413
	.uleb128 0x11
	.long	0x85
	.byte	0xc
	.byte	0
	.uleb128 0x18
	.long	.LASF53
	.byte	0x1
	.byte	0xe
	.long	0x403
	.uleb128 0x9
	.byte	0x3
	.quad	hand_value
	.uleb128 0x17
	.long	.LASF54
	.byte	0x3
	.byte	0x63
	.long	0x77
	.uleb128 0x10
	.long	0x92
	.long	0x443
	.uleb128 0x11
	.long	0x85
	.byte	0xff
	.byte	0
	.uleb128 0x17
	.long	.LASF55
	.byte	0x3
	.byte	0x69
	.long	0x433
	.uleb128 0x17
	.long	.LASF56
	.byte	0x3
	.byte	0x6a
	.long	0x42
	.uleb128 0x17
	.long	.LASF57
	.byte	0x3
	.byte	0x6b
	.long	0x42
	.uleb128 0x18
	.long	.LASF58
	.byte	0x1
	.byte	0x14
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	must_go
	.uleb128 0x17
	.long	.LASF59
	.byte	0x3
	.byte	0x6d
	.long	0x42
	.uleb128 0x18
	.long	.LASF60
	.byte	0x1
	.byte	0x11
	.long	0x42
	.uleb128 0x9
	.byte	0x3
	.quad	piecedead
	.uleb128 0x18
	.long	.LASF61
	.byte	0x1
	.byte	0x12
	.long	0x42
	.uleb128 0x9
	.byte	0x3
	.quad	partnerdead
	.uleb128 0x17
	.long	.LASF62
	.byte	0x3
	.byte	0x76
	.long	0x77
	.uleb128 0x18
	.long	.LASF63
	.byte	0x1
	.byte	0xf
	.long	0x403
	.uleb128 0x9
	.byte	0x3
	.quad	std_hand_value
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x17
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
.LASF53:
	.string	"hand_value"
.LASF21:
	.string	"BegForPartner"
.LASF29:
	.string	"hismoves"
.LASF48:
	.string	"queenwarn"
.LASF0:
	.string	"FALSE"
.LASF14:
	.string	"target"
.LASF52:
	.string	"holding"
.LASF7:
	.string	"short int"
.LASF24:
	.string	"input"
.LASF9:
	.string	"sizetype"
.LASF50:
	.string	"comp_color"
.LASF58:
	.string	"must_go"
.LASF16:
	.string	"promoted"
.LASF19:
	.string	"move_s"
.LASF20:
	.string	"ResetHandValue"
.LASF15:
	.string	"captured"
.LASF67:
	.string	"GreetPartner"
.LASF51:
	.string	"xb_mode"
.LASF30:
	.string	"ourmoves"
.LASF49:
	.string	"white_to_move"
.LASF17:
	.string	"castled"
.LASF47:
	.string	"rookwarn"
.LASF11:
	.string	"long long int"
.LASF62:
	.string	"numb_moves"
.LASF63:
	.string	"std_hand_value"
.LASF8:
	.string	"long int"
.LASF66:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/458.sjeng/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF41:
	.string	"bishopmated"
.LASF2:
	.string	"unsigned char"
.LASF64:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF6:
	.string	"signed char"
.LASF12:
	.string	"long long unsigned int"
.LASF44:
	.string	"pawnwarn"
.LASF36:
	.string	"bishopmates"
.LASF4:
	.string	"unsigned int"
.LASF23:
	.string	"HandlePtell"
.LASF45:
	.string	"knightwarn"
.LASF39:
	.string	"pawnmated"
.LASF40:
	.string	"knightmated"
.LASF3:
	.string	"short unsigned int"
.LASF10:
	.string	"char"
.LASF34:
	.string	"pawnmates"
.LASF42:
	.string	"rookmated"
.LASF35:
	.string	"knightmates"
.LASF37:
	.string	"rookmates"
.LASF61:
	.string	"partnerdead"
.LASF5:
	.string	"long unsigned int"
.LASF18:
	.string	"xbool"
.LASF65:
	.string	"partner.c"
.LASF22:
	.string	"HandlePartner"
.LASF60:
	.string	"piecedead"
.LASF32:
	.string	"our_num_moves"
.LASF46:
	.string	"bishopwarn"
.LASF59:
	.string	"go_fast"
.LASF28:
	.string	"reset"
.LASF57:
	.string	"must_sit"
.LASF55:
	.string	"my_partner"
.LASF54:
	.string	"Variant"
.LASF43:
	.string	"queenmated"
.LASF27:
	.string	"CheckBadFlow"
.LASF1:
	.string	"TRUE"
.LASF25:
	.string	"change"
.LASF38:
	.string	"queenmates"
.LASF31:
	.string	"his_num_moves"
.LASF26:
	.string	"howmuch"
.LASF56:
	.string	"have_partner"
.LASF13:
	.string	"from"
.LASF33:
	.string	"othermove"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
