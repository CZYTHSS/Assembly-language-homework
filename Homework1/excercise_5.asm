TITLE excercise_5

INCLUDE Irvine32.inc

.data
	n DWORD ?
	output BYTE "the GCD of 120 and 100 is: ",0

.code
getgcd proc x ,y
	mov eax, x
	cmp eax, 0
	JG L1
	mov eax, 0
	sub eax, x
	L1:
	mov eax, y
	cmp eax, 0
	JG L2
	mov eax, 0
	sub eax, y
	L2:
	

	L3:
	mov eax, 0
	mov edx, 0
	mov eax, x
	idiv y
	mov n, edx
	mov eax, y
	mov x, eax
	mov eax, n
	mov y, eax
	cmp eax,0
	JG L3
	
	mov eax, x
	call WriteInt
	call Crlf
	call WaitMsg
ret 
getgcd endp

main proc
mov edx, OFFSET output
call WriteString
invoke getgcd,100,120

exit
main endp
end main

