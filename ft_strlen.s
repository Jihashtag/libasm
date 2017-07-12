; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jbert <jbert@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/15 13:23:39 by jbert             #+#    #+#              ;
;    Updated: 2015/05/15 13:23:39 by jbert            ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_strlen

_ft_strlen:
	cmp		rdi, 0
	je		end
	push	rdi
	mov		rcx, -1
	mov		al, 0
	repnz	scasb
	neg		rcx
	mov		rax, rcx
	sub		rax, 2
	pop		rdi
	ret

end:
	mov	rax, 0
	ret
