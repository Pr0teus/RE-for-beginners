a$ = 8
f	PROC
; RCX = input value
	xor	eax, eax
	mov	edx, 1
	lea	r8d, QWORD PTR [rax+64]
; R8D=64
	npad	5
$LL4@f:
	test	rdx, rcx
; there are no such bit in input value?
; skip the next INC instruction then.
	je	SHORT $LN3@f	
	inc	eax	; rt++
$LN3@f:
	rol	rdx, 1	; RDX=RDX<<1
	dec	r8	; R8--
	jne	SHORT $LL4@f
	fatret	0
f	ENDP
