; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isdigit.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jbert <jbert@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/14 15:47:25 by jbert             #+#    #+#              ;
;    Updated: 2015/05/14 15:47:25 by jbert            ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_isdigit

_ft_isdigit:
	cmp	rdi, 48
	jl	false
	cmp	rdi, 57
	jg	false
	mov	rax, 1
	ret

false:
	mov	rax, 0
	ret
