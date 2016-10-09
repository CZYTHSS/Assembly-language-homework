TITLE String Concat example

INCLUDE Irvine32.inc
INCLUDE Macros.inc

.data
targetStr BYTE "ABCDE", 100 DUP(0);�޸Ĵ˴��ַ���������֤��ͬ���
sourceStr BYTE "FGH", 0
lengthTar DWORD ?
lengthSour DWORD ?
.code
Str_concat proc tar, sour
	call Crlf
	mov edi, tar
	mov eax, 0
	L1:
	cmp byte ptr [edi],0
	je L2
	inc edi
	inc eax
	jmp L1

	L2:
	mov lengthTar, eax
	
	mov esi, sour
	mov eax, 0

	L3:
	cmp byte ptr [esi], 0
	je L4
	inc esi
	inc eax
	jmp L3

	L4:
	mov lengthSour, eax


		mov ecx, lengthSour
		mov esi, sour; �������õ���Str_copy���̣�����̲�P259
	cld
	rep movsb
	mov edx, tar
	call WriteString
	ret
Str_concat endp



main proc
	mWrite <"the result of Str_concat is:">
	invoke Str_concat, OFFSET targetStr,OFFSET sourceStr
		call Crlf
exit
main endp
end main