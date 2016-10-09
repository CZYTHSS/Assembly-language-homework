TITLE MASM Template

INCLUDE Irvine32.inc

.data
	intarray DWORD 600h,500h,400h,300h,200h

.code
main proc
	mov edi,OFFSET intarray
	mov ecx,LENGTHOF intarray
	mov eax,0
	L1:
		add eax,[edi]
		add edi,TYPE intarray
		loop L1
	call WriteInt

	mov bx, '\n'
	call WriteChar
	mov eax,0
	add eax,[intarray]
	add eax,[intarray + 4]
	add eax,[intarray + 8]
	add eax, [intarray + 12]
	add eax, [intarray + 16]

	call WriteInt

	exit
main ENDP
END main