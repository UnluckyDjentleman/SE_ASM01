.586P
.model flat, stdcall
includelib kernel32.lib
includelib user32.lib
ExitProcess PROTO : dword
includelib SE_ASM01a.lib
getmin PROTO : dword, :dword
getmax PROTO : dword, :dword
.stack 4096
.const
.data
ddArr dword 19,23,3,46,5,63,1,75,8,12
.CODE
main PROC
	push lengthof ddArr-1
	push offset ddArr
	call getmin
	mov edx,ebx
	push lengthof ddArr-1
	push offset ddArr
	call getmax
	add edx,eax
	push 0
call ExitProcess
main ENDP
end main