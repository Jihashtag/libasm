; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jbert <jbert@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/15 13:23:39 by jbert             #+#    #+#              ;
;    Updated: 2015/05/15 13:23:39 by jbert            ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_strdup
	extern _malloc
	extern _ft_strlen
	extern _ft_memcpy

_ft_strdup:
	mov		rbx, rdi
	cmp		rdi, 0
	je		error
	call	_ft_strlen
	add		rax, 1
	mov		rdi, rax
	push rdi
	call	_malloc
	cmp		rax, 0
	je		merror
	pop		rdx
	mov		rdi, rax
	mov		rsi, rbx
	call	_ft_memcpy
	ret

merror:
	pop	rdx
	mov	rax, 0
	ret

error:
	mov	rax, 0
	ret

