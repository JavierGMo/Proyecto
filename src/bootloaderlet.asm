mov es, 0xb800
mov si, 0

loop:
	mov al, msg
	mov [es:si], al
	inc si
	jz boot_strap
	jmp loop

boot_strap:
	jmp boot_strap

msg db "bootloader", 13, 10, 0
times 520-($-$$) db 0
dw 0xAA55

