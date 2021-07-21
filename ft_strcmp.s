section .text
	global _ft_strcmp

_ft_strcmp:
	mov r10, 0
	jmp while

while:
	cmp BYTE [rdi+r10], 0
	je zero
	cmp BYTE [rsi+r10], 0
	je zero
	mov al, BYTE [rdi+r10]
	mov dl, BYTE [rsi+r10]
	cmp dl, al
	jne diff
	inc r10
	jmp while

diff:
	cmp dl, al
	jg inf
	jl sup

zero:
	mov al, BYTE [rdi+r10]
	mov dl, BYTE [rsi+r10]
	cmp dl, al
	jne diff
	mov rax, 0
	ret

sup:
	mov rax, 1
	ret

inf:
	mov rax, -1
	ret
