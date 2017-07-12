; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_tolower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jbert <jbert@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/14 17:15:48 by jbert             #+#    #+#              ;
;    Updated: 2015/05/14 17:15:48 by jbert            ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global	_ft_tolower

_ft_tolower:
	cmp	rdi, 65
	jl	end
	cmp	rdi, 90
	jg	end
	add	rdi, 32

end:
	mov	rax, rdi
	ret
