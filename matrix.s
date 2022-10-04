	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function main
LCPI0_0:
	.quad	4696837146684686336     ## double 1.0E+6
LCPI0_3:
	.quad	4746794007244308480     ## double 2147483647
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4
LCPI0_1:
	.long	1127219200              ## 0x43300000
	.long	1160773632              ## 0x45300000
	.long	0                       ## 0x0
	.long	0                       ## 0x0
LCPI0_2:
	.quad	4841369599423283200     ## double 4503599627370496
	.quad	4985484787499139072     ## double 1.9342813113834067E+25
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	$0, -4(%rbp)
	movl	$0, -28(%rbp)
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
	cmpl	$1000, -28(%rbp)        ## imm = 0x3E8
	jge	LBB0_8
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	$0, -32(%rbp)
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpl	$1000, -32(%rbp)        ## imm = 0x3E8
	jge	LBB0_6
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=2
	callq	_rand
	movq	_A@GOTPCREL(%rip), %rcx
	movsd	LCPI0_3(%rip), %xmm0    ## xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movslq	-28(%rbp), %rdx
	imulq	$8000, %rdx, %rdx       ## imm = 0x1F40
	addq	%rdx, %rcx
	movslq	-32(%rbp), %rdx
	movsd	%xmm1, (%rcx,%rdx,8)
	callq	_rand
	movq	_C@GOTPCREL(%rip), %rcx
	movq	_B@GOTPCREL(%rip), %rdx
	movsd	LCPI0_3(%rip), %xmm0    ## xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movslq	-28(%rbp), %rsi
	imulq	$8000, %rsi, %rsi       ## imm = 0x1F40
	addq	%rsi, %rdx
	movslq	-32(%rbp), %rsi
	movsd	%xmm1, (%rdx,%rsi,8)
	movslq	-28(%rbp), %rdx
	imulq	$8000, %rdx, %rdx       ## imm = 0x1F40
	addq	%rdx, %rcx
	movslq	-32(%rbp), %rdx
	xorps	%xmm0, %xmm0
	movsd	%xmm0, (%rcx,%rdx,8)
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB0_3
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_7
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB0_1
LBB0_8:
	callq	_clock
	movq	%rax, -16(%rbp)
	movl	$0, -36(%rbp)
LBB0_9:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_11 Depth 2
                                        ##       Child Loop BB0_13 Depth 3
	cmpl	$1000, -36(%rbp)        ## imm = 0x3E8
	jge	LBB0_20
## %bb.10:                              ##   in Loop: Header=BB0_9 Depth=1
	movl	$0, -40(%rbp)
LBB0_11:                                ##   Parent Loop BB0_9 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB0_13 Depth 3
	cmpl	$1000, -40(%rbp)        ## imm = 0x3E8
	jge	LBB0_18
## %bb.12:                              ##   in Loop: Header=BB0_11 Depth=2
	movl	$0, -44(%rbp)
LBB0_13:                                ##   Parent Loop BB0_9 Depth=1
                                        ##     Parent Loop BB0_11 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	cmpl	$1000, -44(%rbp)        ## imm = 0x3E8
	jge	LBB0_16
## %bb.14:                              ##   in Loop: Header=BB0_13 Depth=3
	movq	_C@GOTPCREL(%rip), %rax
	movq	_B@GOTPCREL(%rip), %rcx
	movq	_A@GOTPCREL(%rip), %rdx
	movslq	-36(%rbp), %rsi
	imulq	$8000, %rsi, %rsi       ## imm = 0x1F40
	addq	%rsi, %rdx
	movslq	-40(%rbp), %rsi
	movsd	(%rdx,%rsi,8), %xmm0    ## xmm0 = mem[0],zero
	movslq	-40(%rbp), %rdx
	imulq	$8000, %rdx, %rdx       ## imm = 0x1F40
	addq	%rdx, %rcx
	movslq	-44(%rbp), %rdx
	mulsd	(%rcx,%rdx,8), %xmm0
	movslq	-36(%rbp), %rcx
	imulq	$8000, %rcx, %rcx       ## imm = 0x1F40
	addq	%rcx, %rax
	movslq	-44(%rbp), %rcx
	addsd	(%rax,%rcx,8), %xmm0
	movsd	%xmm0, (%rax,%rcx,8)
## %bb.15:                              ##   in Loop: Header=BB0_13 Depth=3
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	LBB0_13
LBB0_16:                                ##   in Loop: Header=BB0_11 Depth=2
	jmp	LBB0_17
LBB0_17:                                ##   in Loop: Header=BB0_11 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	LBB0_11
LBB0_18:                                ##   in Loop: Header=BB0_9 Depth=1
	jmp	LBB0_19
LBB0_19:                                ##   in Loop: Header=BB0_9 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB0_9
LBB0_20:
	movsd	LCPI0_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        ## 8-byte Spill
	callq	_clock
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, %xmm0
	movaps	LCPI0_1(%rip), %xmm1    ## xmm1 = [1127219200,1160773632,0,0]
	punpckldq	%xmm1, %xmm0    ## xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movapd	LCPI0_2(%rip), %xmm1    ## xmm1 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm1, %xmm0
	haddpd	%xmm0, %xmm0
	movsd	-64(%rbp), %xmm1        ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-56(%rbp), %xmm0        ## xmm0 = mem[0],zero
	leaq	L_.str(%rip), %rdi
	movb	$1, %al
	callq	_printf
	xorl	%edx, %edx
	movl	%eax, -68(%rbp)         ## 4-byte Spill
	movl	%edx, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.comm	_A,8000000,4            ## @A
	.comm	_B,8000000,4            ## @B
	.comm	_C,8000000,4            ## @C
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"[Time-Taken]: %f sec"


.subsections_via_symbols
