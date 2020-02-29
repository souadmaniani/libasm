section .text
    global _ft_strcpy

_ft_strcpy:
mov rax, rdi
loop:
    cmp byte[rsi], 0
    jz end
    movzx r10, byte[rsi]
    mov [rdi], r10
    add rsi, 1
    add rdi, 1
    jmp loop
end:
mov byte[rdi], 0
ret
