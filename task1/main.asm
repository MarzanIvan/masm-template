title task1
.686
.model flat, stdcall
option casemap :none   ; case sensitive
; ������ ����������� ���������
include    \masm32\include\windows.inc 
include    \masm32\include\kernel32.inc 
include    \masm32\include\user32.inc
include    \masm32\include\masm32.inc

include		\masm32\macros\macros.asm
includelib \masm32\lib\masm32.lib

includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\user32.lib
; ������� ������
.data
.code
; ����� ����� � ���������
main proc far
; ������ print ������� ������ �� ����� 
print "Hello world"
; ���������� ��������� ����� ����� 
; ��������� ������� ExitProcess 
invoke ExitProcess, EAX
main endp
; ����� ��������� end main
end main