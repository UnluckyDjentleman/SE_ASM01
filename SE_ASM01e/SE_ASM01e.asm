.586
.model flat,stdcall
includelib kernel32.lib
includelib user32.lib
includelib libucrt.lib
includelib SE_ASM01d.lib
EXTRN C getmin : proc
EXTRN C getmax : proc
.stack 4096
.data
ddArr dword 1,2,3,4,5,6,7,8,9,6
.code
main PROC
START:
	push lengthof ddArr
	push offset ddArr
	call getmin
	push lengthof ddArr
	push offset ddArr
	call getmax
push 0
main ENDP
end main