 TITLE Vihidni kod 2.1
;------------------------------------------------------------------------------
;ЛР  №1.2 Кодування Кіріліца Windows-1251
;------------------------------------------------------------------------------
;----------------I.ЗАГОЛОВОК ПРОГРАМИ------------------------
IDEAL
MODEL SMALL
STACK 512
;-----------------------II.МАКРОСИ--------------------------------------
; Складний макрос для ініціалізації
MACRO M_Init		; Початок макросу 
mov	ax, @data	; ax <- @data
mov	ds, ax		; ds <- ax
mov	es, ax		; es <- ax
ENDM M_Init		

;--------------------III.ПОЧАТОК СЕГМЕНТУ ДАНИХ--------------
DATASEG
;Оголошення двовимірного експериментального масиву 16х16
array2Db 	    db  3, 3 ,3 ,3 ,3 ,3 ,3 ,3 ,3 ,3 ,3 ,3 ,3 ,3 ,3 ,3
        		db  3, 0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,3
         		db  3, 0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,3
        		db  3, 0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,3
         		db  3, 0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,3
         		db  3, 0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,3
         		db  3, 0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,3
         		db  3, 0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,3
         		db  3, 0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,3
         		db  3, 0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,3
         		db  3, 0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,3
         		db  3, 0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,3
         		db  3, 0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,3
         		db  3, 0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,3
         		db  3, 0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,3
         		db  3, 3 ,3 ,3 ,3 ,3 ,3 ,3 ,3 ,3 ,3 ,3 ,3 ,3 ,3 ,3
        
; Для вирівнювання у дампі
arr_def1 dw  3, 0 , 0 , 0 , 0 , 0 , 0 , 0


exCode 	DB 0
CODESEG
;----------------------VI. ПОЧАТОК СЕГМЕНТУ КОДУ-------------------
Start:	
M_Init
;Способи адресації по Рудакову-Фiногенову----------------------

;Базово-індексна адресація

mov bx, 0h				; Готуємо базовий регістр, пересування по вертикалі
mov si, 0fh				;Готуємо індексний регістр, пересування по горізонт.
mov cx, 5

mov al, 72			; Записуємо до молодшої частини АХ 9
mov [array2Db+si+bx], al;M(DS*16+ array2Db+SI+BX)
add si, -1
add bx, 10h
;--------------------------------------------------------------
mov al, 69
mov [array2Db+si+bx], al;M(DS*16+ array2Db+SI+BX)
add si, -1
add bx, 10h
;--------------------------------------------------------------
mov al, 76
mov [array2Db+si+bx], al;M(DS*16+ array2Db+SI+BX)
add si, -1
add bx, 10h
;--------------------------------------------------------------
mov al, 76
mov [array2Db+si+bx], al;M(DS*16+ array2Db+SI+BX)
add si, -1
add bx, 10h
;--------------------------------------------------------------
mov al, 79
mov [array2Db+si+bx], al;M(DS*16+ array2Db+SI+BX)
add si, -1
add bx, 10h
;--------------------------------------------------------------
mov al, 33
mov [array2Db+si+bx], al;M(DS*16+ array2Db+SI+BX)
add si, -1
add bx, 10h
;--------------------------------------------------------------
mov al, 70
mov [array2Db+si+bx], al;M(DS*16+ array2Db+SI+BX)
add si, -1
add bx, 10h
;--------------------------------------------------------------
mov al, 86
mov [array2Db+si+bx], al;M(DS*16+ array2Db+SI+BX)
add si, -1
add bx, 10h
;--------------------------------------------------------------
mov al, 80
mov [array2Db+si+bx], al;M(DS*16+ array2Db+SI+BX)
add si, -1
add bx, 10h
;--------------------------------------------------------------
mov al, 68
mov [array2Db+si+bx], al;M(DS*16+ array2Db+SI+BX)
add si, -1
add bx, 10h
;--------------------------------------------------------------
mov al, 68
mov [array2Db+si+bx], al;M(DS*16+ array2Db+SI+BX)
add si, -1
add bx, 10h
;--------------------------------------------------------------
mov al, 69
mov [array2Db+si+bx], al;M(DS*16+ array2Db+SI+BX)
add si, -1
add bx, 10h
;--------------------------------------------------------------
mov al, 75
mov [array2Db+si+bx], al;M(DS*16+ array2Db+SI+BX)
add si, -1
add bx, 10h
;--------------------------------------------------------------
mov al, 77
mov [array2Db+si+bx], al;M(DS*16+ array2Db+SI+BX)
add si, -1
add bx, 10h
;--------------------------------------------------------------
mov al, 77
mov [array2Db+si+bx], al;M(DS*16+ array2Db+SI+BX)
add si, -1
add bx, 10h
;--------------------------------------------------------------
mov al, 2
mov [array2Db+si+bx], al;M(DS*16+ array2Db+SI+BX)
add si, -1
add bx, 10h
;Регістрова адресація. Операндами є регістри.
mov ds, bx
			;mov ss, cx. Дозволено. Але не треба, поламає стек
mov es, dx
Exit:
	mov ah,4ch
	mov al,[exCode]	; отримання коду виходу 
	int 21h		; виклик функції DOS 4ch
	end Start
