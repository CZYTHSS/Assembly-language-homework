TITLE Copying a String

INCLUDE Irvine32.inc
.data
	source BYTE 'Please copy this source string', 0
	target BYTE SIZEOF source DUP(0),0

.code
main proc
	mov esi,0
	mov ecx, SIZEOF source
L1:
	mov al,source[esi]
	mov target[esi],al
	inc esi
	loop L1
	
	mov edx, OFFSET target
	call WriteString
	call WaitMsg
	exit
main ENDP
END main