ORG 0x7c00
BITS 16

start:
    mov si, message
    call print
    jmp $

print: 
    mov bx, 0
.loop: 
    lodsb
    cmp al, 0
    je .done
    call print_cahr
    jmp .loop
.done: 
    ret

print_cahr:
    mov ah, 0eh
    int 0x10
    ret


message: db 'hello World', 0

times 510-($ - $$) db 0
dw 0xAA55
