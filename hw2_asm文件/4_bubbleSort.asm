TITLE bubbleSort


INCLUDE Irvine32.inc


.data
	myArray WORD 3,1,7,5,2,9,4,3
	arrayLength WORD ?
	flag WORD ?;//用于标识是否某一次内层循环没有数据顺序改变。
	count WORD ?;//用于保存外层循环计数的变量
.code
main PROC
	mov arrayLength, LENGTHOF myArray
	mov eax, 0
	mov ax, arrayLength

	mov ecx, 0
	mov cx, arrayLength
	dec cx
L1:
	mov count, cx
	mov esi, 0
	mov esi, OFFSET myArray
	mov flag, 0
L2:

	mov eax, 0
	mov ax, [esi]
	cmp [esi + 2], ax
	jg L3
	xchg ax, [esi + 2]
	mov [esi], ax
	mov flag, 1

L3:
	add esi, 2
	
Loop L2
	cmp flag, 0
	je L5
	mov cx, count	
Loop L1

L5:
	mov cx, arrayLength
	mov esi, OFFSET myArray
L4:
	mov eax, 0
	mov ax, [esi]
	call WriteInt
	call Crlf
	add esi, 2
Loop L4

	call WaitMsg
exit
main ENDP
end main