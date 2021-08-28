section .data                           ; сегмент данных 
   userMsg db 'Please enter a number: ' ; сообщение с просьбой ввести число
   lenUserMsg equ $-userMsg             ; длина сообщения
   dispMsg db 'You have entered: '
   lenDispMsg equ $-dispMsg                 
 
section .bss           ; неинициализированные данные
   num resb 5
	
section .text          ; сегмент кода
   global _start
	
_start:                ; запрашиваем пользовательский ввод
   mov eax, 4
   mov ebx, 1
   mov ecx, userMsg
   mov edx, lenUserMsg
   int 80h
 
   ; Считываем и сохраняем пользовательский ввод
   mov eax, 3
   mov ebx, 2
   mov ecx, num  
   mov edx, 5          ; 5 байт информации
   int 80h
	
   ; Выводим сообщение 'You have entered: '
   mov eax, 4
   mov ebx, 1
   mov ecx, dispMsg
   mov edx, lenDispMsg
   int 80h  
 
   ; Выводим число пользователя
   mov eax, 4
   mov ebx, 1
   mov ecx, num
   mov edx, 5
   int 80h  
    
   ; Код выхода
   mov eax, 1
   mov ebx, 0
   int 80h