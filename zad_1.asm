section .bss
    x resb 4
section .text
    global _start
_start :
    
    mov eax, 3         
    mov ebx, 0
    mov ecx, x
    mov edx, 4
    int 0x80

    
    cmp byte[x], "z"
    je func2
    cmp byte[x], "Z"
    je func3
    add byte[x], 1
    mov eax, 4
    mov ebx, 1
    mov ecx, x
    mov edx, 4
    int 0x80
    jmp func1
    
 func2:   
    mov eax, 4
    mov ebx, 1
    mov ecx, x
    mov edx, 4
    int 0x80
    
func1:
    jmp func4
    
    
 func3:   
    mov eax, 4
    mov ebx, 1
    mov ecx, x
    mov edx, 4
    int 0x80

func4:
    mov eax, 1
    mov ebx, 0
    int 0x80
