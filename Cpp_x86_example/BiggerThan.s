	.file	"BiggerThan.cpp"
	.text
	.globl	a
	.data
	.align 4
a:
	.long	2
	.globl	b
	.align 4
b:
	.long	2
	.globl	c
	.align 4
c:
	.long	4
	.globl	d
	.align 4
d:
	.long	5
	.globl	e
	.align 4
e:
	.long	8
	.globl	f
	.align 4
f:
	.long	9
	.def	__main;	.scl	2;	.type	32;	.endef
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB0:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	call	__main
	movl	a(%rip), %edx
	movl	b(%rip), %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	c(%rip), %edx
	movl	d(%rip), %eax
	addl	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	e(%rip), %edx
	movl	f(%rip), %eax
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	.L2
	movl	-4(%rbp), %eax
	movl	%eax, a(%rip)
	jmp	.L3
.L2:
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.L4
	movl	-12(%rbp), %eax
	movl	%eax, a(%rip)
	jmp	.L3
.L4:
	movl	-8(%rbp), %eax
	movl	%eax, a(%rip)
.L3:
	movl	$0, %eax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (MinGW-W64 x86_64-ucrt-posix-seh, built by Brecht Sanders) 12.1.0"
