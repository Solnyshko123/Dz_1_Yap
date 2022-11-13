section .data
    n db 0x39
    m db 0x30
section .bss
    x resb 4 
    y resb 4
    z resb 4
section .text
    global _start
_start :
    
    mov eax, 3         
    mov ebx, 0
    mov ecx, x
    mov edx, 4
    int 0x80

    mov eax, 3         
    mov ebx, 0
    mov ecx, y
    mov edx, 4
    int 0x80

    cmp byte[x], "0"
    je f4
    cmp byte[y], "0"
    je f5
    
    mov eax, [y]
    add [x], eax
    
    sub byte[x], 0x30
    cmp byte[x], "9"
    jg f1
    je f3
    cmp byte[x], "0"
    je f6
    mov eax, 4
    mov ebx, 1
    mov ecx, x
    mov edx, 4
    int 0x80
    jmp f2
f1:
    add byte[x], 0x30
    mov eax, [x]
    sub eax, [y]
    mov [x], eax
    sub byte[x], 0x30
	  sub byte[y], 0x30
    mov al, [x]
    mov bl, [y]
    mov ah, 0
    mov bh, 0
	  add al, bl
	  aaa
	  add ah, bh
	  
	  xchg al, ah
	
	  mov [z], ax
	
	  add word[z], 0x3030
    mov eax, 4
    mov ebx, 1
    mov ecx, z
    mov edx, 4
    int 0x80
    jmp f2
f3:
    
    mov eax, 4
    mov ebx, 1
    mov ecx, n
    mov edx, 1
    int 0x80
    jmp f2

f4:
    mov eax, 4
    mov ebx, 1
    mov ecx, y
    mov edx, 4
    int 0x80
    jmp f2

f5:
    mov eax, 4
    mov ebx, 1
    mov ecx, x
    mov edx, 4
    int 0x80
    jmp f2

f6:
    mov eax, 4
    mov ebx, 1
    mov ecx, m
    mov edx, 4
    int 0x80
    

f2:
    mov eax, 1
    mov ebx, 0
    int 0x80
