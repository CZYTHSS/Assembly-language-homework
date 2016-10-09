TITLE a testing program

INCLUDE Irvine32.inc

.data
fibarray DWORD 15 DUP(?)

.code
main proc
	mov eax,1
	mov fibarray, eax
	call WriteInt
	call Crlf
	mov [fibarray + 4], eax
	call WriteInt
	call Crlf

	mov edi, OFFSET fibarray
	mov ecx, LENGTHOF fibarray
	mov eax, 0
	L1:
		mov eax, 0
		add eax, [edi]
		add eax, [edi + 4]
		mov [edi + 8], eax
		call WriteInt
		call Crlf
		add edi, 4
		loop L1
	call WaitMsg
	exit
main endp
end main