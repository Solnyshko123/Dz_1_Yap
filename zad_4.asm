section .data
	error:     db 'error', 5 
	errorLen:  equ $-error
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

  cmp byte[y], "0"
  je f1

  sub byte[x], 0x30
  sub byte[y], 0x30
  mov al, [x]
  mov bl, [y]
  div bl
  mov [x], eax
  add byte[x], 0x30

  mov eax, 4
  mov ebx, 1
  mov ecx, x
  mov edx, 1
  int 0x80
  jmp f2

f1:
  mov eax, 4            
  mov ebx, 1            
  mov ecx, error        
  mov edx, 5
  int 0x80 

f2:
  mov eax, 1
  mov ebx, 0
  int 0x80
