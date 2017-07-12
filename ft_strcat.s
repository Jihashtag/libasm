; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcat.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jbert <jbert@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/14 17:35:25 by jbert             #+#    #+#              ;
;    Updated: 2015/05/14 17:35:25 by jbert            ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global	_ft_strcat

_ft_strcat:
	mov		rax, rdi
	cmp		rsi, 0
	je		end

first:
	cmp		byte [rdi], 0
	je		sec
	inc		rdi
	jmp		first

sec:
	cmp		byte [rsi], 0
	je		end
	mov		cl, byte [rsi]
	mov		byte [rdi], cl
	inc		rsi
	inc		rdi
	jmp		sec

end:
	ret
