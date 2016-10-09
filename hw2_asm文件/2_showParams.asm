INCLUDE Irvine32.inc
INCLUDE Macros.inc
.data
	
.code
ShowParams proc paramCount:DWORD
mWrite <"Stack parameters:", 0ah, 0dh>
mWrite <"-------------------------", 0ah, 0dh>

mov ecx, paramCount
L1:
mWrite <"Address: ">
call WriteHex
call Crlf
add eax,TYPE DWORD

Loop L1
ret
ShowParams endp


MySample proc first:DWORD, second:DWORD, third:DWORD
lea eax, first
invoke ShowParams, 3

ret
MySample endp


main proc
invoke MySample,1234h,5000h,6543h 

exit
main endp
END main