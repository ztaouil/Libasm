; **************************************************************************** #
;                                                                              #
;                                                         :::      ::::::::    #
;    ft_read.s                                          :+:      :+:    :+:    #
;                                                     +:+ +:+         +:+      #
;    By: ztaouil <marvin@42.fr>                     +#+  +:+       +#+         #
;                                                 +#+#+#+#+#+   +#+            #
;    Created: 2021/06/24 14:47:33 by ztaouil           #+#    #+#              #
;    Updated: 2021/06/24 14:47:33 by ztaouil          ###   ########.fr        #
;                                                                              #
; **************************************************************************** #

global  _ft_read
extern  ___error

_ft_read:
        mov		rax, 0x2000003
		syscall
		jc		_error
		ret

_error:
		push		 rax
		call	___error
		pop		r15 
		mov		[rax], r15
		mov		rax, -1
		ret
