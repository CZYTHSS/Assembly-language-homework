TITLE MASM Template

INCLUDE Irvine32.inc

.data
myHeaderInfo BYTE "Week 1 -- Excercise 1:������ �� ���42 ID��2014013461 ", 0dh, 0ah, 0

.code
main PROC

	; Print out header info
	mov edx, OFFSET myHeaderInfo
	call WriteString

	exit

main ENDP
END main