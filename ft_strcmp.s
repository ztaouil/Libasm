; **************************************************************************** #
;                                                                              #
;                                                         :::      ::::::::    #
;    ft_strcmp.s                                        :+:      :+:    :+:    #
;                                                     +:+ +:+         +:+      #
;    By: ztaouil <marvin@42.fr>                     +#+  +:+       +#+         #
;                                                 +#+#+#+#+#+   +#+            #
;    Created: 2021/06/24 11:41:43 by ztaouil           #+#    #+#              #
;    Updated: 2021/06/24 11:41:43 by ztaouil          ###   ########.fr        #
;                                                                              #
; **************************************************************************** #

global _ft_strcmp

_ft_strcmp:
			xor		rcx, rcx
			xor		rax, rax

cmp:
			cmp		byte[rdi + rcx]
			jz		return
			cmp		byte[rsi + rcx]
			jz		return ; if ZF = 1
			mov		al, BYTE[rsi + rcx]
			cmp		BYTE[rdi + rcx], al
			jnz		return ; if ZF = 0
			inc		rcx
			jmp		cmp

return:
			movzx	rax, BYTE[rdi + rcx]
			movzx	rdx, BYTE[rsi + rcx]
			sub		rax, rdx
			ret