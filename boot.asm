[org 0x7c00] ; bootsect code

mov bx, HELLO
call print
call print_nl

mov bx, SUSSY
call print

jmp $

%include "print.asm"


; data
HELLO:
    db 'AmogOS is starting...', 0
SUSSY:
    db 'ahahhah when the OS is sus!?! amogos. ding ding ding ding ding..'

; padding and magic number
times 510-($-$$) db 0
dw 0xaa55