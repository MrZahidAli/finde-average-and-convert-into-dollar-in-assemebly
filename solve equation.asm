; Write an assembly language program which prompts user to enter different prices of rice (In US Dollar) in five different cities of a country. Program should be able to print average 
;price of rice (in Rupess) in the country.
;1 US Dollar = 164 Rupees

include irvine32.inc		
.data
a dword ?
b dword ?
f dword 5
g dword 164
.code
main proc	
			
	call readint
	mov a,eax	;moving first value into a
	call readint
	add a,eax	;moving second value into b
	call readint
	add a,eax	;moving third value into c
	call readint
	add a,eax	;moving fourth value into d
	call readint
	add a,eax	;moving fifth value into e
	mov eax, a 	;move value of a into eax register
	mov edx, 0
	div f		;sum of all that stored in eax devid by 5 to get average
	mul g		;multiply value of rice by 164 to convert it into Rs

	call writeint 
	call readint
	Exit
main endp
end main
