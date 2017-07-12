; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jbert <jbert@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/15 13:23:39 by jbert             #+#    #+#              ;
;    Updated: 2015/05/15 13:23:39 by jbert            ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .data
	string:
			.unused	db 0
			.nl		db 10
			.null	db "(null)", 10

section .text
	global _ft_puts
	extern _ft_strlen

_ft_puts:
	cmp		rdi, 0
	je		null
	call	_ft_strlen
	mov		rdx, rax
	mov		rsi, rdi
	mov		rdi, 1
	mov		rax, 0x2000004
	syscall
	jc		error
	mov		r8, rax

nl:
	mov		rdi, 1
	mov		rdx, 1
	mov		rsi, string.nl
	mov		rax, 0x2000004
	syscall
	jc		error
	add		rax, r8
	ret

null:
	mov		rdi, 1
	mov		rdx, 7
	mov		rsi, string.null
	mov		rax, 0x2000004
	syscall
	jc		error
	ret

error:
	mov	rax, -1
	ret

