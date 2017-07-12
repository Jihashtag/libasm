; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jbert <jbert@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/14 15:45:34 by jbert             #+#    #+#              ;
;    Updated: 2015/05/14 15:45:34 by jbert            ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section	.text
	global	_ft_bzero

_ft_bzero:
	cmp	rdi, 0
	mov	rcx, rsi
	cmp	rsi, 0
	jle	end

boucle:
	mov 	byte [rdi], 0
	inc		rdi
	loop	boucle

end:
	ret
