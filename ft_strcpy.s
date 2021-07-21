section .text
	global _ft_strcpy

_ft_strcpy:
	mov r10, 0
	cmp rsi, 0
	je error
	jmp while

while:
	cmp BYTE [rsi+r10], 0
	je exit
	mov dl, BYTE [rsi+r10]
	mov BYTE [rdi+r10], dl
	inc r10
	jmp while

error:
	ret

exit:
	mov rax, rdi
	ret
