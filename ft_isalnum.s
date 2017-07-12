; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalnum.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jbert <jbert@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/14 16:07:16 by jbert             #+#    #+#              ;
;    Updated: 2015/05/14 16:07:16 by jbert            ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section	.text
	global	_ft_isalnum
	extern	_ft_isalpha
	extern	_ft_isdigit

_ft_isalnum:
	call	_ft_isalpha
	cmp		rax, 1
	je end
	call	_ft_isdigit

end:
	ret
