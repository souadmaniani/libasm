section .text
    global _ft_write

_ft_write:
cmp rsi, 0
jz ended
push rsi
push rdx
mov rsi, 1
mov rax, 0x200005c
syscall
cmp rax, 0
jnz end
pop rdx
pop rsi
cmp rdx, 0
jl ended
mov rax, 0x2000004
syscall
ret
end:
    pop rdx
    pop rsi
    mov rax, -1
    ret
ended:
    mov rax, -1
    ret

