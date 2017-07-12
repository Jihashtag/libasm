; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_toupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jbert <jbert@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/14 17:15:48 by jbert             #+#    #+#              ;
;    Updated: 2015/05/14 17:15:48 by jbert            ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global	_ft_toupper

_ft_toupper:
	cmp	rdi, 97
	jl	end
	cmp	rdi, 122
	jg	end
	sub	rdi, 32

end:
	mov	rax, rdi
	ret
