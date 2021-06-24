; **************************************************************************** #
;                                                                              #
;                                                         :::      ::::::::    #
;    ft_strdup.s                                        :+:      :+:    :+:    #
;                                                     +:+ +:+         +:+      #
;    By: ztaouil <ztaouil@student.42.fr>            +#+  +:+       +#+         #
;                                                 +#+#+#+#+#+   +#+            #
;    Created: 2021/06/24 08:03:29 by ztaouil           #+#    #+#              #
;    Updated: 2021/06/24 09:00:44 by ztaouil          ###   ########.fr        #
;                                                                              #
; **************************************************************************** #

global  _ft_strdup
extern  _malloc
extern  _ft_strlen
extern  _ft_strcpy
extern  ___error

_ft_strdup:
		mov		rax, 0
		jmp		_init_

_init_:
		push	rdi
		call	_ft_strlen
		add		rax, 1
		jmp		_mem_

_mem_:
		call	_malloc
		cmp		rax, 0
		je		_done_
		mov		rdi, rax
		pop		rsi
		jne		_dup_

_dup_:
		call	_ft_strcpy
		ret

_done_:
		ret