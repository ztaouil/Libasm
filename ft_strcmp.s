; **************************************************************************** #
;                                                                              #
;                                                         :::      ::::::::    #
;    ft_strcmp.s                                        :+:      :+:    :+:    #
;                                                     +:+ +:+         +:+      #
;    By: ztaouil <marvin@42.fr>                     +#+  +:+       +#+         #
;                                                 +#+#+#+#+#+   +#+            #
;    Created: 2021/06/24 16:27:04 by ztaouil           #+#    #+#              #
;    Updated: 2021/06/24 16:27:04 by ztaouil          ###   ########.fr        #
;                                                                              #
; **************************************************************************** #

global	_ft_strcmp

_ft_strcmp:
			xor		rcx, rcx
			xor		rax, rax

_comp_:
			cmp		byte [rdi + rcx], 0
			jz		return
			cmp		byte [rsi + rcx], 0
			jz		return
			mov		al, byte [rsi + rcx]
			cmp 	byte[rdi + rcx], al
			jnz		return
			inc		rcx
			jmp		_comp_
return:
			movzx	rax, byte [rdi + rcx]
			movzx	rdx, byte [rsi + rcx]
			sub		rax, rdx
			ret