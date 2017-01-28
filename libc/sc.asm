global write

write:
	push ebp
	mov ebp, esp
	push ebx
	mov dword ebx, [esp + 4]
	mov dword ecx, [esp + 8]
	mov dword edx, [esp + 12]
	mov eax, 260
	int 0x7f
	pop ebx
	ret

global read
read:
	push ebp
	mov ebp, esp
	push ebx
	mov dword ebx, [esp + 12]
	mov dword ecx, [esp + 8]
	mov dword edx, [esp + 4]
	mov eax, 259
	int 0x7f
	pop ebx
	ret

global clear_k
clear_k:
	mov eax, 1
	int 0x7f
	ret
