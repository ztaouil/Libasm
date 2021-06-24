; **************************************************************************** #
;                                                                              #
;                                                         :::      ::::::::    #
;    ft_strcpy.s                                        :+:      :+:    :+:    #
;                                                     +:+ +:+         +:+      #
;    By: ztaouil <ztaouil@student.42.fr>            +#+  +:+       +#+         #
;                                                 +#+#+#+#+#+   +#+            #
;    Created: 2021/06/24 07:30:42 by ztaouil           #+#    #+#              #
;    Updated: 2021/06/24 07:45:22 by ztaouil          ###   ########.fr        #
;                                                                              #
; **************************************************************************** #

global _ft_strcpy

_ft_strcpy:
        xor     rcx, rcx

loop:
        cmp     byte [rsi + rcx], 0
        jz      return
		mov		dl, [rsi + rcx]
		mov 	[rdi + rcx], dl
		inc		rcx
		jmp		loop

return:
		mov		byte [rdi + rcx], 0 
		mov		rax, rdi
		ret
        
