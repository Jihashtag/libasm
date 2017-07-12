; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_cat.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jbert <jbert@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/15 13:23:39 by jbert             #+#    #+#              ;
;    Updated: 2015/05/15 13:23:39 by jbert            ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .data
		string db 1

section .text
	global _ft_cat

_ft_cat:
	mov		r8, rdi

boucle:
	mov		rdi, r8
	lea		rsi, [rel string]
	mov		rdx, 1
	mov		rax, 0x2000003
	syscall
	jc		error
	cmp		rax, 0
	jle		end
	mov		rdi, 1
	lea		rsi, [rel string]
	mov		rdx, 1
	mov		rax, 0x2000004
	syscall
	jc		error
	jmp		boucle

error:
	mov	rax, -1
	ret

end:
	ret
