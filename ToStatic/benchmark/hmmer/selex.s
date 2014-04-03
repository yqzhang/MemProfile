	.file	"selex.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 selex.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.data
	.type	commentsyms, @object
	.size	commentsyms, 3
commentsyms:
	.string	"%#"
	.section	.rodata
	.align 8
.LC0:
	.string	"Can't read a SELEX format alignment from a pipe, stdin, or gzip'ed file"
.LC1:
	.string	"#=CS"
.LC2:
	.string	"#=RF"
.LC3:
	.string	" \t\n"
.LC4:
	.string	"selex.c"
.LC5:
	.string	"#=SS"
.LC6:
	.string	"#=SA"
.LC7:
	.string	"Parse error in ReadSELEX()"
.LC9:
	.string	"#=AU"
.LC10:
	.string	"\n"
.LC11:
	.string	"#=ID"
.LC12:
	.string	"#=AC"
.LC13:
	.string	"#=DE"
.LC14:
	.string	"#=GA"
	.align 8
.LC15:
	.string	"Parse error in #=GA line in ReadSELEX()"
.LC16:
	.string	"#=TC"
	.align 8
.LC17:
	.string	"Parse error in #=TC line in ReadSELEX()"
.LC18:
	.string	"#=NC"
	.align 8
.LC19:
	.string	"Parse error in #=NC line in ReadSELEX()"
.LC20:
	.string	"#=SQ"
	.align 8
.LC21:
	.string	"Parse error in #=SQ line in ReadSELEX()"
	.align 8
.LC22:
	.string	"Parse error in #=SQ line in ReadSELEX(): weight is not a number"
	.align 8
.LC23:
	.string	"Parse error in #=SQ line in ReadSELEX(): incomplete line"
.LC24:
	.string	".:"
.LC25:
	.string	":\t "
	.align 8
.LC26:
	.string	"Parse error in #=CS line in ReadSELEX()"
	.align 8
.LC27:
	.string	"Parse error in #=RF line in ReadSELEX()"
	.align 8
.LC28:
	.string	"Parse error in #=SS line in ReadSELEX()"
	.align 8
.LC29:
	.string	"Parse error in #=SA line in ReadSELEX()"
.LC30:
	.string	"#="
	.align 8
.LC31:
	.string	"Parse error in alignment line in ReadSELEX()"
	.align 8
.LC32:
	.string	"sequences may be in different orders in blocks of %s?"
	.text
	.globl	ReadSELEX
	.type	ReadSELEX, @function
ReadSELEX:
.LFB2:
	.file 1 "selex.c"
	.loc 1 84 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$8464, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -8472(%rbp)	# afp, afp
	.loc 1 84 0
	movq	%fs:40, %rax	#, tmp932
	movq	%rax, -24(%rbp)	# tmp932, D.6966
	xorl	%eax, %eax	# tmp932
	.loc 1 88 0
	movl	$0, -8452(%rbp)	#, num
	.loc 1 94 0
	movq	$0, -8392(%rbp)	#, blocks
	.loc 1 107 0
	movl	$0, -8408(%rbp)	#, have_cs
	.loc 1 108 0
	movl	$0, -8404(%rbp)	#, have_rf
	.loc 1 116 0
	movq	-8472(%rbp), %rax	# afp, tmp572
	movq	(%rax), %rax	# afp_58(D)->f, D.6949
	movq	%rax, %rdi	# D.6949,
	call	feof	#
	testl	%eax, %eax	# D.6950
	je	.L2	#,
	.loc 1 116 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.6948
	jmp	.L117	#
.L2:
	.loc 1 117 0 is_stmt 1
	movq	-8472(%rbp), %rax	# afp, tmp573
	movl	48(%rax), %eax	# afp_58(D)->do_gzip, D.6950
	testl	%eax, %eax	# D.6950
	jne	.L4	#,
	.loc 1 117 0 is_stmt 0 discriminator 1
	movq	-8472(%rbp), %rax	# afp, tmp574
	movl	52(%rax), %eax	# afp_58(D)->do_stdin, D.6950
	testl	%eax, %eax	# D.6950
	je	.L5	#,
.L4:
	.loc 1 118 0 is_stmt 1
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L5:
	.loc 1 119 0
	movq	-8472(%rbp), %rax	# afp, tmp575
	movq	(%rax), %rax	# afp_58(D)->f, tmp576
	movq	%rax, -8368(%rbp)	# tmp576, fp
	.loc 1 120 0
	leaq	-8336(%rbp), %rax	#, tmp577
	movq	%rax, -8360(%rbp)	# tmp577, ainfo
	.loc 1 128 0
	movq	-8360(%rbp), %rax	# ainfo, tmp578
	movq	%rax, %rdi	# tmp578,
	call	InitAinfo	#
.L9:
	.loc 1 133 0
	movq	-8368(%rbp), %rdx	# fp, tmp579
	leaq	-8224(%rbp), %rax	#, tmp580
	movl	$4096, %esi	#,
	movq	%rax, %rdi	# tmp580,
	call	fgets	#
	testq	%rax, %rax	# D.6951
	jne	.L6	#,
	.loc 1 134 0
	movl	$2, squid_errno(%rip)	#, squid_errno
	movl	$0, %eax	#, D.6948
	jmp	.L117	#
.L6:
	.loc 1 135 0
	leaq	-8224(%rbp), %rdx	#, tmp581
	leaq	-4128(%rbp), %rax	#, tmp582
	movq	%rdx, %rsi	# tmp581,
	movq	%rax, %rdi	# tmp582,
	call	strcpy	#
	.loc 1 136 0
	movzbl	-8224(%rbp), %eax	# buffer, D.6952
	cmpb	$35, %al	#, D.6952
	jne	.L7	#,
	.loc 1 138 0
	leaq	-8224(%rbp), %rax	#, tmp583
	movl	$4, %edx	#,
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp583,
	call	strncmp	#
	testl	%eax, %eax	# D.6950
	jne	.L8	#,
	.loc 1 138 0 is_stmt 0 discriminator 1
	movl	$1, -8408(%rbp)	#, have_cs
	jmp	.L7	#
.L8:
	.loc 1 139 0 is_stmt 1
	leaq	-8224(%rbp), %rax	#, tmp584
	movl	$4, %edx	#,
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp584,
	call	strncmp	#
	testl	%eax, %eax	# D.6950
	jne	.L7	#,
	.loc 1 139 0 is_stmt 0 discriminator 1
	movl	$1, -8404(%rbp)	#, have_rf
.L7:
	.loc 1 143 0 is_stmt 1
	leaq	-4128(%rbp), %rax	#, tmp585
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp585,
	call	strtok	#
	movq	%rax, -8384(%rbp)	# tmp586, nptr
	cmpq	$0, -8384(%rbp)	#, nptr
	je	.L9	#,
	.loc 1 143 0 is_stmt 0 discriminator 1
	movq	-8384(%rbp), %rax	# nptr, tmp587
	movzbl	(%rax), %eax	# *nptr_73, D.6952
	movsbl	%al, %eax	# D.6952, D.6950
	movl	%eax, %esi	# D.6950,
	movl	$commentsyms, %edi	#,
	call	strchr	#
	.loc 1 142 0 is_stmt 1 discriminator 1
	testq	%rax, %rax	# D.6951
	jne	.L9	#,
	.loc 1 145 0
	movl	$0, -8448(%rbp)	#, blocknum
	.loc 1 146 0
	movl	$0, -8424(%rbp)	#, warn_names
	.loc 1 147 0
	jmp	.L10	#
.L33:
	.loc 1 150 0
	cmpl	$0, -8448(%rbp)	#, blocknum
	jne	.L11	#,
	.loc 1 151 0
	movl	$8, %edx	#,
	movl	$151, %esi	#,
	movl	$.LC4, %edi	#,
	call	sre_malloc	#
	movq	%rax, -8392(%rbp)	# tmp588, blocks
	jmp	.L12	#
.L11:
	.loc 1 153 0
	movl	-8448(%rbp), %eax	# blocknum, tmp589
	addl	$1, %eax	#, D.6950
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6953
	movq	-8392(%rbp), %rax	# blocks, tmp590
	movq	%rdx, %rcx	# D.6953,
	movq	%rax, %rdx	# tmp590,
	movl	$153, %esi	#,
	movl	$.LC4, %edi	#,
	call	sre_realloc	#
	movq	%rax, -8392(%rbp)	# tmp591, blocks
.L12:
	.loc 1 154 0
	movl	-8448(%rbp), %eax	# blocknum, tmp592
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6953
	movq	-8392(%rbp), %rax	# blocks, tmp593
	addq	%rdx, %rax	# D.6953, D.6954
	movl	$4097, (%rax)	#, _87->lcol
	.loc 1 155 0
	movl	-8448(%rbp), %eax	# blocknum, tmp594
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6953
	movq	-8392(%rbp), %rax	# blocks, tmp595
	addq	%rdx, %rax	# D.6953, D.6954
	movl	$-1, 4(%rax)	#, _90->rcol
	.loc 1 157 0
	movl	$0, -8444(%rbp)	#, currnum
	.loc 1 158 0
	jmp	.L13	#
.L28:
	.loc 1 161 0
	cmpl	$0, -8448(%rbp)	#, blocknum
	jne	.L14	#,
	.loc 1 163 0
	cmpl	$0, -8444(%rbp)	#, currnum
	jne	.L15	#,
	.loc 1 164 0
	movl	$360, %edx	#,
	movl	$164, %esi	#,
	movl	$.LC4, %edi	#,
	call	sre_malloc	#
	movq	-8360(%rbp), %rdx	# ainfo, tmp596
	movq	%rax, 40(%rdx)	# D.6955, ainfo_65->sqinfo
	jmp	.L16	#
.L15:
	.loc 1 166 0
	movl	-8444(%rbp), %eax	# currnum, tmp597
	addl	$1, %eax	#, D.6950
	cltq
	imulq	$360, %rax, %rdx	#, D.6953, D.6953
	movq	-8360(%rbp), %rax	# ainfo, tmp598
	movq	40(%rax), %rax	# ainfo_65->sqinfo, D.6956
	movq	%rdx, %rcx	# D.6953,
	movq	%rax, %rdx	# D.6956,
	movl	$166, %esi	#,
	movl	$.LC4, %edi	#,
	call	sre_realloc	#
	movq	-8360(%rbp), %rdx	# ainfo, tmp599
	movq	%rax, 40(%rdx)	# D.6955, ainfo_65->sqinfo
.L16:
	.loc 1 168 0 discriminator 1
	movq	-8360(%rbp), %rax	# ainfo, tmp600
	movq	40(%rax), %rdx	# ainfo_65->sqinfo, D.6956
	movl	-8444(%rbp), %eax	# currnum, tmp601
	cltq
	imulq	$360, %rax, %rax	#, D.6953, D.6953
	addq	%rdx, %rax	# D.6956, D.6956
	movl	$0, (%rax)	#, _101->flags
	.loc 1 169 0 discriminator 1
	movq	-8360(%rbp), %rax	# ainfo, tmp602
	movq	40(%rax), %rdx	# ainfo_65->sqinfo, D.6956
	movl	-8444(%rbp), %eax	# currnum, tmp603
	cltq
	imulq	$360, %rax, %rax	#, D.6953, D.6953
	leaq	(%rdx,%rax), %rcx	#, D.6957
	movq	-8384(%rbp), %rax	# nptr, tmp604
	movl	$1, %edx	#,
	movq	%rax, %rsi	# tmp604,
	movq	%rcx, %rdi	# D.6957,
	call	SetSeqinfoString	#
	jmp	.L17	#
.L14:
	.loc 1 173 0
	movq	-8360(%rbp), %rax	# ainfo, tmp605
	movq	40(%rax), %rdx	# ainfo_65->sqinfo, D.6956
	movl	-8444(%rbp), %eax	# currnum, tmp606
	cltq
	imulq	$360, %rax, %rax	#, D.6953, D.6953
	addq	%rdx, %rax	# D.6956, D.6956
	leaq	4(%rax), %rdx	#, D.6958
	movq	-8384(%rbp), %rax	# nptr, tmp607
	movq	%rax, %rsi	# tmp607,
	movq	%rdx, %rdi	# D.6958,
	call	strcmp	#
	testl	%eax, %eax	# D.6950
	je	.L17	#,
	.loc 1 174 0
	movl	$1, -8424(%rbp)	#, warn_names
.L17:
	.loc 1 176 0
	addl	$1, -8444(%rbp)	#, currnum
	.loc 1 179 0
	movl	$.LC3, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -8376(%rbp)	# tmp608, sptr
	cmpq	$0, -8376(%rbp)	#, sptr
	je	.L18	#,
	.loc 1 183 0
	movq	-8376(%rbp), %rdx	# sptr, sptr.0
	leaq	-4128(%rbp), %rax	#, bufcpy.1
	subq	%rax, %rdx	# bufcpy.1, D.6959
	movl	-8448(%rbp), %eax	# blocknum, tmp609
	cltq
	leaq	0(,%rax,8), %rcx	#, D.6953
	movq	-8392(%rbp), %rax	# blocks, tmp610
	addq	%rcx, %rax	# D.6953, D.6954
	movl	(%rax), %eax	# _120->lcol, D.6950
	cltq
	cmpq	%rax, %rdx	# D.6959, D.6959
	jge	.L19	#,
	.loc 1 184 0
	movl	-8448(%rbp), %eax	# blocknum, tmp611
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6953
	movq	-8392(%rbp), %rax	# blocks, tmp612
	addq	%rax, %rdx	# tmp612, D.6954
	movq	-8376(%rbp), %rcx	# sptr, sptr.2
	leaq	-4128(%rbp), %rax	#, bufcpy.3
	subq	%rax, %rcx	# bufcpy.3, D.6959
	movq	%rcx, %rax	# D.6959, D.6959
	movl	%eax, (%rdx)	# D.6950, _125->lcol
.L19:
	.loc 1 186 0
	leaq	-8224(%rbp), %rax	#, tmp613
	movq	%rax, %rdi	# tmp613,
	call	strlen	#
	leaq	-1(%rax), %rdx	#, D.6960
	leaq	-8224(%rbp), %rax	#, tmp614
	addq	%rdx, %rax	# D.6960, tmp615
	movq	%rax, -8376(%rbp)	# tmp615, sptr
	jmp	.L20	#
.L21:
	.loc 1 188 0
	subq	$1, -8376(%rbp)	#, sptr
.L20:
	.loc 1 187 0 discriminator 1
	movq	-8376(%rbp), %rax	# sptr, tmp616
	movzbl	(%rax), %eax	# *sptr_12, D.6952
	movsbl	%al, %eax	# D.6952, D.6950
	movl	%eax, %esi	# D.6950,
	movl	$.LC3, %edi	#,
	call	strchr	#
	.loc 1 186 0 discriminator 1
	testq	%rax, %rax	# D.6951
	jne	.L21	#,
	.loc 1 190 0
	movq	-8376(%rbp), %rdx	# sptr, sptr.4
	leaq	-8224(%rbp), %rax	#, buffer.5
	subq	%rax, %rdx	# buffer.5, D.6959
	movl	-8448(%rbp), %eax	# blocknum, tmp617
	cltq
	leaq	0(,%rax,8), %rcx	#, D.6953
	movq	-8392(%rbp), %rax	# blocks, tmp618
	addq	%rcx, %rax	# D.6953, D.6954
	movl	4(%rax), %eax	# _142->rcol, D.6950
	cltq
	cmpq	%rax, %rdx	# D.6959, D.6959
	jle	.L18	#,
	.loc 1 191 0
	movl	-8448(%rbp), %eax	# blocknum, tmp619
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6953
	movq	-8392(%rbp), %rax	# blocks, tmp620
	addq	%rax, %rdx	# tmp620, D.6954
	movq	-8376(%rbp), %rcx	# sptr, sptr.6
	leaq	-8224(%rbp), %rax	#, buffer.7
	subq	%rax, %rcx	# buffer.7, D.6959
	movq	%rcx, %rax	# D.6959, D.6959
	movl	%eax, 4(%rdx)	# D.6950, _147->rcol
.L18:
	.loc 1 197 0
	movq	-8368(%rbp), %rdx	# fp, tmp621
	leaq	-8224(%rbp), %rax	#, tmp622
	movl	$4096, %esi	#,
	movq	%rax, %rdi	# tmp622,
	call	fgets	#
	testq	%rax, %rax	# D.6951
	jne	.L22	#,
	.loc 1 198 0
	movq	$0, -8384(%rbp)	#, nptr
	jmp	.L13	#
.L22:
	.loc 1 199 0
	leaq	-8224(%rbp), %rdx	#, tmp623
	leaq	-4128(%rbp), %rax	#, tmp624
	movq	%rdx, %rsi	# tmp623,
	movq	%rax, %rdi	# tmp624,
	call	strcpy	#
	.loc 1 201 0
	leaq	-8224(%rbp), %rax	#, tmp625
	movl	$4, %edx	#,
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp625,
	call	strncmp	#
	testl	%eax, %eax	# D.6950
	jne	.L23	#,
	.loc 1 201 0 is_stmt 0 discriminator 1
	movq	-8360(%rbp), %rax	# ainfo, tmp626
	movq	40(%rax), %rax	# ainfo_65->sqinfo, D.6956
	movl	-8444(%rbp), %edx	# currnum, tmp627
	movslq	%edx, %rdx	# tmp627, D.6953
	imulq	$360, %rdx, %rdx	#, D.6953, D.6953
	subq	$360, %rdx	#, D.6960
	addq	%rax, %rdx	# D.6956, D.6956
	movq	-8360(%rbp), %rax	# ainfo, tmp628
	movq	40(%rax), %rax	# ainfo_65->sqinfo, D.6956
	movl	-8444(%rbp), %ecx	# currnum, tmp629
	movslq	%ecx, %rcx	# tmp629, D.6953
	imulq	$360, %rcx, %rcx	#, D.6953, D.6953
	subq	$360, %rcx	#, D.6960
	addq	%rcx, %rax	# D.6960, D.6956
	movl	(%rax), %eax	# _164->flags, D.6950
	orb	$2, %ah	#, D.6950
	movl	%eax, (%rdx)	# D.6950, _159->flags
	jmp	.L24	#
.L23:
	.loc 1 202 0 is_stmt 1
	leaq	-8224(%rbp), %rax	#, tmp630
	movl	$4, %edx	#,
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# tmp630,
	call	strncmp	#
	testl	%eax, %eax	# D.6950
	jne	.L25	#,
	.loc 1 202 0 is_stmt 0 discriminator 1
	movq	-8360(%rbp), %rax	# ainfo, tmp631
	movq	40(%rax), %rax	# ainfo_65->sqinfo, D.6956
	movl	-8444(%rbp), %edx	# currnum, tmp632
	movslq	%edx, %rdx	# tmp632, D.6953
	imulq	$360, %rdx, %rdx	#, D.6953, D.6953
	subq	$360, %rdx	#, D.6960
	addq	%rax, %rdx	# D.6956, D.6956
	movq	-8360(%rbp), %rax	# ainfo, tmp633
	movq	40(%rax), %rax	# ainfo_65->sqinfo, D.6956
	movl	-8444(%rbp), %ecx	# currnum, tmp634
	movslq	%ecx, %rcx	# tmp634, D.6953
	imulq	$360, %rcx, %rcx	#, D.6953, D.6953
	subq	$360, %rcx	#, D.6960
	addq	%rcx, %rax	# D.6960, D.6956
	movl	(%rax), %eax	# _177->flags, D.6950
	orb	$4, %ah	#, D.6950
	movl	%eax, (%rdx)	# D.6950, _172->flags
	jmp	.L24	#
.L25:
	.loc 1 203 0 is_stmt 1
	leaq	-8224(%rbp), %rax	#, tmp635
	movl	$4, %edx	#,
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp635,
	call	strncmp	#
	testl	%eax, %eax	# D.6950
	jne	.L26	#,
	.loc 1 203 0 is_stmt 0 discriminator 1
	movl	$1, -8408(%rbp)	#, have_cs
	jmp	.L24	#
.L26:
	.loc 1 204 0 is_stmt 1
	leaq	-8224(%rbp), %rax	#, tmp636
	movl	$4, %edx	#,
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp636,
	call	strncmp	#
	testl	%eax, %eax	# D.6950
	jne	.L24	#,
	.loc 1 204 0 is_stmt 0 discriminator 1
	movl	$1, -8404(%rbp)	#, have_rf
.L24:
	.loc 1 206 0 is_stmt 1
	leaq	-4128(%rbp), %rax	#, tmp637
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp637,
	call	strtok	#
	movq	%rax, -8384(%rbp)	# tmp638, nptr
	cmpq	$0, -8384(%rbp)	#, nptr
	jne	.L27	#,
	.loc 1 207 0
	jmp	.L13	#
.L27:
	.loc 1 208 0
	movq	-8384(%rbp), %rax	# nptr, tmp639
	movzbl	(%rax), %eax	# *nptr_184, D.6952
	movsbl	%al, %eax	# D.6952, D.6950
	movl	%eax, %esi	# D.6950,
	movl	$commentsyms, %edi	#,
	call	strchr	#
	testq	%rax, %rax	# D.6951
	jne	.L18	#,
.L13:
	.loc 1 158 0 discriminator 1
	cmpq	$0, -8384(%rbp)	#, nptr
	jne	.L28	#,
	.loc 1 213 0
	cmpl	$0, -8448(%rbp)	#, blocknum
	jne	.L29	#,
	.loc 1 214 0
	movl	-8444(%rbp), %eax	# currnum, tmp640
	movl	%eax, -8452(%rbp)	# tmp640, num
	jmp	.L30	#
.L29:
	.loc 1 215 0
	movl	-8444(%rbp), %eax	# currnum, tmp641
	cmpl	-8452(%rbp), %eax	# num, tmp641
	je	.L30	#,
	.loc 1 216 0
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L30:
	.loc 1 217 0
	addl	$1, -8448(%rbp)	#, blocknum
.L32:
	.loc 1 223 0
	movq	-8368(%rbp), %rdx	# fp, tmp642
	leaq	-8224(%rbp), %rax	#, tmp643
	movl	$4096, %esi	#,
	movq	%rax, %rdi	# tmp643,
	call	fgets	#
	testq	%rax, %rax	# D.6951
	jne	.L31	#,
	.loc 1 223 0 is_stmt 0 discriminator 1
	movq	$0, -8384(%rbp)	#, nptr
	jmp	.L10	#
.L31:
	.loc 1 224 0 is_stmt 1
	leaq	-8224(%rbp), %rdx	#, tmp644
	leaq	-4128(%rbp), %rax	#, tmp645
	movq	%rdx, %rsi	# tmp644,
	movq	%rax, %rdi	# tmp645,
	call	strcpy	#
	.loc 1 227 0
	leaq	-4128(%rbp), %rax	#, tmp646
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp646,
	call	strtok	#
	movq	%rax, -8384(%rbp)	# tmp647, nptr
	cmpq	$0, -8384(%rbp)	#, nptr
	je	.L32	#,
	.loc 1 227 0 is_stmt 0 discriminator 1
	movq	-8384(%rbp), %rax	# nptr, tmp648
	movzbl	(%rax), %eax	# *nptr_192, D.6952
	movsbl	%al, %eax	# D.6952, D.6950
	movl	%eax, %esi	# D.6950,
	movl	$commentsyms, %edi	#,
	call	strchr	#
	.loc 1 226 0 is_stmt 1 discriminator 1
	testq	%rax, %rax	# D.6951
	jne	.L32	#,
.L10:
	.loc 1 147 0 discriminator 1
	movq	-8368(%rbp), %rax	# fp, tmp649
	movq	%rax, %rdi	# tmp649,
	call	feof	#
	testl	%eax, %eax	# D.6950
	je	.L33	#,
	.loc 1 238 0
	movl	$0, -8428(%rbp)	#, alen
	.loc 1 239 0
	movl	$0, -8440(%rbp)	#, currblock
	jmp	.L34	#
.L35:
	.loc 1 240 0 discriminator 2
	movl	-8440(%rbp), %eax	# currblock, tmp650
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6953
	movq	-8392(%rbp), %rax	# blocks, tmp651
	addq	%rdx, %rax	# D.6953, D.6954
	movl	4(%rax), %edx	# _200->rcol, D.6950
	movl	-8440(%rbp), %eax	# currblock, tmp652
	cltq
	leaq	0(,%rax,8), %rcx	#, D.6953
	movq	-8392(%rbp), %rax	# blocks, tmp653
	addq	%rcx, %rax	# D.6953, D.6954
	movl	(%rax), %eax	# _204->lcol, D.6950
	subl	%eax, %edx	# D.6950, D.6950
	movl	%edx, %eax	# D.6950, D.6950
	addl	$1, %eax	#, D.6950
	addl	%eax, -8428(%rbp)	# D.6950, alen
	.loc 1 239 0 discriminator 2
	addl	$1, -8440(%rbp)	#, currblock
.L34:
	.loc 1 239 0 is_stmt 0 discriminator 1
	movl	-8440(%rbp), %eax	# currblock, tmp654
	cmpl	-8448(%rbp), %eax	# blocknum, tmp654
	jl	.L35	#,
	.loc 1 242 0 is_stmt 1
	movq	-8368(%rbp), %rax	# fp, tmp655
	movq	%rax, %rdi	# tmp655,
	call	rewind	#
	.loc 1 247 0
	movl	-8452(%rbp), %eax	# num, tmp656
	cltq
	salq	$3, %rax	#, D.6953
	movq	%rax, %rdx	# D.6953,
	movl	$247, %esi	#,
	movl	$.LC4, %edi	#,
	call	sre_malloc	#
	movq	%rax, -8352(%rbp)	# tmp657, aseqs
	.loc 1 248 0
	cmpl	$0, -8408(%rbp)	#, have_cs
	je	.L36	#,
	.loc 1 249 0
	movl	-8428(%rbp), %eax	# alen, tmp658
	addl	$1, %eax	#, D.6950
	cltq
	movq	%rax, %rdx	# D.6953,
	movl	$249, %esi	#,
	movl	$.LC4, %edi	#,
	call	sre_malloc	#
	movq	-8360(%rbp), %rdx	# ainfo, tmp659
	movq	%rax, 24(%rdx)	# D.6955, ainfo_65->cs
.L36:
	.loc 1 250 0
	cmpl	$0, -8404(%rbp)	#, have_rf
	je	.L37	#,
	.loc 1 251 0
	movl	-8428(%rbp), %eax	# alen, tmp660
	addl	$1, %eax	#, D.6950
	cltq
	movq	%rax, %rdx	# D.6953,
	movl	$251, %esi	#,
	movl	$.LC4, %edi	#,
	call	sre_malloc	#
	movq	-8360(%rbp), %rdx	# ainfo, tmp661
	movq	%rax, 32(%rdx)	# D.6955, ainfo_65->rf
.L37:
	.loc 1 255 0
	movl	$0, -8436(%rbp)	#, i
	jmp	.L38	#
.L41:
	.loc 1 257 0
	movl	-8436(%rbp), %eax	# i, tmp662
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6953
	movq	-8352(%rbp), %rax	# aseqs, tmp663
	leaq	(%rdx,%rax), %rbx	#, D.6961
	movl	-8428(%rbp), %eax	# alen, tmp664
	addl	$1, %eax	#, D.6950
	cltq
	movq	%rax, %rdx	# D.6953,
	movl	$257, %esi	#,
	movl	$.LC4, %edi	#,
	call	sre_malloc	#
	movq	%rax, (%rbx)	# D.6955, *_222
	.loc 1 258 0
	movq	-8360(%rbp), %rax	# ainfo, tmp665
	movq	40(%rax), %rdx	# ainfo_65->sqinfo, D.6956
	movl	-8436(%rbp), %eax	# i, tmp666
	cltq
	imulq	$360, %rax, %rax	#, D.6953, D.6953
	addq	%rdx, %rax	# D.6956, D.6956
	movl	(%rax), %eax	# _229->flags, D.6950
	andl	$512, %eax	#, D.6950
	testl	%eax, %eax	# D.6950
	je	.L39	#,
	.loc 1 259 0
	movq	-8360(%rbp), %rax	# ainfo, tmp667
	movq	40(%rax), %rdx	# ainfo_65->sqinfo, D.6956
	movl	-8436(%rbp), %eax	# i, tmp668
	cltq
	imulq	$360, %rax, %rax	#, D.6953, D.6953
	leaq	(%rdx,%rax), %rbx	#, D.6956
	movl	-8428(%rbp), %eax	# alen, tmp669
	addl	$1, %eax	#, D.6950
	cltq
	movq	%rax, %rdx	# D.6953,
	movl	$259, %esi	#,
	movl	$.LC4, %edi	#,
	call	sre_malloc	#
	movq	%rax, 344(%rbx)	# D.6955, _235->ss
.L39:
	.loc 1 260 0
	movq	-8360(%rbp), %rax	# ainfo, tmp670
	movq	40(%rax), %rdx	# ainfo_65->sqinfo, D.6956
	movl	-8436(%rbp), %eax	# i, tmp671
	cltq
	imulq	$360, %rax, %rax	#, D.6953, D.6953
	addq	%rdx, %rax	# D.6956, D.6956
	movl	(%rax), %eax	# _242->flags, D.6950
	andl	$1024, %eax	#, D.6950
	testl	%eax, %eax	# D.6950
	je	.L40	#,
	.loc 1 261 0
	movq	-8360(%rbp), %rax	# ainfo, tmp672
	movq	40(%rax), %rdx	# ainfo_65->sqinfo, D.6956
	movl	-8436(%rbp), %eax	# i, tmp673
	cltq
	imulq	$360, %rax, %rax	#, D.6953, D.6953
	leaq	(%rdx,%rax), %rbx	#, D.6956
	movl	-8428(%rbp), %eax	# alen, tmp674
	addl	$1, %eax	#, D.6950
	cltq
	movq	%rax, %rdx	# D.6953,
	movl	$261, %esi	#,
	movl	$.LC4, %edi	#,
	call	sre_malloc	#
	movq	%rax, 352(%rbx)	# D.6955, _248->sa
.L40:
	.loc 1 255 0
	addl	$1, -8436(%rbp)	#, i
.L38:
	.loc 1 255 0 is_stmt 0 discriminator 1
	movl	-8436(%rbp), %eax	# i, tmp675
	cmpl	-8452(%rbp), %eax	# num, tmp675
	jl	.L41	#,
	.loc 1 264 0 is_stmt 1
	movq	-8360(%rbp), %rax	# ainfo, tmp676
	movl	-8428(%rbp), %edx	# alen, tmp677
	movl	%edx, 4(%rax)	# tmp677, ainfo_65->alen
	.loc 1 265 0
	movq	-8360(%rbp), %rax	# ainfo, tmp678
	movl	-8452(%rbp), %edx	# num, tmp679
	movl	%edx, 8(%rax)	# tmp679, ainfo_65->nseq
	.loc 1 266 0
	movl	-8452(%rbp), %eax	# num, tmp680
	cltq
	salq	$2, %rax	#, D.6953
	movq	%rax, %rdx	# D.6953,
	movl	$266, %esi	#,
	movl	$.LC4, %edi	#,
	call	sre_malloc	#
	movq	-8360(%rbp), %rdx	# ainfo, tmp681
	movq	%rax, 16(%rdx)	# D.6955, ainfo_65->wgt
	.loc 1 267 0
	movq	-8360(%rbp), %rax	# ainfo, tmp682
	movq	16(%rax), %rax	# ainfo_65->wgt, D.6962
	movl	-8452(%rbp), %edx	# num, tmp683
	movss	.LC8(%rip), %xmm0	#,
	movl	%edx, %esi	# tmp683,
	movq	%rax, %rdi	# D.6962,
	call	FSet	#
	.loc 1 281 0
	movl	$0, -8420(%rbp)	#, headnum
.L72:
	.loc 1 284 0
	movq	-8368(%rbp), %rdx	# fp, tmp684
	leaq	-8224(%rbp), %rax	#, tmp685
	movl	$4096, %esi	#,
	movq	%rax, %rdi	# tmp685,
	call	fgets	#
	testq	%rax, %rax	# D.6951
	jne	.L42	#,
	.loc 1 285 0
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L42:
	.loc 1 286 0
	leaq	-8224(%rbp), %rdx	#, tmp686
	leaq	-4128(%rbp), %rax	#, tmp687
	movq	%rdx, %rsi	# tmp686,
	movq	%rax, %rdi	# tmp687,
	call	strcpy	#
	.loc 1 287 0
	leaq	-4128(%rbp), %rax	#, tmp688
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp688,
	call	strtok	#
	movq	%rax, -8384(%rbp)	# tmp689, nptr
	cmpq	$0, -8384(%rbp)	#, nptr
	jne	.L43	#,
	.loc 1 287 0 is_stmt 0 discriminator 1
	jmp	.L44	#
.L43:
	.loc 1 289 0 is_stmt 1
	movq	-8384(%rbp), %rax	# nptr, tmp690
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# tmp690,
	call	strcmp	#
	testl	%eax, %eax	# D.6950
	jne	.L45	#,
	.loc 1 289 0 is_stmt 0 discriminator 1
	movl	$.LC10, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -8376(%rbp)	# tmp691, sptr
	cmpq	$0, -8376(%rbp)	#, sptr
	je	.L45	#,
	.loc 1 290 0 is_stmt 1
	movq	-8376(%rbp), %rax	# sptr, tmp692
	movq	%rax, %rdi	# tmp692,
	call	Strdup	#
	movq	-8360(%rbp), %rdx	# ainfo, tmp693
	movq	%rax, 72(%rdx)	# D.6951, ainfo_65->au
	jmp	.L44	#
.L45:
	.loc 1 291 0
	movq	-8384(%rbp), %rax	# nptr, tmp694
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# tmp694,
	call	strcmp	#
	testl	%eax, %eax	# D.6950
	jne	.L46	#,
	.loc 1 291 0 is_stmt 0 discriminator 1
	movl	$.LC10, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -8376(%rbp)	# tmp695, sptr
	cmpq	$0, -8376(%rbp)	#, sptr
	je	.L46	#,
	.loc 1 292 0 is_stmt 1
	movq	-8376(%rbp), %rax	# sptr, tmp696
	movq	%rax, %rdi	# tmp696,
	call	Strdup	#
	movq	-8360(%rbp), %rdx	# ainfo, tmp697
	movq	%rax, 48(%rdx)	# D.6951, ainfo_65->name
	jmp	.L44	#
.L46:
	.loc 1 293 0
	movq	-8384(%rbp), %rax	# nptr, tmp698
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# tmp698,
	call	strcmp	#
	testl	%eax, %eax	# D.6950
	jne	.L47	#,
	.loc 1 293 0 is_stmt 0 discriminator 1
	movl	$.LC10, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -8376(%rbp)	# tmp699, sptr
	cmpq	$0, -8376(%rbp)	#, sptr
	je	.L47	#,
	.loc 1 294 0 is_stmt 1
	movq	-8376(%rbp), %rax	# sptr, tmp700
	movq	%rax, %rdi	# tmp700,
	call	Strdup	#
	movq	-8360(%rbp), %rdx	# ainfo, tmp701
	movq	%rax, 64(%rdx)	# D.6951, ainfo_65->acc
	jmp	.L44	#
.L47:
	.loc 1 295 0
	movq	-8384(%rbp), %rax	# nptr, tmp702
	movl	$.LC13, %esi	#,
	movq	%rax, %rdi	# tmp702,
	call	strcmp	#
	testl	%eax, %eax	# D.6950
	jne	.L48	#,
	.loc 1 295 0 is_stmt 0 discriminator 1
	movl	$.LC10, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -8376(%rbp)	# tmp703, sptr
	cmpq	$0, -8376(%rbp)	#, sptr
	je	.L48	#,
	.loc 1 296 0 is_stmt 1
	movq	-8376(%rbp), %rax	# sptr, tmp704
	movq	%rax, %rdi	# tmp704,
	call	Strdup	#
	movq	-8360(%rbp), %rdx	# ainfo, tmp705
	movq	%rax, 56(%rdx)	# D.6951, ainfo_65->desc
	jmp	.L44	#
.L48:
	.loc 1 297 0
	movq	-8384(%rbp), %rax	# nptr, tmp706
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# tmp706,
	call	strcmp	#
	testl	%eax, %eax	# D.6950
	jne	.L49	#,
	.loc 1 299 0
	movl	$.LC3, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -8376(%rbp)	# tmp707, sptr
	cmpq	$0, -8376(%rbp)	#, sptr
	jne	.L50	#,
	.loc 1 300 0
	movl	$.LC15, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L50:
	.loc 1 301 0
	movq	-8376(%rbp), %rax	# sptr, tmp708
	movq	%rax, %rdi	# tmp708,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.6963
	cvtpd2ps	%xmm0, %xmm0	# D.6963, D.6964
	movq	-8360(%rbp), %rax	# ainfo, tmp709
	movss	%xmm0, 96(%rax)	# D.6964, ainfo_65->ga1
	.loc 1 303 0
	movl	$.LC3, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -8376(%rbp)	# tmp710, sptr
	cmpq	$0, -8376(%rbp)	#, sptr
	jne	.L51	#,
	.loc 1 304 0
	movl	$.LC15, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L51:
	.loc 1 305 0
	movq	-8376(%rbp), %rax	# sptr, tmp711
	movq	%rax, %rdi	# tmp711,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.6963
	cvtpd2ps	%xmm0, %xmm0	# D.6963, D.6964
	movq	-8360(%rbp), %rax	# ainfo, tmp712
	movss	%xmm0, 100(%rax)	# D.6964, ainfo_65->ga2
	.loc 1 307 0
	movq	-8360(%rbp), %rax	# ainfo, tmp713
	movl	(%rax), %eax	# ainfo_65->flags, D.6950
	orl	$4, %eax	#, D.6950
	movl	%eax, %edx	# D.6950, D.6950
	movq	-8360(%rbp), %rax	# ainfo, tmp714
	movl	%edx, (%rax)	# D.6950, ainfo_65->flags
	jmp	.L44	#
.L49:
	.loc 1 309 0
	movq	-8384(%rbp), %rax	# nptr, tmp715
	movl	$.LC16, %esi	#,
	movq	%rax, %rdi	# tmp715,
	call	strcmp	#
	testl	%eax, %eax	# D.6950
	jne	.L52	#,
	.loc 1 311 0
	movl	$.LC3, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -8376(%rbp)	# tmp716, sptr
	cmpq	$0, -8376(%rbp)	#, sptr
	jne	.L53	#,
	.loc 1 312 0
	movl	$.LC17, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L53:
	.loc 1 313 0
	movq	-8376(%rbp), %rax	# sptr, tmp717
	movq	%rax, %rdi	# tmp717,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.6963
	cvtpd2ps	%xmm0, %xmm0	# D.6963, D.6964
	movq	-8360(%rbp), %rax	# ainfo, tmp718
	movss	%xmm0, 80(%rax)	# D.6964, ainfo_65->tc1
	.loc 1 315 0
	movl	$.LC3, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -8376(%rbp)	# tmp719, sptr
	cmpq	$0, -8376(%rbp)	#, sptr
	jne	.L54	#,
	.loc 1 316 0
	movl	$.LC17, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L54:
	.loc 1 317 0
	movq	-8376(%rbp), %rax	# sptr, tmp720
	movq	%rax, %rdi	# tmp720,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.6963
	cvtpd2ps	%xmm0, %xmm0	# D.6963, D.6964
	movq	-8360(%rbp), %rax	# ainfo, tmp721
	movss	%xmm0, 84(%rax)	# D.6964, ainfo_65->tc2
	.loc 1 319 0
	movq	-8360(%rbp), %rax	# ainfo, tmp722
	movl	(%rax), %eax	# ainfo_65->flags, D.6950
	orl	$1, %eax	#, D.6950
	movl	%eax, %edx	# D.6950, D.6950
	movq	-8360(%rbp), %rax	# ainfo, tmp723
	movl	%edx, (%rax)	# D.6950, ainfo_65->flags
	jmp	.L44	#
.L52:
	.loc 1 321 0
	movq	-8384(%rbp), %rax	# nptr, tmp724
	movl	$.LC18, %esi	#,
	movq	%rax, %rdi	# tmp724,
	call	strcmp	#
	testl	%eax, %eax	# D.6950
	jne	.L55	#,
	.loc 1 323 0
	movl	$.LC3, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -8376(%rbp)	# tmp725, sptr
	cmpq	$0, -8376(%rbp)	#, sptr
	jne	.L56	#,
	.loc 1 324 0
	movl	$.LC19, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L56:
	.loc 1 325 0
	movq	-8376(%rbp), %rax	# sptr, tmp726
	movq	%rax, %rdi	# tmp726,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.6963
	cvtpd2ps	%xmm0, %xmm0	# D.6963, D.6964
	movq	-8360(%rbp), %rax	# ainfo, tmp727
	movss	%xmm0, 88(%rax)	# D.6964, ainfo_65->nc1
	.loc 1 327 0
	movl	$.LC3, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -8376(%rbp)	# tmp728, sptr
	cmpq	$0, -8376(%rbp)	#, sptr
	jne	.L57	#,
	.loc 1 328 0
	movl	$.LC19, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L57:
	.loc 1 329 0
	movq	-8376(%rbp), %rax	# sptr, tmp729
	movq	%rax, %rdi	# tmp729,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.6963
	cvtpd2ps	%xmm0, %xmm0	# D.6963, D.6964
	movq	-8360(%rbp), %rax	# ainfo, tmp730
	movss	%xmm0, 92(%rax)	# D.6964, ainfo_65->nc2
	.loc 1 331 0
	movq	-8360(%rbp), %rax	# ainfo, tmp731
	movl	(%rax), %eax	# ainfo_65->flags, D.6950
	orl	$2, %eax	#, D.6950
	movl	%eax, %edx	# D.6950, D.6950
	movq	-8360(%rbp), %rax	# ainfo, tmp732
	movl	%edx, (%rax)	# D.6950, ainfo_65->flags
	jmp	.L44	#
.L55:
	.loc 1 333 0
	movq	-8384(%rbp), %rax	# nptr, tmp733
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# tmp733,
	call	strcmp	#
	testl	%eax, %eax	# D.6950
	jne	.L58	#,
	.loc 1 336 0
	movl	$.LC3, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -8376(%rbp)	# tmp734, sptr
	cmpq	$0, -8376(%rbp)	#, sptr
	jne	.L59	#,
	.loc 1 337 0
	movl	$.LC21, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L59:
	.loc 1 338 0
	movq	-8360(%rbp), %rax	# ainfo, tmp735
	movq	40(%rax), %rdx	# ainfo_65->sqinfo, D.6956
	movl	-8420(%rbp), %eax	# headnum, tmp736
	cltq
	imulq	$360, %rax, %rax	#, D.6953, D.6953
	addq	%rdx, %rax	# D.6956, D.6956
	leaq	4(%rax), %rdx	#, D.6958
	movq	-8376(%rbp), %rax	# sptr, tmp737
	movq	%rdx, %rsi	# D.6958,
	movq	%rax, %rdi	# tmp737,
	call	strcmp	#
	testl	%eax, %eax	# D.6950
	je	.L60	#,
	.loc 1 338 0 is_stmt 0 discriminator 1
	movl	$1, -8424(%rbp)	#, warn_names
.L60:
	.loc 1 341 0 is_stmt 1
	movl	$.LC3, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -8376(%rbp)	# tmp738, sptr
	cmpq	$0, -8376(%rbp)	#, sptr
	jne	.L61	#,
	.loc 1 342 0
	movl	$.LC21, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L61:
	.loc 1 343 0
	movq	-8376(%rbp), %rax	# sptr, tmp739
	movq	%rax, %rdi	# tmp739,
	call	IsReal	#
	testl	%eax, %eax	# D.6950
	jne	.L62	#,
	.loc 1 344 0
	movl	$.LC22, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L62:
	.loc 1 345 0
	movq	-8360(%rbp), %rax	# ainfo, tmp740
	movq	16(%rax), %rax	# ainfo_65->wgt, D.6962
	movl	-8420(%rbp), %edx	# headnum, tmp741
	movslq	%edx, %rdx	# tmp741, D.6953
	salq	$2, %rdx	#, D.6953
	leaq	(%rax,%rdx), %rbx	#, D.6962
	movq	-8376(%rbp), %rax	# sptr, tmp742
	movq	%rax, %rdi	# tmp742,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.6963
	cvtpd2ps	%xmm0, %xmm0	# D.6963, D.6964
	movss	%xmm0, (%rbx)	# D.6964, *_313
	.loc 1 348 0
	movl	$.LC3, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -8376(%rbp)	# tmp743, sptr
	cmpq	$0, -8376(%rbp)	#, sptr
	jne	.L63	#,
	.loc 1 349 0
	movl	$.LC23, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L63:
	.loc 1 350 0
	movq	-8360(%rbp), %rax	# ainfo, tmp744
	movq	40(%rax), %rdx	# ainfo_65->sqinfo, D.6956
	movl	-8420(%rbp), %eax	# headnum, tmp745
	cltq
	imulq	$360, %rax, %rax	#, D.6953, D.6953
	leaq	(%rdx,%rax), %rcx	#, D.6957
	movq	-8376(%rbp), %rax	# sptr, tmp746
	movl	$2, %edx	#,
	movq	%rax, %rsi	# tmp746,
	movq	%rcx, %rdi	# D.6957,
	call	SetSeqinfoString	#
	.loc 1 353 0
	movl	$.LC3, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -8376(%rbp)	# tmp747, sptr
	cmpq	$0, -8376(%rbp)	#, sptr
	jne	.L64	#,
	.loc 1 354 0
	movl	$.LC23, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L64:
	.loc 1 355 0
	movq	-8360(%rbp), %rax	# ainfo, tmp748
	movq	40(%rax), %rdx	# ainfo_65->sqinfo, D.6956
	movl	-8420(%rbp), %eax	# headnum, tmp749
	cltq
	imulq	$360, %rax, %rax	#, D.6953, D.6953
	leaq	(%rdx,%rax), %rcx	#, D.6957
	movq	-8376(%rbp), %rax	# sptr, tmp750
	movl	$4, %edx	#,
	movq	%rax, %rsi	# tmp750,
	movq	%rcx, %rdi	# D.6957,
	call	SetSeqinfoString	#
	.loc 1 358 0
	movl	$.LC24, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -8376(%rbp)	# tmp751, sptr
	cmpq	$0, -8376(%rbp)	#, sptr
	jne	.L65	#,
	.loc 1 359 0
	movl	$.LC23, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L65:
	.loc 1 360 0
	movq	-8360(%rbp), %rax	# ainfo, tmp752
	movq	40(%rax), %rdx	# ainfo_65->sqinfo, D.6956
	movl	-8420(%rbp), %eax	# headnum, tmp753
	cltq
	imulq	$360, %rax, %rax	#, D.6953, D.6953
	leaq	(%rdx,%rax), %rcx	#, D.6957
	movq	-8376(%rbp), %rax	# sptr, tmp754
	movl	$16, %edx	#,
	movq	%rax, %rsi	# tmp754,
	movq	%rcx, %rdi	# D.6957,
	call	SetSeqinfoString	#
	.loc 1 362 0
	movl	$.LC24, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -8376(%rbp)	# tmp755, sptr
	cmpq	$0, -8376(%rbp)	#, sptr
	jne	.L66	#,
	.loc 1 363 0
	movl	$.LC23, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L66:
	.loc 1 364 0
	movq	-8360(%rbp), %rax	# ainfo, tmp756
	movq	40(%rax), %rdx	# ainfo_65->sqinfo, D.6956
	movl	-8420(%rbp), %eax	# headnum, tmp757
	cltq
	imulq	$360, %rax, %rax	#, D.6953, D.6953
	leaq	(%rdx,%rax), %rcx	#, D.6957
	movq	-8376(%rbp), %rax	# sptr, tmp758
	movl	$32, %edx	#,
	movq	%rax, %rsi	# tmp758,
	movq	%rcx, %rdi	# D.6957,
	call	SetSeqinfoString	#
	.loc 1 366 0
	movl	$.LC25, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -8376(%rbp)	# tmp759, sptr
	cmpq	$0, -8376(%rbp)	#, sptr
	jne	.L67	#,
	.loc 1 367 0
	movl	$.LC23, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L67:
	.loc 1 368 0
	movq	-8360(%rbp), %rax	# ainfo, tmp760
	movq	40(%rax), %rdx	# ainfo_65->sqinfo, D.6956
	movl	-8420(%rbp), %eax	# headnum, tmp761
	cltq
	imulq	$360, %rax, %rax	#, D.6953, D.6953
	leaq	(%rdx,%rax), %rcx	#, D.6957
	movq	-8376(%rbp), %rax	# sptr, tmp762
	movl	$256, %edx	#,
	movq	%rax, %rsi	# tmp762,
	movq	%rcx, %rdi	# D.6957,
	call	SetSeqinfoString	#
	.loc 1 371 0
	movl	$.LC10, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -8376(%rbp)	# tmp763, sptr
	cmpq	$0, -8376(%rbp)	#, sptr
	je	.L68	#,
	.loc 1 372 0
	movq	-8360(%rbp), %rax	# ainfo, tmp764
	movq	40(%rax), %rdx	# ainfo_65->sqinfo, D.6956
	movl	-8420(%rbp), %eax	# headnum, tmp765
	cltq
	imulq	$360, %rax, %rax	#, D.6953, D.6953
	leaq	(%rdx,%rax), %rcx	#, D.6957
	movq	-8376(%rbp), %rax	# sptr, tmp766
	movl	$8, %edx	#,
	movq	%rax, %rsi	# tmp766,
	movq	%rcx, %rdi	# D.6957,
	call	SetSeqinfoString	#
.L68:
	.loc 1 374 0
	addl	$1, -8420(%rbp)	#, headnum
	jmp	.L44	#
.L58:
	.loc 1 376 0
	movq	-8384(%rbp), %rax	# nptr, tmp767
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp767,
	call	strcmp	#
	testl	%eax, %eax	# D.6950
	jne	.L69	#,
	.loc 1 376 0 is_stmt 0 discriminator 1
	jmp	.L70	#
.L69:
	.loc 1 377 0 is_stmt 1
	movq	-8384(%rbp), %rax	# nptr, tmp768
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp768,
	call	strcmp	#
	testl	%eax, %eax	# D.6950
	jne	.L71	#,
	.loc 1 377 0 is_stmt 0 discriminator 1
	jmp	.L70	#
.L71:
	.loc 1 378 0 is_stmt 1
	movq	-8384(%rbp), %rax	# nptr, tmp769
	movzbl	(%rax), %eax	# *nptr_259, D.6952
	movsbl	%al, %eax	# D.6952, D.6950
	movl	%eax, %esi	# D.6950,
	movl	$commentsyms, %edi	#,
	call	strchr	#
	testq	%rax, %rax	# D.6951
	jne	.L44	#,
	.loc 1 378 0 is_stmt 0 discriminator 1
	jmp	.L70	#
.L44:
	.loc 1 379 0 is_stmt 1
	jmp	.L72	#
.L70:
	.loc 1 382 0
	movl	$0, -8416(%rbp)	#, currlen
	.loc 1 383 0
	movl	$0, -8440(%rbp)	#, currblock
	jmp	.L73	#
.L96:
	.loc 1 386 0
	movl	$0, -8432(%rbp)	#, seqidx
	.loc 1 387 0
	jmp	.L74	#
.L89:
	.loc 1 390 0
	movq	-8384(%rbp), %rax	# nptr, tmp770
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp770,
	call	strcmp	#
	testl	%eax, %eax	# D.6950
	jne	.L75	#,
	.loc 1 393 0
	movl	-8440(%rbp), %eax	# currblock, tmp771
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6953
	movq	-8392(%rbp), %rax	# blocks, tmp772
	addq	%rdx, %rax	# D.6953, D.6954
	.loc 1 392 0
	movl	4(%rax), %r12d	# _358->rcol, D.6950
	.loc 1 393 0
	movl	-8440(%rbp), %eax	# currblock, tmp773
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6953
	movq	-8392(%rbp), %rax	# blocks, tmp774
	addq	%rdx, %rax	# D.6953, D.6954
	.loc 1 392 0
	movl	(%rax), %ebx	# _362->lcol, D.6950
	movq	-8384(%rbp), %rax	# nptr, tmp775
	movq	%rax, %rdi	# tmp775,
	call	strlen	#
	subl	$1, %eax	#, D.6965
	movl	%eax, %edx	# D.6965, D.6950
	movq	-8360(%rbp), %rax	# ainfo, tmp776
	movq	24(%rax), %rax	# ainfo_65->cs, D.6951
	leaq	-8224(%rbp), %rcx	#, tmp777
	movl	-8416(%rbp), %esi	# currlen, tmp778
	movl	$46, (%rsp)	#,
	movl	%r12d, %r9d	# D.6950,
	movl	%ebx, %r8d	# D.6950,
	movq	%rax, %rdi	# D.6951,
	call	copy_alignment_line	#
	testl	%eax, %eax	# D.6950
	jne	.L77	#,
	.loc 1 394 0
	movl	$.LC26, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	jmp	.L77	#
.L75:
	.loc 1 398 0
	movq	-8384(%rbp), %rax	# nptr, tmp779
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp779,
	call	strcmp	#
	testl	%eax, %eax	# D.6950
	jne	.L78	#,
	.loc 1 401 0
	movl	-8440(%rbp), %eax	# currblock, tmp780
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6953
	movq	-8392(%rbp), %rax	# blocks, tmp781
	addq	%rdx, %rax	# D.6953, D.6954
	.loc 1 400 0
	movl	4(%rax), %r12d	# _373->rcol, D.6950
	.loc 1 401 0
	movl	-8440(%rbp), %eax	# currblock, tmp782
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6953
	movq	-8392(%rbp), %rax	# blocks, tmp783
	addq	%rdx, %rax	# D.6953, D.6954
	.loc 1 400 0
	movl	(%rax), %ebx	# _377->lcol, D.6950
	movq	-8384(%rbp), %rax	# nptr, tmp784
	movq	%rax, %rdi	# tmp784,
	call	strlen	#
	subl	$1, %eax	#, D.6965
	movl	%eax, %edx	# D.6965, D.6950
	movq	-8360(%rbp), %rax	# ainfo, tmp785
	movq	32(%rax), %rax	# ainfo_65->rf, D.6951
	leaq	-8224(%rbp), %rcx	#, tmp786
	movl	-8416(%rbp), %esi	# currlen, tmp787
	movl	$46, (%rsp)	#,
	movl	%r12d, %r9d	# D.6950,
	movl	%ebx, %r8d	# D.6950,
	movq	%rax, %rdi	# D.6951,
	call	copy_alignment_line	#
	testl	%eax, %eax	# D.6950
	jne	.L77	#,
	.loc 1 402 0
	movl	$.LC27, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	jmp	.L77	#
.L78:
	.loc 1 405 0
	movq	-8384(%rbp), %rax	# nptr, tmp788
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp788,
	call	strcmp	#
	testl	%eax, %eax	# D.6950
	jne	.L80	#,
	.loc 1 409 0
	movl	-8440(%rbp), %eax	# currblock, tmp789
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6953
	movq	-8392(%rbp), %rax	# blocks, tmp790
	addq	%rdx, %rax	# D.6953, D.6954
	.loc 1 407 0
	movl	4(%rax), %r12d	# _388->rcol, D.6950
	.loc 1 408 0
	movl	-8440(%rbp), %eax	# currblock, tmp791
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6953
	movq	-8392(%rbp), %rax	# blocks, tmp792
	addq	%rdx, %rax	# D.6953, D.6954
	.loc 1 407 0
	movl	(%rax), %ebx	# _392->lcol, D.6950
	movq	-8384(%rbp), %rax	# nptr, tmp793
	movq	%rax, %rdi	# tmp793,
	call	strlen	#
	subl	$1, %eax	#, D.6965
	movl	%eax, %edx	# D.6965, D.6950
	movq	-8360(%rbp), %rax	# ainfo, tmp794
	movq	40(%rax), %rax	# ainfo_65->sqinfo, D.6956
	movl	-8432(%rbp), %ecx	# seqidx, tmp795
	movslq	%ecx, %rcx	# tmp795, D.6953
	imulq	$360, %rcx, %rcx	#, D.6953, D.6953
	subq	$360, %rcx	#, D.6960
	addq	%rcx, %rax	# D.6960, D.6956
	movq	344(%rax), %rax	# _402->ss, D.6951
	leaq	-8224(%rbp), %rcx	#, tmp796
	movl	-8416(%rbp), %esi	# currlen, tmp797
	movl	$46, (%rsp)	#,
	movl	%r12d, %r9d	# D.6950,
	movl	%ebx, %r8d	# D.6950,
	movq	%rax, %rdi	# D.6951,
	call	copy_alignment_line	#
	testl	%eax, %eax	# D.6950
	jne	.L77	#,
	.loc 1 410 0
	movl	$.LC28, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	jmp	.L77	#
.L80:
	.loc 1 414 0
	movq	-8384(%rbp), %rax	# nptr, tmp798
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# tmp798,
	call	strcmp	#
	testl	%eax, %eax	# D.6950
	jne	.L82	#,
	.loc 1 418 0
	movl	-8440(%rbp), %eax	# currblock, tmp799
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6953
	movq	-8392(%rbp), %rax	# blocks, tmp800
	addq	%rdx, %rax	# D.6953, D.6954
	.loc 1 416 0
	movl	4(%rax), %r12d	# _408->rcol, D.6950
	.loc 1 417 0
	movl	-8440(%rbp), %eax	# currblock, tmp801
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6953
	movq	-8392(%rbp), %rax	# blocks, tmp802
	addq	%rdx, %rax	# D.6953, D.6954
	.loc 1 416 0
	movl	(%rax), %ebx	# _412->lcol, D.6950
	movq	-8384(%rbp), %rax	# nptr, tmp803
	movq	%rax, %rdi	# tmp803,
	call	strlen	#
	subl	$1, %eax	#, D.6965
	movl	%eax, %edx	# D.6965, D.6950
	movq	-8360(%rbp), %rax	# ainfo, tmp804
	movq	40(%rax), %rax	# ainfo_65->sqinfo, D.6956
	movl	-8432(%rbp), %ecx	# seqidx, tmp805
	movslq	%ecx, %rcx	# tmp805, D.6953
	imulq	$360, %rcx, %rcx	#, D.6953, D.6953
	subq	$360, %rcx	#, D.6960
	addq	%rcx, %rax	# D.6960, D.6956
	movq	352(%rax), %rax	# _422->sa, D.6951
	leaq	-8224(%rbp), %rcx	#, tmp806
	movl	-8416(%rbp), %esi	# currlen, tmp807
	movl	$46, (%rsp)	#,
	movl	%r12d, %r9d	# D.6950,
	movl	%ebx, %r8d	# D.6950,
	movq	%rax, %rdi	# D.6951,
	call	copy_alignment_line	#
	testl	%eax, %eax	# D.6950
	jne	.L77	#,
	.loc 1 419 0
	movl	$.LC29, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	jmp	.L77	#
.L82:
	.loc 1 422 0
	movq	-8384(%rbp), %rax	# nptr, tmp808
	movl	$2, %edx	#,
	movl	$.LC30, %esi	#,
	movq	%rax, %rdi	# tmp808,
	call	strncmp	#
	testl	%eax, %eax	# D.6950
	je	.L77	#,
	.loc 1 425 0
	movl	-8440(%rbp), %eax	# currblock, tmp809
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6953
	movq	-8392(%rbp), %rax	# blocks, tmp810
	addq	%rdx, %rax	# D.6953, D.6954
	.loc 1 424 0
	movl	4(%rax), %r12d	# _428->rcol, D.6950
	.loc 1 425 0
	movl	-8440(%rbp), %eax	# currblock, tmp811
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6953
	movq	-8392(%rbp), %rax	# blocks, tmp812
	addq	%rdx, %rax	# D.6953, D.6954
	.loc 1 424 0
	movl	(%rax), %ebx	# _432->lcol, D.6950
	movq	-8384(%rbp), %rax	# nptr, tmp813
	movq	%rax, %rdi	# tmp813,
	call	strlen	#
	subl	$1, %eax	#, D.6965
	movl	%eax, %edx	# D.6965, D.6950
	movl	-8432(%rbp), %eax	# seqidx, tmp814
	cltq
	leaq	0(,%rax,8), %rcx	#, D.6953
	movq	-8352(%rbp), %rax	# aseqs, tmp815
	addq	%rcx, %rax	# D.6953, D.6961
	movq	(%rax), %rax	# *_440, D.6951
	leaq	-8224(%rbp), %rcx	#, tmp816
	movl	-8416(%rbp), %esi	# currlen, tmp817
	movl	$46, (%rsp)	#,
	movl	%r12d, %r9d	# D.6950,
	movl	%ebx, %r8d	# D.6950,
	movq	%rax, %rdi	# D.6951,
	call	copy_alignment_line	#
	testl	%eax, %eax	# D.6950
	jne	.L84	#,
	.loc 1 426 0
	movl	$.LC31, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L84:
	.loc 1 427 0
	addl	$1, -8432(%rbp)	#, seqidx
.L77:
	.loc 1 433 0
	movq	$0, -8384(%rbp)	#, nptr
	.loc 1 434 0
	movq	-8368(%rbp), %rdx	# fp, tmp818
	leaq	-8224(%rbp), %rax	#, tmp819
	movl	$4096, %esi	#,
	movq	%rax, %rdi	# tmp819,
	call	fgets	#
	testq	%rax, %rax	# D.6951
	jne	.L85	#,
	.loc 1 434 0 is_stmt 0 discriminator 1
	jmp	.L74	#
.L85:
	.loc 1 435 0 is_stmt 1
	leaq	-8224(%rbp), %rdx	#, tmp820
	leaq	-4128(%rbp), %rax	#, tmp821
	movq	%rdx, %rsi	# tmp820,
	movq	%rax, %rdi	# tmp821,
	call	strcpy	#
	.loc 1 436 0
	leaq	-4128(%rbp), %rax	#, tmp822
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp822,
	call	strtok	#
	movq	%rax, -8384(%rbp)	# tmp823, nptr
	cmpq	$0, -8384(%rbp)	#, nptr
	jne	.L86	#,
	.loc 1 436 0 is_stmt 0 discriminator 1
	jmp	.L74	#
.L86:
	.loc 1 437 0 is_stmt 1
	leaq	-8224(%rbp), %rax	#, tmp824
	movl	$2, %edx	#,
	movl	$.LC30, %esi	#,
	movq	%rax, %rdi	# tmp824,
	call	strncmp	#
	testl	%eax, %eax	# D.6950
	jne	.L87	#,
	.loc 1 437 0 is_stmt 0 discriminator 1
	jmp	.L74	#
.L87:
	.loc 1 438 0 is_stmt 1
	movq	-8384(%rbp), %rax	# nptr, tmp825
	movzbl	(%rax), %eax	# *nptr_446, D.6952
	movsbl	%al, %eax	# D.6952, D.6950
	movl	%eax, %esi	# D.6950,
	movl	$commentsyms, %edi	#,
	call	strchr	#
	testq	%rax, %rax	# D.6951
	jne	.L88	#,
	.loc 1 438 0 is_stmt 0 discriminator 1
	jmp	.L74	#
.L88:
	.loc 1 439 0 is_stmt 1
	jmp	.L77	#
.L74:
	.loc 1 387 0 discriminator 1
	cmpq	$0, -8384(%rbp)	#, nptr
	jne	.L89	#,
	.loc 1 442 0
	movl	-8440(%rbp), %eax	# currblock, tmp826
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6953
	movq	-8392(%rbp), %rax	# blocks, tmp827
	addq	%rdx, %rax	# D.6953, D.6954
	movl	4(%rax), %edx	# _453->rcol, D.6950
	movl	-8440(%rbp), %eax	# currblock, tmp828
	cltq
	leaq	0(,%rax,8), %rcx	#, D.6953
	movq	-8392(%rbp), %rax	# blocks, tmp829
	addq	%rcx, %rax	# D.6953, D.6954
	movl	(%rax), %eax	# _457->lcol, D.6950
	subl	%eax, %edx	# D.6950, D.6950
	movl	%edx, %eax	# D.6950, D.6950
	addl	$1, %eax	#, D.6950
	addl	%eax, -8416(%rbp)	# D.6950, currlen
.L95:
	.loc 1 447 0
	movq	-8368(%rbp), %rdx	# fp, tmp830
	leaq	-8224(%rbp), %rax	#, tmp831
	movl	$4096, %esi	#,
	movq	%rax, %rdi	# tmp831,
	call	fgets	#
	testq	%rax, %rax	# D.6951
	jne	.L90	#,
	.loc 1 447 0 is_stmt 0 discriminator 1
	jmp	.L91	#
.L90:
	.loc 1 448 0 is_stmt 1
	leaq	-8224(%rbp), %rdx	#, tmp832
	leaq	-4128(%rbp), %rax	#, tmp833
	movq	%rdx, %rsi	# tmp832,
	movq	%rax, %rdi	# tmp833,
	call	strcpy	#
	.loc 1 449 0
	leaq	-4128(%rbp), %rax	#, tmp834
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp834,
	call	strtok	#
	movq	%rax, -8384(%rbp)	# tmp835, nptr
	cmpq	$0, -8384(%rbp)	#, nptr
	jne	.L92	#,
	.loc 1 449 0 is_stmt 0 discriminator 1
	jmp	.L93	#
.L92:
	.loc 1 450 0 is_stmt 1
	leaq	-8224(%rbp), %rax	#, tmp836
	movl	$2, %edx	#,
	movl	$.LC30, %esi	#,
	movq	%rax, %rdi	# tmp836,
	call	strncmp	#
	testl	%eax, %eax	# D.6950
	jne	.L94	#,
	.loc 1 450 0 is_stmt 0 discriminator 1
	jmp	.L91	#
.L94:
	.loc 1 451 0 is_stmt 1
	movq	-8384(%rbp), %rax	# nptr, tmp837
	movzbl	(%rax), %eax	# *nptr_463, D.6952
	movsbl	%al, %eax	# D.6952, D.6950
	movl	%eax, %esi	# D.6950,
	movl	$commentsyms, %edi	#,
	call	strchr	#
	testq	%rax, %rax	# D.6951
	jne	.L93	#,
	.loc 1 451 0 is_stmt 0 discriminator 1
	jmp	.L91	#
.L93:
	.loc 1 452 0 is_stmt 1
	jmp	.L95	#
.L91:
	.loc 1 383 0
	addl	$1, -8440(%rbp)	#, currblock
.L73:
	.loc 1 383 0 is_stmt 0 discriminator 1
	movl	-8440(%rbp), %eax	# currblock, tmp838
	cmpl	-8448(%rbp), %eax	# blocknum, tmp838
	jl	.L96	#,
	.loc 1 459 0 is_stmt 1
	movl	$0, -8432(%rbp)	#, seqidx
	jmp	.L97	#
.L106:
.LBB2:
	.loc 1 463 0
	movq	-8360(%rbp), %rax	# ainfo, tmp839
	movq	40(%rax), %rdx	# ainfo_65->sqinfo, D.6956
	movl	-8432(%rbp), %eax	# seqidx, tmp840
	cltq
	imulq	$360, %rax, %rax	#, D.6953, D.6953
	addq	%rdx, %rax	# D.6956, D.6956
	movl	(%rax), %eax	# _473->flags, D.6950
	andl	$512, %eax	#, D.6950
	testl	%eax, %eax	# D.6950
	je	.L98	#,
	.loc 1 465 0
	movl	$0, -8396(%rbp)	#, rpos
	movl	-8396(%rbp), %eax	# rpos, tmp841
	movl	%eax, -8400(%rbp)	# tmp841, apos
	jmp	.L99	#
.L101:
	.loc 1 466 0
	movl	-8432(%rbp), %eax	# seqidx, tmp842
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6953
	movq	-8352(%rbp), %rax	# aseqs, tmp843
	addq	%rdx, %rax	# D.6953, D.6961
	movq	(%rax), %rdx	# *_480, D.6951
	movl	-8400(%rbp), %eax	# apos, tmp844
	cltq
	addq	%rdx, %rax	# D.6951, D.6951
	movzbl	(%rax), %eax	# *_483, D.6952
	cmpb	$32, %al	#, D.6952
	je	.L100	#,
	.loc 1 466 0 is_stmt 0 discriminator 1
	movl	-8432(%rbp), %eax	# seqidx, tmp845
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6953
	movq	-8352(%rbp), %rax	# aseqs, tmp846
	addq	%rdx, %rax	# D.6953, D.6961
	movq	(%rax), %rdx	# *_487, D.6951
	movl	-8400(%rbp), %eax	# apos, tmp847
	cltq
	addq	%rdx, %rax	# D.6951, D.6951
	movzbl	(%rax), %eax	# *_490, D.6952
	cmpb	$46, %al	#, D.6952
	je	.L100	#,
	movl	-8432(%rbp), %eax	# seqidx, tmp848
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6953
	movq	-8352(%rbp), %rax	# aseqs, tmp849
	addq	%rdx, %rax	# D.6953, D.6961
	movq	(%rax), %rdx	# *_494, D.6951
	movl	-8400(%rbp), %eax	# apos, tmp850
	cltq
	addq	%rdx, %rax	# D.6951, D.6951
	movzbl	(%rax), %eax	# *_497, D.6952
	cmpb	$95, %al	#, D.6952
	je	.L100	#,
	movl	-8432(%rbp), %eax	# seqidx, tmp851
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6953
	movq	-8352(%rbp), %rax	# aseqs, tmp852
	addq	%rdx, %rax	# D.6953, D.6961
	movq	(%rax), %rdx	# *_501, D.6951
	movl	-8400(%rbp), %eax	# apos, tmp853
	cltq
	addq	%rdx, %rax	# D.6951, D.6951
	movzbl	(%rax), %eax	# *_504, D.6952
	cmpb	$45, %al	#, D.6952
	je	.L100	#,
	movl	-8432(%rbp), %eax	# seqidx, tmp854
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6953
	movq	-8352(%rbp), %rax	# aseqs, tmp855
	addq	%rdx, %rax	# D.6953, D.6961
	movq	(%rax), %rdx	# *_508, D.6951
	movl	-8400(%rbp), %eax	# apos, tmp856
	cltq
	addq	%rdx, %rax	# D.6951, D.6951
	movzbl	(%rax), %eax	# *_511, D.6952
	cmpb	$126, %al	#, D.6952
	je	.L100	#,
	.loc 1 468 0 is_stmt 1
	movq	-8360(%rbp), %rax	# ainfo, tmp857
	movq	40(%rax), %rdx	# ainfo_65->sqinfo, D.6956
	movl	-8432(%rbp), %eax	# seqidx, tmp858
	cltq
	imulq	$360, %rax, %rax	#, D.6953, D.6953
	addq	%rdx, %rax	# D.6956, D.6956
	movq	344(%rax), %rdx	# _516->ss, D.6951
	movl	-8396(%rbp), %eax	# rpos, tmp859
	cltq
	addq	%rax, %rdx	# D.6960, D.6951
	movq	-8360(%rbp), %rax	# ainfo, tmp860
	movq	40(%rax), %rcx	# ainfo_65->sqinfo, D.6956
	movl	-8432(%rbp), %eax	# seqidx, tmp861
	cltq
	imulq	$360, %rax, %rax	#, D.6953, D.6953
	addq	%rcx, %rax	# D.6956, D.6956
	movq	344(%rax), %rcx	# _523->ss, D.6951
	movl	-8400(%rbp), %eax	# apos, tmp862
	cltq
	addq	%rcx, %rax	# D.6951, D.6951
	movzbl	(%rax), %eax	# *_526, D.6952
	movb	%al, (%rdx)	# D.6952, *_519
	.loc 1 469 0
	addl	$1, -8396(%rbp)	#, rpos
.L100:
	.loc 1 465 0
	addl	$1, -8400(%rbp)	#, apos
.L99:
	.loc 1 465 0 is_stmt 0 discriminator 1
	movl	-8400(%rbp), %eax	# apos, tmp863
	cmpl	-8428(%rbp), %eax	# alen, tmp863
	jl	.L101	#,
	.loc 1 471 0 is_stmt 1
	movq	-8360(%rbp), %rax	# ainfo, tmp864
	movq	40(%rax), %rdx	# ainfo_65->sqinfo, D.6956
	movl	-8432(%rbp), %eax	# seqidx, tmp865
	cltq
	imulq	$360, %rax, %rax	#, D.6953, D.6953
	addq	%rdx, %rax	# D.6956, D.6956
	movq	344(%rax), %rdx	# _533->ss, D.6951
	movl	-8396(%rbp), %eax	# rpos, tmp866
	cltq
	addq	%rdx, %rax	# D.6951, D.6951
	movb	$0, (%rax)	#, *_536
.L98:
	.loc 1 474 0
	movq	-8360(%rbp), %rax	# ainfo, tmp867
	movq	40(%rax), %rdx	# ainfo_65->sqinfo, D.6956
	movl	-8432(%rbp), %eax	# seqidx, tmp868
	cltq
	imulq	$360, %rax, %rax	#, D.6953, D.6953
	addq	%rdx, %rax	# D.6956, D.6956
	movl	(%rax), %eax	# _540->flags, D.6950
	andl	$1024, %eax	#, D.6950
	testl	%eax, %eax	# D.6950
	je	.L102	#,
	.loc 1 476 0
	movl	$0, -8396(%rbp)	#, rpos
	movl	-8396(%rbp), %eax	# rpos, tmp869
	movl	%eax, -8400(%rbp)	# tmp869, apos
	jmp	.L103	#
.L105:
	.loc 1 477 0
	movl	-8432(%rbp), %eax	# seqidx, tmp870
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6953
	movq	-8352(%rbp), %rax	# aseqs, tmp871
	addq	%rdx, %rax	# D.6953, D.6961
	movq	(%rax), %rdx	# *_547, D.6951
	movl	-8400(%rbp), %eax	# apos, tmp872
	cltq
	addq	%rdx, %rax	# D.6951, D.6951
	movzbl	(%rax), %eax	# *_550, D.6952
	cmpb	$32, %al	#, D.6952
	je	.L104	#,
	.loc 1 477 0 is_stmt 0 discriminator 1
	movl	-8432(%rbp), %eax	# seqidx, tmp873
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6953
	movq	-8352(%rbp), %rax	# aseqs, tmp874
	addq	%rdx, %rax	# D.6953, D.6961
	movq	(%rax), %rdx	# *_554, D.6951
	movl	-8400(%rbp), %eax	# apos, tmp875
	cltq
	addq	%rdx, %rax	# D.6951, D.6951
	movzbl	(%rax), %eax	# *_557, D.6952
	cmpb	$46, %al	#, D.6952
	je	.L104	#,
	movl	-8432(%rbp), %eax	# seqidx, tmp876
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6953
	movq	-8352(%rbp), %rax	# aseqs, tmp877
	addq	%rdx, %rax	# D.6953, D.6961
	movq	(%rax), %rdx	# *_561, D.6951
	movl	-8400(%rbp), %eax	# apos, tmp878
	cltq
	addq	%rdx, %rax	# D.6951, D.6951
	movzbl	(%rax), %eax	# *_564, D.6952
	cmpb	$95, %al	#, D.6952
	je	.L104	#,
	movl	-8432(%rbp), %eax	# seqidx, tmp879
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6953
	movq	-8352(%rbp), %rax	# aseqs, tmp880
	addq	%rdx, %rax	# D.6953, D.6961
	movq	(%rax), %rdx	# *_568, D.6951
	movl	-8400(%rbp), %eax	# apos, tmp881
	cltq
	addq	%rdx, %rax	# D.6951, D.6951
	movzbl	(%rax), %eax	# *_571, D.6952
	cmpb	$45, %al	#, D.6952
	je	.L104	#,
	movl	-8432(%rbp), %eax	# seqidx, tmp882
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6953
	movq	-8352(%rbp), %rax	# aseqs, tmp883
	addq	%rdx, %rax	# D.6953, D.6961
	movq	(%rax), %rdx	# *_575, D.6951
	movl	-8400(%rbp), %eax	# apos, tmp884
	cltq
	addq	%rdx, %rax	# D.6951, D.6951
	movzbl	(%rax), %eax	# *_578, D.6952
	cmpb	$126, %al	#, D.6952
	je	.L104	#,
	.loc 1 479 0 is_stmt 1
	movq	-8360(%rbp), %rax	# ainfo, tmp885
	movq	40(%rax), %rdx	# ainfo_65->sqinfo, D.6956
	movl	-8432(%rbp), %eax	# seqidx, tmp886
	cltq
	imulq	$360, %rax, %rax	#, D.6953, D.6953
	addq	%rdx, %rax	# D.6956, D.6956
	movq	352(%rax), %rdx	# _583->sa, D.6951
	movl	-8396(%rbp), %eax	# rpos, tmp887
	cltq
	addq	%rax, %rdx	# D.6960, D.6951
	movq	-8360(%rbp), %rax	# ainfo, tmp888
	movq	40(%rax), %rcx	# ainfo_65->sqinfo, D.6956
	movl	-8432(%rbp), %eax	# seqidx, tmp889
	cltq
	imulq	$360, %rax, %rax	#, D.6953, D.6953
	addq	%rcx, %rax	# D.6956, D.6956
	movq	352(%rax), %rcx	# _590->sa, D.6951
	movl	-8400(%rbp), %eax	# apos, tmp890
	cltq
	addq	%rcx, %rax	# D.6951, D.6951
	movzbl	(%rax), %eax	# *_593, D.6952
	movb	%al, (%rdx)	# D.6952, *_586
	.loc 1 480 0
	addl	$1, -8396(%rbp)	#, rpos
.L104:
	.loc 1 476 0
	addl	$1, -8400(%rbp)	#, apos
.L103:
	.loc 1 476 0 is_stmt 0 discriminator 1
	movl	-8400(%rbp), %eax	# apos, tmp891
	cmpl	-8428(%rbp), %eax	# alen, tmp891
	jl	.L105	#,
	.loc 1 482 0 is_stmt 1
	movq	-8360(%rbp), %rax	# ainfo, tmp892
	movq	40(%rax), %rdx	# ainfo_65->sqinfo, D.6956
	movl	-8432(%rbp), %eax	# seqidx, tmp893
	cltq
	imulq	$360, %rax, %rax	#, D.6953, D.6953
	addq	%rdx, %rax	# D.6956, D.6956
	movq	352(%rax), %rdx	# _600->sa, D.6951
	movl	-8396(%rbp), %eax	# rpos, tmp894
	cltq
	addq	%rdx, %rax	# D.6951, D.6951
	movb	$0, (%rax)	#, *_603
.L102:
.LBE2:
	.loc 1 459 0
	addl	$1, -8432(%rbp)	#, seqidx
.L97:
	.loc 1 459 0 is_stmt 0 discriminator 1
	movl	-8432(%rbp), %eax	# seqidx, tmp895
	cmpl	-8452(%rbp), %eax	# num, tmp895
	jl	.L106	#,
	.loc 1 487 0 is_stmt 1
	movq	-8360(%rbp), %rax	# ainfo, tmp896
	movq	32(%rax), %rax	# ainfo_65->rf, D.6951
	testq	%rax, %rax	# D.6951
	je	.L107	#,
	.loc 1 487 0 is_stmt 0 discriminator 1
	movq	-8360(%rbp), %rax	# ainfo, tmp897
	movq	32(%rax), %rdx	# ainfo_65->rf, D.6951
	movl	-8428(%rbp), %eax	# alen, tmp898
	cltq
	addq	%rdx, %rax	# D.6951, D.6951
	movb	$0, (%rax)	#, *_608
.L107:
	.loc 1 488 0 is_stmt 1
	movq	-8360(%rbp), %rax	# ainfo, tmp899
	movq	24(%rax), %rax	# ainfo_65->cs, D.6951
	testq	%rax, %rax	# D.6951
	je	.L108	#,
	.loc 1 488 0 is_stmt 0 discriminator 1
	movq	-8360(%rbp), %rax	# ainfo, tmp900
	movq	24(%rax), %rdx	# ainfo_65->cs, D.6951
	movl	-8428(%rbp), %eax	# alen, tmp901
	cltq
	addq	%rdx, %rax	# D.6951, D.6951
	movb	$0, (%rax)	#, *_612
.L108:
	.loc 1 489 0 is_stmt 1
	movl	$0, -8432(%rbp)	#, seqidx
	jmp	.L109	#
.L110:
	.loc 1 490 0 discriminator 2
	movl	-8432(%rbp), %eax	# seqidx, tmp902
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6953
	movq	-8352(%rbp), %rax	# aseqs, tmp903
	addq	%rdx, %rax	# D.6953, D.6961
	movq	(%rax), %rdx	# *_616, D.6951
	movl	-8428(%rbp), %eax	# alen, tmp904
	cltq
	addq	%rdx, %rax	# D.6951, D.6951
	movb	$0, (%rax)	#, *_619
	.loc 1 489 0 discriminator 2
	addl	$1, -8432(%rbp)	#, seqidx
.L109:
	.loc 1 489 0 is_stmt 0 discriminator 1
	movl	-8432(%rbp), %eax	# seqidx, tmp905
	cmpl	-8452(%rbp), %eax	# num, tmp905
	jl	.L110	#,
	.loc 1 493 0 is_stmt 1
	movl	$0, -8432(%rbp)	#, seqidx
	jmp	.L111	#
.L115:
	.loc 1 495 0
	movl	$0, -8412(%rbp)	#, count
	.loc 1 496 0
	movl	-8432(%rbp), %eax	# seqidx, tmp906
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6953
	movq	-8352(%rbp), %rax	# aseqs, tmp907
	addq	%rdx, %rax	# D.6953, D.6961
	movq	(%rax), %rax	# *_625, tmp908
	movq	%rax, -8376(%rbp)	# tmp908, sptr
	jmp	.L112	#
.L114:
	.loc 1 497 0
	movq	-8376(%rbp), %rax	# sptr, tmp909
	movzbl	(%rax), %eax	# *sptr_13, D.6952
	cmpb	$32, %al	#, D.6952
	je	.L113	#,
	.loc 1 497 0 is_stmt 0 discriminator 1
	movq	-8376(%rbp), %rax	# sptr, tmp910
	movzbl	(%rax), %eax	# *sptr_13, D.6952
	cmpb	$46, %al	#, D.6952
	je	.L113	#,
	movq	-8376(%rbp), %rax	# sptr, tmp911
	movzbl	(%rax), %eax	# *sptr_13, D.6952
	cmpb	$95, %al	#, D.6952
	je	.L113	#,
	movq	-8376(%rbp), %rax	# sptr, tmp912
	movzbl	(%rax), %eax	# *sptr_13, D.6952
	cmpb	$45, %al	#, D.6952
	je	.L113	#,
	movq	-8376(%rbp), %rax	# sptr, tmp913
	movzbl	(%rax), %eax	# *sptr_13, D.6952
	cmpb	$126, %al	#, D.6952
	je	.L113	#,
	addl	$1, -8412(%rbp)	#, count
.L113:
	.loc 1 496 0 is_stmt 1
	addq	$1, -8376(%rbp)	#, sptr
.L112:
	.loc 1 496 0 is_stmt 0 discriminator 1
	movq	-8376(%rbp), %rax	# sptr, tmp914
	movzbl	(%rax), %eax	# *sptr_13, D.6952
	testb	%al, %al	# D.6952
	jne	.L114	#,
	.loc 1 498 0 is_stmt 1
	movq	-8360(%rbp), %rax	# ainfo, tmp915
	movq	40(%rax), %rdx	# ainfo_65->sqinfo, D.6956
	movl	-8432(%rbp), %eax	# seqidx, tmp916
	cltq
	imulq	$360, %rax, %rax	#, D.6953, D.6953
	addq	%rax, %rdx	# D.6953, D.6956
	movl	-8412(%rbp), %eax	# count, tmp917
	movl	%eax, 324(%rdx)	# tmp917, _638->len
	.loc 1 499 0
	movq	-8360(%rbp), %rax	# ainfo, tmp918
	movq	40(%rax), %rdx	# ainfo_65->sqinfo, D.6956
	movl	-8432(%rbp), %eax	# seqidx, tmp919
	cltq
	imulq	$360, %rax, %rax	#, D.6953, D.6953
	addq	%rax, %rdx	# D.6953, D.6956
	movq	-8360(%rbp), %rax	# ainfo, tmp920
	movq	40(%rax), %rcx	# ainfo_65->sqinfo, D.6956
	movl	-8432(%rbp), %eax	# seqidx, tmp921
	cltq
	imulq	$360, %rax, %rax	#, D.6953, D.6953
	addq	%rcx, %rax	# D.6956, D.6956
	movl	(%rax), %eax	# _646->flags, D.6950
	orl	$64, %eax	#, D.6950
	movl	%eax, (%rdx)	# D.6950, _642->flags
	.loc 1 493 0
	addl	$1, -8432(%rbp)	#, seqidx
.L111:
	.loc 1 493 0 is_stmt 0 discriminator 1
	movl	-8432(%rbp), %eax	# seqidx, tmp922
	cmpl	-8452(%rbp), %eax	# num, tmp922
	jl	.L115	#,
	.loc 1 506 0 is_stmt 1
	movq	-8392(%rbp), %rax	# blocks, tmp923
	movq	%rax, %rdi	# tmp923,
	call	free	#
	.loc 1 507 0
	cmpl	$0, -8424(%rbp)	#, warn_names
	je	.L116	#,
	.loc 1 508 0
	movq	-8472(%rbp), %rax	# afp, tmp924
	movq	8(%rax), %rax	# afp_58(D)->fname, D.6951
	movq	%rax, %rsi	# D.6951,
	movl	$.LC32, %edi	#,
	movl	$0, %eax	#,
	call	Warn	#
.L116:
	.loc 1 512 0
	movq	-8360(%rbp), %rdx	# ainfo, tmp925
	movq	-8352(%rbp), %rax	# aseqs, tmp926
	movq	%rdx, %rsi	# tmp925,
	movq	%rax, %rdi	# tmp926,
	call	MSAFromAINFO	#
	movq	%rax, -8344(%rbp)	# tmp927, msa
	.loc 1 513 0
	movq	-8344(%rbp), %rax	# msa, tmp928
	movq	%rax, %rdi	# tmp928,
	call	MSAVerifyParse	#
	.loc 1 514 0
	movq	-8360(%rbp), %rdx	# ainfo, tmp929
	movq	-8352(%rbp), %rax	# aseqs, tmp930
	movq	%rdx, %rsi	# tmp929,
	movq	%rax, %rdi	# tmp930,
	call	FreeAlignment	#
	.loc 1 515 0
	movq	-8344(%rbp), %rax	# msa, D.6948
.L117:
	.loc 1 516 0
	movq	-24(%rbp), %rbx	# D.6966, tmp933
	xorq	%fs:40, %rbx	#, tmp933
	je	.L118	#,
	call	__stack_chk_fail	#
.L118:
	addq	$8464, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	ReadSELEX, .-ReadSELEX
	.globl	WriteSELEX
	.type	WriteSELEX, @function
WriteSELEX:
.LFB3:
	.loc 1 531 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# fp, fp
	movq	%rsi, -16(%rbp)	# msa, msa
	.loc 1 532 0
	movq	-16(%rbp), %rcx	# msa, tmp59
	movq	-8(%rbp), %rax	# fp, tmp60
	movl	$50, %edx	#,
	movq	%rcx, %rsi	# tmp59,
	movq	%rax, %rdi	# tmp60,
	call	actually_write_selex	#
	.loc 1 533 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	WriteSELEX, .-WriteSELEX
	.globl	WriteSELEXOneBlock
	.type	WriteSELEXOneBlock, @function
WriteSELEXOneBlock:
.LFB4:
	.loc 1 548 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# fp, fp
	movq	%rsi, -16(%rbp)	# msa, msa
	.loc 1 549 0
	movq	-16(%rbp), %rax	# msa, tmp60
	movl	24(%rax), %edx	# msa_1(D)->alen, D.7001
	movq	-16(%rbp), %rcx	# msa, tmp61
	movq	-8(%rbp), %rax	# fp, tmp62
	movq	%rcx, %rsi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	actually_write_selex	#
	.loc 1 550 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	WriteSELEXOneBlock, .-WriteSELEXOneBlock
	.section	.rodata
.LC33:
	.string	"# %s\n"
.LC34:
	.string	"#=ID %s\n"
.LC35:
	.string	"#=AC %s\n"
.LC36:
	.string	"#=DE %s\n"
.LC37:
	.string	"#=AU %s\n"
.LC38:
	.string	"#=GA %.1f %.1f\n"
.LC39:
	.string	"#=GA %.1f\n"
.LC40:
	.string	"#=NC %.1f %.1f\n"
.LC41:
	.string	"#=NC %.1f\n"
.LC42:
	.string	"#=TC %.1f %.1f\n"
.LC43:
	.string	"#=TC %.1f\n"
.LC44:
	.string	"-"
	.align 8
.LC45:
	.string	"#=SQ %-*.*s %6.4f %s %s %d..%d::%d %s\n"
.LC46:
	.string	"%-*.*s %s\n"
	.text
	.type	actually_write_selex, @function
actually_write_selex:
.LFB5:
	.loc 1 569 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -40(%rbp)	# fp, fp
	movq	%rsi, -48(%rbp)	# msa, msa
	movl	%edx, -52(%rbp)	# cpl, cpl
	.loc 1 571 0
	movl	$0, -12(%rbp)	#, len
	.loc 1 576 0
	movl	-52(%rbp), %eax	# cpl, tmp207
	addl	$101, %eax	#, D.7002
	cltq
	movq	%rax, %rdi	# D.7003,
	call	malloc	#
	movq	%rax, -8(%rbp)	# tmp208, buf
	.loc 1 583 0
	movl	$0, -20(%rbp)	#, namewidth
	.loc 1 584 0
	movl	$0, -24(%rbp)	#, i
	jmp	.L122	#
.L124:
	.loc 1 585 0
	movq	-48(%rbp), %rax	# msa, tmp209
	movq	8(%rax), %rax	# msa_18(D)->sqname, D.7004
	movl	-24(%rbp), %edx	# i, tmp210
	movslq	%edx, %rdx	# tmp210, D.7003
	salq	$3, %rdx	#, D.7003
	addq	%rdx, %rax	# D.7003, D.7004
	movq	(%rax), %rax	# *_23, D.7005
	movq	%rax, %rdi	# D.7005,
	call	strlen	#
	movl	%eax, -12(%rbp)	# D.7003, len
	movl	-12(%rbp), %eax	# len, tmp211
	cmpl	-20(%rbp), %eax	# namewidth, tmp211
	jle	.L123	#,
	.loc 1 586 0
	movl	-12(%rbp), %eax	# len, tmp212
	movl	%eax, -20(%rbp)	# tmp212, namewidth
.L123:
	.loc 1 584 0
	addl	$1, -24(%rbp)	#, i
.L122:
	.loc 1 584 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# msa, tmp213
	movl	28(%rax), %eax	# msa_18(D)->nseq, D.7002
	cmpl	-24(%rbp), %eax	# i, D.7002
	jg	.L124	#,
	.loc 1 587 0 is_stmt 1
	cmpl	$5, -20(%rbp)	#, namewidth
	jg	.L125	#,
	.loc 1 587 0 is_stmt 0 discriminator 1
	movl	$6, -20(%rbp)	#, namewidth
.L125:
	.loc 1 591 0 is_stmt 1
	movl	$0, -24(%rbp)	#, i
	jmp	.L126	#
.L127:
	.loc 1 592 0 discriminator 2
	movq	-48(%rbp), %rax	# msa, tmp214
	movq	176(%rax), %rax	# msa_18(D)->comment, D.7004
	movl	-24(%rbp), %edx	# i, tmp215
	movslq	%edx, %rdx	# tmp215, D.7003
	salq	$3, %rdx	#, D.7003
	addq	%rdx, %rax	# D.7003, D.7004
	movq	(%rax), %rdx	# *_35, D.7005
	movq	-40(%rbp), %rax	# fp, tmp216
	movl	$.LC33, %esi	#,
	movq	%rax, %rdi	# tmp216,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 591 0 discriminator 2
	addl	$1, -24(%rbp)	#, i
.L126:
	.loc 1 591 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# msa, tmp217
	movl	184(%rax), %eax	# msa_18(D)->ncomment, D.7002
	cmpl	-24(%rbp), %eax	# i, D.7002
	jg	.L127	#,
	.loc 1 593 0 is_stmt 1
	movq	-48(%rbp), %rax	# msa, tmp218
	movl	184(%rax), %eax	# msa_18(D)->ncomment, D.7002
	testl	%eax, %eax	# D.7002
	jle	.L128	#,
	.loc 1 593 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# fp, tmp219
	movq	%rax, %rsi	# tmp219,
	movl	$10, %edi	#,
	call	fputc	#
.L128:
	.loc 1 597 0 is_stmt 1
	movq	-48(%rbp), %rax	# msa, tmp220
	movq	40(%rax), %rax	# msa_18(D)->name, D.7005
	testq	%rax, %rax	# D.7005
	je	.L129	#,
	.loc 1 597 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# msa, tmp221
	movq	40(%rax), %rdx	# msa_18(D)->name, D.7005
	movq	-40(%rbp), %rax	# fp, tmp222
	movl	$.LC34, %esi	#,
	movq	%rax, %rdi	# tmp222,
	movl	$0, %eax	#,
	call	fprintf	#
.L129:
	.loc 1 598 0 is_stmt 1
	movq	-48(%rbp), %rax	# msa, tmp223
	movq	56(%rax), %rax	# msa_18(D)->acc, D.7005
	testq	%rax, %rax	# D.7005
	je	.L130	#,
	.loc 1 598 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# msa, tmp224
	movq	56(%rax), %rdx	# msa_18(D)->acc, D.7005
	movq	-40(%rbp), %rax	# fp, tmp225
	movl	$.LC35, %esi	#,
	movq	%rax, %rdi	# tmp225,
	movl	$0, %eax	#,
	call	fprintf	#
.L130:
	.loc 1 599 0 is_stmt 1
	movq	-48(%rbp), %rax	# msa, tmp226
	movq	48(%rax), %rax	# msa_18(D)->desc, D.7005
	testq	%rax, %rax	# D.7005
	je	.L131	#,
	.loc 1 599 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# msa, tmp227
	movq	48(%rax), %rdx	# msa_18(D)->desc, D.7005
	movq	-40(%rbp), %rax	# fp, tmp228
	movl	$.LC36, %esi	#,
	movq	%rax, %rdi	# tmp228,
	movl	$0, %eax	#,
	call	fprintf	#
.L131:
	.loc 1 600 0 is_stmt 1
	movq	-48(%rbp), %rax	# msa, tmp229
	movq	64(%rax), %rax	# msa_18(D)->au, D.7005
	testq	%rax, %rax	# D.7005
	je	.L132	#,
	.loc 1 600 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# msa, tmp230
	movq	64(%rax), %rdx	# msa_18(D)->au, D.7005
	movq	-40(%rbp), %rax	# fp, tmp231
	movl	$.LC37, %esi	#,
	movq	%rax, %rdi	# tmp231,
	movl	$0, %eax	#,
	call	fprintf	#
.L132:
	.loc 1 604 0 is_stmt 1
	movq	-48(%rbp), %rax	# msa, tmp232
	movl	160(%rax), %eax	# msa_18(D)->cutoff_is_set, D.7002
	testl	%eax, %eax	# D.7002
	je	.L133	#,
	.loc 1 604 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# msa, tmp233
	movl	164(%rax), %eax	# msa_18(D)->cutoff_is_set, D.7002
	testl	%eax, %eax	# D.7002
	je	.L133	#,
	.loc 1 605 0 is_stmt 1
	movq	-48(%rbp), %rax	# msa, tmp234
	movss	140(%rax), %xmm0	# msa_18(D)->cutoff, D.7006
	unpcklps	%xmm0, %xmm0	# D.7006, D.7006
	cvtps2pd	%xmm0, %xmm1	# D.7006, D.7007
	movq	-48(%rbp), %rax	# msa, tmp235
	movss	136(%rax), %xmm0	# msa_18(D)->cutoff, D.7006
	unpcklps	%xmm0, %xmm0	# D.7006, D.7006
	cvtps2pd	%xmm0, %xmm0	# D.7006, D.7007
	movq	-40(%rbp), %rax	# fp, tmp236
	movl	$.LC38, %esi	#,
	movq	%rax, %rdi	# tmp236,
	movl	$2, %eax	#,
	call	fprintf	#
	jmp	.L134	#
.L133:
	.loc 1 606 0
	movq	-48(%rbp), %rax	# msa, tmp237
	movl	160(%rax), %eax	# msa_18(D)->cutoff_is_set, D.7002
	testl	%eax, %eax	# D.7002
	je	.L134	#,
	.loc 1 607 0
	movq	-48(%rbp), %rax	# msa, tmp238
	movss	136(%rax), %xmm0	# msa_18(D)->cutoff, D.7006
	unpcklps	%xmm0, %xmm0	# D.7006, D.7006
	cvtps2pd	%xmm0, %xmm0	# D.7006, D.7007
	movq	-40(%rbp), %rax	# fp, tmp239
	movl	$.LC39, %esi	#,
	movq	%rax, %rdi	# tmp239,
	movl	$1, %eax	#,
	call	fprintf	#
.L134:
	.loc 1 608 0
	movq	-48(%rbp), %rax	# msa, tmp240
	movl	168(%rax), %eax	# msa_18(D)->cutoff_is_set, D.7002
	testl	%eax, %eax	# D.7002
	je	.L135	#,
	.loc 1 608 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# msa, tmp241
	movl	172(%rax), %eax	# msa_18(D)->cutoff_is_set, D.7002
	testl	%eax, %eax	# D.7002
	je	.L135	#,
	.loc 1 609 0 is_stmt 1
	movq	-48(%rbp), %rax	# msa, tmp242
	movss	148(%rax), %xmm0	# msa_18(D)->cutoff, D.7006
	unpcklps	%xmm0, %xmm0	# D.7006, D.7006
	cvtps2pd	%xmm0, %xmm1	# D.7006, D.7007
	movq	-48(%rbp), %rax	# msa, tmp243
	movss	144(%rax), %xmm0	# msa_18(D)->cutoff, D.7006
	unpcklps	%xmm0, %xmm0	# D.7006, D.7006
	cvtps2pd	%xmm0, %xmm0	# D.7006, D.7007
	movq	-40(%rbp), %rax	# fp, tmp244
	movl	$.LC40, %esi	#,
	movq	%rax, %rdi	# tmp244,
	movl	$2, %eax	#,
	call	fprintf	#
	jmp	.L136	#
.L135:
	.loc 1 610 0
	movq	-48(%rbp), %rax	# msa, tmp245
	movl	168(%rax), %eax	# msa_18(D)->cutoff_is_set, D.7002
	testl	%eax, %eax	# D.7002
	je	.L136	#,
	.loc 1 611 0
	movq	-48(%rbp), %rax	# msa, tmp246
	movss	144(%rax), %xmm0	# msa_18(D)->cutoff, D.7006
	unpcklps	%xmm0, %xmm0	# D.7006, D.7006
	cvtps2pd	%xmm0, %xmm0	# D.7006, D.7007
	movq	-40(%rbp), %rax	# fp, tmp247
	movl	$.LC41, %esi	#,
	movq	%rax, %rdi	# tmp247,
	movl	$1, %eax	#,
	call	fprintf	#
.L136:
	.loc 1 612 0
	movq	-48(%rbp), %rax	# msa, tmp248
	movl	152(%rax), %eax	# msa_18(D)->cutoff_is_set, D.7002
	testl	%eax, %eax	# D.7002
	je	.L137	#,
	.loc 1 612 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# msa, tmp249
	movl	156(%rax), %eax	# msa_18(D)->cutoff_is_set, D.7002
	testl	%eax, %eax	# D.7002
	je	.L137	#,
	.loc 1 613 0 is_stmt 1
	movq	-48(%rbp), %rax	# msa, tmp250
	movss	132(%rax), %xmm0	# msa_18(D)->cutoff, D.7006
	unpcklps	%xmm0, %xmm0	# D.7006, D.7006
	cvtps2pd	%xmm0, %xmm1	# D.7006, D.7007
	movq	-48(%rbp), %rax	# msa, tmp251
	movss	128(%rax), %xmm0	# msa_18(D)->cutoff, D.7006
	unpcklps	%xmm0, %xmm0	# D.7006, D.7006
	cvtps2pd	%xmm0, %xmm0	# D.7006, D.7007
	movq	-40(%rbp), %rax	# fp, tmp252
	movl	$.LC42, %esi	#,
	movq	%rax, %rdi	# tmp252,
	movl	$2, %eax	#,
	call	fprintf	#
	jmp	.L138	#
.L137:
	.loc 1 614 0
	movq	-48(%rbp), %rax	# msa, tmp253
	movl	152(%rax), %eax	# msa_18(D)->cutoff_is_set, D.7002
	testl	%eax, %eax	# D.7002
	je	.L138	#,
	.loc 1 615 0
	movq	-48(%rbp), %rax	# msa, tmp254
	movss	128(%rax), %xmm0	# msa_18(D)->cutoff, D.7006
	unpcklps	%xmm0, %xmm0	# D.7006, D.7006
	cvtps2pd	%xmm0, %xmm0	# D.7006, D.7007
	movq	-40(%rbp), %rax	# fp, tmp255
	movl	$.LC43, %esi	#,
	movq	%rax, %rdi	# tmp255,
	movl	$1, %eax	#,
	call	fprintf	#
.L138:
	.loc 1 619 0
	movl	$0, -24(%rbp)	#, i
	jmp	.L139	#
.L144:
	.loc 1 626 0
	movq	-48(%rbp), %rax	# msa, tmp256
	movq	104(%rax), %rax	# msa_18(D)->sqdesc, D.7004
	.loc 1 620 0
	testq	%rax, %rax	# D.7004
	je	.L140	#,
	.loc 1 626 0
	movq	-48(%rbp), %rax	# msa, tmp257
	movq	104(%rax), %rax	# msa_18(D)->sqdesc, D.7004
	movl	-24(%rbp), %edx	# i, tmp258
	movslq	%edx, %rdx	# tmp258, D.7003
	salq	$3, %rdx	#, D.7003
	addq	%rdx, %rax	# D.7003, D.7004
	movq	(%rax), %rax	# *_81, D.7005
	testq	%rax, %rax	# D.7005
	je	.L140	#,
	.loc 1 626 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# msa, tmp259
	movq	104(%rax), %rax	# msa_18(D)->sqdesc, D.7004
	movl	-24(%rbp), %edx	# i, tmp260
	movslq	%edx, %rdx	# tmp260, D.7003
	salq	$3, %rdx	#, D.7003
	addq	%rdx, %rax	# D.7003, D.7004
	.loc 1 620 0 is_stmt 1 discriminator 1
	movq	(%rax), %rdx	# *_86, iftmp.8
	jmp	.L141	#
.L140:
	movl	$.LC44, %edx	#, iftmp.8
.L141:
	.loc 1 624 0 discriminator 2
	movq	-48(%rbp), %rax	# msa, tmp261
	movq	96(%rax), %rax	# msa_18(D)->sqacc, D.7004
	.loc 1 620 0 discriminator 2
	testq	%rax, %rax	# D.7004
	je	.L142	#,
	.loc 1 624 0
	movq	-48(%rbp), %rax	# msa, tmp262
	movq	96(%rax), %rax	# msa_18(D)->sqacc, D.7004
	movl	-24(%rbp), %ecx	# i, tmp263
	movslq	%ecx, %rcx	# tmp263, D.7003
	salq	$3, %rcx	#, D.7003
	addq	%rcx, %rax	# D.7003, D.7004
	movq	(%rax), %rax	# *_93, D.7005
	testq	%rax, %rax	# D.7005
	je	.L142	#,
	.loc 1 624 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# msa, tmp264
	movq	96(%rax), %rax	# msa_18(D)->sqacc, D.7004
	movl	-24(%rbp), %ecx	# i, tmp265
	movslq	%ecx, %rcx	# tmp265, D.7003
	salq	$3, %rcx	#, D.7003
	addq	%rcx, %rax	# D.7003, D.7004
	.loc 1 620 0 is_stmt 1 discriminator 1
	movq	(%rax), %rax	# *_98, iftmp.9
	jmp	.L143	#
.L142:
	.loc 1 620 0 is_stmt 0 discriminator 3
	movl	$.LC44, %eax	#, iftmp.9
.L143:
	.loc 1 622 0 is_stmt 1
	movq	-48(%rbp), %rcx	# msa, tmp266
	movq	16(%rcx), %rcx	# msa_18(D)->wgt, D.7008
	movl	-24(%rbp), %esi	# i, tmp267
	movslq	%esi, %rsi	# tmp267, D.7003
	salq	$2, %rsi	#, D.7003
	addq	%rsi, %rcx	# D.7003, D.7008
	movss	(%rcx), %xmm0	# *_104, D.7006
	.loc 1 620 0
	unpcklps	%xmm0, %xmm0	# D.7006, D.7006
	cvtps2pd	%xmm0, %xmm0	# D.7006, D.7007
	.loc 1 621 0
	movq	-48(%rbp), %rcx	# msa, tmp268
	movq	8(%rcx), %rcx	# msa_18(D)->sqname, D.7004
	movl	-24(%rbp), %esi	# i, tmp269
	movslq	%esi, %rsi	# tmp269, D.7003
	salq	$3, %rsi	#, D.7003
	addq	%rsi, %rcx	# D.7003, D.7004
	.loc 1 620 0
	movq	(%rcx), %r8	# *_110, D.7005
	movl	-20(%rbp), %ecx	# namewidth, tmp270
	movl	-20(%rbp), %esi	# namewidth, tmp271
	movq	-40(%rbp), %rdi	# fp, tmp272
	movq	%rdx, 32(%rsp)	# iftmp.8,
	movl	$0, 24(%rsp)	#,
	movl	$0, 16(%rsp)	#,
	movl	$0, 8(%rsp)	#,
	movq	%rax, (%rsp)	# iftmp.9,
	movl	$.LC44, %r9d	#,
	movl	%esi, %edx	# tmp271,
	movl	$.LC45, %esi	#,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 619 0
	addl	$1, -24(%rbp)	#, i
.L139:
	.loc 1 619 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# msa, tmp273
	movl	28(%rax), %eax	# msa_18(D)->nseq, D.7002
	cmpl	-24(%rbp), %eax	# i, D.7002
	jg	.L144	#,
	.loc 1 627 0 is_stmt 1
	movq	-40(%rbp), %rax	# fp, tmp274
	movq	%rax, %rsi	# tmp274,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 631 0
	movl	$0, -16(%rbp)	#, currpos
	jmp	.L145	#
.L153:
	.loc 1 633 0
	cmpl	$0, -16(%rbp)	#, currpos
	jle	.L146	#,
	.loc 1 633 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# fp, tmp275
	movq	%rax, %rsi	# tmp275,
	movl	$10, %edi	#,
	call	fputc	#
.L146:
	.loc 1 635 0 is_stmt 1
	movq	-48(%rbp), %rax	# msa, tmp276
	movq	72(%rax), %rax	# msa_18(D)->ss_cons, D.7005
	testq	%rax, %rax	# D.7005
	je	.L147	#,
	.loc 1 636 0
	movl	-52(%rbp), %eax	# cpl, tmp277
	movslq	%eax, %rdx	# tmp277, D.7003
	movq	-48(%rbp), %rax	# msa, tmp278
	movq	72(%rax), %rcx	# msa_18(D)->ss_cons, D.7005
	movl	-16(%rbp), %eax	# currpos, tmp279
	cltq
	addq	%rax, %rcx	# D.7009, D.7005
	movq	-8(%rbp), %rax	# buf, tmp280
	movq	%rcx, %rsi	# D.7005,
	movq	%rax, %rdi	# tmp280,
	call	strncpy	#
	.loc 1 637 0
	movl	-52(%rbp), %eax	# cpl, tmp281
	movslq	%eax, %rdx	# tmp281, D.7009
	movq	-8(%rbp), %rax	# buf, tmp282
	addq	%rdx, %rax	# D.7009, D.7005
	movb	$0, (%rax)	#, *_121
	.loc 1 638 0
	movq	-8(%rbp), %rsi	# buf, tmp283
	movl	-20(%rbp), %ecx	# namewidth, tmp284
	movl	-20(%rbp), %edx	# namewidth, tmp285
	movq	-40(%rbp), %rax	# fp, tmp286
	movq	%rsi, %r9	# tmp283,
	movl	$.LC1, %r8d	#,
	movl	$.LC46, %esi	#,
	movq	%rax, %rdi	# tmp286,
	movl	$0, %eax	#,
	call	fprintf	#
.L147:
	.loc 1 640 0
	movq	-48(%rbp), %rax	# msa, tmp287
	movq	88(%rax), %rax	# msa_18(D)->rf, D.7005
	testq	%rax, %rax	# D.7005
	je	.L148	#,
	.loc 1 641 0
	movl	-52(%rbp), %eax	# cpl, tmp288
	movslq	%eax, %rdx	# tmp288, D.7003
	movq	-48(%rbp), %rax	# msa, tmp289
	movq	88(%rax), %rcx	# msa_18(D)->rf, D.7005
	movl	-16(%rbp), %eax	# currpos, tmp290
	cltq
	addq	%rax, %rcx	# D.7009, D.7005
	movq	-8(%rbp), %rax	# buf, tmp291
	movq	%rcx, %rsi	# D.7005,
	movq	%rax, %rdi	# tmp291,
	call	strncpy	#
	.loc 1 642 0
	movl	-52(%rbp), %eax	# cpl, tmp292
	movslq	%eax, %rdx	# tmp292, D.7009
	movq	-8(%rbp), %rax	# buf, tmp293
	addq	%rdx, %rax	# D.7009, D.7005
	movb	$0, (%rax)	#, *_128
	.loc 1 643 0
	movq	-8(%rbp), %rsi	# buf, tmp294
	movl	-20(%rbp), %ecx	# namewidth, tmp295
	movl	-20(%rbp), %edx	# namewidth, tmp296
	movq	-40(%rbp), %rax	# fp, tmp297
	movq	%rsi, %r9	# tmp294,
	movl	$.LC2, %r8d	#,
	movl	$.LC46, %esi	#,
	movq	%rax, %rdi	# tmp297,
	movl	$0, %eax	#,
	call	fprintf	#
.L148:
	.loc 1 645 0
	movl	$0, -24(%rbp)	#, i
	jmp	.L149	#
.L152:
	.loc 1 647 0
	movl	-52(%rbp), %eax	# cpl, tmp298
	movslq	%eax, %rdx	# tmp298, D.7003
	movq	-48(%rbp), %rax	# msa, tmp299
	movq	(%rax), %rax	# msa_18(D)->aseq, D.7004
	movl	-24(%rbp), %ecx	# i, tmp300
	movslq	%ecx, %rcx	# tmp300, D.7003
	salq	$3, %rcx	#, D.7003
	addq	%rcx, %rax	# D.7003, D.7004
	movq	(%rax), %rcx	# *_135, D.7005
	movl	-16(%rbp), %eax	# currpos, tmp301
	cltq
	addq	%rax, %rcx	# D.7009, D.7005
	movq	-8(%rbp), %rax	# buf, tmp302
	movq	%rcx, %rsi	# D.7005,
	movq	%rax, %rdi	# tmp302,
	call	strncpy	#
	.loc 1 648 0
	movl	-52(%rbp), %eax	# cpl, tmp303
	movslq	%eax, %rdx	# tmp303, D.7009
	movq	-8(%rbp), %rax	# buf, tmp304
	addq	%rdx, %rax	# D.7009, D.7005
	movb	$0, (%rax)	#, *_140
	.loc 1 649 0
	movq	-48(%rbp), %rax	# msa, tmp305
	movq	8(%rax), %rax	# msa_18(D)->sqname, D.7004
	movl	-24(%rbp), %edx	# i, tmp306
	movslq	%edx, %rdx	# tmp306, D.7003
	salq	$3, %rdx	#, D.7003
	addq	%rdx, %rax	# D.7003, D.7004
	movq	(%rax), %rsi	# *_144, D.7005
	movq	-8(%rbp), %rdi	# buf, tmp307
	movl	-20(%rbp), %ecx	# namewidth, tmp308
	movl	-20(%rbp), %edx	# namewidth, tmp309
	movq	-40(%rbp), %rax	# fp, tmp310
	movq	%rdi, %r9	# tmp307,
	movq	%rsi, %r8	# D.7005,
	movl	$.LC46, %esi	#,
	movq	%rax, %rdi	# tmp310,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 651 0
	movq	-48(%rbp), %rax	# msa, tmp311
	movq	112(%rax), %rax	# msa_18(D)->ss, D.7004
	testq	%rax, %rax	# D.7004
	je	.L150	#,
	.loc 1 651 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# msa, tmp312
	movq	112(%rax), %rax	# msa_18(D)->ss, D.7004
	movl	-24(%rbp), %edx	# i, tmp313
	movslq	%edx, %rdx	# tmp313, D.7003
	salq	$3, %rdx	#, D.7003
	addq	%rdx, %rax	# D.7003, D.7004
	movq	(%rax), %rax	# *_150, D.7005
	testq	%rax, %rax	# D.7005
	je	.L150	#,
	.loc 1 652 0 is_stmt 1
	movl	-52(%rbp), %eax	# cpl, tmp314
	movslq	%eax, %rdx	# tmp314, D.7003
	movq	-48(%rbp), %rax	# msa, tmp315
	movq	112(%rax), %rax	# msa_18(D)->ss, D.7004
	movl	-24(%rbp), %ecx	# i, tmp316
	movslq	%ecx, %rcx	# tmp316, D.7003
	salq	$3, %rcx	#, D.7003
	addq	%rcx, %rax	# D.7003, D.7004
	movq	(%rax), %rcx	# *_156, D.7005
	movl	-16(%rbp), %eax	# currpos, tmp317
	cltq
	addq	%rax, %rcx	# D.7009, D.7005
	movq	-8(%rbp), %rax	# buf, tmp318
	movq	%rcx, %rsi	# D.7005,
	movq	%rax, %rdi	# tmp318,
	call	strncpy	#
	.loc 1 653 0
	movl	-52(%rbp), %eax	# cpl, tmp319
	movslq	%eax, %rdx	# tmp319, D.7009
	movq	-8(%rbp), %rax	# buf, tmp320
	addq	%rdx, %rax	# D.7009, D.7005
	movb	$0, (%rax)	#, *_161
	.loc 1 654 0
	movq	-8(%rbp), %rsi	# buf, tmp321
	movl	-20(%rbp), %ecx	# namewidth, tmp322
	movl	-20(%rbp), %edx	# namewidth, tmp323
	movq	-40(%rbp), %rax	# fp, tmp324
	movq	%rsi, %r9	# tmp321,
	movl	$.LC5, %r8d	#,
	movl	$.LC46, %esi	#,
	movq	%rax, %rdi	# tmp324,
	movl	$0, %eax	#,
	call	fprintf	#
.L150:
	.loc 1 656 0
	movq	-48(%rbp), %rax	# msa, tmp325
	movq	120(%rax), %rax	# msa_18(D)->sa, D.7004
	testq	%rax, %rax	# D.7004
	je	.L151	#,
	.loc 1 656 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# msa, tmp326
	movq	120(%rax), %rax	# msa_18(D)->sa, D.7004
	movl	-24(%rbp), %edx	# i, tmp327
	movslq	%edx, %rdx	# tmp327, D.7003
	salq	$3, %rdx	#, D.7003
	addq	%rdx, %rax	# D.7003, D.7004
	movq	(%rax), %rax	# *_166, D.7005
	testq	%rax, %rax	# D.7005
	je	.L151	#,
	.loc 1 657 0 is_stmt 1
	movl	-52(%rbp), %eax	# cpl, tmp328
	movslq	%eax, %rdx	# tmp328, D.7003
	movq	-48(%rbp), %rax	# msa, tmp329
	movq	120(%rax), %rax	# msa_18(D)->sa, D.7004
	movl	-24(%rbp), %ecx	# i, tmp330
	movslq	%ecx, %rcx	# tmp330, D.7003
	salq	$3, %rcx	#, D.7003
	addq	%rcx, %rax	# D.7003, D.7004
	movq	(%rax), %rcx	# *_172, D.7005
	movl	-16(%rbp), %eax	# currpos, tmp331
	cltq
	addq	%rax, %rcx	# D.7009, D.7005
	movq	-8(%rbp), %rax	# buf, tmp332
	movq	%rcx, %rsi	# D.7005,
	movq	%rax, %rdi	# tmp332,
	call	strncpy	#
	.loc 1 658 0
	movl	-52(%rbp), %eax	# cpl, tmp333
	movslq	%eax, %rdx	# tmp333, D.7009
	movq	-8(%rbp), %rax	# buf, tmp334
	addq	%rdx, %rax	# D.7009, D.7005
	movb	$0, (%rax)	#, *_177
	.loc 1 659 0
	movq	-8(%rbp), %rsi	# buf, tmp335
	movl	-20(%rbp), %ecx	# namewidth, tmp336
	movl	-20(%rbp), %edx	# namewidth, tmp337
	movq	-40(%rbp), %rax	# fp, tmp338
	movq	%rsi, %r9	# tmp335,
	movl	$.LC6, %r8d	#,
	movl	$.LC46, %esi	#,
	movq	%rax, %rdi	# tmp338,
	movl	$0, %eax	#,
	call	fprintf	#
.L151:
	.loc 1 645 0
	addl	$1, -24(%rbp)	#, i
.L149:
	.loc 1 645 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# msa, tmp339
	movl	28(%rax), %eax	# msa_18(D)->nseq, D.7002
	cmpl	-24(%rbp), %eax	# i, D.7002
	jg	.L152	#,
	.loc 1 631 0 is_stmt 1
	movl	-52(%rbp), %eax	# cpl, tmp340
	addl	%eax, -16(%rbp)	# tmp340, currpos
.L145:
	.loc 1 631 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# msa, tmp341
	movl	24(%rax), %eax	# msa_18(D)->alen, D.7002
	cmpl	-16(%rbp), %eax	# currpos, D.7002
	jg	.L153	#,
	.loc 1 663 0 is_stmt 1
	movq	-8(%rbp), %rax	# buf, tmp342
	movq	%rax, %rdi	# tmp342,
	call	free	#
	.loc 1 664 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	actually_write_selex, .-actually_write_selex
	.section	.rodata
	.align 8
.LC47:
	.string	"TAB characters will corrupt a SELEX alignment! Please remove them first."
	.text
	.type	copy_alignment_line, @function
copy_alignment_line:
.LFB6:
	.loc 1 680 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -40(%rbp)	# aseq, aseq
	movl	%esi, -44(%rbp)	# apos, apos
	movl	%edx, -48(%rbp)	# name_rcol, name_rcol
	movq	%rcx, -56(%rbp)	# buffer, buffer
	movl	%r8d, -60(%rbp)	# lcol, lcol
	movl	%r9d, -64(%rbp)	# rcol, rcol
	movl	16(%rbp), %eax	# gapsym, tmp69
	movb	%al, -68(%rbp)	# tmp69, gapsym
	.loc 1 684 0
	movl	-44(%rbp), %eax	# apos, tmp70
	movslq	%eax, %rdx	# tmp70, D.7025
	movq	-40(%rbp), %rax	# aseq, tmp74
	addq	%rdx, %rax	# D.7025, tmp73
	movq	%rax, -16(%rbp)	# tmp73, s1
	.loc 1 685 0
	movq	-56(%rbp), %rax	# buffer, tmp75
	movq	%rax, -8(%rbp)	# tmp75, s2
	.loc 1 686 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L155	#
.L157:
	.loc 1 687 0
	movq	-8(%rbp), %rax	# s2, tmp76
	movzbl	(%rax), %eax	# *s2_3, D.7026
	testb	%al, %al	# D.7026
	je	.L156	#,
	.loc 1 687 0 is_stmt 0 discriminator 1
	addq	$1, -8(%rbp)	#, s2
.L156:
	.loc 1 686 0 is_stmt 1
	addl	$1, -20(%rbp)	#, i
.L155:
	.loc 1 686 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp77
	cmpl	-60(%rbp), %eax	# lcol, tmp77
	jl	.L157	#,
	.loc 1 689 0 is_stmt 1
	movl	-60(%rbp), %eax	# lcol, tmp78
	movl	%eax, -20(%rbp)	# tmp78, i
	jmp	.L158	#
.L167:
	.loc 1 691 0
	movq	-8(%rbp), %rax	# s2, tmp79
	movzbl	(%rax), %eax	# *s2_5, D.7026
	cmpb	$9, %al	#, D.7026
	jne	.L159	#,
	.loc 1 692 0
	movl	$.LC47, %edi	#,
	movl	$0, %eax	#,
	call	Warn	#
	.loc 1 693 0
	movl	$0, %eax	#, D.7024
	jmp	.L160	#
.L159:
	.loc 1 695 0
	movl	-48(%rbp), %eax	# name_rcol, tmp80
	cmpl	-20(%rbp), %eax	# i, tmp80
	jl	.L161	#,
	.loc 1 696 0
	movq	-16(%rbp), %rax	# s1, tmp81
	movzbl	-68(%rbp), %edx	# gapsym, tmp82
	movb	%dl, (%rax)	# tmp82, *s1_1
	jmp	.L162	#
.L161:
	.loc 1 698 0
	movq	-8(%rbp), %rax	# s2, tmp83
	movzbl	(%rax), %eax	# *s2_5, D.7026
	testb	%al, %al	# D.7026
	je	.L163	#,
	.loc 1 698 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# s2, tmp84
	movzbl	(%rax), %eax	# *s2_5, D.7026
	cmpb	$10, %al	#, D.7026
	jne	.L164	#,
.L163:
	.loc 1 699 0 is_stmt 1
	movq	-16(%rbp), %rax	# s1, tmp85
	movzbl	-68(%rbp), %edx	# gapsym, tmp86
	movb	%dl, (%rax)	# tmp86, *s1_1
	jmp	.L162	#
.L164:
	.loc 1 701 0
	movq	-8(%rbp), %rax	# s2, tmp87
	movzbl	(%rax), %eax	# *s2_5, D.7026
	cmpb	$32, %al	#, D.7026
	jne	.L165	#,
	.loc 1 702 0
	movq	-16(%rbp), %rax	# s1, tmp88
	movzbl	-68(%rbp), %edx	# gapsym, tmp89
	movb	%dl, (%rax)	# tmp89, *s1_1
	jmp	.L162	#
.L165:
	.loc 1 705 0
	movq	-8(%rbp), %rax	# s2, tmp90
	movzbl	(%rax), %edx	# *s2_5, D.7026
	movq	-16(%rbp), %rax	# s1, tmp91
	movb	%dl, (%rax)	# D.7026, *s1_1
.L162:
	.loc 1 707 0
	addq	$1, -16(%rbp)	#, s1
	.loc 1 708 0
	movq	-8(%rbp), %rax	# s2, tmp92
	movzbl	(%rax), %eax	# *s2_5, D.7026
	testb	%al, %al	# D.7026
	je	.L166	#,
	.loc 1 708 0 is_stmt 0 discriminator 1
	addq	$1, -8(%rbp)	#, s2
.L166:
	.loc 1 689 0 is_stmt 1
	addl	$1, -20(%rbp)	#, i
.L158:
	.loc 1 689 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp93
	cmpl	-64(%rbp), %eax	# rcol, tmp93
	jle	.L167	#,
	.loc 1 710 0 is_stmt 1
	movl	$1, %eax	#, D.7024
.L160:
	.loc 1 711 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	copy_alignment_line, .-copy_alignment_line
	.globl	DealignAseqs
	.type	DealignAseqs, @function
DealignAseqs:
.LFB7:
	.loc 1 730 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# aseqs, aseqs
	movl	%esi, -60(%rbp)	# num, num
	movq	%rdx, -72(%rbp)	# ret_rseqs, ret_rseqs
	.loc 1 738 0
	movl	-60(%rbp), %eax	# num, tmp135
	cltq
	salq	$3, %rax	#, D.7028
	movq	%rax, %rdx	# D.7028,
	movl	$738, %esi	#,
	movl	$.LC4, %edi	#,
	call	sre_malloc	#
	movq	%rax, -24(%rbp)	# tmp136, rseqs
	.loc 1 740 0
	movl	$0, -40(%rbp)	#, idx
	jmp	.L169	#
.L173:
	.loc 1 742 0
	movl	-40(%rbp), %eax	# idx, tmp137
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7028
	movq	-56(%rbp), %rax	# aseqs, tmp138
	addq	%rdx, %rax	# D.7028, D.7029
	movq	(%rax), %rax	# *_13, D.7030
	movq	%rax, %rdi	# D.7030,
	call	strlen	#
	movl	%eax, -28(%rbp)	# D.7028, seqlen
	.loc 1 744 0
	movl	-40(%rbp), %eax	# idx, tmp139
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7028
	movq	-24(%rbp), %rax	# rseqs, tmp140
	leaq	(%rdx,%rax), %rbx	#, D.7029
	movl	-28(%rbp), %eax	# seqlen, tmp141
	addl	$1, %eax	#, D.7031
	cltq
	movq	%rax, %rdx	# D.7028,
	movl	$744, %esi	#,
	movl	$.LC4, %edi	#,
	call	sre_malloc	#
	movq	%rax, (%rbx)	# D.7032, *_19
	.loc 1 747 0
	movl	$0, -36(%rbp)	#, depos
	.loc 1 748 0
	movl	$0, -32(%rbp)	#, apos
	jmp	.L170	#
.L172:
	.loc 1 749 0
	movl	-40(%rbp), %eax	# idx, tmp142
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7028
	movq	-56(%rbp), %rax	# aseqs, tmp143
	addq	%rdx, %rax	# D.7028, D.7029
	movq	(%rax), %rdx	# *_34, D.7030
	movl	-32(%rbp), %eax	# apos, tmp144
	cltq
	addq	%rdx, %rax	# D.7030, D.7030
	movzbl	(%rax), %eax	# *_37, D.7034
	cmpb	$32, %al	#, D.7034
	je	.L171	#,
	.loc 1 749 0 is_stmt 0 discriminator 1
	movl	-40(%rbp), %eax	# idx, tmp145
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7028
	movq	-56(%rbp), %rax	# aseqs, tmp146
	addq	%rdx, %rax	# D.7028, D.7029
	movq	(%rax), %rdx	# *_41, D.7030
	movl	-32(%rbp), %eax	# apos, tmp147
	cltq
	addq	%rdx, %rax	# D.7030, D.7030
	movzbl	(%rax), %eax	# *_44, D.7034
	cmpb	$46, %al	#, D.7034
	je	.L171	#,
	movl	-40(%rbp), %eax	# idx, tmp148
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7028
	movq	-56(%rbp), %rax	# aseqs, tmp149
	addq	%rdx, %rax	# D.7028, D.7029
	movq	(%rax), %rdx	# *_48, D.7030
	movl	-32(%rbp), %eax	# apos, tmp150
	cltq
	addq	%rdx, %rax	# D.7030, D.7030
	movzbl	(%rax), %eax	# *_51, D.7034
	cmpb	$95, %al	#, D.7034
	je	.L171	#,
	movl	-40(%rbp), %eax	# idx, tmp151
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7028
	movq	-56(%rbp), %rax	# aseqs, tmp152
	addq	%rdx, %rax	# D.7028, D.7029
	movq	(%rax), %rdx	# *_55, D.7030
	movl	-32(%rbp), %eax	# apos, tmp153
	cltq
	addq	%rdx, %rax	# D.7030, D.7030
	movzbl	(%rax), %eax	# *_58, D.7034
	cmpb	$45, %al	#, D.7034
	je	.L171	#,
	movl	-40(%rbp), %eax	# idx, tmp154
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7028
	movq	-56(%rbp), %rax	# aseqs, tmp155
	addq	%rdx, %rax	# D.7028, D.7029
	movq	(%rax), %rdx	# *_62, D.7030
	movl	-32(%rbp), %eax	# apos, tmp156
	cltq
	addq	%rdx, %rax	# D.7030, D.7030
	movzbl	(%rax), %eax	# *_65, D.7034
	cmpb	$126, %al	#, D.7034
	je	.L171	#,
	.loc 1 751 0 is_stmt 1
	movl	-40(%rbp), %eax	# idx, tmp157
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7028
	movq	-24(%rbp), %rax	# rseqs, tmp158
	addq	%rdx, %rax	# D.7028, D.7029
	movq	(%rax), %rdx	# *_69, D.7030
	movl	-36(%rbp), %eax	# depos, tmp159
	cltq
	addq	%rax, %rdx	# D.7033, D.7030
	movl	-40(%rbp), %eax	# idx, tmp160
	cltq
	leaq	0(,%rax,8), %rcx	#, D.7028
	movq	-56(%rbp), %rax	# aseqs, tmp161
	addq	%rcx, %rax	# D.7028, D.7029
	movq	(%rax), %rcx	# *_75, D.7030
	movl	-32(%rbp), %eax	# apos, tmp162
	cltq
	addq	%rcx, %rax	# D.7030, D.7030
	movzbl	(%rax), %eax	# *_78, D.7034
	movb	%al, (%rdx)	# D.7034, *_72
	.loc 1 752 0
	addl	$1, -36(%rbp)	#, depos
.L171:
	.loc 1 748 0
	addl	$1, -32(%rbp)	#, apos
.L170:
	.loc 1 748 0 is_stmt 0 discriminator 1
	movl	-40(%rbp), %eax	# idx, tmp163
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7028
	movq	-56(%rbp), %rax	# aseqs, tmp164
	addq	%rdx, %rax	# D.7028, D.7029
	movq	(%rax), %rdx	# *_27, D.7030
	movl	-32(%rbp), %eax	# apos, tmp165
	cltq
	addq	%rdx, %rax	# D.7030, D.7030
	movzbl	(%rax), %eax	# *_30, D.7034
	testb	%al, %al	# D.7034
	jne	.L172	#,
	.loc 1 754 0 is_stmt 1
	movl	-40(%rbp), %eax	# idx, tmp166
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7028
	movq	-24(%rbp), %rax	# rseqs, tmp167
	addq	%rdx, %rax	# D.7028, D.7029
	movq	(%rax), %rdx	# *_84, D.7030
	movl	-36(%rbp), %eax	# depos, tmp168
	cltq
	addq	%rdx, %rax	# D.7030, D.7030
	movb	$0, (%rax)	#, *_87
	.loc 1 740 0
	addl	$1, -40(%rbp)	#, idx
.L169:
	.loc 1 740 0 is_stmt 0 discriminator 1
	movl	-40(%rbp), %eax	# idx, tmp169
	cmpl	-60(%rbp), %eax	# num, tmp169
	jl	.L173	#,
	.loc 1 756 0 is_stmt 1
	movq	-72(%rbp), %rax	# ret_rseqs, tmp170
	movq	-24(%rbp), %rdx	# rseqs, tmp171
	movq	%rdx, (%rax)	# tmp171, *ret_rseqs_89(D)
	.loc 1 757 0
	movl	$1, %eax	#, D.7031
	.loc 1 758 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	DealignAseqs, .-DealignAseqs
	.section	.rodata
.LC48:
	.string	"r"
	.text
	.globl	IsSELEXFormat
	.type	IsSELEXFormat, @function
IsSELEXFormat:
.LFB8:
	.loc 1 776 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$4160, %rsp	#,
	movq	%rdi, -4152(%rbp)	# filename, filename
	.loc 1 776 0
	movq	%fs:40, %rax	#, tmp99
	movq	%rax, -8(%rbp)	# tmp99, D.7038
	xorl	%eax, %eax	# tmp99
	.loc 1 783 0
	movq	-4152(%rbp), %rax	# filename, tmp77
	movl	$.LC48, %esi	#,
	movq	%rax, %rdi	# tmp77,
	call	fopen	#
	movq	%rax, -4128(%rbp)	# tmp78, fp
	cmpq	$0, -4128(%rbp)	#, fp
	jne	.L176	#,
	.loc 1 784 0
	movl	$4, squid_errno(%rip)	#, squid_errno
	movl	$0, %eax	#, D.7035
	jmp	.L195	#
.L176:
	.loc 1 786 0
	movl	$0, -4132(%rbp)	#, linenum
	.loc 1 787 0
	jmp	.L178	#
.L194:
	.loc 1 790 0
	addl	$1, -4132(%rbp)	#, linenum
	.loc 1 792 0
	leaq	-4112(%rbp), %rax	#, tmp79
	movl	$4, %edx	#,
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# tmp79,
	call	strncmp	#
	testl	%eax, %eax	# D.7035
	jne	.L179	#,
	.loc 1 792 0 is_stmt 0 discriminator 1
	jmp	.L180	#
.L179:
	.loc 1 793 0 is_stmt 1
	leaq	-4112(%rbp), %rax	#, tmp80
	movl	$4, %edx	#,
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# tmp80,
	call	strncmp	#
	testl	%eax, %eax	# D.7035
	jne	.L181	#,
	.loc 1 793 0 is_stmt 0 discriminator 1
	jmp	.L180	#
.L181:
	.loc 1 794 0 is_stmt 1
	leaq	-4112(%rbp), %rax	#, tmp81
	movl	$4, %edx	#,
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# tmp81,
	call	strncmp	#
	testl	%eax, %eax	# D.7035
	jne	.L182	#,
	.loc 1 794 0 is_stmt 0 discriminator 1
	jmp	.L180	#
.L182:
	.loc 1 795 0 is_stmt 1
	leaq	-4112(%rbp), %rax	#, tmp82
	movl	$4, %edx	#,
	movl	$.LC13, %esi	#,
	movq	%rax, %rdi	# tmp82,
	call	strncmp	#
	testl	%eax, %eax	# D.7035
	jne	.L183	#,
	.loc 1 795 0 is_stmt 0 discriminator 1
	jmp	.L180	#
.L183:
	.loc 1 796 0 is_stmt 1
	leaq	-4112(%rbp), %rax	#, tmp83
	movl	$4, %edx	#,
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# tmp83,
	call	strncmp	#
	testl	%eax, %eax	# D.7035
	jne	.L184	#,
	.loc 1 796 0 is_stmt 0 discriminator 1
	jmp	.L180	#
.L184:
	.loc 1 797 0 is_stmt 1
	leaq	-4112(%rbp), %rax	#, tmp84
	movl	$4, %edx	#,
	movl	$.LC16, %esi	#,
	movq	%rax, %rdi	# tmp84,
	call	strncmp	#
	testl	%eax, %eax	# D.7035
	jne	.L185	#,
	.loc 1 797 0 is_stmt 0 discriminator 1
	jmp	.L180	#
.L185:
	.loc 1 798 0 is_stmt 1
	leaq	-4112(%rbp), %rax	#, tmp85
	movl	$4, %edx	#,
	movl	$.LC18, %esi	#,
	movq	%rax, %rdi	# tmp85,
	call	strncmp	#
	testl	%eax, %eax	# D.7035
	jne	.L186	#,
	.loc 1 798 0 is_stmt 0 discriminator 1
	jmp	.L180	#
.L186:
	.loc 1 799 0 is_stmt 1
	leaq	-4112(%rbp), %rax	#, tmp86
	movl	$4, %edx	#,
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# tmp86,
	call	strncmp	#
	testl	%eax, %eax	# D.7035
	jne	.L187	#,
	.loc 1 799 0 is_stmt 0 discriminator 1
	jmp	.L180	#
.L187:
	.loc 1 800 0 is_stmt 1
	leaq	-4112(%rbp), %rax	#, tmp87
	movl	$4, %edx	#,
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp87,
	call	strncmp	#
	testl	%eax, %eax	# D.7035
	jne	.L188	#,
	.loc 1 800 0 is_stmt 0 discriminator 1
	jmp	.L180	#
.L188:
	.loc 1 801 0 is_stmt 1
	leaq	-4112(%rbp), %rax	#, tmp88
	movl	$4, %edx	#,
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp88,
	call	strncmp	#
	testl	%eax, %eax	# D.7035
	jne	.L189	#,
	.loc 1 801 0 is_stmt 0 discriminator 1
	jmp	.L180	#
.L189:
	.loc 1 802 0 is_stmt 1
	leaq	-4112(%rbp), %rax	#, tmp89
	movl	$4, %edx	#,
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp89,
	call	strncmp	#
	testl	%eax, %eax	# D.7035
	jne	.L190	#,
	.loc 1 802 0 is_stmt 0 discriminator 1
	jmp	.L180	#
.L190:
	.loc 1 805 0 is_stmt 1
	movzbl	-4112(%rbp), %eax	# buffer, D.7037
	movsbl	%al, %eax	# D.7037, D.7035
	movl	%eax, %esi	# D.7035,
	movl	$commentsyms, %edi	#,
	call	strchr	#
	testq	%rax, %rax	# D.7036
	je	.L191	#,
	.loc 1 805 0 is_stmt 0 discriminator 1
	jmp	.L178	#
.L191:
	.loc 1 808 0 is_stmt 1
	leaq	-4112(%rbp), %rax	#, tmp90
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp90,
	call	strtok	#
	movq	%rax, -4120(%rbp)	# tmp91, sptr
	cmpq	$0, -4120(%rbp)	#, sptr
	jne	.L192	#,
	.loc 1 808 0 is_stmt 0 discriminator 1
	jmp	.L178	#
.L192:
	.loc 1 812 0 is_stmt 1
	movl	$.LC10, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -4120(%rbp)	# tmp92, sptr
	cmpq	$0, -4120(%rbp)	#, sptr
	jne	.L193	#,
	.loc 1 812 0 is_stmt 0 discriminator 1
	jmp	.L178	#
.L193:
	.loc 1 814 0 is_stmt 1
	movq	-4120(%rbp), %rax	# sptr, tmp93
	movq	%rax, %rdi	# tmp93,
	call	Seqtype	#
	testl	%eax, %eax	# D.7035
	jne	.L178	#,
	.loc 1 814 0 is_stmt 0 discriminator 1
	movq	-4128(%rbp), %rax	# fp, tmp94
	movq	%rax, %rdi	# tmp94,
	call	fclose	#
	movl	$0, %eax	#, D.7035
	jmp	.L195	#
.L178:
	.loc 1 787 0 is_stmt 1 discriminator 1
	cmpl	$499, -4132(%rbp)	#, linenum
	jg	.L180	#,
	.loc 1 788 0 discriminator 2
	movq	-4128(%rbp), %rdx	# fp, tmp95
	leaq	-4112(%rbp), %rax	#, tmp96
	movl	$4096, %esi	#,
	movq	%rax, %rdi	# tmp96,
	call	fgets	#
	.loc 1 787 0 discriminator 2
	testq	%rax, %rax	# D.7036
	jne	.L194	#,
.L180:
	.loc 1 818 0
	movq	-4128(%rbp), %rax	# fp, tmp97
	movq	%rax, %rdi	# tmp97,
	call	fclose	#
	.loc 1 819 0
	movl	$1, %eax	#, D.7035
.L195:
	.loc 1 820 0
	movq	-8(%rbp), %rcx	# D.7038, tmp100
	xorq	%fs:40, %rcx	#, tmp100
	je	.L196	#,
	call	__stack_chk_fail	#
.L196:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	IsSELEXFormat, .-IsSELEXFormat
	.section	.rodata
	.align 4
.LC8:
	.long	1065353216
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "squid.h"
	.file 7 "gki.h"
	.file 8 "ssi.h"
	.file 9 "msa.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xeb2
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF168
	.byte	0x1
	.long	.LASF169
	.long	.LASF170
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
	.byte	0xd4
	.long	0x38
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x8c
	.long	0x69
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x8d
	.long	0x69
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x95
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x2
	.long	.LASF12
	.byte	0x4
	.byte	0x30
	.long	0xa7
	.uleb128 0x7
	.long	.LASF42
	.byte	0xd8
	.byte	0x5
	.byte	0xf6
	.long	0x228
	.uleb128 0x8
	.long	.LASF13
	.byte	0x5
	.byte	0xf7
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x5
	.byte	0xfc
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF15
	.byte	0x5
	.byte	0xfd
	.long	0x8f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF16
	.byte	0x5
	.byte	0xfe
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF17
	.byte	0x5
	.byte	0xff
	.long	0x8f
	.byte	0x20
	.uleb128 0x9
	.long	.LASF18
	.byte	0x5
	.value	0x100
	.long	0x8f
	.byte	0x28
	.uleb128 0x9
	.long	.LASF19
	.byte	0x5
	.value	0x101
	.long	0x8f
	.byte	0x30
	.uleb128 0x9
	.long	.LASF20
	.byte	0x5
	.value	0x102
	.long	0x8f
	.byte	0x38
	.uleb128 0x9
	.long	.LASF21
	.byte	0x5
	.value	0x103
	.long	0x8f
	.byte	0x40
	.uleb128 0x9
	.long	.LASF22
	.byte	0x5
	.value	0x105
	.long	0x8f
	.byte	0x48
	.uleb128 0x9
	.long	.LASF23
	.byte	0x5
	.value	0x106
	.long	0x8f
	.byte	0x50
	.uleb128 0x9
	.long	.LASF24
	.byte	0x5
	.value	0x107
	.long	0x8f
	.byte	0x58
	.uleb128 0x9
	.long	.LASF25
	.byte	0x5
	.value	0x109
	.long	0x260
	.byte	0x60
	.uleb128 0x9
	.long	.LASF26
	.byte	0x5
	.value	0x10b
	.long	0x266
	.byte	0x68
	.uleb128 0x9
	.long	.LASF27
	.byte	0x5
	.value	0x10d
	.long	0x62
	.byte	0x70
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.value	0x111
	.long	0x62
	.byte	0x74
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.value	0x113
	.long	0x70
	.byte	0x78
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.value	0x117
	.long	0x46
	.byte	0x80
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.value	0x118
	.long	0x54
	.byte	0x82
	.uleb128 0x9
	.long	.LASF32
	.byte	0x5
	.value	0x119
	.long	0x26c
	.byte	0x83
	.uleb128 0x9
	.long	.LASF33
	.byte	0x5
	.value	0x11d
	.long	0x27c
	.byte	0x88
	.uleb128 0x9
	.long	.LASF34
	.byte	0x5
	.value	0x126
	.long	0x7b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.value	0x12f
	.long	0x8d
	.byte	0x98
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.value	0x130
	.long	0x8d
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.value	0x131
	.long	0x8d
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.value	0x132
	.long	0x8d
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.value	0x133
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.value	0x135
	.long	0x62
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x5
	.value	0x137
	.long	0x282
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF171
	.byte	0x5
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF43
	.byte	0x18
	.byte	0x5
	.byte	0xa1
	.long	0x260
	.uleb128 0x8
	.long	.LASF44
	.byte	0x5
	.byte	0xa2
	.long	0x260
	.byte	0
	.uleb128 0x8
	.long	.LASF45
	.byte	0x5
	.byte	0xa3
	.long	0x266
	.byte	0x8
	.uleb128 0x8
	.long	.LASF46
	.byte	0x5
	.byte	0xa7
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x22f
	.uleb128 0x6
	.byte	0x8
	.long	0xa7
	.uleb128 0xb
	.long	0x95
	.long	0x27c
	.uleb128 0xc
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x228
	.uleb128 0xb
	.long	0x95
	.long	0x292
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x62
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF47
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF48
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF49
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF50
	.uleb128 0x2
	.long	.LASF51
	.byte	0x6
	.byte	0x28
	.long	0x46
	.uleb128 0x2
	.long	.LASF52
	.byte	0x6
	.byte	0x29
	.long	0x4d
	.uleb128 0x2
	.long	.LASF53
	.byte	0x6
	.byte	0x2a
	.long	0x29f
	.uleb128 0xd
	.long	.LASF54
	.value	0x168
	.byte	0x6
	.byte	0x54
	.long	0x377
	.uleb128 0x8
	.long	.LASF55
	.byte	0x6
	.byte	0x55
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF56
	.byte	0x6
	.byte	0x56
	.long	0x377
	.byte	0x4
	.uleb128 0xe
	.string	"id"
	.byte	0x6
	.byte	0x57
	.long	0x377
	.byte	0x44
	.uleb128 0xe
	.string	"acc"
	.byte	0x6
	.byte	0x58
	.long	0x377
	.byte	0x84
	.uleb128 0x8
	.long	.LASF57
	.byte	0x6
	.byte	0x59
	.long	0x387
	.byte	0xc4
	.uleb128 0xf
	.string	"len"
	.byte	0x6
	.byte	0x5a
	.long	0x62
	.value	0x144
	.uleb128 0x10
	.long	.LASF58
	.byte	0x6
	.byte	0x5b
	.long	0x62
	.value	0x148
	.uleb128 0x10
	.long	.LASF59
	.byte	0x6
	.byte	0x5c
	.long	0x62
	.value	0x14c
	.uleb128 0x10
	.long	.LASF60
	.byte	0x6
	.byte	0x5d
	.long	0x62
	.value	0x150
	.uleb128 0x10
	.long	.LASF61
	.byte	0x6
	.byte	0x5e
	.long	0x62
	.value	0x154
	.uleb128 0xf
	.string	"ss"
	.byte	0x6
	.byte	0x5f
	.long	0x8f
	.value	0x158
	.uleb128 0xf
	.string	"sa"
	.byte	0x6
	.byte	0x60
	.long	0x8f
	.value	0x160
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x387
	.uleb128 0xc
	.long	0x86
	.byte	0x3f
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x397
	.uleb128 0xc
	.long	0x86
	.byte	0x7f
	.byte	0
	.uleb128 0x2
	.long	.LASF62
	.byte	0x6
	.byte	0x62
	.long	0x2d5
	.uleb128 0x7
	.long	.LASF63
	.byte	0x18
	.byte	0x7
	.byte	0x1a
	.long	0x3d3
	.uleb128 0xe
	.string	"key"
	.byte	0x7
	.byte	0x1b
	.long	0x8f
	.byte	0
	.uleb128 0xe
	.string	"idx"
	.byte	0x7
	.byte	0x1c
	.long	0x62
	.byte	0x8
	.uleb128 0xe
	.string	"nxt"
	.byte	0x7
	.byte	0x1d
	.long	0x3d3
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3a2
	.uleb128 0x11
	.byte	0x18
	.byte	0x7
	.byte	0x24
	.long	0x412
	.uleb128 0x8
	.long	.LASF64
	.byte	0x7
	.byte	0x25
	.long	0x412
	.byte	0
	.uleb128 0x8
	.long	.LASF65
	.byte	0x7
	.byte	0x27
	.long	0x62
	.byte	0x8
	.uleb128 0x8
	.long	.LASF66
	.byte	0x7
	.byte	0x28
	.long	0x62
	.byte	0xc
	.uleb128 0x8
	.long	.LASF67
	.byte	0x7
	.byte	0x29
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3d3
	.uleb128 0x12
	.string	"GKI"
	.byte	0x7
	.byte	0x2a
	.long	0x3d9
	.uleb128 0x13
	.byte	0x8
	.byte	0x8
	.byte	0x25
	.long	0x442
	.uleb128 0x14
	.string	"i32"
	.byte	0x8
	.byte	0x26
	.long	0x2bf
	.uleb128 0x14
	.string	"i64"
	.byte	0x8
	.byte	0x27
	.long	0x2ca
	.byte	0
	.uleb128 0x7
	.long	.LASF68
	.byte	0x10
	.byte	0x8
	.byte	0x23
	.long	0x467
	.uleb128 0x8
	.long	.LASF69
	.byte	0x8
	.byte	0x24
	.long	0x95
	.byte	0
	.uleb128 0xe
	.string	"off"
	.byte	0x8
	.byte	0x28
	.long	0x423
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF70
	.byte	0x8
	.byte	0x2a
	.long	0x442
	.uleb128 0x7
	.long	.LASF71
	.byte	0x90
	.byte	0x8
	.byte	0x31
	.long	0x57a
	.uleb128 0xe
	.string	"fp"
	.byte	0x8
	.byte	0x32
	.long	0x57a
	.byte	0
	.uleb128 0x8
	.long	.LASF55
	.byte	0x8
	.byte	0x33
	.long	0x2bf
	.byte	0x8
	.uleb128 0x8
	.long	.LASF72
	.byte	0x8
	.byte	0x34
	.long	0x2b4
	.byte	0xc
	.uleb128 0x8
	.long	.LASF73
	.byte	0x8
	.byte	0x35
	.long	0x2bf
	.byte	0x10
	.uleb128 0x8
	.long	.LASF74
	.byte	0x8
	.byte	0x36
	.long	0x2bf
	.byte	0x14
	.uleb128 0x8
	.long	.LASF75
	.byte	0x8
	.byte	0x37
	.long	0x2bf
	.byte	0x18
	.uleb128 0x8
	.long	.LASF76
	.byte	0x8
	.byte	0x38
	.long	0x2bf
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF77
	.byte	0x8
	.byte	0x39
	.long	0x2bf
	.byte	0x20
	.uleb128 0x8
	.long	.LASF78
	.byte	0x8
	.byte	0x3a
	.long	0x2bf
	.byte	0x24
	.uleb128 0x8
	.long	.LASF79
	.byte	0x8
	.byte	0x3b
	.long	0x2bf
	.byte	0x28
	.uleb128 0x8
	.long	.LASF80
	.byte	0x8
	.byte	0x3c
	.long	0x2bf
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF81
	.byte	0x8
	.byte	0x3d
	.long	0x467
	.byte	0x30
	.uleb128 0x8
	.long	.LASF82
	.byte	0x8
	.byte	0x3e
	.long	0x467
	.byte	0x40
	.uleb128 0x8
	.long	.LASF83
	.byte	0x8
	.byte	0x3f
	.long	0x467
	.byte	0x50
	.uleb128 0x8
	.long	.LASF84
	.byte	0x8
	.byte	0x41
	.long	0x95
	.byte	0x60
	.uleb128 0x8
	.long	.LASF85
	.byte	0x8
	.byte	0x42
	.long	0x95
	.byte	0x61
	.uleb128 0x8
	.long	.LASF86
	.byte	0x8
	.byte	0x46
	.long	0x580
	.byte	0x68
	.uleb128 0x8
	.long	.LASF87
	.byte	0x8
	.byte	0x47
	.long	0x586
	.byte	0x70
	.uleb128 0x8
	.long	.LASF88
	.byte	0x8
	.byte	0x48
	.long	0x586
	.byte	0x78
	.uleb128 0xe
	.string	"bpl"
	.byte	0x8
	.byte	0x49
	.long	0x586
	.byte	0x80
	.uleb128 0xe
	.string	"rpl"
	.byte	0x8
	.byte	0x4a
	.long	0x586
	.byte	0x88
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x6
	.byte	0x8
	.long	0x8f
	.uleb128 0x6
	.byte	0x8
	.long	0x2bf
	.uleb128 0x2
	.long	.LASF89
	.byte	0x8
	.byte	0x4c
	.long	0x472
	.uleb128 0x7
	.long	.LASF90
	.byte	0x68
	.byte	0x9
	.byte	0x41
	.long	0x66d
	.uleb128 0x8
	.long	.LASF55
	.byte	0x9
	.byte	0x42
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF91
	.byte	0x9
	.byte	0x43
	.long	0x62
	.byte	0x4
	.uleb128 0x8
	.long	.LASF92
	.byte	0x9
	.byte	0x44
	.long	0x62
	.byte	0x8
	.uleb128 0xe
	.string	"wgt"
	.byte	0x9
	.byte	0x45
	.long	0x66d
	.byte	0x10
	.uleb128 0xe
	.string	"cs"
	.byte	0x9
	.byte	0x46
	.long	0x8f
	.byte	0x18
	.uleb128 0xe
	.string	"rf"
	.byte	0x9
	.byte	0x47
	.long	0x8f
	.byte	0x20
	.uleb128 0x8
	.long	.LASF93
	.byte	0x9
	.byte	0x48
	.long	0x673
	.byte	0x28
	.uleb128 0x8
	.long	.LASF56
	.byte	0x9
	.byte	0x4b
	.long	0x8f
	.byte	0x30
	.uleb128 0x8
	.long	.LASF57
	.byte	0x9
	.byte	0x4c
	.long	0x8f
	.byte	0x38
	.uleb128 0xe
	.string	"acc"
	.byte	0x9
	.byte	0x4d
	.long	0x8f
	.byte	0x40
	.uleb128 0xe
	.string	"au"
	.byte	0x9
	.byte	0x4e
	.long	0x8f
	.byte	0x48
	.uleb128 0xe
	.string	"tc1"
	.byte	0x9
	.byte	0x4f
	.long	0x2a6
	.byte	0x50
	.uleb128 0xe
	.string	"tc2"
	.byte	0x9
	.byte	0x4f
	.long	0x2a6
	.byte	0x54
	.uleb128 0xe
	.string	"nc1"
	.byte	0x9
	.byte	0x50
	.long	0x2a6
	.byte	0x58
	.uleb128 0xe
	.string	"nc2"
	.byte	0x9
	.byte	0x50
	.long	0x2a6
	.byte	0x5c
	.uleb128 0xe
	.string	"ga1"
	.byte	0x9
	.byte	0x51
	.long	0x2a6
	.byte	0x60
	.uleb128 0xe
	.string	"ga2"
	.byte	0x9
	.byte	0x51
	.long	0x2a6
	.byte	0x64
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2a6
	.uleb128 0x6
	.byte	0x8
	.long	0x2d5
	.uleb128 0x2
	.long	.LASF94
	.byte	0x9
	.byte	0x53
	.long	0x597
	.uleb128 0xd
	.long	.LASF95
	.value	0x168
	.byte	0x9
	.byte	0x70
	.long	0x8c0
	.uleb128 0x8
	.long	.LASF96
	.byte	0x9
	.byte	0x73
	.long	0x580
	.byte	0
	.uleb128 0x8
	.long	.LASF97
	.byte	0x9
	.byte	0x74
	.long	0x580
	.byte	0x8
	.uleb128 0xe
	.string	"wgt"
	.byte	0x9
	.byte	0x75
	.long	0x66d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF91
	.byte	0x9
	.byte	0x76
	.long	0x62
	.byte	0x18
	.uleb128 0x8
	.long	.LASF92
	.byte	0x9
	.byte	0x77
	.long	0x62
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF55
	.byte	0x9
	.byte	0x7b
	.long	0x62
	.byte	0x20
	.uleb128 0x8
	.long	.LASF61
	.byte	0x9
	.byte	0x7c
	.long	0x62
	.byte	0x24
	.uleb128 0x8
	.long	.LASF56
	.byte	0x9
	.byte	0x7d
	.long	0x8f
	.byte	0x28
	.uleb128 0x8
	.long	.LASF57
	.byte	0x9
	.byte	0x7e
	.long	0x8f
	.byte	0x30
	.uleb128 0xe
	.string	"acc"
	.byte	0x9
	.byte	0x7f
	.long	0x8f
	.byte	0x38
	.uleb128 0xe
	.string	"au"
	.byte	0x9
	.byte	0x80
	.long	0x8f
	.byte	0x40
	.uleb128 0x8
	.long	.LASF98
	.byte	0x9
	.byte	0x81
	.long	0x8f
	.byte	0x48
	.uleb128 0x8
	.long	.LASF99
	.byte	0x9
	.byte	0x82
	.long	0x8f
	.byte	0x50
	.uleb128 0xe
	.string	"rf"
	.byte	0x9
	.byte	0x83
	.long	0x8f
	.byte	0x58
	.uleb128 0x8
	.long	.LASF100
	.byte	0x9
	.byte	0x84
	.long	0x580
	.byte	0x60
	.uleb128 0x8
	.long	.LASF101
	.byte	0x9
	.byte	0x85
	.long	0x580
	.byte	0x68
	.uleb128 0xe
	.string	"ss"
	.byte	0x9
	.byte	0x86
	.long	0x580
	.byte	0x70
	.uleb128 0xe
	.string	"sa"
	.byte	0x9
	.byte	0x87
	.long	0x580
	.byte	0x78
	.uleb128 0x8
	.long	.LASF102
	.byte	0x9
	.byte	0x88
	.long	0x8c0
	.byte	0x80
	.uleb128 0x8
	.long	.LASF103
	.byte	0x9
	.byte	0x89
	.long	0x8d0
	.byte	0x98
	.uleb128 0x8
	.long	.LASF104
	.byte	0x9
	.byte	0x90
	.long	0x580
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF105
	.byte	0x9
	.byte	0x91
	.long	0x62
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF106
	.byte	0x9
	.byte	0x92
	.long	0x62
	.byte	0xbc
	.uleb128 0x8
	.long	.LASF107
	.byte	0x9
	.byte	0x94
	.long	0x580
	.byte	0xc0
	.uleb128 0xe
	.string	"gf"
	.byte	0x9
	.byte	0x95
	.long	0x580
	.byte	0xc8
	.uleb128 0xe
	.string	"ngf"
	.byte	0x9
	.byte	0x96
	.long	0x62
	.byte	0xd0
	.uleb128 0x8
	.long	.LASF108
	.byte	0x9
	.byte	0x97
	.long	0x62
	.byte	0xd4
	.uleb128 0x8
	.long	.LASF109
	.byte	0x9
	.byte	0x99
	.long	0x580
	.byte	0xd8
	.uleb128 0xe
	.string	"gs"
	.byte	0x9
	.byte	0x9a
	.long	0x8e0
	.byte	0xe0
	.uleb128 0x8
	.long	.LASF110
	.byte	0x9
	.byte	0x9b
	.long	0x8e6
	.byte	0xe8
	.uleb128 0xe
	.string	"ngs"
	.byte	0x9
	.byte	0x9c
	.long	0x62
	.byte	0xf0
	.uleb128 0x8
	.long	.LASF111
	.byte	0x9
	.byte	0x9e
	.long	0x580
	.byte	0xf8
	.uleb128 0xf
	.string	"gc"
	.byte	0x9
	.byte	0x9f
	.long	0x580
	.value	0x100
	.uleb128 0x10
	.long	.LASF112
	.byte	0x9
	.byte	0xa0
	.long	0x8e6
	.value	0x108
	.uleb128 0xf
	.string	"ngc"
	.byte	0x9
	.byte	0xa1
	.long	0x62
	.value	0x110
	.uleb128 0x10
	.long	.LASF113
	.byte	0x9
	.byte	0xa3
	.long	0x580
	.value	0x118
	.uleb128 0xf
	.string	"gr"
	.byte	0x9
	.byte	0xa4
	.long	0x8e0
	.value	0x120
	.uleb128 0x10
	.long	.LASF114
	.byte	0x9
	.byte	0xa5
	.long	0x8e6
	.value	0x128
	.uleb128 0xf
	.string	"ngr"
	.byte	0x9
	.byte	0xa6
	.long	0x62
	.value	0x130
	.uleb128 0x10
	.long	.LASF115
	.byte	0x9
	.byte	0xaa
	.long	0x8e6
	.value	0x138
	.uleb128 0x10
	.long	.LASF116
	.byte	0x9
	.byte	0xab
	.long	0x62
	.value	0x140
	.uleb128 0x10
	.long	.LASF117
	.byte	0x9
	.byte	0xac
	.long	0x62
	.value	0x144
	.uleb128 0x10
	.long	.LASF118
	.byte	0x9
	.byte	0xad
	.long	0x292
	.value	0x148
	.uleb128 0x10
	.long	.LASF119
	.byte	0x9
	.byte	0xae
	.long	0x292
	.value	0x150
	.uleb128 0x10
	.long	.LASF120
	.byte	0x9
	.byte	0xaf
	.long	0x292
	.value	0x158
	.uleb128 0x10
	.long	.LASF121
	.byte	0x9
	.byte	0xb0
	.long	0x62
	.value	0x160
	.byte	0
	.uleb128 0xb
	.long	0x2a6
	.long	0x8d0
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.long	0x62
	.long	0x8e0
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x580
	.uleb128 0x6
	.byte	0x8
	.long	0x418
	.uleb128 0x12
	.string	"MSA"
	.byte	0x9
	.byte	0xb1
	.long	0x684
	.uleb128 0x7
	.long	.LASF122
	.byte	0x40
	.byte	0x9
	.byte	0xba
	.long	0x96e
	.uleb128 0xe
	.string	"f"
	.byte	0x9
	.byte	0xbb
	.long	0x57a
	.byte	0
	.uleb128 0x8
	.long	.LASF123
	.byte	0x9
	.byte	0xbc
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF124
	.byte	0x9
	.byte	0xbd
	.long	0x62
	.byte	0x10
	.uleb128 0xe
	.string	"buf"
	.byte	0x9
	.byte	0xbf
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF125
	.byte	0x9
	.byte	0xc0
	.long	0x62
	.byte	0x20
	.uleb128 0xe
	.string	"ssi"
	.byte	0x9
	.byte	0xc2
	.long	0x96e
	.byte	0x28
	.uleb128 0x8
	.long	.LASF126
	.byte	0x9
	.byte	0xc4
	.long	0x62
	.byte	0x30
	.uleb128 0x8
	.long	.LASF127
	.byte	0x9
	.byte	0xc5
	.long	0x62
	.byte	0x34
	.uleb128 0x8
	.long	.LASF128
	.byte	0x9
	.byte	0xc6
	.long	0x62
	.byte	0x38
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x58c
	.uleb128 0x2
	.long	.LASF129
	.byte	0x9
	.byte	0xc7
	.long	0x8f7
	.uleb128 0x6
	.byte	0x8
	.long	0x8ec
	.uleb128 0x6
	.byte	0x8
	.long	0x974
	.uleb128 0x15
	.long	.LASF159
	.byte	0x1
	.byte	0x53
	.long	0x97f
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xb82
	.uleb128 0x16
	.string	"afp"
	.byte	0x1
	.byte	0x53
	.long	0x985
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8488
	.uleb128 0x17
	.string	"msa"
	.byte	0x1
	.byte	0x55
	.long	0x97f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8360
	.uleb128 0x17
	.string	"fp"
	.byte	0x1
	.byte	0x56
	.long	0x57a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8384
	.uleb128 0x18
	.long	.LASF130
	.byte	0x1
	.byte	0x57
	.long	0x580
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8368
	.uleb128 0x17
	.string	"num"
	.byte	0x1
	.byte	0x58
	.long	0x62
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8468
	.uleb128 0x18
	.long	.LASF131
	.byte	0x1
	.byte	0x59
	.long	0xb82
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8240
	.uleb128 0x18
	.long	.LASF132
	.byte	0x1
	.byte	0x5a
	.long	0xb82
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4144
	.uleb128 0x7
	.long	.LASF133
	.byte	0x8
	.byte	0x1
	.byte	0x5b
	.long	0xa3f
	.uleb128 0x8
	.long	.LASF134
	.byte	0x1
	.byte	0x5c
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF135
	.byte	0x1
	.byte	0x5d
	.long	0x62
	.byte	0x4
	.byte	0
	.uleb128 0x18
	.long	.LASF136
	.byte	0x1
	.byte	0x5e
	.long	0xb93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8408
	.uleb128 0x18
	.long	.LASF137
	.byte	0x1
	.byte	0x5f
	.long	0x62
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8464
	.uleb128 0x18
	.long	.LASF138
	.byte	0x1
	.byte	0x60
	.long	0x8f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8400
	.uleb128 0x18
	.long	.LASF139
	.byte	0x1
	.byte	0x61
	.long	0x8f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8392
	.uleb128 0x18
	.long	.LASF140
	.byte	0x1
	.byte	0x62
	.long	0x62
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8460
	.uleb128 0x18
	.long	.LASF141
	.byte	0x1
	.byte	0x63
	.long	0x62
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8456
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x64
	.long	0x62
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8452
	.uleb128 0x18
	.long	.LASF142
	.byte	0x1
	.byte	0x65
	.long	0x62
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8448
	.uleb128 0x18
	.long	.LASF91
	.byte	0x1
	.byte	0x66
	.long	0x62
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8444
	.uleb128 0x18
	.long	.LASF143
	.byte	0x1
	.byte	0x67
	.long	0x62
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8440
	.uleb128 0x18
	.long	.LASF144
	.byte	0x1
	.byte	0x68
	.long	0x62
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8436
	.uleb128 0x18
	.long	.LASF145
	.byte	0x1
	.byte	0x69
	.long	0x62
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8432
	.uleb128 0x18
	.long	.LASF146
	.byte	0x1
	.byte	0x6a
	.long	0x62
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8428
	.uleb128 0x18
	.long	.LASF147
	.byte	0x1
	.byte	0x6b
	.long	0x62
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8424
	.uleb128 0x18
	.long	.LASF148
	.byte	0x1
	.byte	0x6c
	.long	0x62
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8420
	.uleb128 0x18
	.long	.LASF149
	.byte	0x1
	.byte	0x6d
	.long	0x679
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8352
	.uleb128 0x18
	.long	.LASF150
	.byte	0x1
	.byte	0x6d
	.long	0xb99
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8376
	.uleb128 0x19
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1a
	.long	.LASF151
	.byte	0x1
	.value	0x1cd
	.long	0x62
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8416
	.uleb128 0x1a
	.long	.LASF152
	.byte	0x1
	.value	0x1cd
	.long	0x62
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8412
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0xb93
	.uleb128 0x1b
	.long	0x86
	.value	0xfff
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa1a
	.uleb128 0x6
	.byte	0x8
	.long	0x679
	.uleb128 0x1c
	.long	.LASF153
	.byte	0x1
	.value	0x212
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0xbdb
	.uleb128 0x1d
	.string	"fp"
	.byte	0x1
	.value	0x212
	.long	0x57a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.string	"msa"
	.byte	0x1
	.value	0x212
	.long	0x97f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1c
	.long	.LASF154
	.byte	0x1
	.value	0x223
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0xc17
	.uleb128 0x1d
	.string	"fp"
	.byte	0x1
	.value	0x223
	.long	0x57a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.string	"msa"
	.byte	0x1
	.value	0x223
	.long	0x97f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1e
	.long	.LASF172
	.byte	0x1
	.value	0x238
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0xcac
	.uleb128 0x1d
	.string	"fp"
	.byte	0x1
	.value	0x238
	.long	0x57a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.string	"msa"
	.byte	0x1
	.value	0x238
	.long	0x97f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.string	"cpl"
	.byte	0x1
	.value	0x238
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.value	0x23a
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.string	"len"
	.byte	0x1
	.value	0x23b
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.long	.LASF155
	.byte	0x1
	.value	0x23c
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.string	"buf"
	.byte	0x1
	.value	0x23d
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.long	.LASF156
	.byte	0x1
	.value	0x23e
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x20
	.long	.LASF173
	.byte	0x1
	.value	0x2a6
	.long	0x62
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0xd65
	.uleb128 0x21
	.long	.LASF96
	.byte	0x1
	.value	0x2a6
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.long	.LASF151
	.byte	0x1
	.value	0x2a6
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x21
	.long	.LASF157
	.byte	0x1
	.value	0x2a6
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.long	.LASF131
	.byte	0x1
	.value	0x2a7
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x21
	.long	.LASF134
	.byte	0x1
	.value	0x2a7
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x21
	.long	.LASF135
	.byte	0x1
	.value	0x2a7
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x21
	.long	.LASF158
	.byte	0x1
	.value	0x2a7
	.long	0x95
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1f
	.string	"s1"
	.byte	0x1
	.value	0x2a9
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.string	"s2"
	.byte	0x1
	.value	0x2a9
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.value	0x2aa
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x22
	.long	.LASF160
	.byte	0x1
	.value	0x2d9
	.long	0x62
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0xe03
	.uleb128 0x21
	.long	.LASF130
	.byte	0x1
	.value	0x2d9
	.long	0x580
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1d
	.string	"num"
	.byte	0x1
	.value	0x2d9
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x21
	.long	.LASF161
	.byte	0x1
	.value	0x2d9
	.long	0x8e0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1a
	.long	.LASF162
	.byte	0x1
	.value	0x2db
	.long	0x580
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.string	"idx"
	.byte	0x1
	.value	0x2dc
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.long	.LASF163
	.byte	0x1
	.value	0x2dd
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1a
	.long	.LASF151
	.byte	0x1
	.value	0x2de
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.long	.LASF164
	.byte	0x1
	.value	0x2df
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x22
	.long	.LASF165
	.byte	0x1
	.value	0x307
	.long	0x62
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0xe85
	.uleb128 0x21
	.long	.LASF86
	.byte	0x1
	.value	0x307
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4168
	.uleb128 0x1f
	.string	"fp"
	.byte	0x1
	.value	0x309
	.long	0x57a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4144
	.uleb128 0x1a
	.long	.LASF131
	.byte	0x1
	.value	0x30a
	.long	0xb82
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4128
	.uleb128 0x1a
	.long	.LASF139
	.byte	0x1
	.value	0x30b
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4136
	.uleb128 0x1a
	.long	.LASF166
	.byte	0x1
	.value	0x30c
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4148
	.uleb128 0x23
	.long	.LASF174
	.byte	0x1
	.value	0x331
	.quad	.L180
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0xe95
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x18
	.long	.LASF167
	.byte	0x1
	.byte	0x35
	.long	0xe85
	.uleb128 0x9
	.byte	0x3
	.quad	commentsyms
	.uleb128 0x24
	.long	.LASF175
	.byte	0x6
	.byte	0x3b
	.long	0x62
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
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
	.uleb128 0x13
	.uleb128 0x17
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x23
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
.LASF8:
	.string	"__off_t"
.LASF146:
	.string	"count"
.LASF14:
	.string	"_IO_read_ptr"
.LASF129:
	.string	"MSAFILE"
.LASF26:
	.string	"_chain"
.LASF164:
	.string	"seqlen"
.LASF7:
	.string	"size_t"
.LASF52:
	.string	"sqd_uint32"
.LASF83:
	.string	"soffset"
.LASF166:
	.string	"linenum"
.LASF32:
	.string	"_shortbuf"
.LASF156:
	.string	"currpos"
.LASF103:
	.string	"cutoff_is_set"
.LASF54:
	.string	"seqinfo_s"
.LASF61:
	.string	"type"
.LASF101:
	.string	"sqdesc"
.LASF111:
	.string	"gc_tag"
.LASF108:
	.string	"alloc_ngf"
.LASF92:
	.string	"nseq"
.LASF48:
	.string	"long long unsigned int"
.LASF77:
	.string	"slen"
.LASF174:
	.string	"DONE"
.LASF145:
	.string	"currlen"
.LASF76:
	.string	"plen"
.LASF89:
	.string	"SSIFILE"
.LASF109:
	.string	"gs_tag"
.LASF74:
	.string	"nsecondary"
.LASF4:
	.string	"signed char"
.LASF135:
	.string	"rcol"
.LASF78:
	.string	"frecsize"
.LASF144:
	.string	"headnum"
.LASF143:
	.string	"warn_names"
.LASF27:
	.string	"_fileno"
.LASF15:
	.string	"_IO_read_end"
.LASF171:
	.string	"_IO_lock_t"
.LASF106:
	.string	"alloc_ncomment"
.LASF6:
	.string	"long int"
.LASF62:
	.string	"SQINFO"
.LASF13:
	.string	"_flags"
.LASF93:
	.string	"sqinfo"
.LASF65:
	.string	"primelevel"
.LASF47:
	.string	"long long int"
.LASF60:
	.string	"olen"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF117:
	.string	"nseqlump"
.LASF160:
	.string	"DealignAseqs"
.LASF100:
	.string	"sqacc"
.LASF82:
	.string	"poffset"
.LASF95:
	.string	"msa_struct"
.LASF158:
	.string	"gapsym"
.LASF43:
	.string	"_IO_marker"
.LASF85:
	.string	"smode"
.LASF3:
	.string	"unsigned int"
.LASF120:
	.string	"salen"
.LASF121:
	.string	"lastidx"
.LASF71:
	.string	"ssifile_s"
.LASF0:
	.string	"long unsigned int"
.LASF119:
	.string	"sslen"
.LASF139:
	.string	"sptr"
.LASF18:
	.string	"_IO_write_ptr"
.LASF56:
	.string	"name"
.LASF167:
	.string	"commentsyms"
.LASF45:
	.string	"_sbuf"
.LASF151:
	.string	"apos"
.LASF122:
	.string	"msafile_struct"
.LASF46:
	.string	"_pos"
.LASF22:
	.string	"_IO_save_base"
.LASF75:
	.string	"flen"
.LASF169:
	.string	"selex.c"
.LASF148:
	.string	"have_rf"
.LASF155:
	.string	"namewidth"
.LASF33:
	.string	"_lock"
.LASF28:
	.string	"_flags2"
.LASF142:
	.string	"seqidx"
.LASF123:
	.string	"fname"
.LASF98:
	.string	"ss_cons"
.LASF153:
	.string	"WriteSELEX"
.LASF147:
	.string	"have_cs"
.LASF112:
	.string	"gc_idx"
.LASF10:
	.string	"sizetype"
.LASF134:
	.string	"lcol"
.LASF127:
	.string	"do_stdin"
.LASF113:
	.string	"gr_tag"
.LASF154:
	.string	"WriteSELEXOneBlock"
.LASF96:
	.string	"aseq"
.LASF86:
	.string	"filename"
.LASF94:
	.string	"AINFO"
.LASF133:
	.string	"block_struc"
.LASF19:
	.string	"_IO_write_end"
.LASF81:
	.string	"foffset"
.LASF57:
	.string	"desc"
.LASF9:
	.string	"__off64_t"
.LASF110:
	.string	"gs_idx"
.LASF42:
	.string	"_IO_FILE"
.LASF88:
	.string	"fileflags"
.LASF116:
	.string	"nseqalloc"
.LASF118:
	.string	"sqlen"
.LASF162:
	.string	"rseqs"
.LASF157:
	.string	"name_rcol"
.LASF53:
	.string	"sqd_uint64"
.LASF40:
	.string	"_mode"
.LASF49:
	.string	"float"
.LASF140:
	.string	"currnum"
.LASF138:
	.string	"nptr"
.LASF126:
	.string	"do_gzip"
.LASF150:
	.string	"ainfo"
.LASF25:
	.string	"_markers"
.LASF72:
	.string	"nfiles"
.LASF124:
	.string	"linenumber"
.LASF1:
	.string	"unsigned char"
.LASF104:
	.string	"comment"
.LASF21:
	.string	"_IO_buf_end"
.LASF73:
	.string	"nprimary"
.LASF5:
	.string	"short int"
.LASF67:
	.string	"nkeys"
.LASF64:
	.string	"table"
.LASF175:
	.string	"squid_errno"
.LASF31:
	.string	"_vtable_offset"
.LASF51:
	.string	"sqd_uint16"
.LASF12:
	.string	"FILE"
.LASF125:
	.string	"buflen"
.LASF128:
	.string	"format"
.LASF59:
	.string	"stop"
.LASF173:
	.string	"copy_alignment_line"
.LASF79:
	.string	"precsize"
.LASF137:
	.string	"blocknum"
.LASF84:
	.string	"imode"
.LASF165:
	.string	"IsSELEXFormat"
.LASF161:
	.string	"ret_rseqs"
.LASF11:
	.string	"char"
.LASF99:
	.string	"sa_cons"
.LASF69:
	.string	"mode"
.LASF163:
	.string	"depos"
.LASF63:
	.string	"gki_elem"
.LASF68:
	.string	"ssioffset_s"
.LASF91:
	.string	"alen"
.LASF115:
	.string	"index"
.LASF102:
	.string	"cutoff"
.LASF131:
	.string	"buffer"
.LASF132:
	.string	"bufcpy"
.LASF87:
	.string	"fileformat"
.LASF44:
	.string	"_next"
.LASF152:
	.string	"rpos"
.LASF30:
	.string	"_cur_column"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF80:
	.string	"srecsize"
.LASF2:
	.string	"short unsigned int"
.LASF105:
	.string	"ncomment"
.LASF35:
	.string	"__pad1"
.LASF36:
	.string	"__pad2"
.LASF37:
	.string	"__pad3"
.LASF38:
	.string	"__pad4"
.LASF39:
	.string	"__pad5"
.LASF41:
	.string	"_unused2"
.LASF130:
	.string	"aseqs"
.LASF90:
	.string	"aliinfo_s"
.LASF159:
	.string	"ReadSELEX"
.LASF168:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF23:
	.string	"_IO_backup_base"
.LASF55:
	.string	"flags"
.LASF97:
	.string	"sqname"
.LASF172:
	.string	"actually_write_selex"
.LASF114:
	.string	"gr_idx"
.LASF66:
	.string	"nhash"
.LASF136:
	.string	"blocks"
.LASF170:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF58:
	.string	"start"
.LASF141:
	.string	"currblock"
.LASF107:
	.string	"gf_tag"
.LASF17:
	.string	"_IO_write_base"
.LASF149:
	.string	"base_ainfo"
.LASF20:
	.string	"_IO_buf_base"
.LASF50:
	.string	"double"
.LASF70:
	.string	"SSIOFFSET"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
