section .text
	global _ft_strdup

extern _malloc
extern _ft_strlen
extern _ft_strcpy

_ft_strdup:
	push rdi
	call _ft_strlen
	mov r10, rax
	inc r10
	mov rdi, r10
	call _malloc
	je vide
	mov rdi, rax 
	pop rsi
	call _ft_strcpy
	ret

vide:
	mov rax, 0
	ret
