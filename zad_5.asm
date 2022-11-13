section .bss
  x0 resb 1
  x1 resb 1
  x2 resb 1
  x3 resb 1
  x4 resb 1
  x5 resb 1
  x6 resb 1
  x7 resb 1
  x8 resb 1
  x9 resb 11
  
section .text:
  global _start
_start:
  mov eax, 3
  mov ebx, 0  
  mov ecx, x0
  mov edx, 1
  int 0x80
  
  mov eax, 3
  mov ebx, 0  
  mov ecx, x1
  mov edx, 1
  int 0x80

  mov eax, 3
  mov ebx, 0  
  mov ecx, x2
  mov edx, 1
  int 0x80

  mov eax, 3
  mov ebx, 0  
  mov ecx, x3
  mov edx, 1
  int 0x80

  mov eax, 3
  mov ebx, 0  
  mov ecx, x4
  mov edx, 1
  int 0x80

  mov eax, 3
  mov ebx, 0  
  mov ecx, x5
  mov edx, 1
  int 0x80

  mov eax, 3
  mov ebx, 0  
  mov ecx, x6
  mov edx, 1
  int 0x80

  mov eax, 3
  mov ebx, 0  
  mov ecx, x7
  mov edx, 1
  int 0x80

  mov eax, 3
  mov ebx, 0  
  mov ecx, x8
  mov edx, 1
  int 0x80

  mov eax, 3
  mov ebx, 0  
  mov ecx, x9
  mov edx, 11
  int 0x80

  mov eax, 4
  mov ebx, 1  
  mov ecx, x3
  mov edx, 1
  int 0x80
  
  mov eax, 4
  mov ebx, 1
  mov ecx, x1
  mov edx, 1
  int 0x80

  mov eax, 4
  mov ebx, 1
  mov ecx, x7
  mov edx, 1
  int 0x80

  mov eax, 4
  mov ebx, 1
  mov ecx, x0
  mov edx, 1
  int 0x80

  mov eax, 4
  mov ebx, 1  
  mov ecx, x4
  mov edx, 1
  int 0x80
  
  mov eax, 4
  mov ebx, 1
  mov ecx, x5
  mov edx, 1
  int 0x80

  mov eax, 4
  mov ebx, 1
  mov ecx, x6
  mov edx, 1
  int 0x80

  mov eax, 4
  mov ebx, 1
  mov ecx, x2
  mov edx, 1
  int 0x80

  mov eax, 4
  mov ebx, 1  
  mov ecx, x8
  mov edx, 1
  int 0x80
  
  mov eax, 4
  mov ebx, 1
  mov ecx, x9
  mov edx, 11
  int 0x80

  mov eax, 1
  mov ebx, 0
  int 0x80
