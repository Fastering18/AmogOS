[org 0x7c00] ; bootsect code

mov bx, HELLO
call print

call print_nl

jmp $

%include "print.asm"
;%include "print_hex.asm"


; data
HELLO:
    db 'AmogOS is starting...', 0

; padding and magic number
times 510-($-$$) db 0
dw 0xaa55