INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
aName BYTE "Color output is easy!", 0

.code
main proc
mov ecx, 1
L1 :
mov eax, white + (blue * 16)
call  SetTextColor
call Clrscr
mov edx, OFFSET aName
call WriteString
mov eax, 1000
call Delay
mov eax, red + (black * 16)
call  SetTextColor
call Clrscr
mov edx, OFFSET aName
call WriteString
mov eax, 1000
call Delay
mov eax, black + (white *16)
call  SetTextColor
call Clrscr
mov edx, OFFSET aName
call WriteString
mov eax, 1000
call Delay
mov eax, lightgray + (cyan * 16)
call  SetTextColor
call Clrscr
Loop  L1
mov edx, OFFSET aName
call WriteString

ret
main endp
END main