	.file	"BiggerThan.cpp"
	.text
	.def	__main;	.scl	2;	.type	32;	.endef
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB0:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	call	__main
	movl	$2, -4(%rbp)
	movl	$2, -8(%rbp)
	movl	$4, -12(%rbp)
	movl	$5, -16(%rbp)
	movl	$8, -20(%rbp)
	movl	$9, -24(%rbp)
	movl	-8(%rbp), %eax
	addl	%eax, -4(%rbp)
	movl	-16(%rbp), %eax
	addl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	addl	%eax, -20(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jle	.L2
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
.L2:
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jle	.L3
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
.L3:
	movl	$0, %eax
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (MinGW-W64 x86_64-ucrt-posix-seh, built by Brecht Sanders) 12.1.0"
