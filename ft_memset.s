; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memset.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jbert <jbert@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/15 13:23:39 by jbert             #+#    #+#              ;
;    Updated: 2015/05/15 13:23:39 by jbert            ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_memset

_ft_memset:
	cmp		rdi, 0
	je		end
	mov		r8, rdi
	mov		al, sil
	mov		rcx, rdx
	rep		stosb
	mov		rax, r8
	ret

end:
	mov	rax, 0
	ret
