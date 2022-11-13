section .bss
  x resb 2
  y resb 2
section .text:
  global _start
_start:
  mov eax, 3
  mov ebx, 0  
  mov ecx, x
  mov edx, 2
  int 0x80

  mov eax, 3
  mov ebx, 0  
  mov ecx, y
  mov edx, 2
  int 0x80

  sub word[x], 0x3030
  sub word[y], 0x3030
  mov ah, [x]  
  mov al, [y]  
  mul ah      
  aam             
  or ax, 0x3030        
  xchg al, ah
  mov [x], ax
  
  mov eax, 4
  mov ebx, 1
  mov ecx, x
  mov edx, 2
  int 0x80
  
  mov eax, 1
  mov ebx, 0
  int 0x80
