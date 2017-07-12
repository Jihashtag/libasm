; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalpha.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jbert <jbert@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/14 15:57:11 by jbert             #+#    #+#              ;
;    Updated: 2015/05/14 15:57:11 by jbert            ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_isalpha

_ft_isalpha:
	cmp	rdi, 65
	jl	false
	cmp	rdi, 90
	jle	true
	cmp	rdi, 97
	jl	false
	cmp	rdi, 122
	jg	false

true:
	mov	rax, 1
	ret

false:
	mov	rax, 0
	ret
