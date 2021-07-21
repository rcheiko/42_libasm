section .text
	global _ft_read

extern ___error

_ft_read:
	mov rax, 0x2000003
	syscall
	jc erreur
	ret
erreur:
	push rax
	call ___error
	pop rax
	mov rax, -1
	ret
