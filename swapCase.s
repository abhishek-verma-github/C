	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$1056, %rsp             ## imm = 0x420
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -1012(%rbp)
	movl	%edi, -1016(%rbp)
	movq	%rsi, -1024(%rbp)
	movl	$0, -1032(%rbp)
	movl	$0, -1036(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	callq	_getchar
	movb	%al, %cl
	movb	%cl, -1025(%rbp)
	movsbl	%cl, %eax
	cmpl	$-1, %eax
	je	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movb	-1025(%rbp), %al
	movl	-1032(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -1032(%rbp)
	movslq	%ecx, %rsi
	movb	%al, -1008(%rbp,%rsi)
	movl	-1036(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -1036(%rbp)
	jmp	LBB0_1
LBB0_3:
	movslq	-1032(%rbp), %rax
	movb	$0, -1008(%rbp,%rax)
	movslq	-1036(%rbp), %rax
	shlq	$0, %rax
	movq	%rax, %rdi
	callq	_malloc
	leaq	-1008(%rbp), %rdi
	movq	%rax, -1048(%rbp)
	movq	-1048(%rbp), %rsi
	movl	-1036(%rbp), %edx
	callq	_swpcase
	movq	-1048(%rbp), %rsi
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-1012(%rbp), %edx
	movq	___stack_chk_guard@GOTPCREL(%rip), %rsi
	movq	(%rsi), %rsi
	movq	-8(%rbp), %rdi
	cmpq	%rdi, %rsi
	movl	%eax, -1052(%rbp)       ## 4-byte Spill
	movl	%edx, -1056(%rbp)       ## 4-byte Spill
	jne	LBB0_5
## %bb.4:
	movl	-1056(%rbp), %eax       ## 4-byte Reload
	addq	$1056, %rsp             ## imm = 0x420
	popq	%rbp
	retq
LBB0_5:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_swpcase                ## -- Begin function swpcase
	.p2align	4, 0x90
_swpcase:                               ## @swpcase
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$0, -24(%rbp)
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jg	LBB1_10
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$65, %edx
	setge	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movsbl	(%rax,%rcx), %edi
	cmpl	$90, %edi
	setle	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	andl	%edi, %edx
	cmpl	$0, %edx
	je	LBB1_4
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	addl	$32, %edx
	movb	%dl, %sil
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movb	%sil, (%rax,%rcx)
	jmp	LBB1_8
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$97, %edx
	setge	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movsbl	(%rax,%rcx), %edi
	cmpl	$122, %edi
	setle	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	andl	%edi, %edx
	cmpl	$0, %edx
	je	LBB1_6
## %bb.5:                               ##   in Loop: Header=BB1_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	subl	$32, %edx
	movb	%dl, %sil
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movb	%sil, (%rax,%rcx)
	jmp	LBB1_7
LBB1_6:                                 ##   in Loop: Header=BB1_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movb	(%rax,%rcx), %dl
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
LBB1_7:                                 ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_8
LBB1_8:                                 ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_9
LBB1_9:                                 ##   in Loop: Header=BB1_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	LBB1_1
LBB1_10:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%s"


.subsections_via_symbols
