section .text
	global _ft_write

extern ___error

_ft_write:
	mov rax, 0x2000004
	syscall
	jc erreur
	ret
erreur:
	push rax
	call ___error
	pop rax
	mov rax, -1
	ret
