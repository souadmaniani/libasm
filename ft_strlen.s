section .text
    global _ft_strlen
    
_ft_strlen:
mov rax, 0
loop:
    cmp byte[rdi], 0
    jz end
    add rdi, 1
    add rax, 1
    jmp loop
end:
    ret
