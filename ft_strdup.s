section .text
    global _ft_strdup
    extern _malloc
    extern _ft_strlen
    extern _ft_strcpy
_ft_strdup:
    mov rax, 0
    push rdi
    call _ft_strlen
    pop rdi
    mov r8, rax
    add r8, 1
    push rdi
    mov rdi, r8
    call _malloc
    pop rdi
    cmp rax, 0
    jz end
    mov rsi, rdi
    mov rdi, rax
    call _ft_strcpy
    ret
end:
    ret


