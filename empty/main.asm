title empty
.686
.model flat, stdcall
option casemap :none   ; case sensitive
; ������ ����������� ���������
include    \masm32\include\windows.inc 
include    \masm32\include\kernel32.inc 
include    \masm32\include\user32.inc
includelib  \masm32\lib\kernel32.lib 
includelib  \masm32\lib\user32.lib
; ������� ������
.data
x  dd  87654321h
; ������� ����
.code
; ����� ����� � ���������
main proc far
mov EAX, 12345678h 
mov EBX, [x]
; ����� �� ���������
quit:
mov EAX, 0
invoke ExitProcess, EAX 
main endp
; ����� ��������� end main
