mov ax, 0x07C0
mov ds, ax
mov si,msg
cld
escribe_c:
	lodsb
	or al, al
	jz boot_strap
	mov ah, 0x0E
	mov bh, 0
	int 0x10
	jmp escribe_c

boot_strap:
	jmp boot_strap

msg db "Hola mundo", 13, 10, 0
times 510 - ($-$$) db 0
dw 0xAA55
