title task1
.686
.model flat, stdcall
option casemap :none   ; case sensitive
; Раздел подключения библиотек
include    \masm32\include\windows.inc 
include    \masm32\include\kernel32.inc 
include    \masm32\include\user32.inc
include    \masm32\include\masm32.inc

include		\masm32\macros\macros.asm
includelib \masm32\lib\masm32.lib

includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\user32.lib
; Сегмент данных
.data
.code
; Точка входа в программу
main proc far
; Макрос print выводит строку на экран 
print "Hello world"
; Завершение программы через вызов 
; системной функции ExitProcess 
invoke ExitProcess, EAX
main endp
; Конец программы end main
end main