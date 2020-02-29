section .text
    global _ft_strcmp

_ft_strcmp:
    mov rax, 0
loop:
    movzx r10, byte[rdi]
    movzx r9, byte[rsi]
    push rbx
    mov rbx, r10
    or rbx, r9
    jz end_equal
    pop rbx
    cmp r10, r9
    jne end
    inc rdi
    inc rsi
    jmp loop

end_equal:
    pop rbx
    ret

end:
    sub r10, r9
    mov rax, r10
    ret

